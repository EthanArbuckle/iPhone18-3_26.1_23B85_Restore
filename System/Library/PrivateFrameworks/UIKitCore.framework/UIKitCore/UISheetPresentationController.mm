@interface UISheetPresentationController
+ (id)_platformHostManagerForController:(id)controller;
+ (int64_t)_initialMode;
+ (void)_registerPlatformHostProvider:(Class)provider forIdiom:(int64_t)idiom;
- (BOOL)_allowsAsymmetricVerticalMargins;
- (BOOL)_allowsFocusInPresentingViewController;
- (BOOL)_allowsInteractiveDismissWhenFullScreen;
- (BOOL)_disableSolariumInsets;
- (BOOL)_exteriorPanGestureRecognizerShouldBeginWithEvent:(id)event;
- (BOOL)_exteriorPanGestureRecognizerShouldInteractWithView:(id)view;
- (BOOL)_includesSafeAreaInsetWhenInset;
- (BOOL)_inheritsPresentingViewControllerThemeLevel;
- (BOOL)_insetsPresentedViewForGrabber;
- (BOOL)_isDimmingAlwaysVisible;
- (BOOL)_isDragging;
- (BOOL)_isGeneratingAnimations;
- (BOOL)_isGrabberBlurEnabled;
- (BOOL)_isHidden;
- (BOOL)_isHosting;
- (BOOL)_isPresentedRemotely;
- (BOOL)_peeksWhenFloating;
- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown;
- (BOOL)_prefersSymmetricCorners;
- (BOOL)_presentsWithGesture;
- (BOOL)_remoteContainsFirstResponder;
- (BOOL)_remoteFirstResponderRequiresKeyboard;
- (BOOL)_shouldAdjustDetentsToAvoidKeyboard;
- (BOOL)_shouldDismissByDragging;
- (BOOL)_shouldDismissWhenTappedOutside;
- (BOOL)_shouldDismissWithNavigationPop;
- (BOOL)_shouldOccludeDuringPresentation;
- (BOOL)_shouldPresentedViewControllerServeAsBaseForScrollToTop;
- (BOOL)_shouldPreserveFirstResponder;
- (BOOL)_shouldScaleDownBehindDescendantSheets;
- (BOOL)_tucksIntoUnsafeAreaInCompactHeight;
- (BOOL)_wantsBottomAttached;
- (BOOL)_wantsFloatingInCompactHeight;
- (BOOL)_wantsFloatingInRegularWidthCompactHeight;
- (BOOL)_wantsFullScreen;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)prefersEdgeAttachedInCompactHeight;
- (BOOL)prefersGrabberVisible;
- (BOOL)prefersScrollingExpandsWhenScrolledToEdge;
- (BOOL)sheetInteraction:(id)interaction shouldAllowVerticalRubberBandingWithEvent:(id)event;
- (BOOL)sheetInteraction:(id)interaction shouldBeginHorizontalRubberBandingWithGestureRecognizer:(id)recognizer;
- (BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached;
- (CGAffineTransform)transformOfPresentedViewInContainerView;
- (CGFloat)preferredCornerRadius;
- (CGPoint)_initialTearOffPoint;
- (CGPoint)_remoteInterruptedOffset;
- (CGPoint)offsetForInterruptedAnimationInSheetInteraction:(id)interaction;
- (CGRect)_currentPresentedViewFrame;
- (CGRect)_frameOfPresentedViewControllerViewInSuperview;
- (CGRect)_occludedFrameOfPresentedViewInContainerView;
- (CGRect)_remoteKeyboardFrame;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)_grabberPreferredSize;
- (NSArray)_detentValues;
- (NSArray)detents;
- (NSString)_hiddenAncestorSheetID;
- (NSString)_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight;
- (NSString)_largestUndimmedDetentIdentifierWhenFloating;
- (NSString)_sheetID;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UISheetPresentationController)_childSheetPresentationController;
- (UISheetPresentationController)_parentSheetPresentationController;
- (UISheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier;
- (UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier;
- (_UIRemoteSheet)_expectedRemoteSheet;
- (_UISheetHostManager)_hostManager;
- (_UISheetInteraction)_sheetInteraction;
- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance;
- (_UISheetPresentationControllerAppearance)_floatingAppearance;
- (_UISheetPresentationControllerAppearance)_standardAppearance;
- (_UISheetPresentationControllerClientRemotePresentationDelegate)_clientRemotePresentationDelegate;
- (_UISheetPresentationControllerConfiguration)_configuration;
- (_UIViewMaterial)_largeBackground;
- (_UIViewMaterial)_nonLargeBackground;
- (double)_additionalMinimumTopInset;
- (double)_cornerRadiusForPresentationAndDismissal;
- (double)_currentDetentValue;
- (double)_grabberTopSpacing;
- (double)_marginInCompactHeight;
- (double)_marginInRegularWidthRegularHeight;
- (double)_preferredShadowOpacity;
- (double)_remoteProposedDepthLevel;
- (double)_shadowRadius;
- (double)_velocity;
- (id)_createVisualStyleForProvider:(id)provider;
- (id)_preferredAnimationControllerForTransition:(BOOL)transition;
- (id)_preferredInteractionControllerForTransition:(BOOL)transition animator:(id)animator;
- (id)_recursivelyResolvedRemoteSheetForRemoteSheet:(id)sheet;
- (id)_sheetMetrics;
- (id)backgroundEffect;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (int64_t)_detentDirectionWhenFloating;
- (int64_t)_horizontalAlignment;
- (int64_t)_indexOfCurrentDetent;
- (int64_t)_indexOfLastUndimmedDetent;
- (int64_t)_indexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight;
- (int64_t)_indexOfLastUndimmedDetentWhenFloating;
- (int64_t)_mode;
- (int64_t)presentationStyle;
- (void)_accessibilityReduceMotionStatusDidChange;
- (void)_animateChanges:(id)changes completion:(id)completion;
- (void)_completeInteractiveTransition:(BOOL)transition duration:(double)duration timingCurve:(id)curve;
- (void)_configureHostWindow:(id)window;
- (void)_configureRootPresentationControllerForHostWindow:(id)window;
- (void)_containerViewBoundsDidChange;
- (void)_containerViewLayoutSubviews;
- (void)_containerViewScreenDidChangeToScreen:(id)screen;
- (void)_dismissFromGrabberOrDimmingViewIfPossible;
- (void)_dropShadowViewGrabberDidTriggerPrimaryAction:(id)action;
- (void)_firstResponderDidChange:(id)change;
- (void)_handleExteriorPan:(id)pan;
- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide;
- (void)_hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient;
- (void)_hostSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
- (void)_hostSheetInteractionDraggingDidEnd;
- (void)_keyboardAboutToChangeFrame:(id)frame;
- (void)_keyboardAboutToHide:(id)hide;
- (void)_keyboardAboutToShow:(id)show;
- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively;
- (void)_realSourceViewGeometryDidChange;
- (void)_registerForKeyboardNotificationsIfNecessary;
- (void)_remoteSheetGrabberDidTriggerPrimaryAction;
- (void)_remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
- (void)_remoteSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
- (void)_remoteSheetInteractionDraggingDidEnd;
- (void)_resetRemoteDismissing;
- (void)_sendDidChangeSelectedDetentIdentifier;
- (void)_sendDidInvalidateDetentValues;
- (void)_sendDidInvalidateUntransformedFrame;
- (void)_sendPerformLayout;
- (void)_setAdditionalMinimumTopInset:(double)inset;
- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins;
- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen;
- (void)_setAllowsTearOff:(BOOL)off;
- (void)_setClientRemotePresentationDelegate:(id)delegate;
- (void)_setConfiguration:(id)configuration;
- (void)_setCornerRadiusForPresentationAndDismissal:(double)dismissal;
- (void)_setDetentDirectionWhenFloating:(int64_t)floating;
- (void)_setDisableSolariumInsets:(BOOL)insets;
- (void)_setEdgeAttachedCompactHeightAppearance:(id)appearance;
- (void)_setFloatingAppearance:(id)appearance;
- (void)_setGrabberBlurEnabled:(BOOL)enabled;
- (void)_setGrabberPreferredSize:(CGSize)size;
- (void)_setGrabberTopSpacing:(double)spacing;
- (void)_setHidden:(BOOL)hidden;
- (void)_setHiddenAncestorSheetID:(id)d;
- (void)_setHorizontalAlignment:(int64_t)alignment;
- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)inset;
- (void)_setIndexOfCurrentDetent:(int64_t)detent;
- (void)_setIndexOfLastUndimmedDetent:(int64_t)detent;
- (void)_setIndexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight:(int64_t)height;
- (void)_setIndexOfLastUndimmedDetentWhenFloating:(int64_t)floating;
- (void)_setInsetsPresentedViewForGrabber:(BOOL)grabber;
- (void)_setIsRemote:(BOOL)remote;
- (void)_setLargeBackground:(id)background;
- (void)_setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:(id)height;
- (void)_setLargestUndimmedDetentIdentifierWhenFloating:(id)floating;
- (void)_setMarginInCompactHeight:(double)height;
- (void)_setMarginInRegularWidthRegularHeight:(double)height;
- (void)_setMode:(int64_t)mode;
- (void)_setNonLargeBackground:(id)background;
- (void)_setOcclusionEnabled:(BOOL)enabled;
- (void)_setPeeksWhenFloating:(BOOL)floating;
- (void)_setPreferredShadowOpacity:(double)opacity;
- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down;
- (void)_setPrefersSymmetricCorners:(BOOL)corners;
- (void)_setPresentsWithGesture:(BOOL)gesture;
- (void)_setRemoteClientConfiguration:(id)configuration;
- (void)_setRemoteContainsFirstResponder:(BOOL)responder;
- (void)_setRemoteDismissing:(BOOL)dismissing;
- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)keyboard;
- (void)_setRemoteKeyboardFrame:(CGRect)frame;
- (void)_setRemoteProposedDepthLevel:(double)level;
- (void)_setShadowRadius:(double)radius;
- (void)_setSheetID:(id)d;
- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)keyboard;
- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside;
- (void)_setShouldPresentedViewControllerControlStatusBarAppearance:(BOOL)appearance;
- (void)_setShouldScaleDownBehindDescendantSheets:(BOOL)sheets;
- (void)_setStandardAppearance:(id)appearance;
- (void)_setSubduingEnabled:(BOOL)enabled;
- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height;
- (void)_setWantsBottomAttached:(BOOL)attached;
- (void)_setWantsFloatingInCompactHeight:(BOOL)height;
- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)height;
- (void)_setWantsFullScreen:(BOOL)screen;
- (void)_sheetInteractionDraggingBegan:(id)began withRubberBandCoefficient:(double)coefficient;
- (void)_sheetInteractionDraggingChanged:(id)changed withTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
- (void)_sheetInteractionDraggingEnded:(id)ended;
- (void)_sheetLayoutInfoDidInvalidateDetentValues:(id)values;
- (void)_sheetLayoutInfoDidInvalidateOutput:(id)output;
- (void)_sheetLayoutInfoLayout:(id)layout;
- (void)_startInteractiveTransitionWithProgress:(double)progress fromViewController:(id)controller completion:(id)completion;
- (void)_transitionDidEnd:(BOOL)end completed:(BOOL)completed;
- (void)_transitionWillBegin:(BOOL)begin;
- (void)_tryToConnectToRemoteSheet:(id)sheet;
- (void)_updateAnimationController;
- (void)_updateInteractiveTransitionWithProgress:(double)progress;
- (void)_updateLayoutInfoContainerSafeAreaInsets;
- (void)_updateLayoutInfoContainerTraitCollection;
- (void)_updatePresentedViewFrame;
- (void)_updateShouldPresentedViewControllerControlStatusBarAppearance;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)executeTransitionCompletionBlock;
- (void)invalidateDetents;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setBackgroundEffect:(id)effect;
- (void)setDetents:(NSArray *)detents;
- (void)setLargestUndimmedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier;
- (void)setPreferredCornerRadius:(CGFloat)preferredCornerRadius;
- (void)setPrefersEdgeAttachedInCompactHeight:(BOOL)prefersEdgeAttachedInCompactHeight;
- (void)setPrefersGrabberVisible:(BOOL)prefersGrabberVisible;
- (void)setPrefersScrollingExpandsWhenScrolledToEdge:(BOOL)prefersScrollingExpandsWhenScrolledToEdge;
- (void)setSelectedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier;
- (void)setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached;
- (void)sheetInteraction:(id)interaction didChangeOffset:(CGPoint)offset;
@end

@implementation UISheetPresentationController

- (BOOL)_inheritsPresentingViewControllerThemeLevel
{
  _hostManagerIfLoaded = [(UISheetPresentationController *)self _hostManagerIfLoaded];
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v4) = [_hostManagerIfLoaded inheritsPresentingViewControllerThemeLevel];
  }

  else
  {
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    v4 = [_layoutInfo _wantsFullScreen] ^ 1;
  }

  return v4;
}

- (id)_sheetMetrics
{
  _sheetVisualStyle = [(UISheetPresentationController *)self _sheetVisualStyle];
  metrics = [_sheetVisualStyle metrics];
  v4 = metrics;
  if (metrics)
  {
    v5 = metrics;
  }

  else
  {
    v5 = _UIFallbackSheetMetrics();
  }

  v6 = v5;

  return v6;
}

+ (int64_t)_initialMode
{
  v2 = _UIFallbackSheetMetrics();
  defaultMode = [v2 defaultMode];

  return defaultMode;
}

- (BOOL)_isPresentedRemotely
{
  _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
  v3 = _clientRemotePresentationDelegate != 0;

  return v3;
}

- (_UISheetPresentationControllerClientRemotePresentationDelegate)_clientRemotePresentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__clientRemotePresentationDelegate);

  return WeakRetained;
}

- (int64_t)presentationStyle
{
  if ([(UISheetPresentationController *)self _mode])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_containerViewBoundsDidChange
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setContainerBounds:{v4, v6, v8, v10}];
}

- (void)_updateLayoutInfoContainerTraitCollection
{
  containerView = [(UIPresentationController *)self containerView];
  traitCollection = [containerView traitCollection];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setContainerTraitCollection:traitCollection];
}

- (int64_t)_mode
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _mode = [_layoutInfo _mode];

  return _mode;
}

- (void)_updateLayoutInfoContainerSafeAreaInsets
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  containerView2 = [(UIPresentationController *)self containerView];
  traitCollection = [containerView2 traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 2)
  {
    containerView3 = [(UIPresentationController *)self containerView];
    window = [containerView3 window];
    v17 = [window _interfaceOrientationForSceneSafeAreaInsetsIncludingStatusBar:1];

    containerView4 = [(UIPresentationController *)self containerView];
    window2 = [containerView4 window];
    v20 = __UIStatusBarManagerForWindow(window2);
    [v20 defaultStatusBarHeightInOrientation:v17];
    v22 = v21;

    v5 = fmax(v5, v22);
  }

  containerView5 = [(UIPresentationController *)self containerView];
  traitCollection2 = [containerView5 traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v26 = [UIViewLayoutRegion safeAreaLayoutRegionWithCornerAdaptation:2];
    containerView6 = [(UIPresentationController *)self containerView];
    [containerView6 edgeInsetsForLayoutRegion:v26];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    if (v35 != v11 || v29 != v5 || v31 != v7 || v33 != v9)
    {
      v5 = v5 + v5;
    }
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setContainerSafeAreaInsets:{v5, v7, v9, v11}];
}

- (void)containerViewWillLayoutSubviews
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if ((v4 & 1) == 0)
  {
    containerView = [(UIPresentationController *)self containerView];
    [containerView bounds];
    v7 = v6;
    v9 = v8;

    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    containerView2 = [(UIPresentationController *)self containerView];
    _screen = [containerView2 _screen];
    [_screen bounds];
    [presentedViewController2 _formSheetSizeForWindowWithSize:v7 screenSize:v9];
    v14 = v13;
    v16 = v15;

    [(UIView *)self->_dropShadowView bounds];
    v18 = v17;
    v20 = v19;
    v21 = *MEMORY[0x1E695EFF8];
    v22 = *(MEMORY[0x1E695EFF8] + 8);
    dropShadowView = self->_dropShadowView;
    [(UIView *)dropShadowView bounds];
    [UIDropShadowView willBeginRotationWithOriginalBounds:"willBeginRotationWithOriginalBounds:newBounds:" newBounds:?];
    if (v14 != v18 || v16 != v20)
    {
      [(UIView *)self->_dropShadowView setBounds:v21, v22, v14, v16];
    }

    _hostManager = [(UISheetPresentationController *)self _hostManager];

    if (!_hostManager)
    {
      presentedViewController3 = [(UIPresentationController *)self presentedViewController];
      view = [presentedViewController3 view];
      [(UISheetPresentationController *)self _frameOfPresentedViewControllerViewInSuperview];
      [view setFrame:?];

      presentedView = [(UISheetPresentationController *)self presentedView];
      [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
      [presentedView setFrame:?];
    }
  }
}

- (void)_containerViewLayoutSubviews
{
  v54.receiver = self;
  v54.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v54 _containerViewLayoutSubviews];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  dropShadowView = [(UISheetPresentationController *)self dropShadowView];
  _hostManager = [(UISheetPresentationController *)self _hostManager];
  if ([_layoutInfo _mode] != 1 || (objc_msgSend(_layoutInfo, "_isFunctionallyFullScreen") & 1) != 0 || (objc_msgSend(_layoutInfo, "_isHosting") & 1) != 0)
  {
    goto LABEL_4;
  }

  [_layoutInfo _untransformedFrame];
  Width = CGRectGetWidth(v55);
  [_layoutInfo _screenSize];
  [UIViewController defaultFormSheetSizeForScreenSize:?];
  if (Width <= v32)
  {
    goto LABEL_55;
  }

  if (qword_1ED49AC08 != -1)
  {
    dispatch_once(&qword_1ED49AC08, &__block_literal_global_593);
  }

  if (_MergedGlobals_49 != 1 || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_DisableWorkaroundFor88706066, @"DisableWorkaroundFor88706066") & 1) == 0 && byte_1EA95E74C)
  {
LABEL_4:
    _internalTraitOverrides = [(UIPresentationController *)self _internalTraitOverrides];
    [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
  }

  else
  {
LABEL_55:
    _internalTraitOverrides = [(UIPresentationController *)self _internalTraitOverrides];
    [_internalTraitOverrides setHorizontalSizeClass:1];
  }

  if (-[UISheetPresentationController _forceSheetSemanticContext](self, "_forceSheetSemanticContext") || ([_layoutInfo _isFunctionallyFullScreen] & 1) == 0 && (objc_msgSend(_layoutInfo, "_isHosting") & 1) == 0 && (-[UIPresentationController presentedViewController](self, "presentedViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = _UISheetPresentationControllerStylesSheetsAsCards(v8), v8, v9))
  {
    _internalTraitOverrides2 = [(UIPresentationController *)self _internalTraitOverrides];
    [_internalTraitOverrides2 _setNSIntegerValue:2 forTraitToken:0x1EFE32578];
  }

  else
  {
    _internalTraitOverrides2 = [(UIPresentationController *)self _internalTraitOverrides];
    [(_UITraitOverrides *)_internalTraitOverrides2 _removeTraitToken:?];
  }

  _sheetMetrics = [(UISheetPresentationController *)self _sheetMetrics];
  [_sheetMetrics configureDropShadowView:dropShadowView state:_layoutInfo presentationController:self];

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v12 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if (v12)
  {
    _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    dimmingView = [(UISheetPresentationController *)self dimmingView];
    _confinedDimmingView = [(UISheetPresentationController *)self _confinedDimmingView];
    if (_sheetInteractionIfLoaded)
    {
      [_sheetInteractionIfLoaded setScrollingExpandsToLargerDetentWhenScrolledToEdge:{objc_msgSend(_layoutInfo, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge")}];
      if ([_layoutInfo _isInteractionEnabled])
      {
        v16 = [(UISheetPresentationController *)self _isHosting]^ 1;
      }

      else
      {
        v16 = 0;
      }

      [_sheetInteractionIfLoaded setEnabled:v16];
      [_sheetInteractionIfLoaded setScrollInteractionEnabled:{objc_msgSend(_layoutInfo, "_isScrollInteractionEnabled")}];
    }

    if ([_layoutInfo _isInteractionEnabled])
    {
      v17 = [(UISheetPresentationController *)self _isPresentedRemotely]^ 1;
    }

    else
    {
      v17 = 0;
    }

    _exteriorPanGestureRecognizer = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    [_exteriorPanGestureRecognizer setEnabled:v17];

    [_layoutInfo _hostedFrameOfPresentedViewInContainerView];
    [(UISheetPresentationController *)self setFrameOfPresentedViewInContainerView:?];
    [dimmingView setIgnoresTouches:{objc_msgSend(_layoutInfo, "_shouldDimmingIgnoreTouches")}];
    [_confinedDimmingView setIgnoresTouches:{objc_msgSend(_layoutInfo, "_shouldDimmingIgnoreTouches")}];
    [dimmingView setUserInteractionEnabled:{objc_msgSend(_layoutInfo, "_isDimmingEnabled")}];
    [_confinedDimmingView setUserInteractionEnabled:{objc_msgSend(_layoutInfo, "_isDimmingEnabled")}];
    [_layoutInfo _percentDimmed];
    [dimmingView setPercentDisplayed:?];
    [_layoutInfo _confinedPercentDimmed];
    [_confinedDimmingView setPercentDisplayed:?];
    [_layoutInfo _confinedPercentLightened];
    [_confinedDimmingView setPercentLightened:?];
    if ([_layoutInfo _wantsGrabber])
    {
      v19 = [_layoutInfo _isHosting] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    [dropShadowView _setHasGrabber:v19];
    [(UISheetPresentationController *)self _grabberPreferredSize];
    [dropShadowView _setGrabberPreferredSize:?];
    [_layoutInfo _grabberSpacing];
    [dropShadowView _setGrabberSpacing:?];
    [dropShadowView _setGrabberEdge:{objc_msgSend(_layoutInfo, "_isInverted")}];
    [_layoutInfo _grabberAlpha];
    [dropShadowView _setGrabberAlpha:?];
    [dropShadowView _setInsetsContentViewForGrabber:{objc_msgSend(_layoutInfo, "_insetsContentViewForGrabber")}];
    [dropShadowView _setGrabberBlurEnabled:{objc_msgSend(_layoutInfo, "_isGrabberBlurEnabled")}];
    if ((!-[UIPresentationController presenting](self, "presenting") || [_layoutInfo _isPresented]) && !-[UIPresentationController dismissing](self, "dismissing") && !-[UIPresentationController _transitioningFrom](self, "_transitioningFrom") && !-[UISheetPresentationController _isDraggingAndTransitioning](self, "_isDraggingAndTransitioning") && !-[UISheetPresentationController _isRemoteDismissing](self, "_isRemoteDismissing") && !-[UISheetPresentationController _didTearOff](self, "_didTearOff"))
    {
      [(UISheetPresentationController *)self _updatePresentedViewFrame];
      [_layoutInfo _alpha];
      [dropShadowView setAlpha:?];
    }

    [_layoutInfo _touchInsets];
    [dropShadowView setContentTouchInsets:?];
    [_layoutInfo _hostedCornerRadii];
    [dropShadowView setEnvironmentMatchingCornerRadii:?];
    if (-[UISheetPresentationController _isRootPresentation](self, "_isRootPresentation") && ([_layoutInfo _wantsFullScreen] & 1) != 0)
    {
      _background = 0;
    }

    else
    {
      _background = 0;
      if (![(UISheetPresentationController *)self _isHosting]&& !_hostManager)
      {
        _background = [_layoutInfo _background];
      }
    }

    _background2 = [dropShadowView _background];

    if (_background2 != _background)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v50 = __61__UISheetPresentationController__containerViewLayoutSubviews__block_invoke;
      v51 = &unk_1E70F35B8;
      v52 = dropShadowView;
      v53 = _background;
      if ([(UISheetPresentationController *)self _isDragging])
      {
        _UISheetAnimateWithCompletion(v49, 0);
      }

      else
      {
        v50(v49);
      }
    }

    v44 = _hostManager;
    [_layoutInfo _shadowOpacity];
    v23 = v22;
    layer = [dropShadowView layer];
    *&v25 = v23;
    [layer setShadowOpacity:v25];

    [_layoutInfo _shadowRadius];
    v27 = v26;
    layer2 = [dropShadowView layer];
    [layer2 setShadowRadius:v27];

    [_layoutInfo _magicShadowOpacity];
    [dropShadowView setMagicShadowAlpha:?];
    objc_opt_self();
    if (fluidPresentationTransitionsEnabled == 1 && (-[UIPresentationController presentedViewController](self, "presentedViewController"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 modalTransitionStyle], v29, v30 != 1) || (!-[UIPresentationController presenting](self, "presenting") || objc_msgSend(_layoutInfo, "_isPresented")) && !-[UIPresentationController dismissing](self, "dismissing"))
    {
      if (_layoutInfo)
      {
        [_layoutInfo _transform];
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
      }

      v45[0] = v46;
      v45[1] = v47;
      v45[2] = v48;
      [dropShadowView setTransform:v45];
    }

    [(UISheetPresentationController *)self _updateShouldPresentedViewControllerControlStatusBarAppearance];
    _configuration = [(UISheetPresentationController *)self _configuration];
    _connectedRemoteSheet = [(UISheetPresentationController *)self _connectedRemoteSheet];
    [_connectedRemoteSheet _setSheetConfiguration:_configuration];

    _wantsFullScreen = [_layoutInfo _wantsFullScreen];
    if ([(UISheetPresentationController *)self _isPresentedRemotely]&& (_wantsFullScreen & 1) == 0)
    {
      _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
      if (objc_opt_respondsToSelector())
      {
        _containsFirstResponder = [_layoutInfo _containsFirstResponder];
        v38 = dimmingView;
        v39 = _sheetInteractionIfLoaded;
        _firstResponderRequiresKeyboard = [_layoutInfo _firstResponderRequiresKeyboard];
        [_layoutInfo _keyboardFrame];
        v41 = _firstResponderRequiresKeyboard;
        _sheetInteractionIfLoaded = v39;
        dimmingView = v38;
        [_clientRemotePresentationDelegate _sheetPresentationControllerDidChangeContainsFirstResponder:_containsFirstResponder firstResponderRequiresKeyboard:v41 keyboardFrame:?];
      }

      else
      {
        v42 = objc_alloc_init(_UISheetPresentationControllerClientConfiguration);
        -[_UISheetPresentationControllerClientConfiguration setContainsFirstResponder:](v42, "setContainsFirstResponder:", [_layoutInfo _containsFirstResponder]);
        -[_UISheetPresentationControllerClientConfiguration setFirstResponderRequiresKeyboard:](v42, "setFirstResponderRequiresKeyboard:", [_layoutInfo _firstResponderRequiresKeyboard]);
        [_layoutInfo _keyboardFrame];
        [(_UISheetPresentationControllerClientConfiguration *)v42 setKeyboardFrame:?];
        [_layoutInfo _proposedDepthLevel];
        [(_UISheetPresentationControllerClientConfiguration *)v42 setProposedDepthLevel:?];
        [_clientRemotePresentationDelegate _sheetPresentationControllerClientConfigurationDidChange:v42];
      }
    }

    _hostManager = v44;
    if (objc_opt_respondsToSelector())
    {
      shouldOccludeDuringPresentation = [v44 shouldOccludeDuringPresentation];
    }

    else if ([_layoutInfo _isModelDimmingEnabled])
    {
      shouldOccludeDuringPresentation = [(UISheetPresentationController *)self _isRootPresentation]^ 1;
    }

    else
    {
      shouldOccludeDuringPresentation = 0;
    }

    [(UISheetPresentationController *)self _setOcclusionEnabled:shouldOccludeDuringPresentation];
    [(UISheetPresentationController *)self _setSubduingEnabled:shouldOccludeDuringPresentation];
  }
}

- (BOOL)prefersGrabberVisible
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsGrabber = [_layoutInfo _wantsGrabber];

  return _wantsGrabber;
}

- (UISheetPresentationController)_parentSheetPresentationController
{
  _parentPresentationController = [(UIPresentationController *)self _parentPresentationController];
  if (_parentPresentationController)
  {
    do
    {
      if ([_parentPresentationController _isPresentedInFullScreen])
      {
        break;
      }

      v3_parentPresentationController = [_parentPresentationController _parentPresentationController];

      _parentPresentationController = v3_parentPresentationController;
    }

    while (v3_parentPresentationController);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[UIPresentationController shouldPresentInFullscreen](self, "shouldPresentInFullscreen"), v5 == [_parentPresentationController shouldPresentInFullscreen]))
  {
    v6 = _parentPresentationController;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGSize)_grabberPreferredSize
{
  width = self->__grabberPreferredSize.width;
  height = self->__grabberPreferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateShouldPresentedViewControllerControlStatusBarAppearance
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  -[UISheetPresentationController _setShouldPresentedViewControllerControlStatusBarAppearance:](self, "_setShouldPresentedViewControllerControlStatusBarAppearance:", [_layoutInfo _shouldPresentedViewControllerControlStatusBarAppearance]);
}

- (_UISheetPresentationControllerConfiguration)_configuration
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  detents = [(UISheetPresentationController *)self detents];
  v5 = [detents mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      if (![v7 _type])
      {
        identifier = [v7 identifier];
        [v7 resolvedValueInContext:_layoutInfo];
        v9 = [UISheetPresentationControllerDetent _detentWithIdentifier:identifier constant:?];
        [v5 setObject:v9 atIndexedSubscript:v6];
      }

      ++v6;
    }

    while (v6 < [v5 count]);
  }

  v10 = objc_alloc_init(_UISheetPresentationControllerConfiguration);
  [(_UISheetPresentationControllerConfiguration *)v10 _setShouldScaleDownBehindDescendantSheets:[(UISheetPresentationController *)self _shouldScaleDownBehindDescendantSheets]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPeeksWhenFloating:[(UISheetPresentationController *)self _peeksWhenFloating]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setWantsFullScreen:[(UISheetPresentationController *)self _wantsFullScreen]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setWantsBottomAttached:[(UISheetPresentationController *)self _wantsBottomAttached]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setWantsEdgeAttachedInCompactHeight:[(UISheetPresentationController *)self prefersEdgeAttachedInCompactHeight]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setWidthFollowsPreferredContentSizeWhenEdgeAttached:[(UISheetPresentationController *)self widthFollowsPreferredContentSizeWhenEdgeAttached]];
  [(_UISheetPresentationControllerConfiguration *)v10 _prefersGrabberVisible:[(UISheetPresentationController *)self prefersGrabberVisible]];
  [(UISheetPresentationController *)self _grabberTopSpacing];
  [(_UISheetPresentationControllerConfiguration *)v10 _setGrabberTopSpacing:?];
  [(UISheetPresentationController *)self _additionalMinimumTopInset];
  [(_UISheetPresentationControllerConfiguration *)v10 _setAdditionalMinimumTopInset:?];
  [(_UISheetPresentationControllerConfiguration *)v10 _setInsetsPresentedViewForGrabber:[(UISheetPresentationController *)self _insetsPresentedViewForGrabber]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setMode:[(UISheetPresentationController *)self _mode]];
  [(UISheetPresentationController *)self _cornerRadiusForPresentationAndDismissal];
  [(_UISheetPresentationControllerConfiguration *)v10 _setCornerRadiusForPresentationAndDismissal:?];
  [(UISheetPresentationController *)self preferredCornerRadius];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPreferredCornerRadius:?];
  [(UISheetPresentationController *)self _preferredShadowOpacity];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPreferredShadowOpacity:?];
  [(UISheetPresentationController *)self _shadowRadius];
  [(_UISheetPresentationControllerConfiguration *)v10 _setShadowRadius:?];
  [(_UISheetPresentationControllerConfiguration *)v10 _setDetents:v5];
  selectedDetentIdentifier = [(UISheetPresentationController *)self selectedDetentIdentifier];
  [(_UISheetPresentationControllerConfiguration *)v10 _setSelectedDetentIdentifier:selectedDetentIdentifier];

  _standardAppearance = [(UISheetPresentationController *)self _standardAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setStandardAppearance:_standardAppearance];

  _edgeAttachedCompactHeightAppearance = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setEdgeAttachedCompactHeightAppearance:_edgeAttachedCompactHeightAppearance];

  _floatingAppearance = [(UISheetPresentationController *)self _floatingAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setFloatingAppearance:_floatingAppearance];

  [(_UISheetPresentationControllerConfiguration *)v10 _setDetentDirectionWhenFloating:[(UISheetPresentationController *)self _detentDirectionWhenFloating]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPrefersScrollingResizesWhenDetentDirectionIsDown:[(UISheetPresentationController *)self _prefersScrollingResizesWhenDetentDirectionIsDown]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:[(UISheetPresentationController *)self prefersScrollingExpandsWhenScrolledToEdge]];
  _parentLayoutInfo = [_layoutInfo _parentLayoutInfo];
  if (_parentLayoutInfo)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    NSClassFromString(&cfstr_Uiactivityview.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [_parentLayoutInfo _depthLevel];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentDepthLevel:?];
      [_parentLayoutInfo _stackAlignmentFrame];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentStackAlignmentFrame:?];
      [_parentLayoutInfo _fullHeightUntransformedFrameForDepthLevel];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentFullHeightUntransformedFrameForDepthLevel:?];
    }
  }

  return v10;
}

- (BOOL)_shouldScaleDownBehindDescendantSheets
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _shouldScaleDownBehindDescendants = [_layoutInfo _shouldScaleDownBehindDescendants];

  return _shouldScaleDownBehindDescendants;
}

- (BOOL)_peeksWhenFloating
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _peeksWhenFloating = [_layoutInfo _peeksWhenFloating];

  return _peeksWhenFloating;
}

- (BOOL)_wantsFullScreen
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsFullScreen = [_layoutInfo _wantsFullScreen];

  return _wantsFullScreen;
}

- (double)_cornerRadiusForPresentationAndDismissal
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _dismissCornerRadius];
  v4 = v3;

  return v4;
}

- (_UISheetHostManager)_hostManager
{
  if (!self->__hostManager && ![(UISheetPresentationController *)self _isRootPresentation])
  {
    v3 = [UISheetPresentationController _platformHostManagerForController:self];
    hostManager = self->__hostManager;
    self->__hostManager = v3;
  }

  v5 = self->__hostManager;

  return v5;
}

- (void)presentationTransitionWillBegin
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _backgroundColorForModalFormSheet = [presentedViewController _backgroundColorForModalFormSheet];

  dimmingView = [(UISheetPresentationController *)self dimmingView];
  [dimmingView setDimmingColor:_backgroundColorForModalFormSheet];

  _confinedDimmingView = [(UISheetPresentationController *)self _confinedDimmingView];
  [_confinedDimmingView setDimmingColor:_backgroundColorForModalFormSheet];

  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  v10 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController2);

  if ((v10 & 1) == 0)
  {
    _shouldDismissWhenTappedOutside = [(UISheetPresentationController *)self _shouldDismissWhenTappedOutside];
    dimmingView2 = [(UISheetPresentationController *)self dimmingView];
    [dimmingView2 setIgnoresTouches:!_shouldDismissWhenTappedOutside];

    _confinedDimmingView2 = [(UISheetPresentationController *)self _confinedDimmingView];
    [_confinedDimmingView2 setIgnoresTouches:!_shouldDismissWhenTappedOutside];
  }

  if ([(UISheetPresentationController *)self _isRootPresentation])
  {
    _isPresentedRemotely = [(UISheetPresentationController *)self _isPresentedRemotely];
  }

  else
  {
    _isPresentedRemotely = 1;
  }

  presentedViewController3 = [(UIPresentationController *)self presentedViewController];
  if ((_UISheetPresentationControllerStylesSheetsAsCards(presentedViewController3) & 1) == 0)
  {

    goto LABEL_17;
  }

  _hostManager = [(UISheetPresentationController *)self _hostManager];

  if (_hostManager)
  {
LABEL_17:
    v24 = 0;
    v23 = 0;
    goto LABEL_18;
  }

  traitCollection = [containerView traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    screen = [window screen];
    [screen _displayCornerRadius];
    v20 = v19;

    v21 = 3;
    if (!_isPresentedRemotely)
    {
      v21 = 1;
    }

    v22 = 2;
    if (!_isPresentedRemotely)
    {
      v22 = 0;
    }

    if (v20 == 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }
  }

  else
  {

    if (_isPresentedRemotely)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = _isPresentedRemotely;
LABEL_18:
  v25 = [UIDropShadowView alloc];
  presentedViewController4 = [(UIPresentationController *)self presentedViewController];
  v27 = [(UIDropShadowView *)v25 initWithFrame:v23 independentCorners:v24 supportsShadow:_UISheetPresentationControllerStylesSheetsAsCards(presentedViewController4) stylesSheetsAsCards:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dropShadowView = self->_dropShadowView;
  self->_dropShadowView = v27;

  [(UIDropShadowView *)self->_dropShadowView set_delegate:self];
  _multilayerAssertion = [(UISheetPresentationController *)self _multilayerAssertion];

  if (_multilayerAssertion)
  {
    _multilayerAssertion2 = [(UISheetPresentationController *)self _multilayerAssertion];
    [_multilayerAssertion2 invalidate];
  }

  if (_UISolariumEnabled())
  {
    v31 = [(UIView *)&self->_dropShadowView->super.super.super.isa _takeMultiLayerAssertionForReason:?];
    [(UISheetPresentationController *)self set_multilayerAssertion:v31];
  }

  [(UISheetPresentationController *)self _updateLayoutInfoContainerSafeAreaInsets];
  [(UISheetPresentationController *)self _updateLayoutInfoContainerTraitCollection];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPresentingViewController:presentingViewController];

  presentedViewController5 = [(UIPresentationController *)self presentedViewController];
  _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo2 _setPresentedViewController:presentedViewController5];

  _layoutInfo3 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo3 _setContainerView:containerView];

  _parentSheetPresentationController = [(UISheetPresentationController *)self _parentSheetPresentationController];
  _layoutInfo4 = [_parentSheetPresentationController _layoutInfo];
  _layoutInfo5 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo5 _setParentLayoutInfo:_layoutInfo4];

  _layoutInfo6 = [(UISheetPresentationController *)self _layoutInfo];
  _layoutInfo7 = [_parentSheetPresentationController _layoutInfo];
  [_layoutInfo7 _setChildLayoutInfo:_layoutInfo6];

  presentedViewController6 = [(UIPresentationController *)self presentedViewController];
  LODWORD(_layoutInfo7) = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController6);

  if (_layoutInfo7)
  {
    v43 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_CardsDismissableWithGesture, @"CardsDismissableWithGesture");
    if (byte_1ED48B5D4)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    if (v44 & _isPresentedRemotely)
    {
      dropShadowView = [(UISheetPresentationController *)self dropShadowView];
      _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
      [dropShadowView addInteraction:_sheetInteraction];

      v47 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleExteriorPan_];
      exteriorPanGestureRecognizer = self->__exteriorPanGestureRecognizer;
      self->__exteriorPanGestureRecognizer = v47;

      [(UIGestureRecognizer *)self->__exteriorPanGestureRecognizer setName:@"com.apple.UIKit.UISheetPresentationControllerExteriorPanGesture"];
      [(UIPanGestureRecognizer *)self->__exteriorPanGestureRecognizer setDelegate:self];
      [window addGestureRecognizer:self->__exteriorPanGestureRecognizer];
      if ([(UISheetPresentationController *)self _allowsTearOff])
      {
        _tearOffInteraction = [(UISheetPresentationController *)self _tearOffInteraction];

        if (_tearOffInteraction)
        {
          dropShadowView2 = [(UISheetPresentationController *)self dropShadowView];
          _tearOffInteraction2 = [(UISheetPresentationController *)self _tearOffInteraction];
          [dropShadowView2 addInteraction:_tearOffInteraction2];
        }
      }
    }

    _expectedRemoteSheet = [(UISheetPresentationController *)self _expectedRemoteSheet];
    [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:_expectedRemoteSheet];
  }

  [containerView layoutIfNeeded];
  _layoutInfo8 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo8 _hostedFrameOfPresentedViewInContainerView];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  presentedView = [(UISheetPresentationController *)self presentedView];
  [presentedView _setFrameIgnoringLayerTransform:{v55, v57, v59, v61}];

  LODWORD(presentedView) = os_variant_has_internal_diagnostics();
  dropShadowView3 = [(UISheetPresentationController *)self dropShadowView];
  [dropShadowView3 bounds];
  IsEmpty = CGRectIsEmpty(v82);
  if (presentedView)
  {
    if (IsEmpty)
    {
      containerView2 = [(UIPresentationController *)self containerView];
      [containerView2 bounds];
      v69 = CGRectIsEmpty(v84);

      if (v69)
      {
        goto LABEL_45;
      }

      dropShadowView3 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(dropShadowView3, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, dropShadowView3, OS_LOG_TYPE_FAULT, "dropShadowView bounds should not be empty!", buf, 2u);
      }
    }

    goto LABEL_44;
  }

  if (!IsEmpty)
  {
LABEL_44:

    goto LABEL_45;
  }

  containerView3 = [(UIPresentationController *)self containerView];
  [containerView3 bounds];
  v66 = CGRectIsEmpty(v83);

  if (!v66)
  {
    v67 = *(__UILogGetCategoryCachedImpl("Assert", &presentationTransitionWillBegin___s_category_1) + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *v80 = 0;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "dropShadowView bounds should not be empty!", v80, 2u);
    }
  }

LABEL_45:
  _hostManager2 = [(UISheetPresentationController *)self _hostManager];

  if (!_hostManager2)
  {
    presentedViewController7 = [(UIPresentationController *)self presentedViewController];
    view = [presentedViewController7 view];
    dropShadowView4 = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView4 setContentView:view];

    dropShadowView5 = [(UISheetPresentationController *)self dropShadowView];
    presentedViewController8 = [(UIPresentationController *)self presentedViewController];
    [presentedViewController8 setDropShadowView:dropShadowView5];
  }

  if ([(UISheetPresentationController *)self _isRootPresentation])
  {
    dropShadowView6 = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView6 setAutoresizingMask:18];
  }

  [(UISheetPresentationController *)self _registerForKeyboardNotificationsIfNecessary];
  [(UISheetPresentationController *)self _transitionWillBegin:1];
  _presentationTransitionWillBeginHandler = [(UISheetPresentationController *)self _presentationTransitionWillBeginHandler];
  v78 = _presentationTransitionWillBeginHandler;
  if (_presentationTransitionWillBeginHandler)
  {
    (*(_presentationTransitionWillBeginHandler + 16))(_presentationTransitionWillBeginHandler);
  }

  [(UISheetPresentationController *)self set_presentationTransitionWillBeginHandler:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UISheetWillAppearNotification" object:0];
}

- (_UIRemoteSheet)_expectedRemoteSheet
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);
  if ((objc_opt_respondsToSelector() & 1) != 0 && v4 && ([presentedViewController _containedRemoteViewController], (_remoteSheet2 = objc_claimAutoreleasedReturnValue()) != 0) || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ForceSheetHosting, @"ForceSheetHosting") & 1) == 0 && byte_1ED48B5E4 && (v6 = objc_opt_class(), _UISheetPresentationControllerFindViewControllerOfClass(presentedViewController, v6, 0), (_remoteSheet2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_10:
    _remoteSheet = _remoteSheet2;
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = _UISheetPresentationControllerFindViewControllerOfClass(presentedViewController, v7, v8);
  _remoteSheet = [v9 _remoteSheet];

  if (!_remoteSheet)
  {
    if ((objc_opt_respondsToSelector() & v4 & 1) == 0)
    {
      _remoteSheet = 0;
      goto LABEL_11;
    }

    _remoteSheet2 = [presentedViewController _remoteSheet];
    goto LABEL_10;
  }

LABEL_11:
  v11 = [(UISheetPresentationController *)self _recursivelyResolvedRemoteSheetForRemoteSheet:_remoteSheet];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v11 _remoteSheetAllowsConnection])
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (NSArray)detents
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _detents = [_layoutInfo _detents];

  return _detents;
}

- (BOOL)_wantsBottomAttached
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsEdgeAttached = [_layoutInfo _wantsEdgeAttached];

  return _wantsEdgeAttached;
}

- (BOOL)prefersEdgeAttachedInCompactHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsEdgeAttachedInCompactHeight = [_layoutInfo _wantsEdgeAttachedInCompactHeight];

  return _wantsEdgeAttachedInCompactHeight;
}

- (BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _widthFollowsPreferredContentSizeWhenEdgeAttached = [_layoutInfo _widthFollowsPreferredContentSizeWhenEdgeAttached];

  return _widthFollowsPreferredContentSizeWhenEdgeAttached;
}

- (double)_grabberTopSpacing
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _grabberSpacing];
  v4 = v3;

  return v4;
}

- (double)_additionalMinimumTopInset
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _additionalMinimumTopInset];
  v4 = v3;

  return v4;
}

- (BOOL)_insetsPresentedViewForGrabber
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _insetsContentViewForGrabber = [_layoutInfo _insetsContentViewForGrabber];

  return _insetsContentViewForGrabber;
}

- (CGFloat)preferredCornerRadius
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _preferredCornerRadius];
  v4 = v3;

  return v4;
}

- (double)_preferredShadowOpacity
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _preferredShadowOpacity];
  v4 = v3;

  return v4;
}

- (double)_shadowRadius
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _shadowRadius];
  v4 = v3;

  return v4;
}

- (UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _selectedDetentIdentifier = [_layoutInfo _selectedDetentIdentifier];

  return _selectedDetentIdentifier;
}

- (_UISheetPresentationControllerAppearance)_standardAppearance
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _standardAppearance = [_layoutInfo _standardAppearance];

  return _standardAppearance;
}

- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _edgeAttachedCompactHeightAppearance = [_layoutInfo _edgeAttachedCompactHeightAppearance];

  return _edgeAttachedCompactHeightAppearance;
}

- (_UISheetPresentationControllerAppearance)_floatingAppearance
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _floatingAppearance = [_layoutInfo _floatingAppearance];

  return _floatingAppearance;
}

- (int64_t)_detentDirectionWhenFloating
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsInvertedWhenFloating = [_layoutInfo _wantsInvertedWhenFloating];

  return _wantsInvertedWhenFloating;
}

- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _prefersScrollingResizesWhenDetentDirectionIsDown = [_layoutInfo _prefersScrollingResizesWhenDetentDirectionIsDown];

  return _prefersScrollingResizesWhenDetentDirectionIsDown;
}

- (BOOL)prefersScrollingExpandsWhenScrolledToEdge
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge = [_layoutInfo _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge];

  return _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge;
}

- (void)containerViewDidLayoutSubviews
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if ((v4 & 1) == 0)
  {
    dropShadowView = self->_dropShadowView;

    [(UIDropShadowView *)dropShadowView didFinishRotation];
  }
}

- (void)_registerForKeyboardNotificationsIfNecessary
{
  if ([(UISheetPresentationController *)self _isRootPresentation])
  {
    v3 = ![(UISheetPresentationController *)self _isPresentedRemotely];
  }

  else
  {
    v3 = 0;
  }

  if (![(UISheetPresentationController *)self _hasRegisteredForKeyboardNotifications]&& (v3 & 1) == 0)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    v5 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

    if (v5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__keyboardAboutToShow_ name:@"UIKeyboardPrivateWillShowNotification" object:0];
      [defaultCenter addObserver:self selector:sel__keyboardAboutToHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
      [defaultCenter addObserver:self selector:sel__keyboardAboutToChangeFrame_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
      containerView = [(UIPresentationController *)self containerView];
      window = [containerView window];
      [defaultCenter addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:window];

      [(UISheetPresentationController *)self _setHasRegisteredForKeyboardNotifications:1];
    }
  }
}

- (void)_sendDidInvalidateUntransformedFrame
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:self];
  }
}

- (BOOL)_isHosting
{
  _connectedRemoteSheet = [(UISheetPresentationController *)self _connectedRemoteSheet];
  v3 = _connectedRemoteSheet != 0;

  return v3;
}

- (BOOL)_shouldOccludeDuringPresentation
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v3 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  return v3 ^ 1;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  x = self->_frameOfPresentedViewInContainerView.origin.x;
  y = self->_frameOfPresentedViewInContainerView.origin.y;
  width = self->_frameOfPresentedViewInContainerView.size.width;
  height = self->_frameOfPresentedViewInContainerView.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transformOfPresentedViewInContainerView
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  if (_layoutInfo)
  {
    v6 = _layoutInfo;
    [_layoutInfo _transformOfPresentedViewInContainerView];
    _layoutInfo = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)executeTransitionCompletionBlock
{
  v4.receiver = self;
  v4.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v4 executeTransitionCompletionBlock];
  _hostManager = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    [_hostManager executeTransitionCompletionBlock];
  }
}

- (void)_updatePresentedViewFrame
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _hostedUntransformedFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  presentedView = [(UISheetPresentationController *)self presentedView];
  [presentedView _setFrameIgnoringLayerTransform:{v4, v6, v8, v10}];
}

- (void)_sendDidInvalidateDetentValues
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _sheetPresentationControllerDidInvalidateDetentValues:self];
  }
}

- (BOOL)_isGeneratingAnimations
{
  _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  isGeneratingAnimations = [_sheetInteractionIfLoaded isGeneratingAnimations];

  return isGeneratingAnimations;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->__multilayerAssertion invalidate];
  multilayerAssertion = self->__multilayerAssertion;
  self->__multilayerAssertion = 0;

  v4.receiver = self;
  v4.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v4 dealloc];
}

- (void)dismissalTransitionWillBegin
{
  if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
  {
    _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    v4 = _sheetInteractionIfLoaded;
    if (_sheetInteractionIfLoaded && [_sheetInteractionIfLoaded isEnabled])
    {
      [v4 setEnabled:0];
      [v4 setEnabled:1];
    }

    _exteriorPanGestureRecognizer = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    v6 = _exteriorPanGestureRecognizer;
    if (_exteriorPanGestureRecognizer && [_exteriorPanGestureRecognizer isEnabled])
    {
      [v6 setEnabled:0];
      [v6 setEnabled:1];
    }
  }

  [(UISheetPresentationController *)self _transitionWillBegin:0];
}

- (BOOL)_shouldPreserveFirstResponder
{
  _hostManager = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    shouldPreserveFirstResponder = [_hostManager shouldPreserveFirstResponder];
  }

  else
  {
    shouldPreserveFirstResponder = [(UISheetPresentationController *)self _isDimmingAlwaysVisible];
  }

  v5 = shouldPreserveFirstResponder;

  return v5;
}

- (BOOL)_isDimmingAlwaysVisible
{
  _standardAppearance = [(UISheetPresentationController *)self _standardAppearance];
  _isDimmingAlwaysVisible = [_standardAppearance _isDimmingAlwaysVisible];

  _edgeAttachedCompactHeightAppearance = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  v6 = _edgeAttachedCompactHeightAppearance;
  _isDimmingAlwaysVisible2 = (_edgeAttachedCompactHeightAppearance == 0) & _isDimmingAlwaysVisible;
  if (_edgeAttachedCompactHeightAppearance && (_isDimmingAlwaysVisible & 1) != 0)
  {
    _isDimmingAlwaysVisible2 = [_edgeAttachedCompactHeightAppearance _isDimmingAlwaysVisible];
  }

  _floatingAppearance = [(UISheetPresentationController *)self _floatingAppearance];
  v9 = _floatingAppearance;
  _isDimmingAlwaysVisible3 = (_floatingAppearance == 0) & _isDimmingAlwaysVisible2;
  if (_floatingAppearance && _isDimmingAlwaysVisible2)
  {
    _isDimmingAlwaysVisible3 = [_floatingAppearance _isDimmingAlwaysVisible];
  }

  return _isDimmingAlwaysVisible3;
}

- (BOOL)_allowsInteractiveDismissWhenFullScreen
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _allowsInteractiveDismissWhenFullScreen = [_layoutInfo _allowsInteractiveDismissWhenFullScreen];

  return _allowsInteractiveDismissWhenFullScreen;
}

- (BOOL)_tucksIntoUnsafeAreaInCompactHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _tucksIntoUnsafeAreaInCompactHeight = [_layoutInfo _tucksIntoUnsafeAreaInCompactHeight];

  return _tucksIntoUnsafeAreaInCompactHeight;
}

void __50__UISheetPresentationController__sheetInteraction__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _layoutInfo];
  [v1 _invalidateCurrentOffset];
}

- (_UISheetInteraction)_sheetInteraction
{
  sheetInteraction = self->__sheetInteraction;
  if (!sheetInteraction)
  {
    v4 = objc_alloc_init(_UISheetInteraction);
    v5 = self->__sheetInteraction;
    self->__sheetInteraction = v4;

    [(_UISheetInteraction *)self->__sheetInteraction setDelegate:self];
    objc_initWeak(location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke;
    v25[3] = &unk_1E7124B20;
    objc_copyWeak(&v26, location);
    [(_UISheetInteraction *)self->__sheetInteraction setNumberOfDetentsGetter:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_2;
    v23[3] = &unk_1E7124B48;
    objc_copyWeak(&v24, location);
    [(_UISheetInteraction *)self->__sheetInteraction setDetentGetter:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_3;
    v21[3] = &unk_1E7124B70;
    objc_copyWeak(&v22, location);
    [(_UISheetInteraction *)self->__sheetInteraction setIndexOfCurrentDetentGetter:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_4;
    v19[3] = &unk_1E7124B98;
    objc_copyWeak(&v20, location);
    [(_UISheetInteraction *)self->__sheetInteraction setRubberBandExtentBeyondMinimumOffsetGetter:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_5;
    v17[3] = &unk_1E7124B98;
    objc_copyWeak(&v18, location);
    [(_UISheetInteraction *)self->__sheetInteraction setRubberBandExtentBeyondMaximumOffsetGetter:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_6;
    v15[3] = &unk_1E70F5A28;
    objc_copyWeak(&v16, location);
    [(_UISheetInteraction *)self->__sheetInteraction setCurrentOffsetWasInvalidated:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_7;
    v13[3] = &unk_1E70F5A28;
    objc_copyWeak(&v14, location);
    [(_UISheetLayoutInfo *)self->__layoutInfo set_indexOfCurrentActiveOrDismissDetentWasInvalidated:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_8;
    v11[3] = &unk_1E70F5A28;
    objc_copyWeak(&v12, location);
    [(_UISheetLayoutInfo *)self->__layoutInfo set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_9;
    v9[3] = &unk_1E70F5A28;
    objc_copyWeak(&v10, location);
    [(_UISheetLayoutInfo *)self->__layoutInfo set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__UISheetPresentationController__sheetInteraction__block_invoke_10;
    v7[3] = &unk_1E7124BC0;
    objc_copyWeak(&v8, location);
    [(_UISheetLayoutInfo *)self->__layoutInfo _setCurrentOffsetGetter:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
    sheetInteraction = self->__sheetInteraction;
  }

  return sheetInteraction;
}

double __50__UISheetPresentationController__sheetInteraction__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _sheetInteractionIfLoaded];
  [v2 currentOffset];
  v4 = v3;

  return v4;
}

uint64_t __50__UISheetPresentationController__sheetInteraction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _layoutInfo];
  v3 = [v2 _indexOfCurrentActiveOrDismissDetent];

  return v3;
}

double __50__UISheetPresentationController__sheetInteraction__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _layoutInfo];
  v5 = [v4 _activeDetents];
  v6 = [v5 objectAtIndexedSubscript:a2];
  [v6 _value];
  v8 = v7;

  return v8;
}

uint64_t __50__UISheetPresentationController__sheetInteraction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _layoutInfo];
  v3 = [v2 _activeDetents];
  v4 = [v3 count];

  return v4;
}

void __50__UISheetPresentationController__sheetInteraction__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _sheetInteractionIfLoaded];
  [v1 invalidateIndexOfCurrentDetent];
}

- (_UIViewMaterial)_largeBackground
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _largeBackground = [_layoutInfo _largeBackground];

  return _largeBackground;
}

- (_UIViewMaterial)_nonLargeBackground
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _nonLargeBackground = [_layoutInfo _nonLargeBackground];

  return _nonLargeBackground;
}

- (BOOL)_isDragging
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isDragging = [_layoutInfo _isDragging];

  return _isDragging;
}

- (CGRect)_currentPresentedViewFrame
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _transformedFrame];
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

- (void)_sendPerformLayout
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _sheetPresentationControllerPerformLayout:self];
  }
}

- (UISheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v15.receiver = self;
  v15.super_class = UISheetPresentationController;
  v4 = [(UIPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    _sheetMetrics = [(UISheetPresentationController *)v4 _sheetMetrics];
    v7 = [_UISheetLayoutInfoProvider makeLayoutInfoWithMetrics:_sheetMetrics];
    layoutInfo = v5->__layoutInfo;
    v5->__layoutInfo = v7;

    [(_UISheetLayoutInfo *)v5->__layoutInfo _setDelegate:v5];
    [(_UISheetLayoutInfo *)v5->__layoutInfo _setAlwaysAllowsEdgeAttached:[(UISheetPresentationController *)v5 _isRootPresentation]];
    v5->__allowsDraggingToDismiss = 1;
    v5->__allowsTearOff = (byte_1ED48B5DC != 0) & ~_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_MakeAllSheetsTearable, @"MakeAllSheetsTearable");
    v9 = objc_alloc_init(UIDimmingView);
    dimmingView = v5->_dimmingView;
    v5->_dimmingView = v9;

    [(UIView *)v5->_dimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDimmingView *)v5->_dimmingView setSuppressesBackdrops:1];
    [(UIDimmingView *)v5->_dimmingView setHitTestsAsOpaque:0];
    [(UIDimmingView *)v5->_dimmingView setDelegate:v5];
    v11 = objc_alloc_init(UIDimmingView);
    confinedDimmingView = v5->__confinedDimmingView;
    v5->__confinedDimmingView = v11;

    [(UIView *)v5->__confinedDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDimmingView *)v5->__confinedDimmingView setSuppressesBackdrops:1];
    [(UIDimmingView *)v5->__confinedDimmingView setHitTestsAsOpaque:0];
    [(UIDimmingView *)v5->__confinedDimmingView setDelegate:v5];
    v5->__exteriorPanGestureEnabled = 1;
    -[UISheetPresentationController _setMode:](v5, "_setMode:", [objc_opt_class() _initialMode]);
    [(UIPresentationController *)v5 _setContainerIgnoresDirectTouchEvents:1];
    v5->__shouldPresentedViewControllerControlStatusBarAppearance = [(UISheetPresentationController *)v5 _isRootPresentation];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__accessibilityReduceMotionStatusDidChange name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];
  }

  return v5;
}

+ (void)_registerPlatformHostProvider:(Class)provider forIdiom:(int64_t)idiom
{
  if (!__UISheetPresentationControllerIdiomsToPlatformHostProviderClasses)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
    __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses = dictionary;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromClass(provider);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISheetPresentationController.m" lineNumber:412 description:{@"platformHostProvider of type %@ does not conform to _UISheetHostManagerProvider.", v12}];
  }

  v10 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v10 setObject:provider forKey:v13];
}

+ (id)_platformHostManagerForController:(id)controller
{
  controllerCopy = controller;
  v4 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
  v5 = MEMORY[0x1E696AD98];
  traitCollection = [controllerCopy traitCollection];
  v7 = [v5 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
  v8 = [v4 objectForKey:v7];

  if (v8)
  {
    v8 = [v8 managerForPresentationController:controllerCopy];
  }

  return v8;
}

- (void)_configureHostWindow:(id)window
{
  windowCopy = window;
  [windowCopy _setOverrideParentTraitEnvironment:self];
  _rootPresentationController = [windowCopy _rootPresentationController];
  [_rootPresentationController set_forceSheetSemanticContext:1];

  _realSourceView = [(UIPresentationController *)self _realSourceView];
  window = [_realSourceView window];
  v7 = window;
  if (window)
  {
    window2 = window;
  }

  else
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    view = [presentingViewController view];
    window2 = [view window];
  }

  _normalInheritedTintColor = [window2 _normalInheritedTintColor];
  [windowCopy setTintColor:_normalInheritedTintColor];

  [windowCopy makeKeyWindow];
}

- (void)_configureRootPresentationControllerForHostWindow:(id)window
{
  _rootPresentationController = [window _rootPresentationController];
  [_rootPresentationController set_shouldDisableAppearanceCallbacksForPresentedViewController:1];
}

- (id)_createVisualStyleForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy styleForSheetPresentationController:self];
  sheetVisualStyle = self->__sheetVisualStyle;
  self->__sheetVisualStyle = v5;

  v7 = self->__sheetVisualStyle;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISheetPresentationController;
    v8 = [(UIPresentationController *)&v11 _createVisualStyleForProvider:providerCopy];
  }

  v9 = v8;

  return v9;
}

- (void)_setAdditionalMinimumTopInset:(double)inset
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setAdditionalMinimumTopInset:inset];
}

- (int64_t)_horizontalAlignment
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _horizontalAlignment = [_layoutInfo _horizontalAlignment];

  return _horizontalAlignment;
}

- (void)_setHorizontalAlignment:(int64_t)alignment
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setHorizontalAlignment:alignment];
}

- (double)_marginInCompactHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _marginInCompactHeight];
  v4 = v3;

  return v4;
}

- (void)_setMarginInCompactHeight:(double)height
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setMarginInCompactHeight:height];
}

- (double)_marginInRegularWidthRegularHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _marginInRegularWidthRegularHeight];
  v4 = v3;

  return v4;
}

- (void)_setMarginInRegularWidthRegularHeight:(double)height
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setMarginInRegularWidthRegularHeight:height];
}

- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height
{
  heightCopy = height;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setTucksIntoUnsafeAreaInCompactHeight:heightCopy];
}

- (BOOL)_allowsAsymmetricVerticalMargins
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _allowsAsymmetricVerticalMargins = [_layoutInfo _allowsAsymmetricVerticalMargins];

  return _allowsAsymmetricVerticalMargins;
}

- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins
{
  marginsCopy = margins;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setAllowsAsymmetricVerticalMargins:marginsCopy];
}

- (void)_setShouldScaleDownBehindDescendantSheets:(BOOL)sheets
{
  sheetsCopy = sheets;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setShouldScaleDownBehindDescendants:sheetsCopy];
}

- (void)_setPeeksWhenFloating:(BOOL)floating
{
  floatingCopy = floating;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPeeksWhenFloating:floatingCopy];
}

- (void)_accessibilityReduceMotionStatusDidChange
{
  v3 = _AXSReduceMotionEnabled() != 0;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setReduceMotionEnabled:v3];
}

- (BOOL)_shouldAdjustDetentsToAvoidKeyboard
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _shouldAdjustDetentsToAvoidKeyboard = [_layoutInfo _shouldAdjustDetentsToAvoidKeyboard];

  return _shouldAdjustDetentsToAvoidKeyboard;
}

- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setShouldAdjustDetentsToAvoidKeyboard:keyboardCopy];
}

- (void)_setWantsFullScreen:(BOOL)screen
{
  screenCopy = screen;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsFullScreen:screenCopy];
}

- (void)_setWantsBottomAttached:(BOOL)attached
{
  attachedCopy = attached;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsEdgeAttached:attachedCopy];
}

- (void)setPrefersEdgeAttachedInCompactHeight:(BOOL)prefersEdgeAttachedInCompactHeight
{
  v3 = prefersEdgeAttachedInCompactHeight;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsEdgeAttachedInCompactHeight:v3];
}

- (BOOL)_wantsFloatingInRegularWidthCompactHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsFloatingInRegularWidthCompactHeight = [_layoutInfo _wantsFloatingInRegularWidthCompactHeight];

  return _wantsFloatingInRegularWidthCompactHeight;
}

- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)height
{
  heightCopy = height;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsFloatingInRegularWidthCompactHeight:heightCopy];
}

- (BOOL)_wantsFloatingInCompactHeight
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _wantsFloatingInCompactHeight = [_layoutInfo _wantsFloatingInCompactHeight];

  return _wantsFloatingInCompactHeight;
}

- (void)_setWantsFloatingInCompactHeight:(BOOL)height
{
  heightCopy = height;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsFloatingInCompactHeight:heightCopy];
}

- (void)setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached
{
  v3 = widthFollowsPreferredContentSizeWhenEdgeAttached;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWidthFollowsPreferredContentSizeWhenEdgeAttached:v3];
}

- (void)setPrefersGrabberVisible:(BOOL)prefersGrabberVisible
{
  v3 = prefersGrabberVisible;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsGrabber:v3];
}

- (void)_setGrabberTopSpacing:(double)spacing
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setGrabberSpacing:spacing];
}

- (void)_setGrabberPreferredSize:(CGSize)size
{
  if (self->__grabberPreferredSize.width != size.width || self->__grabberPreferredSize.height != size.height)
  {
    self->__grabberPreferredSize = size;
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];
  }
}

- (id)backgroundEffect
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  backgroundEffect = [_layoutInfo backgroundEffect];

  return backgroundEffect;
}

- (void)setBackgroundEffect:(id)effect
{
  effectCopy = effect;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo setBackgroundEffect:effectCopy];
}

- (void)_setInsetsPresentedViewForGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setInsetsContentViewForGrabber:grabberCopy];
}

- (BOOL)_isGrabberBlurEnabled
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isGrabberBlurEnabled = [_layoutInfo _isGrabberBlurEnabled];

  return _isGrabberBlurEnabled;
}

- (void)_setGrabberBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setGrabberBlurEnabled:enabledCopy];
}

- (void)_setCornerRadiusForPresentationAndDismissal:(double)dismissal
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setDismissCornerRadius:dismissal];
}

- (void)setPreferredCornerRadius:(CGFloat)preferredCornerRadius
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPreferredCornerRadius:preferredCornerRadius];
}

- (BOOL)_prefersSymmetricCorners
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _prefersSymmetricCorners = [_layoutInfo _prefersSymmetricCorners];

  return _prefersSymmetricCorners;
}

- (void)_setPrefersSymmetricCorners:(BOOL)corners
{
  cornersCopy = corners;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPrefersSymmetricCorners:cornersCopy];
}

- (void)_setPreferredShadowOpacity:(double)opacity
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPreferredShadowOpacity:opacity];
}

- (void)_setShadowRadius:(double)radius
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setShadowRadius:radius];
}

- (void)setDetents:(NSArray *)detents
{
  v8 = detents;
  if ([(NSArray *)v8 count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)v8 objectAtIndexedSubscript:v4];
      if ([v5 _createdWithDeprecatedInitializer])
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.UIKit.deprecated-%lu", v4];
        [v5 _setIdentifier:v6];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)v8 count]);
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setDetents:v8];
}

- (void)invalidateDetents
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _invalidateDetents];
}

- (void)setSelectedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier
{
  v4 = selectedDetentIdentifier;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setSelectedDetentIdentifier:v4];
}

- (int64_t)_indexOfCurrentDetent
{
  detents = [(UISheetPresentationController *)self detents];
  selectedDetentIdentifier = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v5 = _UISheetIndexOfDetentWithIdentifier(detents, selectedDetentIdentifier, 0);

  return v5;
}

- (void)_setIndexOfCurrentDetent:(int64_t)detent
{
  detents = [(UISheetPresentationController *)self detents];
  v5 = [detents objectAtIndexedSubscript:detent];
  _identifier = [v5 _identifier];
  [(UISheetPresentationController *)self setSelectedDetentIdentifier:_identifier];
}

- (void)_setStandardAppearance:(id)appearance
{
  appearanceCopy = appearance;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setStandardAppearance:appearanceCopy];
}

- (void)_setEdgeAttachedCompactHeightAppearance:(id)appearance
{
  appearanceCopy = appearance;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setEdgeAttachedCompactHeightAppearance:appearanceCopy];
}

- (void)_setFloatingAppearance:(id)appearance
{
  appearanceCopy = appearance;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setFloatingAppearance:appearanceCopy];
}

- (UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier
{
  _standardAppearance = [(UISheetPresentationController *)self _standardAppearance];
  _largestUndimmedDetentIdentifier = [_standardAppearance _largestUndimmedDetentIdentifier];

  return _largestUndimmedDetentIdentifier;
}

- (void)setLargestUndimmedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier
{
  v4 = [_UISheetPresentationControllerAppearance appearanceWithLargestUndimmedDetentIdentifier:largestUndimmedDetentIdentifier];
  [(UISheetPresentationController *)self _setStandardAppearance:v4];
}

- (NSString)_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight
{
  _edgeAttachedCompactHeightAppearance = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  v3 = _edgeAttachedCompactHeightAppearance;
  if (_edgeAttachedCompactHeightAppearance)
  {
    _largestUndimmedDetentIdentifier = [_edgeAttachedCompactHeightAppearance _largestUndimmedDetentIdentifier];
  }

  else
  {
    _largestUndimmedDetentIdentifier = @"com.apple.UIKit.unspecified";
  }

  return _largestUndimmedDetentIdentifier;
}

- (void)_setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:(id)height
{
  heightCopy = height;
  v8 = heightCopy;
  if (heightCopy == @"com.apple.UIKit.unspecified")
  {
    goto LABEL_4;
  }

  if (heightCopy)
  {
    v5 = [(__CFString *)heightCopy isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
LABEL_4:
      [(UISheetPresentationController *)self _setEdgeAttachedCompactHeightAppearance:0];
      goto LABEL_8;
    }

    v6 = [_UISheetPresentationControllerAppearance appearanceWithLargestUndimmedDetentIdentifier:v8];
  }

  else
  {
    v6 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:1];
  }

  v7 = v6;
  [(UISheetPresentationController *)self _setEdgeAttachedCompactHeightAppearance:v6];

LABEL_8:
}

- (NSString)_largestUndimmedDetentIdentifierWhenFloating
{
  _floatingAppearance = [(UISheetPresentationController *)self _floatingAppearance];
  v3 = _floatingAppearance;
  if (_floatingAppearance)
  {
    _largestUndimmedDetentIdentifier = [_floatingAppearance _largestUndimmedDetentIdentifier];
  }

  else
  {
    _largestUndimmedDetentIdentifier = @"com.apple.UIKit.unspecified";
  }

  return _largestUndimmedDetentIdentifier;
}

- (void)_setLargestUndimmedDetentIdentifierWhenFloating:(id)floating
{
  floatingCopy = floating;
  v8 = floatingCopy;
  if (floatingCopy == @"com.apple.UIKit.unspecified")
  {
    goto LABEL_4;
  }

  if (floatingCopy)
  {
    v5 = [(__CFString *)floatingCopy isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
LABEL_4:
      [(UISheetPresentationController *)self _setFloatingAppearance:0];
      goto LABEL_8;
    }

    v6 = [_UISheetPresentationControllerAppearance appearanceWithLargestUndimmedDetentIdentifier:v8];
  }

  else
  {
    v6 = [_UISheetPresentationControllerAppearance appearancePreferringDimmingVisible:1];
  }

  v7 = v6;
  [(UISheetPresentationController *)self _setFloatingAppearance:v6];

LABEL_8:
}

- (int64_t)_indexOfLastUndimmedDetent
{
  detents = [(UISheetPresentationController *)self detents];
  largestUndimmedDetentIdentifier = [(UISheetPresentationController *)self largestUndimmedDetentIdentifier];
  v5 = _UISheetIndexOfDetentWithIdentifier(detents, largestUndimmedDetentIdentifier, -1);

  return v5;
}

- (void)_setIndexOfLastUndimmedDetent:(int64_t)detent
{
  if (detent == -1)
  {

    [(UISheetPresentationController *)self setLargestUndimmedDetentIdentifier:0];
  }

  else
  {
    detents = [(UISheetPresentationController *)self detents];
    v5 = [detents objectAtIndexedSubscript:detent];
    _identifier = [v5 _identifier];
    [(UISheetPresentationController *)self setLargestUndimmedDetentIdentifier:_identifier];
  }
}

- (int64_t)_indexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight
{
  _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight];
  if (_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight == @"com.apple.UIKit.unspecified")
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight;
  if (_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight)
  {
    v5 = [(__CFString *)_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  detents = [(UISheetPresentationController *)self detents];
  _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight2 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight];
  v9 = _UISheetIndexOfDetentWithIdentifier(detents, _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight2, -1);

  return v9;
}

- (void)_setIndexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight:(int64_t)height
{
  if (height == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"com.apple.UIKit.unspecified";
  }

  else if (height == -1)
  {
    v5 = 0;
  }

  else
  {
    detents = [(UISheetPresentationController *)self detents];
    v7 = [detents objectAtIndexedSubscript:height];
    _identifier = [v7 _identifier];

    v5 = _identifier;
  }

  v9 = v5;
  [(UISheetPresentationController *)self _setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:v5];
}

- (int64_t)_indexOfLastUndimmedDetentWhenFloating
{
  _largestUndimmedDetentIdentifierWhenFloating = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenFloating];
  if (_largestUndimmedDetentIdentifierWhenFloating == @"com.apple.UIKit.unspecified")
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = _largestUndimmedDetentIdentifierWhenFloating;
  if (_largestUndimmedDetentIdentifierWhenFloating)
  {
    v5 = [(__CFString *)_largestUndimmedDetentIdentifierWhenFloating isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  detents = [(UISheetPresentationController *)self detents];
  _largestUndimmedDetentIdentifierWhenFloating2 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenFloating];
  v9 = _UISheetIndexOfDetentWithIdentifier(detents, _largestUndimmedDetentIdentifierWhenFloating2, -1);

  return v9;
}

- (void)_setIndexOfLastUndimmedDetentWhenFloating:(int64_t)floating
{
  if (floating == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"com.apple.UIKit.unspecified";
  }

  else if (floating == -1)
  {
    v5 = 0;
  }

  else
  {
    detents = [(UISheetPresentationController *)self detents];
    v7 = [detents objectAtIndexedSubscript:floating];
    _identifier = [v7 _identifier];

    v5 = _identifier;
  }

  v9 = v5;
  [(UISheetPresentationController *)self _setLargestUndimmedDetentIdentifierWhenFloating:v5];
}

- (NSString)_sheetID
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _sheetID = [_layoutInfo _sheetID];

  return _sheetID;
}

- (void)_setSheetID:(id)d
{
  dCopy = d;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setSheetID:dCopy];
}

- (NSString)_hiddenAncestorSheetID
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _hiddenAncestorSheetID = [_layoutInfo _hiddenAncestorSheetID];

  return _hiddenAncestorSheetID;
}

- (void)_setHiddenAncestorSheetID:(id)d
{
  dCopy = d;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setHiddenAncestorSheetID:dCopy];
}

- (BOOL)_isHidden
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isHidden = [_layoutInfo _isHidden];

  return _isHidden;
}

- (void)_setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setHidden:hiddenCopy];
}

- (BOOL)_presentsWithGesture
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _presentsWithGesture = [_layoutInfo _presentsWithGesture];

  return _presentsWithGesture;
}

- (void)_setPresentsWithGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPresentsWithGesture:gestureCopy];
}

- (void)_setDetentDirectionWhenFloating:(int64_t)floating
{
  v3 = floating == 1;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setWantsInvertedWhenFloating:v3];
}

- (BOOL)_shouldDismissWhenTappedOutside
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _shouldDismissWhenTappedOutside = [_layoutInfo _shouldDismissWhenTappedOutside];

  return _shouldDismissWhenTappedOutside;
}

- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside
{
  outsideCopy = outside;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setShouldDismissWhenTappedOutside:outsideCopy];
}

- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen
{
  screenCopy = screen;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setAllowsInteractiveDismissWhenFullScreen:screenCopy];
}

- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down
{
  downCopy = down;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPrefersScrollingResizesWhenDetentDirectionIsDown:downCopy];
}

- (void)setPrefersScrollingExpandsWhenScrolledToEdge:(BOOL)prefersScrollingExpandsWhenScrolledToEdge
{
  v3 = prefersScrollingExpandsWhenScrolledToEdge;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:v3];
}

- (void)_realSourceViewGeometryDidChange
{
  _realSourceView = [(UIPresentationController *)self _realSourceView];
  v15 = _realSourceView;
  if (_realSourceView)
  {
    window = [_realSourceView window];
    [v15 bounds];
    [window convertRect:v15 fromView:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setSourceFrame:{v6, v8, v10, v12}];

  v14 = v15;
  if (v15)
  {

    v14 = v15;
  }
}

- (void)_setMode:(int64_t)mode
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setMode:mode];
}

- (void)_setLargeBackground:(id)background
{
  backgroundCopy = background;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setLargeBackground:backgroundCopy];
}

- (void)_setNonLargeBackground:(id)background
{
  backgroundCopy = background;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setNonLargeBackground:backgroundCopy];
}

- (double)_velocity
{
  _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  [_sheetInteractionIfLoaded currentVelocity];
  v4 = v3;

  return v4;
}

- (void)_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  lastConfiguration = self->__lastConfiguration;
  if (!lastConfiguration || (v6 = -[_UISheetPresentationControllerConfiguration _shouldScaleDownBehindDescendantSheets](lastConfiguration, "_shouldScaleDownBehindDescendantSheets"), v6 != [configurationCopy _shouldScaleDownBehindDescendantSheets]))
  {
    -[UISheetPresentationController _setShouldScaleDownBehindDescendantSheets:](self, "_setShouldScaleDownBehindDescendantSheets:", [configurationCopy _shouldScaleDownBehindDescendantSheets]);
  }

  v7 = self->__lastConfiguration;
  if (!v7 || (v8 = -[_UISheetPresentationControllerConfiguration _peeksWhenFloating](v7, "_peeksWhenFloating"), v8 != [configurationCopy _peeksWhenFloating]))
  {
    -[UISheetPresentationController _setPeeksWhenFloating:](self, "_setPeeksWhenFloating:", [configurationCopy _peeksWhenFloating]);
  }

  v9 = self->__lastConfiguration;
  if (!v9 || (v10 = -[_UISheetPresentationControllerConfiguration _wantsFullScreen](v9, "_wantsFullScreen"), v10 != [configurationCopy _wantsFullScreen]))
  {
    -[UISheetPresentationController _setWantsFullScreen:](self, "_setWantsFullScreen:", [configurationCopy _wantsFullScreen]);
  }

  v11 = self->__lastConfiguration;
  if (!v11 || (v12 = -[_UISheetPresentationControllerConfiguration _wantsBottomAttached](v11, "_wantsBottomAttached"), v12 != [configurationCopy _wantsBottomAttached]))
  {
    _wantsBottomAttached = [configurationCopy _wantsBottomAttached];
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo _setWantsEdgeAttached:_wantsBottomAttached];
  }

  v15 = self->__lastConfiguration;
  if (!v15 || (v16 = -[_UISheetPresentationControllerConfiguration _wantsEdgeAttachedInCompactHeight](v15, "_wantsEdgeAttachedInCompactHeight"), v16 != [configurationCopy _wantsEdgeAttachedInCompactHeight]))
  {
    -[UISheetPresentationController setPrefersEdgeAttachedInCompactHeight:](self, "setPrefersEdgeAttachedInCompactHeight:", [configurationCopy _wantsEdgeAttachedInCompactHeight]);
  }

  v17 = self->__lastConfiguration;
  if (!v17 || (v18 = -[_UISheetPresentationControllerConfiguration _widthFollowsPreferredContentSizeWhenEdgeAttached](v17, "_widthFollowsPreferredContentSizeWhenEdgeAttached"), v18 != [configurationCopy _widthFollowsPreferredContentSizeWhenEdgeAttached]))
  {
    -[UISheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:](self, "setWidthFollowsPreferredContentSizeWhenEdgeAttached:", [configurationCopy _widthFollowsPreferredContentSizeWhenEdgeAttached]);
  }

  v19 = self->__lastConfiguration;
  if (!v19 || (v20 = -[_UISheetPresentationControllerConfiguration _prefersGrabberVisible](v19, "_prefersGrabberVisible"), v20 != [configurationCopy _prefersGrabberVisible]))
  {
    -[UISheetPresentationController setPrefersGrabberVisible:](self, "setPrefersGrabberVisible:", [configurationCopy _prefersGrabberVisible]);
  }

  v21 = self->__lastConfiguration;
  if (!v21 || (-[_UISheetPresentationControllerConfiguration _grabberTopSpacing](v21, "_grabberTopSpacing"), v23 = v22, [configurationCopy _grabberTopSpacing], v23 != v24))
  {
    [configurationCopy _grabberTopSpacing];
    [(UISheetPresentationController *)self _setGrabberTopSpacing:?];
  }

  v25 = self->__lastConfiguration;
  if (!v25 || (-[_UISheetPresentationControllerConfiguration _additionalMinimumTopInset](v25, "_additionalMinimumTopInset"), v27 = v26, [configurationCopy _additionalMinimumTopInset], v27 != v28))
  {
    [configurationCopy _additionalMinimumTopInset];
    [(UISheetPresentationController *)self _setAdditionalMinimumTopInset:?];
  }

  v29 = self->__lastConfiguration;
  if (!v29 || (v30 = -[_UISheetPresentationControllerConfiguration _insetsPresentedViewForGrabber](v29, "_insetsPresentedViewForGrabber"), v30 != [configurationCopy _insetsPresentedViewForGrabber]))
  {
    -[UISheetPresentationController _setInsetsPresentedViewForGrabber:](self, "_setInsetsPresentedViewForGrabber:", [configurationCopy _insetsPresentedViewForGrabber]);
  }

  v31 = self->__lastConfiguration;
  if (!v31 || (v32 = -[_UISheetPresentationControllerConfiguration _mode](v31, "_mode"), v32 != [configurationCopy _mode]))
  {
    -[UISheetPresentationController _setMode:](self, "_setMode:", [configurationCopy _mode]);
  }

  v33 = self->__lastConfiguration;
  if (!v33 || (-[_UISheetPresentationControllerConfiguration _cornerRadiusForPresentationAndDismissal](v33, "_cornerRadiusForPresentationAndDismissal"), v35 = v34, [configurationCopy _cornerRadiusForPresentationAndDismissal], v35 != v36))
  {
    [configurationCopy _cornerRadiusForPresentationAndDismissal];
    [(UISheetPresentationController *)self _setCornerRadiusForPresentationAndDismissal:?];
  }

  v37 = self->__lastConfiguration;
  if (!v37 || (-[_UISheetPresentationControllerConfiguration _preferredCornerRadius](v37, "_preferredCornerRadius"), v39 = v38, [configurationCopy _preferredCornerRadius], v39 != v40))
  {
    [configurationCopy _preferredCornerRadius];
    [(UISheetPresentationController *)self setPreferredCornerRadius:?];
  }

  v41 = self->__lastConfiguration;
  if (!v41 || (-[_UISheetPresentationControllerConfiguration _preferredShadowOpacity](v41, "_preferredShadowOpacity"), v43 = v42, [configurationCopy _preferredShadowOpacity], v43 != v44))
  {
    [configurationCopy _preferredShadowOpacity];
    [(UISheetPresentationController *)self _setPreferredShadowOpacity:?];
  }

  v45 = self->__lastConfiguration;
  if (!v45 || (-[_UISheetPresentationControllerConfiguration _shadowRadius](v45, "_shadowRadius"), v47 = v46, [configurationCopy _shadowRadius], v47 != v48))
  {
    [configurationCopy _shadowRadius];
    [(UISheetPresentationController *)self _setShadowRadius:?];
  }

  v49 = self->__lastConfiguration;
  if (!v49)
  {
LABEL_54:
    _detents = [configurationCopy _detents];
    [(UISheetPresentationController *)self setDetents:_detents];
    goto LABEL_55;
  }

  _detents2 = [(_UISheetPresentationControllerConfiguration *)v49 _detents];
  _detents3 = [configurationCopy _detents];
  _detents = _detents2;
  v53 = _detents3;
  v54 = v53;
  if (_detents != v53)
  {
    if (_detents && v53)
    {
      v55 = [_detents isEqual:v53];

      if (v55)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_54;
  }

LABEL_55:
LABEL_56:
  v56 = self->__lastConfiguration;
  if (!v56)
  {
    goto LABEL_64;
  }

  _selectedDetentIdentifier = [(_UISheetPresentationControllerConfiguration *)v56 _selectedDetentIdentifier];
  _selectedDetentIdentifier2 = [configurationCopy _selectedDetentIdentifier];
  _selectedDetentIdentifier3 = _selectedDetentIdentifier;
  v60 = _selectedDetentIdentifier2;
  v61 = v60;
  if (_selectedDetentIdentifier3 == v60)
  {

LABEL_65:
    goto LABEL_66;
  }

  if (!_selectedDetentIdentifier3 || !v60)
  {

    goto LABEL_64;
  }

  v62 = [_selectedDetentIdentifier3 isEqual:v60];

  if ((v62 & 1) == 0)
  {
LABEL_64:
    _selectedDetentIdentifier3 = [configurationCopy _selectedDetentIdentifier];
    [(UISheetPresentationController *)self setSelectedDetentIdentifier:_selectedDetentIdentifier3];
    goto LABEL_65;
  }

LABEL_66:
  v63 = self->__lastConfiguration;
  if (!v63)
  {
LABEL_74:
    _standardAppearance = [configurationCopy _standardAppearance];
    [(UISheetPresentationController *)self _setStandardAppearance:_standardAppearance];
    goto LABEL_75;
  }

  _standardAppearance2 = [(_UISheetPresentationControllerConfiguration *)v63 _standardAppearance];
  _standardAppearance3 = [configurationCopy _standardAppearance];
  _standardAppearance = _standardAppearance2;
  v67 = _standardAppearance3;
  v68 = v67;
  if (_standardAppearance != v67)
  {
    if (_standardAppearance && v67)
    {
      v69 = [_standardAppearance isEqual:v67];

      if (v69)
      {
        goto LABEL_76;
      }
    }

    else
    {
    }

    goto LABEL_74;
  }

LABEL_75:
LABEL_76:
  v70 = self->__lastConfiguration;
  if (!v70)
  {
    goto LABEL_84;
  }

  _edgeAttachedCompactHeightAppearance = [(_UISheetPresentationControllerConfiguration *)v70 _edgeAttachedCompactHeightAppearance];
  _edgeAttachedCompactHeightAppearance2 = [configurationCopy _edgeAttachedCompactHeightAppearance];
  _edgeAttachedCompactHeightAppearance3 = _edgeAttachedCompactHeightAppearance;
  v74 = _edgeAttachedCompactHeightAppearance2;
  v75 = v74;
  if (_edgeAttachedCompactHeightAppearance3 == v74)
  {

LABEL_85:
    goto LABEL_86;
  }

  if (!_edgeAttachedCompactHeightAppearance3 || !v74)
  {

    goto LABEL_84;
  }

  v76 = [_edgeAttachedCompactHeightAppearance3 isEqual:v74];

  if ((v76 & 1) == 0)
  {
LABEL_84:
    _edgeAttachedCompactHeightAppearance3 = [configurationCopy _edgeAttachedCompactHeightAppearance];
    [(UISheetPresentationController *)self _setEdgeAttachedCompactHeightAppearance:_edgeAttachedCompactHeightAppearance3];
    goto LABEL_85;
  }

LABEL_86:
  v77 = self->__lastConfiguration;
  if (!v77)
  {
LABEL_94:
    _floatingAppearance = [configurationCopy _floatingAppearance];
    [(UISheetPresentationController *)self _setFloatingAppearance:_floatingAppearance];
    goto LABEL_95;
  }

  _floatingAppearance2 = [(_UISheetPresentationControllerConfiguration *)v77 _floatingAppearance];
  _floatingAppearance3 = [configurationCopy _floatingAppearance];
  _floatingAppearance = _floatingAppearance2;
  v81 = _floatingAppearance3;
  v82 = v81;
  if (_floatingAppearance != v81)
  {
    if (_floatingAppearance && v81)
    {
      v83 = [_floatingAppearance isEqual:v81];

      if (v83)
      {
        goto LABEL_96;
      }
    }

    else
    {
    }

    goto LABEL_94;
  }

LABEL_95:
LABEL_96:
  v84 = self->__lastConfiguration;
  if (!v84 || (v85 = -[_UISheetPresentationControllerConfiguration _detentDirectionWhenFloating](v84, "_detentDirectionWhenFloating"), v85 != [configurationCopy _detentDirectionWhenFloating]))
  {
    -[UISheetPresentationController _setDetentDirectionWhenFloating:](self, "_setDetentDirectionWhenFloating:", [configurationCopy _detentDirectionWhenFloating]);
  }

  v86 = self->__lastConfiguration;
  if (!v86 || (v87 = -[_UISheetPresentationControllerConfiguration _prefersScrollingResizesWhenDetentDirectionIsDown](v86, "_prefersScrollingResizesWhenDetentDirectionIsDown"), v87 != [configurationCopy _prefersScrollingResizesWhenDetentDirectionIsDown]))
  {
    -[UISheetPresentationController _setPrefersScrollingResizesWhenDetentDirectionIsDown:](self, "_setPrefersScrollingResizesWhenDetentDirectionIsDown:", [configurationCopy _prefersScrollingResizesWhenDetentDirectionIsDown]);
  }

  v88 = self->__lastConfiguration;
  if (!v88 || (v89 = -[_UISheetPresentationControllerConfiguration _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge](v88, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"), v89 != [configurationCopy _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge]))
  {
    -[UISheetPresentationController setPrefersScrollingExpandsWhenScrolledToEdge:](self, "setPrefersScrollingExpandsWhenScrolledToEdge:", [configurationCopy _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge]);
  }

  v90 = self->__lastConfiguration;
  if (!v90 || (-[_UISheetPresentationControllerConfiguration _hostParentDepthLevel](v90, "_hostParentDepthLevel"), v92 = v91, [configurationCopy _hostParentDepthLevel], v92 != v93))
  {
    [configurationCopy _hostParentDepthLevel];
    v95 = v94;
    _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo2 _setHostParentDepthLevel:v95];
  }

  v97 = self->__lastConfiguration;
  if (!v97 || (-[_UISheetPresentationControllerConfiguration _hostParentStackAlignmentFrame](v97, "_hostParentStackAlignmentFrame"), v99 = v98, v101 = v100, v103 = v102, v105 = v104, [configurationCopy _hostParentStackAlignmentFrame], v145.origin.x = v106, v145.origin.y = v107, v145.size.width = v108, v145.size.height = v109, v143.origin.x = v99, v143.origin.y = v101, v143.size.width = v103, v143.size.height = v105, !CGRectEqualToRect(v143, v145)))
  {
    [configurationCopy _hostParentStackAlignmentFrame];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;
    _layoutInfo3 = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo3 _setHostParentStackAlignmentFrame:{v111, v113, v115, v117}];
  }

  v119 = self->__lastConfiguration;
  if (!v119 || (-[_UISheetPresentationControllerConfiguration _hostParentFullHeightUntransformedFrameForDepthLevel](v119, "_hostParentFullHeightUntransformedFrameForDepthLevel"), v121 = v120, v123 = v122, v125 = v124, v127 = v126, [configurationCopy _hostParentFullHeightUntransformedFrameForDepthLevel], v146.origin.x = v128, v146.origin.y = v129, v146.size.width = v130, v146.size.height = v131, v144.origin.x = v121, v144.origin.y = v123, v144.size.width = v125, v144.size.height = v127, !CGRectEqualToRect(v144, v146)))
  {
    [configurationCopy _hostParentFullHeightUntransformedFrameForDepthLevel];
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    _layoutInfo4 = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo4 _setHostParentFullHeightUntransformedFrameForDepthLevel:{v133, v135, v137, v139}];
  }

  objc_storeStrong(&self->__lastConfiguration, configuration);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _invalidatePreferredSize];

  _hostManagerIfLoaded = [(UISheetPresentationController *)self _hostManagerIfLoaded];
  if (_hostManagerIfLoaded)
  {
    v6 = _hostManagerIfLoaded;
    [_hostManagerIfLoaded preferredContentSizeDidChange];
    _hostManagerIfLoaded = v6;
  }
}

- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively
{
  v5.receiver = self;
  v5.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v5 _prepareForWindowDeallocRecursively:recursively];
  [(BSInvalidatable *)self->__multilayerAssertion invalidate];
  multilayerAssertion = self->__multilayerAssertion;
  self->__multilayerAssertion = 0;

  if (objc_opt_respondsToSelector())
  {
    [(_UISheetHostManager *)self->__hostManager tearDownSheet];
  }
}

- (void)_setDisableSolariumInsets:(BOOL)insets
{
  insetsCopy = insets;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setDisableSolariumInsets:insetsCopy];
}

- (BOOL)_disableSolariumInsets
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _disableSolariumInsets = [_layoutInfo _disableSolariumInsets];

  return _disableSolariumInsets;
}

- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)inset
{
  insetCopy = inset;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setIncludesSafeAreaInsetWhenInset:insetCopy];
}

- (BOOL)_includesSafeAreaInsetWhenInset
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _includesSafeAreaInsetWhenInset = [_layoutInfo _includesSafeAreaInsetWhenInset];

  return _includesSafeAreaInsetWhenInset;
}

- (void)_animateChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__UISheetPresentationController__animateChanges_completion___block_invoke;
  v8[3] = &unk_1E70F37C0;
  v8[4] = self;
  v9 = changesCopy;
  v7 = changesCopy;
  _UISheetAnimateWithCompletion(v8, completion);
}

void __60__UISheetPresentationController__animateChanges_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _layoutInfo];
  v3 = [v2 _indexOfCurrentActiveDetent];
  (*(*(a1 + 40) + 16))();
  v4 = v3 != [v2 _indexOfCurrentActiveDetent];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UISheetPresentationController__animateChanges_completion___block_invoke_2;
  v5[3] = &unk_1E70F3590;
  v5[4] = v2;
  [UIView _conditionallyModifyAnimations:v4 withPreferredFrameRateRange:1048612 updateReason:v5 animations:*&v6.minimum, *&v6.maximum, *&v6.preferred];
}

- (NSArray)_detentValues
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _detentValues = [_layoutInfo _detentValues];
  v4 = [_detentValues copy];

  return v4;
}

- (double)_currentDetentValue
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _currentDetentValue];
  v4 = v3;

  return v4;
}

- (CGRect)_occludedFrameOfPresentedViewInContainerView
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _frameOfPresentedViewInContainerView];
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

- (id)_recursivelyResolvedRemoteSheetForRemoteSheet:(id)sheet
{
  sheetCopy = sheet;
  v4 = sheetCopy;
  if (objc_opt_respondsToSelector())
  {
    v5 = sheetCopy;
    while (1)
    {
      _containedRemoteSheet = [v5 _containedRemoteSheet];
      if (!_containedRemoteSheet)
      {
        break;
      }

      v4 = _containedRemoteSheet;

      v5 = v4;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v4 = v5;
  }

LABEL_7:

  return v4;
}

- (void)_tryToConnectToRemoteSheet:(id)sheet
{
  sheetCopy = sheet;
  _expectedRemoteSheet = [(UISheetPresentationController *)self _expectedRemoteSheet];
  if (_expectedRemoteSheet != sheetCopy)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  _hostManager = [(UISheetPresentationController *)self _hostManager];

  if (_hostManager)
  {
    goto LABEL_4;
  }

  v6 = sheetCopy;
LABEL_5:
  connectedRemoteSheet = self->__connectedRemoteSheet;
  if (connectedRemoteSheet != v6)
  {
    if (connectedRemoteSheet)
    {
      v8 = +[_UISheetPresentationControllerConfiguration _fullScreenConfiguration];
      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setSheetConfiguration:v8];

      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setViewClipsToBounds:1];
    }

    objc_storeStrong(&self->__connectedRemoteSheet, v6);
    _isHosting = [(UISheetPresentationController *)self _isHosting];
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo _setHosting:_isHosting];

    if (self->__connectedRemoteSheet)
    {
      _configuration = [(UISheetPresentationController *)self _configuration];
      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setSheetConfiguration:_configuration];

      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setViewClipsToBounds:0];
    }

    delegate = [(UIPresentationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _sheetPresentationControllerDidChangeHosting:self];
    }
  }
}

- (CGRect)_remoteKeyboardFrame
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _remoteKeyboardFrame];
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

- (void)_setRemoteKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setRemoteKeyboardFrame:{x, y, width, height}];
}

- (BOOL)_remoteContainsFirstResponder
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _remoteContainsFirstResponder = [_layoutInfo _remoteContainsFirstResponder];

  return _remoteContainsFirstResponder;
}

- (void)_setRemoteContainsFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setRemoteContainsFirstResponder:responderCopy];
}

- (BOOL)_remoteFirstResponderRequiresKeyboard
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _remoteFirstResponderRequiresKeyboard = [_layoutInfo _remoteFirstResponderRequiresKeyboard];

  return _remoteFirstResponderRequiresKeyboard;
}

- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setRemoteFirstResponderRequiresKeyboard:keyboardCopy];
}

- (double)_remoteProposedDepthLevel
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _remoteProposedDepthLevel];
  v4 = v3;

  return v4;
}

- (void)_setRemoteProposedDepthLevel:(double)level
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setRemoteProposedDepthLevel:level];
}

- (void)_setRemoteClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  containsFirstResponder = [configurationCopy containsFirstResponder];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setRemoteContainsFirstResponder:containsFirstResponder];

  firstResponderRequiresKeyboard = [configurationCopy firstResponderRequiresKeyboard];
  _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo2 _setRemoteFirstResponderRequiresKeyboard:firstResponderRequiresKeyboard];

  [configurationCopy keyboardFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  _layoutInfo3 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo3 _setRemoteKeyboardFrame:{v10, v12, v14, v16}];

  [configurationCopy proposedDepthLevel];
  v19 = v18;

  _layoutInfo4 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo4 _setRemoteProposedDepthLevel:v19];
}

- (void)_setRemoteDismissing:(BOOL)dismissing
{
  if (self->__remoteDismissing != dismissing)
  {
    self->__remoteDismissing = dismissing;
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];
  }
}

- (void)_resetRemoteDismissing
{
  [(UISheetPresentationController *)self _setRemoteDismissing:0];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPresented:1];
}

- (void)_containerViewScreenDidChangeToScreen:(id)screen
{
  v10.receiver = self;
  v10.super_class = UISheetPresentationController;
  screenCopy = screen;
  [(UIPresentationController *)&v10 _containerViewScreenDidChangeToScreen:screenCopy];
  [screenCopy bounds];
  v6 = v5;
  v8 = v7;

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setScreenSize:{v6, v8}];
}

- (void)_sheetLayoutInfoDidInvalidateDetentValues:(id)values
{
  _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  [_sheetInteractionIfLoaded invalidateDetents];

  [(UISheetPresentationController *)self _sendDidInvalidateDetentValues];
}

- (void)_sheetLayoutInfoDidInvalidateOutput:(id)output
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

- (void)_sheetLayoutInfoLayout:(id)layout
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView layoutIfNeeded];

  [(UISheetPresentationController *)self _sendPerformLayout];
}

- (UISheetPresentationController)_childSheetPresentationController
{
  _childPresentationController = [(UIPresentationController *)self _childPresentationController];
  if (_childPresentationController)
  {
    do
    {
      if ([_childPresentationController _isPresentedInFullScreen])
      {
        break;
      }

      v2_childPresentationController = [_childPresentationController _childPresentationController];

      _childPresentationController = v2_childPresentationController;
    }

    while (v2_childPresentationController);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = _childPresentationController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(UISheetPresentationController *)self _transitionDidEnd:1 completed:end];
  if (endCopy)
  {
    delegate = [(UIPresentationController *)self delegate];
    v5 = objc_opt_respondsToSelector();
    v6 = delegate;
    if (v5)
    {
      v7 = [delegate _sheetPresentationControllerViewForTouchContinuation:self];
      if (v7)
      {
        _gestureEnvironment = [UIApp _gestureEnvironment];
        [(UIGestureEnvironment *)_gestureEnvironment _performTouchContinuationWithOverrideHitTestedView:v7];
      }

      v6 = delegate;
    }
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(UISheetPresentationController *)self _transitionDidEnd:0 completed:end];
  if (endCopy)
  {
    [(UISheetPresentationController *)self _setPresentsWithGesture:0];
    [(UISheetPresentationController *)self _setOcclusionEnabled:0];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [presentedViewController setDropShadowView:0];

    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView setContentView:0];

    _multilayerAssertion = [(UISheetPresentationController *)self _multilayerAssertion];
    [_multilayerAssertion invalidate];

    [(UISheetPresentationController *)self set_multilayerAssertion:0];
    _exteriorPanGestureRecognizer = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    if (_exteriorPanGestureRecognizer)
    {
      view = [_exteriorPanGestureRecognizer view];
      [view removeGestureRecognizer:_exteriorPanGestureRecognizer];
    }

    _parentSheetPresentationController = [(UISheetPresentationController *)self _parentSheetPresentationController];
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo _setParentLayoutInfo:0];

    _layoutInfo2 = [_parentSheetPresentationController _layoutInfo];
    [_layoutInfo2 _setChildLayoutInfo:0];

    [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:0];
    self->_wantsContentOverlayInsetsUpdatesWhileDismissing = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UISheetDidDisappearNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [defaultCenter2 removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
    [defaultCenter2 removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
    [defaultCenter2 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)_transitionWillBegin:(BOOL)begin
{
  beginCopy = begin;
  v64[4] = *MEMORY[0x1E69E9840];
  _definiteTransitionCoordinator = [(UIPresentationController *)self _definiteTransitionCoordinator];
  _hostManager = [(UISheetPresentationController *)self _hostManager];
  if (_hostManager)
  {
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo _setPresented:beginCopy];

    [_hostManager transitionWillBegin:beginCopy];
    goto LABEL_34;
  }

  if (![(UISheetPresentationController *)self _isRootPresentation])
  {
    _parentSheetPresentationController = [(UISheetPresentationController *)self _parentSheetPresentationController];
    if (_parentSheetPresentationController && ([(UIPresentationController *)self presentedViewController], v9 = objc_claimAutoreleasedReturnValue(), v10 = _UISheetPresentationControllerStylesSheetsAsCards(v9), v9, v10))
    {
      if (!beginCopy)
      {
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke;
        v62[3] = &unk_1E70F3B98;
        v63 = _parentSheetPresentationController;
        [_definiteTransitionCoordinator animateAlongsideTransition:0 completion:v62];
        v21 = v63;
        goto LABEL_11;
      }

      _confinedDimmingView = [(UISheetPresentationController *)self _confinedDimmingView];
      dropShadowView = [_parentSheetPresentationController dropShadowView];
      [dropShadowView setOverlayView:_confinedDimmingView];
    }

    else if (!beginCopy)
    {
LABEL_12:

      goto LABEL_13;
    }

    containerView = [(UIPresentationController *)self containerView];
    dimmingView = [(UISheetPresentationController *)self dimmingView];
    [containerView addSubview:dimmingView];

    v42 = MEMORY[0x1E69977A0];
    dimmingView2 = [(UISheetPresentationController *)self dimmingView];
    centerXAnchor = [dimmingView2 centerXAnchor];
    containerView2 = [(UIPresentationController *)self containerView];
    centerXAnchor2 = [containerView2 centerXAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v64[0] = v47;
    dimmingView3 = [(UISheetPresentationController *)self dimmingView];
    centerYAnchor = [dimmingView3 centerYAnchor];
    containerView3 = [(UIPresentationController *)self containerView];
    centerYAnchor2 = [containerView3 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[1] = v41;
    dimmingView4 = [(UISheetPresentationController *)self dimmingView];
    widthAnchor = [dimmingView4 widthAnchor];
    containerView4 = [(UIPresentationController *)self containerView];
    widthAnchor2 = [containerView4 widthAnchor];
    v36 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:3.0];
    v64[2] = v36;
    dimmingView5 = [(UISheetPresentationController *)self dimmingView];
    [dimmingView5 heightAnchor];
    v16 = v52 = _parentSheetPresentationController;
    containerView5 = [(UIPresentationController *)self containerView];
    heightAnchor = [containerView5 heightAnchor];
    v19 = [v16 constraintEqualToAnchor:heightAnchor multiplier:3.0];
    v64[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v42 activateConstraints:v20];

    _parentSheetPresentationController = v52;
    v21 = dimmingView2;
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if (_UISheetPresentationControllerStylesSheetsAsCards(presentedViewController))
  {

LABEL_16:
    _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo2 _setTransitioning:1];

    presentedViewController2 = [(UIPresentationController *)self presentedViewController];
    preferredTransition = [presentedViewController2 preferredTransition];
    v27 = objc_opt_class();
    v28 = objc_opt_self();
    v29 = v27 == v28;

    _layoutInfo3 = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo3 _setZooming:v29];

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_2;
    v60[3] = &unk_1E71018A8;
    v60[4] = self;
    v61 = beginCopy;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_4;
    v59[3] = &unk_1E70F3B98;
    v59[4] = self;
    if (([_definiteTransitionCoordinator animateAlongsideTransition:v60 completion:v59] & 1) == 0)
    {
      _layoutInfo4 = [(UISheetPresentationController *)self _layoutInfo];
      [_layoutInfo4 _setPresented:beginCopy];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_5;
    v57[3] = &unk_1E71018A8;
    v57[4] = self;
    v58 = beginCopy;
    [_definiteTransitionCoordinator notifyWhenInteractionChangesUsingBlock:v57];
    goto LABEL_20;
  }

  _isRootPresentation = [(UISheetPresentationController *)self _isRootPresentation];

  if (_isRootPresentation)
  {
    goto LABEL_16;
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_6;
  v55[3] = &unk_1E71018A8;
  v55[4] = self;
  v56 = beginCopy;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_7;
  v53[3] = &unk_1E71018A8;
  v53[4] = self;
  v54 = beginCopy;
  [_definiteTransitionCoordinator animateAlongsideTransition:v55 completion:v53];
LABEL_20:
  presentedViewController3 = [(UIPresentationController *)self presentedViewController];
  v33 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController3);

  if (v33)
  {
    if ([(UISheetPresentationController *)self _isHosting]&& ([(UIPresentationController *)self _transitioningFrom]|| [(UIPresentationController *)self dismissing]&& ![(UISheetPresentationController *)self _isDraggingAndTransitioning]) && ![(UISheetPresentationController *)self _dismissingHorizontallyAlongsideNavigationPop])
    {
      [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:0];
      self->_wantsContentOverlayInsetsUpdatesWhileDismissing = 1;
      if ([(UIPresentationController *)self dismissing])
      {
        _layoutInfo5 = [(UISheetPresentationController *)self _layoutInfo];
        [_layoutInfo5 _layout];

        [(UISheetPresentationController *)self _updatePresentedViewFrame];
      }
    }

    else if ([(UIPresentationController *)self _transitioningTo])
    {
      _expectedRemoteSheet = [(UISheetPresentationController *)self _expectedRemoteSheet];
      [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:_expectedRemoteSheet];
    }
  }

  if (!beginCopy && ([(UISheetPresentationController *)self _isDraggingAndTransitioning]|| [(UISheetPresentationController *)self _isDimmingViewTapDismissing]))
  {
    [(UIPresentationController *)self _sendDismissalsAsNeeded];
  }

LABEL_34:
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) dropShadowView];
    [v3 setOverlayView:0];
  }
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _animationController];
  if (v4 && ([*(a1 + 32) _isHosting] & 1) == 0)
  {
    [v4 sourceFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) _layoutInfo];
    [v13 _setDismissSourceFrame:{v6, v8, v10, v12}];
  }

  v14 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
  if (v14)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_3;
    v18[3] = &unk_1E70F3590;
    v18[4] = *(a1 + 32);
    [UIView performWithoutAnimation:v18];
  }

  if (([v3 isInteractive] & 1) == 0)
  {
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) _layoutInfo];
    [v16 _setPresented:v15];
  }

  if (v14)
  {
    v17 = [*(a1 + 32) _layoutInfo];
    [v17 _layout];
  }
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _layoutInfo];
  [v1 _layout];
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _layoutInfo];
  [v2 _setTransitioning:0];

  v3 = [*(a1 + 32) _layoutInfo];
  [v3 _setZooming:0];
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isInteractive] & 1) == 0)
  {
    v3 = *(a1 + 40) != [v6 isCancelled];
    v4 = [*(a1 + 32) _layoutInfo];
    [v4 _setPresented:v3];

    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v5 = [*(a1 + 32) _layoutInfo];
      [v5 _layout];
    }
  }
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) dimmingView];
  [v2 display:*(a1 + 40)];
}

void __54__UISheetPresentationController__transitionWillBegin___block_invoke_7(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = [*(a1 + 32) dimmingView];
    [v3 display:(*(a1 + 40) & 1) == 0];
  }
}

- (void)_transitionDidEnd:(BOOL)end completed:(BOOL)completed
{
  completedCopy = completed;
  endCopy = end;
  [(UISheetPresentationController *)self _setAnimatedTransition:0];
  [(UISheetPresentationController *)self _setInteractiveTransition:0];
  if (completedCopy)
  {
    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView _setGrabberLumaTrackingEnabled:endCopy];
  }

  _hostManager = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    [_hostManager transitionDidEnd:endCopy];
  }
}

- (void)_dropShadowViewGrabberDidTriggerPrimaryAction:(id)action
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _grabberAction = [_layoutInfo _grabberAction];
  if ((_grabberAction - 2) < 2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__UISheetPresentationController__dropShadowViewGrabberDidTriggerPrimaryAction___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = _layoutInfo;
    v9[5] = self;
    [(UISheetPresentationController *)self animateChanges:v9];
  }

  else if (_grabberAction == 1)
  {
    [(UISheetPresentationController *)self _dismissFromGrabberOrDimmingViewIfPossible];
  }

  else if (!_grabberAction)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    view = [presentedViewController view];
    [view endEditing:1];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [_clientRemotePresentationDelegate _sheetGrabberDidTriggerPrimaryAction];
  }
}

uint64_t __79__UISheetPresentationController__dropShadowViewGrabberDidTriggerPrimaryAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeDetents];
  v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "_indexOfActiveDetentForTappingGrabber")}];
  v4 = [v3 _identifier];
  [*(a1 + 32) _setSelectedDetentIdentifier:v4];

  v5 = *(a1 + 40);

  return [v5 _sendDidChangeSelectedDetentIdentifier];
}

- (void)_dismissFromGrabberOrDimmingViewIfPossible
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _indexOfActiveDimmingDetent = [_layoutInfo _indexOfActiveDimmingDetent];
  if (_indexOfActiveDimmingDetent == 0x7FFFFFFFFFFFFFFFLL || (v5 = _indexOfActiveDimmingDetent + 1, _indexOfActiveDimmingDetent + 1 >= [_layoutInfo _numberOfActiveNonDismissDetents]))
  {
    if (![(UIPresentationController *)self _shouldDismiss])
    {
      goto LABEL_13;
    }

    _identifier = 0;
LABEL_8:
    [(UISheetPresentationController *)self _setDimmingViewTapDismissing:1];
    if (dyld_program_sdk_at_least())
    {
      [(UIPresentationController *)self presentingViewController];
    }

    else
    {
      [(UIPresentationController *)self presentedViewController];
    }
    v9 = ;
    [v9 dismissViewControllerAnimated:1 completion:0];

    goto LABEL_12;
  }

  _activeDetents = [_layoutInfo _activeDetents];
  v7 = [_activeDetents objectAtIndexedSubscript:v5];
  _identifier = [v7 _identifier];

  if ([(UIPresentationController *)self _shouldDismiss])
  {
    goto LABEL_8;
  }

  if (_identifier)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__UISheetPresentationController__dismissFromGrabberOrDimmingViewIfPossible__block_invoke;
    v10[3] = &unk_1E70F6228;
    v10[4] = _layoutInfo;
    v10[5] = _identifier;
    v10[6] = self;
    [(UISheetPresentationController *)self animateChanges:v10];
LABEL_12:
  }

LABEL_13:
}

uint64_t __75__UISheetPresentationController__dismissFromGrabberOrDimmingViewIfPossible__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setSelectedDetentIdentifier:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 _sendDidChangeSelectedDetentIdentifier];
}

- (CGRect)_frameOfPresentedViewControllerViewInSuperview
{
  dropShadowView = [(UISheetPresentationController *)self dropShadowView];
  [dropShadowView _contentViewFrame];
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

- (void)_setShouldPresentedViewControllerControlStatusBarAppearance:(BOOL)appearance
{
  if (self->__shouldPresentedViewControllerControlStatusBarAppearance != appearance)
  {
    self->__shouldPresentedViewControllerControlStatusBarAppearance = appearance;
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    _isAnyDescendantDragging = [_layoutInfo _isAnyDescendantDragging];

    if (_isAnyDescendantDragging)
    {
      initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
      [(UIStatusBarAnimationParameters *)initWithDefaultParameters setSkipFencing:1];
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      [presentedViewController _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:initWithDefaultParameters];
    }

    else
    {
      initWithDefaultParameters = [(UIPresentationController *)self presentedViewController];
      [(UIStatusBarStyleAnimationParameters *)initWithDefaultParameters setNeedsStatusBarAppearanceUpdate];
    }
  }
}

- (BOOL)_shouldPresentedViewControllerServeAsBaseForScrollToTop
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isDimmingEnabled = [_layoutInfo _isDimmingEnabled];

  return _isDimmingEnabled;
}

- (BOOL)_shouldDismissWithNavigationPop
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isDimmingEnabled = [_layoutInfo _isDimmingEnabled];

  return _isDimmingEnabled ^ 1;
}

- (void)_setOcclusionEnabled:(BOOL)enabled
{
  if (self->__occlusionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->__occlusionEnabled = enabled;
    _sheetInteractionIfLoaded = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    isGeneratingAnimations = [_sheetInteractionIfLoaded isGeneratingAnimations];

    if (isGeneratingAnimations)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__UISheetPresentationController__setOcclusionEnabled___block_invoke;
      v7[3] = &unk_1E70F35E0;
      v7[4] = self;
      v8 = enabledCopy;
      [UIApp _performBlockAfterCATransactionCommits:v7];
    }

    else
    {

      [(UIPresentationController *)self _enableOcclusion:enabledCopy];
    }
  }
}

void __54__UISheetPresentationController__setOcclusionEnabled___block_invoke(uint64_t a1)
{
  v2 = [UIViewPropertyAnimator alloc];
  v3 = _UISheetTransitionTimingCurve();
  v4 = [(UIViewPropertyAnimator *)v2 initWithDuration:v3 timingParameters:0.0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UISheetPresentationController__setOcclusionEnabled___block_invoke_2;
  v5[3] = &unk_1E70F35E0;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [(UIViewPropertyAnimator *)v4 addAnimations:v5];
  [(UIViewPropertyAnimator *)v4 startAnimation];
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView safeAreaInsets];
  v5 = v4;

  [(_UISheetLayoutInfo *)self->__layoutInfo _percentSafeAreaInsetToInclude];
  v7 = -(v5 * (1.0 - v6));
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  result.right = v10;
  result.bottom = v7;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)_handleKeyboardNotification:(id)notification aboutToHide:(BOOL)hide
{
  hideCopy = hide;
  notificationCopy = notification;
  containerView = [(UIPresentationController *)self containerView];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke;
  v28[3] = &unk_1E70F3590;
  v9 = _layoutInfo;
  v29 = v9;
  [UIView performWithoutAnimation:v28];
  if (hideCopy)
  {
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [_UIKeyboardLayoutAlignmentView _endFrameForNotification:notificationCopy inView:containerView];
  }

  [v9 _setKeyboardFrame:{v10, v11, v12, v13}];
  window = [containerView window];
  _firstResponder = [window _firstResponder];
  [v9 _setFirstResponderRequiresKeyboard:{objc_msgSend(_firstResponder, "_requiresKeyboardWhenFirstResponder")}];

  userInfo = [notificationCopy userInfo];
  v17 = [userInfo objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v17 doubleValue];
  v19 = v18;

  userInfo2 = [notificationCopy userInfo];
  v21 = [userInfo2 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
  integerValue = [v21 integerValue];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke_2;
  v24[3] = &unk_1E70F6848;
  v26 = v19;
  v27 = integerValue;
  v25 = v9;
  v23 = v9;
  [UIView _performWithAnimation:v24];
}

void __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48) << 16;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v4 = *(a1 + 32);
  [UIView animateWithDuration:v2 delay:v3 options:0 animations:v1 completion:0.0];
}

- (void)_keyboardAboutToShow:(id)show
{
  showCopy = show;
  object = [showCopy object];
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  if (object == screen)
  {
    userInfo = [showCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
    bOOLValue = [v9 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [(UISheetPresentationController *)self _setKeyboardShown:1];
      [(UISheetPresentationController *)self _handleKeyboardNotification:showCopy aboutToHide:0];
    }
  }
}

- (void)_keyboardAboutToChangeFrame:(id)frame
{
  frameCopy = frame;
  object = [frameCopy object];
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  if (object == screen)
  {
    if ([(UISheetPresentationController *)self _isKeyboardShown])
    {
      v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v9 = [v8 hasActiveKeyboardSuppressionAssertionsForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant"];

      if ((v9 & 1) == 0)
      {
        [(UISheetPresentationController *)self _handleKeyboardNotification:frameCopy aboutToHide:0];
      }
    }
  }
}

- (void)_keyboardAboutToHide:(id)hide
{
  hideCopy = hide;
  object = [hideCopy object];
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  screen = [window screen];

  if (object == screen)
  {
    userInfo = [hideCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
    bOOLValue = [v9 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v12 = [v11 hasActiveKeyboardSuppressionAssertionsForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant"];

      if ((v12 & 1) == 0)
      {
        [(UISheetPresentationController *)self _setKeyboardShown:0];
        [(UISheetPresentationController *)self _handleKeyboardNotification:hideCopy aboutToHide:1];
      }
    }
  }
}

- (void)_firstResponderDidChange:(id)change
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  _isAncestorOfFirstResponder = [view _isAncestorOfFirstResponder];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setContainsFirstResponder:_isAncestorOfFirstResponder];

  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  _firstResponder = [window _firstResponder];
  _requiresKeyboardWhenFirstResponder = [_firstResponder _requiresKeyboardWhenFirstResponder];
  _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo2 _setFirstResponderRequiresKeyboard:_requiresKeyboardWhenFirstResponder];
}

- (BOOL)_allowsFocusInPresentingViewController
{
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isDimmingEnabled = [_layoutInfo _isDimmingEnabled];

  return _isDimmingEnabled ^ 1;
}

double __50__UISheetPresentationController__sheetInteraction__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _layoutInfo];
  [v2 _rubberBandExtentBeyondMinimumOffset];
  v4 = v3;

  return v4;
}

double __50__UISheetPresentationController__sheetInteraction__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _layoutInfo];
  [v2 _rubberBandExtentBeyondMaximumOffset];
  v4 = v3;

  return v4;
}

void __50__UISheetPresentationController__sheetInteraction__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _sheetInteractionIfLoaded];
  [v1 invalidateRubberBandExtentBeyondMinimumOffset];
}

void __50__UISheetPresentationController__sheetInteraction__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _sheetInteractionIfLoaded];
  [v1 invalidateRubberBandExtentBeyondMaximumOffset];
}

- (id)_preferredAnimationControllerForTransition:(BOOL)transition
{
  transitionCopy = transition;
  _hostManager = [(UISheetPresentationController *)self _hostManager];
  v6 = _hostManager;
  if (_hostManager)
  {
    v7 = [_hostManager preferredAnimationControllerForTransition:transitionCopy];
LABEL_3:
    v8 = v7;
    goto LABEL_14;
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v10 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if (v10)
  {
    if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
    {
      if (transitionCopy)
      {
        [(UIPresentationController *)&v17 _preferredAnimationControllerForPresentation:v16.receiver];
      }

      else
      {
        [(UIPresentationController *)&v16 _preferredAnimationControllerForDismissal:self];
      }
      v7 = ;
      goto LABEL_3;
    }

    _sheetVisualStyle = [(UISheetPresentationController *)self _sheetVisualStyle];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0 || (-[UISheetPresentationController _sheetVisualStyle](self, "_sheetVisualStyle"), v13 = objc_claimAutoreleasedReturnValue(), [v13 preferredInteractiveAnimationControllerForSheetPresentation:transitionCopy], v8 = objc_claimAutoreleasedReturnValue(), v13, !v8))
    {
      v8 = objc_alloc_init(_UISheetAnimationController);
    }

    [(_UISheetAnimationController *)v8 setIsReversed:transitionCopy ^ 1];
    if (!transitionCopy)
    {
      presentedView = [(UISheetPresentationController *)self presentedView];
      [presentedView _frameIgnoringLayerTransform];
      [(_UISheetAnimationController *)v8 setInteractiveFrame:?];
    }

    if ([(UISheetPresentationController *)self _isHosting])
    {
      [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
      [(_UISheetAnimationController *)v8 setSourceFrame:?];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)_preferredInteractionControllerForTransition:(BOOL)transition animator:(id)animator
{
  animatorCopy = animator;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v7 = _UISheetPresentationControllerStylesSheetsAsCards(presentedViewController);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UISheetPresentationController *)self _setAnimatedTransition:animatorCopy];
      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v20, &location);
      v8 = [(UISheetPresentationController *)self _animationController:v19];
      [v8 setDefaultSourceFrameProvider:&v19];

      _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
      [_sheetInteraction attachmentPoint];
      v11 = v10;
      v13 = v12;
      _animationController = [(UISheetPresentationController *)self _animationController];
      [_animationController setAttachmentPoint:{v11, v13}];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    _interactionController = [(UISheetPresentationController *)self _interactionController];
    if (!_interactionController)
    {
      if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
      {
LABEL_8:
        _interactionController2 = [(UISheetPresentationController *)self _interactionController];
        goto LABEL_10;
      }

      v16 = objc_alloc_init(UIPercentDrivenInteractiveTransition);
      [(UISheetPresentationController *)self _setInteractiveTransition:v16];

      _interactionController = [(UISheetPresentationController *)self _interactionController];
      [_interactionController setWantsInteractiveStart:1];
    }

    goto LABEL_8;
  }

  _interactionController2 = 0;
LABEL_10:

  return _interactionController2;
}

double __87__UISheetPresentationController__preferredInteractionControllerForTransition_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _layoutInfo];
  [v2 _hostedDismissFrame];
  v4 = v3;

  return v4;
}

- (void)_updateAnimationController
{
  _isPresentedRemotely = [(UISheetPresentationController *)self _isPresentedRemotely];
  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _hostedUntransformedFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (_isPresentedRemotely)
  {
    presentedView = [(UISheetPresentationController *)self presentedView];
    [presentedView _setFrameIgnoringLayerTransform:{v5, v7, v9, v11}];
  }

  else
  {
    _animationController = [(UISheetPresentationController *)self _animationController];
    [_animationController setInteractiveFrame:{v5, v7, v9, v11}];

    _layoutInfo = [(UISheetPresentationController *)self _animationController];
    [_layoutInfo layoutTransitionViews];
  }
}

- (void)_startInteractiveTransitionWithProgress:(double)progress fromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  [(UISheetPresentationController *)self _setDraggingAndTransitioning:1];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    containerView = [(UIPresentationController *)self containerView];
    [containerView layoutIfNeeded];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    [(UISheetPresentationController *)self _setRemoteDismissing:1];
  }

  else
  {
    _interactionController = [(UISheetPresentationController *)self _interactionController];

    if (_interactionController)
    {
      _interactionController2 = [(UISheetPresentationController *)self _interactionController];
      [_interactionController2 pauseInteractiveTransition];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__UISheetPresentationController__startInteractiveTransitionWithProgress_fromViewController_completion___block_invoke;
      v13[3] = &unk_1E70FCE28;
      v14 = controllerCopy;
      selfCopy = self;
      v16 = completionCopy;
      [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:v13 actions:?];
    }
  }

  [(UISheetPresentationController *)self _updateInteractiveTransitionWithProgress:progress];
}

void __103__UISheetPresentationController__startInteractiveTransitionWithProgress_fromViewController_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    v3 = [v1 presentedViewController];
    [v2 presentViewController:? animated:? completion:?];
  }

  else
  {
    v3 = [v1 presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_updateInteractiveTransitionWithProgress:(double)progress
{
  [(UISheetPresentationController *)self _updateAnimationController];
  if (![(UISheetPresentationController *)self _isPresentedRemotely])
  {
    _interactionController = [(UISheetPresentationController *)self _interactionController];
    [_interactionController updateInteractiveTransition:{fmin(progress, 0.99)}];
  }
}

- (void)_completeInteractiveTransition:(BOOL)transition duration:(double)duration timingCurve:(id)curve
{
  transitionCopy = transition;
  curveCopy = curve;
  if ([(UIPresentationController *)self presented]|| (v9 = transitionCopy, [(UIPresentationController *)self dismissing]))
  {
    v9 = transitionCopy ^ 1;
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setPresented:v9];

  [(UISheetPresentationController *)self _setDraggingAndTransitioning:0];
  if (duration != 0.0)
  {
    v11 = dyld_program_sdk_at_least() ^ 1 | transitionCopy;
    _interactionController = [(UISheetPresentationController *)self _interactionController];
    [_interactionController percentComplete];
    v14 = v13;

    if (v11)
    {
      v14 = 1.0 - v14;
    }

    _interactionController2 = [(UISheetPresentationController *)self _interactionController];
    [_interactionController2 duration];
    v17 = v14 * v16;

    _interactionController3 = [(UISheetPresentationController *)self _interactionController];
    [_interactionController3 setCompletionSpeed:v17 / duration];

    _interactionController4 = [(UISheetPresentationController *)self _interactionController];
    [_interactionController4 setTimingCurve:curveCopy];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    if (!transitionCopy)
    {
      [(UISheetPresentationController *)self _setRemoteDismissing:0];
    }
  }

  else
  {
    _interactionController5 = [(UISheetPresentationController *)self _interactionController];
    v21 = _interactionController5;
    if (transitionCopy)
    {
      [_interactionController5 finishInteractiveTransition];

      v22 = [UIViewPropertyAnimator alloc];
      v23 = _UISheetTransitionTimingCurve();
      v24 = [(UIViewPropertyAnimator *)v22 initWithDuration:v23 timingParameters:0.0];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __85__UISheetPresentationController__completeInteractiveTransition_duration_timingCurve___block_invoke;
      v31[3] = &unk_1E70F3590;
      v31[4] = self;
      [(UIViewPropertyAnimator *)v24 addAnimations:v31];
      [(UIViewPropertyAnimator *)v24 startAnimation];
    }

    else
    {
      [_interactionController5 cancelInteractiveTransition];
    }
  }

  if (![(UISheetPresentationController *)self _didTearOff])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__UISheetPresentationController__completeInteractiveTransition_duration_timingCurve___block_invoke_2;
    v30[3] = &unk_1E70F3590;
    v30[4] = self;
    v25 = _Block_copy(v30);
    _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
    isDragging = [_sheetInteraction isDragging];

    if (isDragging)
    {
      v25[2](v25);
    }

    else
    {
      _sheetInteraction2 = [(UISheetPresentationController *)self _sheetInteraction];
      v29 = _UISheetTransitionSpringParametersHighSpeed(0);
      [_sheetInteraction2 _animateWithParameters:v29 animations:v25];
    }
  }
}

void __85__UISheetPresentationController__completeInteractiveTransition_duration_timingCurve___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _animationController];
  [v1 runNoninteractiveAnimationsIfPossible];
}

uint64_t __85__UISheetPresentationController__completeInteractiveTransition_duration_timingCurve___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _layoutInfo];
  v3 = [v2 _isPresented];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _layoutInfo];
    [v5 _layout];

    v6 = *(a1 + 32);

    return [v6 _updatePresentedViewFrame];
  }

  else
  {

    return [v4 _updateAnimationController];
  }
}

- (void)_sendDidChangeSelectedDetentIdentifier
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sheetPresentationControllerDidChangeSelectedDetentIdentifier:self];
  }
}

- (BOOL)_shouldDismissByDragging
{
  if (![(UISheetPresentationController *)self _allowsDraggingToDismiss])
  {
    return 0;
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v3PresentedViewController = [presentedViewController presentedViewController];
  v5 = v3PresentedViewController;
  v6 = (!v3PresentedViewController || (*(v3PresentedViewController + 376) & 3u) - 1 >= 2) && [(UIPresentationController *)self _shouldDismiss];

  return v6;
}

- (void)sheetInteraction:(id)interaction didChangeOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  interactionCopy = interaction;
  isDragging = [interactionCopy isDragging];
  indexOfCurrentDetent = [interactionCopy indexOfCurrentDetent];

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  _isInverted = [_layoutInfo _isInverted];
  _activeDetents = [_layoutInfo _activeDetents];
  [_layoutInfo _smallestNonDismissDetentOffset];
  v13 = v12;
  _numberOfActiveNonDismissDetents = [_layoutInfo _numberOfActiveNonDismissDetents];
  _isDragging = [_layoutInfo _isDragging];
  [_layoutInfo _setDragging:isDragging];
  if (!_isDragging || (isDragging & 1) != 0)
  {
    goto LABEL_23;
  }

  [_layoutInfo _setLatestUserChosenOffset:y];
  if (indexOfCurrentDetent == _numberOfActiveNonDismissDetents)
  {
    if ([(UISheetPresentationController *)self _isHosting])
    {
      _isDismissible = [_layoutInfo _isDismissible];
    }

    else
    {
      _isDismissible = [(UISheetPresentationController *)self _shouldDismissByDragging];
    }

    v16 = indexOfCurrentDetent;
    if ((_isDismissible & 1) == 0)
    {
      v16 = indexOfCurrentDetent - 1;
    }
  }

  else
  {
    v16 = indexOfCurrentDetent;
  }

  v18 = [_activeDetents objectAtIndexedSubscript:v16];
  _identifier = [v18 _identifier];

  if (_identifier)
  {
    _layoutInfo2 = [(UISheetPresentationController *)self _layoutInfo];
    _adjustedIndexOfCurrentActiveDetentForContainedFirstResponder = [_layoutInfo2 _adjustedIndexOfCurrentActiveDetentForContainedFirstResponder];

    if (_adjustedIndexOfCurrentActiveDetentForContainedFirstResponder != 0x7FFFFFFFFFFFFFFFLL && _adjustedIndexOfCurrentActiveDetentForContainedFirstResponder != v16)
    {
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      view = [presentedViewController view];
      [view endEditing:1];
    }

    _selectedDetentIdentifier = [_layoutInfo _selectedDetentIdentifier];
    [_layoutInfo _setSelectedDetentIdentifier:_identifier];
    v25 = _selectedDetentIdentifier;
    v26 = _identifier;
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      if (v25)
      {
        v28 = [v25 isEqual:v26];

        if (v28)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      [(UISheetPresentationController *)self _sendDidChangeSelectedDetentIdentifier];
    }

LABEL_21:
  }

LABEL_23:
  if (_isInverted)
  {
    v29 = y < v13;
  }

  else
  {
    v29 = y > v13;
  }

  if (isDragging && ![(UISheetPresentationController *)self _didTearOff])
  {
    _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
    if ([_sheetInteraction isUnconstrainedOffsetBeyondSideOrTopExtentInverted:_isInverted])
    {
      _tearOffActivity = [(UISheetPresentationController *)self _tearOffActivity];
      v30 = _tearOffActivity != 0;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke;
  aBlock[3] = &unk_1E7124C10;
  aBlock[4] = self;
  v62 = _isInverted;
  *&aBlock[5] = x;
  *&aBlock[6] = y;
  *&aBlock[7] = v13;
  v33 = _Block_copy(aBlock);
  if (v30)
  {
    containerView = [(UIPresentationController *)self containerView];
    window = [containerView window];

    v36 = [objc_msgSend(UIApp _touchesEventForWindow:{window), "touchesForWindow:", window}];
    anyObject = [v36 anyObject];

    _tearOffInteraction = [(UISheetPresentationController *)self _tearOffInteraction];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_2;
    v60[3] = &unk_1E70F5AC0;
    v60[4] = self;
    [_tearOffInteraction _immediatelyBeginDragWithTouch:anyObject completion:v60];

    goto LABEL_63;
  }

  v39 = isDragging & v29;
  _didTearOff = [(UISheetPresentationController *)self _didTearOff];
  _isDraggingAndTransitioning = [(UISheetPresentationController *)self _isDraggingAndTransitioning];
  if (_didTearOff)
  {
    if (v39 & 1 | !_isDraggingAndTransitioning)
    {
      goto LABEL_63;
    }

    v42 = _UISheetTransitionDuration();
    containerView2 = _UISheetTransitionTimingCurve();
    selfCopy2 = self;
    v45 = 0;
    goto LABEL_61;
  }

  if (!_isDraggingAndTransitioning && (v39 & 1) != 0 && ![(UISheetPresentationController *)self _didAttemptToStartDismiss])
  {
    if (![(UISheetPresentationController *)self _isHosting])
    {
      [_layoutInfo _setDismissible:{-[UISheetPresentationController _shouldDismissByDragging](self, "_shouldDismissByDragging")}];
    }

    if ([_layoutInfo _isDismissible])
    {
      v33[2](v33);
      [(UISheetPresentationController *)self _startInteractiveTransitionWithProgress:?];
      goto LABEL_63;
    }

    [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:1];
    containerView2 = [(UIPresentationController *)self containerView];
    [containerView2 setNeedsLayout];
LABEL_62:

    goto LABEL_63;
  }

  if (([(UISheetPresentationController *)self _isDraggingAndTransitioning]& v39) == 1)
  {
    v33[2](v33);
    [(UISheetPresentationController *)self _updateInteractiveTransitionWithProgress:?];
    goto LABEL_63;
  }

  if (!(v39 & 1 | ![(UISheetPresentationController *)self _isDraggingAndTransitioning]))
  {
    v48 = indexOfCurrentDetent != _numberOfActiveNonDismissDetents;
    if ([(UIPresentationController *)self presented]|| [(UIPresentationController *)self dismissing])
    {
      v48 = indexOfCurrentDetent == _numberOfActiveNonDismissDetents;
    }

    v42 = _UISheetTransitionDuration();
    containerView2 = _UISheetTransitionTimingCurve();
    selfCopy2 = self;
    v45 = v48;
LABEL_61:
    [(UISheetPresentationController *)selfCopy2 _completeInteractiveTransition:v45 duration:containerView2 timingCurve:v42];
    goto LABEL_62;
  }

  if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
  {
    if (!v29 && (isDragging & 1) != 0)
    {
      [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:0];
    }

    if ((isDragging & 1) == 0 && [(UISheetPresentationController *)self _didAttemptToStartDismiss])
    {
      [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:0];
      v46 = _isInverted ? v13 - y : y - v13;
      if (_isInverted)
      {
        [_layoutInfo _rubberBandExtentBeyondMinimumOffset];
      }

      else
      {
        [_layoutInfo _rubberBandExtentBeyondMaximumOffset];
      }

      if (v46 > v47 * 0.25)
      {
        objc_initWeak(&location, self);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_3;
        block[3] = &unk_1E70F5A28;
        objc_copyWeak(&v58, &location);
        dispatch_async(MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v58);
        objc_destroyWeak(&location);
      }
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v53 = __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_4;
    v54 = &unk_1E70F35B8;
    v49 = _layoutInfo;
    v55 = v49;
    selfCopy3 = self;
    _didExpand = [(UISheetPresentationController *)self _didExpand];
    if (_didExpand == [v49 _isExpanded] || (-[UISheetPresentationController _setDidExpand:](self, "_setDidExpand:", objc_msgSend(v49, "_isExpanded")), +[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")))
    {
      v53(v52);
    }

    else
    {
      _UISheetAnimateWithCompletion(v52, 0);
    }
  }

LABEL_63:
}

double __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 bounds];
  v7 = _UISheetDismissOffset(*(a1 + 64), v3, v4, v5, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  v8 = (*(a1 + 48) - *(a1 + 56)) / (v7 - *(a1 + 56));
  if (([*(a1 + 32) presented] & 1) == 0 && !objc_msgSend(*(a1 + 32), "dismissing"))
  {
    return 1.0 - v8;
  }

  return v8;
}

void __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setDidTearOff:a2];
  v5 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();
  v4 = v5;
  if (v3)
  {
    if (qword_1ED49AC10 != -1)
    {
      dispatch_once(&qword_1ED49AC10, &__block_literal_global_1272_1);
    }

    v4 = v5;
    if ((byte_1ED49AC01 & 1) == 0)
    {
      [v5 _sheetPresentationControllerDidTearOff:*(a1 + 32)];
      v4 = v5;
    }
  }
}

void __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendDidAttemptToDismiss];
}

uint64_t __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _layout];
  v2 = *(a1 + 40);

  return [v2 _updatePresentedViewFrame];
}

- (CGPoint)offsetForInterruptedAnimationInSheetInteraction:(id)interaction
{
  if ([(UISheetPresentationController *)self _isHosting])
  {

    [(UISheetPresentationController *)self _remoteInterruptedOffset];
  }

  else
  {
    presentedView = [(UISheetPresentationController *)self presentedView];
    [presentedView _frameIgnoringLayerTransform];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
    v16 = v8 - v15;
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    _isInverted = [_layoutInfo _isInverted];
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    if (_isInverted)
    {
      MaxY = CGRectGetMaxY(*&v19);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v19);
    }

    v24 = MaxY;

    v4 = v16;
    v5 = v24;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_sheetInteractionDraggingBegan:(id)began withRubberBandCoefficient:(double)coefficient
{
  beganCopy = began;
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    _shouldDismissByDragging = [(UISheetPresentationController *)self _shouldDismissByDragging];
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_layoutInfo _setDismissible:_shouldDismissByDragging];

    _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [(UISheetPresentationController *)self offsetForInterruptedAnimationInSheetInteraction:beganCopy];
    [_clientRemotePresentationDelegate _sheetInteractionDraggingDidBeginWithRubberBandCoefficient:_shouldDismissByDragging dismissible:coefficient interruptedOffset:{v9, v10}];
  }
}

- (void)_sheetInteractionDraggingChanged:(id)changed withTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v9 = translation.y;
  v10 = translation.x;
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    [_clientRemotePresentationDelegate _sheetInteractionDraggingDidChangeWithTranslation:changeCopy velocity:objc_msgSend(_layoutInfo animateChange:"_isDismissible") dismissible:{v10, v9, x, y}];
  }
}

- (void)_sheetInteractionDraggingEnded:(id)ended
{
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    _clientRemotePresentationDelegate = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [_clientRemotePresentationDelegate _sheetInteractionDraggingDidEnd];
  }
}

- (void)_setIsRemote:(BOOL)remote
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [(UISheetPresentationController *)self _setClientRemotePresentationDelegate:presentedViewController];
}

- (void)_setClientRemotePresentationDelegate:(id)delegate
{
  obj = delegate;
  if (obj)
  {
    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    interactions = [dropShadowView interactions];
    v6 = [interactions count];

    if (!v6)
    {
      dropShadowView2 = [(UISheetPresentationController *)self dropShadowView];
      _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
      [dropShadowView2 addInteraction:_sheetInteraction];
    }
  }

  objc_storeWeak(&self->__clientRemotePresentationDelegate, obj);
  [(UISheetPresentationController *)self _registerForKeyboardNotificationsIfNecessary];
}

- (void)_remoteSheetGrabberDidTriggerPrimaryAction
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v9 = v6;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_remoteSheetGrabberDidTriggerPrimaryAction___s_category) + 8);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v5 = v4;
      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

LABEL_9:
    return;
  }

  dropShadowView = [(UISheetPresentationController *)self dropShadowView];
  [(UISheetPresentationController *)self _dropShadowViewGrabberDidTriggerPrimaryAction:?];
}

- (void)_remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  dismissibleCopy = dismissible;
  v18 = *MEMORY[0x1E69E9840];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v14 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v14;
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &_remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient_dismissible_interruptedOffset____s_category) + 8);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v13 = v12;
      v14 = NSStringFromSelector(a2);
      *buf = 138412290;
      v17 = v14;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

LABEL_9:
    return;
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setDismissible:dismissibleCopy];

  [(UISheetPresentationController *)self _setRemoteInterruptedOffset:x, y];
  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingBeganFromSource:self withRubberBandCoefficient:coefficient];
}

- (void)_remoteSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
  v21 = *MEMORY[0x1E69E9840];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v17 = NSStringFromSelector(a2);
      *buf = 138412290;
      v20 = v17;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_remoteSheetInteractionDraggingDidChangeWithTranslation_velocity_animateChange_dismissible____s_category) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v16 = v15;
      v17 = NSStringFromSelector(a2);
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

LABEL_9:
    return;
  }

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _setDismissible:dismissibleCopy];

  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingChangedInSource:self withTranslation:changeCopy velocity:v11 animateChange:{v10, x, y}];
}

- (void)_remoteSheetInteractionDraggingDidEnd
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v9 = v6;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &_remoteSheetInteractionDraggingDidEnd___s_category) + 8);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v5 = v4;
      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%@ may only be called on a _UISheetPresentationController that is hosting.", buf, 0xCu);
    }

LABEL_9:
    return;
  }

  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingEndedInSource:self];
}

- (BOOL)_exteriorPanGestureRecognizerShouldBeginWithEvent:(id)event
{
  v7 = ([v4 type] || (objc_msgSend(v4, "allTouches"), v5 = v4 = event;

  return v7;
}

- (BOOL)_exteriorPanGestureRecognizerShouldInteractWithView:(id)view
{
  viewCopy = view;
  dropShadowView = [(UISheetPresentationController *)self dropShadowView];
  v6 = [viewCopy isDescendantOfView:dropShadowView];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    containerView = [(UIPresentationController *)self containerView];
    v7 = [(UIView *)viewCopy _viewOrderRelativeToView:containerView requireIntersection:0]!= -2;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [recognizer view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
  [_layoutInfo _frameOfPresentedViewInContainerView];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (v9 < CGRectGetMinX(v25))
  {
    goto LABEL_3;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (v9 > CGRectGetMaxX(v26))
  {
    goto LABEL_3;
  }

  _isInverted = [_layoutInfo _isInverted];
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  if (_isInverted)
  {
    if (v11 >= CGRectGetMaxY(*&v20))
    {
      goto LABEL_9;
    }
  }

  else if (v11 <= CGRectGetMinY(*&v20))
  {
LABEL_9:
    view2 = [touchCopy view];
    v17 = [(UISheetPresentationController *)self _exteriorPanGestureRecognizerShouldInteractWithView:view2];

    goto LABEL_4;
  }

LABEL_3:
  v17 = 0;
LABEL_4:

  return v17;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
  LOBYTE(self) = [(UISheetPresentationController *)self _exteriorPanGestureRecognizerShouldInteractWithView:view];

  return self;
}

- (void)_handleExteriorPan:(id)pan
{
  panCopy = pan;
  view = [panCopy view];
  [panCopy locationInView:view];
  v6 = v5;

  state = [panCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 2)
    {
      if (state != 1)
      {
        goto LABEL_38;
      }

      _childPresentationController = [(UIPresentationController *)self _childPresentationController];

      if (_childPresentationController)
      {
        [panCopy setEnabled:0];
        [panCopy setEnabled:1];
        goto LABEL_38;
      }

      _scrollDeviceCategory = [(UIPanGestureRecognizer *)panCopy _scrollDeviceCategory];
      v30 = _UIScrollViewRubberBandCoefficient(_scrollDeviceCategory);
      if ([(UISheetPresentationController *)self _isHosting])
      {
        _connectedRemoteSheet = [(UISheetPresentationController *)self _connectedRemoteSheet];
        v32 = objc_opt_respondsToSelector();

        if ((v32 & 1) == 0)
        {
LABEL_37:
          [(UISheetPresentationController *)self set_exteriorPanStartLocationY:v6];
          goto LABEL_38;
        }

        _connectedRemoteSheet2 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        [_connectedRemoteSheet2 _sheetInteractionDraggingDidBeginWithRubberBandCoefficient:v30];
      }

      else
      {
        _connectedRemoteSheet2 = [(UISheetPresentationController *)self _sheetInteraction];
        [_connectedRemoteSheet2 draggingBeganFromSource:panCopy withRubberBandCoefficient:v30];
      }

      goto LABEL_37;
    }

    _layoutInfo = [(UISheetPresentationController *)self _layoutInfo];
    _isInverted = [_layoutInfo _isInverted];
    v14 = [panCopy _activeEventOfType:10];
    v15 = v14;
    if (v14 && [v14 _scrollType] == 1)
    {
      [(UISheetPresentationController *)self _exteriorPanStartLocationY];
      v17 = v6 - v16;
      if (!_isInverted)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [_layoutInfo _frameOfPresentedViewInContainerView];
      if (!_isInverted)
      {
        MinY = CGRectGetMinY(*&v18);
        [(UISheetPresentationController *)self _exteriorDismissPadding];
        v36 = MinY - v35;
        [(UISheetPresentationController *)self _exteriorPanStartLocationY];
        if (v36 >= v37)
        {
          v37 = v36;
        }

        v17 = v6 - v37;
LABEL_27:
        v26 = panCopy;
        if (v17 > 0.0)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      MaxY = CGRectGetMaxY(*&v18);
      [(UISheetPresentationController *)self _exteriorDismissPadding];
      v24 = MaxY + v23;
      [(UISheetPresentationController *)self _exteriorPanStartLocationY];
      if (v24 < v25)
      {
        v25 = v24;
      }

      v17 = v6 - v25;
    }

    v26 = panCopy;
    if (v17 < 0.0)
    {
LABEL_28:
      [v26 velocityInView:0];
      v27 = v38;
      v28 = 0.0;
LABEL_29:
      if ([(UISheetPresentationController *)self _isHosting])
      {
        _connectedRemoteSheet3 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        v40 = objc_opt_respondsToSelector();

        if ((v40 & 1) == 0)
        {
LABEL_34:

          goto LABEL_38;
        }

        _connectedRemoteSheet4 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        [_connectedRemoteSheet4 _sheetInteractionDraggingDidChangeWithTranslation:0 velocity:v28 animateChange:{v17, v28, v27}];
      }

      else
      {
        _connectedRemoteSheet4 = [(UISheetPresentationController *)self _sheetInteraction];
        [_connectedRemoteSheet4 draggingChangedInSource:panCopy withTranslation:0 velocity:v28 animateChange:{v17, v28, v27}];
      }

      goto LABEL_34;
    }

LABEL_20:
    v28 = *MEMORY[0x1E695EFF8];
    v27 = *(MEMORY[0x1E695EFF8] + 8);
    v17 = v27;
    goto LABEL_29;
  }

  if ([(UISheetPresentationController *)self _isHosting])
  {
    _connectedRemoteSheet5 = [(UISheetPresentationController *)self _connectedRemoteSheet];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_38;
    }

    _connectedRemoteSheet6 = [(UISheetPresentationController *)self _connectedRemoteSheet];
    [_connectedRemoteSheet6 _sheetInteractionDraggingDidEnd];
  }

  else
  {
    _connectedRemoteSheet6 = [(UISheetPresentationController *)self _sheetInteraction];
    [_connectedRemoteSheet6 draggingEndedInSource:panCopy];
  }

LABEL_38:
}

- (void)_hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient
{
  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingBeganFromSource:self withRubberBandCoefficient:coefficient];
}

- (void)_hostSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  y = velocity.y;
  x = velocity.x;
  v7 = translation.y;
  v8 = translation.x;
  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingChangedInSource:self withTranslation:0 velocity:v8 animateChange:{v7, x, y}];
}

- (void)_hostSheetInteractionDraggingDidEnd
{
  _sheetInteraction = [(UISheetPresentationController *)self _sheetInteraction];
  [_sheetInteraction draggingEndedInSource:self];
}

- (void)_setAllowsTearOff:(BOOL)off
{
  if (self->__allowsTearOff != off)
  {
    self->__allowsTearOff = off;
    if (off)
    {
      v5 = [[UIDragInteraction alloc] initWithDelegate:self];
      tearOffInteraction = self->__tearOffInteraction;
      self->__tearOffInteraction = v5;

      [(UIDragInteraction *)self->__tearOffInteraction setEnabled:0];
      dropShadowView = [(UISheetPresentationController *)self dropShadowView];
      [(UIDragInteraction *)dropShadowView addInteraction:self->__tearOffInteraction];
      v7 = dropShadowView;
    }

    else
    {
      dropShadowView2 = [(UISheetPresentationController *)self dropShadowView];
      [dropShadowView2 removeInteraction:self->__tearOffInteraction];

      v7 = self->__tearOffInteraction;
      self->__tearOffInteraction = 0;
    }
  }
}

- (BOOL)sheetInteraction:(id)interaction shouldBeginHorizontalRubberBandingWithGestureRecognizer:(id)recognizer
{
  interactionCopy = interaction;
  recognizerCopy = recognizer;
  [(UISheetPresentationController *)self _setTearOffActivity:0];
  if ([(UISheetPresentationController *)self _allowsTearOff]&& _UISystemShellAllowsSceneRequests() && ([(UIGestureRecognizer *)recognizerCopy _activeTouchesEvent], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    _allActiveTouches = [recognizerCopy _allActiveTouches];
    anyObject = [_allActiveTouches anyObject];

    if (![anyObject _isPointerTouch] || (dropShadowView = self->_dropShadowView, objc_msgSend(anyObject, "view"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(dropShadowView) = objc_msgSend(dropShadowView, "_isGrabber:", v11), v11, dropShadowView))
    {
      view = [interactionCopy view];
      [recognizerCopy locationInView:view];
      v15 = v14;
      v17 = v16;

      [(UISheetPresentationController *)self _setInitialTearOffPoint:v15, v17];
      if (v17 <= 60.0)
      {
        delegate = [(UIPresentationController *)self delegate];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          delegate2 = [(UIPresentationController *)self delegate];
          [delegate2 _sheetPresentationControllerUserActivityForTearOff:self];
        }

        else
        {
          delegate2 = [(UIPresentationController *)self presentedViewController];
          [delegate2 userActivity];
        }
        dropShadowView = ;

        if (dropShadowView || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_MakeAllSheetsTearable, @"MakeAllSheetsTearable") & 1) == 0 && byte_1ED48B5DC && (v22 = objc_alloc(MEMORY[0x1E696B090]), (dropShadowView = [v22 initWithActivityType:*MEMORY[0x1E696AA68]]) != 0))
        {
          [(UISheetPresentationController *)self _setTearOffActivity:dropShadowView];
          _UIInitializeDraggingSystem();

          LOBYTE(dropShadowView) = 1;
        }
      }

      else
      {
        LOBYTE(dropShadowView) = 0;
      }
    }
  }

  else
  {
    LOBYTE(dropShadowView) = 0;
  }

  return dropShadowView;
}

- (BOOL)sheetInteraction:(id)interaction shouldAllowVerticalRubberBandingWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type])
  {
    v6 = 1;
  }

  else
  {
    allTouches = [eventCopy allTouches];
    anyObject = [allTouches anyObject];

    if ([anyObject _isPointerTouch])
    {
      dropShadowView = self->_dropShadowView;
      view = [anyObject view];
      v6 = [(UIDropShadowView *)dropShadowView _isGrabber:view];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)_setSubduingEnabled:(BOOL)enabled
{
  if (self->__subduingEnabled != enabled)
  {
    self->__subduingEnabled = enabled;
    [(UIPresentationController *)self _enableSubduing:?];
  }
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ACA0]);
  _tearOffActivity = [(UISheetPresentationController *)self _tearOffActivity];
  v7 = [v5 initWithObject:_tearOffActivity];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__UISheetPresentationController_dragInteraction_itemsForBeginningSession___block_invoke;
  v16[3] = &unk_1E70F6AD0;
  v16[4] = self;
  [v7 registerDataRepresentationForTypeIdentifier:@"com.apple.uikit.scene" visibility:1 loadHandler:v16];
  v8 = objc_alloc_init(UIDraggingSystemSceneMetadata);
  _tearOffActivity2 = [(UISheetPresentationController *)self _tearOffActivity];
  activityType = [_tearOffActivity2 activityType];
  [(UIDraggingSystemSceneMetadata *)v8 setActivityType:activityType];

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  [v7 setTeamData:v11];

  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_MakeAllSheetsTearable, @"MakeAllSheetsTearable") & 1) == 0 && byte_1ED48B5DC)
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:@"https://apple.com"];
    [v7 registerObject:v12 visibility:0];
  }

  v13 = [[UIDragItem alloc] initWithItemProvider:v7];
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  return v14;
}

id __74__UISheetPresentationController_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _tearOffActivity];
  v5 = [v4 loadDataWithTypeIdentifier:@"com.apple.uikit.scene" forItemProviderCompletionHandler:v3];

  return v5;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v4 = [(UISheetPresentationController *)self dropShadowView:interaction];
  [v4 setAlpha:0.0];
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v6 = objc_opt_new();
  [v6 _setPreviewMode:2];
  [(UIView *)self->_dropShadowView bounds];
  v7 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v6 setVisiblePath:v7];

  v8 = [UIDragPreviewTarget alloc];
  superview = [(UIView *)self->_dropShadowView superview];
  [(UIView *)self->_dropShadowView center];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v14[0] = *MEMORY[0x1E695EFD0];
  v14[1] = v10;
  v14[2] = *(MEMORY[0x1E695EFD0] + 32);
  v11 = [(UIPreviewTarget *)v8 initWithContainer:superview center:v14 transform:?];

  v12 = [[UITargetedDragPreview alloc] initWithView:self->_dropShadowView parameters:v6 target:v11];
  [(UISheetPresentationController *)self _initialTearOffPoint];
  [(UITargetedDragPreview *)v12 setLiftAnchorPoint:?];

  return v12;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  if ((operation & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [(UIPresentationController *)self presentingViewController:interaction];
    presentedViewController = [v6 presentedViewController];
    presentedViewController2 = [(UIPresentationController *)self presentedViewController];

    if (presentedViewController == presentedViewController2)
    {
      presentingViewController = [(UIPresentationController *)self presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }

    delegate = [(UIPresentationController *)self delegate];
    v10 = objc_opt_respondsToSelector();
    v11 = delegate;
    if (v10)
    {
      if (qword_1ED49AC10 != -1)
      {
        dispatch_once(&qword_1ED49AC10, &__block_literal_global_1272_1);
      }

      v11 = delegate;
      if (byte_1ED49AC01 == 1)
      {
        [delegate _sheetPresentationControllerDidTearOff:self];
        v11 = delegate;
      }
    }
  }

  else
  {
    [(UISheetPresentationController *)self _updatePresentedViewFrame:interaction];
    dropShadowView = [(UISheetPresentationController *)self dropShadowView];
    [dropShadowView setAlpha:1.0];

    [(UISheetPresentationController *)self _setDidTearOff:0];
  }
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__UISheetPresentationController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v5[3] = &unk_1E70F5DB8;
  v5[4] = self;
  [animator addCompletion:{v5, item}];
}

void __84__UISheetPresentationController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePresentedViewFrame];
  v2 = [*(a1 + 32) dropShadowView];
  [v2 setAlpha:1.0];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  v6 = objc_opt_new();
  [v6 _setPreviewMode:2];
  v7 = [UITargetedDragPreview alloc];
  presentedView = [(UISheetPresentationController *)self presentedView];
  v9 = [UIDragPreviewTarget alloc];
  containerView = [(UIPresentationController *)self containerView];
  [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
  v15 = [(UIPreviewTarget *)v9 initWithContainer:containerView center:v12 + v11 * 0.5, v14 + v13 * 0.5];
  v16 = [(UITargetedDragPreview *)v7 initWithView:presentedView parameters:v6 target:v15];

  return v16;
}

- (CGPoint)_initialTearOffPoint
{
  x = self->__initialTearOffPoint.x;
  y = self->__initialTearOffPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_remoteInterruptedOffset
{
  x = self->__remoteInterruptedOffset.x;
  y = self->__remoteInterruptedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end