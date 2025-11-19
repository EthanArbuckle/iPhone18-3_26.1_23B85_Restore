@interface UISheetPresentationController
+ (id)_platformHostManagerForController:(id)a3;
+ (int64_t)_initialMode;
+ (void)_registerPlatformHostProvider:(Class)a3 forIdiom:(int64_t)a4;
- (BOOL)_allowsAsymmetricVerticalMargins;
- (BOOL)_allowsFocusInPresentingViewController;
- (BOOL)_allowsInteractiveDismissWhenFullScreen;
- (BOOL)_disableSolariumInsets;
- (BOOL)_exteriorPanGestureRecognizerShouldBeginWithEvent:(id)a3;
- (BOOL)_exteriorPanGestureRecognizerShouldInteractWithView:(id)a3;
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
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)prefersEdgeAttachedInCompactHeight;
- (BOOL)prefersGrabberVisible;
- (BOOL)prefersScrollingExpandsWhenScrolledToEdge;
- (BOOL)sheetInteraction:(id)a3 shouldAllowVerticalRubberBandingWithEvent:(id)a4;
- (BOOL)sheetInteraction:(id)a3 shouldBeginHorizontalRubberBandingWithGestureRecognizer:(id)a4;
- (BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached;
- (CGAffineTransform)transformOfPresentedViewInContainerView;
- (CGFloat)preferredCornerRadius;
- (CGPoint)_initialTearOffPoint;
- (CGPoint)_remoteInterruptedOffset;
- (CGPoint)offsetForInterruptedAnimationInSheetInteraction:(id)a3;
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
- (UISheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
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
- (id)_createVisualStyleForProvider:(id)a3;
- (id)_preferredAnimationControllerForTransition:(BOOL)a3;
- (id)_preferredInteractionControllerForTransition:(BOOL)a3 animator:(id)a4;
- (id)_recursivelyResolvedRemoteSheetForRemoteSheet:(id)a3;
- (id)_sheetMetrics;
- (id)backgroundEffect;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (int64_t)_detentDirectionWhenFloating;
- (int64_t)_horizontalAlignment;
- (int64_t)_indexOfCurrentDetent;
- (int64_t)_indexOfLastUndimmedDetent;
- (int64_t)_indexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight;
- (int64_t)_indexOfLastUndimmedDetentWhenFloating;
- (int64_t)_mode;
- (int64_t)presentationStyle;
- (void)_accessibilityReduceMotionStatusDidChange;
- (void)_animateChanges:(id)a3 completion:(id)a4;
- (void)_completeInteractiveTransition:(BOOL)a3 duration:(double)a4 timingCurve:(id)a5;
- (void)_configureHostWindow:(id)a3;
- (void)_configureRootPresentationControllerForHostWindow:(id)a3;
- (void)_containerViewBoundsDidChange;
- (void)_containerViewLayoutSubviews;
- (void)_containerViewScreenDidChangeToScreen:(id)a3;
- (void)_dismissFromGrabberOrDimmingViewIfPossible;
- (void)_dropShadowViewGrabberDidTriggerPrimaryAction:(id)a3;
- (void)_firstResponderDidChange:(id)a3;
- (void)_handleExteriorPan:(id)a3;
- (void)_handleKeyboardNotification:(id)a3 aboutToHide:(BOOL)a4;
- (void)_hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3;
- (void)_hostSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5;
- (void)_hostSheetInteractionDraggingDidEnd;
- (void)_keyboardAboutToChangeFrame:(id)a3;
- (void)_keyboardAboutToHide:(id)a3;
- (void)_keyboardAboutToShow:(id)a3;
- (void)_prepareForWindowDeallocRecursively:(BOOL)a3;
- (void)_realSourceViewGeometryDidChange;
- (void)_registerForKeyboardNotificationsIfNecessary;
- (void)_remoteSheetGrabberDidTriggerPrimaryAction;
- (void)_remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5;
- (void)_remoteSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6;
- (void)_remoteSheetInteractionDraggingDidEnd;
- (void)_resetRemoteDismissing;
- (void)_sendDidChangeSelectedDetentIdentifier;
- (void)_sendDidInvalidateDetentValues;
- (void)_sendDidInvalidateUntransformedFrame;
- (void)_sendPerformLayout;
- (void)_setAdditionalMinimumTopInset:(double)a3;
- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)a3;
- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)a3;
- (void)_setAllowsTearOff:(BOOL)a3;
- (void)_setClientRemotePresentationDelegate:(id)a3;
- (void)_setConfiguration:(id)a3;
- (void)_setCornerRadiusForPresentationAndDismissal:(double)a3;
- (void)_setDetentDirectionWhenFloating:(int64_t)a3;
- (void)_setDisableSolariumInsets:(BOOL)a3;
- (void)_setEdgeAttachedCompactHeightAppearance:(id)a3;
- (void)_setFloatingAppearance:(id)a3;
- (void)_setGrabberBlurEnabled:(BOOL)a3;
- (void)_setGrabberPreferredSize:(CGSize)a3;
- (void)_setGrabberTopSpacing:(double)a3;
- (void)_setHidden:(BOOL)a3;
- (void)_setHiddenAncestorSheetID:(id)a3;
- (void)_setHorizontalAlignment:(int64_t)a3;
- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)a3;
- (void)_setIndexOfCurrentDetent:(int64_t)a3;
- (void)_setIndexOfLastUndimmedDetent:(int64_t)a3;
- (void)_setIndexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight:(int64_t)a3;
- (void)_setIndexOfLastUndimmedDetentWhenFloating:(int64_t)a3;
- (void)_setInsetsPresentedViewForGrabber:(BOOL)a3;
- (void)_setIsRemote:(BOOL)a3;
- (void)_setLargeBackground:(id)a3;
- (void)_setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:(id)a3;
- (void)_setLargestUndimmedDetentIdentifierWhenFloating:(id)a3;
- (void)_setMarginInCompactHeight:(double)a3;
- (void)_setMarginInRegularWidthRegularHeight:(double)a3;
- (void)_setMode:(int64_t)a3;
- (void)_setNonLargeBackground:(id)a3;
- (void)_setOcclusionEnabled:(BOOL)a3;
- (void)_setPeeksWhenFloating:(BOOL)a3;
- (void)_setPreferredShadowOpacity:(double)a3;
- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)a3;
- (void)_setPrefersSymmetricCorners:(BOOL)a3;
- (void)_setPresentsWithGesture:(BOOL)a3;
- (void)_setRemoteClientConfiguration:(id)a3;
- (void)_setRemoteContainsFirstResponder:(BOOL)a3;
- (void)_setRemoteDismissing:(BOOL)a3;
- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)a3;
- (void)_setRemoteKeyboardFrame:(CGRect)a3;
- (void)_setRemoteProposedDepthLevel:(double)a3;
- (void)_setShadowRadius:(double)a3;
- (void)_setSheetID:(id)a3;
- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)a3;
- (void)_setShouldDismissWhenTappedOutside:(BOOL)a3;
- (void)_setShouldPresentedViewControllerControlStatusBarAppearance:(BOOL)a3;
- (void)_setShouldScaleDownBehindDescendantSheets:(BOOL)a3;
- (void)_setStandardAppearance:(id)a3;
- (void)_setSubduingEnabled:(BOOL)a3;
- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)a3;
- (void)_setWantsBottomAttached:(BOOL)a3;
- (void)_setWantsFloatingInCompactHeight:(BOOL)a3;
- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)a3;
- (void)_setWantsFullScreen:(BOOL)a3;
- (void)_sheetInteractionDraggingBegan:(id)a3 withRubberBandCoefficient:(double)a4;
- (void)_sheetInteractionDraggingChanged:(id)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5 animateChange:(BOOL)a6;
- (void)_sheetInteractionDraggingEnded:(id)a3;
- (void)_sheetLayoutInfoDidInvalidateDetentValues:(id)a3;
- (void)_sheetLayoutInfoDidInvalidateOutput:(id)a3;
- (void)_sheetLayoutInfoLayout:(id)a3;
- (void)_startInteractiveTransitionWithProgress:(double)a3 fromViewController:(id)a4 completion:(id)a5;
- (void)_transitionDidEnd:(BOOL)a3 completed:(BOOL)a4;
- (void)_transitionWillBegin:(BOOL)a3;
- (void)_tryToConnectToRemoteSheet:(id)a3;
- (void)_updateAnimationController;
- (void)_updateInteractiveTransitionWithProgress:(double)a3;
- (void)_updateLayoutInfoContainerSafeAreaInsets;
- (void)_updateLayoutInfoContainerTraitCollection;
- (void)_updatePresentedViewFrame;
- (void)_updateShouldPresentedViewControllerControlStatusBarAppearance;
- (void)containerViewDidLayoutSubviews;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)executeTransitionCompletionBlock;
- (void)invalidateDetents;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setBackgroundEffect:(id)a3;
- (void)setDetents:(NSArray *)detents;
- (void)setLargestUndimmedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier;
- (void)setPreferredCornerRadius:(CGFloat)preferredCornerRadius;
- (void)setPrefersEdgeAttachedInCompactHeight:(BOOL)prefersEdgeAttachedInCompactHeight;
- (void)setPrefersGrabberVisible:(BOOL)prefersGrabberVisible;
- (void)setPrefersScrollingExpandsWhenScrolledToEdge:(BOOL)prefersScrollingExpandsWhenScrolledToEdge;
- (void)setSelectedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier;
- (void)setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached;
- (void)sheetInteraction:(id)a3 didChangeOffset:(CGPoint)a4;
@end

@implementation UISheetPresentationController

- (BOOL)_inheritsPresentingViewControllerThemeLevel
{
  v3 = [(UISheetPresentationController *)self _hostManagerIfLoaded];
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v4) = [v3 inheritsPresentingViewControllerThemeLevel];
  }

  else
  {
    v5 = [(UISheetPresentationController *)self _layoutInfo];
    v4 = [v5 _wantsFullScreen] ^ 1;
  }

  return v4;
}

- (id)_sheetMetrics
{
  v2 = [(UISheetPresentationController *)self _sheetVisualStyle];
  v3 = [v2 metrics];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [v2 defaultMode];

  return v3;
}

- (BOOL)_isPresentedRemotely
{
  v2 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
  v3 = v2 != 0;

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
  v12 = [(UIPresentationController *)self containerView];
  [v12 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UISheetPresentationController *)self _layoutInfo];
  [v11 _setContainerBounds:{v4, v6, v8, v10}];
}

- (void)_updateLayoutInfoContainerTraitCollection
{
  v5 = [(UIPresentationController *)self containerView];
  v3 = [v5 traitCollection];
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setContainerTraitCollection:v3];
}

- (int64_t)_mode
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _mode];

  return v3;
}

- (void)_updateLayoutInfoContainerSafeAreaInsets
{
  v3 = [(UIPresentationController *)self containerView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIPresentationController *)self containerView];
  v13 = [v12 traitCollection];
  v14 = [v13 verticalSizeClass];

  if (v14 == 2)
  {
    v15 = [(UIPresentationController *)self containerView];
    v16 = [v15 window];
    v17 = [v16 _interfaceOrientationForSceneSafeAreaInsetsIncludingStatusBar:1];

    v18 = [(UIPresentationController *)self containerView];
    v19 = [v18 window];
    v20 = __UIStatusBarManagerForWindow(v19);
    [v20 defaultStatusBarHeightInOrientation:v17];
    v22 = v21;

    v5 = fmax(v5, v22);
  }

  v23 = [(UIPresentationController *)self containerView];
  v24 = [v23 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    v26 = [UIViewLayoutRegion safeAreaLayoutRegionWithCornerAdaptation:2];
    v27 = [(UIPresentationController *)self containerView];
    [v27 edgeInsetsForLayoutRegion:v26];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    if (v35 != v11 || v29 != v5 || v31 != v7 || v33 != v9)
    {
      v5 = v5 + v5;
    }
  }

  v39 = [(UISheetPresentationController *)self _layoutInfo];
  [v39 _setContainerSafeAreaInsets:{v5, v7, v9, v11}];
}

- (void)containerViewWillLayoutSubviews
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(v3);

  if ((v4 & 1) == 0)
  {
    v5 = [(UIPresentationController *)self containerView];
    [v5 bounds];
    v7 = v6;
    v9 = v8;

    v10 = [(UIPresentationController *)self presentedViewController];
    v11 = [(UIPresentationController *)self containerView];
    v12 = [v11 _screen];
    [v12 bounds];
    [v10 _formSheetSizeForWindowWithSize:v7 screenSize:v9];
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

    v25 = [(UISheetPresentationController *)self _hostManager];

    if (!v25)
    {
      v26 = [(UIPresentationController *)self presentedViewController];
      v27 = [v26 view];
      [(UISheetPresentationController *)self _frameOfPresentedViewControllerViewInSuperview];
      [v27 setFrame:?];

      v28 = [(UISheetPresentationController *)self presentedView];
      [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
      [v28 setFrame:?];
    }
  }
}

- (void)_containerViewLayoutSubviews
{
  v54.receiver = self;
  v54.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v54 _containerViewLayoutSubviews];
  v3 = [(UISheetPresentationController *)self _layoutInfo];
  v4 = [(UISheetPresentationController *)self dropShadowView];
  v5 = [(UISheetPresentationController *)self _hostManager];
  if ([v3 _mode] != 1 || (objc_msgSend(v3, "_isFunctionallyFullScreen") & 1) != 0 || (objc_msgSend(v3, "_isHosting") & 1) != 0)
  {
    goto LABEL_4;
  }

  [v3 _untransformedFrame];
  Width = CGRectGetWidth(v55);
  [v3 _screenSize];
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
    v6 = [(UIPresentationController *)self _internalTraitOverrides];
    [(_UITraitOverrides *)v6 _removeTraitToken:?];
  }

  else
  {
LABEL_55:
    v6 = [(UIPresentationController *)self _internalTraitOverrides];
    [v6 setHorizontalSizeClass:1];
  }

  if (-[UISheetPresentationController _forceSheetSemanticContext](self, "_forceSheetSemanticContext") || ([v3 _isFunctionallyFullScreen] & 1) == 0 && (objc_msgSend(v3, "_isHosting") & 1) == 0 && (-[UIPresentationController presentedViewController](self, "presentedViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = _UISheetPresentationControllerStylesSheetsAsCards(v8), v8, v9))
  {
    v7 = [(UIPresentationController *)self _internalTraitOverrides];
    [v7 _setNSIntegerValue:2 forTraitToken:0x1EFE32578];
  }

  else
  {
    v7 = [(UIPresentationController *)self _internalTraitOverrides];
    [(_UITraitOverrides *)v7 _removeTraitToken:?];
  }

  v10 = [(UISheetPresentationController *)self _sheetMetrics];
  [v10 configureDropShadowView:v4 state:v3 presentationController:self];

  v11 = [(UIPresentationController *)self presentedViewController];
  v12 = _UISheetPresentationControllerStylesSheetsAsCards(v11);

  if (v12)
  {
    v13 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    v14 = [(UISheetPresentationController *)self dimmingView];
    v15 = [(UISheetPresentationController *)self _confinedDimmingView];
    if (v13)
    {
      [v13 setScrollingExpandsToLargerDetentWhenScrolledToEdge:{objc_msgSend(v3, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge")}];
      if ([v3 _isInteractionEnabled])
      {
        v16 = [(UISheetPresentationController *)self _isHosting]^ 1;
      }

      else
      {
        v16 = 0;
      }

      [v13 setEnabled:v16];
      [v13 setScrollInteractionEnabled:{objc_msgSend(v3, "_isScrollInteractionEnabled")}];
    }

    if ([v3 _isInteractionEnabled])
    {
      v17 = [(UISheetPresentationController *)self _isPresentedRemotely]^ 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    [v18 setEnabled:v17];

    [v3 _hostedFrameOfPresentedViewInContainerView];
    [(UISheetPresentationController *)self setFrameOfPresentedViewInContainerView:?];
    [v14 setIgnoresTouches:{objc_msgSend(v3, "_shouldDimmingIgnoreTouches")}];
    [v15 setIgnoresTouches:{objc_msgSend(v3, "_shouldDimmingIgnoreTouches")}];
    [v14 setUserInteractionEnabled:{objc_msgSend(v3, "_isDimmingEnabled")}];
    [v15 setUserInteractionEnabled:{objc_msgSend(v3, "_isDimmingEnabled")}];
    [v3 _percentDimmed];
    [v14 setPercentDisplayed:?];
    [v3 _confinedPercentDimmed];
    [v15 setPercentDisplayed:?];
    [v3 _confinedPercentLightened];
    [v15 setPercentLightened:?];
    if ([v3 _wantsGrabber])
    {
      v19 = [v3 _isHosting] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    [v4 _setHasGrabber:v19];
    [(UISheetPresentationController *)self _grabberPreferredSize];
    [v4 _setGrabberPreferredSize:?];
    [v3 _grabberSpacing];
    [v4 _setGrabberSpacing:?];
    [v4 _setGrabberEdge:{objc_msgSend(v3, "_isInverted")}];
    [v3 _grabberAlpha];
    [v4 _setGrabberAlpha:?];
    [v4 _setInsetsContentViewForGrabber:{objc_msgSend(v3, "_insetsContentViewForGrabber")}];
    [v4 _setGrabberBlurEnabled:{objc_msgSend(v3, "_isGrabberBlurEnabled")}];
    if ((!-[UIPresentationController presenting](self, "presenting") || [v3 _isPresented]) && !-[UIPresentationController dismissing](self, "dismissing") && !-[UIPresentationController _transitioningFrom](self, "_transitioningFrom") && !-[UISheetPresentationController _isDraggingAndTransitioning](self, "_isDraggingAndTransitioning") && !-[UISheetPresentationController _isRemoteDismissing](self, "_isRemoteDismissing") && !-[UISheetPresentationController _didTearOff](self, "_didTearOff"))
    {
      [(UISheetPresentationController *)self _updatePresentedViewFrame];
      [v3 _alpha];
      [v4 setAlpha:?];
    }

    [v3 _touchInsets];
    [v4 setContentTouchInsets:?];
    [v3 _hostedCornerRadii];
    [v4 setEnvironmentMatchingCornerRadii:?];
    if (-[UISheetPresentationController _isRootPresentation](self, "_isRootPresentation") && ([v3 _wantsFullScreen] & 1) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      if (![(UISheetPresentationController *)self _isHosting]&& !v5)
      {
        v20 = [v3 _background];
      }
    }

    v21 = [v4 _background];

    if (v21 != v20)
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v50 = __61__UISheetPresentationController__containerViewLayoutSubviews__block_invoke;
      v51 = &unk_1E70F35B8;
      v52 = v4;
      v53 = v20;
      if ([(UISheetPresentationController *)self _isDragging])
      {
        _UISheetAnimateWithCompletion(v49, 0);
      }

      else
      {
        v50(v49);
      }
    }

    v44 = v5;
    [v3 _shadowOpacity];
    v23 = v22;
    v24 = [v4 layer];
    *&v25 = v23;
    [v24 setShadowOpacity:v25];

    [v3 _shadowRadius];
    v27 = v26;
    v28 = [v4 layer];
    [v28 setShadowRadius:v27];

    [v3 _magicShadowOpacity];
    [v4 setMagicShadowAlpha:?];
    objc_opt_self();
    if (fluidPresentationTransitionsEnabled == 1 && (-[UIPresentationController presentedViewController](self, "presentedViewController"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 modalTransitionStyle], v29, v30 != 1) || (!-[UIPresentationController presenting](self, "presenting") || objc_msgSend(v3, "_isPresented")) && !-[UIPresentationController dismissing](self, "dismissing"))
    {
      if (v3)
      {
        [v3 _transform];
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
      [v4 setTransform:v45];
    }

    [(UISheetPresentationController *)self _updateShouldPresentedViewControllerControlStatusBarAppearance];
    v33 = [(UISheetPresentationController *)self _configuration];
    v34 = [(UISheetPresentationController *)self _connectedRemoteSheet];
    [v34 _setSheetConfiguration:v33];

    v35 = [v3 _wantsFullScreen];
    if ([(UISheetPresentationController *)self _isPresentedRemotely]&& (v35 & 1) == 0)
    {
      v36 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
      if (objc_opt_respondsToSelector())
      {
        v37 = [v3 _containsFirstResponder];
        v38 = v14;
        v39 = v13;
        v40 = [v3 _firstResponderRequiresKeyboard];
        [v3 _keyboardFrame];
        v41 = v40;
        v13 = v39;
        v14 = v38;
        [v36 _sheetPresentationControllerDidChangeContainsFirstResponder:v37 firstResponderRequiresKeyboard:v41 keyboardFrame:?];
      }

      else
      {
        v42 = objc_alloc_init(_UISheetPresentationControllerClientConfiguration);
        -[_UISheetPresentationControllerClientConfiguration setContainsFirstResponder:](v42, "setContainsFirstResponder:", [v3 _containsFirstResponder]);
        -[_UISheetPresentationControllerClientConfiguration setFirstResponderRequiresKeyboard:](v42, "setFirstResponderRequiresKeyboard:", [v3 _firstResponderRequiresKeyboard]);
        [v3 _keyboardFrame];
        [(_UISheetPresentationControllerClientConfiguration *)v42 setKeyboardFrame:?];
        [v3 _proposedDepthLevel];
        [(_UISheetPresentationControllerClientConfiguration *)v42 setProposedDepthLevel:?];
        [v36 _sheetPresentationControllerClientConfigurationDidChange:v42];
      }
    }

    v5 = v44;
    if (objc_opt_respondsToSelector())
    {
      v43 = [v44 shouldOccludeDuringPresentation];
    }

    else if ([v3 _isModelDimmingEnabled])
    {
      v43 = [(UISheetPresentationController *)self _isRootPresentation]^ 1;
    }

    else
    {
      v43 = 0;
    }

    [(UISheetPresentationController *)self _setOcclusionEnabled:v43];
    [(UISheetPresentationController *)self _setSubduingEnabled:v43];
  }
}

- (BOOL)prefersGrabberVisible
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsGrabber];

  return v3;
}

- (UISheetPresentationController)_parentSheetPresentationController
{
  v3 = [(UIPresentationController *)self _parentPresentationController];
  if (v3)
  {
    do
    {
      if ([v3 _isPresentedInFullScreen])
      {
        break;
      }

      v4 = [v3 _parentPresentationController];

      v3 = v4;
    }

    while (v4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[UIPresentationController shouldPresentInFullscreen](self, "shouldPresentInFullscreen"), v5 == [v3 shouldPresentInFullscreen]))
  {
    v6 = v3;
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
  v3 = [(UISheetPresentationController *)self _layoutInfo];
  -[UISheetPresentationController _setShouldPresentedViewControllerControlStatusBarAppearance:](self, "_setShouldPresentedViewControllerControlStatusBarAppearance:", [v3 _shouldPresentedViewControllerControlStatusBarAppearance]);
}

- (_UISheetPresentationControllerConfiguration)_configuration
{
  v3 = [(UISheetPresentationController *)self _layoutInfo];
  v4 = [(UISheetPresentationController *)self detents];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      if (![v7 _type])
      {
        v8 = [v7 identifier];
        [v7 resolvedValueInContext:v3];
        v9 = [UISheetPresentationControllerDetent _detentWithIdentifier:v8 constant:?];
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
  v11 = [(UISheetPresentationController *)self selectedDetentIdentifier];
  [(_UISheetPresentationControllerConfiguration *)v10 _setSelectedDetentIdentifier:v11];

  v12 = [(UISheetPresentationController *)self _standardAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setStandardAppearance:v12];

  v13 = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setEdgeAttachedCompactHeightAppearance:v13];

  v14 = [(UISheetPresentationController *)self _floatingAppearance];
  [(_UISheetPresentationControllerConfiguration *)v10 _setFloatingAppearance:v14];

  [(_UISheetPresentationControllerConfiguration *)v10 _setDetentDirectionWhenFloating:[(UISheetPresentationController *)self _detentDirectionWhenFloating]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPrefersScrollingResizesWhenDetentDirectionIsDown:[(UISheetPresentationController *)self _prefersScrollingResizesWhenDetentDirectionIsDown]];
  [(_UISheetPresentationControllerConfiguration *)v10 _setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:[(UISheetPresentationController *)self prefersScrollingExpandsWhenScrolledToEdge]];
  v15 = [v3 _parentLayoutInfo];
  if (v15)
  {
    v16 = [(UIPresentationController *)self presentedViewController];
    NSClassFromString(&cfstr_Uiactivityview.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [v15 _depthLevel];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentDepthLevel:?];
      [v15 _stackAlignmentFrame];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentStackAlignmentFrame:?];
      [v15 _fullHeightUntransformedFrameForDepthLevel];
      [(_UISheetPresentationControllerConfiguration *)v10 _setHostParentFullHeightUntransformedFrameForDepthLevel:?];
    }
  }

  return v10;
}

- (BOOL)_shouldScaleDownBehindDescendantSheets
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _shouldScaleDownBehindDescendants];

  return v3;
}

- (BOOL)_peeksWhenFloating
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _peeksWhenFloating];

  return v3;
}

- (BOOL)_wantsFullScreen
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsFullScreen];

  return v3;
}

- (double)_cornerRadiusForPresentationAndDismissal
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _dismissCornerRadius];
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
  v3 = [(UIPresentationController *)self containerView];
  v4 = [v3 window];
  v5 = [(UIPresentationController *)self presentedViewController];
  v6 = [v5 _backgroundColorForModalFormSheet];

  v7 = [(UISheetPresentationController *)self dimmingView];
  [v7 setDimmingColor:v6];

  v8 = [(UISheetPresentationController *)self _confinedDimmingView];
  [v8 setDimmingColor:v6];

  v9 = [(UIPresentationController *)self presentedViewController];
  v10 = _UISheetPresentationControllerStylesSheetsAsCards(v9);

  if ((v10 & 1) == 0)
  {
    v11 = [(UISheetPresentationController *)self _shouldDismissWhenTappedOutside];
    v12 = [(UISheetPresentationController *)self dimmingView];
    [v12 setIgnoresTouches:!v11];

    v13 = [(UISheetPresentationController *)self _confinedDimmingView];
    [v13 setIgnoresTouches:!v11];
  }

  if ([(UISheetPresentationController *)self _isRootPresentation])
  {
    v14 = [(UISheetPresentationController *)self _isPresentedRemotely];
  }

  else
  {
    v14 = 1;
  }

  v15 = [(UIPresentationController *)self presentedViewController];
  if ((_UISheetPresentationControllerStylesSheetsAsCards(v15) & 1) == 0)
  {

    goto LABEL_17;
  }

  v16 = [(UISheetPresentationController *)self _hostManager];

  if (v16)
  {
LABEL_17:
    v24 = 0;
    v23 = 0;
    goto LABEL_18;
  }

  v17 = [v3 traitCollection];
  if ([v17 userInterfaceIdiom] == 1)
  {
    v18 = [v4 screen];
    [v18 _displayCornerRadius];
    v20 = v19;

    v21 = 3;
    if (!v14)
    {
      v21 = 1;
    }

    v22 = 2;
    if (!v14)
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

    if (v14)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = v14;
LABEL_18:
  v25 = [UIDropShadowView alloc];
  v26 = [(UIPresentationController *)self presentedViewController];
  v27 = [(UIDropShadowView *)v25 initWithFrame:v23 independentCorners:v24 supportsShadow:_UISheetPresentationControllerStylesSheetsAsCards(v26) stylesSheetsAsCards:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  dropShadowView = self->_dropShadowView;
  self->_dropShadowView = v27;

  [(UIDropShadowView *)self->_dropShadowView set_delegate:self];
  v29 = [(UISheetPresentationController *)self _multilayerAssertion];

  if (v29)
  {
    v30 = [(UISheetPresentationController *)self _multilayerAssertion];
    [v30 invalidate];
  }

  if (_UISolariumEnabled())
  {
    v31 = [(UIView *)&self->_dropShadowView->super.super.super.isa _takeMultiLayerAssertionForReason:?];
    [(UISheetPresentationController *)self set_multilayerAssertion:v31];
  }

  [(UISheetPresentationController *)self _updateLayoutInfoContainerSafeAreaInsets];
  [(UISheetPresentationController *)self _updateLayoutInfoContainerTraitCollection];
  v32 = [(UIPresentationController *)self presentingViewController];
  v33 = [(UISheetPresentationController *)self _layoutInfo];
  [v33 _setPresentingViewController:v32];

  v34 = [(UIPresentationController *)self presentedViewController];
  v35 = [(UISheetPresentationController *)self _layoutInfo];
  [v35 _setPresentedViewController:v34];

  v36 = [(UISheetPresentationController *)self _layoutInfo];
  [v36 _setContainerView:v3];

  v37 = [(UISheetPresentationController *)self _parentSheetPresentationController];
  v38 = [v37 _layoutInfo];
  v39 = [(UISheetPresentationController *)self _layoutInfo];
  [v39 _setParentLayoutInfo:v38];

  v40 = [(UISheetPresentationController *)self _layoutInfo];
  v41 = [v37 _layoutInfo];
  [v41 _setChildLayoutInfo:v40];

  v42 = [(UIPresentationController *)self presentedViewController];
  LODWORD(v41) = _UISheetPresentationControllerStylesSheetsAsCards(v42);

  if (v41)
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

    if (v44 & v14)
    {
      v45 = [(UISheetPresentationController *)self dropShadowView];
      v46 = [(UISheetPresentationController *)self _sheetInteraction];
      [v45 addInteraction:v46];

      v47 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleExteriorPan_];
      exteriorPanGestureRecognizer = self->__exteriorPanGestureRecognizer;
      self->__exteriorPanGestureRecognizer = v47;

      [(UIGestureRecognizer *)self->__exteriorPanGestureRecognizer setName:@"com.apple.UIKit.UISheetPresentationControllerExteriorPanGesture"];
      [(UIPanGestureRecognizer *)self->__exteriorPanGestureRecognizer setDelegate:self];
      [v4 addGestureRecognizer:self->__exteriorPanGestureRecognizer];
      if ([(UISheetPresentationController *)self _allowsTearOff])
      {
        v49 = [(UISheetPresentationController *)self _tearOffInteraction];

        if (v49)
        {
          v50 = [(UISheetPresentationController *)self dropShadowView];
          v51 = [(UISheetPresentationController *)self _tearOffInteraction];
          [v50 addInteraction:v51];
        }
      }
    }

    v52 = [(UISheetPresentationController *)self _expectedRemoteSheet];
    [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:v52];
  }

  [v3 layoutIfNeeded];
  v53 = [(UISheetPresentationController *)self _layoutInfo];
  [v53 _hostedFrameOfPresentedViewInContainerView];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [(UISheetPresentationController *)self presentedView];
  [v62 _setFrameIgnoringLayerTransform:{v55, v57, v59, v61}];

  LODWORD(v62) = os_variant_has_internal_diagnostics();
  v63 = [(UISheetPresentationController *)self dropShadowView];
  [v63 bounds];
  IsEmpty = CGRectIsEmpty(v82);
  if (v62)
  {
    if (IsEmpty)
    {
      v68 = [(UIPresentationController *)self containerView];
      [v68 bounds];
      v69 = CGRectIsEmpty(v84);

      if (v69)
      {
        goto LABEL_45;
      }

      v63 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v63, OS_LOG_TYPE_FAULT, "dropShadowView bounds should not be empty!", buf, 2u);
      }
    }

    goto LABEL_44;
  }

  if (!IsEmpty)
  {
LABEL_44:

    goto LABEL_45;
  }

  v65 = [(UIPresentationController *)self containerView];
  [v65 bounds];
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
  v70 = [(UISheetPresentationController *)self _hostManager];

  if (!v70)
  {
    v71 = [(UIPresentationController *)self presentedViewController];
    v72 = [v71 view];
    v73 = [(UISheetPresentationController *)self dropShadowView];
    [v73 setContentView:v72];

    v74 = [(UISheetPresentationController *)self dropShadowView];
    v75 = [(UIPresentationController *)self presentedViewController];
    [v75 setDropShadowView:v74];
  }

  if ([(UISheetPresentationController *)self _isRootPresentation])
  {
    v76 = [(UISheetPresentationController *)self dropShadowView];
    [v76 setAutoresizingMask:18];
  }

  [(UISheetPresentationController *)self _registerForKeyboardNotificationsIfNecessary];
  [(UISheetPresentationController *)self _transitionWillBegin:1];
  v77 = [(UISheetPresentationController *)self _presentationTransitionWillBeginHandler];
  v78 = v77;
  if (v77)
  {
    (*(v77 + 16))(v77);
  }

  [(UISheetPresentationController *)self set_presentationTransitionWillBeginHandler:0];
  v79 = [MEMORY[0x1E696AD88] defaultCenter];
  [v79 postNotificationName:@"_UISheetWillAppearNotification" object:0];
}

- (_UIRemoteSheet)_expectedRemoteSheet
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(v3);
  if ((objc_opt_respondsToSelector() & 1) != 0 && v4 && ([v3 _containedRemoteViewController], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ForceSheetHosting, @"ForceSheetHosting") & 1) == 0 && byte_1ED48B5E4 && (v6 = objc_opt_class(), _UISheetPresentationControllerFindViewControllerOfClass(v3, v6, 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_10:
    v10 = v5;
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = _UISheetPresentationControllerFindViewControllerOfClass(v3, v7, v8);
  v10 = [v9 _remoteSheet];

  if (!v10)
  {
    if ((objc_opt_respondsToSelector() & v4 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v5 = [v3 _remoteSheet];
    goto LABEL_10;
  }

LABEL_11:
  v11 = [(UISheetPresentationController *)self _recursivelyResolvedRemoteSheetForRemoteSheet:v10];

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
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _detents];

  return v3;
}

- (BOOL)_wantsBottomAttached
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsEdgeAttached];

  return v3;
}

- (BOOL)prefersEdgeAttachedInCompactHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsEdgeAttachedInCompactHeight];

  return v3;
}

- (BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _widthFollowsPreferredContentSizeWhenEdgeAttached];

  return v3;
}

- (double)_grabberTopSpacing
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _grabberSpacing];
  v4 = v3;

  return v4;
}

- (double)_additionalMinimumTopInset
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _additionalMinimumTopInset];
  v4 = v3;

  return v4;
}

- (BOOL)_insetsPresentedViewForGrabber
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _insetsContentViewForGrabber];

  return v3;
}

- (CGFloat)preferredCornerRadius
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _preferredCornerRadius];
  v4 = v3;

  return v4;
}

- (double)_preferredShadowOpacity
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _preferredShadowOpacity];
  v4 = v3;

  return v4;
}

- (double)_shadowRadius
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _shadowRadius];
  v4 = v3;

  return v4;
}

- (UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _selectedDetentIdentifier];

  return v3;
}

- (_UISheetPresentationControllerAppearance)_standardAppearance
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _standardAppearance];

  return v3;
}

- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _edgeAttachedCompactHeightAppearance];

  return v3;
}

- (_UISheetPresentationControllerAppearance)_floatingAppearance
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _floatingAppearance];

  return v3;
}

- (int64_t)_detentDirectionWhenFloating
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsInvertedWhenFloating];

  return v3;
}

- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _prefersScrollingResizesWhenDetentDirectionIsDown];

  return v3;
}

- (BOOL)prefersScrollingExpandsWhenScrolledToEdge
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge];

  return v3;
}

- (void)containerViewDidLayoutSubviews
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(v3);

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
    v4 = [(UIPresentationController *)self presentedViewController];
    v5 = _UISheetPresentationControllerStylesSheetsAsCards(v4);

    if (v5)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__keyboardAboutToShow_ name:@"UIKeyboardPrivateWillShowNotification" object:0];
      [v8 addObserver:self selector:sel__keyboardAboutToHide_ name:@"UIKeyboardPrivateWillHideNotification" object:0];
      [v8 addObserver:self selector:sel__keyboardAboutToChangeFrame_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
      v6 = [(UIPresentationController *)self containerView];
      v7 = [v6 window];
      [v8 addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:v7];

      [(UISheetPresentationController *)self _setHasRegisteredForKeyboardNotifications:1];
    }
  }
}

- (void)_sendDidInvalidateUntransformedFrame
{
  v3 = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:self];
  }
}

- (BOOL)_isHosting
{
  v2 = [(UISheetPresentationController *)self _connectedRemoteSheet];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldOccludeDuringPresentation
{
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = _UISheetPresentationControllerStylesSheetsAsCards(v2);

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
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  if (v4)
  {
    v6 = v4;
    [v4 _transformOfPresentedViewInContainerView];
    v4 = v6;
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
  v3 = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    [v3 executeTransitionCompletionBlock];
  }
}

- (void)_updatePresentedViewFrame
{
  v12 = [(UISheetPresentationController *)self _layoutInfo];
  [v12 _hostedUntransformedFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UISheetPresentationController *)self presentedView];
  [v11 _setFrameIgnoringLayerTransform:{v4, v6, v8, v10}];
}

- (void)_sendDidInvalidateDetentValues
{
  v3 = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _sheetPresentationControllerDidInvalidateDetentValues:self];
  }
}

- (BOOL)_isGeneratingAnimations
{
  v2 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  v3 = [v2 isGeneratingAnimations];

  return v3;
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
    v3 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    v4 = v3;
    if (v3 && [v3 isEnabled])
    {
      [v4 setEnabled:0];
      [v4 setEnabled:1];
    }

    v5 = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    v6 = v5;
    if (v5 && [v5 isEnabled])
    {
      [v6 setEnabled:0];
      [v6 setEnabled:1];
    }
  }

  [(UISheetPresentationController *)self _transitionWillBegin:0];
}

- (BOOL)_shouldPreserveFirstResponder
{
  v3 = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 shouldPreserveFirstResponder];
  }

  else
  {
    v4 = [(UISheetPresentationController *)self _isDimmingAlwaysVisible];
  }

  v5 = v4;

  return v5;
}

- (BOOL)_isDimmingAlwaysVisible
{
  v3 = [(UISheetPresentationController *)self _standardAppearance];
  v4 = [v3 _isDimmingAlwaysVisible];

  v5 = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  v6 = v5;
  v7 = (v5 == 0) & v4;
  if (v5 && (v4 & 1) != 0)
  {
    v7 = [v5 _isDimmingAlwaysVisible];
  }

  v8 = [(UISheetPresentationController *)self _floatingAppearance];
  v9 = v8;
  v10 = (v8 == 0) & v7;
  if (v8 && v7)
  {
    v10 = [v8 _isDimmingAlwaysVisible];
  }

  return v10;
}

- (BOOL)_allowsInteractiveDismissWhenFullScreen
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _allowsInteractiveDismissWhenFullScreen];

  return v3;
}

- (BOOL)_tucksIntoUnsafeAreaInCompactHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _tucksIntoUnsafeAreaInCompactHeight];

  return v3;
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
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _largeBackground];

  return v3;
}

- (_UIViewMaterial)_nonLargeBackground
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _nonLargeBackground];

  return v3;
}

- (BOOL)_isDragging
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isDragging];

  return v3;
}

- (CGRect)_currentPresentedViewFrame
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _transformedFrame];
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
  v3 = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _sheetPresentationControllerPerformLayout:self];
  }
}

- (UISheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v15.receiver = self;
  v15.super_class = UISheetPresentationController;
  v4 = [(UIPresentationController *)&v15 initWithPresentedViewController:a3 presentingViewController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UISheetPresentationController *)v4 _sheetMetrics];
    v7 = [_UISheetLayoutInfoProvider makeLayoutInfoWithMetrics:v6];
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
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v5 selector:sel__accessibilityReduceMotionStatusDidChange name:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0];
  }

  return v5;
}

+ (void)_registerPlatformHostProvider:(Class)a3 forIdiom:(int64_t)a4
{
  if (!__UISheetPresentationControllerIdiomsToPlatformHostProviderClasses)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
    __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses = v8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromClass(a3);
    [v11 handleFailureInMethod:a2 object:a1 file:@"UISheetPresentationController.m" lineNumber:412 description:{@"platformHostProvider of type %@ does not conform to _UISheetHostManagerProvider.", v12}];
  }

  v10 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v10 setObject:a3 forKey:v13];
}

+ (id)_platformHostManagerForController:(id)a3
{
  v3 = a3;
  v4 = __UISheetPresentationControllerIdiomsToPlatformHostProviderClasses;
  v5 = MEMORY[0x1E696AD98];
  v6 = [v3 traitCollection];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "userInterfaceIdiom")}];
  v8 = [v4 objectForKey:v7];

  if (v8)
  {
    v8 = [v8 managerForPresentationController:v3];
  }

  return v8;
}

- (void)_configureHostWindow:(id)a3
{
  v12 = a3;
  [v12 _setOverrideParentTraitEnvironment:self];
  v4 = [v12 _rootPresentationController];
  [v4 set_forceSheetSemanticContext:1];

  v5 = [(UIPresentationController *)self _realSourceView];
  v6 = [v5 window];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(UIPresentationController *)self presentingViewController];
    v10 = [v9 view];
    v8 = [v10 window];
  }

  v11 = [v8 _normalInheritedTintColor];
  [v12 setTintColor:v11];

  [v12 makeKeyWindow];
}

- (void)_configureRootPresentationControllerForHostWindow:(id)a3
{
  v3 = [a3 _rootPresentationController];
  [v3 set_shouldDisableAppearanceCallbacksForPresentedViewController:1];
}

- (id)_createVisualStyleForProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 styleForSheetPresentationController:self];
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
    v8 = [(UIPresentationController *)&v11 _createVisualStyleForProvider:v4];
  }

  v9 = v8;

  return v9;
}

- (void)_setAdditionalMinimumTopInset:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setAdditionalMinimumTopInset:a3];
}

- (int64_t)_horizontalAlignment
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _horizontalAlignment];

  return v3;
}

- (void)_setHorizontalAlignment:(int64_t)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setHorizontalAlignment:a3];
}

- (double)_marginInCompactHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _marginInCompactHeight];
  v4 = v3;

  return v4;
}

- (void)_setMarginInCompactHeight:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setMarginInCompactHeight:a3];
}

- (double)_marginInRegularWidthRegularHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _marginInRegularWidthRegularHeight];
  v4 = v3;

  return v4;
}

- (void)_setMarginInRegularWidthRegularHeight:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setMarginInRegularWidthRegularHeight:a3];
}

- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setTucksIntoUnsafeAreaInCompactHeight:v3];
}

- (BOOL)_allowsAsymmetricVerticalMargins
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _allowsAsymmetricVerticalMargins];

  return v3;
}

- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setAllowsAsymmetricVerticalMargins:v3];
}

- (void)_setShouldScaleDownBehindDescendantSheets:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setShouldScaleDownBehindDescendants:v3];
}

- (void)_setPeeksWhenFloating:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPeeksWhenFloating:v3];
}

- (void)_accessibilityReduceMotionStatusDidChange
{
  v3 = _AXSReduceMotionEnabled() != 0;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setReduceMotionEnabled:v3];
}

- (BOOL)_shouldAdjustDetentsToAvoidKeyboard
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _shouldAdjustDetentsToAvoidKeyboard];

  return v3;
}

- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setShouldAdjustDetentsToAvoidKeyboard:v3];
}

- (void)_setWantsFullScreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsFullScreen:v3];
}

- (void)_setWantsBottomAttached:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsEdgeAttached:v3];
}

- (void)setPrefersEdgeAttachedInCompactHeight:(BOOL)prefersEdgeAttachedInCompactHeight
{
  v3 = prefersEdgeAttachedInCompactHeight;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsEdgeAttachedInCompactHeight:v3];
}

- (BOOL)_wantsFloatingInRegularWidthCompactHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsFloatingInRegularWidthCompactHeight];

  return v3;
}

- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsFloatingInRegularWidthCompactHeight:v3];
}

- (BOOL)_wantsFloatingInCompactHeight
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _wantsFloatingInCompactHeight];

  return v3;
}

- (void)_setWantsFloatingInCompactHeight:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsFloatingInCompactHeight:v3];
}

- (void)setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)widthFollowsPreferredContentSizeWhenEdgeAttached
{
  v3 = widthFollowsPreferredContentSizeWhenEdgeAttached;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWidthFollowsPreferredContentSizeWhenEdgeAttached:v3];
}

- (void)setPrefersGrabberVisible:(BOOL)prefersGrabberVisible
{
  v3 = prefersGrabberVisible;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsGrabber:v3];
}

- (void)_setGrabberTopSpacing:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setGrabberSpacing:a3];
}

- (void)_setGrabberPreferredSize:(CGSize)a3
{
  if (self->__grabberPreferredSize.width != a3.width || self->__grabberPreferredSize.height != a3.height)
  {
    self->__grabberPreferredSize = a3;
    v5 = [(UIPresentationController *)self containerView];
    [v5 setNeedsLayout];
  }
}

- (id)backgroundEffect
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 backgroundEffect];

  return v3;
}

- (void)setBackgroundEffect:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 setBackgroundEffect:v4];
}

- (void)_setInsetsPresentedViewForGrabber:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setInsetsContentViewForGrabber:v3];
}

- (BOOL)_isGrabberBlurEnabled
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isGrabberBlurEnabled];

  return v3;
}

- (void)_setGrabberBlurEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setGrabberBlurEnabled:v3];
}

- (void)_setCornerRadiusForPresentationAndDismissal:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setDismissCornerRadius:a3];
}

- (void)setPreferredCornerRadius:(CGFloat)preferredCornerRadius
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPreferredCornerRadius:preferredCornerRadius];
}

- (BOOL)_prefersSymmetricCorners
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _prefersSymmetricCorners];

  return v3;
}

- (void)_setPrefersSymmetricCorners:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPrefersSymmetricCorners:v3];
}

- (void)_setPreferredShadowOpacity:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPreferredShadowOpacity:a3];
}

- (void)_setShadowRadius:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setShadowRadius:a3];
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

  v7 = [(UISheetPresentationController *)self _layoutInfo];
  [v7 _setDetents:v8];
}

- (void)invalidateDetents
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _invalidateDetents];
}

- (void)setSelectedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)selectedDetentIdentifier
{
  v4 = selectedDetentIdentifier;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setSelectedDetentIdentifier:v4];
}

- (int64_t)_indexOfCurrentDetent
{
  v3 = [(UISheetPresentationController *)self detents];
  v4 = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v5 = _UISheetIndexOfDetentWithIdentifier(v3, v4, 0);

  return v5;
}

- (void)_setIndexOfCurrentDetent:(int64_t)a3
{
  v7 = [(UISheetPresentationController *)self detents];
  v5 = [v7 objectAtIndexedSubscript:a3];
  v6 = [v5 _identifier];
  [(UISheetPresentationController *)self setSelectedDetentIdentifier:v6];
}

- (void)_setStandardAppearance:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setStandardAppearance:v4];
}

- (void)_setEdgeAttachedCompactHeightAppearance:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setEdgeAttachedCompactHeightAppearance:v4];
}

- (void)_setFloatingAppearance:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setFloatingAppearance:v4];
}

- (UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier
{
  v2 = [(UISheetPresentationController *)self _standardAppearance];
  v3 = [v2 _largestUndimmedDetentIdentifier];

  return v3;
}

- (void)setLargestUndimmedDetentIdentifier:(UISheetPresentationControllerDetentIdentifier)largestUndimmedDetentIdentifier
{
  v4 = [_UISheetPresentationControllerAppearance appearanceWithLargestUndimmedDetentIdentifier:largestUndimmedDetentIdentifier];
  [(UISheetPresentationController *)self _setStandardAppearance:v4];
}

- (NSString)_largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight
{
  v2 = [(UISheetPresentationController *)self _edgeAttachedCompactHeightAppearance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _largestUndimmedDetentIdentifier];
  }

  else
  {
    v4 = @"com.apple.UIKit.unspecified";
  }

  return v4;
}

- (void)_setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 == @"com.apple.UIKit.unspecified")
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v5 = [(__CFString *)v4 isEqual:@"com.apple.UIKit.unspecified"];

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
  v2 = [(UISheetPresentationController *)self _floatingAppearance];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _largestUndimmedDetentIdentifier];
  }

  else
  {
    v4 = @"com.apple.UIKit.unspecified";
  }

  return v4;
}

- (void)_setLargestUndimmedDetentIdentifierWhenFloating:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 == @"com.apple.UIKit.unspecified")
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v5 = [(__CFString *)v4 isEqual:@"com.apple.UIKit.unspecified"];

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
  v3 = [(UISheetPresentationController *)self detents];
  v4 = [(UISheetPresentationController *)self largestUndimmedDetentIdentifier];
  v5 = _UISheetIndexOfDetentWithIdentifier(v3, v4, -1);

  return v5;
}

- (void)_setIndexOfLastUndimmedDetent:(int64_t)a3
{
  if (a3 == -1)
  {

    [(UISheetPresentationController *)self setLargestUndimmedDetentIdentifier:0];
  }

  else
  {
    v7 = [(UISheetPresentationController *)self detents];
    v5 = [v7 objectAtIndexedSubscript:a3];
    v6 = [v5 _identifier];
    [(UISheetPresentationController *)self setLargestUndimmedDetentIdentifier:v6];
  }
}

- (int64_t)_indexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight
{
  v3 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight];
  if (v3 == @"com.apple.UIKit.unspecified")
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  if (v3)
  {
    v5 = [(__CFString *)v3 isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = [(UISheetPresentationController *)self detents];
  v8 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight];
  v9 = _UISheetIndexOfDetentWithIdentifier(v7, v8, -1);

  return v9;
}

- (void)_setIndexOfLastUndimmedDetentWhenEdgeAttachedInCompactHeight:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"com.apple.UIKit.unspecified";
  }

  else if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UISheetPresentationController *)self detents];
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 _identifier];

    v5 = v8;
  }

  v9 = v5;
  [(UISheetPresentationController *)self _setLargestUndimmedDetentIdentifierWhenEdgeAttachedInCompactHeight:v5];
}

- (int64_t)_indexOfLastUndimmedDetentWhenFloating
{
  v3 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenFloating];
  if (v3 == @"com.apple.UIKit.unspecified")
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  if (v3)
  {
    v5 = [(__CFString *)v3 isEqual:@"com.apple.UIKit.unspecified"];

    if (v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = [(UISheetPresentationController *)self detents];
  v8 = [(UISheetPresentationController *)self _largestUndimmedDetentIdentifierWhenFloating];
  v9 = _UISheetIndexOfDetentWithIdentifier(v7, v8, -1);

  return v9;
}

- (void)_setIndexOfLastUndimmedDetentWhenFloating:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"com.apple.UIKit.unspecified";
  }

  else if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UISheetPresentationController *)self detents];
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 _identifier];

    v5 = v8;
  }

  v9 = v5;
  [(UISheetPresentationController *)self _setLargestUndimmedDetentIdentifierWhenFloating:v5];
}

- (NSString)_sheetID
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _sheetID];

  return v3;
}

- (void)_setSheetID:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setSheetID:v4];
}

- (NSString)_hiddenAncestorSheetID
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _hiddenAncestorSheetID];

  return v3;
}

- (void)_setHiddenAncestorSheetID:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setHiddenAncestorSheetID:v4];
}

- (BOOL)_isHidden
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isHidden];

  return v3;
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setHidden:v3];
}

- (BOOL)_presentsWithGesture
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _presentsWithGesture];

  return v3;
}

- (void)_setPresentsWithGesture:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPresentsWithGesture:v3];
}

- (void)_setDetentDirectionWhenFloating:(int64_t)a3
{
  v3 = a3 == 1;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setWantsInvertedWhenFloating:v3];
}

- (BOOL)_shouldDismissWhenTappedOutside
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _shouldDismissWhenTappedOutside];

  return v3;
}

- (void)_setShouldDismissWhenTappedOutside:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setShouldDismissWhenTappedOutside:v3];
}

- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setAllowsInteractiveDismissWhenFullScreen:v3];
}

- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPrefersScrollingResizesWhenDetentDirectionIsDown:v3];
}

- (void)setPrefersScrollingExpandsWhenScrolledToEdge:(BOOL)prefersScrollingExpandsWhenScrolledToEdge
{
  v3 = prefersScrollingExpandsWhenScrolledToEdge;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:v3];
}

- (void)_realSourceViewGeometryDidChange
{
  v4 = [(UIPresentationController *)self _realSourceView];
  v15 = v4;
  if (v4)
  {
    v2 = [v4 window];
    [v15 bounds];
    [v2 convertRect:v15 fromView:?];
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

  v13 = [(UISheetPresentationController *)self _layoutInfo];
  [v13 _setSourceFrame:{v6, v8, v10, v12}];

  v14 = v15;
  if (v15)
  {

    v14 = v15;
  }
}

- (void)_setMode:(int64_t)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setMode:a3];
}

- (void)_setLargeBackground:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setLargeBackground:v4];
}

- (void)_setNonLargeBackground:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self _layoutInfo];
  [v5 _setNonLargeBackground:v4];
}

- (double)_velocity
{
  v2 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  [v2 currentVelocity];
  v4 = v3;

  return v4;
}

- (void)_setConfiguration:(id)a3
{
  v141 = a3;
  lastConfiguration = self->__lastConfiguration;
  if (!lastConfiguration || (v6 = -[_UISheetPresentationControllerConfiguration _shouldScaleDownBehindDescendantSheets](lastConfiguration, "_shouldScaleDownBehindDescendantSheets"), v6 != [v141 _shouldScaleDownBehindDescendantSheets]))
  {
    -[UISheetPresentationController _setShouldScaleDownBehindDescendantSheets:](self, "_setShouldScaleDownBehindDescendantSheets:", [v141 _shouldScaleDownBehindDescendantSheets]);
  }

  v7 = self->__lastConfiguration;
  if (!v7 || (v8 = -[_UISheetPresentationControllerConfiguration _peeksWhenFloating](v7, "_peeksWhenFloating"), v8 != [v141 _peeksWhenFloating]))
  {
    -[UISheetPresentationController _setPeeksWhenFloating:](self, "_setPeeksWhenFloating:", [v141 _peeksWhenFloating]);
  }

  v9 = self->__lastConfiguration;
  if (!v9 || (v10 = -[_UISheetPresentationControllerConfiguration _wantsFullScreen](v9, "_wantsFullScreen"), v10 != [v141 _wantsFullScreen]))
  {
    -[UISheetPresentationController _setWantsFullScreen:](self, "_setWantsFullScreen:", [v141 _wantsFullScreen]);
  }

  v11 = self->__lastConfiguration;
  if (!v11 || (v12 = -[_UISheetPresentationControllerConfiguration _wantsBottomAttached](v11, "_wantsBottomAttached"), v12 != [v141 _wantsBottomAttached]))
  {
    v13 = [v141 _wantsBottomAttached];
    v14 = [(UISheetPresentationController *)self _layoutInfo];
    [v14 _setWantsEdgeAttached:v13];
  }

  v15 = self->__lastConfiguration;
  if (!v15 || (v16 = -[_UISheetPresentationControllerConfiguration _wantsEdgeAttachedInCompactHeight](v15, "_wantsEdgeAttachedInCompactHeight"), v16 != [v141 _wantsEdgeAttachedInCompactHeight]))
  {
    -[UISheetPresentationController setPrefersEdgeAttachedInCompactHeight:](self, "setPrefersEdgeAttachedInCompactHeight:", [v141 _wantsEdgeAttachedInCompactHeight]);
  }

  v17 = self->__lastConfiguration;
  if (!v17 || (v18 = -[_UISheetPresentationControllerConfiguration _widthFollowsPreferredContentSizeWhenEdgeAttached](v17, "_widthFollowsPreferredContentSizeWhenEdgeAttached"), v18 != [v141 _widthFollowsPreferredContentSizeWhenEdgeAttached]))
  {
    -[UISheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:](self, "setWidthFollowsPreferredContentSizeWhenEdgeAttached:", [v141 _widthFollowsPreferredContentSizeWhenEdgeAttached]);
  }

  v19 = self->__lastConfiguration;
  if (!v19 || (v20 = -[_UISheetPresentationControllerConfiguration _prefersGrabberVisible](v19, "_prefersGrabberVisible"), v20 != [v141 _prefersGrabberVisible]))
  {
    -[UISheetPresentationController setPrefersGrabberVisible:](self, "setPrefersGrabberVisible:", [v141 _prefersGrabberVisible]);
  }

  v21 = self->__lastConfiguration;
  if (!v21 || (-[_UISheetPresentationControllerConfiguration _grabberTopSpacing](v21, "_grabberTopSpacing"), v23 = v22, [v141 _grabberTopSpacing], v23 != v24))
  {
    [v141 _grabberTopSpacing];
    [(UISheetPresentationController *)self _setGrabberTopSpacing:?];
  }

  v25 = self->__lastConfiguration;
  if (!v25 || (-[_UISheetPresentationControllerConfiguration _additionalMinimumTopInset](v25, "_additionalMinimumTopInset"), v27 = v26, [v141 _additionalMinimumTopInset], v27 != v28))
  {
    [v141 _additionalMinimumTopInset];
    [(UISheetPresentationController *)self _setAdditionalMinimumTopInset:?];
  }

  v29 = self->__lastConfiguration;
  if (!v29 || (v30 = -[_UISheetPresentationControllerConfiguration _insetsPresentedViewForGrabber](v29, "_insetsPresentedViewForGrabber"), v30 != [v141 _insetsPresentedViewForGrabber]))
  {
    -[UISheetPresentationController _setInsetsPresentedViewForGrabber:](self, "_setInsetsPresentedViewForGrabber:", [v141 _insetsPresentedViewForGrabber]);
  }

  v31 = self->__lastConfiguration;
  if (!v31 || (v32 = -[_UISheetPresentationControllerConfiguration _mode](v31, "_mode"), v32 != [v141 _mode]))
  {
    -[UISheetPresentationController _setMode:](self, "_setMode:", [v141 _mode]);
  }

  v33 = self->__lastConfiguration;
  if (!v33 || (-[_UISheetPresentationControllerConfiguration _cornerRadiusForPresentationAndDismissal](v33, "_cornerRadiusForPresentationAndDismissal"), v35 = v34, [v141 _cornerRadiusForPresentationAndDismissal], v35 != v36))
  {
    [v141 _cornerRadiusForPresentationAndDismissal];
    [(UISheetPresentationController *)self _setCornerRadiusForPresentationAndDismissal:?];
  }

  v37 = self->__lastConfiguration;
  if (!v37 || (-[_UISheetPresentationControllerConfiguration _preferredCornerRadius](v37, "_preferredCornerRadius"), v39 = v38, [v141 _preferredCornerRadius], v39 != v40))
  {
    [v141 _preferredCornerRadius];
    [(UISheetPresentationController *)self setPreferredCornerRadius:?];
  }

  v41 = self->__lastConfiguration;
  if (!v41 || (-[_UISheetPresentationControllerConfiguration _preferredShadowOpacity](v41, "_preferredShadowOpacity"), v43 = v42, [v141 _preferredShadowOpacity], v43 != v44))
  {
    [v141 _preferredShadowOpacity];
    [(UISheetPresentationController *)self _setPreferredShadowOpacity:?];
  }

  v45 = self->__lastConfiguration;
  if (!v45 || (-[_UISheetPresentationControllerConfiguration _shadowRadius](v45, "_shadowRadius"), v47 = v46, [v141 _shadowRadius], v47 != v48))
  {
    [v141 _shadowRadius];
    [(UISheetPresentationController *)self _setShadowRadius:?];
  }

  v49 = self->__lastConfiguration;
  if (!v49)
  {
LABEL_54:
    v52 = [v141 _detents];
    [(UISheetPresentationController *)self setDetents:v52];
    goto LABEL_55;
  }

  v50 = [(_UISheetPresentationControllerConfiguration *)v49 _detents];
  v51 = [v141 _detents];
  v52 = v50;
  v53 = v51;
  v54 = v53;
  if (v52 != v53)
  {
    if (v52 && v53)
    {
      v55 = [v52 isEqual:v53];

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

  v57 = [(_UISheetPresentationControllerConfiguration *)v56 _selectedDetentIdentifier];
  v58 = [v141 _selectedDetentIdentifier];
  v59 = v57;
  v60 = v58;
  v61 = v60;
  if (v59 == v60)
  {

LABEL_65:
    goto LABEL_66;
  }

  if (!v59 || !v60)
  {

    goto LABEL_64;
  }

  v62 = [v59 isEqual:v60];

  if ((v62 & 1) == 0)
  {
LABEL_64:
    v59 = [v141 _selectedDetentIdentifier];
    [(UISheetPresentationController *)self setSelectedDetentIdentifier:v59];
    goto LABEL_65;
  }

LABEL_66:
  v63 = self->__lastConfiguration;
  if (!v63)
  {
LABEL_74:
    v66 = [v141 _standardAppearance];
    [(UISheetPresentationController *)self _setStandardAppearance:v66];
    goto LABEL_75;
  }

  v64 = [(_UISheetPresentationControllerConfiguration *)v63 _standardAppearance];
  v65 = [v141 _standardAppearance];
  v66 = v64;
  v67 = v65;
  v68 = v67;
  if (v66 != v67)
  {
    if (v66 && v67)
    {
      v69 = [v66 isEqual:v67];

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

  v71 = [(_UISheetPresentationControllerConfiguration *)v70 _edgeAttachedCompactHeightAppearance];
  v72 = [v141 _edgeAttachedCompactHeightAppearance];
  v73 = v71;
  v74 = v72;
  v75 = v74;
  if (v73 == v74)
  {

LABEL_85:
    goto LABEL_86;
  }

  if (!v73 || !v74)
  {

    goto LABEL_84;
  }

  v76 = [v73 isEqual:v74];

  if ((v76 & 1) == 0)
  {
LABEL_84:
    v73 = [v141 _edgeAttachedCompactHeightAppearance];
    [(UISheetPresentationController *)self _setEdgeAttachedCompactHeightAppearance:v73];
    goto LABEL_85;
  }

LABEL_86:
  v77 = self->__lastConfiguration;
  if (!v77)
  {
LABEL_94:
    v80 = [v141 _floatingAppearance];
    [(UISheetPresentationController *)self _setFloatingAppearance:v80];
    goto LABEL_95;
  }

  v78 = [(_UISheetPresentationControllerConfiguration *)v77 _floatingAppearance];
  v79 = [v141 _floatingAppearance];
  v80 = v78;
  v81 = v79;
  v82 = v81;
  if (v80 != v81)
  {
    if (v80 && v81)
    {
      v83 = [v80 isEqual:v81];

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
  if (!v84 || (v85 = -[_UISheetPresentationControllerConfiguration _detentDirectionWhenFloating](v84, "_detentDirectionWhenFloating"), v85 != [v141 _detentDirectionWhenFloating]))
  {
    -[UISheetPresentationController _setDetentDirectionWhenFloating:](self, "_setDetentDirectionWhenFloating:", [v141 _detentDirectionWhenFloating]);
  }

  v86 = self->__lastConfiguration;
  if (!v86 || (v87 = -[_UISheetPresentationControllerConfiguration _prefersScrollingResizesWhenDetentDirectionIsDown](v86, "_prefersScrollingResizesWhenDetentDirectionIsDown"), v87 != [v141 _prefersScrollingResizesWhenDetentDirectionIsDown]))
  {
    -[UISheetPresentationController _setPrefersScrollingResizesWhenDetentDirectionIsDown:](self, "_setPrefersScrollingResizesWhenDetentDirectionIsDown:", [v141 _prefersScrollingResizesWhenDetentDirectionIsDown]);
  }

  v88 = self->__lastConfiguration;
  if (!v88 || (v89 = -[_UISheetPresentationControllerConfiguration _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge](v88, "_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge"), v89 != [v141 _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge]))
  {
    -[UISheetPresentationController setPrefersScrollingExpandsWhenScrolledToEdge:](self, "setPrefersScrollingExpandsWhenScrolledToEdge:", [v141 _prefersScrollingExpandsToLargerDetentWhenScrolledToEdge]);
  }

  v90 = self->__lastConfiguration;
  if (!v90 || (-[_UISheetPresentationControllerConfiguration _hostParentDepthLevel](v90, "_hostParentDepthLevel"), v92 = v91, [v141 _hostParentDepthLevel], v92 != v93))
  {
    [v141 _hostParentDepthLevel];
    v95 = v94;
    v96 = [(UISheetPresentationController *)self _layoutInfo];
    [v96 _setHostParentDepthLevel:v95];
  }

  v97 = self->__lastConfiguration;
  if (!v97 || (-[_UISheetPresentationControllerConfiguration _hostParentStackAlignmentFrame](v97, "_hostParentStackAlignmentFrame"), v99 = v98, v101 = v100, v103 = v102, v105 = v104, [v141 _hostParentStackAlignmentFrame], v145.origin.x = v106, v145.origin.y = v107, v145.size.width = v108, v145.size.height = v109, v143.origin.x = v99, v143.origin.y = v101, v143.size.width = v103, v143.size.height = v105, !CGRectEqualToRect(v143, v145)))
  {
    [v141 _hostParentStackAlignmentFrame];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v118 = [(UISheetPresentationController *)self _layoutInfo];
    [v118 _setHostParentStackAlignmentFrame:{v111, v113, v115, v117}];
  }

  v119 = self->__lastConfiguration;
  if (!v119 || (-[_UISheetPresentationControllerConfiguration _hostParentFullHeightUntransformedFrameForDepthLevel](v119, "_hostParentFullHeightUntransformedFrameForDepthLevel"), v121 = v120, v123 = v122, v125 = v124, v127 = v126, [v141 _hostParentFullHeightUntransformedFrameForDepthLevel], v146.origin.x = v128, v146.origin.y = v129, v146.size.width = v130, v146.size.height = v131, v144.origin.x = v121, v144.origin.y = v123, v144.size.width = v125, v144.size.height = v127, !CGRectEqualToRect(v144, v146)))
  {
    [v141 _hostParentFullHeightUntransformedFrameForDepthLevel];
    v133 = v132;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    v140 = [(UISheetPresentationController *)self _layoutInfo];
    [v140 _setHostParentFullHeightUntransformedFrameForDepthLevel:{v133, v135, v137, v139}];
  }

  objc_storeStrong(&self->__lastConfiguration, a3);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _invalidatePreferredSize];

  v5 = [(UISheetPresentationController *)self _hostManagerIfLoaded];
  if (v5)
  {
    v6 = v5;
    [v5 preferredContentSizeDidChange];
    v5 = v6;
  }
}

- (void)_prepareForWindowDeallocRecursively:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UISheetPresentationController;
  [(UIPresentationController *)&v5 _prepareForWindowDeallocRecursively:a3];
  [(BSInvalidatable *)self->__multilayerAssertion invalidate];
  multilayerAssertion = self->__multilayerAssertion;
  self->__multilayerAssertion = 0;

  if (objc_opt_respondsToSelector())
  {
    [(_UISheetHostManager *)self->__hostManager tearDownSheet];
  }
}

- (void)_setDisableSolariumInsets:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setDisableSolariumInsets:v3];
}

- (BOOL)_disableSolariumInsets
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _disableSolariumInsets];

  return v3;
}

- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setIncludesSafeAreaInsetWhenInset:v3];
}

- (BOOL)_includesSafeAreaInsetWhenInset
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _includesSafeAreaInsetWhenInset];

  return v3;
}

- (void)_animateChanges:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__UISheetPresentationController__animateChanges_completion___block_invoke;
  v8[3] = &unk_1E70F37C0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  _UISheetAnimateWithCompletion(v8, a4);
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
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _detentValues];
  v4 = [v3 copy];

  return v4;
}

- (double)_currentDetentValue
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _currentDetentValue];
  v4 = v3;

  return v4;
}

- (CGRect)_occludedFrameOfPresentedViewInContainerView
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _frameOfPresentedViewInContainerView];
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

- (id)_recursivelyResolvedRemoteSheetForRemoteSheet:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (objc_opt_respondsToSelector())
  {
    v5 = v3;
    while (1)
    {
      v6 = [v5 _containedRemoteSheet];
      if (!v6)
      {
        break;
      }

      v4 = v6;

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

- (void)_tryToConnectToRemoteSheet:(id)a3
{
  v13 = a3;
  v4 = [(UISheetPresentationController *)self _expectedRemoteSheet];
  if (v4 != v13)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v5 = [(UISheetPresentationController *)self _hostManager];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = v13;
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
    v9 = [(UISheetPresentationController *)self _isHosting];
    v10 = [(UISheetPresentationController *)self _layoutInfo];
    [v10 _setHosting:v9];

    if (self->__connectedRemoteSheet)
    {
      v11 = [(UISheetPresentationController *)self _configuration];
      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setSheetConfiguration:v11];

      [(_UIRemoteSheet *)self->__connectedRemoteSheet _setViewClipsToBounds:0];
    }

    v12 = [(UIPresentationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 _sheetPresentationControllerDidChangeHosting:self];
    }
  }
}

- (CGRect)_remoteKeyboardFrame
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _remoteKeyboardFrame];
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

- (void)_setRemoteKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UISheetPresentationController *)self _layoutInfo];
  [v7 _setRemoteKeyboardFrame:{x, y, width, height}];
}

- (BOOL)_remoteContainsFirstResponder
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _remoteContainsFirstResponder];

  return v3;
}

- (void)_setRemoteContainsFirstResponder:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setRemoteContainsFirstResponder:v3];
}

- (BOOL)_remoteFirstResponderRequiresKeyboard
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _remoteFirstResponderRequiresKeyboard];

  return v3;
}

- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setRemoteFirstResponderRequiresKeyboard:v3];
}

- (double)_remoteProposedDepthLevel
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  [v2 _remoteProposedDepthLevel];
  v4 = v3;

  return v4;
}

- (void)_setRemoteProposedDepthLevel:(double)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  [v4 _setRemoteProposedDepthLevel:a3];
}

- (void)_setRemoteClientConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 containsFirstResponder];
  v6 = [(UISheetPresentationController *)self _layoutInfo];
  [v6 _setRemoteContainsFirstResponder:v5];

  v7 = [v4 firstResponderRequiresKeyboard];
  v8 = [(UISheetPresentationController *)self _layoutInfo];
  [v8 _setRemoteFirstResponderRequiresKeyboard:v7];

  [v4 keyboardFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(UISheetPresentationController *)self _layoutInfo];
  [v17 _setRemoteKeyboardFrame:{v10, v12, v14, v16}];

  [v4 proposedDepthLevel];
  v19 = v18;

  v20 = [(UISheetPresentationController *)self _layoutInfo];
  [v20 _setRemoteProposedDepthLevel:v19];
}

- (void)_setRemoteDismissing:(BOOL)a3
{
  if (self->__remoteDismissing != a3)
  {
    self->__remoteDismissing = a3;
    v4 = [(UIPresentationController *)self containerView];
    [v4 setNeedsLayout];
  }
}

- (void)_resetRemoteDismissing
{
  [(UISheetPresentationController *)self _setRemoteDismissing:0];
  v3 = [(UISheetPresentationController *)self _layoutInfo];
  [v3 _setPresented:1];
}

- (void)_containerViewScreenDidChangeToScreen:(id)a3
{
  v10.receiver = self;
  v10.super_class = UISheetPresentationController;
  v4 = a3;
  [(UIPresentationController *)&v10 _containerViewScreenDidChangeToScreen:v4];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(UISheetPresentationController *)self _layoutInfo];
  [v9 _setScreenSize:{v6, v8}];
}

- (void)_sheetLayoutInfoDidInvalidateDetentValues:(id)a3
{
  v4 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
  [v4 invalidateDetents];

  [(UISheetPresentationController *)self _sendDidInvalidateDetentValues];
}

- (void)_sheetLayoutInfoDidInvalidateOutput:(id)a3
{
  v3 = [(UIPresentationController *)self containerView];
  [v3 setNeedsLayout];
}

- (void)_sheetLayoutInfoLayout:(id)a3
{
  v4 = [(UIPresentationController *)self containerView];
  [v4 layoutIfNeeded];

  [(UISheetPresentationController *)self _sendPerformLayout];
}

- (UISheetPresentationController)_childSheetPresentationController
{
  v2 = [(UIPresentationController *)self _childPresentationController];
  if (v2)
  {
    do
    {
      if ([v2 _isPresentedInFullScreen])
      {
        break;
      }

      v3 = [v2 _childPresentationController];

      v2 = v3;
    }

    while (v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(UISheetPresentationController *)self _transitionDidEnd:1 completed:a3];
  if (v3)
  {
    v9 = [(UIPresentationController *)self delegate];
    v5 = objc_opt_respondsToSelector();
    v6 = v9;
    if (v5)
    {
      v7 = [v9 _sheetPresentationControllerViewForTouchContinuation:self];
      if (v7)
      {
        v8 = [UIApp _gestureEnvironment];
        [(UIGestureEnvironment *)v8 _performTouchContinuationWithOverrideHitTestedView:v7];
      }

      v6 = v9;
    }
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(UISheetPresentationController *)self _transitionDidEnd:0 completed:a3];
  if (v3)
  {
    [(UISheetPresentationController *)self _setPresentsWithGesture:0];
    [(UISheetPresentationController *)self _setOcclusionEnabled:0];
    v5 = [(UIPresentationController *)self presentedViewController];
    [v5 setDropShadowView:0];

    v6 = [(UISheetPresentationController *)self dropShadowView];
    [v6 setContentView:0];

    v7 = [(UISheetPresentationController *)self _multilayerAssertion];
    [v7 invalidate];

    [(UISheetPresentationController *)self set_multilayerAssertion:0];
    v14 = [(UISheetPresentationController *)self _exteriorPanGestureRecognizer];
    if (v14)
    {
      v8 = [v14 view];
      [v8 removeGestureRecognizer:v14];
    }

    v9 = [(UISheetPresentationController *)self _parentSheetPresentationController];
    v10 = [(UISheetPresentationController *)self _layoutInfo];
    [v10 _setParentLayoutInfo:0];

    v11 = [v9 _layoutInfo];
    [v11 _setChildLayoutInfo:0];

    [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:0];
    self->_wantsContentOverlayInsetsUpdatesWhileDismissing = 0;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"_UISheetDidDisappearNotification" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 removeObserver:self name:@"UIKeyboardPrivateWillShowNotification" object:0];
    [v13 removeObserver:self name:@"UIKeyboardPrivateWillHideNotification" object:0];
    [v13 removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
    [v13 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)_transitionWillBegin:(BOOL)a3
{
  v3 = a3;
  v64[4] = *MEMORY[0x1E69E9840];
  v5 = [(UIPresentationController *)self _definiteTransitionCoordinator];
  v6 = [(UISheetPresentationController *)self _hostManager];
  if (v6)
  {
    v7 = [(UISheetPresentationController *)self _layoutInfo];
    [v7 _setPresented:v3];

    [v6 transitionWillBegin:v3];
    goto LABEL_34;
  }

  if (![(UISheetPresentationController *)self _isRootPresentation])
  {
    v8 = [(UISheetPresentationController *)self _parentSheetPresentationController];
    if (v8 && ([(UIPresentationController *)self presentedViewController], v9 = objc_claimAutoreleasedReturnValue(), v10 = _UISheetPresentationControllerStylesSheetsAsCards(v9), v9, v10))
    {
      if (!v3)
      {
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke;
        v62[3] = &unk_1E70F3B98;
        v63 = v8;
        [v5 animateAlongsideTransition:0 completion:v62];
        v21 = v63;
        goto LABEL_11;
      }

      v11 = [(UISheetPresentationController *)self _confinedDimmingView];
      v12 = [v8 dropShadowView];
      [v12 setOverlayView:v11];
    }

    else if (!v3)
    {
LABEL_12:

      goto LABEL_13;
    }

    v13 = [(UIPresentationController *)self containerView];
    v14 = [(UISheetPresentationController *)self dimmingView];
    [v13 addSubview:v14];

    v42 = MEMORY[0x1E69977A0];
    v51 = [(UISheetPresentationController *)self dimmingView];
    v49 = [v51 centerXAnchor];
    v50 = [(UIPresentationController *)self containerView];
    v48 = [v50 centerXAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v64[0] = v47;
    v46 = [(UISheetPresentationController *)self dimmingView];
    v44 = [v46 centerYAnchor];
    v45 = [(UIPresentationController *)self containerView];
    v43 = [v45 centerYAnchor];
    v41 = [v44 constraintEqualToAnchor:v43];
    v64[1] = v41;
    v40 = [(UISheetPresentationController *)self dimmingView];
    v38 = [v40 widthAnchor];
    v39 = [(UIPresentationController *)self containerView];
    v37 = [v39 widthAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 multiplier:3.0];
    v64[2] = v36;
    v15 = [(UISheetPresentationController *)self dimmingView];
    [v15 heightAnchor];
    v16 = v52 = v8;
    v17 = [(UIPresentationController *)self containerView];
    v18 = [v17 heightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 multiplier:3.0];
    v64[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
    [v42 activateConstraints:v20];

    v8 = v52;
    v21 = v51;
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
  v22 = [(UIPresentationController *)self presentedViewController];
  if (_UISheetPresentationControllerStylesSheetsAsCards(v22))
  {

LABEL_16:
    v24 = [(UISheetPresentationController *)self _layoutInfo];
    [v24 _setTransitioning:1];

    v25 = [(UIPresentationController *)self presentedViewController];
    v26 = [v25 preferredTransition];
    v27 = objc_opt_class();
    v28 = objc_opt_self();
    v29 = v27 == v28;

    v30 = [(UISheetPresentationController *)self _layoutInfo];
    [v30 _setZooming:v29];

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_2;
    v60[3] = &unk_1E71018A8;
    v60[4] = self;
    v61 = v3;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_4;
    v59[3] = &unk_1E70F3B98;
    v59[4] = self;
    if (([v5 animateAlongsideTransition:v60 completion:v59] & 1) == 0)
    {
      v31 = [(UISheetPresentationController *)self _layoutInfo];
      [v31 _setPresented:v3];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_5;
    v57[3] = &unk_1E71018A8;
    v57[4] = self;
    v58 = v3;
    [v5 notifyWhenInteractionChangesUsingBlock:v57];
    goto LABEL_20;
  }

  v23 = [(UISheetPresentationController *)self _isRootPresentation];

  if (v23)
  {
    goto LABEL_16;
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_6;
  v55[3] = &unk_1E71018A8;
  v55[4] = self;
  v56 = v3;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __54__UISheetPresentationController__transitionWillBegin___block_invoke_7;
  v53[3] = &unk_1E71018A8;
  v53[4] = self;
  v54 = v3;
  [v5 animateAlongsideTransition:v55 completion:v53];
LABEL_20:
  v32 = [(UIPresentationController *)self presentedViewController];
  v33 = _UISheetPresentationControllerStylesSheetsAsCards(v32);

  if (v33)
  {
    if ([(UISheetPresentationController *)self _isHosting]&& ([(UIPresentationController *)self _transitioningFrom]|| [(UIPresentationController *)self dismissing]&& ![(UISheetPresentationController *)self _isDraggingAndTransitioning]) && ![(UISheetPresentationController *)self _dismissingHorizontallyAlongsideNavigationPop])
    {
      [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:0];
      self->_wantsContentOverlayInsetsUpdatesWhileDismissing = 1;
      if ([(UIPresentationController *)self dismissing])
      {
        v34 = [(UISheetPresentationController *)self _layoutInfo];
        [v34 _layout];

        [(UISheetPresentationController *)self _updatePresentedViewFrame];
      }
    }

    else if ([(UIPresentationController *)self _transitioningTo])
    {
      v35 = [(UISheetPresentationController *)self _expectedRemoteSheet];
      [(UISheetPresentationController *)self _tryToConnectToRemoteSheet:v35];
    }
  }

  if (!v3 && ([(UISheetPresentationController *)self _isDraggingAndTransitioning]|| [(UISheetPresentationController *)self _isDimmingViewTapDismissing]))
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

- (void)_transitionDidEnd:(BOOL)a3 completed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(UISheetPresentationController *)self _setAnimatedTransition:0];
  [(UISheetPresentationController *)self _setInteractiveTransition:0];
  if (v4)
  {
    v7 = [(UISheetPresentationController *)self dropShadowView];
    [v7 _setGrabberLumaTrackingEnabled:v5];
  }

  v8 = [(UISheetPresentationController *)self _hostManager];
  if (objc_opt_respondsToSelector())
  {
    [v8 transitionDidEnd:v5];
  }
}

- (void)_dropShadowViewGrabberDidTriggerPrimaryAction:(id)a3
{
  v4 = [(UISheetPresentationController *)self _layoutInfo];
  v5 = [v4 _grabberAction];
  if ((v5 - 2) < 2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__UISheetPresentationController__dropShadowViewGrabberDidTriggerPrimaryAction___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = v4;
    v9[5] = self;
    [(UISheetPresentationController *)self animateChanges:v9];
  }

  else if (v5 == 1)
  {
    [(UISheetPresentationController *)self _dismissFromGrabberOrDimmingViewIfPossible];
  }

  else if (!v5)
  {
    v6 = [(UIPresentationController *)self presentedViewController];
    v7 = [v6 view];
    [v7 endEditing:1];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    v8 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [v8 _sheetGrabberDidTriggerPrimaryAction];
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
  v3 = [(UISheetPresentationController *)self _layoutInfo];
  v4 = [v3 _indexOfActiveDimmingDetent];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [v3 _numberOfActiveNonDismissDetents]))
  {
    if (![(UIPresentationController *)self _shouldDismiss])
    {
      goto LABEL_13;
    }

    v8 = 0;
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

  v6 = [v3 _activeDetents];
  v7 = [v6 objectAtIndexedSubscript:v5];
  v8 = [v7 _identifier];

  if ([(UIPresentationController *)self _shouldDismiss])
  {
    goto LABEL_8;
  }

  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__UISheetPresentationController__dismissFromGrabberOrDimmingViewIfPossible__block_invoke;
    v10[3] = &unk_1E70F6228;
    v10[4] = v3;
    v10[5] = v8;
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
  v2 = [(UISheetPresentationController *)self dropShadowView];
  [v2 _contentViewFrame];
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

- (void)_setShouldPresentedViewControllerControlStatusBarAppearance:(BOOL)a3
{
  if (self->__shouldPresentedViewControllerControlStatusBarAppearance != a3)
  {
    self->__shouldPresentedViewControllerControlStatusBarAppearance = a3;
    v5 = [(UISheetPresentationController *)self _layoutInfo];
    v6 = [v5 _isAnyDescendantDragging];

    if (v6)
    {
      v8 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
      [(UIStatusBarAnimationParameters *)v8 setSkipFencing:1];
      v7 = [(UIPresentationController *)self presentedViewController];
      [v7 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v8];
    }

    else
    {
      v8 = [(UIPresentationController *)self presentedViewController];
      [(UIStatusBarStyleAnimationParameters *)v8 setNeedsStatusBarAppearanceUpdate];
    }
  }
}

- (BOOL)_shouldPresentedViewControllerServeAsBaseForScrollToTop
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isDimmingEnabled];

  return v3;
}

- (BOOL)_shouldDismissWithNavigationPop
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isDimmingEnabled];

  return v3 ^ 1;
}

- (void)_setOcclusionEnabled:(BOOL)a3
{
  if (self->__occlusionEnabled != a3)
  {
    v3 = a3;
    self->__occlusionEnabled = a3;
    v5 = [(UISheetPresentationController *)self _sheetInteractionIfLoaded];
    v6 = [v5 isGeneratingAnimations];

    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__UISheetPresentationController__setOcclusionEnabled___block_invoke;
      v7[3] = &unk_1E70F35E0;
      v7[4] = self;
      v8 = v3;
      [UIApp _performBlockAfterCATransactionCommits:v7];
    }

    else
    {

      [(UIPresentationController *)self _enableOcclusion:v3];
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
  v3 = [(UIPresentationController *)self containerView];
  [v3 safeAreaInsets];
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

- (void)_handleKeyboardNotification:(id)a3 aboutToHide:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIPresentationController *)self containerView];
  v8 = [(UISheetPresentationController *)self _layoutInfo];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke;
  v28[3] = &unk_1E70F3590;
  v9 = v8;
  v29 = v9;
  [UIView performWithoutAnimation:v28];
  if (v4)
  {
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [_UIKeyboardLayoutAlignmentView _endFrameForNotification:v6 inView:v7];
  }

  [v9 _setKeyboardFrame:{v10, v11, v12, v13}];
  v14 = [v7 window];
  v15 = [v14 _firstResponder];
  [v9 _setFirstResponderRequiresKeyboard:{objc_msgSend(v15, "_requiresKeyboardWhenFirstResponder")}];

  v16 = [v6 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v6 userInfo];
  v21 = [v20 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
  v22 = [v21 integerValue];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__UISheetPresentationController__handleKeyboardNotification_aboutToHide___block_invoke_2;
  v24[3] = &unk_1E70F6848;
  v26 = v19;
  v27 = v22;
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

- (void)_keyboardAboutToShow:(id)a3
{
  v11 = a3;
  v4 = [v11 object];
  v5 = [(UIPresentationController *)self containerView];
  v6 = [v5 window];
  v7 = [v6 screen];

  if (v4 == v7)
  {
    v8 = [v11 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0)
    {
      [(UISheetPresentationController *)self _setKeyboardShown:1];
      [(UISheetPresentationController *)self _handleKeyboardNotification:v11 aboutToHide:0];
    }
  }
}

- (void)_keyboardAboutToChangeFrame:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  v5 = [(UIPresentationController *)self containerView];
  v6 = [v5 window];
  v7 = [v6 screen];

  if (v4 == v7)
  {
    if ([(UISheetPresentationController *)self _isKeyboardShown])
    {
      v8 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v9 = [v8 hasActiveKeyboardSuppressionAssertionsForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant"];

      if ((v9 & 1) == 0)
      {
        [(UISheetPresentationController *)self _handleKeyboardNotification:v10 aboutToHide:0];
      }
    }
  }
}

- (void)_keyboardAboutToHide:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  v5 = [(UIPresentationController *)self containerView];
  v6 = [v5 window];
  v7 = [v6 screen];

  if (v4 == v7)
  {
    v8 = [v13 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0)
    {
      v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v12 = [v11 hasActiveKeyboardSuppressionAssertionsForReason:@"com.apple.UIKit._UIRapidClickPresentationAssistant"];

      if ((v12 & 1) == 0)
      {
        [(UISheetPresentationController *)self _setKeyboardShown:0];
        [(UISheetPresentationController *)self _handleKeyboardNotification:v13 aboutToHide:1];
      }
    }
  }
}

- (void)_firstResponderDidChange:(id)a3
{
  v4 = [(UIPresentationController *)self presentedViewController];
  v5 = [v4 view];
  v6 = [v5 _isAncestorOfFirstResponder];
  v7 = [(UISheetPresentationController *)self _layoutInfo];
  [v7 _setContainsFirstResponder:v6];

  v12 = [(UIPresentationController *)self containerView];
  v8 = [v12 window];
  v9 = [v8 _firstResponder];
  v10 = [v9 _requiresKeyboardWhenFirstResponder];
  v11 = [(UISheetPresentationController *)self _layoutInfo];
  [v11 _setFirstResponderRequiresKeyboard:v10];
}

- (BOOL)_allowsFocusInPresentingViewController
{
  v2 = [(UISheetPresentationController *)self _layoutInfo];
  v3 = [v2 _isDimmingEnabled];

  return v3 ^ 1;
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

- (id)_preferredAnimationControllerForTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISheetPresentationController *)self _hostManager];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 preferredAnimationControllerForTransition:v3];
LABEL_3:
    v8 = v7;
    goto LABEL_14;
  }

  v9 = [(UIPresentationController *)self presentedViewController];
  v10 = _UISheetPresentationControllerStylesSheetsAsCards(v9);

  if (v10)
  {
    if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
    {
      if (v3)
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

    v11 = [(UISheetPresentationController *)self _sheetVisualStyle];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0 || (-[UISheetPresentationController _sheetVisualStyle](self, "_sheetVisualStyle"), v13 = objc_claimAutoreleasedReturnValue(), [v13 preferredInteractiveAnimationControllerForSheetPresentation:v3], v8 = objc_claimAutoreleasedReturnValue(), v13, !v8))
    {
      v8 = objc_alloc_init(_UISheetAnimationController);
    }

    [(_UISheetAnimationController *)v8 setIsReversed:v3 ^ 1];
    if (!v3)
    {
      v14 = [(UISheetPresentationController *)self presentedView];
      [v14 _frameIgnoringLayerTransform];
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

- (id)_preferredInteractionControllerForTransition:(BOOL)a3 animator:(id)a4
{
  v5 = a4;
  v6 = [(UIPresentationController *)self presentedViewController];
  v7 = _UISheetPresentationControllerStylesSheetsAsCards(v6);

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UISheetPresentationController *)self _setAnimatedTransition:v5];
      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v20, &location);
      v8 = [(UISheetPresentationController *)self _animationController:v19];
      [v8 setDefaultSourceFrameProvider:&v19];

      v9 = [(UISheetPresentationController *)self _sheetInteraction];
      [v9 attachmentPoint];
      v11 = v10;
      v13 = v12;
      v14 = [(UISheetPresentationController *)self _animationController];
      [v14 setAttachmentPoint:{v11, v13}];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    v15 = [(UISheetPresentationController *)self _interactionController];
    if (!v15)
    {
      if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
      {
LABEL_8:
        v17 = [(UISheetPresentationController *)self _interactionController];
        goto LABEL_10;
      }

      v16 = objc_alloc_init(UIPercentDrivenInteractiveTransition);
      [(UISheetPresentationController *)self _setInteractiveTransition:v16];

      v15 = [(UISheetPresentationController *)self _interactionController];
      [v15 setWantsInteractiveStart:1];
    }

    goto LABEL_8;
  }

  v17 = 0;
LABEL_10:

  return v17;
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
  v3 = [(UISheetPresentationController *)self _isPresentedRemotely];
  v14 = [(UISheetPresentationController *)self _layoutInfo];
  [v14 _hostedUntransformedFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v3)
  {
    v12 = [(UISheetPresentationController *)self presentedView];
    [v12 _setFrameIgnoringLayerTransform:{v5, v7, v9, v11}];
  }

  else
  {
    v13 = [(UISheetPresentationController *)self _animationController];
    [v13 setInteractiveFrame:{v5, v7, v9, v11}];

    v14 = [(UISheetPresentationController *)self _animationController];
    [v14 layoutTransitionViews];
  }
}

- (void)_startInteractiveTransitionWithProgress:(double)a3 fromViewController:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(UISheetPresentationController *)self _setDraggingAndTransitioning:1];
  if (![(UISheetPresentationController *)self _isHosting])
  {
    v10 = [(UIPresentationController *)self containerView];
    [v10 layoutIfNeeded];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    [(UISheetPresentationController *)self _setRemoteDismissing:1];
  }

  else
  {
    v11 = [(UISheetPresentationController *)self _interactionController];

    if (v11)
    {
      v12 = [(UISheetPresentationController *)self _interactionController];
      [v12 pauseInteractiveTransition];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__UISheetPresentationController__startInteractiveTransitionWithProgress_fromViewController_completion___block_invoke;
      v13[3] = &unk_1E70FCE28;
      v14 = v8;
      v15 = self;
      v16 = v9;
      [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:v13 actions:?];
    }
  }

  [(UISheetPresentationController *)self _updateInteractiveTransitionWithProgress:a3];
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

- (void)_updateInteractiveTransitionWithProgress:(double)a3
{
  [(UISheetPresentationController *)self _updateAnimationController];
  if (![(UISheetPresentationController *)self _isPresentedRemotely])
  {
    v5 = [(UISheetPresentationController *)self _interactionController];
    [v5 updateInteractiveTransition:{fmin(a3, 0.99)}];
  }
}

- (void)_completeInteractiveTransition:(BOOL)a3 duration:(double)a4 timingCurve:(id)a5
{
  v6 = a3;
  v8 = a5;
  if ([(UIPresentationController *)self presented]|| (v9 = v6, [(UIPresentationController *)self dismissing]))
  {
    v9 = v6 ^ 1;
  }

  v10 = [(UISheetPresentationController *)self _layoutInfo];
  [v10 _setPresented:v9];

  [(UISheetPresentationController *)self _setDraggingAndTransitioning:0];
  if (a4 != 0.0)
  {
    v11 = dyld_program_sdk_at_least() ^ 1 | v6;
    v12 = [(UISheetPresentationController *)self _interactionController];
    [v12 percentComplete];
    v14 = v13;

    if (v11)
    {
      v14 = 1.0 - v14;
    }

    v15 = [(UISheetPresentationController *)self _interactionController];
    [v15 duration];
    v17 = v14 * v16;

    v18 = [(UISheetPresentationController *)self _interactionController];
    [v18 setCompletionSpeed:v17 / a4];

    v19 = [(UISheetPresentationController *)self _interactionController];
    [v19 setTimingCurve:v8];
  }

  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    if (!v6)
    {
      [(UISheetPresentationController *)self _setRemoteDismissing:0];
    }
  }

  else
  {
    v20 = [(UISheetPresentationController *)self _interactionController];
    v21 = v20;
    if (v6)
    {
      [v20 finishInteractiveTransition];

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
      [v20 cancelInteractiveTransition];
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
    v26 = [(UISheetPresentationController *)self _sheetInteraction];
    v27 = [v26 isDragging];

    if (v27)
    {
      v25[2](v25);
    }

    else
    {
      v28 = [(UISheetPresentationController *)self _sheetInteraction];
      v29 = _UISheetTransitionSpringParametersHighSpeed(0);
      [v28 _animateWithParameters:v29 animations:v25];
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
  v3 = [(UIPresentationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 sheetPresentationControllerDidChangeSelectedDetentIdentifier:self];
  }
}

- (BOOL)_shouldDismissByDragging
{
  if (![(UISheetPresentationController *)self _allowsDraggingToDismiss])
  {
    return 0;
  }

  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = [v3 presentedViewController];
  v5 = v4;
  v6 = (!v4 || (*(v4 + 376) & 3u) - 1 >= 2) && [(UIPresentationController *)self _shouldDismiss];

  return v6;
}

- (void)sheetInteraction:(id)a3 didChangeOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 isDragging];
  v9 = [v7 indexOfCurrentDetent];

  v10 = [(UISheetPresentationController *)self _layoutInfo];
  v11 = [v10 _isInverted];
  v51 = [v10 _activeDetents];
  [v10 _smallestNonDismissDetentOffset];
  v13 = v12;
  v14 = [v10 _numberOfActiveNonDismissDetents];
  v15 = [v10 _isDragging];
  [v10 _setDragging:v8];
  if (!v15 || (v8 & 1) != 0)
  {
    goto LABEL_23;
  }

  [v10 _setLatestUserChosenOffset:y];
  if (v9 == v14)
  {
    if ([(UISheetPresentationController *)self _isHosting])
    {
      v17 = [v10 _isDismissible];
    }

    else
    {
      v17 = [(UISheetPresentationController *)self _shouldDismissByDragging];
    }

    v16 = v9;
    if ((v17 & 1) == 0)
    {
      v16 = v9 - 1;
    }
  }

  else
  {
    v16 = v9;
  }

  v18 = [v51 objectAtIndexedSubscript:v16];
  v19 = [v18 _identifier];

  if (v19)
  {
    v20 = [(UISheetPresentationController *)self _layoutInfo];
    v21 = [v20 _adjustedIndexOfCurrentActiveDetentForContainedFirstResponder];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL && v21 != v16)
    {
      v22 = [(UIPresentationController *)self presentedViewController];
      v23 = [v22 view];
      [v23 endEditing:1];
    }

    v24 = [v10 _selectedDetentIdentifier];
    [v10 _setSelectedDetentIdentifier:v19];
    v25 = v24;
    v26 = v19;
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
  if (v11)
  {
    v29 = y < v13;
  }

  else
  {
    v29 = y > v13;
  }

  if (v8 && ![(UISheetPresentationController *)self _didTearOff])
  {
    v31 = [(UISheetPresentationController *)self _sheetInteraction];
    if ([v31 isUnconstrainedOffsetBeyondSideOrTopExtentInverted:v11])
    {
      v32 = [(UISheetPresentationController *)self _tearOffActivity];
      v30 = v32 != 0;
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
  v62 = v11;
  *&aBlock[5] = x;
  *&aBlock[6] = y;
  *&aBlock[7] = v13;
  v33 = _Block_copy(aBlock);
  if (v30)
  {
    v34 = [(UIPresentationController *)self containerView];
    v35 = [v34 window];

    v36 = [objc_msgSend(UIApp _touchesEventForWindow:{v35), "touchesForWindow:", v35}];
    v37 = [v36 anyObject];

    v38 = [(UISheetPresentationController *)self _tearOffInteraction];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __66__UISheetPresentationController_sheetInteraction_didChangeOffset___block_invoke_2;
    v60[3] = &unk_1E70F5AC0;
    v60[4] = self;
    [v38 _immediatelyBeginDragWithTouch:v37 completion:v60];

    goto LABEL_63;
  }

  v39 = v8 & v29;
  v40 = [(UISheetPresentationController *)self _didTearOff];
  v41 = [(UISheetPresentationController *)self _isDraggingAndTransitioning];
  if (v40)
  {
    if (v39 & 1 | !v41)
    {
      goto LABEL_63;
    }

    v42 = _UISheetTransitionDuration();
    v43 = _UISheetTransitionTimingCurve();
    v44 = self;
    v45 = 0;
    goto LABEL_61;
  }

  if (!v41 && (v39 & 1) != 0 && ![(UISheetPresentationController *)self _didAttemptToStartDismiss])
  {
    if (![(UISheetPresentationController *)self _isHosting])
    {
      [v10 _setDismissible:{-[UISheetPresentationController _shouldDismissByDragging](self, "_shouldDismissByDragging")}];
    }

    if ([v10 _isDismissible])
    {
      v33[2](v33);
      [(UISheetPresentationController *)self _startInteractiveTransitionWithProgress:?];
      goto LABEL_63;
    }

    [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:1];
    v43 = [(UIPresentationController *)self containerView];
    [v43 setNeedsLayout];
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
    v48 = v9 != v14;
    if ([(UIPresentationController *)self presented]|| [(UIPresentationController *)self dismissing])
    {
      v48 = v9 == v14;
    }

    v42 = _UISheetTransitionDuration();
    v43 = _UISheetTransitionTimingCurve();
    v44 = self;
    v45 = v48;
LABEL_61:
    [(UISheetPresentationController *)v44 _completeInteractiveTransition:v45 duration:v43 timingCurve:v42];
    goto LABEL_62;
  }

  if (![(UISheetPresentationController *)self _isDraggingAndTransitioning])
  {
    if (!v29 && (v8 & 1) != 0)
    {
      [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:0];
    }

    if ((v8 & 1) == 0 && [(UISheetPresentationController *)self _didAttemptToStartDismiss])
    {
      [(UISheetPresentationController *)self _setDidAttemptToStartDismiss:0];
      v46 = v11 ? v13 - y : y - v13;
      if (v11)
      {
        [v10 _rubberBandExtentBeyondMinimumOffset];
      }

      else
      {
        [v10 _rubberBandExtentBeyondMaximumOffset];
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
    v49 = v10;
    v55 = v49;
    v56 = self;
    v50 = [(UISheetPresentationController *)self _didExpand];
    if (v50 == [v49 _isExpanded] || (-[UISheetPresentationController _setDidExpand:](self, "_setDidExpand:", objc_msgSend(v49, "_isExpanded")), +[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled")))
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

- (CGPoint)offsetForInterruptedAnimationInSheetInteraction:(id)a3
{
  if ([(UISheetPresentationController *)self _isHosting])
  {

    [(UISheetPresentationController *)self _remoteInterruptedOffset];
  }

  else
  {
    v6 = [(UISheetPresentationController *)self presentedView];
    [v6 _frameIgnoringLayerTransform];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
    v16 = v8 - v15;
    v17 = [(UISheetPresentationController *)self _layoutInfo];
    v18 = [v17 _isInverted];
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    if (v18)
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

- (void)_sheetInteractionDraggingBegan:(id)a3 withRubberBandCoefficient:(double)a4
{
  v11 = a3;
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    v6 = [(UISheetPresentationController *)self _shouldDismissByDragging];
    v7 = [(UISheetPresentationController *)self _layoutInfo];
    [v7 _setDismissible:v6];

    v8 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [(UISheetPresentationController *)self offsetForInterruptedAnimationInSheetInteraction:v11];
    [v8 _sheetInteractionDraggingDidBeginWithRubberBandCoefficient:v6 dismissible:a4 interruptedOffset:{v9, v10}];
  }
}

- (void)_sheetInteractionDraggingChanged:(id)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5 animateChange:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    v13 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    v12 = [(UISheetPresentationController *)self _layoutInfo];
    [v13 _sheetInteractionDraggingDidChangeWithTranslation:v6 velocity:objc_msgSend(v12 animateChange:"_isDismissible") dismissible:{v10, v9, x, y}];
  }
}

- (void)_sheetInteractionDraggingEnded:(id)a3
{
  if ([(UISheetPresentationController *)self _isPresentedRemotely])
  {
    v4 = [(UISheetPresentationController *)self _clientRemotePresentationDelegate];
    [v4 _sheetInteractionDraggingDidEnd];
  }
}

- (void)_setIsRemote:(BOOL)a3
{
  v4 = [(UIPresentationController *)self presentedViewController];
  [(UISheetPresentationController *)self _setClientRemotePresentationDelegate:v4];
}

- (void)_setClientRemotePresentationDelegate:(id)a3
{
  obj = a3;
  if (obj)
  {
    v4 = [(UISheetPresentationController *)self dropShadowView];
    v5 = [v4 interactions];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [(UISheetPresentationController *)self dropShadowView];
      v8 = [(UISheetPresentationController *)self _sheetInteraction];
      [v7 addInteraction:v8];
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

  v7 = [(UISheetPresentationController *)self dropShadowView];
  [(UISheetPresentationController *)self _dropShadowViewGrabberDidTriggerPrimaryAction:?];
}

- (void)_remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
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

  v11 = [(UISheetPresentationController *)self _layoutInfo];
  [v11 _setDismissible:v7];

  [(UISheetPresentationController *)self _setRemoteInterruptedOffset:x, y];
  v15 = [(UISheetPresentationController *)self _sheetInteraction];
  [v15 draggingBeganFromSource:self withRubberBandCoefficient:a3];
}

- (void)_remoteSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
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

  v14 = [(UISheetPresentationController *)self _layoutInfo];
  [v14 _setDismissible:v6];

  v18 = [(UISheetPresentationController *)self _sheetInteraction];
  [v18 draggingChangedInSource:self withTranslation:v7 velocity:v11 animateChange:{v10, x, y}];
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

  v7 = [(UISheetPresentationController *)self _sheetInteraction];
  [v7 draggingEndedInSource:self];
}

- (BOOL)_exteriorPanGestureRecognizerShouldBeginWithEvent:(id)a3
{
  v7 = ([v4 type] || (objc_msgSend(v4, "allTouches"), v5 = v4 = a3;

  return v7;
}

- (BOOL)_exteriorPanGestureRecognizerShouldInteractWithView:(id)a3
{
  v4 = a3;
  v5 = [(UISheetPresentationController *)self dropShadowView];
  v6 = [v4 isDescendantOfView:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UIPresentationController *)self containerView];
    v7 = [(UIView *)v4 _viewOrderRelativeToView:v8 requireIntersection:0]!= -2;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(UISheetPresentationController *)self _layoutInfo];
  [v12 _frameOfPresentedViewInContainerView];
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

  v19 = [v12 _isInverted];
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  if (v19)
  {
    if (v11 >= CGRectGetMaxY(*&v20))
    {
      goto LABEL_9;
    }
  }

  else if (v11 <= CGRectGetMinY(*&v20))
  {
LABEL_9:
    v24 = [v6 view];
    v17 = [(UISheetPresentationController *)self _exteriorPanGestureRecognizerShouldInteractWithView:v24];

    goto LABEL_4;
  }

LABEL_3:
  v17 = 0;
LABEL_4:

  return v17;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = [a4 view];
  LOBYTE(self) = [(UISheetPresentationController *)self _exteriorPanGestureRecognizerShouldInteractWithView:v5];

  return self;
}

- (void)_handleExteriorPan:(id)a3
{
  v42 = a3;
  v4 = [v42 view];
  [v42 locationInView:v4];
  v6 = v5;

  v7 = [v42 state];
  if ((v7 - 3) >= 2)
  {
    if (v7 != 2)
    {
      if (v7 != 1)
      {
        goto LABEL_38;
      }

      v8 = [(UIPresentationController *)self _childPresentationController];

      if (v8)
      {
        [v42 setEnabled:0];
        [v42 setEnabled:1];
        goto LABEL_38;
      }

      v29 = [(UIPanGestureRecognizer *)v42 _scrollDeviceCategory];
      v30 = _UIScrollViewRubberBandCoefficient(v29);
      if ([(UISheetPresentationController *)self _isHosting])
      {
        v31 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        v32 = objc_opt_respondsToSelector();

        if ((v32 & 1) == 0)
        {
LABEL_37:
          [(UISheetPresentationController *)self set_exteriorPanStartLocationY:v6];
          goto LABEL_38;
        }

        v33 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        [v33 _sheetInteractionDraggingDidBeginWithRubberBandCoefficient:v30];
      }

      else
      {
        v33 = [(UISheetPresentationController *)self _sheetInteraction];
        [v33 draggingBeganFromSource:v42 withRubberBandCoefficient:v30];
      }

      goto LABEL_37;
    }

    v12 = [(UISheetPresentationController *)self _layoutInfo];
    v13 = [v12 _isInverted];
    v14 = [v42 _activeEventOfType:10];
    v15 = v14;
    if (v14 && [v14 _scrollType] == 1)
    {
      [(UISheetPresentationController *)self _exteriorPanStartLocationY];
      v17 = v6 - v16;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      [v12 _frameOfPresentedViewInContainerView];
      if (!v13)
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
        v26 = v42;
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

    v26 = v42;
    if (v17 < 0.0)
    {
LABEL_28:
      [v26 velocityInView:0];
      v27 = v38;
      v28 = 0.0;
LABEL_29:
      if ([(UISheetPresentationController *)self _isHosting])
      {
        v39 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        v40 = objc_opt_respondsToSelector();

        if ((v40 & 1) == 0)
        {
LABEL_34:

          goto LABEL_38;
        }

        v41 = [(UISheetPresentationController *)self _connectedRemoteSheet];
        [v41 _sheetInteractionDraggingDidChangeWithTranslation:0 velocity:v28 animateChange:{v17, v28, v27}];
      }

      else
      {
        v41 = [(UISheetPresentationController *)self _sheetInteraction];
        [v41 draggingChangedInSource:v42 withTranslation:0 velocity:v28 animateChange:{v17, v28, v27}];
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
    v9 = [(UISheetPresentationController *)self _connectedRemoteSheet];
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_38;
    }

    v11 = [(UISheetPresentationController *)self _connectedRemoteSheet];
    [v11 _sheetInteractionDraggingDidEnd];
  }

  else
  {
    v11 = [(UISheetPresentationController *)self _sheetInteraction];
    [v11 draggingEndedInSource:v42];
  }

LABEL_38:
}

- (void)_hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3
{
  v5 = [(UISheetPresentationController *)self _sheetInteraction];
  [v5 draggingBeganFromSource:self withRubberBandCoefficient:a3];
}

- (void)_hostSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = [(UISheetPresentationController *)self _sheetInteraction];
  [v10 draggingChangedInSource:self withTranslation:0 velocity:v8 animateChange:{v7, x, y}];
}

- (void)_hostSheetInteractionDraggingDidEnd
{
  v3 = [(UISheetPresentationController *)self _sheetInteraction];
  [v3 draggingEndedInSource:self];
}

- (void)_setAllowsTearOff:(BOOL)a3
{
  if (self->__allowsTearOff != a3)
  {
    self->__allowsTearOff = a3;
    if (a3)
    {
      v5 = [[UIDragInteraction alloc] initWithDelegate:self];
      tearOffInteraction = self->__tearOffInteraction;
      self->__tearOffInteraction = v5;

      [(UIDragInteraction *)self->__tearOffInteraction setEnabled:0];
      v9 = [(UISheetPresentationController *)self dropShadowView];
      [(UIDragInteraction *)v9 addInteraction:self->__tearOffInteraction];
      v7 = v9;
    }

    else
    {
      v8 = [(UISheetPresentationController *)self dropShadowView];
      [v8 removeInteraction:self->__tearOffInteraction];

      v7 = self->__tearOffInteraction;
      self->__tearOffInteraction = 0;
    }
  }
}

- (BOOL)sheetInteraction:(id)a3 shouldBeginHorizontalRubberBandingWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UISheetPresentationController *)self _setTearOffActivity:0];
  if ([(UISheetPresentationController *)self _allowsTearOff]&& _UISystemShellAllowsSceneRequests() && ([(UIGestureRecognizer *)v7 _activeTouchesEvent], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 _allActiveTouches];
    v10 = [v9 anyObject];

    if (![v10 _isPointerTouch] || (dropShadowView = self->_dropShadowView, objc_msgSend(v10, "view"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(dropShadowView) = objc_msgSend(dropShadowView, "_isGrabber:", v11), v11, dropShadowView))
    {
      v13 = [v6 view];
      [v7 locationInView:v13];
      v15 = v14;
      v17 = v16;

      [(UISheetPresentationController *)self _setInitialTearOffPoint:v15, v17];
      if (v17 <= 60.0)
      {
        v19 = [(UIPresentationController *)self delegate];
        v20 = objc_opt_respondsToSelector();

        if (v20)
        {
          v21 = [(UIPresentationController *)self delegate];
          [v21 _sheetPresentationControllerUserActivityForTearOff:self];
        }

        else
        {
          v21 = [(UIPresentationController *)self presentedViewController];
          [v21 userActivity];
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

- (BOOL)sheetInteraction:(id)a3 shouldAllowVerticalRubberBandingWithEvent:(id)a4
{
  v5 = a4;
  if ([v5 type])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 allTouches];
    v8 = [v7 anyObject];

    if ([v8 _isPointerTouch])
    {
      dropShadowView = self->_dropShadowView;
      v10 = [v8 view];
      v6 = [(UIDropShadowView *)dropShadowView _isGrabber:v10];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)_setSubduingEnabled:(BOOL)a3
{
  if (self->__subduingEnabled != a3)
  {
    self->__subduingEnabled = a3;
    [(UIPresentationController *)self _enableSubduing:?];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ACA0]);
  v6 = [(UISheetPresentationController *)self _tearOffActivity];
  v7 = [v5 initWithObject:v6];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__UISheetPresentationController_dragInteraction_itemsForBeginningSession___block_invoke;
  v16[3] = &unk_1E70F6AD0;
  v16[4] = self;
  [v7 registerDataRepresentationForTypeIdentifier:@"com.apple.uikit.scene" visibility:1 loadHandler:v16];
  v8 = objc_alloc_init(UIDraggingSystemSceneMetadata);
  v9 = [(UISheetPresentationController *)self _tearOffActivity];
  v10 = [v9 activityType];
  [(UIDraggingSystemSceneMetadata *)v8 setActivityType:v10];

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

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v4 = [(UISheetPresentationController *)self dropShadowView:a3];
  [v4 setAlpha:0.0];
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = objc_opt_new();
  [v6 _setPreviewMode:2];
  [(UIView *)self->_dropShadowView bounds];
  v7 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v6 setVisiblePath:v7];

  v8 = [UIDragPreviewTarget alloc];
  v9 = [(UIView *)self->_dropShadowView superview];
  [(UIView *)self->_dropShadowView center];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v14[0] = *MEMORY[0x1E695EFD0];
  v14[1] = v10;
  v14[2] = *(MEMORY[0x1E695EFD0] + 32);
  v11 = [(UIPreviewTarget *)v8 initWithContainer:v9 center:v14 transform:?];

  v12 = [[UITargetedDragPreview alloc] initWithView:self->_dropShadowView parameters:v6 target:v11];
  [(UISheetPresentationController *)self _initialTearOffPoint];
  [(UITargetedDragPreview *)v12 setLiftAnchorPoint:?];

  return v12;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [(UIPresentationController *)self presentingViewController:a3];
    v7 = [v6 presentedViewController];
    v8 = [(UIPresentationController *)self presentedViewController];

    if (v7 == v8)
    {
      v9 = [(UIPresentationController *)self presentingViewController];
      [v9 dismissViewControllerAnimated:1 completion:0];
    }

    v13 = [(UIPresentationController *)self delegate];
    v10 = objc_opt_respondsToSelector();
    v11 = v13;
    if (v10)
    {
      if (qword_1ED49AC10 != -1)
      {
        dispatch_once(&qword_1ED49AC10, &__block_literal_global_1272_1);
      }

      v11 = v13;
      if (byte_1ED49AC01 == 1)
      {
        [v13 _sheetPresentationControllerDidTearOff:self];
        v11 = v13;
      }
    }
  }

  else
  {
    [(UISheetPresentationController *)self _updatePresentedViewFrame:a3];
    v12 = [(UISheetPresentationController *)self dropShadowView];
    [v12 setAlpha:1.0];

    [(UISheetPresentationController *)self _setDidTearOff:0];
  }
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__UISheetPresentationController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v5[3] = &unk_1E70F5DB8;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

void __84__UISheetPresentationController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePresentedViewFrame];
  v2 = [*(a1 + 32) dropShadowView];
  [v2 setAlpha:1.0];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v6 = objc_opt_new();
  [v6 _setPreviewMode:2];
  v7 = [UITargetedDragPreview alloc];
  v8 = [(UISheetPresentationController *)self presentedView];
  v9 = [UIDragPreviewTarget alloc];
  v10 = [(UIPresentationController *)self containerView];
  [(UISheetPresentationController *)self frameOfPresentedViewInContainerView];
  v15 = [(UIPreviewTarget *)v9 initWithContainer:v10 center:v12 + v11 * 0.5, v14 + v13 * 0.5];
  v16 = [(UITargetedDragPreview *)v7 initWithView:v8 parameters:v6 target:v15];

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