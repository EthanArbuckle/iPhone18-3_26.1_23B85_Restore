@interface SBDeckSwitcherPanGestureWorkspaceTransaction
- (id)selectedAppLayoutForGestureRecognizer:(id)recognizer;
- (void)_begin;
- (void)_beginWithGesture:(id)gesture;
- (void)_didComplete;
- (void)_finishWithGesture:(id)gesture;
- (void)_removeHysteresisFromTranslation;
@end

@implementation SBDeckSwitcherPanGestureWorkspaceTransaction

- (id)selectedAppLayoutForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  contentView = [switcherViewController contentView];
  view = [switcherViewController view];
  layoutContext = [switcherViewController layoutContext];
  layoutState = [layoutContext layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];

  layoutContext2 = [switcherViewController layoutContext];
  activeTransitionContext = [layoutContext2 activeTransitionContext];

  request = [activeTransitionContext request];
  transientOverlayContext2 = [request transientOverlayContext];

  if (transientOverlayContext && [transientOverlayContext transitionType] == 1 && !-[SBFluidSwitcherGestureWorkspaceTransaction hasCompletedAtLeastOneGesture](self, "hasCompletedAtLeastOneGesture"))
  {
    transientOverlay = [transientOverlayContext transientOverlay];
    appLayout = [switcherViewController _appLayoutForWorkspaceTransientOverlay:transientOverlay];
  }

  else
  {
    if (unlockedEnvironmentMode == 2)
    {
      [view bounds];
      UIRectGetCenter();
      v29 = switcherViewController;
    }

    else
    {
      if (unlockedEnvironmentMode == 1 && (!activeTransitionContext || !transientOverlayContext2 || [transientOverlayContext2 transitionType]))
      {
        layoutContext3 = [switcherViewController layoutContext];
        layoutState2 = [layoutContext3 layoutState];

        if (SBPeekConfigurationIsValid([layoutState2 peekConfiguration]))
        {
          layoutContext4 = [switcherViewController layoutContext];
          [layoutContext4 layoutState];
          v20 = v35 = recognizerCopy;
          appLayout = [v20 appLayout];

          recognizerCopy = v35;
        }

        else
        {
          appLayout = 0;
        }

        goto LABEL_19;
      }

      v22 = recognizerCopy;
      windowManagementContext = [switcherController windowManagementContext];
      isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

      if (isChamoisOrFlexibleWindowing)
      {
        layoutContext5 = [switcherViewController layoutContext];
        layoutState3 = [layoutContext5 layoutState];
        appLayout = [layoutState3 appLayout];

        recognizerCopy = v22;
        goto LABEL_19;
      }

      recognizerCopy = v22;
      [v22 locationInView:contentView];
      [contentView size];
      v31 = v30 * 0.5;
      [contentView size];
      v27 = v32 * 0.5;
      v29 = switcherViewController;
      v28 = v31;
    }

    appLayout = [v29 _adjustedAppLayoutForItemContainerAtLocation:1 environment:{v27, v28}];
  }

LABEL_19:

  return appLayout;
}

- (void)_begin
{
  kdebug_trace();
  v3 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBDeckSwitcherPanGestureWorkspaceTransaction *)v3 _begin];
  }

  v4.receiver = self;
  v4.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v4 _begin];
}

- (void)_didComplete
{
  v3 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBDeckSwitcherPanGestureWorkspaceTransaction *)v3 _didComplete];
  }

  v4.receiver = self;
  v4.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v4 _didComplete];
}

- (void)_beginWithGesture:(id)gesture
{
  gestureCopy = gesture;
  kdebug_trace();
  [(SBDeckSwitcherPanGestureWorkspaceTransaction *)self _removeHysteresisFromTranslation];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, gestureCopy);
  [v7 touchedEdges];
  if (v7)
  {
    [v7 _touchInterfaceOrientation];
    v8 = _screenRegionGivenInterfaceOrientedRegion();
    dataSource = [switcherViewController dataSource];
    v10 = [dataSource switcherInterfaceOrientationForSwitcherContentController:switcherViewController];

    if ((_interfaceOrientedRegionGivenScreenRegion() & 4) == 0)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v17 = __66__SBDeckSwitcherPanGestureWorkspaceTransaction__beginWithGesture___block_invoke;
      v18 = &unk_2783BEC18;
      v20 = v8;
      v21 = v10;
      selfCopy = self;
      v11 = v16;
      v12 = 0;
      v22 = 0;
      v13 = 4;
      do
      {
        if (((1 << v12) & 0x1E) != 0)
        {
          v17(v11);
          if (v22)
          {
            break;
          }

          --v13;
        }

        if (v12 > 0x3E)
        {
          break;
        }

        ++v12;
      }

      while (v13 > 0);
    }
  }

  v14 = [(SBDeckSwitcherPanGestureWorkspaceTransaction *)self selectedAppLayoutForGestureRecognizer:gestureCopy];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v14];
  v15.receiver = self;
  v15.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v15 _beginWithGesture:gestureCopy];
  kdebug_trace();
}

void __66__SBDeckSwitcherPanGestureWorkspaceTransaction__beginWithGesture___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v6 = a3;
  if ((_interfaceOrientedRegionGivenScreenRegion() & 4) != 0)
  {
    if (*(a1 + 48) != v6)
    {
      v7 = [*(a1 + 32) windowScene];
      v8 = [v7 switcherController];

      [v8 _attemptContentViewInterfaceOrientationUpdateForPanGesture:v6];
      [SBApp updateNativeOrientationWithOrientation:v6 logMessage:@"Force updating orientation for deck switcher pan gesture transaction"];
    }

    *a4 = 1;
  }
}

- (void)_finishWithGesture:(id)gesture
{
  gestureCopy = gesture;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _finishWithGesture:gestureCopy];

  kdebug_trace();
}

- (void)_removeHysteresisFromTranslation
{
  v3 = objc_opt_class();
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v12 = SBSafeCast(v3, gestureRecognizer);

  if (v12)
  {
    switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
    view = [switcherViewController view];

    [v12 translationInView:view];
    v8 = v7;
    [v12 _hysteresis];
    v10 = v8 + v9;
    if (v8 + v9 > 0.0)
    {
      v10 = 0.0;
    }

    v11 = fmax(v8 - v9, 0.0);
    if (v8 > 0.0)
    {
      v10 = v11;
    }

    [v12 setTranslation:view inView:{0.0, v10}];
  }
}

@end