@interface SBDynamicFlashlightActivityElement
- (BOOL)shouldRemainActiveWhileFlashlightIsOff;
- (CGRect)_frameForContentViewInContainerView:(id)a3;
- (CGSize)intrinsicCompactContainerSize;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (NSString)coverSheetIdentifier;
- (NSString)elementIdentifier;
- (SAActivityHosting)activityHost;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBDynamicFlashlightActivityElement)initWithState:(id)a3 coverSheetViewController:(id)a4 fixedWidth:(BOOL)a5;
- (SBDynamicFlashlightActivityElementDelegate)delegate;
- (SBSystemApertureGestureHandling)gestureHandler;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)_leadingPackageStateForState:(id)a3;
- (id)_textColorForState:(id)a3;
- (id)_trailingTextForState:(id)a3;
- (int64_t)elementOrientation;
- (int64_t)participantState;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (void)_alertingAssertionDidInvalidate:(id)a3 withReason:(id)a4;
- (void)_layoutContentViewInContainerView:(id)a3;
- (void)_setCustomViewExpanded:(BOOL)a3;
- (void)_setupContentViewInContainerView:(id)a3;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)dealloc;
- (void)dynamicFlashlightViewControllerDidChangeIntensity:(double)a3 width:(double)a4 animated:(BOOL)a5;
- (void)dynamicFlashlightViewControllerDidChangePreferredContentRect;
- (void)dynamicFlashlightViewControllerDidToggleFlashlight;
- (void)dynamicFlashlightViewControllerShouldDismiss;
- (void)dynamicFlashlightViewControllerUpdatePersistedIntensity:(double)a3 width:(double)a4;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3;
- (void)setExpanding:(BOOL)a3;
- (void)setFlashlightState:(id)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setObstructionEdge:(unint64_t)a3;
- (void)setPreviewing:(BOOL)a3;
- (void)setProminent:(BOOL)a3;
- (void)setUrgent:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)shouldRemainActiveWhileFlashlightIsOff;
- (void)takeAlertingAssertionWithReason:(id)a3;
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

- (SBDynamicFlashlightActivityElement)initWithState:(id)a3 coverSheetViewController:(id)a4 fixedWidth:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
    v19 = [(SBDynamicFlashlightActivityElement *)v11 _leadingPackageStateForState:v8];
    [(SBUISystemApertureCAPackageContentProvider *)v18 setState:v19 animated:0];

    v20 = objc_alloc(MEMORY[0x277D67E58]);
    v21 = [(SBDynamicFlashlightActivityElement *)v11 _trailingTextForState:v8];
    v22 = [v20 initWithText:v21 style:4];
    trailingTextProvider = v11->_trailingTextProvider;
    v11->_trailingTextProvider = v22;

    v24 = v11->_trailingTextProvider;
    v25 = [(SBDynamicFlashlightActivityElement *)v11 _textColorForState:v8];
    [(SBUISystemApertureTextContentProvider *)v24 setContentColor:v25];

    v26 = [[SBDynamicFlashlightActivityElementViewController alloc] initWithOptionsProvider:v11->_flashlightSettings state:v8 fixedWidth:v5];
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

    objc_storeStrong(&v11->_coverSheetViewController, a4);
    [(CSCoverSheetViewController *)v11->_coverSheetViewController registerExternalBehaviorProvider:v11];
  }

  return v11;
}

- (void)setFlashlightState:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(SBDynamicFlashlightState *)self->_flashlightState isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_flashlightState, a3);
    [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setState:v5];
    v6 = [(SBDynamicFlashlightActivityElement *)self _leadingPackageStateForState:v5];
    v7 = [(SBDynamicFlashlightActivityElement *)self leadingPackageViewProvider];
    [v7 setState:v6 animated:1];

    v8 = [(SBDynamicFlashlightActivityElement *)self _trailingTextForState:v5];
    v9 = [(SBDynamicFlashlightActivityElement *)self _textColorForState:v5];
    v10 = [(SBDynamicFlashlightActivityElement *)self trailingTextProvider];
    [v10 swapInText:v8 textColor:v9];

    if ([(SBDynamicFlashlightActivityElement *)self layoutMode]== 3)
    {
      v11 = [(SBDynamicFlashlightActivityElement *)self customView];
      v12 = [v11 superview];

      if (v12)
      {
        [(SBDynamicFlashlightActivityElement *)self layoutHostContainerViewDidLayoutSubviews:v12];
      }
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = @"SBSystemApertureNotificationUserInfoElementKey";
    v16[0] = self;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v13 postNotificationName:@"SBSystemApertureElementKeyColorDidInvalidateNotification" object:0 userInfo:v14];
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
    v4 = [(SBUISystemApertureCAPackageContentProvider *)self->_leadingPackageViewProvider providedView];
    v5 = self->_leadingView;
    self->_leadingView = v4;

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
    v4 = [(SBUISystemApertureTextContentProvider *)self->_trailingTextProvider providedView];
    v5 = self->_trailingView;
    self->_trailingView = v4;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  layoutMode = self->_layoutMode;
  if (layoutMode != a3)
  {
    self->_layoutMode = a3;
    if (a3 == 3)
    {
      coverSheetViewController = self->_coverSheetViewController;

      [(CSCoverSheetViewController *)coverSheetViewController externalBehaviorProviderBehaviorChanged:self, a4];
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

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  if (a3 == 3)
  {
    [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController preferredContentRect:a4.top];
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
    trailing = a4.trailing;
    bottom = a4.bottom;
    leading = a4.leading;
    top = a4.top;
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

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  elementViewController = self->_elementViewController;
  v5 = a3;
  [(SBDynamicFlashlightActivityElementViewController *)elementViewController setElementOrientation:[(SBDynamicFlashlightActivityElement *)self elementOrientation]];
  [(SBDynamicFlashlightActivityElement *)self _layoutContentViewInContainerView:v5];
}

- (void)_layoutContentViewInContainerView:(id)a3
{
  v4 = a3;
  v5 = [(SBDynamicFlashlightActivityElement *)self customView];
  [(SBDynamicFlashlightActivityElement *)self _frameForContentViewInContainerView:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v5 setFrame:{v7, v9, v11, v13}];
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
  v15 = [(SBDynamicFlashlightActivityElement *)self customView];
  v16 = v15;
  if (self->_layoutMode >= 3)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  [v15 setAlpha:v17];

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

- (CGRect)_frameForContentViewInContainerView:(id)a3
{
  v4 = a3;
  v5 = [(SBDynamicFlashlightActivityElement *)self customView];
  [v5 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v7 = v6;
  v9 = v8;

  v11 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  if (v4)
  {
    [v4 bounds];
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

- (void)_setCustomViewExpanded:(BOOL)a3
{
  v3 = a3;
  [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setExpanded:?];
  elementViewController = self->_elementViewController;

  [(SBDynamicFlashlightActivityElementViewController *)elementViewController setPanEnabled:v3];
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(SBDynamicFlashlightActivityElementViewController *)self->_elementViewController setElementOrientation:[(SBDynamicFlashlightActivityElement *)self elementOrientation]];
  v9 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SBDynamicFlashlightActivityElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v16[3] = &unk_2783A92D8;
  v16[4] = self;
  v10 = v7;
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
  [v8 animateAlongsideTransition:v12 completion:0];

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

- (void)_setupContentViewInContainerView:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(SBDynamicFlashlightActivityElement *)self customView];
    v5 = [v4 isDescendantOfView:v7];

    if ((v5 & 1) == 0)
    {
      v6 = [(SBDynamicFlashlightActivityElement *)self customView];
      [v7 insertSubview:v6 atIndex:0];
    }
  }
}

- (void)takeAlertingAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(SBDynamicFlashlightActivityElement *)self activityHost];
  v6 = [v5 alertWithReason:v4 implicitlyDismissable:1];
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

- (void)_alertingAssertionDidInvalidate:(id)a3 withReason:(id)a4
{
  alertingAssertion = self->_alertingAssertion;
  if (alertingAssertion == a3)
  {
    self->_alertingAssertion = 0;
  }
}

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (CGSize)intrinsicCompactContainerSize
{
  v2 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
  [v2 maximumLeadingTrailingViewSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setObstructionEdge:(unint64_t)a3
{
  if (self->_obstructionEdge != a3)
  {
    self->_obstructionEdge = a3;
    elementViewController = self->_elementViewController;
    v5 = [(SBDynamicFlashlightActivityElement *)self elementOrientation];

    [(SBDynamicFlashlightActivityElementViewController *)elementViewController setElementOrientation:v5];
  }
}

- (int64_t)elementOrientation
{
  v2 = [(SBDynamicFlashlightActivityElement *)self obstructionEdge];
  if (v2 > 3)
  {
    return 1;
  }

  else
  {
    return qword_21F8A7E58[v2];
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  v3 = [(SBDynamicFlashlightActivityElement *)self isProminent];
  if ([(SBDynamicFlashlightActivityElement *)self isPreviewing])
  {
    return v3;
  }

  else
  {
    return v3 | 2;
  }
}

- (void)setPreviewing:(BOOL)a3
{
  if (self->_previewing != a3)
  {
    self->_previewing = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setUrgent:(BOOL)a3
{
  if (self->_urgent != a3)
  {
    self->_urgent = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)a3
{
  if (self->_expanding != a3)
  {
    self->_expanding = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)a3
{
  if (self->_prominent != a3)
  {
    self->_prominent = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)dynamicFlashlightViewControllerDidChangeIntensity:(double)a3 width:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  [(SAAutomaticallyInvalidatable *)self->_alertingAssertion resetAutomaticInvalidationTimer];
  v9 = [(SBDynamicFlashlightActivityElement *)self delegate];
  [v9 dynamicFlashlightActivityElementDidChangeIntensity:v5 width:a3 animated:a4];
}

- (void)dynamicFlashlightViewControllerDidToggleFlashlight
{
  [(SAAutomaticallyInvalidatable *)self->_alertingAssertion resetAutomaticInvalidationTimer];
  v3 = [(SBDynamicFlashlightActivityElement *)self delegate];
  [v3 dynamicFlashlightActivityElementRequestsTogglingFlashlight];
}

- (void)dynamicFlashlightViewControllerDidChangePreferredContentRect
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (void)dynamicFlashlightViewControllerUpdatePersistedIntensity:(double)a3 width:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dynamicFlashlightActivityElementDidUpdatePersistedIntensity:a3 width:a4];
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

- (id)_leadingPackageStateForState:(id)a3
{
  v3 = a3;
  if ([v3 isUnavailable])
  {
    v4 = @"unavailable";
  }

  else if ([v3 isOn])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  return v4;
}

- (id)_trailingTextForState:(id)a3
{
  v3 = a3;
  if ([v3 isUnavailable])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 isOn];
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"FLASHLIGHT_ON";
    }

    else
    {
      v8 = @"FLASHLIGHT_OFF";
    }

    v4 = [v6 localizedStringForKey:v8 value:&stru_283094718 table:@"SpringBoard"];
  }

  return v4;
}

- (id)_textColorForState:(id)a3
{
  v3 = a3;
  if (([v3 isUnavailable] & 1) != 0 || (objc_msgSend(v3, "isOn") & 1) == 0)
  {
    v4 = [MEMORY[0x277D75348] sbui_inactiveColor];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.835294118 green:0.823529412 blue:1.0 alpha:1.0];
  }

  v5 = v4;

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

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v5 = [(SBDynamicFlashlightActivityElement *)self flashlightState:a3];
  v6 = +[SBDynamicFlashlightState offState];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = +[SBDynamicFlashlightState offState];
    [(SBDynamicFlashlightActivityElement *)self setFlashlightState:v8];

    v9 = [(SBDynamicFlashlightActivityElement *)self delegate];
    [v9 dynamicFlashlightActivityElementRequestsTogglingFlashlight];

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
  v3 = *(a1 + 88) == 3;
  v4 = [*(a1 + 16) shouldDismissWhenOff];
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4 ^ 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "ELT: Remain active? layoutMode:%{BOOL}i && shouldNotDismiss:%{BOOL}i", v5, 0xEu);
}

@end