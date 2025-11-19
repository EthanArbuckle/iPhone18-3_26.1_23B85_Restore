@interface SBDeckSwitcherPanGestureWorkspaceTransaction
- (id)selectedAppLayoutForGestureRecognizer:(id)a3;
- (void)_begin;
- (void)_beginWithGesture:(id)a3;
- (void)_didComplete;
- (void)_finishWithGesture:(id)a3;
- (void)_removeHysteresisFromTranslation;
@end

@implementation SBDeckSwitcherPanGestureWorkspaceTransaction

- (id)selectedAppLayoutForGestureRecognizer:(id)a3
{
  v4 = a3;
  v36 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v6 = [v5 contentView];
  v7 = [v5 view];
  v8 = [v5 layoutContext];
  v9 = [v8 layoutState];
  v10 = [v9 unlockedEnvironmentMode];

  v11 = [(SBWorkspaceTransaction *)self transitionRequest];
  v12 = [v11 transientOverlayContext];

  v13 = [v5 layoutContext];
  v14 = [v13 activeTransitionContext];

  v15 = [v14 request];
  v16 = [v15 transientOverlayContext];

  if (v12 && [v12 transitionType] == 1 && !-[SBFluidSwitcherGestureWorkspaceTransaction hasCompletedAtLeastOneGesture](self, "hasCompletedAtLeastOneGesture"))
  {
    v33 = [v12 transientOverlay];
    v21 = [v5 _appLayoutForWorkspaceTransientOverlay:v33];
  }

  else
  {
    if (v10 == 2)
    {
      [v7 bounds];
      UIRectGetCenter();
      v29 = v5;
    }

    else
    {
      if (v10 == 1 && (!v14 || !v16 || [v16 transitionType]))
      {
        v17 = [v5 layoutContext];
        v18 = [v17 layoutState];

        if (SBPeekConfigurationIsValid([v18 peekConfiguration]))
        {
          v19 = [v5 layoutContext];
          [v19 layoutState];
          v20 = v35 = v4;
          v21 = [v20 appLayout];

          v4 = v35;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_19;
      }

      v22 = v4;
      v23 = [v36 windowManagementContext];
      v24 = [v23 isChamoisOrFlexibleWindowing];

      if (v24)
      {
        v25 = [v5 layoutContext];
        v26 = [v25 layoutState];
        v21 = [v26 appLayout];

        v4 = v22;
        goto LABEL_19;
      }

      v4 = v22;
      [v22 locationInView:v6];
      [v6 size];
      v31 = v30 * 0.5;
      [v6 size];
      v27 = v32 * 0.5;
      v29 = v5;
      v28 = v31;
    }

    v21 = [v29 _adjustedAppLayoutForItemContainerAtLocation:1 environment:{v27, v28}];
  }

LABEL_19:

  return v21;
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

- (void)_beginWithGesture:(id)a3
{
  v4 = a3;
  kdebug_trace();
  [(SBDeckSwitcherPanGestureWorkspaceTransaction *)self _removeHysteresisFromTranslation];
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, v4);
  [v7 touchedEdges];
  if (v7)
  {
    [v7 _touchInterfaceOrientation];
    v8 = _screenRegionGivenInterfaceOrientedRegion();
    v9 = [v5 dataSource];
    v10 = [v9 switcherInterfaceOrientationForSwitcherContentController:v5];

    if ((_interfaceOrientedRegionGivenScreenRegion() & 4) == 0)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v17 = __66__SBDeckSwitcherPanGestureWorkspaceTransaction__beginWithGesture___block_invoke;
      v18 = &unk_2783BEC18;
      v20 = v8;
      v21 = v10;
      v19 = self;
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

  v14 = [(SBDeckSwitcherPanGestureWorkspaceTransaction *)self selectedAppLayoutForGestureRecognizer:v4];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v14];
  v15.receiver = self;
  v15.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v15 _beginWithGesture:v4];
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

- (void)_finishWithGesture:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = SBDeckSwitcherPanGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _finishWithGesture:v4];

  kdebug_trace();
}

- (void)_removeHysteresisFromTranslation
{
  v3 = objc_opt_class();
  v4 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v12 = SBSafeCast(v3, v4);

  if (v12)
  {
    v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
    v6 = [v5 view];

    [v12 translationInView:v6];
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

    [v12 setTranslation:v6 inView:{0.0, v10}];
  }
}

@end