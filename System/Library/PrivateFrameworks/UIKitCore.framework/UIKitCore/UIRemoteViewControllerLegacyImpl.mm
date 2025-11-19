@interface UIRemoteViewControllerLegacyImpl
@end

@implementation UIRemoteViewControllerLegacyImpl

void __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke_2;
  block[3] = &unk_1E71285F0;
  v12 = v6;
  v10 = *(a1 + 48);
  v7 = v10;
  v16 = v10;
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(*(a1 + 72) + 8) + 24));
  if ((v1 & 1) == 0)
  {
    if (*(a1 + 32))
    {
      (*(*(a1 + 64) + 16))();
      v3 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED497168) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v7 = 138543362;
        v8 = v4;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Connection handler called with error %{public}@", &v7, 0xCu);
      }
    }

    else
    {
      [*(a1 + 40) _awakeWithConnectionInfo:*(a1 + 48)];
      v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED497170) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Connection handler called with ready view controller %{public}@", &v7, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke_338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) invoke];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke_2_339;
  v7[3] = &unk_1E70FCF18;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 whenCompleteDo:v7];
}

void __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _terminateWithError:v5];
}

uint64_t __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    [v2 bounds];
    [v2 convertRect:*(a1 + 32) toView:?];
  }

  else
  {
    [*(a1 + 40) bounds];
    [UIScreen convertRect:*(a1 + 40) fromView:?];
  }

  v5 = v3;
  v6 = v4;
  [*(a1 + 40) frame];
  v8 = v7;
  v10 = v9;
  [*(*(a1 + 48) + 152) frame];
  [*(*(a1 + 48) + 152) setFrame:{v5, v6}];
  [*(*(a1 + 48) + 160) frame];
  [*(*(a1 + 48) + 160) setFrame:{v5, v6}];
  [*(*(a1 + 48) + 168) frame];
  v11 = *(*(a1 + 48) + 168);

  return [v11 setFrame:{v8, v10}];
}

uint64_t __63___UIRemoteViewControllerLegacyImpl__statusBarHeightDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[13];
  v3 = [v1 window];
  v4 = __UIStatusBarManagerForWindow(v3);
  [v4 statusBarHeight];
  v6 = v5;

  return [v2 __hostDidChangeStatusBarHeight:v6];
}

uint64_t __69___UIRemoteViewControllerLegacyImpl__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __hostWillEnterForeground];
  v2 = *(*(a1 + 32) + 120);

  return [v2 __hostWillEnterForeground];
}

void __76___UIRemoteViewControllerLegacyImpl__snapshotAndRemoveTextEffectsRemoteView__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_70 = [v0 isEqualToString:@"com.apple.Spotlight"];
}

void __64___UIRemoteViewControllerLegacyImpl__applicationWillDeactivate___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1EFE33AD8, &unk_1EFE33AF0, &unk_1EFE33B08, &unk_1EFE33B20, &unk_1EFE33B38, &unk_1EFE33B50, &unk_1EFE33B68, &unk_1EFE33B80, &unk_1EFE33B98, &unk_1EFE33BB0, &unk_1EFE33BC8, &unk_1EFE33BE0, &unk_1EFE33BF8, &unk_1EFE33C10, &unk_1EFE33C28, 0}];
  v1 = qword_1ED497180;
  qword_1ED497180 = v0;
}

void __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) disconnect];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke_2;
  v5[3] = &unk_1E7128660;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [v2 whenCompleteDo:v5];
}

void __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke_3;
  block[3] = &unk_1E7128660;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("ViewServices", &_UIInternalPreference_RemoteViewControllerSnapshotDelay_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
    }

    else
    {
      v8 = @"(nil)";
    }

    *buf = 138543362;
    v43 = v8;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Finishing termination for remote view controller: %{public}@", buf, 0xCu);
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v9 stringWithFormat:@"<%@: %p>", v13, v11];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [v9 stringWithFormat:@"%@: end for dealloc", v14];

  [(_UIEventDeferringOwnershipToken *)*(*(a1 + 40) + 288) endEventDeferringWithReason:v15];
  v16 = *(a1 + 40);
  v17 = *(v16 + 288);
  *(v16 + 288) = 0;

  [(_UIEventDeferringOwnershipToken *)*(*(a1 + 40) + 312) endEventDeferringWithReason:v15];
  v18 = *(a1 + 40);
  v19 = *(v18 + 312);
  *(v18 + 312) = 0;

  v20 = *(a1 + 40);
  v21 = *(v20 + 320);
  *(v20 + 320) = 0;

  [*(*(a1 + 40) + 24) endUsing:&__block_literal_global_460_0];
  v22 = *(a1 + 40);
  os_unfair_lock_opaque = v22[14]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], os_unfair_lock_opaque);
    *(*(a1 + 40) + 56) = 0;
    v22 = *(a1 + 40);
  }

  os_unfair_lock_lock(v22 + 54);
  v24 = *(*(a1 + 40) + 224);
  os_unfair_lock_unlock((*(a1 + 40) + 216));
  v25 = [*(a1 + 40) _owningRemoteViewController];
  [v25 viewServiceDidTerminateWithError:v24];

  [*(*(a1 + 40) + 240) setDelegate:0];
  [*(*(a1 + 40) + 240) removeFromSuperview];
  v26 = *(a1 + 40);
  v27 = *(v26 + 240);
  *(v26 + 240) = 0;

  v28 = *(a1 + 40);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;

  v30 = *(a1 + 40);
  v31 = *(v30 + 32);
  *(v30 + 32) = 0;

  v32 = *(a1 + 40);
  v33 = *(v32 + 104);
  *(v32 + 104) = 0;

  v34 = *(a1 + 40);
  v35 = *(v34 + 120);
  *(v34 + 120) = 0;

  v36 = *(a1 + 40);
  v37 = *(v36 + 448);
  if (v37)
  {
    [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)v37 invalidate];
    v38 = *(a1 + 40);
    v39 = *(v38 + 448);
    *(v38 + 448) = 0;

    v36 = *(a1 + 40);
  }

  [*(v36 + 176) removeFromSuperview];
  v40 = *(a1 + 40);
  v41 = *(v40 + 176);
  *(v40 + 176) = 0;

  (*(*(a1 + 32) + 16))();
}

void __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke_458(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = [v2 userInfo];
    NSLog(&cfstr_ErrorCleaningU.isa, v2, v3);
  }
}

uint64_t __47___UIRemoteViewControllerLegacyImpl_initialize__block_invoke()
{
  objc_opt_class();

  return _class_setCustomDeallocInitiation();
}

void __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_2;
  v3[3] = &unk_1E70F0F78;
  v4 = *(a1 + 32);
  [v2 performAsync:v3];
}

uint64_t __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_4;
  v9[3] = &unk_1E71028A8;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = a2;
  v8 = v5;
  [v6 performAsync:v9];
}

uint64_t __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + 48);
    }

    return (*(result + 16))(result, v3 & 1);
  }

  return result;
}

void __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _owningRemoteViewController];
  *(*(a1 + 32) + 424) = [v2 _viewControllerUnderlapsStatusBar];

  v3 = [*(a1 + 32) _sheetPresentationController];
  v4 = v3;
  if (v3)
  {
    [v3 _tryToConnectToRemoteSheet:*(a1 + 32)];
  }

  v5 = *(a1 + 32);
  v6 = v5[13];
  v7 = *(a1 + 40);
  v8 = [v5 _preferredInterfaceOrientation];
  v9 = *(a1 + 32);
  v10 = [v9 traitCollection];
  v11 = [v9 _traitCollectionForServiceFromTraitCollection:v10];
  v12 = [*(a1 + 32) window];
  v13 = __UIStatusBarManagerForWindow(v12);
  [v13 statusBarHeight];
  v15 = v14;

  v16 = *(a1 + 32);
  v17 = *(v16 + 424);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke_2;
  v18[3] = &unk_1E710CB38;
  v18[4] = v16;
  [v6 __hostViewWillAppear:v7 inInterfaceOrientation:v8 traitCollection:v11 statusBarHeight:v17 underlapsStatusBar:v18 completionHandler:v15];

  [*(*(a1 + 32) + 120) __hostViewWillAppear:*(a1 + 40)];
}

void __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke_2(uint64_t a1, double a2, double a3)
{
  if (a2 != *MEMORY[0x1E695F060] || a3 != *(MEMORY[0x1E695F060] + 8))
  {
    v7 = [UIApp _systemAnimationFenceExemptQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke_3;
    v8[3] = &unk_1E70F6848;
    v8[4] = *(a1 + 32);
    *&v8[5] = a2;
    *&v8[6] = a3;
    [v7 performAsync:v8];
  }
}

void __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _owningRemoteViewController];
  [v2 setPreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
}

uint64_t __70___UIRemoteViewControllerLegacyImpl__viewWillMoveFromWindow_toWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _owningRemoteViewController];
  *(*(a1 + 32) + 424) = [v2 _viewControllerUnderlapsStatusBar];

  v3 = *(a1 + 32);
  v4 = v3[13];
  v5 = [v3 _preferredInterfaceOrientationForWindow:*(a1 + 40)];
  v6 = __UIStatusBarManagerForWindow(*(a1 + 40));
  [v6 statusBarHeight];
  v8 = v7;

  v9 = *(*(a1 + 32) + 424);

  return [v4 __hostViewWillMoveToWindowInInterfaceOrientation:v5 withStatusBarHeight:v9 underlapsStatusBar:v8];
}

void __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(*(a1 + 32) + 104) _awaitingReply];
  v3 = [*(a1 + 40) displayIdentity];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_2;
  v8[3] = &unk_1E71286B0;
  objc_copyWeak(&v9, &location);
  [v2 __hostViewDidMoveToScreenWithFBSDisplayIdentity:v3 newHostingHandleReplyHandler:v8];

  v4 = [*(a1 + 32) _owningRemoteViewController];
  LODWORD(v3) = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (v3)
  {
    v5 = [*(*(a1 + 32) + 120) _awaitingReply];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_4;
    v6[3] = &unk_1E71286D8;
    objc_copyWeak(&v7, &location);
    [v5 __hostViewDidMoveToScreenWithNewHostingHandleReplyHandler:v6];

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_3;
    v5[3] = &unk_1E70F35B8;
    v6 = v3;
    v7 = WeakRetained;
    [WeakRetained performReplyActionsInsideSynchronousReply:v5];
  }
}

uint64_t __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 144) setHostedWindowHostingHandle:?];
  }

  v2 = *(a1 + 40);

  return [v2 _updateUnderflowProperties];
}

void __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_5;
    v8[3] = &unk_1E70F6228;
    v9 = v5;
    v10 = WeakRetained;
    v11 = v6;
    [WeakRetained performReplyActionsInsideSynchronousReply:v8];
  }
}

uint64_t __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke_5(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(*(result + 40) + 152) setHostedWindowHostingHandle:?];
  }

  if (*(v1 + 48))
  {
    v2 = *(*(v1 + 40) + 168);

    return [v2 setHostedWindowHostingHandle:?];
  }

  return result;
}

uint64_t __55___UIRemoteViewControllerLegacyImpl_viewWillDisappear___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __hostViewWillDisappear:*(a1 + 40)];
  [*(*(a1 + 32) + 120) __hostViewWillDisappear:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _cancelProxiedEditAlertViewAnimated:v3];
}

void __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_UIViewControllerTransitionCoordinatorContextDescription descriptionForTransitionCoordinatorContext:v3];
  [v4 setToOrientation:*(a1 + 40)];
  [v4 setFromOrientation:*(a1 + 48)];
  v5 = *(a1 + 32);
  if (*(v5 + 176))
  {
    *(v5 + 184) = 1;
    [*(a1 + 32) _restoreTextEffectsRemoteView];
    v5 = *(a1 + 32);
  }

  [v5 updateTouchInterdictionViewLayout];
  v6 = [*(a1 + 32) _owningRemoteViewController];
  *(*(a1 + 32) + 424) = [v6 _viewControllerUnderlapsStatusBar];

  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) _fenceForSynchronizedDrawing];
  v30 = 0uLL;
  v31 = 0;
  if (_UIUpdateCycleEnabled() && v8)
  {
    *&v9 = _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, 0, &v30).n128_u64[0];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 104);
  [*(v10 + 136) _sizeForRemoteViewService];
  v13 = v12;
  v15 = v14;
  v16 = [*(*(a1 + 32) + 136) _boundingPathForRemoteViewService];
  v17 = [*(a1 + 32) window];
  v18 = __UIStatusBarManagerForWindow(v17);
  [v18 statusBarHeight];
  v20 = v19;

  v21 = *(a1 + 32);
  v22 = *(v21 + 424);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v29[3] = &unk_1E7128700;
  v29[4] = v21;
  v27 = v30;
  v28 = v31;
  [v11 __hostViewWillTransitionToSize:v4 withContextDescription:v16 boundingPath:v22 statusBarHeight:v8 underlapsStatusBar:&v27 fence:v29 timing:v13 whenDone:{v15, v20}];

  [*(*(a1 + 32) + 136) _clearNeedsRemoteViewServiceBoundingPathUpdate];
  [v8 invalidate];

  objc_autoreleasePoolPop(v7);
  v23 = *(*(a1 + 32) + 136);
  [v23 frame];
  [v23 _updateTextEffectsGeometries:?];
  v24 = *(*(a1 + 32) + 136);
  v25 = [v24 window];
  v26 = [(UIWindow *)v25 _fbsScene];
  [v24 _updateSceneGeometries:v26 forOrientation:*(a1 + 40)];

  [*(a1 + 32) _endDeferringProxySheetConfigurationUpdates];
}

uint64_t __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, double a2, double a3, double a4)
{
  [*(*(a1 + 32) + 136) _sizeForRemoteViewService];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) window];
  v13 = __UIStatusBarManagerForWindow(v12);
  [v13 statusBarHeight];
  v15 = v14;

  v16 = vabdd_f64(a2, v9);
  if (vabdd_f64(a3, v11) >= 0.00000011920929 || v16 >= 0.00000011920929 || v15 != a4)
  {
    v19 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
    v21[3] = &unk_1E70F32F0;
    v21[4] = v19;
    *&v21[5] = v15;
    [v19 _synchronizeAnimationsInActionsIfNecessary:v21];
  }

  return [*(a1 + 32) _setIsUpdatingSize:0];
}

uint64_t __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __hostDidChangeStatusBarHeight:*(a1 + 40)];
  [*(a1 + 32) _updateUnderflowProperties];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  [*(v2 + 136) _sizeForRemoteViewService];
  v5 = v4;
  v7 = v6;
  v8 = [*(*(a1 + 32) + 136) _boundingPathForRemoteViewService];
  [v3 __setContentSize:v8 boundingPath:{v5, v7}];

  [*(*(a1 + 32) + 136) _clearNeedsRemoteViewServiceBoundingPathUpdate];
  v9 = *(*(a1 + 32) + 136);
  [v9 frame];

  return [v9 _updateTextEffectsGeometries:?];
}

void __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3[184] == 1)
  {
    [v3 _snapshotAndRemoveTextEffectsRemoteView];
    *(*(a1 + 32) + 184) = 0;
    v3 = *(a1 + 32);
  }

  [v3 _setIsUpdatingSizeInHost:0];
  v4 = [*(a1 + 32) _owningRemoteViewController];
  isPerformingSystemSnapshot = _isPerformingSystemSnapshot(v4);

  if (isPerformingSystemSnapshot)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:_UIGetRemoteViewControllerSnapshotDelay()];
  }
}

void __153___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdatePreferredStatusBarStyle_preferredStatusBarVisibility_updateAnimation_currentAnimationSettings___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _owningRemoteViewController];
  [v1 setNeedsStatusBarAppearanceUpdate];
}

void __112___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdatePreferredWhitePointAdaptationStyle_animationSettings___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _owningRemoteViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void __78___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdateClientToHostAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _owningRemoteViewController];
  [v2 sendClientToHostAction:*(a1 + 40)];
}

void __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [_UIViewControllerTransitionCoordinatorContextDescription descriptionForTransitionCoordinatorContext:a2];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2;
  aBlock[3] = &unk_1E70F6228;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v10 = v4;
  v5 = v3;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  if (([*(a1 + 32) _isUpdatingSize] & 1) != 0 || *(a1 + 48) == 1 && (objc_msgSend(*(a1 + 32), "_owningRemoteViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "__shouldRemoteViewControllerFenceOperations"), v7, (v8 & 1) == 0))
  {
    v6[2](v6);
  }

  else
  {
    [*(a1 + 32) synchronizeAnimationsInActions:v6];
  }
}

void __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v2[13];
  v6 = _shouldDeferSendingTraitCollectionChangeToService(v2);
  v8 = [*(a1 + 32) _existingView];
  v7 = [v8 window];
  [v5 __hostWillTransitionToTraitCollection:v3 withContextDescription:v4 deferIfAnimated:v6 inRemoteViewHierarchy:v7 != 0];
}

void __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) _owningRemoteViewController];
  if (_isPerformingSystemSnapshot(v5))
  {
    v2 = [*(a1 + 32) _isUpdatingSizeInHost];

    if ((v2 & 1) == 0)
    {
      v3 = MEMORY[0x1E696AF00];
      v4 = _UIGetRemoteViewControllerSnapshotDelay();

      [v3 sleepForTimeInterval:v4];
    }
  }

  else
  {
  }
}

void __73___UIRemoteViewControllerLegacyImpl___setSupportedInterfaceOrientations___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = [*(a1 + 32) _owningRemoteViewController];
  [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
}

void __73___UIRemoteViewControllerLegacyImpl___setViewServiceIsDisplayingPopover___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  if (v2)
  {
    if (*(a1 + 40))
    {
      return;
    }

    [v2 setDelegate:0];
    [*(*(a1 + 32) + 240) removeFromSuperview];
    v3 = *(a1 + 32);
    v4 = *(v3 + 240);
    *(v3 + 240) = 0;
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v5 = [UIDimmingView alloc];
    v6 = [(UIDimmingView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 240);
    *(v7 + 240) = v6;

    [*(*(a1 + 32) + 240) setDelegate:?];
    [*(*(a1 + 32) + 240) setAutoresizingMask:18];
    v9 = [*(*(a1 + 32) + 240) layer];
    [v9 setHitTestsAsOpaque:0];

    v10 = [*(*(a1 + 32) + 136) window];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    [*(*(a1 + 32) + 240) setFrame:{0.0, 0.0, v12, v14}];
    v15 = [*(*(a1 + 32) + 136) window];
    [v15 addSubview:*(*(a1 + 32) + 240)];
    v4 = v15;
  }
}

void __109___UIRemoteViewControllerLegacyImpl__serviceWantsKeyboardEventsWithPromotedFirstResponder_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingView];
  v41 = [v2 window];

  v3 = [v41 windowScene];
  v4 = [v3 activationState];
  v5 = [v3 activationState];
  if (v41)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || (v4 != 1 ? (v7 = v5 == 0) : (v7 = 1), !v7))
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_53;
  }

  v8 = [*(a1 + 32) _owningRemoteViewController];
  v9 = [v8 isFirstResponder];

  v10 = +[UIWindow _applicationKeyWindow];
  v11 = [*(a1 + 32) _owningRemoteViewController];
  v12 = [v11 activePresentationController];

  if (!v12 || ([*(a1 + 32) _owningRemoteViewController], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "activePresentationController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "_wantsAutomaticFirstResponderWhenPresentingRemoteViewController"), v14, v13, v15))
  {
    if (!(v9 & 1 | ((*(a1 + 48) & 1) == 0)))
    {
      v16 = [v41 windowScene];
      v17 = [v16 _eventDeferringManager];

      if (v17)
      {
        v18 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
        v19 = [*(a1 + 32) _owningRemoteViewController];
        v20 = [(_UIEventDeferringManager *)v17 compareRemoteRuleOwningElement:v19 toTopElementInEnvironment:v18];

        v22 = v41 != v10 || (v20 + 1) < 2;
      }

      else
      {
        v22 = 0;
      }

      v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v24 = [v23 responder];
      v25 = [v24 inputViewController];
      v26 = [v25 view];

      if (+[UIKeyboard usesInputSystemUI]&& v22 && v26)
      {
        v27 = [*(a1 + 32) view];
        v28 = [v27 isDescendantOfView:v26];

        if (v28)
        {
          goto LABEL_32;
        }
      }

      else if (!v22)
      {
LABEL_32:

        goto LABEL_33;
      }

      if ([v23 ignoresPinning])
      {
        v29 = [*(a1 + 32) _owningRemoteViewController];
        [v29 becomeFirstResponder];
      }

      else
      {
        [v23 setIgnoresPinning:1];
        v30 = [*(a1 + 32) _owningRemoteViewController];
        [v30 becomeFirstResponder];

        [v23 setIgnoresPinning:0];
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  if ([v41 canBecomeKeyWindow] && (objc_msgSend(v41, "_isTextEffectsWindow") & 1) == 0)
  {
    v32 = v41;
  }

  else
  {
    v31 = [v41 windowScene];
    v32 = [(UIWindowScene *)v31 _keyWindow];
  }

  v33 = 0;
  if (v32 && v32 != v10)
  {
    if (v10 && (_UIWindowCompareToWindow(v10, v41) + 1) > 1)
    {
      v33 = 0;
    }

    else
    {
      [v32 makeKeyWindow];
      v33 = 1;
    }
  }

  v34 = +[UIWindow _applicationKeyWindow];
  v35 = [v41 windowScene];
  v36 = [v34 windowScene];

  if ((v33 & 1) == 0 && v35 != v36)
  {
    goto LABEL_52;
  }

  if (!+[_UIRemoteKeyboards enabled])
  {
    goto LABEL_52;
  }

  v37 = [*(a1 + 32) _owningRemoteViewController];
  v38 = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (!v38)
  {
    goto LABEL_52;
  }

  if (!+[UIKeyboard inputUIOOP])
  {
    v40 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    -[_UIRemoteKeyboards performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:servicePID:](v40, v41, [*(*(a1 + 32) + 16) servicePID]);
    goto LABEL_51;
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    v39 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v40 = [v39 keyboardArbiterClient];

    -[_UIKeyboardArbiterClientInputDestination performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:servicePID:](v40, v41, [*(*(a1 + 32) + 16) servicePID]);
LABEL_51:
  }

LABEL_52:
  [*(a1 + 32) _setWantsKeyboardEnvironmentEventDeferring:1];
  (*(*(a1 + 40) + 16))();

LABEL_53:
}

void __69___UIRemoteViewControllerLegacyImpl___viewServiceDidChangeKeyWindow___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 425) = *(a1 + 40);
  [*(a1 + 32) _updateTextEffectsGeometriesImmediatelyIfNeeded];
  if (!+[UIKeyboard usesInputSystemUI])
  {
    if (*(a1 + 40))
    {
      v6 = *(*(a1 + 32) + 168);
      if (!v6)
      {
        return;
      }

      v7 = [v6 superview];

      if (!v7)
      {
        goto LABEL_17;
      }

      if (*(a1 + 40))
      {
        return;
      }
    }

    v8 = *(*(a1 + 32) + 168);
    if (!v8)
    {
      return;
    }

    v9 = [v8 superview];

    if (!v9)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!*(a1 + 40))
  {
LABEL_5:
    v4 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    v5 = [v4 hasWindowHostingCallerID:*(*(a1 + 32) + 440)];

    if (!v5)
    {
      return;
    }

LABEL_13:
    v10 = *(a1 + 32);

    [v10 _removeTextEffectsRemoteViews];
    return;
  }

  v2 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
  v3 = [v2 hasWindowHostingCallerID:*(*(a1 + 32) + 440)];

  if (v3)
  {
    if (*(a1 + 40))
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_17:
  v11 = *(a1 + 32);

  [v11 _restoreTextEffectsRemoteView];
}

void __110___UIRemoteViewControllerLegacyImpl___viewServicePopoverDidChangeContentSize_animated_fence_withReplyHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _window];
  v3 = [v2 _windowHostingScene];
  [v3 _synchronizeDrawingWithFence:*(a1 + 40)];

  [*(a1 + 40) invalidate];
  v4 = [*(a1 + 32) _owningRemoteViewController];
  [v4 setPreferredContentSize:{*(a1 + 56), *(a1 + 64)}];

  v5 = *(a1 + 48);
  v11 = [*(a1 + 32) _owningRemoteViewController];
  v6 = [v11 _popoverController];
  v7 = [v6 popoverView];
  v8 = [v7 contentView];
  [v8 bounds];
  (*(v5 + 16))(v5, v9, v10);
}

void __86___UIRemoteViewControllerLegacyImpl___viewServicePreferredContentSizeDidChange_fence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _window];
  v3 = [v2 _windowHostingScene];
  [v3 _synchronizeDrawingWithFence:*(a1 + 40)];

  [*(a1 + 40) invalidate];
  v4 = [*(a1 + 32) _owningRemoteViewController];
  [v4 setPreferredContentSize:{*(a1 + 48), *(a1 + 56)}];
}

void __87___UIRemoteViewControllerLegacyImpl___viewServiceInstrinsicContentSizeDidChange_fence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _window];
  v3 = [v2 _windowHostingScene];
  [v3 _synchronizeDrawingWithFence:*(a1 + 40)];

  [*(a1 + 40) invalidate];
  v4 = *(a1 + 32);
  v5 = v4[17];
  v6 = [v4 _owningRemoteViewController];
  [v6 intrinsicContentSizeForServiceSize:{*(a1 + 48), *(a1 + 56)}];
  [v5 updateIntrinsicContentSize:?];

  v7 = [*(a1 + 32) _owningRemoteViewController];
  [v7 viewDidInvalidateIntrinsicContentSize];
}

void __107___UIRemoteViewControllerLegacyImpl___viewServiceSheetPresentationClientConfigurationDidChange_attributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

void __92___UIRemoteViewControllerLegacyImpl__setUpHomeAffordanceObserverInteractionForViewIfNeeded___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained[13] __hostHomeAffordanceFrameIntersectionDidChange:{a2, a3, a4, a5}];
    WeakRetained = v10;
  }
}

void __92___UIRemoteViewControllerLegacyImpl__setUpHomeAffordanceObserverInteractionForViewIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[13] __hostReceivedHomeAffordanceDoubleTapGestureDidSucceed:a2];
    WeakRetained = v4;
  }
}

void __76___UIRemoteViewControllerLegacyImpl__initializeAccessibilityPortInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "AX Exchange error: %@", &v11, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [v5 extractPortAndIKnowWhatImDoingISwear];
    if (v8 - 1 <= 0xFFFFFFFD && WeakRetained)
    {
      v9 = v8;
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v8, 0, 1))
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      WeakRetained[14] = v10;
    }
  }
}

uint64_t __83___UIRemoteViewControllerLegacyImpl___showServiceForType_withContext_replyHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];

  if (!v2)
  {
    v3 = [*(a1 + 40) view];
    [*(a1 + 32) setView:v3];
  }

  v4 = [*(a1 + 40) view];
  v5 = [v4 _showServiceForType:*(a1 + 56) withContext:*(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = *(v6 + 232);
  *(v6 + 232) = v5;

  v8 = *(a1 + 40);
  if (*(v8 + 232))
  {
    objc_initWeak(&location, v8);
    v9 = *(*(a1 + 40) + 232);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83___UIRemoteViewControllerLegacyImpl___showServiceForType_withContext_replyHandler___block_invoke_2;
    v11[3] = &unk_1E7126B50;
    objc_copyWeak(&v12, &location);
    [v9 setDismissedHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(v8 + 104) __textServiceDidDismiss];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __83___UIRemoteViewControllerLegacyImpl___showServiceForType_withContext_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[13] __textServiceDidDismiss];
    v2 = v3[29];
    v3[29] = 0;

    WeakRetained = v3;
  }
}

void __113___UIRemoteViewControllerLegacyImpl___showServiceForText_selectedTextRangeValue_type_fromRectValue_replyHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) CGRectValue];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v10 rangeValue];
    v13 = v12;
  }

  else
  {
    v13 = [*(a1 + 48) length];
    v11 = 0;
  }

  v14 = [*(a1 + 56) view];
  v15 = *(a1 + 72);
  v16 = *(a1 + 48);
  v17 = [*(a1 + 56) view];
  v18 = [v14 _showServiceForText:v16 selectedTextRange:v11 type:v13 fromRect:v15 inView:{v17, v3, v5, v7, v9}];
  v19 = *(a1 + 56);
  v20 = *(v19 + 232);
  *(v19 + 232) = v18;

  objc_initWeak(&location, *(a1 + 56));
  v21 = *(*(a1 + 56) + 232);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __113___UIRemoteViewControllerLegacyImpl___showServiceForText_selectedTextRangeValue_type_fromRectValue_replyHandler___block_invoke_2;
  v27 = &unk_1E7126B50;
  objc_copyWeak(&v28, &location);
  [v21 setDismissedHandler:&v24];
  v22 = *(a1 + 56);
  if (!*(v22 + 232))
  {
    [*(v22 + 104) __textServiceDidDismiss];
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    (*(v23 + 16))(v23, 0, 0);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __113___UIRemoteViewControllerLegacyImpl___showServiceForText_selectedTextRangeValue_type_fromRectValue_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[13] __textServiceDidDismiss];
    v2 = v3[29];
    v3[29] = 0;

    WeakRetained = v3;
  }
}

void __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_2;
  v2[3] = &unk_1E70F35B8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:v2];
}

uint64_t __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __cancelAlertActionWithToken:*(*(a1 + 32) + 376)];
  [*(a1 + 32) _endNoPresentingViewControllerAlertController:*(a1 + 40)];

  return [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"UndoCancel" trigger:@"Shake"];
}

void __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_4;
  v5 = &unk_1E70F35B8;
  v1 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v1;
  [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:&v2];
  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"Shake", v2, v3, v4, v5, v6];
}

uint64_t __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __undoActionWithToken:*(*(a1 + 32) + 376)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _endNoPresentingViewControllerAlertController:v3];
}

void __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_6;
  v2[3] = &unk_1E70F35B8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:v2];
}

uint64_t __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 104) __redoActionWithToken:*(*(a1 + 32) + 376)];
  [*(a1 + 32) _endNoPresentingViewControllerAlertController:*(a1 + 40)];

  return [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Redo" trigger:@"Shake"];
}

void __64___UIRemoteViewControllerLegacyImpl__prepareTouchDeliveryPolicy__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  NSLog(&cfstr_SendingTouchDe.isa, v5, *(a1 + 32), v4);
}

void __81___UIRemoteViewControllerLegacyImpl__cancelTouchesForCurrentEventInHostedContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  NSLog(&cfstr_SendingCancell.isa, v4, v3);
}

void __74___UIRemoteViewControllerLegacyImpl___trampolineButtonPressData_canceled___block_invoke()
{
  v0 = qword_1ED4971B0;
  qword_1ED4971B0 = &unk_1EFE2DE28;
}

void __74___UIRemoteViewControllerLegacyImpl__timelinesForDateInterval_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = MEMORY[0x1E698E510];
        v12 = [v10 date];
        v13 = [v11 entryForPresentationTime:v12 withRequestedFidelity:{objc_msgSend(v10, "fidelity")}];

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = MEMORY[0x1E698E508];
  v15 = [*(a1 + 32) _timelineID];
  v16 = [v14 timelineWithEntries:v4 identifier:v15 configure:0];

  v17 = *(a1 + 40);
  v23 = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  (*(v17 + 16))(v17, v18);
}

void __66___UIRemoteViewControllerLegacyImpl_removeAppProtectionShieldView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sheetPresentationController];
  [v2 _tryToConnectToRemoteSheet:*(a1 + 32)];
}

void __67___UIRemoteViewControllerLegacyImpl_shieldViewUnlockButtonPressed___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971C8) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [WeakRetained serviceBundleIdentifier];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Extension authenticated: %@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67___UIRemoteViewControllerLegacyImpl_shieldViewUnlockButtonPressed___block_invoke_643;
      block[3] = &unk_1E70F3590;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971D0) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [WeakRetained serviceBundleIdentifier];
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Extension not authenticated: %@", buf, 0xCu);
      }
    }

    if (v5)
    {
      v13 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971D8) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Error attempting to unlock %@:", buf, 0xCu);
      }
    }
  }
}

void __82___UIRemoteViewControllerLegacyImpl_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [*(a1 + 32) containsObject:WeakRetained[10]])
  {
    if ([WeakRetained[10] requiresShielding])
    {
      v3 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971E0) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [WeakRetained serviceBundleIdentifier];
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Extension was locked by monitor %@", &v9, 0xCu);
      }

      [WeakRetained presentAppProtectionShieldView];
      [WeakRetained requestAppProtectionAuthIfNecessary];
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971E8) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [WeakRetained serviceBundleIdentifier];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Extension was unlocked by monitor %@", &v9, 0xCu);
      }

      [WeakRetained removeAppProtectionShieldView];
    }
  }
}

@end