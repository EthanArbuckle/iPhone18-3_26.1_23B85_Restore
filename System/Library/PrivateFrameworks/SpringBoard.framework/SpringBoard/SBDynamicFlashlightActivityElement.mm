@interface SBDynamicFlashlightActivityElement
- (BOOL)shouldRemainActiveWhileFlashlightIsOff;
- (CGRect)_frameForContentViewInContainerView:(id)view;
- (CGSize)intrinsicCompactContainerSize;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (NSString)coverSheetIdentifier;
- (NSString)elementIdentifier;
- (SAActivityHosting)activityHost;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBDynamicFlashlightActivityElement)initWithState:(id)state coverSheetViewController:(id)controller fixedWidth:(BOOL)width;
- (SBDynamicFlashlightActivityElementDelegate)delegate;
- (SBSystemApertureGestureHandling)gestureHandler;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)_leadingPackageStateForState:(id)state;
- (id)_textColorForState:(id)state;
- (id)_trailingTextForState:(id)state;
- (int64_t)elementOrientation;
- (int64_t)participantState;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (void)_alertingAssertionDidInvalidate:(id)invalidate withReason:(id)reason;
- (void)_layoutContentViewInContainerView:(id)view;
- (void)_setCustomViewExpanded:(BOOL)expanded;
- (void)_setupContentViewInContainerView:(id)view;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)dealloc;
- (void)dynamicFlashlightViewControllerDidChangeIntensity:(double)intensity width:(double)width animated:(BOOL)animated;
- (void)dynamicFlashlightViewControllerDidChangePreferredContentRect;
- (void)dynamicFlashlightViewControllerDidToggleFlashlight;
- (void)dynamicFlashlightViewControllerShouldDismiss;
- (void)dynamicFlashlightViewControllerUpdatePersistedIntensity:(double)intensity width:(double)width;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)provider;
- (void)setExpanding:(BOOL)expanding;
- (void)setFlashlightState:(id)state;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setObstructionEdge:(unint64_t)edge;
- (void)setPreviewing:(BOOL)previewing;
- (void)setProminent:(BOOL)prominent;
- (void)setUrgent:(BOOL)urgent;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)shouldRemainActiveWhileFlashlightIsOff;
- (void)takeAlertingAssertionWithReason:(id)reason;
@end

@implementation SBDynamicFlashlightActivityElement

- (void)dealloc
{
  if ([(SAAutomaticallyInvalidatable *)self->_alertingAssertion isValid])
  {
    [(SAAutomaticallyInvalidatable *)self->_alertingAssertion invalidateWithReason:@"Dynamic flashlight dealloc"];
  }

  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalBehaviorProvider:self];
  [(PTSettings *)self->_flashlightSettings removeKeyPathObserver:self];
  v3.receiver = self;
  v3.super_class = SBDynamicFlashlightActivityElement;
  [(SBDynamicFlashlightActivityElement *)&v3 dealloc];
}

- (SBDynamicFlashlightActivityElement)initWithState:(id)state coverSheetViewController:(id)controller fixedWidth:(BOOL)width
{
  widthCopy = width;
  stateCopy = state;
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = SBDynamicFlashlightActivityElement;
  v10 = [(SBDynamicFlashlightActivityElement *)&v33 init];
  v11 = v10;
  if (v10)
  {
    v10->_preferredLayoutMode = 2;
    v12 = +[SBDynamicFlashlightDomain rootSettings];
    flashlightSettings = v11->_flashlightSettings;
    v11->_flashlightSettings = v12;

    [(PTSettings *)v11->_flashlightSettings addKeyPathObserver:v11];
    v14 = objc_alloc(MEMORY[0x277D67DE8]);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v14 initWithPackageName:@"Flashlight-Leading-D83" inBundle:v15];
    leadingPackageViewProvider = v11->_leadingPackageViewProvider;
    v11->_leadingPackageViewProvider = v16;

    [(SBUISystemApertureCAPackageContentProvider *)v11->_leadingPackageViewProvider setIntrinsicPackageSize:36.6666667, 36.6666667];
    v18 = v11->_leadingPackageViewProvider;
    v19 = [(SBDynamicFlashlightActivityElement *)v11 _leadingPackageStateForState:stateCopy];
    [(SBUISystemApertureCAPackageContentProvider *)v18 setState:v19 animated:0];

    v20 = objc_alloc(MEMORY[0x277D67E58]);
    v21 = [(SBDynamicFlashlightActivityElement *)v11 _trailingTextForState:stateCopy];
    v22 = [v20 initWithText:v21 style:4];
    trailingTextProvider = v11->_trailingTextProvider;
    v11->_trailingTextProvider = v22;

    v24 = v11->_trailingTextProvider;
    v25 = [(SBDynamicFlashlightActivityElement *)v11 _textColorForState:stateCopy];
    [(SBUISystemApertureTextContentProvider *)v24 setContentColor:v25];

    v26 = [[SBDynamicFlashlightActivityElementViewController alloc] initWithOptionsProvider:v11->_flashlightSettings state:stateCopy fixedWidth:widthCopy];
    elementViewController = v11->_elementViewController;
    v11->_elementViewController = v26;

    [(SBDynamicFlashlightActivityElementViewController *)v11->_elementViewController setDelegate:v11];
    [(SBDynamicFlashlightActivityElementViewController *)v11->_elementViewController setPanEnabled:0];
    v28 = +[SBDynamicFlashlightState offState];
    flashlightState = v11->_flashlightState;
    v11->_flashlightState = v28;

    v30 = [[SBSystemActionElementPreviewingCoordinator alloc] initWithElement:v11];
    previewingCoordinator = v11->_previewingCoordinator;
    v11->_previewingCoordinator = v30;

    objc_storeStrong(&v11->_coverSheetViewController, controller);
    [(CSCoverSheetViewController *)v11->_coverSheetViewController registerExternalBehaviorProvider:v11];
  }

  return v11;
}

- (void)setFlashlightState:(id)state
{
  v16[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (([(SBDynamicFlashlightState *)self->_flashlightState isEqual:stateCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_flashlightState, state);
    [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setState:stateCopy];
    v6 = [(SBDynamicFlashlightActivityElement *)self _leadingPackageStateForState:stateCopy];
    leadingPackageViewProvider = [(SBDynamicFlashlightActivityElement *)self leadingPackageViewProvider];
    [leadingPackageViewProvider setState:v6 animated:1];

    v8 = [(SBDynamicFlashlightActivityElement *)self _trailingTextForState:stateCopy];
    v9 = [(SBDynamicFlashlightActivityElement *)self _textColorForState:stateCopy];
    trailingTextProvider = [(SBDynamicFlashlightActivityElement *)self trailingTextProvider];
    [trailingTextProvider swapInText:v8 textColor:v9];

    if ([(SBDynamicFlashlightActivityElement *)self layoutMode]== 3)
    {
      customView = [(SBDynamicFlashlightActivityElement *)self customView];
      superview = [customView superview];

      if (superview)
      {
        [(SBDynamicFlashlightActivityElement *)self layoutHostContainerViewDidLayoutSubviews:superview];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = @"SBSystemApertureNotificationUserInfoElementKey";
    v16[0] = self;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [defaultCenter postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v14];
  }
}

- (BOOL)shouldRemainActiveWhileFlashlightIsOff
{
  v3 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBDynamicFlashlightActivityElement *)self shouldRemainActiveWhileFlashlightIsOff];
  }

  if (self->_layoutMode == 3)
  {
    return ![(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController shouldDismissWhenOff];
  }

  else
  {
    return 0;
  }
}

- (NSString)elementIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    [(SBUISystemApertureCAPackageContentProvider *)self->_leadingPackageViewProvider setContentContainer:self];
    providedView = [(SBUISystemApertureCAPackageContentProvider *)self->_leadingPackageViewProvider providedView];
    v5 = self->_leadingView;
    self->_leadingView = providedView;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    [(SBUISystemApertureTextContentProvider *)self->_trailingTextProvider setContentContainer:self];
    providedView = [(SBUISystemApertureTextContentProvider *)self->_trailingTextProvider providedView];
    v5 = self->_trailingView;
    self->_trailingView = providedView;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  layoutMode = self->_layoutMode;
  if (layoutMode != mode)
  {
    self->_layoutMode = mode;
    if (mode == 3)
    {
      coverSheetViewController = self->_coverSheetViewController;

      [(CSCoverSheetViewController *)coverSheetViewController externalBehaviorProviderBehaviorChanged:self, reason];
    }

    else if (layoutMode == 3)
    {
      if ([(SAAutomaticallyInvalidatable *)self->_alertingAssertion isValid])
      {
        [(SAAutomaticallyInvalidatable *)self->_alertingAssertion invalidateWithReason:@"Dynamic flashlight element collapsed layout"];
        alertingAssertion = self->_alertingAssertion;
        self->_alertingAssertion = 0;
      }

      [(CSCoverSheetViewController *)self->_coverSheetViewController externalBehaviorProviderBehaviorChanged:self];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dynamicFlashlightActivityElementDidCollapse];
    }
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  if (mode == 3)
  {
    [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController preferredContentRect:outsets.top];
    v7 = v6;
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained edgeOutsetsForSize:{v7, v9}];
    top = v11;
    leading = v13;
    bottom = v15;
    trailing = v17;
  }

  else
  {
    trailing = outsets.trailing;
    bottom = outsets.bottom;
    leading = outsets.leading;
    top = outsets.top;
  }

  v19 = top;
  v20 = leading;
  v21 = bottom;
  v22 = trailing;
  result.trailing = v22;
  result.bottom = v21;
  result.leading = v20;
  result.top = v19;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews
{
  elementViewController = self->_elementViewController;
  subviewsCopy = subviews;
  [(SBDynamicFlashlightActivityElementViewController *)elementViewController setElementOrientation:[(SBDynamicFlashlightActivityElement *)self elementOrientation]];
  [(SBDynamicFlashlightActivityElement *)self _layoutContentViewInContainerView:subviewsCopy];
}

- (void)_layoutContentViewInContainerView:(id)view
{
  viewCopy = view;
  customView = [(SBDynamicFlashlightActivityElement *)self customView];
  [(SBDynamicFlashlightActivityElement *)self _frameForContentViewInContainerView:viewCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [customView setFrame:{v7, v9, v11, v13}];
  if ((self->_layoutMode - 1) >= 2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  [(UIView *)self->_leadingView setAlpha:v14];
  [(UIView *)self->_trailingView setAlpha:v14];
  customView2 = [(SBDynamicFlashlightActivityElement *)self customView];
  v16 = customView2;
  if (self->_layoutMode >= 3)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  [customView2 setAlpha:v17];

  if ([(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController isExpanded]|| self->_layoutMode != 3)
  {
    if (![(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController isExpanded]|| self->_layoutMode == 3)
    {
      return;
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  [(SBDynamicFlashlightActivityElement *)self _setCustomViewExpanded:v18];
}

- (CGRect)_frameForContentViewInContainerView:(id)view
{
  viewCopy = view;
  customView = [(SBDynamicFlashlightActivityElement *)self customView];
  [customView sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v7 = v6;
  v9 = v8;

  v11 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  if (viewCopy)
  {
    [viewCopy bounds];
    UIRectCenteredIntegralRectScale();
    v11 = v12;
    v10 = v13;
    v7 = v14;
    v9 = v15;
  }

  v16 = v11;
  v17 = v10;
  v18 = v7;
  v19 = v9;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_setCustomViewExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setExpanded:?];
  elementViewController = self->_elementViewController;

  [(SBDynamicFlashlightActivityElementViewController *)elementViewController setPanEnabled:expandedCopy];
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setElementOrientation:[(SBDynamicFlashlightActivityElement *)self elementOrientation]];
  v9 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SBDynamicFlashlightActivityElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v16[3] = &unk_2783A92D8;
  v16[4] = self;
  v10 = viewCopy;
  v17 = v10;
  [v9 _performWithoutRetargetingAnimations:v16];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __112__SBDynamicFlashlightActivityElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v12[3] = &unk_2783BE8B8;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [coordinatorCopy animateAlongsideTransition:v12 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __112__SBDynamicFlashlightActivityElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _layoutContentViewInContainerView:*(a1 + 32)];
    v3 = [v5 customView];
    [v3 setNeedsLayout];

    v4 = [v5 customView];
    [v4 layoutIfNeeded];

    WeakRetained = v5;
  }
}

- (void)_setupContentViewInContainerView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    customView = [(SBDynamicFlashlightActivityElement *)self customView];
    v5 = [customView isDescendantOfView:viewCopy];

    if ((v5 & 1) == 0)
    {
      customView2 = [(SBDynamicFlashlightActivityElement *)self customView];
      [viewCopy insertSubview:customView2 atIndex:0];
    }
  }
}

- (void)takeAlertingAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  activityHost = [(SBDynamicFlashlightActivityElement *)self activityHost];
  v6 = [activityHost alertWithReason:reasonCopy implicitlyDismissable:1];
  if (v6 != self->_alertingAssertion)
  {
    objc_storeStrong(&self->_alertingAssertion, v6);
    objc_initWeak(&location, self);
    alertingAssertion = self->_alertingAssertion;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__SBDynamicFlashlightActivityElement_takeAlertingAssertionWithReason___block_invoke;
    v8[3] = &unk_2783B4B88;
    objc_copyWeak(&v9, &location);
    [(SAAutomaticallyInvalidatable *)alertingAssertion addInvalidationBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __70__SBDynamicFlashlightActivityElement_takeAlertingAssertionWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _alertingAssertionDidInvalidate:v6 withReason:v5];
}

- (void)_alertingAssertionDidInvalidate:(id)invalidate withReason:(id)reason
{
  alertingAssertion = self->_alertingAssertion;
  if (alertingAssertion == invalidate)
  {
    self->_alertingAssertion = 0;
  }
}

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (CGSize)intrinsicCompactContainerSize
{
  mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [mEMORY[0x277D67E28] maximumLeadingTrailingViewSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setObstructionEdge:(unint64_t)edge
{
  if (self->_obstructionEdge != edge)
  {
    self->_obstructionEdge = edge;
    elementViewController = self->_elementViewController;
    elementOrientation = [(SBDynamicFlashlightActivityElement *)self elementOrientation];

    [(SBDynamicFlashlightActivityElementViewController *)elementViewController setElementOrientation:elementOrientation];
  }
}

- (int64_t)elementOrientation
{
  obstructionEdge = [(SBDynamicFlashlightActivityElement *)self obstructionEdge];
  if (obstructionEdge > 3)
  {
    return 1;
  }

  else
  {
    return qword_21F8A7E58[obstructionEdge];
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  isProminent = [(SBDynamicFlashlightActivityElement *)self isProminent];
  if ([(SBDynamicFlashlightActivityElement *)self isPreviewing])
  {
    return isProminent;
  }

  else
  {
    return isProminent | 2;
  }
}

- (void)setPreviewing:(BOOL)previewing
{
  if (self->_previewing != previewing)
  {
    self->_previewing = previewing;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setUrgent:(BOOL)urgent
{
  if (self->_urgent != urgent)
  {
    self->_urgent = urgent;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)expanding
{
  if (self->_expanding != expanding)
  {
    self->_expanding = expanding;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)prominent
{
  if (self->_prominent != prominent)
  {
    self->_prominent = prominent;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)dynamicFlashlightViewControllerDidChangeIntensity:(double)intensity width:(double)width animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SAAutomaticallyInvalidatable *)self->_alertingAssertion resetAutomaticInvalidationTimer];
  delegate = [(SBDynamicFlashlightActivityElement *)self delegate];
  [delegate dynamicFlashlightActivityElementDidChangeIntensity:animatedCopy width:intensity animated:width];
}

- (void)dynamicFlashlightViewControllerDidToggleFlashlight
{
  [(SAAutomaticallyInvalidatable *)self->_alertingAssertion resetAutomaticInvalidationTimer];
  delegate = [(SBDynamicFlashlightActivityElement *)self delegate];
  [delegate dynamicFlashlightActivityElementRequestsTogglingFlashlight];
}

- (void)dynamicFlashlightViewControllerDidChangePreferredContentRect
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (void)dynamicFlashlightViewControllerUpdatePersistedIntensity:(double)intensity width:(double)width
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dynamicFlashlightActivityElementDidUpdatePersistedIntensity:intensity width:width];
}

- (void)dynamicFlashlightViewControllerShouldDismiss
{
  v3 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBDynamicFlashlightActivityElement *)v3 dynamicFlashlightViewControllerShouldDismiss];
  }

  [(SAAutomaticallyInvalidatable *)self->_alertingAssertion invalidateWithReason:@"VC requested dismissal"];
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (id)_leadingPackageStateForState:(id)state
{
  stateCopy = state;
  if ([stateCopy isUnavailable])
  {
    v4 = @"unavailable";
  }

  else if ([stateCopy isOn])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  return v4;
}

- (id)_trailingTextForState:(id)state
{
  stateCopy = state;
  if ([stateCopy isUnavailable])
  {
    v4 = 0;
  }

  else
  {
    isOn = [stateCopy isOn];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = mainBundle;
    if (isOn)
    {
      v8 = @"FLASHLIGHT_ON";
    }

    else
    {
      v8 = @"FLASHLIGHT_OFF";
    }

    v4 = [mainBundle localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
  }

  return v4;
}

- (id)_textColorForState:(id)state
{
  stateCopy = state;
  if (([stateCopy isUnavailable] & 1) != 0 || (objc_msgSend(stateCopy, "isOn") & 1) == 0)
  {
    sbui_inactiveColor = [MEMORY[0x277D75348] sbui_inactiveColor];
  }

  else
  {
    sbui_inactiveColor = [MEMORY[0x277D75348] colorWithRed:0.835294118 green:0.823529412 blue:1.0 alpha:1.0];
  }

  v5 = sbui_inactiveColor;

  return v5;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)participantState
{
  if (self->_layoutMode == 3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  v5 = [(SBDynamicFlashlightActivityElement *)self flashlightState:settings];
  v6 = +[SBDynamicFlashlightState offState];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = +[SBDynamicFlashlightState offState];
    [(SBDynamicFlashlightActivityElement *)self setFlashlightState:v8];

    delegate = [(SBDynamicFlashlightActivityElement *)self delegate];
    [delegate dynamicFlashlightActivityElementRequestsTogglingFlashlight];

    alertingAssertion = self->_alertingAssertion;

    [(SAAutomaticallyInvalidatable *)alertingAssertion invalidateWithReason:@"prototype settings changed"];
  }
}

- (SAActivityHosting)activityHost
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

- (SBSystemApertureGestureHandling)gestureHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureHandler);

  return WeakRetained;
}

- (SBDynamicFlashlightActivityElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shouldRemainActiveWhileFlashlightIsOff
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(self + 88) == 3;
  shouldDismissWhenOff = [*(self + 16) shouldDismissWhenOff];
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = shouldDismissWhenOff ^ 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "ELT: Remain active? layoutMode:%{BOOL}i && shouldNotDismiss:%{BOOL}i", v5, 0xEu);
}

@end