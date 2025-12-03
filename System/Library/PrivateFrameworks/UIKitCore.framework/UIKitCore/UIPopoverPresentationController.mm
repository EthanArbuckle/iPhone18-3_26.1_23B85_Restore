@interface UIPopoverPresentationController
+ (BOOL)_forceAttemptsToAvoidKeyboard;
+ (BOOL)_showTargetRectPref;
+ (UIEdgeInsets)_defaultPopoverLayoutMarginsForPopoverControllerStyle:(int64_t)style andContentViewController:(id)controller;
- (BOOL)_attemptDismissalWithCompletion:(id)completion;
- (BOOL)_attemptsToAvoidKeyboard;
- (BOOL)_fallbackShouldDismiss;
- (BOOL)_focusedItemFrameIntersectsSufficientlyWithPresentedView:(id)view;
- (BOOL)_isShimmingPopoverControllerPresentation;
- (BOOL)_isSourceViewSafeForMorphing;
- (BOOL)_shouldAutoDismissOnFocusedItemIntersection;
- (BOOL)_shouldConvertToScene;
- (BOOL)_shouldOccludeDuringPresentation;
- (BOOL)_shouldPopoverContentExtendOverArrowForViewController:(id)controller backgroundViewClass:(Class)class;
- (BOOL)_shouldPresentedViewControllerServeAsBaseForScrollToTop;
- (BOOL)_shouldUseNewPopoverAnimations;
- (BOOL)_usesPreferredTransition;
- (BOOL)isPresentingOrDismissing;
- (BOOL)popoverDimmingViewDidReceiveDismissalInteraction:(id)interaction atLocation:(CGPoint)location;
- (BOOL)popoverDimmingViewShouldAllowInteraction:(id)interaction;
- (CGPoint)_centerPointForScale:(double)scale frame:(CGRect)frame anchor:(CGPoint)anchor;
- (CGPoint)_dismissalInteractionLocation;
- (CGRect)_containingFrame;
- (CGRect)_sourceRectFromSourceView:(id)view;
- (CGRect)_sourceRectInContainerView;
- (CGRect)_sourceRectInContainingScene;
- (CGRect)_sourceRectInCoordinateSpace:(id)space;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)_currentPopoverContentSize;
- (CGSize)_defaultPopoverSize;
- (CGSize)_defaultPopoverSizeOverride;
- (CGSize)_proposedSize;
- (CGSize)popoverContentSize;
- (Class)_defaultChromeViewClass;
- (Class)_popoverLayoutInfoForChromeClass:(Class)class;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (UIEdgeInsets)_containingFrameInsets;
- (UIEdgeInsets)popoverLayoutMargins;
- (UIPopoverArrowDirection)arrowDirection;
- (UIPopoverPresentationController)init;
- (UIPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (UISheetPresentationController)adaptiveSheetPresentationController;
- (UIView)_presentingView;
- (id)_completionBlockForDismissalWhenNotifyingDelegate:(BOOL)delegate;
- (id)_createHostManagerPopoverWithConfiguration:(id)configuration;
- (id)_createVisualStyleForProvider:(id)provider;
- (id)_hostManagerPopoverCloseConfiguration;
- (id)_hostManagerPopoverCreationConfiguration;
- (id)_hostManagerPopoverUpdateConfiguration;
- (id)_initialPresentationViewControllerForViewController:(id)controller;
- (id)_layoutInfoForCurrentKeyboardState;
- (id)_layoutInfoFromLayoutInfo:(id)info forCurrentKeyboardStateAndHostingWindow:(id)window;
- (id)_metrics;
- (id)_popoverHostingWindow;
- (id)_preferredAnimationControllerForDismissal;
- (id)_preferredAnimationControllerForPresentation;
- (id)_presentationView;
- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)controller;
- (int64_t)_defaultPresentationStyleForTraitCollection:(id)collection;
- (unint64_t)_effectivePermittedArrowDirections;
- (void)_autoDismissIfFocusedItemSufficientlyIntersectsPresentedView;
- (void)_cancelDelayedFocusAutoDismiss;
- (void)_clearCachedPopoverContentSize;
- (void)_closeScene;
- (void)_configureRootPresentationControllerForHostWindow:(id)window;
- (void)_configureZoomTransition;
- (void)_convertToSceneFromPresentingViewController:(id)controller;
- (void)_createHostManagerIfNeeded;
- (void)_handlePan:(id)pan;
- (void)_incrementSlideTransitionCount:(BOOL)count;
- (void)_invalidateLayoutInfo;
- (void)_keyboardDidHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_moveAwayFromTheKeyboard:(id)keyboard showing:(BOOL)showing;
- (void)_observeFocusDidUpdateNotification:(id)notification;
- (void)_performHierarchyCheckOnViewController:(id)controller;
- (void)_postludeForDismissal;
- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively;
- (void)_presentedViewControllerUserInterfaceStyleChanged;
- (void)_presentingViewControllerWindowSceneDidUpdateEffectiveGeometry:(id)geometry;
- (void)_realSourceViewDidChangeFromView:(id)view toView:(id)toView;
- (void)_realSourceViewGeometryDidChange;
- (void)_scrollViewDidEndDragging:(id)dragging;
- (void)_scrollViewWillBeginDragging:(id)dragging;
- (void)_sendDelegateWillRepositionToRect;
- (void)_sendFallbackDidDismiss;
- (void)_sendFallbackWillDismiss;
- (void)_setAccessoryView:(id)view;
- (void)_setAllowDismissalTapsToPassThrough:(BOOL)through;
- (void)_setAllowsFocusInPresentingViewController:(BOOL)controller;
- (void)_setArrowOffset:(double)offset;
- (void)_setBackgroundBlurDisabled:(BOOL)disabled;
- (void)_setBackgroundBlurEffectStyle:(int64_t)style;
- (void)_setContentViewController:(id)controller animated:(BOOL)animated;
- (void)_setContentViewController:(id)controller backgroundStyle:(int64_t)style animated:(BOOL)animated;
- (void)_setCornerConfiguration:(id)configuration;
- (void)_setCornerRadius:(double)radius;
- (void)_setGesturesEnabled:(BOOL)enabled;
- (void)_setIgnoresKeyboardNotifications:(BOOL)notifications;
- (void)_setOverrideAllowsHitTestingOnBackgroundViews:(BOOL)views;
- (void)_setPopoverBackgroundStyle:(int64_t)style;
- (void)_setPopoverFrame:(CGRect)frame animated:(BOOL)animated coordinator:(id)coordinator;
- (void)_setPopoverView:(id)view;
- (void)_setPrefersZoomTransitions:(BOOL)transitions;
- (void)_startWatchingForKeyboardNotificationsIfNecessary;
- (void)_startWatchingForScrollViewNotifications;
- (void)_stopWatchingForKeyboardNotifications;
- (void)_stopWatchingForNotifications;
- (void)_stopWatchingForScrollViewNotifications;
- (void)_traitCollectionForGlassContentDidChange;
- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController animated:(BOOL)animated;
- (void)_transitionToDidEnd;
- (void)_transitionToWillBegin;
- (void)_updateHostedPopover;
- (void)_updatePopoverFrame:(CGRect)frame arrowOffset:(double)offset;
- (void)_updateShouldObserveFocusUpdateNotification:(BOOL)notification;
- (void)_updateSourceOverlayViewConstraints;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setArrowBackgroundColor:(id)color;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setPassthroughViews:(NSArray *)passthroughViews;
- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated;
- (void)setPopoverLayoutMargins:(UIEdgeInsets)popoverLayoutMargins;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIPopoverPresentationController

- (id)_metrics
{
  _visualStyle = [(UIPresentationController *)self _visualStyle];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _visualStyle2 = [(UIPresentationController *)self _visualStyle];
    metrics = [_visualStyle2 metrics];
  }

  else
  {
    metrics = +[_UIPopoverPresentationMetrics defaultPopoverMetrics];
  }

  return metrics;
}

- (Class)_defaultChromeViewClass
{
  popoverControllerStyle = self->_popoverControllerStyle;
  if (popoverControllerStyle == 1)
  {
    v5 = objc_opt_class();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (popoverControllerStyle || (v5 = +[_UIPopoverStandardChromeView standardChromeViewClass]) == 0)
  {
LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPopoverPresentationController.m" lineNumber:789 description:@"Failed to determine chrome view class"];

    v5 = 0;
  }

LABEL_4:

  return v5;
}

- (id)_popoverHostingWindow
{
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];

  return window;
}

+ (BOOL)_showTargetRectPref
{
  if (qword_1ED498450 != -1)
  {
    dispatch_once(&qword_1ED498450, &__block_literal_global_130);
  }

  return _MergedGlobals_41;
}

- (BOOL)_attemptsToAvoidKeyboard
{
  if (self->_ignoresKeyboardNotifications)
  {
    return 0;
  }

  if (!self->_popoverControllerStyle || (*&self->_popoverControllerFlags & 0x10) == 0)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _forceAttemptsToAvoidKeyboard];
}

void __54__UIPopoverPresentationController__showTargetRectPref__block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIPopoverControllerPaintsTargetRect"];
  _MergedGlobals_41 = [v0 BOOLValue];
}

- (BOOL)_shouldConvertToScene
{
  [(UIPopoverPresentationController *)self _createHostManagerIfNeeded];
  if (!self->_hostManager)
  {
    return 0;
  }

  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(UIPresentationController *)self delegate];
    v5 = [delegate2 _popoverPresentationControllerShouldConvertToScene:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createHostManagerIfNeeded
{
  if (!self->_hostManager)
  {
    v3 = [UIPopoverPresentationController _platformHostManagerForController:self];
    hostManager = self->_hostManager;
    self->_hostManager = v3;
  }
}

- (id)_layoutInfoForCurrentKeyboardState
{
  window = [(UIView *)self->_popoverView window];
  v4 = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:window];

  return v4;
}

- (void)presentationTransitionWillBegin
{
  v98 = *MEMORY[0x1E69E9840];
  [(UIPopoverPresentationController *)self _createHostManagerIfNeeded];
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate prepareForPopoverPresentation:self];
  }

  self->_presentationState = 1;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  contentViewController = self->_contentViewController;
  self->_contentViewController = presentedViewController;

  barButtonItem = [(UIPresentationController *)self barButtonItem];

  if (barButtonItem)
  {
    barButtonItem2 = [(UIPresentationController *)self barButtonItem];
    buttonGroup = [barButtonItem2 buttonGroup];

    if ([buttonGroup alwaysAvailable])
    {
      barButtonItem3 = [(UIPresentationController *)self barButtonItem];
      _viewForPresenting = [barButtonItem3 _viewForPresenting];

      if (!_viewForPresenting)
      {
        [(UIPopoverPresentationController *)self _setCentersPopoverIfSourceViewNotSet:1];
        [(UIPresentationController *)self setBarButtonItem:0];
      }
    }
  }

  if ([(UIPopoverPresentationController *)self _centersPopoverIfSourceViewNotSet]|| [(UIPopoverPresentationController *)self _bottomAlignsPopoverIfSourceViewNotSet])
  {
    _realSourceView = [(UIPresentationController *)self _realSourceView];

    if (!_realSourceView)
    {
      containerView = [(UIPresentationController *)self containerView];
      [(UIPresentationController *)self setSourceView:containerView];

      self->_deriveSourceRectFromSourceViewBounds = 1;
      if ([(UIPopoverPresentationController *)self _softAssertWhenNoSourceViewOrBarButtonItemSpecified])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v14 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_16;
          }

          presentedViewController2 = [(UIPresentationController *)self presentedViewController];
          presentingViewController = [(UIPresentationController *)self presentingViewController];
          *buf = 138412546;
          v95 = presentedViewController2;
          v96 = 2112;
          v97 = presentingViewController;
          _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Tried to present %@ from %@ as a popover without setting a sourceView or barButtonItem.", buf, 0x16u);
        }

        else
        {
          v13 = *(__UILogGetCategoryCachedImpl("Assert", &presentationTransitionWillBegin___s_category) + 8);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v14 = v13;
          presentedViewController2 = [(UIPresentationController *)self presentedViewController];
          presentingViewController = [(UIPresentationController *)self presentingViewController];
          *buf = 138412546;
          v95 = presentedViewController2;
          v96 = 2112;
          v97 = presentingViewController;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Tried to present %@ from %@ as a popover without setting a sourceView or barButtonItem.", buf, 0x16u);
        }

LABEL_16:
      }
    }
  }

LABEL_17:
  _realSourceView2 = [(UIPresentationController *)self _realSourceView];
  if (!_realSourceView2)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = *MEMORY[0x1E695D920];
    _exceptionStringForNilSourceViewOrBarButtonItem = [(UIPopoverPresentationController *)self _exceptionStringForNilSourceViewOrBarButtonItem];
    v76 = [v73 exceptionWithName:v74 reason:_exceptionStringForNilSourceViewOrBarButtonItem userInfo:0];
    v77 = v76;

    objc_exception_throw(v76);
  }

  barButtonItem4 = [(UIPresentationController *)self barButtonItem];
  view = [barButtonItem4 view];
  if (view)
  {
    v19 = view;
    _ignoreBarButtonItemSiblings = [(UIPopoverPresentationController *)self _ignoreBarButtonItemSiblings];

    if (!_ignoreBarButtonItemSiblings)
    {
      view2 = [barButtonItem4 view];
      superview = [view2 superview];
      subviews = [superview subviews];
      view3 = [barButtonItem4 view];
      v93 = view3;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
      v26 = [subviews arrayByExcludingObjectsInArray:v25];

      if ([v26 count])
      {
        passthroughViews = [(UIPopoverPresentationController *)self passthroughViews];
        v28 = [passthroughViews count];

        if (v28)
        {
          passthroughViews2 = [(UIPopoverPresentationController *)self passthroughViews];
          v30 = [passthroughViews2 mutableCopy];

          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v31 = v26;
          v32 = [v31 countByEnumeratingWithState:&v86 objects:v92 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v87;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v87 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v86 + 1) + 8 * i);
                if (([v30 containsObject:v36] & 1) == 0)
                {
                  [v30 addObject:v36];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v86 objects:v92 count:16];
            }

            while (v33);
          }

          [(UIPopoverPresentationController *)self setPassthroughViews:v30];
        }

        else
        {
          [(UIPopoverPresentationController *)self setPassthroughViews:v26];
        }
      }
    }
  }

  containerView2 = [(UIPresentationController *)self containerView];
  _focusBehavior = [containerView2 _focusBehavior];
  supportsViewTransparency = [_focusBehavior supportsViewTransparency];

  if ((supportsViewTransparency & 1) == 0)
  {
    containerView3 = [(UIPresentationController *)self containerView];
    [containerView3 _setFocusInteractionEnabled:{-[UIPopoverPresentationController _allowsFocusInPresentingViewController](self, "_allowsFocusInPresentingViewController") ^ 1}];
  }

  [(UIPopoverPresentationController *)self _transitionFromViewController:0 toViewController:self->_contentViewController animated:0];
  dimmingView = self->_dimmingView;
  containerView4 = [(UIPresentationController *)self containerView];
  [containerView4 bounds];
  [(UIView *)dimmingView setFrame:?];

  [(UIView *)self->_dimmingView setTintAdjustmentMode:1];
  [(UIView *)self->_dimmingView setAutoresizingMask:18];
  [(UIDimmingView *)self->_dimmingView setDelegate:self];
  v43 = self->_dimmingView;
  containerView5 = [(UIPresentationController *)self containerView];
  [(_UIPopoverDimmingView *)v43 setTransitionContainerView:containerView5];

  [(UIView *)self->_dimmingView setUserInteractionEnabled:1];
  if (dyld_program_sdk_at_least())
  {
    containerView6 = [(UIPresentationController *)self containerView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      containerView7 = [(UIPresentationController *)self containerView];
      [containerView7 setIgnoreDirectTouchEvents:1];
    }
  }

  _popoverHostingWindow = [(UIPopoverPresentationController *)self _popoverHostingWindow];
  if ([_popoverHostingWindow _isTextEffectsWindow])
  {
    *&self->_popoverControllerFlags |= 8u;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIAlertWillAppearNotification" object:self userInfo:0];
  v90 = @"UIPopoverControllerPresentingWindowKey";
  v91 = _popoverHostingWindow;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  [defaultCenter postNotificationName:@"UIPopoverControllerWillPresentPopoverNotification" object:self userInfo:v50];

  if (self->_retainsSelfWhilePresented)
  {
    objc_storeStrong(&self->_retainedSelf, self);
  }

  containerView8 = [(UIPresentationController *)self containerView];
  [containerView8 addSubview:self->_dimmingView];

  _sourceOverlayView = [(UIPopoverPresentationController *)self _sourceOverlayView];

  if (_sourceOverlayView)
  {
    containerView9 = [(UIPresentationController *)self containerView];
    _sourceOverlayView2 = [(UIPopoverPresentationController *)self _sourceOverlayView];
    [containerView9 addSubview:_sourceOverlayView2];

    [(UIPopoverPresentationController *)self _updateSourceOverlayViewConstraints];
  }

  if ([(UIPopoverPresentationController *)self showsTargetRect])
  {
    containerView10 = [(UIPresentationController *)self containerView];
    _targetRectView = [(UIPopoverPresentationController *)self _targetRectView];
    [containerView10 addSubview:_targetRectView];
  }

  popoverBackgroundViewClass = self->_popoverBackgroundViewClass;
  if (!popoverBackgroundViewClass)
  {
    popoverBackgroundViewClass = [(UIPopoverPresentationController *)self _defaultChromeViewClass];
  }

  v58 = objc_alloc_init([(UIPopoverPresentationController *)self _popoverLayoutInfoForChromeClass:popoverBackgroundViewClass]);
  preferredLayoutInfo = self->_preferredLayoutInfo;
  self->_preferredLayoutInfo = v58;

  v60 = self->_preferredLayoutInfo;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __66__UIPopoverPresentationController_presentationTransitionWillBegin__block_invoke;
  v83[3] = &unk_1E7101808;
  v83[4] = self;
  v85 = popoverBackgroundViewClass;
  v61 = _popoverHostingWindow;
  v84 = v61;
  [(_UIPopoverLayoutInfo *)v60 updateProperties:v83];
  v62 = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:v61];
  v63 = v62;
  v64 = *(MEMORY[0x1E695F058] + 16);
  self->_previousContainerViewRect.origin = *MEMORY[0x1E695F058];
  self->_previousContainerViewRect.size = v64;
  if (self->_hostManager)
  {
    _hostManagerPopoverCreationConfiguration = [(UIPopoverPresentationController *)self _hostManagerPopoverCreationConfiguration];
    [(UIPopoverPresentationController *)self _sourceRectInContainerView];
    [_hostManagerPopoverCreationConfiguration setSourceRectInParentUIWindow:?];
    [_hostManagerPopoverCreationConfiguration setCompletionBlock:0];
    objc_opt_class();
    v66 = delegate;
    if (objc_opt_isKindOfClass())
    {
      arrowDirection = [v63 arrowDirection];
    }

    else
    {
      arrowDirection = [(UIPopoverPresentationController *)self _effectivePermittedArrowDirections];
    }

    [_hostManagerPopoverCreationConfiguration setPermittedArrowDirections:arrowDirection];
    v68 = [(UIPopoverPresentationController *)self _createHostManagerPopoverWithConfiguration:_hostManagerPopoverCreationConfiguration];
    popoverIdentifier = self->_popoverIdentifier;
    self->_popoverIdentifier = v68;
  }

  else
  {
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __66__UIPopoverPresentationController_presentationTransitionWillBegin__block_invoke_2;
    v80[3] = &unk_1E7101808;
    v80[4] = self;
    v82 = popoverBackgroundViewClass;
    v81 = v62;
    [UIView performWithoutAnimation:v80];

    v66 = delegate;
  }

  [(UIPopoverPresentationController *)self _transitionFromViewController:0 toViewController:self->_contentViewController animated:0];
  [(UIPopoverPresentationController *)self _startWatchingForKeyboardNotificationsIfNecessary];
  if (![(UIPopoverPresentationController *)self _shouldUseNewPopoverAnimations])
  {
    [(_UIPopoverView *)self->_popoverView setChromeHidden:1];
    presentingViewController2 = [(UIPresentationController *)self presentingViewController];
    _transitionCoordinator = [presentingViewController2 _transitionCoordinator];

    if (_transitionCoordinator)
    {
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __66__UIPopoverPresentationController_presentationTransitionWillBegin__block_invoke_3;
      v79[3] = &unk_1E70F3B98;
      v79[4] = self;
      [_transitionCoordinator animateAlongsideTransition:v79 completion:0];
    }

    else
    {
      [(_UIPopoverView *)self->_popoverView setChromeHidden:0];
    }

    [(UIView *)self->_shadowView setAlpha:1.0];
  }

  layer = [(UIView *)self->_popoverView layer];
  [layer setAllowsGroupOpacity:0];

  [(UIPopoverPresentationController *)self _startWatchingForScrollViewNotifications];
}

void __66__UIPopoverPresentationController_presentationTransitionWillBegin__block_invoke(id *a1)
{
  v2 = *(a1[4] + 62);
  [a1[6] contentViewInsets];
  [v2 setContentInset:?];
  v3 = *(a1[4] + 62);
  [a1[6] arrowHeight];
  [v3 setArrowHeight:?];
  [*(a1[4] + 62) setPreferredContentSize:{*(a1[4] + 64), *(a1[4] + 65)}];
  [*(a1[4] + 62) setPreferredArrowDirections:{objc_msgSend(a1[4], "_effectivePermittedArrowDirections")}];
  v4 = a1[4];
  v5 = v4[62];
  [v4 _containingFrame];
  [v5 setContainingFrame:?];
  v6 = a1[4];
  v7 = v6[62];
  [v6 _containingFrameInsets];
  [v7 setContainingFrameInsets:?];
  v8 = a1[4];
  v9 = v8[62];
  [v8 _sourceRectInContainerView];
  [v9 setSourceViewRect:?];
  v10 = *(a1[4] + 62);
  v11 = [a1[5] windowScene];
  [v10 setPreferLandscapeOrientations:{(objc_msgSend(v11, "_interfaceOrientation") - 3) < 0xFFFFFFFFFFFFFFFELL}];

  [*(a1[4] + 62) setCanOverlapSourceViewRect:*(a1[4] + 569)];
  [*(a1[4] + 62) setPreferredHorizontalAlignment:{objc_msgSend(a1[4], "_preferredHorizontalAlignment")}];
  v12 = [a1[4] containerView];
  [*(a1[4] + 62) setIsRTL:{objc_msgSend(v12, "effectiveUserInterfaceLayoutDirection") == 1}];
}

- (unint64_t)_effectivePermittedArrowDirections
{
  permittedArrowDirections = [(UIPopoverPresentationController *)self permittedArrowDirections];
  _usesPreferredTransition = [(UIPopoverPresentationController *)self _usesPreferredTransition];
  v5 = ([(UIPopoverPresentationController *)self _centersPopoverIfSourceViewNotSet]|| [(UIPopoverPresentationController *)self _bottomAlignsPopoverIfSourceViewNotSet]) && self->_deriveSourceRectFromSourceViewBounds;
  if (_usesPreferredTransition || v5)
  {
    permittedArrowDirections = 0;
  }

  barButtonItem = [(UIPresentationController *)self barButtonItem];
  view = [barButtonItem view];
  if (view)
  {
    v8 = view;
    _ignoreBarButtonItemSiblings = [(UIPopoverPresentationController *)self _ignoreBarButtonItemSiblings];

    if (!_ignoreBarButtonItemSiblings)
    {
      permittedArrowDirections &= 3u;
    }
  }

  return permittedArrowDirections;
}

- (CGRect)_containingFrame
{
  containerView = [(UIPresentationController *)self containerView];
  _window = [containerView _window];
  _fbsScene = [(UIWindow *)_window _fbsScene];

  [containerView safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _ignoredEdgesForSafeArea = [(UIPopoverPresentationController *)self _ignoredEdgesForSafeArea];
  if ((_ignoredEdgesForSafeArea & 8) != 0)
  {
    v13 = 0.0;
  }

  if ((_ignoredEdgesForSafeArea & 4) != 0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  if ((_ignoredEdgesForSafeArea & 2) != 0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  if (_ignoredEdgesForSafeArea)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  [containerView bounds];
  v19 = v16 + v18;
  v21 = v17 + v20;
  v23 = v22 - (v16 + v13);
  v25 = v24 - (v17 + v15);
  if (_fbsScene)
  {
    settings = [_fbsScene settings];
    [settings bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    _window2 = [containerView _window];
    v36 = _UIConvertSceneRectToWindow(_fbsScene, _window2, v28, v30, v32, v34);
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [containerView convertRect:0 fromView:{v36, v38, v40, v42}];
    v54.origin.x = v19;
    v54.origin.y = v21;
    v54.size.width = v23;
    v54.size.height = v25;
    v52 = CGRectIntersection(v51, v54);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    if (!CGRectIsEmpty(v52))
    {
      v25 = height;
      v23 = width;
      v21 = y;
      v19 = x;
    }
  }

  v47 = v19;
  v48 = v21;
  v49 = v23;
  v50 = v25;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (UIEdgeInsets)_containingFrameInsets
{
  [(UIPopoverPresentationController *)self popoverLayoutMargins];
  v6 = v3;
  v8 = v7;
  v9 = v4;
  v10 = v5;
  if (v7 == 0.0 && v3 == 0.0 && v5 == 0.0 && v4 == 0.0)
  {
    [objc_opt_class() _defaultPopoverLayoutMarginsForPopoverControllerStyle:self->_popoverControllerStyle andContentViewController:self->_contentViewController];
    v6 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
    _popoverHostingWindow = [(UIPopoverPresentationController *)self _popoverHostingWindow];
    _isRemoteInputHostWindow = [_popoverHostingWindow _isRemoteInputHostWindow];

    if (_isRemoteInputHostWindow)
    {
      +[UIKeyboardImpl persistentOffset];
      v18 = 0.0;
      if (v17 < 0.0)
      {
        v19 = v17;
        v20 = -v17;
        v21 = +[UIKeyboardImpl isSplit];
        v18 = -100.0 - v19;
        if (!v21)
        {
          v18 = v20;
        }

        if (v18 >= 200.0)
        {
          v18 = 200.0;
        }
      }

      v6 = v6 + v18;
    }
  }

  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (UIEdgeInsets)popoverLayoutMargins
{
  top = self->_popoverLayoutMargins.top;
  left = self->_popoverLayoutMargins.left;
  bottom = self->_popoverLayoutMargins.bottom;
  right = self->_popoverLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_sourceRectInContainerView
{
  containerView = [(UIPresentationController *)self containerView];
  [(UIPopoverPresentationController *)self _sourceRectInCoordinateSpace:containerView];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = CGRectEqualToRect(v18, *MEMORY[0x1E695F058]);
  p_lastSourceRectInContainerView = &self->_lastSourceRectInContainerView;
  if (v12)
  {
    x = p_lastSourceRectInContainerView->origin.x;
    y = self->_lastSourceRectInContainerView.origin.y;
    width = self->_lastSourceRectInContainerView.size.width;
    height = self->_lastSourceRectInContainerView.size.height;
  }

  else
  {
    p_lastSourceRectInContainerView->origin.x = x;
    self->_lastSourceRectInContainerView.origin.y = y;
    self->_lastSourceRectInContainerView.size.width = width;
    self->_lastSourceRectInContainerView.size.height = height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)_defaultPopoverSizeOverride
{
  width = self->__defaultPopoverSizeOverride.width;
  height = self->__defaultPopoverSizeOverride.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_defaultPopoverSize
{
  [(UIPopoverPresentationController *)self _defaultPopoverSizeOverride];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    if (self->_hostManager)
    {
      _metrics = [(UIPopoverPresentationController *)self _metrics];
      [_metrics defaultPreferredSmallContentSize];
      v10 = v9;
      v12 = v11;
    }

    else
    {
      _metrics = [(UIPresentationController *)self _currentPresentationSuperview];
      [_metrics bounds];
      v14 = v13;
      _metrics2 = [(UIPopoverPresentationController *)self _metrics];
      v16 = _metrics2;
      if (v14 < 1024.0)
      {
        [_metrics2 defaultPreferredSmallContentSize];
      }

      else
      {
        [_metrics2 defaultPreferredLargeContentSize];
      }

      v10 = v17;
      v12 = v18;
    }

    v6 = v10;
    v7 = v12;
  }

  else
  {

    [(UIPopoverPresentationController *)self _defaultPopoverSizeOverride];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)_usesPreferredTransition
{
  if (self->_zoomTransition)
  {
    return 1;
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  preferredTransition = [presentedViewController preferredTransition];
  v2 = preferredTransition != 0;

  return v2;
}

- (void)_configureZoomTransition
{
  if ([(UIPopoverPresentationController *)self _prefersZoomTransitions]&& ![(UIPresentationController *)self state])
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __59__UIPopoverPresentationController__configureZoomTransition__block_invoke;
    v10 = &unk_1E7101740;
    objc_copyWeak(&v11, &location);
    v5 = [UIViewControllerTransition zoomWithOptions:0 sourceViewProvider:&v7];
    zoomTransition = self->_zoomTransition;
    self->_zoomTransition = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    v4 = 1;
  }

  else
  {
    v3 = self->_zoomTransition;
    self->_zoomTransition = 0;

    v4 = 0;
  }

  [(UIPopoverPresentationController *)self setCanOverlapSourceViewRect:v4, v7, v8, v9, v10];
  [(UIPopoverPresentationController *)self _setShouldHideArrow:v4];
}

- (void)_stopWatchingForKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
}

void __66__UIPopoverPresentationController_presentationTransitionWillBegin__block_invoke_2(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _popoverViewClass];
  v3 = *(a1 + 32);
  v4 = [v3 presentedViewController];
  v5 = [v3 _shouldPopoverContentExtendOverArrowForViewController:v4 backgroundViewClass:*(a1 + 48)];

  v6 = [*(a1 + 32) _usesPreferredTransition];
  v7 = *(a1 + 32);
  v8 = [v2 alloc];
  [*(a1 + 40) frame];
  v9 = [v8 initWithFrame:*(a1 + 48) backgroundViewClass:0 embeddedInView:v5 contentExtendsOverArrow:v6 useZoomTransition:*(a1 + 32) presentationController:?];
  [v7 _setPopoverView:v9];

  v10 = [*(*(a1 + 32) + 392) backgroundView];
  [v10 _setChromeHidden:{objc_msgSend(*(a1 + 32), "_backgroundBlurDisabled")}];

  [*(*(a1 + 32) + 392) setBackgroundBlurEffectStyle:{objc_msgSend(*(a1 + 32), "_backgroundBlurEffectStyle")}];
  if (([*(a1 + 32) _usesPreferredTransition] & 1) == 0)
  {
    [*(*(a1 + 32) + 392) setShadowView:*(*(a1 + 32) + 408)];
  }

  v11 = [*(a1 + 32) presentedViewController];
  v12 = *(*(a1 + 32) + 392);
  v13 = [v11 traitCollection];
  [v12 setOverrideUserInterfaceStyle:{objc_msgSend(v13, "userInterfaceStyle")}];

  v25[0] = 0x1EFE323B0;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v15 = [v11 _registerForTraitTokenChanges:v14 withTarget:*(a1 + 32) action:sel__presentedViewControllerUserInterfaceStyleChanged];

  v16 = *(*(a1 + 32) + 392);
  [*(a1 + 40) offset];
  [v16 setArrowOffset:?];
  v17 = *(a1 + 32);
  v18 = v17[49];
  if ([v17 _shouldHideArrow])
  {
    v19 = 0;
  }

  else
  {
    v19 = [*(a1 + 40) arrowDirection];
  }

  [v18 setArrowDirection:v19];
  v20 = *(a1 + 32);
  v21 = v20[49];
  v22 = [v20 _cornerConfiguration];
  [v21 setCornerConfiguration:v22];

  [*(a1 + 32) _setPopoverBackgroundStyle:*(*(a1 + 32) + 472)];
  v23 = [*(a1 + 32) backgroundEffect];
  v24 = *(a1 + 32);
  if (v23)
  {
    [*(v24 + 392) setBackgroundEffect:v23];
    [*(*(a1 + 32) + 392) setPopoverBackgroundColor:0];
  }

  else
  {
    [*(v24 + 392) setPopoverBackgroundColor:*(v24 + 480)];
    [*(*(a1 + 32) + 392) setBackgroundEffect:0];
  }

  [*(*(a1 + 32) + 392) setArrowBackgroundColor:*(*(a1 + 32) + 488)];
}

- (void)_startWatchingForKeyboardNotificationsIfNecessary
{
  if ([(UIPopoverPresentationController *)self _attemptsToAvoidKeyboard])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardWillShowNotification" object:0];
    [defaultCenter addObserver:self selector:sel__keyboardDidHide_ name:@"UIKeyboardDidHideNotification" object:0];
  }
}

- (BOOL)_shouldUseNewPopoverAnimations
{
  if ([(UIPopoverPresentationController *)self popoverBackgroundViewClass])
  {
    popoverBackgroundViewClass = [(UIPopoverPresentationController *)self popoverBackgroundViewClass];
    v4 = popoverBackgroundViewClass == +[_UIPopoverStandardChromeView standardChromeViewClass];
  }

  else
  {
    v4 = 1;
  }

  if ([(UIPopoverPresentationController *)self _shouldHideArrow]|| ![(UIPopoverPresentationController *)self arrowDirection])
  {
    v6 = 0;
  }

  else if ([(UIPopoverPresentationController *)self _centersPopoverIfSourceViewNotSet])
  {
    _realSourceView = [(UIPresentationController *)self _realSourceView];
    v6 = _realSourceView != 0;
  }

  else
  {
    v6 = 1;
  }

  _bottomAlignsPopoverIfSourceViewNotSet = [(UIPopoverPresentationController *)self _centersPopoverIfSourceViewNotSet]|| [(UIPopoverPresentationController *)self _bottomAlignsPopoverIfSourceViewNotSet];
  return ((v6 || _bottomAlignsPopoverIfSourceViewNotSet) && v4) & (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UseNewPopoverAnimations, @"UseNewPopoverAnimations", _UIInternalPreferenceUpdateBool) | (byte_1EA95E254 != 0)) & 1;
}

- (void)_startWatchingForScrollViewNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__scrollViewWillBeginDragging_ name:@"_UIScrollViewWillBeginDraggingNotification" object:0];
  [defaultCenter addObserver:self selector:sel__scrollViewDidEndDragging_ name:@"_UIScrollViewDidEndDraggingNotification" object:0];
}

- (BOOL)_shouldOccludeDuringPresentation
{
  _shouldDimPresentingViewTint = [(UIPopoverPresentationController *)self _shouldDimPresentingViewTint];
  if (_shouldDimPresentingViewTint)
  {
    hostManager = self->_hostManager;
    if (hostManager)
    {
      popoverIdentifier = self->_popoverIdentifier;

      LOBYTE(_shouldDimPresentingViewTint) = [(_UIPopoverHostManager *)hostManager shouldOccludeDuringPresentationForPopoverWithIdentifier:popoverIdentifier];
    }

    else
    {
      LOBYTE(_shouldDimPresentingViewTint) = 1;
    }
  }

  return _shouldDimPresentingViewTint;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  [(UIView *)self->_popoverView _frameIgnoringLayerTransform];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  [(_UIPopoverView *)self->_popoverView safeAreaInsetsForContentView];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  if ((*&self->_popoverControllerFlags & 0x40) == 0)
  {
    _realSourceView = [(UIPresentationController *)self _realSourceView];
    if (os_variant_has_internal_diagnostics())
    {
      if (!_realSourceView)
      {
        v50 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "Assuming sourceView is not nil", buf, 2u);
        }
      }
    }

    else if (!_realSourceView)
    {
      v51 = *(__UILogGetCategoryCachedImpl("Assert", &containerViewWillLayoutSubviews___s_category) + 8);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "Assuming sourceView is not nil", buf, 2u);
      }
    }

    if (self->_deriveSourceRectFromSourceViewBounds)
    {
      [(UIPopoverPresentationController *)self _sourceRectFromSourceView:_realSourceView];
      [(UIPresentationController *)self setSourceRect:?];
    }

    [(UIPopoverPresentationController *)self _sourceRectInContainerView];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if ([(UIPopoverPresentationController *)self showsTargetRect])
    {
      _targetRectView = [(UIPopoverPresentationController *)self _targetRectView];
      [_targetRectView setFrame:{v5, v7, v9, v11}];
    }

    [(UIPopoverPresentationController *)self _containingFrame];
    v58.origin.x = v13;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v52 = v13;
    v58.origin.y = v14;
    v58.size.width = v16;
    v58.size.height = v18;
    v20 = CGRectEqualToRect(self->_previousContainerViewRect, v58);
    if (!v20)
    {
      [(UIPopoverPresentationController *)self _sendDelegateWillRepositionToRect];
    }

    preferredLayoutInfo = self->_preferredLayoutInfo;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __66__UIPopoverPresentationController_containerViewWillLayoutSubviews__block_invoke;
    v55[3] = &unk_1E7101858;
    v55[4] = self;
    *&v55[5] = v52;
    *&v55[6] = v15;
    *&v55[7] = v17;
    *&v55[8] = v19;
    *&v55[9] = v5;
    *&v55[10] = v7;
    *&v55[11] = v9;
    *&v55[12] = v11;
    v56 = v20;
    [(_UIPopoverLayoutInfo *)preferredLayoutInfo updateProperties:v55, *&v52];
    _layoutInfoForCurrentKeyboardState = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];
    v23 = _layoutInfoForCurrentKeyboardState;
    if (v20)
    {
      [_layoutInfoForCurrentKeyboardState frame];
      if (v24 >= 100.0 && ([v23 frame], v25 >= 100.0))
      {
        arrowDirection = [v23 arrowDirection];
        v28 = arrowDirection != [(UIPopoverPresentationController *)self arrowDirection];
      }

      else
      {
        v26 = self->_preferredLayoutInfo;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __66__UIPopoverPresentationController_containerViewWillLayoutSubviews__block_invoke_2;
        v54[3] = &unk_1E70F3590;
        v54[4] = self;
        [(_UIPopoverLayoutInfo *)v26 updateProperties:v54];
        _layoutInfoForCurrentKeyboardState2 = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];

        v28 = 1;
        v23 = _layoutInfoForCurrentKeyboardState2;
      }
    }

    else
    {
      -[_UIPopoverLayoutInfo setPreferredArrowDirections:](self->_preferredLayoutInfo, "setPreferredArrowDirections:", [_layoutInfoForCurrentKeyboardState arrowDirection]);
      v28 = 1;
    }

    [v23 frame];
    if (self->_hostManager)
    {
      [(UIPopoverPresentationController *)self _updateHostedPopover];
      if (!v28)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      [v23 offset];
      [(UIPopoverPresentationController *)self _updatePopoverFrame:v33 arrowOffset:v34, v35, v36, v37];
      if (!v28)
      {
LABEL_25:

        return;
      }
    }

    popoverView = self->_popoverView;
    if ([(UIPopoverPresentationController *)self _shouldHideArrow])
    {
      arrowDirection2 = 0;
    }

    else
    {
      arrowDirection2 = [v23 arrowDirection];
    }

    [(_UIPopoverView *)popoverView setArrowDirection:arrowDirection2];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [presentedViewController _updateContentOverlayInsetsFromParentIfNecessary];

    v41 = self->_popoverView;
    [(_UIPopoverView *)v41 safeAreaInsetsForContentView];
    [(UIView *)v41 _setSafeAreaInsets:v42 updateSubviewsDuringNextLayoutPass:v43, v44, v45];
    if (!self->_popoverBackgroundViewClass)
    {
      [(UIPopoverPresentationController *)self _defaultChromeViewClass];
    }

    v46 = self->_popoverView;
    _cornerConfiguration = [(UIPopoverPresentationController *)self _cornerConfiguration];
    [(UIView *)v46 setCornerConfiguration:_cornerConfiguration];

    v48 = self->_popoverView;
    [v23 offset];
    [(_UIPopoverView *)v48 setArrowOffset:?];
    self->_previousContainerViewRect.origin.x = v53;
    self->_previousContainerViewRect.origin.y = v15;
    self->_previousContainerViewRect.size.width = v17;
    self->_previousContainerViewRect.size.height = v19;
    [(UIView *)self->_popoverView setNeedsLayout];
    goto LABEL_25;
  }
}

- (void)_sendDelegateWillRepositionToRect
{
  delegate = [(UIPresentationController *)self delegate];
  if ((*&self->_popoverControllerFlags & 0x80) != 0)
  {
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPopoverPresentationController.m" lineNumber:2402 description:@"Trying to layout popover in the delegate callback popoverPresentationController:willRepositionPopoverToRect:inView: will lead to recursion. Do not force the popover's container view or an ancestor to layout in this callback."];
  }

  if (objc_opt_respondsToSelector())
  {
    barButtonItem = [(UIPresentationController *)self barButtonItem];

    if (!barButtonItem)
    {
      sourceView = [(UIPresentationController *)self sourceView];
      [(UIPresentationController *)self sourceRect];
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      *&self->_popoverControllerFlags |= 0x80u;
      v14 = sourceView;
      [delegate popoverPresentationController:self willRepositionPopoverToRect:&v15 inView:&v14];
      v12 = v14;

      *&self->_popoverControllerFlags &= ~0x80u;
      [(UIPresentationController *)self setSourceView:v12];
      [(UIPresentationController *)self setSourceRect:v15, v16, v17, v18];
      preferredLayoutInfo = self->_preferredLayoutInfo;
      [(UIPopoverPresentationController *)self _sourceRectInContainerView];
      [(_UIPopoverLayoutInfo *)preferredLayoutInfo setSourceViewRect:?];
    }
  }

LABEL_7:
}

uint64_t __66__UIPopoverPresentationController_containerViewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setContainingFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  result = [*(*(a1 + 32) + 496) setSourceViewRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  if ((*(a1 + 104) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = v3[62];
    v5 = [v3 _effectivePermittedArrowDirections];

    return [v4 setPreferredArrowDirections:v5];
  }

  return result;
}

- (void)_configureRootPresentationControllerForHostWindow:(id)window
{
  _rootPresentationController = [window _rootPresentationController];
  [_rootPresentationController set_shouldDisableAppearanceCallbacksForPresentedViewController:1];
}

- (BOOL)_isSourceViewSafeForMorphing
{
  _realSourceView = [(UIPresentationController *)self _realSourceView];
  if (_realSourceView)
  {
    containerView = [(UIPresentationController *)self containerView];
    v5 = _realSourceView != containerView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (UIEdgeInsets)_defaultPopoverLayoutMarginsForPopoverControllerStyle:(int64_t)style andContentViewController:(id)controller
{
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom || (v8 = 10.0, v9 = 10.0, v10 = 10.0, v11 = 10.0, (_UISolariumEnabled() & 1) == 0))
  {
    v9 = 0.0;
    if (style == 1)
    {
      view = [controllerCopy view];
      [view bounds];
      v8 = -CGRectGetWidth(v19);

      view2 = [controllerCopy view];
      _shouldReverseLayoutDirection = [view2 _shouldReverseLayoutDirection];

      if (_shouldReverseLayoutDirection)
      {
        v10 = -1.0;
      }

      else
      {
        v10 = v8;
      }

      if (!_shouldReverseLayoutDirection)
      {
        v8 = -1.0;
      }

      v11 = 0.0;
    }

    else
    {
      if (style)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = 19.0;
      }

      if (style)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 19.0;
      }

      if (style)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 30.0;
      }

      if (!style)
      {
        v9 = 10.0;
      }
    }
  }

  v15 = v11;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIPopoverPresentationController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"-[UIPopoverPresentationController init] is not a valid initializer. You must call -[UIPopoverPresentationController initWithPresentedViewController:presentingViewController:]."];

  return 0;
}

- (UIPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v31.receiver = self;
  v31.super_class = UIPopoverPresentationController;
  v4 = [(UIPresentationController *)&v31 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    v4->_adaptivityEnabled = 1;
    v4->_popoverControllerStyle = 0;
    v4->_currentArrowDirection = -1;
    v4->_permittedArrowDirections = 15;
    v4->_presentationState = 4;
    v4->_retainsSelfWhilePresented = 0;
    v6 = [_UIPopoverDimmingView alloc];
    v7 = [(UIDimmingView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    dimmingView = v5->_dimmingView;
    v5->_dimmingView = v7;

    v5->_canOverlapSourceViewRect = 0;
    v5->__prefersZoomTransitions = 1;
    [(UIPopoverPresentationController *)v5 _setCornerRadius:-1.0];
    v5->_shouldDisableInteractionDuringTransitions = dyld_program_sdk_at_least() ^ 1;
    if (dyld_program_sdk_at_least())
    {
      v30.receiver = v5;
      v30.super_class = UIPopoverPresentationController;
      v5->_shouldPreserveFirstResponder = [(UIPresentationController *)&v30 _shouldPreserveFirstResponder];
    }

    else
    {
      v5->_shouldPreserveFirstResponder = 0;
    }

    popoverBackgroundViewClass = v5->_popoverBackgroundViewClass;
    if (!popoverBackgroundViewClass)
    {
      popoverBackgroundViewClass = [(UIPopoverPresentationController *)v5 _defaultChromeViewClass];
    }

    _popoverHostingWindow = [(UIPopoverPresentationController *)v5 _popoverHostingWindow];
    v11 = [(UIPopoverPresentationController *)v5 _layoutInfoForCurrentKeyboardStateAndHostingWindow:_popoverHostingWindow];
    -[objc_class _contentViewCornerRadiusForArrowDirection:](popoverBackgroundViewClass, "_contentViewCornerRadiusForArrowDirection:", [v11 arrowDirection]);
    v13 = [[_UIRoundedRectShadowView alloc] initWithCornerRadius:v12];
    shadowView = v5->_shadowView;
    v5->_shadowView = v13;

    [(UIView *)v5->_shadowView setUserInteractionEnabled:0];
    if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UseAutoLayoutToPositionPopover, @"UseAutoLayoutToPositionPopover", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48AB4C && dyld_program_sdk_at_least())
    {
      v15 = objc_alloc_init(UIView);
      sourceOverlayView = v5->_sourceOverlayView;
      v5->_sourceOverlayView = v15;

      [(UIView *)v5->_sourceOverlayView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v5->_sourceOverlayView setUserInteractionEnabled:0];
    }

    if (dyld_program_sdk_at_least())
    {
      [(UIPresentationController *)v5 setSourceRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }

    _internalTraitOverrides = [(UIPresentationController *)v5 _internalTraitOverrides];
    [_internalTraitOverrides setHorizontalSizeClass:1];

    _internalTraitOverrides2 = [(UIPresentationController *)v5 _internalTraitOverrides];
    [_internalTraitOverrides2 _setNSIntegerValue:3 forTraitToken:0x1EFE32578];

    _showTargetRectPref = [objc_opt_class() _showTargetRectPref];
    v5->_showsTargetRect = _showTargetRectPref;
    if (_showTargetRectPref)
    {
      v20 = +[UIColor redColor];
      v21 = [v20 colorWithAlphaComponent:0.2];
      [(UIView *)v5->_sourceOverlayView setBackgroundColor:v21];

      [(UIView *)v5->_sourceOverlayView _setContinuousCornerRadius:4.0];
      v22 = objc_alloc_init(UIView);
      targetRectView = v5->_targetRectView;
      v5->_targetRectView = v22;

      [(UIView *)v5->_targetRectView setUserInteractionEnabled:0];
      v24 = +[UIColor redColor];
      cGColor = [v24 CGColor];
      layer = [(UIView *)v5->_targetRectView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(UIView *)v5->_targetRectView layer];
      [layer2 setBorderWidth:2.0];

      [(UIView *)v5->_targetRectView _setContinuousCornerRadius:4.0];
    }

    _metrics = [(UIPopoverPresentationController *)v5 _metrics];
    v5->__shouldHideArrow = [_metrics shouldHideArrow];

    v5->__ignoreBarButtonItemSiblings = dyld_program_sdk_at_least();
    v5->__defaultPopoverSizeOverride = *MEMORY[0x1E695F060];
    v5->_backgroundBlurEffectStyle = 1000;
    v5->_shouldDimPresentingViewTint = 1;
    v5->__ignoredEdgesForSafeArea = 0;
    v5->_dismissalInteractionLocation = _UICGPointNull;
  }

  return v5;
}

- (void)dealloc
{
  v10[5] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10[0] = @"UIKeyboardWillShowNotification";
  v10[1] = @"UIKeyboardDidHideNotification";
  v10[2] = @"_UIScrollViewWillBeginDraggingNotification";
  v10[3] = @"_UIScrollViewDidEndDraggingNotification";
  v10[4] = @"UIFocusDidUpdateNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v5 names:?];

  [(_UIPopoverView *)self->_popoverView setPopoverController:0];
  [(UIDimmingView *)self->_dimmingView setDelegate:0];
  view = [(UIGestureRecognizer *)self->_vendedGestureRecognizer view];
  [view removeGestureRecognizer:self->_vendedGestureRecognizer];

  [(UIGestureRecognizer *)self->_vendedGestureRecognizer removeTarget:self action:sel__swipe_];
  view2 = [(UIGestureRecognizer *)self->_dimmingViewGestureRecognizer view];
  [view2 removeGestureRecognizer:self->_dimmingViewGestureRecognizer];

  [(UIGestureRecognizer *)self->_dimmingViewGestureRecognizer removeTarget:self action:sel__swipe_];
  [(UIPopoverPresentationController *)self _cancelDelayedFocusAutoDismiss];
  hostManager = self->_hostManager;
  self->_hostManager = 0;

  objc_autoreleasePoolPop(v3);
  v9.receiver = self;
  v9.super_class = UIPopoverPresentationController;
  [(UIPresentationController *)&v9 dealloc];
}

- (void)_prepareForWindowDeallocRecursively:(BOOL)recursively
{
  v4.receiver = self;
  v4.super_class = UIPopoverPresentationController;
  [(UIPresentationController *)&v4 _prepareForWindowDeallocRecursively:recursively];
  if (self->_hostManager)
  {
    if (objc_opt_respondsToSelector())
    {
      [(_UIPopoverHostManager *)self->_hostManager dismissPopoverWithIdentifier:self->_popoverIdentifier];
    }
  }
}

- (void)_setPopoverFrame:(CGRect)frame animated:(BOOL)animated coordinator:(id)coordinator
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  coordinatorCopy = coordinator;
  v12 = self->_popoverView;
  _layoutInfoForCurrentKeyboardState = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];
  [_layoutInfoForCurrentKeyboardState offset];
  v15 = v14;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke;
  aBlock[3] = &unk_1E7101718;
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  aBlock[4] = self;
  v16 = v12;
  v32 = v16;
  v37 = v15;
  v17 = _Block_copy(aBlock);
  v18 = v17;
  if (animatedCopy)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    _transitionCoordinator = [presentedViewController _transitionCoordinator];

    if (_transitionCoordinator)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke_2;
      v29[3] = &unk_1E7101880;
      v29[4] = self;
      v30 = v18;
      [_transitionCoordinator animateAlongsideTransition:0 completion:v29];
      [coordinatorCopy _runAlongsideAnimations];
      [coordinatorCopy _runAlongsideCompletionsAfterCommit];
      v21 = v30;
    }

    else
    {
      [(UIPopoverPresentationController *)self _presentationAnimationDuration];
      v23 = v22;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke_3;
      v26[3] = &unk_1E70F4A50;
      v28 = v18;
      v27 = coordinatorCopy;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke_4;
      v24[3] = &unk_1E70F5AC0;
      v25 = v27;
      [UIView animateWithSpringDuration:132 bounce:v26 initialSpringVelocity:v24 delay:v23 options:0.0 animations:0.0 completion:0.0];

      v21 = v28;
    }
  }

  else
  {
    (*(v17 + 2))(v17);
    [coordinatorCopy _runAlongsideAnimations];
    [coordinatorCopy _runAlongsideCompletionsAfterCommit];
  }
}

uint64_t __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke(double *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v5 = a1[8];
  v4 = a1[9];
  v6 = *(a1 + 4);
  if ((*(v6 + 688) & 0x10) != 0)
  {
    v7 = *(v6 + 416);
    if (v7)
    {
      v8 = [*(v6 + 392) superview];
      [v7 convertRect:v8 toView:{v3, v2, v5, v4}];
      v3 = v9;
      v2 = v10;
      v5 = v11;
      v4 = v12;
    }
  }

  v13 = *(a1 + 5);
  v14 = a1[10];

  return [v13 _setFrame:v3 arrowOffset:{v2, v5, v4, v14}];
}

uint64_t __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _presentationAnimationDuration];
  v2 = *(a1 + 40);

  return [UIView animateWithSpringDuration:"animateWithSpringDuration:bounce:initialSpringVelocity:delay:options:animations:completion:" bounce:132 initialSpringVelocity:v2 delay:0 options:? animations:? completion:?];
}

uint64_t __73__UIPopoverPresentationController__setPopoverFrame_animated_coordinator___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _runAlongsideAnimations];
}

- (CGSize)popoverContentSize
{
  width = self->_popoverContentSize.width;
  height = self->_popoverContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_clearCachedPopoverContentSize
{
  if (self->_popoverContentSize.width != *MEMORY[0x1E695F060] || self->_popoverContentSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    [(UIPopoverPresentationController *)self setPopoverContentSize:0 animated:?];
  }
}

id __59__UIPopoverPresentationController__configureZoomTransition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _realSourceView];

  return v2;
}

- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated
{
  if (!self->_popoverControllerStyle)
  {
    animatedCopy = animated;
    height = size.height;
    width = size.width;
    self->_popoverContentSize = size;
    v8 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
    [v8 setPreferredContentSize:{width, height}];
    if ((*&self->_popoverControllerFlags & 0x10) != 0 && self->_layoutConstraintView)
    {
      superview = [(UIView *)self->_popoverView superview];
      [superview convertRect:self->_layoutConstraintView toView:{self->_targetRectInEmbeddingView.origin.x, self->_targetRectInEmbeddingView.origin.y, self->_targetRectInEmbeddingView.size.width, self->_targetRectInEmbeddingView.size.height}];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v8 setSourceViewRect:{v11, v13, v15, v17}];
    }

    backgroundView = [(_UIPopoverView *)self->_popoverView backgroundView];
    v19 = backgroundView;
    if (backgroundView)
    {
      [backgroundView _contentViewInsets];
      [v8 setContentInset:?];
    }

    [(UIPopoverPresentationController *)self setPreferredLayoutInfo:v8];
    if ([(UIPopoverPresentationController *)self isPopoverVisible]|| [(UIPopoverPresentationController *)self _isPresenting])
    {
      _layoutInfoForCurrentKeyboardState = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];
      [_layoutInfoForCurrentKeyboardState frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [(UIView *)self->_popoverView frame];
      v42.origin.x = v29;
      v42.origin.y = v30;
      v42.size.width = v31;
      v42.size.height = v32;
      v41.origin.x = v22;
      v41.origin.y = v24;
      v41.size.width = v26;
      v41.size.height = v28;
      if (!CGRectEqualToRect(v41, v42))
      {
        if (animatedCopy)
        {
          v33 = ![(UIPopoverPresentationController *)self _isPresenting];
        }

        else
        {
          v33 = 0;
        }

        v39[0] = 0;
        v39[1] = v39;
        v39[2] = 0x3032000000;
        v39[3] = __Block_byref_object_copy__50;
        v39[4] = __Block_byref_object_dispose__50;
        selfCopy = self;
        v40 = selfCopy;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __66__UIPopoverPresentationController_setPopoverContentSize_animated___block_invoke;
        v37[3] = &unk_1E7101768;
        v37[4] = v39;
        *&v37[5] = v22;
        *&v37[6] = v24;
        *&v37[7] = v26;
        *&v37[8] = v28;
        v38 = v33;
        v35 = _Block_copy(v37);
        v36 = v35;
        if (v33)
        {
          [(UIView *)self->_popoverView layoutBelowIfNeeded];
          [(UIPopoverPresentationController *)selfCopy _presentationAnimationDuration];
          [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v36 animations:0 completion:?];
        }

        else
        {
          (*(v35 + 2))(v35);
        }

        _Block_object_dispose(v39, 8);
      }
    }
  }
}

- (UIPopoverArrowDirection)arrowDirection
{
  popoverView = self->_popoverView;
  if (popoverView)
  {

    return [(_UIPopoverView *)popoverView arrowDirection];
  }

  else if (self->_popoverIdentifier && self->_hostManager && (objc_opt_respondsToSelector() & 1) != 0)
  {
    hostManager = self->_hostManager;
    popoverIdentifier = self->_popoverIdentifier;

    return [(_UIPopoverHostManager *)hostManager arrowDirectionForPopoverWithIdentifier:popoverIdentifier];
  }

  else
  {
    return -1;
  }
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v5 = backgroundColor;
  if (self->_backgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundColor, backgroundColor);
    [(_UIPopoverView *)self->_popoverView setPopoverBackgroundColor:v6];
    v5 = v6;
  }
}

- (void)_setBackgroundBlurDisabled:(BOOL)disabled
{
  if (self->_backgroundBlurDisabled != disabled)
  {
    self->_backgroundBlurDisabled = disabled;
    backgroundView = [(_UIPopoverView *)self->_popoverView backgroundView];
    [backgroundView _setChromeHidden:self->_backgroundBlurDisabled];
  }
}

- (void)_setBackgroundBlurEffectStyle:(int64_t)style
{
  if (self->_backgroundBlurEffectStyle != style)
  {
    self->_backgroundBlurEffectStyle = style;
    [(_UIPopoverView *)self->_popoverView setBackgroundBlurEffectStyle:?];
  }
}

- (void)setPassthroughViews:(NSArray *)passthroughViews
{
  [(UIDimmingView *)self->_dimmingView setPassthroughViews:passthroughViews];
  if (objc_opt_respondsToSelector())
  {
    hostManager = self->_hostManager;
    popoverIdentifier = self->_popoverIdentifier;

    [(_UIPopoverHostManager *)hostManager passthroughViewsDidChangeForPopoverWithIdentifier:popoverIdentifier];
  }
}

- (Class)_popoverLayoutInfoForChromeClass:(Class)class
{
  objc_opt_class();
  v3 = objc_opt_class();

  return v3;
}

- (void)_incrementSlideTransitionCount:(BOOL)count
{
  if (count)
  {
    v4 = 1;
  }

  else
  {
    if (!self->_slideTransitionCount)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIPopoverPresentationController.m" lineNumber:806 description:@"About to overflow slide transition count"];
    }

    v4 = -1;
  }

  self->_slideTransitionCount += v4;
}

- (void)_invalidateLayoutInfo
{
  preferredLayoutInfo = self->_preferredLayoutInfo;
  self->_preferredLayoutInfo = 0;
}

- (CGPoint)_centerPointForScale:(double)scale frame:(CGRect)frame anchor:(CGPoint)anchor
{
  v5 = round(frame.origin.x + frame.size.width * 0.5 * scale - (scale + -1.0) * anchor.x);
  v6 = frame.size.height * 0.5 * scale + round(frame.origin.y - (scale + -1.0) * anchor.y);
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (BOOL)_isShimmingPopoverControllerPresentation
{
  delegate = [(UIPresentationController *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_setPopoverView:(id)view
{
  viewCopy = view;
  if (self->_popoverView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_popoverView, view);
    viewCopy = v6;
  }
}

- (void)_setArrowOffset:(double)offset
{
  [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setArrowOffset:?];
  popoverView = self->_popoverView;

  [(_UIPopoverView *)popoverView setArrowOffset:offset];
}

- (CGSize)_currentPopoverContentSize
{
  popoverView = self->_popoverView;
  if (popoverView)
  {
    contentView = [(_UIPopoverView *)popoverView contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_transitionFromViewController:(id)controller toViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  view = [viewControllerCopy view];
  p_popoverContentSize = &self->_popoverContentSize;
  if (self->_popoverContentSize.width == *MEMORY[0x1E695F060] && self->_popoverContentSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    [viewControllerCopy _resolvedPreferredContentSize];
    p_popoverContentSize->width = v13;
    self->_popoverContentSize.height = v14;
  }

  popoverView = self->_popoverView;
  if (popoverView)
  {
    v34 = animatedCopy;
    contentView = [(_UIPopoverView *)popoverView contentView];
    view2 = [viewControllerCopy view];
    view3 = [controllerCopy view];
    [contentView bounds];
    [view2 setFrame:?];
    _parentViewController = [(UIViewController *)viewControllerCopy _parentViewController];

    if (_parentViewController)
    {
      _existingView = [viewControllerCopy _existingView];
      window = [_existingView window];

      if (viewControllerCopy)
      {
        v22 = viewControllerCopy[192];
        viewControllerCopy[192] = v22 | 0x100;
        [viewControllerCopy setParentViewController:0];
        viewControllerCopy[192] = viewControllerCopy[192] & 0xFEFF | v22 & 0x100;
      }

      [viewControllerCopy _setNavigationControllerContentInsetAdjustment:{0.0, 0.0, 0.0, 0.0}];
      if (window)
      {
        [viewControllerCopy setPerformingModalTransition:1];
        _existingView2 = [viewControllerCopy _existingView];
        [_existingView2 removeFromSuperview];

        [viewControllerCopy setPerformingModalTransition:0];
      }
    }

    height = self->_popoverContentSize.height;
    v25 = height == 1100.0;
    if (height == 1137.0)
    {
      v25 = 1;
    }

    if (p_popoverContentSize->width == 320.0 && v25)
    {
      [(UIViewController *)self->_contentViewController _resolvedPreferredContentSize];
      p_popoverContentSize->width = v27;
      self->_popoverContentSize.height = v28;
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __91__UIPopoverPresentationController__transitionFromViewController_toViewController_animated___block_invoke;
    v40[3] = &unk_1E70F35B8;
    v29 = viewControllerCopy;
    v41 = v29;
    selfCopy = self;
    [UIView performWithoutAnimation:v40];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__UIPopoverPresentationController__transitionFromViewController_toViewController_animated___block_invoke_2;
    aBlock[3] = &unk_1E70F35B8;
    v38 = v29;
    v30 = view3;
    v39 = v30;
    v31 = _Block_copy(aBlock);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __91__UIPopoverPresentationController__transitionFromViewController_toViewController_animated___block_invoke_3;
    v35[3] = &unk_1E70F5AC0;
    v32 = v30;
    v36 = v32;
    v33 = _Block_copy(v35);
    if (v34)
    {
      [(UIPopoverPresentationController *)self _presentationAnimationDuration];
      [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:4 options:v31 animations:v33 completion:?];
    }

    else
    {
      v31[2](v31);
      v33[2](v33, 1);
    }
  }
}

void __91__UIPopoverPresentationController__transitionFromViewController_toViewController_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 392);
  v5 = [v3 view];
  [v4 _setPopoverContentView:v5];
}

uint64_t __91__UIPopoverPresentationController__transitionFromViewController_toViewController_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

- (void)_performHierarchyCheckOnViewController:(id)controller
{
  controllerCopy = controller;
  _parentViewController = [(UIViewController *)controllerCopy _parentViewController];
  if (_parentViewController)
  {
    _parentViewController2 = [(UIViewController *)controllerCopy _parentViewController];
    if (([_parentViewController2 _optsOutOfPopoverControllerHierarchyCheck] & 1) == 0)
    {

LABEL_7:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The content view controller argument must be the root of its associated view controller hierarchy."];
      goto LABEL_8;
    }
  }

  _parentModalViewController = [controllerCopy _parentModalViewController];

  if (_parentViewController)
  {
  }

  if (_parentModalViewController)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setArrowBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_arrowBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_arrowBackgroundColor, color);
    [(_UIPopoverView *)self->_popoverView setArrowBackgroundColor:v6];
    colorCopy = v6;
  }
}

- (void)_setCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    if (radius == -1.0)
    {
      _metrics = [(UIPopoverPresentationController *)self _metrics];
      [_metrics cornerRadius];
      radiusCopy = v6;
    }

    v7 = [UICornerRadius fixedRadius:radiusCopy];
    v8 = [UICornerConfiguration configurationWithRadius:v7];

    cornerConfiguration = self->_cornerConfiguration;
    self->_cornerConfiguration = v8;
    v10 = v8;

    [(UIView *)self->_popoverView setCornerConfiguration:v10];
    _internalTraitOverrides = [(UIPresentationController *)self _internalTraitOverrides];
    [_internalTraitOverrides _setCGFloatValue:0x1EFE32548 forTraitToken:radiusCopy];
  }
}

- (void)_setCornerConfiguration:(id)configuration
{
  v4 = [configuration copy];
  cornerConfiguration = self->_cornerConfiguration;
  self->_cornerConfiguration = v4;
  v6 = v4;

  [(UIView *)self->_popoverView setCornerConfiguration:v6];
  self->_cornerRadius = -1.0;
  _internalTraitOverrides = [(UIPresentationController *)self _internalTraitOverrides];
  [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
}

- (void)_setPrefersZoomTransitions:(BOOL)transitions
{
  if (self->__prefersZoomTransitions != transitions)
  {
    self->__prefersZoomTransitions = transitions;
    [(UIPopoverPresentationController *)self _configureZoomTransition];
  }
}

- (void)_setAllowDismissalTapsToPassThrough:(BOOL)through
{
  if (self->_allowDismissalTapsToPassThrough != through)
  {
    self->_allowDismissalTapsToPassThrough = through;
    [(_UIPopoverDimmingView *)self->_dimmingView setPassThroughDismissalTaps:?];
  }
}

- (void)_setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];

    viewCopy = v8;
  }
}

- (void)_updateHostedPopover
{
  if (self->_hostManager && self->_popoverIdentifier)
  {
    _hostManagerPopoverUpdateConfiguration = [(UIPopoverPresentationController *)self _hostManagerPopoverUpdateConfiguration];
    [(UIPopoverPresentationController *)self _sourceRectInContainerView];
    [_hostManagerPopoverUpdateConfiguration setSourceRectInParentUIWindow:?];
    [(_UIPopoverHostManager *)self->_hostManager updatePopoverWithIdentifier:self->_popoverIdentifier configuration:_hostManagerPopoverUpdateConfiguration];
  }
}

- (void)_setPopoverBackgroundStyle:(int64_t)style
{
  self->_popoverBackgroundStyle = style;
  popoverView = self->_popoverView;
  if (popoverView)
  {
    [(_UIPopoverView *)popoverView setBackgroundStyle:?];
  }
}

- (void)_setContentViewController:(id)controller backgroundStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  self->_popoverBackgroundStyle = style;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__50;
  v16 = __Block_byref_object_dispose__50;
  selfCopy = self;
  v17 = selfCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__UIPopoverPresentationController__setContentViewController_backgroundStyle_animated___block_invoke;
  v11[3] = &unk_1E7101790;
  v11[4] = &v12;
  v11[5] = style;
  v10 = _Block_copy(v11);
  [v13[5] _setContentViewController:controllerCopy animated:animatedCopy];
  if (animatedCopy)
  {
    [(UIPopoverPresentationController *)selfCopy _presentationAnimationDuration];
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:4 options:v10 animations:0 completion:?];
  }

  else
  {
    v10[2](v10);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_presentedViewControllerUserInterfaceStyleChanged
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  popoverView = self->_popoverView;
  v8 = presentedViewController;
  traitCollection = [presentedViewController traitCollection];
  -[UIView setOverrideUserInterfaceStyle:](popoverView, "setOverrideUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  if (self->_popoverIdentifier && self->_hostManager && (objc_opt_respondsToSelector() & 1) != 0)
  {
    hostManager = self->_hostManager;
    traitCollection2 = [v8 traitCollection];
    -[_UIPopoverHostManager updateUserInterfaceStyle:forPopoverWithIdentifier:](hostManager, "updateUserInterfaceStyle:forPopoverWithIdentifier:", [traitCollection2 userInterfaceStyle], self->_popoverIdentifier);
  }
}

- (id)_completionBlockForDismissalWhenNotifyingDelegate:(BOOL)delegate
{
  v5 = self->_dimmingView;
  v6 = self->_dimmingViewGestureRecognizer;
  v7 = self->_popoverView;
  selfCopy = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__UIPopoverPresentationController__completionBlockForDismissalWhenNotifyingDelegate___block_invoke;
  v16[3] = &unk_1E71017B8;
  v17 = v6;
  v18 = v5;
  delegateCopy = delegate;
  v19 = v7;
  v20 = selfCopy;
  v21 = selfCopy;
  v9 = selfCopy;
  v10 = v7;
  v11 = v5;
  v12 = v6;
  v13 = _Block_copy(v16);
  v14 = _Block_copy(v13);

  return v14;
}

void __85__UIPopoverPresentationController__completionBlockForDismissalWhenNotifyingDelegate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (!v3 || [v3 state] != 1 && objc_msgSend(*(a1 + 32), "state") != 2)
    {
      [*(a1 + 40) removeFromSuperview];
    }

    [*(a1 + 48) removeFromSuperview];
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 56) _sendDidDismiss];
    }

    [*(a1 + 56) _setPresentationState:4];
    [*(a1 + 56) _setPopoverView:0];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"_UIAlertDidDisappearNotification" object:*(a1 + 56) userInfo:0];
    [v5 postNotificationName:@"UIPopoverControllerDidDismissPopoverNotification" object:*(a1 + 56) userInfo:0];
  }

  else
  {
    [*(*(a1 + 64) + 400) setUserInteractionEnabled:1];
    v4 = [*(*(a1 + 64) + 392) layer];
    [v4 setAllowsGroupOpacity:1];

    *(*(a1 + 64) + 656) = 2;
  }
}

- (void)_postludeForDismissal
{
  [(UIPopoverPresentationController *)self setPreferredLayoutInfo:0];
  [(UIPopoverPresentationController *)self _stopWatchingForNotifications];
  if (self->_showsTargetRect)
  {
    _targetRectView = [(UIPopoverPresentationController *)self _targetRectView];
    [_targetRectView removeFromSuperview];
  }

  if (self->_showsOrientationMarker)
  {
    v4 = [(UIView *)self->_dimmingView viewWithTag:4277268722];
    [v4 removeFromSuperview];
  }

  if (self->_showsPresentationArea)
  {
    v5 = [(UIView *)self->_dimmingView viewWithTag:4277268723];
    [v5 removeFromSuperview];
  }

  *&self->_popoverControllerFlags &= ~8u;
  if (self->_retainsSelfWhilePresented)
  {
    retainedSelf = self->_retainedSelf;
    self->_retainedSelf = 0;
  }
}

- (void)_setAllowsFocusInPresentingViewController:(BOOL)controller
{
  controllerCopy = controller;
  self->__allowsFocusInPresentingViewController = controller;
  containerView = [(UIPresentationController *)self containerView];
  _focusBehavior = [containerView _focusBehavior];

  if (([_focusBehavior supportsViewTransparency] & 1) == 0)
  {
    containerView2 = [(UIPresentationController *)self containerView];
    [containerView2 _setFocusInteractionEnabled:controllerCopy ^ 1];
  }

  if ([_focusBehavior autoDismissesPopoverControllersOnFocusIntersection])
  {
    [(UIPopoverPresentationController *)self _updateShouldObserveFocusUpdateNotification:controllerCopy];
    if (controllerCopy)
    {
      [(UIPopoverPresentationController *)self _autoDismissIfFocusedItemSufficientlyIntersectsPresentedView];
    }
  }
}

- (void)_updateShouldObserveFocusUpdateNotification:(BOOL)notification
{
  if (notification)
  {
    if ((*&self->_popoverControllerFlags & 0x100) != 0)
    {
      return;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__observeFocusDidUpdateNotification_ name:@"UIFocusDidUpdateNotification" object:0];
  }

  else
  {
    if ((*&self->_popoverControllerFlags & 0x100) == 0)
    {
      return;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIFocusDidUpdateNotification" object:0];
  }
}

- (void)_observeFocusDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  [(UIPopoverPresentationController *)self _cancelDelayedFocusAutoDismiss];
  _shouldAutoDismissOnFocusedItemIntersection = [(UIPopoverPresentationController *)self _shouldAutoDismissOnFocusedItemIntersection];
  v5 = notificationCopy;
  if (_shouldAutoDismissOnFocusedItemIntersection)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"UIFocusUpdateContextKey"];

    nextFocusedItem = [v7 nextFocusedItem];
    if ([(UIPopoverPresentationController *)self _focusedItemFrameIntersectsSufficientlyWithPresentedView:nextFocusedItem])
    {
      v9 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusPopoverAutoDismissDelay, @"FocusPopoverAutoDismissDelay", _UIInternalPreferenceUpdateDouble);
      v10 = *&qword_1EA95E270;
      if (v9)
      {
        v10 = 0.3;
      }

      [(UIPopoverPresentationController *)self performSelector:sel__autoDismissIfFocusedItemSufficientlyIntersectsPresentedView withObject:0 afterDelay:v10];
    }

    v5 = notificationCopy;
  }
}

- (void)_cancelDelayedFocusAutoDismiss
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__autoDismissIfFocusedItemSufficientlyIntersectsPresentedView object:0];
}

- (void)_autoDismissIfFocusedItemSufficientlyIntersectsPresentedView
{
  [(UIPopoverPresentationController *)self _cancelDelayedFocusAutoDismiss];
  if ([(UIPopoverPresentationController *)self _shouldAutoDismissOnFocusedItemIntersection])
  {
    v3 = [UIFocusSystem focusSystemForEnvironment:self];
    focusedItem = [v3 focusedItem];

    if ([(UIPopoverPresentationController *)self _focusedItemFrameIntersectsSufficientlyWithPresentedView:focusedItem]&& [(UIPresentationController *)self _shouldDismiss])
    {
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      [presentedViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (BOOL)_shouldAutoDismissOnFocusedItemIntersection
{
  _allowsFocusInPresentingViewController = [(UIPopoverPresentationController *)self _allowsFocusInPresentingViewController];
  if (_allowsFocusInPresentingViewController)
  {

    LOBYTE(_allowsFocusInPresentingViewController) = [(UIPresentationController *)self presented];
  }

  return _allowsFocusInPresentingViewController;
}

- (BOOL)_focusedItemFrameIntersectsSufficientlyWithPresentedView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    _existingView = [presentedViewController _existingView];

    if (!_existingView)
    {
      goto LABEL_13;
    }

    v7 = _UIFocusItemFrameInCoordinateSpace(viewCopy, _existingView);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [_existingView bounds];
    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    v27 = CGRectIntersection(v26, v29);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_FocusPopoverAutoDismissIntersectionThreshold, @"FocusPopoverAutoDismissIntersectionThreshold", _UIInternalPreferenceUpdateDouble))
    {
      v22 = 5.0;
    }

    else
    {
      v22 = *&qword_1EA95E260;
    }

    if (v13 >= v22)
    {
      v13 = v22;
    }

    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    if (!CGRectIsNull(v28) && (v11 >= v22 ? (v23 = v22) : (v23 = v11), width >= v23))
    {
      v24 = height >= v13;
    }

    else
    {
LABEL_13:
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)popoverDimmingViewShouldAllowInteraction:(id)interaction
{
  _childPresentationController = [(UIPresentationController *)self _childPresentationController];
  if (_childPresentationController)
  {
    v5 = _childPresentationController;
    while (([v5 shouldPresentInFullscreen] & 1) == 0)
    {
      _childPresentationController2 = [v5 _childPresentationController];

      v5 = _childPresentationController2;
      if (!_childPresentationController2)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:

    return [(UIPresentationController *)self presented];
  }
}

- (BOOL)popoverDimmingViewDidReceiveDismissalInteraction:(id)interaction atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  [(UIPopoverPresentationController *)self set_dismissalInteractionLocation:x, y];
  v8 = [(UIPopoverPresentationController *)self dimmingViewWasTapped:interactionCopy withDismissCompletion:0];

  [(UIPopoverPresentationController *)self set_dismissalInteractionLocation:1.79769313e308, 1.79769313e308];
  return v8;
}

- (void)_setGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(UIGestureRecognizer *)self->_vendedGestureRecognizer setEnabled:?];
  dimmingViewGestureRecognizer = self->_dimmingViewGestureRecognizer;

  [(UIGestureRecognizer *)dimmingViewGestureRecognizer setEnabled:enabledCopy];
}

+ (BOOL)_forceAttemptsToAvoidKeyboard
{
  if (qword_1ED498458 != -1)
  {
    dispatch_once(&qword_1ED498458, &__block_literal_global_69);
  }

  return byte_1ED498449;
}

void __64__UIPopoverPresentationController__forceAttemptsToAvoidKeyboard__block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIPopoverControllerForceAttemptsToAvoidKeyboard"];
  byte_1ED498449 = [v0 BOOLValue];
}

- (void)setPopoverLayoutMargins:(UIEdgeInsets)popoverLayoutMargins
{
  v3.f64[0] = popoverLayoutMargins.top;
  v3.f64[1] = popoverLayoutMargins.left;
  v4.f64[0] = popoverLayoutMargins.bottom;
  v4.f64[1] = popoverLayoutMargins.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_popoverLayoutMargins.top, v3), vceqq_f64(*&self->_popoverLayoutMargins.bottom, v4)))) & 1) == 0)
  {
    self->_popoverLayoutMargins = popoverLayoutMargins;
    preferredLayoutInfo = self->_preferredLayoutInfo;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__UIPopoverPresentationController_setPopoverLayoutMargins___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [(_UIPopoverLayoutInfo *)preferredLayoutInfo updateProperties:v8];
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];
  }
}

uint64_t __59__UIPopoverPresentationController_setPopoverLayoutMargins___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[62];
  [v1 _containingFrameInsets];

  return [v2 setContainingFrameInsets:?];
}

- (id)_layoutInfoFromLayoutInfo:(id)info forCurrentKeyboardStateAndHostingWindow:(id)window
{
  windowCopy = window;
  v7 = [info copy];
  if ([windowCopy _isRemoteInputHostWindow])
  {
    [v7 setPreferredArrowDirections:2];
  }

  if ([(UIPopoverPresentationController *)self _attemptsToAvoidKeyboard])
  {
    windowScene = [windowCopy windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    [keyboardSceneDelegate visibleFrameInView:0];
    x = v91.origin.x;
    y = v91.origin.y;
    width = v91.size.width;
    height = v91.size.height;
    if (!CGRectIsEmpty(v91))
    {
      [(UIPopoverPresentationController *)self _sourceRectInContainerView];
      v100.origin.x = v14;
      v100.origin.y = v15;
      v100.size.width = v16;
      v100.size.height = v17;
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = width;
      v92.size.height = height;
      if (CGRectContainsRect(v92, v100))
      {
        inputViews = [keyboardSceneDelegate inputViews];
        sourceView = [(UIPresentationController *)self sourceView];
        v20 = [inputViews hierarchyContainsView:sourceView];

        if (v20)
        {
          [keyboardSceneDelegate visibleInputViewFrameInView:0];
          x = v21;
          y = v22;
          width = v23;
          height = v24;
        }
      }

      v25 = +[UIKeyboard activeKeyboard];
      v26 = [v25 isDescendantOfView:self->_popoverView];

      if ((v26 & 1) == 0)
      {
        if (![UIApp _isSpringBoard] || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "keyboardActive"), v27, v28))
        {
          v88 = 0u;
          v89 = 0u;
          v87 = 0u;
          dimmingView = self->_dimmingView;
          if (dimmingView)
          {
            [(UIView *)dimmingView transform];
          }

          [windowCopy convertRect:0 fromWindow:{x, y, width, height}];
          [windowCopy convertRect:self->_dimmingView toView:?];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          [(UIView *)self->_dimmingView frame];
          v39 = v38;
          v41 = v40;
          v43 = v42;
          v45 = v44;
          if (dyld_program_sdk_at_least())
          {
            [(UIPopoverPresentationController *)self _containingFrame];
            v39 = v46;
            v41 = v47;
            v43 = v48;
            v45 = v49;
          }

          v93.origin.x = v31;
          v93.origin.y = v33;
          v93.size.width = v35;
          v93.size.height = v37;
          v101.origin.x = v39;
          v101.origin.y = v41;
          v101.size.width = v43;
          v101.size.height = v45;
          v94 = CGRectIntersection(v93, v101);
          v50 = v94.size.height;
          [(UIPopoverPresentationController *)self _containingFrameInsets:v94.origin.x];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57 + v50;
          v59 = self->_dimmingView;
          v86[0] = v87;
          v86[1] = v88;
          v86[2] = v89;
          [(UIView *)v59 setTransform:v86];
          [v7 setContainingFrameInsets:{v52, v54, v58, v56}];
          [v7 frame];
          IsEmpty = CGRectIsEmpty(v95);
          [v7 sourceViewRect];
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;
          [v7 containingFrame];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;
          [v7 containingFrameInsets];
          v78 = v70 + v77;
          v80 = v72 + v79;
          v82 = v74 - (v77 + v81);
          v84 = v76 - (v79 + v83);
          if (IsEmpty || (v97.origin.x = v78, v97.origin.y = v80, v97.size.width = v82, v97.size.height = v84, v102.origin.x = v62, v102.origin.y = v64, v102.size.width = v66, v102.size.height = v68, v98 = CGRectIntersection(v97, v102), CGRectIsEmpty(v98)) && (v99.origin.x = v78, v99.origin.y = v80, v99.size.width = v82, v99.size.height = v84, CGRectGetMaxY(v99) < v64))
          {
            v96.origin.x = v78;
            v96.origin.y = v80;
            v96.size.width = v82;
            v96.size.height = v84;
            [v7 setSourceViewRect:{v62, CGRectGetMaxY(v96), v66, 1.0}];
          }
        }
      }
    }
  }

  return v7;
}

- (void)_moveAwayFromTheKeyboard:(id)keyboard showing:(BOOL)showing
{
  if ((*&self->_popoverControllerFlags & 0x40) == 0)
  {
    showingCopy = showing;
    popoverView = self->_popoverView;
    keyboardCopy = keyboard;
    [(UIView *)popoverView layoutIfNeeded];
    _layoutInfoForCurrentKeyboardState = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];
    v9 = [keyboardCopy objectForKey:@"UIKeyboardAnimationDurationUserInfoKey"];

    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    delegate = [(UIPresentationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [_layoutInfoForCurrentKeyboardState frame];
      if ([delegate _popoverPresentationController:self shouldRecalculateArrowDirectionOnKeyboardVisibilityChange:showingCopy proposedHeight:v13])
      {
        v14 = *(MEMORY[0x1E695F058] + 16);
        self->_previousContainerViewRect.origin = *MEMORY[0x1E695F058];
        self->_previousContainerViewRect.size = v14;
        if (v11 == 0.0)
        {
          [(UIPopoverPresentationController *)self _presentationAnimationDuration];
          v11 = v15;
        }

        [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setPreferredArrowDirections:[(UIPopoverPresentationController *)self _effectivePermittedArrowDirections]];
        _layoutInfoForCurrentKeyboardState2 = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];

        _layoutInfoForCurrentKeyboardState = _layoutInfoForCurrentKeyboardState2;
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__UIPopoverPresentationController__moveAwayFromTheKeyboard_showing___block_invoke;
    aBlock[3] = &unk_1E71017E0;
    v23 = v11;
    aBlock[4] = self;
    v22 = _layoutInfoForCurrentKeyboardState;
    v17 = _layoutInfoForCurrentKeyboardState;
    v18 = _Block_copy(aBlock);
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    _transitionCoordinator = [presentedViewController _transitionCoordinator];

    if (_transitionCoordinator)
    {
      if ([_transitionCoordinator isInteractive])
      {
        [_transitionCoordinator notifyWhenInteractionChangesUsingBlock:v18];
      }

      else
      {
        [_transitionCoordinator animateAlongsideTransition:0 completion:v18];
      }
    }

    else
    {
      v18[2](v18, 0);
    }
  }
}

void __68__UIPopoverPresentationController__moveAwayFromTheKeyboard_showing___block_invoke(double *a1)
{
  v1 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__UIPopoverPresentationController__moveAwayFromTheKeyboard_showing___block_invoke_2;
  v3[3] = &unk_1E70F35B8;
  v2 = *(a1 + 5);
  *&v3[4] = a1[4];
  v4 = v2;
  [UIView animateWithDuration:132 delay:v3 options:0 animations:v1 completion:0.0];
}

uint64_t __68__UIPopoverPresentationController__moveAwayFromTheKeyboard_showing___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[49];
  if ([v2 _shouldHideArrow])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) arrowDirection];
  }

  [v3 setArrowDirection:v4];
  v5 = *(a1 + 32);
  [*(a1 + 40) frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [*(a1 + 40) offset];

  return [v5 _updatePopoverFrame:v7 arrowOffset:{v9, v11, v13, v14}];
}

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  [(UIPopoverPresentationController *)self _sendDelegateWillRepositionToRect];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIPopoverPresentationController__keyboardWillShow___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = showCopy;
  v5 = showCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__UIPopoverPresentationController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _moveAwayFromTheKeyboard:v2 showing:1];
}

- (void)_keyboardDidHide:(id)hide
{
  hideCopy = hide;
  [(UIPopoverPresentationController *)self _sendDelegateWillRepositionToRect];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__UIPopoverPresentationController__keyboardDidHide___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = hideCopy;
  v5 = hideCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__UIPopoverPresentationController__keyboardDidHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 _moveAwayFromTheKeyboard:v2 showing:0];
}

- (void)_scrollViewWillBeginDragging:(id)dragging
{
  popoverView = self->_popoverView;
  object = [dragging object];
  if (popoverView)
  {
    v9 = object;
    v6 = [object isDescendantOfView:popoverView];

    if (v6)
    {
      draggingChildScrollViewCount = self->draggingChildScrollViewCount;
      if (!draggingChildScrollViewCount)
      {
        if ([(UIDimmingView *)self->_dimmingView ignoresTouches])
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        *&self->_popoverControllerFlags = *&self->_popoverControllerFlags & 0xFFFB | v8;
        [(UIDimmingView *)self->_dimmingView setIgnoresTouches:1];
        draggingChildScrollViewCount = self->draggingChildScrollViewCount;
      }

      self->draggingChildScrollViewCount = draggingChildScrollViewCount + 1;
    }
  }

  else
  {
  }
}

- (void)_scrollViewDidEndDragging:(id)dragging
{
  object = [dragging object];
  v5 = object;
  if (self->_popoverView)
  {
    v8 = object;
    v6 = [object isDescendantOfView:?];
    v5 = v8;
    if (v6)
    {
      v7 = self->draggingChildScrollViewCount - 1;
      self->draggingChildScrollViewCount = v7;
      if (!v7)
      {
        [(UIDimmingView *)self->_dimmingView setIgnoresTouches:(*&self->_popoverControllerFlags >> 2) & 1];
        v5 = v8;
      }
    }
  }
}

- (void)_stopWatchingForScrollViewNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScrollViewWillBeginDraggingNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIScrollViewDidEndDraggingNotification" object:0];
}

- (UISheetPresentationController)adaptiveSheetPresentationController
{
  adaptiveSheetPresentationController = self->_adaptiveSheetPresentationController;
  if (!adaptiveSheetPresentationController)
  {
    v4 = [_UIFormSheetPresentationController alloc];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    v7 = [(UISheetPresentationController *)v4 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];
    v8 = self->_adaptiveSheetPresentationController;
    self->_adaptiveSheetPresentationController = v7;

    adaptiveSheetPresentationController = self->_adaptiveSheetPresentationController;
  }

  return adaptiveSheetPresentationController;
}

- (void)_setIgnoresKeyboardNotifications:(BOOL)notifications
{
  if (self->_ignoresKeyboardNotifications != notifications)
  {
    self->_ignoresKeyboardNotifications = notifications;
    if (notifications)
    {
      [(UIPopoverPresentationController *)self _stopWatchingForKeyboardNotifications];
      if (UIKeyboardAutomaticIsOnScreen())
      {
        [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo frame];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;
        [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo offset];

        [(UIPopoverPresentationController *)self _updatePopoverFrame:v5 arrowOffset:v7, v9, v11, v12];
      }
    }

    else if ([(UIPopoverPresentationController *)self _attemptsToAvoidKeyboard])
    {
      [(UIPopoverPresentationController *)self _startWatchingForKeyboardNotificationsIfNecessary];
      if (UIKeyboardAutomaticIsOnScreen())
      {

        [(UIPopoverPresentationController *)self _moveAwayFromTheKeyboard:0 showing:0];
      }
    }
  }
}

- (void)_setOverrideAllowsHitTestingOnBackgroundViews:(BOOL)views
{
  viewsCopy = views;
  self->_overrideAllowsHitTestingOnBackgroundViews = views;
  layer = [(UIView *)self->_dimmingView layer];
  [layer setAllowsHitTesting:viewsCopy];

  overrideAllowsHitTestingOnBackgroundViews = self->_overrideAllowsHitTestingOnBackgroundViews;
  layer2 = [(UIView *)self->_shadowView layer];
  [layer2 setAllowsHitTesting:overrideAllowsHitTestingOnBackgroundViews];

  dimmingView = self->_dimmingView;
  v9 = self->_overrideAllowsHitTestingOnBackgroundViews;

  [(_UIPopoverDimmingView *)dimmingView _setOverrideAllowsHitTestingOnTouchFallbackView:v9];
}

- (void)_stopWatchingForNotifications
{
  [(UIPopoverPresentationController *)self _stopWatchingForKeyboardNotifications];

  [(UIPopoverPresentationController *)self _stopWatchingForScrollViewNotifications];
}

- (BOOL)_fallbackShouldDismiss
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if ([(UIPresentationController *)self presented]&& ![(UIPresentationController *)self dismissing])
    {
      v4 = [delegate popoverPresentationControllerShouldDismissPopover:self];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_sendFallbackWillDismiss
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate popoverPresentationControllerWillDismissPopover:self];
  }
}

- (void)_sendFallbackDidDismiss
{
  delegate = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate popoverPresentationControllerDidDismissPopover:self];
  }
}

- (BOOL)isPresentingOrDismissing
{
  if ([(UIPopoverPresentationController *)self _isPresenting])
  {
    return 1;
  }

  return [(UIPopoverPresentationController *)self _isDismissing];
}

- (id)_initialPresentationViewControllerForViewController:(id)controller
{
  controllerCopy = controller;
  if (dyld_program_sdk_at_least() && ![(UIPopoverPresentationController *)self _allowsSourceViewInDifferentWindowThanInitialPresentationViewController])
  {
    _realSourceView = [(UIPresentationController *)self _realSourceView];
    window = [_realSourceView window];
    _window = [controllerCopy _window];
    v9 = _window;
    _viewControllerForAncestor = 0;
    if (_window && window && window != _window)
    {
      _viewControllerForAncestor = [_realSourceView _viewControllerForAncestor];
    }

    if (_viewControllerForAncestor)
    {
      v11 = _viewControllerForAncestor;
    }

    else
    {
      v11 = controllerCopy;
    }

    v5 = v11;
  }

  else
  {
    v5 = controllerCopy;
  }

  return v5;
}

- (UIEdgeInsets)_baseContentInsetsWithLeftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  v17.receiver = self;
  v17.super_class = UIPopoverPresentationController;
  [(UIPresentationController *)&v17 _baseContentInsetsWithLeftMargin:margin rightMargin:rightMargin];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (![(_UIPopoverView *)self->_popoverView contentExtendsOverArrow])
  {
    v12 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
  }

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

- (id)_presentationView
{
  if ([(_UIPopoverHostManager *)self->_hostManager useDefaultPresentationViewForPopoverWithIdentifier:self->_popoverIdentifier])
  {
    v6.receiver = self;
    v6.super_class = UIPopoverPresentationController;
    _presentationView = [(UIPresentationController *)&v6 _presentationView];
  }

  else
  {
    popoverView = self->_popoverView;
    if (popoverView)
    {
      _presentationView = popoverView->_contentView;
    }

    else
    {
      _presentationView = 0;
    }
  }

  return _presentationView;
}

- (BOOL)_shouldPresentedViewControllerServeAsBaseForScrollToTop
{
  _passthroughViews = [(UIPopoverPresentationController *)self _passthroughViews];
  v3 = [_passthroughViews count] == 0;

  return v3;
}

- (BOOL)_shouldPopoverContentExtendOverArrowForViewController:(id)controller backgroundViewClass:(Class)class
{
  controllerCopy = controller;
  v6 = dyld_program_sdk_at_least() && ([UIApp _isSpringBoard] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && +[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView, "standardChromeViewClass") == class;

  return v6;
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  layer = [(UIView *)self->_popoverView layer];
  [layer setAllowsGroupOpacity:1];

  self->_presentationState = 2;
  if (objc_opt_respondsToSelector())
  {
    hostManager = self->_hostManager;
    popoverIdentifier = self->_popoverIdentifier;

    [(_UIPopoverHostManager *)hostManager transitionDidEnd:1 popoverIdentifier:popoverIdentifier];
  }
}

- (void)dismissalTransitionWillBegin
{
  v39 = *MEMORY[0x1E69E9840];
  [(UIPopoverPresentationController *)self _createHostManagerIfNeeded];
  shouldSendDidDismiss = self->_shouldSendDidDismiss;
  targetBarButtonItem = self->_targetBarButtonItem;
  if (targetBarButtonItem)
  {
    self->_targetBarButtonItem = 0;
  }

  layoutConstraintView = self->_layoutConstraintView;
  if (layoutConstraintView)
  {
    self->_layoutConstraintView = 0;
  }

  if (self->_hostManager)
  {
    _hostManagerPopoverCloseConfiguration = [(UIPopoverPresentationController *)self _hostManagerPopoverCloseConfiguration];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    _transitionCoordinator = [presentingViewController _transitionCoordinator];
    [_hostManagerPopoverCloseConfiguration setTransitionCoordinator:_transitionCoordinator];

    [(_UIPopoverHostManager *)self->_hostManager closePopoverWithIdentifier:self->_popoverIdentifier configuration:_hostManagerPopoverCloseConfiguration];
    transitionCoordinator = [_hostManagerPopoverCloseConfiguration transitionCoordinator];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke;
    v35[3] = &unk_1E71018A8;
    v35[4] = self;
    v36 = shouldSendDidDismiss;
    [transitionCoordinator animateAlongsideTransition:0 completion:v35];
  }

  else if (self->_popoverView)
  {
    self->_presentationState = 3;
    objc_initWeak(&location, self->_popoverView);
    window = [(UIView *)self->_popoverView window];
    if (os_variant_has_internal_diagnostics())
    {
      if (!window)
      {
        v22 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          popoverView = self->_popoverView;
          *buf = 138412290;
          v38 = popoverView;
          _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Expected window when dismissing popover view in order to set rasterization scale. Using mainScreen scale instead. popoverView = %@", buf, 0xCu);
        }
      }
    }

    else if (!window)
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &dismissalTransitionWillBegin___s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_popoverView;
        *buf = 138412290;
        v38 = v24;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Expected window when dismissing popover view in order to set rasterization scale. Using mainScreen scale instead. popoverView = %@", buf, 0xCu);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_113;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    [(UIView *)self->_dimmingView setUserInteractionEnabled:0];
    v13 = [(UIPopoverPresentationController *)self _completionBlockForDismissalWhenNotifyingDelegate:shouldSendDidDismiss];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_2;
    v31[3] = &unk_1E70F3770;
    v14 = v13;
    v32 = v14;
    v15 = _Block_copy(v31);
    layer = [(UIView *)self->_popoverView layer];
    if (window)
    {
      screen = [window screen];
      [screen scale];
    }

    else
    {
      screen = [(UIPresentationController *)self presentedViewController];
      _screen = [screen _screen];
      [_screen scale];
    }

    [layer setRasterizationScale:?];
    if (!window)
    {
    }

    presentingViewController2 = [(UIPresentationController *)self presentingViewController];
    _definiteTransitionCoordinator = [presentingViewController2 _definiteTransitionCoordinator];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_3;
    v29 = &unk_1E70F3770;
    v20 = v12;
    v30 = v20;
    [_definiteTransitionCoordinator animateAlongsideTransition:&v26 completion:v15];

    v21 = [(UIView *)self->_popoverView layer:v26];
    [v21 setAllowsGroupOpacity:0];

    objc_destroyWeak(&location);
  }
}

void __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 696);
  *(v3 + 696) = 0;
  v5 = a2;

  v6 = [*(v2 + 32) _completionBlockForDismissalWhenNotifyingDelegate:*(v2 + 40)];
  LODWORD(v2) = [v5 isCancelled];

  v6[2](v6, v2 ^ 1);
}

void __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_113(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 400);
  v2 = +[UIColor clearColor];
  [v1 setBackgroundColor:v2];
}

uint64_t __63__UIPopoverPresentationController_dismissalTransitionWillBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    if (self->_deriveSourceRectFromSourceViewBounds)
    {
      self->_deriveSourceRectFromSourceViewBounds = 0;
      [(UIPresentationController *)self setSourceView:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [(_UIPopoverHostManager *)self->_hostManager transitionDidEnd:0 popoverIdentifier:self->_popoverIdentifier];
    }

    [(UIPopoverPresentationController *)self _postludeForDismissal];
    [(UIPopoverPresentationController *)self _setPopoverView:0];
    self->_shouldSendDidDismiss = 0;
  }
}

- (void)_transitionToWillBegin
{
  *&self->_popoverControllerFlags |= 0x40u;
  [(UIPopoverPresentationController *)self _sendDelegateWillRepositionToRect];

  [(UIPresentationController *)self _presentationTransitionWillBegin];
}

- (void)_transitionToDidEnd
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView setNeedsLayout];

  *&self->_popoverControllerFlags &= ~0x40u;

  [(UIPresentationController *)self _updateRealSourceView];
}

- (BOOL)_attemptDismissalWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(UIPresentationController *)self presented]&& !self->_shouldSendDidDismiss && [(UIPresentationController *)self _shouldDismiss]&& (self->_shouldSendDidDismiss = 1, [(UIPresentationController *)self presented]))
  {
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    v6 = 1;
    [presentingViewController dismissViewControllerAnimated:1 completion:completionCopy];

    [(UIPresentationController *)self _sendWillDismiss];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_presentingViewControllerWindowSceneDidUpdateEffectiveGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (self->_hostManager)
  {
    v7 = geometryCopy;
    v5 = objc_opt_respondsToSelector();
    geometryCopy = v7;
    if (v5)
    {
      v6 = [(_UIPopoverHostManager *)self->_hostManager popoverWithIdentifier:self->_popoverIdentifier shouldAttemptDismissWhenWindowSceneUpdatesEffectiveGeometry:v7];
      geometryCopy = v7;
      if (v6)
      {
        [(UIPopoverPresentationController *)self _dismissWithCompletion:0];
        geometryCopy = v7;
      }
    }
  }
}

- (void)_realSourceViewDidChangeFromView:(id)view toView:(id)toView
{
  v5 = [(UIPopoverPresentationController *)self _sourceOverlayView:view];

  if (v5)
  {
    [(UIPopoverPresentationController *)self _updateSourceOverlayViewConstraints];
  }

  barButtonItem = [(UIPresentationController *)self barButtonItem];
  if (barButtonItem && (v7 = barButtonItem, v8 = _UISolariumEnabled(), v7, v8))
  {
    [(UIPopoverPresentationController *)self _configureZoomTransition];
  }

  else
  {
    zoomTransition = self->_zoomTransition;
    self->_zoomTransition = 0;
  }

  v10 = *(MEMORY[0x1E695F058] + 16);
  self->_previousContainerViewRect.origin = *MEMORY[0x1E695F058];
  self->_previousContainerViewRect.size = v10;
  containerView = [(UIPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

- (CGRect)_sourceRectInContainingScene
{
  _realSourceView = [(UIPresentationController *)self _realSourceView];
  window = [_realSourceView window];
  windowScene = [window windowScene];
  _coordinateSpace = [windowScene _coordinateSpace];
  [(UIPopoverPresentationController *)self _sourceRectInCoordinateSpace:_coordinateSpace];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_sourceRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  [(UIPresentationController *)self sourceRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sourceItem = [(UIPresentationController *)self sourceItem];
  v14 = _UIPopoverPresentationControllerSourceItemUpCast(sourceItem);

  if (v14)
  {
    containerView = [(UIPresentationController *)self containerView];
    _window = [containerView _window];
    [v14 _sourceRectForPresentationInWindow:_window];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v59.origin.x = v18;
    v59.origin.y = v20;
    v59.size.width = v22;
    v59.size.height = v24;
    if (!CGRectIsNull(v59))
    {
      v12 = v24;
      v10 = v22;
      v8 = v20;
      v6 = v18;
    }
  }

  _realSourceView = [(UIPresentationController *)self _realSourceView];
  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v10;
  v60.size.height = v12;
  if (CGRectIsNull(v60))
  {
    _sourceOverlayView = [(UIPopoverPresentationController *)self _sourceOverlayView];
    v27 = _sourceOverlayView;
    if (!_sourceOverlayView)
    {
      _sourceOverlayView = _realSourceView;
    }

    [_sourceOverlayView bounds];
    v6 = v28;
    v8 = v29;
    v10 = v30;
    v12 = v31;
  }

  _sourceOverlayView2 = [(UIPopoverPresentationController *)self _sourceOverlayView];

  if (_sourceOverlayView2)
  {
    _sourceOverlayView3 = [(UIPopoverPresentationController *)self _sourceOverlayView];
    [_realSourceView bounds];
    v35 = -v34;
    [_realSourceView bounds];
    v37 = -v36;
    v61.origin.x = v6;
    v61.origin.y = v8;
    v61.size.width = v10;
    v61.size.height = v12;
    v62 = CGRectOffset(v61, v35, v37);
    [_sourceOverlayView3 convertRect:spaceCopy toCoordinateSpace:{v62.origin.x, v62.origin.y, v62.size.width, v62.size.height}];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
  }

  else
  {
    _sourceOverlayView3 = [(UIPresentationController *)self containerView];
    _window2 = [_realSourceView _window];
    _window3 = [_sourceOverlayView3 _window];
    _shouldConvertToScene = [(UIPopoverPresentationController *)self _shouldConvertToScene];
    if (_window2 && (_shouldConvertToScene || ([_window2 screen], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_window3, "screen"), v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v49 == v50)))
    {
      [_realSourceView convertRect:spaceCopy toCoordinateSpace:{v6, v8, v10, v12}];
      v39 = v51;
      v41 = v52;
      v43 = v53;
      v45 = v54;
    }

    else
    {
      v39 = *MEMORY[0x1E695F058];
      v41 = *(MEMORY[0x1E695F058] + 8);
      v43 = *(MEMORY[0x1E695F058] + 16);
      v45 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v55 = v39;
  v56 = v41;
  v57 = v43;
  v58 = v45;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGSize)_proposedSize
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  traitCollection = [presentedViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {

    [(UIPopoverPresentationController *)self _defaultPopoverSize];
  }

  else
  {
    popoverBackgroundViewClass = self->_popoverBackgroundViewClass;
    if (!popoverBackgroundViewClass)
    {
      popoverBackgroundViewClass = [(UIPopoverPresentationController *)self _defaultChromeViewClass];
    }

    v9 = objc_alloc_init([(UIPopoverPresentationController *)self _popoverLayoutInfoForChromeClass:popoverBackgroundViewClass]);
    [(UIPopoverPresentationController *)self _defaultPopoverSize];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__UIPopoverPresentationController__proposedSize__block_invoke;
    v17[3] = &unk_1E7101830;
    selfCopy = self;
    v20 = popoverBackgroundViewClass;
    v21 = v10;
    v22 = v11;
    v18 = v9;
    v12 = v9;
    [v12 updateProperties:v17];
    [v12 frame];
    v14 = v13;
    v16 = v15;

    v6 = v14;
    v7 = v16;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

void __48__UIPopoverPresentationController__proposedSize__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 48) contentViewInsets];
  [v2 setContentInset:?];
  v3 = *(a1 + 32);
  [*(a1 + 48) arrowHeight];
  [v3 setArrowHeight:?];
  [*(a1 + 32) setPreferredContentSize:{*(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setPreferredArrowDirections:{objc_msgSend(*(a1 + 40), "_effectivePermittedArrowDirections")}];
  v4 = *(a1 + 32);
  [*(a1 + 40) _containingFrame];
  [v4 setContainingFrame:?];
  v5 = *(a1 + 32);
  [*(a1 + 40) _containingFrameInsets];
  [v5 setContainingFrameInsets:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) _sourceRectInContainerView];
  [v6 setSourceViewRect:?];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _popoverHostingWindow];
  v9 = [v8 windowScene];
  [v7 setPreferLandscapeOrientations:{(objc_msgSend(v9, "_interfaceOrientation") - 3) < 0xFFFFFFFFFFFFFFFELL}];

  [*(a1 + 32) setCanOverlapSourceViewRect:*(*(a1 + 40) + 569)];
  [*(a1 + 32) setPreferredHorizontalAlignment:{objc_msgSend(*(a1 + 40), "_preferredHorizontalAlignment")}];
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) containerView];
  [v10 setIsRTL:{objc_msgSend(v11, "effectiveUserInterfaceLayoutDirection") == 1}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = UIPopoverPresentationController;
  [(UIPresentationController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  *&self->_popoverControllerFlags |= 0x40u;
  if ([coordinatorCopy isAnimated])
  {
    layer = [(UIView *)self->_popoverView layer];
    [layer setAllowsGroupOpacity:0];

    [(_UIPopoverView *)self->_popoverView setChromeHiddenForSizeTransition:1];
    [(UIView *)self->_shadowView setAlpha:0.0];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F3B98;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
}

void __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 688) &= ~0x40u;
  v3 = (*(a1 + 32) + 592);
  v4 = *(MEMORY[0x1E695F058] + 16);
  *v3 = *MEMORY[0x1E695F058];
  v3[1] = v4;
  if ([a2 isAnimated])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v9[3] = &unk_1E70F3590;
    v10 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v8[3] = &unk_1E70F5AC0;
    v8[4] = v10;
    [UIView animateWithDuration:v9 animations:v8 completion:0.25];
  }

  [*(a1 + 32) _sendDelegateWillRepositionToRect];
  v5 = [*(a1 + 32) containerView];
  [v5 setNeedsLayout];

  v6 = *(a1 + 32);
  v7 = [v6 presentedViewController];
  [v6 preferredContentSizeDidChangeForChildContentContainer:v7];
}

uint64_t __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 392) setChromeHiddenForSizeTransition:0];
  v2 = *(*(a1 + 32) + 408);

  return [v2 setAlpha:1.0];
}

void __86__UIPopoverPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 392) layer];
  [v1 setAllowsGroupOpacity:1];
}

- (void)_updateSourceOverlayViewConstraints
{
  v27[4] = *MEMORY[0x1E69E9840];
  _sourceOverlayViewConstraints = [(UIPopoverPresentationController *)self _sourceOverlayViewConstraints];

  if (_sourceOverlayViewConstraints)
  {
    v4 = MEMORY[0x1E69977A0];
    _sourceOverlayViewConstraints2 = [(UIPopoverPresentationController *)self _sourceOverlayViewConstraints];
    [v4 deactivateConstraints:_sourceOverlayViewConstraints2];
  }

  _realSourceView = [(UIPresentationController *)self _realSourceView];
  _sourceOverlayView = [(UIPopoverPresentationController *)self _sourceOverlayView];
  v8 = _sourceOverlayView;
  if (_realSourceView)
  {
    if (_sourceOverlayView)
    {
      window = [_realSourceView window];
      window2 = [v8 window];
      v11 = [window isEqual:window2];

      if (v11)
      {
        leftAnchor = [_realSourceView leftAnchor];
        leftAnchor2 = [v8 leftAnchor];
        v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        v27[0] = v24;
        rightAnchor = [_realSourceView rightAnchor];
        rightAnchor2 = [v8 rightAnchor];
        v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        v27[1] = v21;
        topAnchor = [_realSourceView topAnchor];
        topAnchor2 = [v8 topAnchor];
        v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v27[2] = v14;
        bottomAnchor = [_realSourceView bottomAnchor];
        bottomAnchor2 = [v8 bottomAnchor];
        v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v27[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
        [(UIPopoverPresentationController *)self _setSourceOverlayViewConstraints:v18];

        v19 = MEMORY[0x1E69977A0];
        _sourceOverlayViewConstraints3 = [(UIPopoverPresentationController *)self _sourceOverlayViewConstraints];
        [v19 activateConstraints:_sourceOverlayViewConstraints3];
      }
    }
  }
}

- (CGRect)_sourceRectFromSourceView:(id)view
{
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _bottomAlignsPopoverIfSourceViewNotSet = [(UIPopoverPresentationController *)self _bottomAlignsPopoverIfSourceViewNotSet];
  if (_bottomAlignsPopoverIfSourceViewNotSet)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = v11;
  }

  if (_bottomAlignsPopoverIfSourceViewNotSet)
  {
    v14 = v11 + -10.0;
  }

  else
  {
    v14 = v7;
  }

  v15 = v5;
  v16 = v9;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)_updatePopoverFrame:(CGRect)frame arrowOffset:(double)offset
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(_UIPopoverView *)self->_popoverView _setFrame:frame.origin.x arrowOffset:frame.origin.y, frame.size.width, frame.size.height, offset];
  _accessoryView = [(UIPopoverPresentationController *)self _accessoryView];
  if (_accessoryView)
  {
    v13 = _accessoryView;
    superview = [_accessoryView superview];

    if (!superview)
    {
      containerView = [(UIPresentationController *)self containerView];
      [containerView addSubview:self->_accessoryView];
    }

    [(UIView *)self->_accessoryView systemLayoutSizeFittingSize:width, 0.0];
    [(UIView *)self->_accessoryView setFrame:x, y - v11 + -10.0, v12, v11];
    _accessoryView = v13;
  }
}

uint64_t __66__UIPopoverPresentationController_containerViewWillLayoutSubviews__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[62];
  v3 = [v1 _effectivePermittedArrowDirections];

  return [v2 setPreferredArrowDirections:v3];
}

- (int64_t)_defaultPresentationStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (self->_hostManager)
  {
LABEL_2:
    v6 = -1;
    goto LABEL_3;
  }

  if ([collectionCopy horizontalSizeClass] != 1)
  {
    if ([v5 horizontalSizeClass] == 2 && objc_msgSend(v5, "verticalSizeClass") == 1 && _AlwaysAllowPopoverPresentations != 1)
    {
      v6 = 2;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v8 = _UIMainBundleIdentifier();
  v9 = v8;
  if (_AlwaysAllowPopoverPresentations & 1) != 0 || !self->_adaptivityEnabled || ([v8 isEqualToString:@"com.apple.itunesu"])
  {
    v6 = -1;
  }

  else
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    if (_UISheetPresentationControllerStylesSheetsAsCards(presentedViewController))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_3:
  return v6;
}

- (id)_preferredAnimationControllerForPresentation
{
  [(UIPopoverPresentationController *)self _createHostManagerIfNeeded];
  _metrics = [(UIPopoverPresentationController *)self _metrics];
  shouldUseVisualStyleAnimationControllerForPresentation = [_metrics shouldUseVisualStyleAnimationControllerForPresentation];

  if (shouldUseVisualStyleAnimationControllerForPresentation)
  {
    _visualStyle = [(UIPresentationController *)self _visualStyle];
    _preferredAnimationControllerForPresentation = [_visualStyle preferredAnimationControllerForPresentation:1];
  }

  else if ([(_UIPopoverHostManager *)self->_hostManager useDefaultPreferredAnimationControllerForPresentationWithPopoverWithIdentifier:self->_popoverIdentifier])
  {
    v8.receiver = self;
    v8.super_class = UIPopoverPresentationController;
    _preferredAnimationControllerForPresentation = [(UIPresentationController *)&v8 _preferredAnimationControllerForPresentation];
  }

  else if (self->_zoomTransition)
  {
    _preferredAnimationControllerForPresentation = 0;
  }

  else
  {
    _preferredAnimationControllerForPresentation = objc_alloc_init(_UIModernPopoverAnimationController);
    [(_UIModernPopoverAnimationController *)_preferredAnimationControllerForPresentation setPopoverPresentationController:self];
    [(_UIModernPopoverAnimationController *)_preferredAnimationControllerForPresentation setPresenting:1];
  }

  return _preferredAnimationControllerForPresentation;
}

- (id)_preferredAnimationControllerForDismissal
{
  [(UIPopoverPresentationController *)self _createHostManagerIfNeeded];
  _metrics = [(UIPopoverPresentationController *)self _metrics];
  shouldUseVisualStyleAnimationControllerForDismissal = [_metrics shouldUseVisualStyleAnimationControllerForDismissal];

  if (shouldUseVisualStyleAnimationControllerForDismissal)
  {
    _visualStyle = [(UIPresentationController *)self _visualStyle];
    _preferredAnimationControllerForDismissal = [_visualStyle preferredAnimationControllerForPresentation:0];
  }

  else if ([(_UIPopoverHostManager *)self->_hostManager useDefaultPreferredAnimationControllerForDismissalWithPopoverWithIdentifier:self->_popoverIdentifier])
  {
    v8.receiver = self;
    v8.super_class = UIPopoverPresentationController;
    _preferredAnimationControllerForDismissal = [(UIPresentationController *)&v8 _preferredAnimationControllerForDismissal];
  }

  else if (self->_zoomTransition)
  {
    _preferredAnimationControllerForDismissal = 0;
  }

  else
  {
    _preferredAnimationControllerForDismissal = objc_alloc_init(_UIModernPopoverAnimationController);
    [(_UIModernPopoverAnimationController *)_preferredAnimationControllerForDismissal setPopoverPresentationController:self];
    [(_UIModernPopoverAnimationController *)_preferredAnimationControllerForDismissal setPresenting:0];
  }

  return _preferredAnimationControllerForDismissal;
}

- (void)_setContentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (![(UIPresentationController *)self presented])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UIPopoverController setContentViewController:animated:] can only be called after the popover has been presented."];
  }

  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];

  view2 = [controllerCopy view];
  [view frame];
  [view2 setFrame:?];

  superview = [view superview];

  if (superview)
  {
    superview2 = [view superview];
    view3 = [controllerCopy view];
    [superview2 insertSubview:view3 aboveSubview:view];

    if (animatedCopy)
    {
      view4 = [controllerCopy view];
      [view4 setAlpha:0.0];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__UIPopoverPresentationController__setContentViewController_animated___block_invoke;
      v27[3] = &unk_1E70F3590;
      v28 = controllerCopy;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70__UIPopoverPresentationController__setContentViewController_animated___block_invoke_2;
      v23[3] = &unk_1E70F4638;
      v24 = view;
      v25 = v28;
      selfCopy = self;
      [UIView animateWithDuration:v27 animations:v23 completion:0.4];

      v14 = v28;
LABEL_8:

      goto LABEL_9;
    }

    [view removeFromSuperview];
    childModalViewController = [controllerCopy childModalViewController];

    if (!childModalViewController)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __70__UIPopoverPresentationController__setContentViewController_animated___block_invoke_3;
      v20 = &unk_1E70F35B8;
      selfCopy2 = self;
      v22 = controllerCopy;
      [UIView performWithoutAnimation:&v17];
      v14 = v22;
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = [(UIPresentationController *)self presentedViewController:v17];
  [controllerCopy _replaceViewControllerInPresentationHierarchy:v16];

  [(UIPresentationController *)self _setPresentedViewController:controllerCopy];
}

void __70__UIPopoverPresentationController__setContentViewController_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __70__UIPopoverPresentationController__setContentViewController_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) childModalViewController];

  if (!v2)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);

    [v3 preferredContentSizeDidChangeForChildContentContainer:v4];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v6 = presentedViewController;
  if (presentedViewController == containerCopy)
  {
  }

  else
  {
    _childPresentationController = [(UIPresentationController *)self _childPresentationController];

    if (_childPresentationController != containerCopy)
    {
      goto LABEL_35;
    }
  }

  [containerCopy preferredContentSize];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v11 = v10 == *MEMORY[0x1E695F060] && v8 == v9;
  if (!v11 || (self->_popoverContentSize.width == *MEMORY[0x1E695F060] ? (v12 = self->_popoverContentSize.height == v9) : (v12 = 0), v12))
  {
    [(UIPopoverPresentationController *)self _defaultPopoverSize];
    v14 = v13;
    v16 = v15;
    [containerCopy preferredContentSize];
    v19 = v17;
    v20 = v18;
    if (v17 <= 0.0 || v18 <= 0.0)
    {
      if (v17 <= 0.0)
      {
        v19 = v14;
      }

      if (v18 <= 0.0)
      {
        v20 = v16;
      }
    }

    if (v19 != self->_popoverContentSize.width || v20 != self->_popoverContentSize.height)
    {
      v22 = objc_alloc_init(_UIViewControllerNullAnimationTransitionCoordinator);
      _childPresentationController2 = [(UIPresentationController *)self _childPresentationController];
      v24 = _childPresentationController2;
      if (_childPresentationController2)
      {
        presentedViewController2 = _childPresentationController2;
      }

      else
      {
        presentedViewController2 = [(UIPresentationController *)self presentedViewController];
      }

      v26 = presentedViewController2;

      [v26 viewWillTransitionToSize:v22 withTransitionCoordinator:{v19, v20}];
      self->_popoverContentSize.width = v19;
      self->_popoverContentSize.height = v20;
      preferredLayoutInfo = self->_preferredLayoutInfo;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __89__UIPopoverPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
      v39[3] = &unk_1E70F6848;
      v39[4] = self;
      *&v39[5] = v19;
      *&v39[6] = v20;
      [(_UIPopoverLayoutInfo *)preferredLayoutInfo updateProperties:v39];
      _layoutInfoForCurrentKeyboardState = [(UIPopoverPresentationController *)self _layoutInfoForCurrentKeyboardState];
      v29 = _layoutInfoForCurrentKeyboardState;
      if (self->_hostManager)
      {
        [(UIPopoverPresentationController *)self _updateHostedPopover];
        [(_UIViewControllerNullAnimationTransitionCoordinator *)v22 _runAlongsideAnimations];
        [(_UIViewControllerNullAnimationTransitionCoordinator *)v22 _runAlongsideCompletionsAfterCommit];
      }

      else
      {
        [_layoutInfoForCurrentKeyboardState frame];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        if ([(UIPresentationController *)self presented])
        {
          v38 = +[UIView areAnimationsEnabled];
        }

        else
        {
          v38 = 0;
        }

        [(UIPopoverPresentationController *)self _setPopoverFrame:v38 animated:v22 coordinator:v31, v33, v35, v37];
      }
    }
  }

LABEL_35:
}

- (id)_hostManagerPopoverCreationConfiguration
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [v3 setContentViewController:presentedViewController];
  _realSourceView = [(UIPresentationController *)self _realSourceView];
  [v3 setSourceView:_realSourceView];

  [(UIPopoverPresentationController *)self popoverContentSize];
  [v3 setContentSize:?];
  [v3 setShowsArrow:{-[UIPopoverPresentationController _shouldHideArrow](self, "_shouldHideArrow") ^ 1}];
  [v3 setCreatingPopoverPresentationController:self];
  traitCollection = [presentedViewController traitCollection];
  [v3 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  v10[0] = 0x1EFE323B0;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [presentedViewController _registerForTraitTokenChanges:v7 withTarget:self action:sel__presentedViewControllerUserInterfaceStyleChanged];

  return v3;
}

- (id)_hostManagerPopoverUpdateConfiguration
{
  v3 = objc_opt_new();
  [(UIPopoverPresentationController *)self popoverContentSize];
  [v3 setContentSize:?];
  [v3 setPreferredHorizontalAlignment:{-[UIPopoverPresentationController _preferredHorizontalAlignment](self, "_preferredHorizontalAlignment")}];
  [v3 setShowsArrow:{-[UIPopoverPresentationController _shouldHideArrow](self, "_shouldHideArrow") ^ 1}];
  containerView = [(UIPresentationController *)self containerView];
  [v3 setIsRTL:{objc_msgSend(containerView, "effectiveUserInterfaceLayoutDirection") == 1}];

  return v3;
}

- (id)_hostManagerPopoverCloseConfiguration
{
  v3 = objc_opt_new();
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _window = [presentedViewController _window];
  [v3 setPopoverWindow:_window];

  _realSourceView = [(UIPresentationController *)self _realSourceView];
  window = [_realSourceView window];
  [v3 setParentWindow:window];

  [v3 setTransitionCoordinator:0];

  return v3;
}

- (void)_realSourceViewGeometryDidChange
{
  v5.receiver = self;
  v5.super_class = UIPopoverPresentationController;
  [(UIPresentationController *)&v5 _realSourceViewGeometryDidChange];
  if ((*&self->_popoverControllerFlags & 0x40) == 0)
  {
    [(UIPopoverPresentationController *)self _containingFrame];
    p_previousContainerViewRect = &self->_previousContainerViewRect;
    if (!CGRectEqualToRect(v6, *p_previousContainerViewRect))
    {
      v4 = *(MEMORY[0x1E695F058] + 16);
      p_previousContainerViewRect->origin = *MEMORY[0x1E695F058];
      p_previousContainerViewRect->size = v4;
    }
  }
}

- (void)_convertToSceneFromPresentingViewController:(id)controller
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [(UIPopoverPresentationController *)self preferredContentSizeDidChangeForChildContentContainer:presentedViewController];

  _hostManagerPopoverCreationConfiguration = [(UIPopoverPresentationController *)self _hostManagerPopoverCreationConfiguration];
  [(UIPopoverPresentationController *)self _sourceRectInContainingScene];
  [_hostManagerPopoverCreationConfiguration setSourceRectInParentUIWindow:?];
  [_hostManagerPopoverCreationConfiguration setPermittedArrowDirections:{-[UIPopoverPresentationController _effectivePermittedArrowDirections](self, "_effectivePermittedArrowDirections")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__UIPopoverPresentationController__convertToSceneFromPresentingViewController___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  [_hostManagerPopoverCreationConfiguration setCompletionBlock:v8];
  v6 = [(UIPopoverPresentationController *)self _createHostManagerPopoverWithConfiguration:_hostManagerPopoverCreationConfiguration];
  popoverIdentifier = self->_popoverIdentifier;
  self->_popoverIdentifier = v6;
}

void __79__UIPopoverPresentationController__convertToSceneFromPresentingViewController___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) _hostManagerPopoverUpdateConfiguration];
  [*(a1 + 32) _sourceRectInContainingScene];
  [v12 setSourceRectInParentUIWindow:?];
  [*(*(a1 + 32) + 704) updatePopoverWithIdentifier:*(*(a1 + 32) + 696) configuration:v12];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 696);
      v5 = *(v3 + 704);
      v6 = [v5 popoverSceneForPopoverWithIdentifier:v4];
      [v2 _popoverPresentationController:*(a1 + 32) didConvertToScene:v6];
    }
  }

  v7 = [[UIPanGestureRecognizer alloc] initWithTarget:*(a1 + 32) action:sel__handlePan_];
  v8 = *(a1 + 32);
  v9 = *(v8 + 712);
  *(v8 + 712) = v7;

  v10 = [*(a1 + 32) presentedViewController];
  v11 = [v10 _window];
  [v11 addGestureRecognizer:*(*(a1 + 32) + 712)];
}

- (id)_createHostManagerPopoverWithConfiguration:(id)configuration
{
  hostManager = self->_hostManager;
  configurationCopy = configuration;
  v6 = [(_UIPopoverHostManager *)hostManager createPopoverWithConfiguration:configurationCopy];
  contentViewController = [configurationCopy contentViewController];

  _window = [contentViewController _window];
  [_window _setOverrideParentTraitEnvironment:self];

  return v6;
}

- (void)_closeScene
{
  if (self->_popoverIdentifier && self->_hostManager)
  {
    _hostManagerPopoverCloseConfiguration = [(UIPopoverPresentationController *)self _hostManagerPopoverCloseConfiguration];
    [(_UIPopoverHostManager *)self->_hostManager closePopoverWithIdentifier:self->_popoverIdentifier configuration:_hostManagerPopoverCloseConfiguration];
  }
}

- (id)_createVisualStyleForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy styleForPopoverPresentationController:self];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = UIPopoverPresentationController;
    v5 = [(UIPresentationController *)&v7 _createVisualStyleForProvider:providerCopy];
  }

  return v5;
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  view = [panCopy view];
  [panCopy translationInView:view];
  if (!self->_wasDetached)
  {
    v8 = v6;
    v9 = v7;
    if ([panCopy state] == 1)
    {
      [panCopy locationInView:view];
      v11 = v10 - v8;
      v13 = v12 - v9;
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      _window = [presentedViewController _window];
      windowScene = [_window windowScene];
      _coordinateSpace = [windowScene _coordinateSpace];
      [view convertPoint:_coordinateSpace toCoordinateSpace:{v11, v13}];
      v19 = v18;
      v21 = v20;

      presentedViewController2 = [(UIPresentationController *)self presentedViewController];
      _window2 = [presentedViewController2 _window];
      windowScene2 = [_window2 windowScene];

      delegate = [(UIPresentationController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate _popoverPresentationController:self shouldDetachScene:windowScene2])
      {
        if (objc_opt_respondsToSelector())
        {
          [(_UIPopoverHostManager *)self->_hostManager updateSupportsDetach:1 forPopoverWithIdentifier:self->_popoverIdentifier];
        }

        if (objc_opt_respondsToSelector())
        {
          hostManager = self->_hostManager;
          popoverIdentifier = self->_popoverIdentifier;
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __46__UIPopoverPresentationController__handlePan___block_invoke;
          v28[3] = &unk_1E70F6228;
          v29 = delegate;
          selfCopy = self;
          v31 = windowScene2;
          [(_UIPopoverHostManager *)hostManager detachPopoverWithIdentifier:popoverIdentifier fromPoint:v28 withCompletionCallback:v19, v21];
        }
      }
    }
  }
}

void __46__UIPopoverPresentationController__handlePan___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _popoverPresentationController:*(a1 + 40) didDetachScene:*(a1 + 48)];
  }

  v2 = [*(*(a1 + 40) + 712) view];
  [v2 removeGestureRecognizer:*(*(a1 + 40) + 712)];

  *(*(a1 + 40) + 720) = 1;
}

- (id)_traitCollectionForCherryPickingToPresentedViewController:(id)controller
{
  controllerCopy = controller;
  _traitCollectionForGlassContent = [(_UIPopoverView *)self->_popoverView _traitCollectionForGlassContent];
  v6 = _traitCollectionForGlassContent;
  if (_traitCollectionForGlassContent)
  {
    v7 = _traitCollectionForGlassContent;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIPopoverPresentationController;
    v7 = [(UIPresentationController *)&v10 _traitCollectionForCherryPickingToPresentedViewController:controllerCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_traitCollectionForGlassContentDidChange
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController _updateTraitsIfNecessary];
}

- (UIView)_presentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);

  return WeakRetained;
}

- (CGPoint)_dismissalInteractionLocation
{
  x = self->_dismissalInteractionLocation.x;
  y = self->_dismissalInteractionLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end