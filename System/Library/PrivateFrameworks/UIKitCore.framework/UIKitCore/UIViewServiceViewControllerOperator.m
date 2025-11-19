@interface UIViewServiceViewControllerOperator
@end

@implementation UIViewServiceViewControllerOperator

void __97___UIViewServiceViewControllerOperator_establishViewControllerDeputyWithProxy_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1008))
  {
    [*(v2 + 1088) _setHostApplicationBundleIdentifier:?];
    v2 = *(a1 + 32);
  }

  [*(v2 + 1088) _setHostProcessIdentifier:*(v2 + 1000)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1088);
  v3 += 1016;
  v5 = *(v3 + 16);
  *location = *v3;
  v20 = v5;
  [v4 _setHostAuditToken:location];
  if (*(a1 + 40))
  {
    objc_initWeak(location, *(a1 + 32));
    v6 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __97___UIViewServiceViewControllerOperator_establishViewControllerDeputyWithProxy_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7128B18;
    objc_copyWeak(&v18, location);
    v7 = [_UIQueueingProxy proxyWithTarget:v6 shouldSuspendInvocationBlock:v17];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1072);
    *(v8 + 1072) = v7;

    [*(*(a1 + 32) + 1072) suspend];
    [*(*(a1 + 32) + 1088) _setRemoteViewControllerProxy:*(*(a1 + 32) + 1072)];
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 1088) performSelector:sel_willAppearInRemoteViewController_ withObject:*(*(a1 + 32) + 1072)];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 1088) _willAppearInRemoteViewController:*(*(a1 + 32) + 1072)];
  }

  [*(*(a1 + 32) + 1088) _willAppearInRemoteViewController];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1088);
  v12 = *(v10 + 1000);
  v13 = [objc_opt_class() _exportedInterface];
  v14 = [v13 protocol];
  v15 = [_UIViewServiceUIBehaviorProxy proxyWrappingExportedObject:v11 forCommunicationWithPID:v12 exportedProtocol:v14];

  v16 = [_UIViewServiceViewControllerDeputy deputyWithViewController:v15];
  (*(*(a1 + 48) + 16))();
}

BOOL __97___UIViewServiceViewControllerOperator_establishViewControllerDeputyWithProxy_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [objc_opt_class() _remoteViewControllerInterface];
    v6 = [v5 protocol];

    v7 = v6 && (protocol_getMethodDescription(v6, [v3 selector], 1, 1).name || protocol_getMethodDescription(v6, objc_msgSend(v3, "selector"), 0, 1).name);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("ViewServices", &_statusBarStateStack_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
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
    v54 = v8;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Prepare for disconnection of operator: %{public}@", buf, 0xCu);
  }

  v9 = *(*(a1 + 56) + 1104);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _boundContext];
    [v11 setZombifyOnInvalidate:1];
    [v11 invalidate];
  }

  [*(a1 + 56) __setServiceInPopover:0];
  v12 = [*(*(a1 + 56) + 1104) windowScene];
  v13 = [v12 keyboardSceneDelegate];

  v14 = [*(a1 + 56) _inputViewsKey];
  v44 = v13;
  [v13 _clearPreservedInputViewsWithId:v14 clearKeyboard:0];

  [UIApp _deliverRemainingKeyUpEvents];
  if (v10)
  {
    [*(a1 + 32) postNotificationName:@"_UIViewServiceHostedWindowWillDisconnectNotificationName" object:v10];
    v15 = [*(a1 + 56) _presentationController];
    [v15 completeCurrentTransitionImmediately];

    stopStealingStatusBar(*(*(a1 + 56) + 1104));
    [(_UIViewServiceSessionActivityRecord *)*(*(a1 + 56) + 1312) invalidate];
    v16 = *(a1 + 56);
    v17 = *(v16 + 1312);
    *(v16 + 1312) = 0;

    if ([*(*(a1 + 56) + 1368) isCapturingContentForAdditionalRenderingDestination])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = *(a1 + 40);
      v20 = v19[126];
      v21 = v19;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v18 stringWithFormat:@"<%@: %p>", v23, v21];

      v25 = [v18 stringWithFormat:@"view service connection to %@ disconnecting %@", v20, v24];

      v26 = [v10 _screen];
      [(UIScreen *)v26 _evaluateCapturedStateForReason:v25];
    }

    [*(*(a1 + 56) + 1328) invalidate];
    v27 = *(a1 + 56);
    v28 = *(v27 + 1328);
    *(v27 + 1328) = 0;

    [*(a1 + 32) removeObserver:*(a1 + 56) name:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:v10];
    [*(a1 + 32) removeObserver:*(a1 + 56) name:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:v10];
    v29 = *(a1 + 56);
    v30 = *(v29 + 1104);
    *(v29 + 1104) = 0;
  }

  v31 = *(a1 + 56);
  v32 = *(v31 + 1144);
  if (v32)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v32);
    *(*(a1 + 56) + 1144) = 0;
    v31 = *(a1 + 56);
  }

  [*(a1 + 32) postNotificationName:@"_UIViewServiceRemoteViewControllerWillDisconnectNotification" object:*(v31 + 1072)];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = [*(*(a1 + 56) + 1080) copy];
  v34 = [v33 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v49;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v48 + 1) + 8 * i) identity];
        [UIScreen _FBSDisplayIdentityDisconnected:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v35);
  }

  v39 = *(a1 + 56);
  v40 = *(v39 + 1080);
  *(v39 + 1080) = MEMORY[0x1E695E0F0];

  v41 = [*(a1 + 56) _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke_500;
  block[3] = &unk_1E7128B50;
  v43 = *(a1 + 48);
  v42 = v43;
  v46 = v43;
  v47 = *(a1 + 64);
  dispatch_async(v41, block);
}

void __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke_500(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 1064);
  *(v2 + 1064) = 0;

  v4 = *(a1 + 40);
  v5 = *(v4 + 1072);
  *(v4 + 1072) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke_2;
  block[3] = &unk_1E7128B50;
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  v10 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 40) + 1088) _setRemoteViewControllerProxy:0];
  [*(*(a1 + 40) + 1088) willMoveToParentViewController:0];
  v2 = [*(*(a1 + 40) + 1088) _existingView];
  [v2 removeFromSuperview];

  [*(*(a1 + 40) + 1088) removeFromParentViewController];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 40) childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 willMoveToParentViewController:0];
        v9 = [v8 _existingView];
        [v9 removeFromSuperview];

        [v8 removeFromParentViewController];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 1088);
  *(v10 + 1088) = 0;

  (*(*(a1 + 32) + 16))();
  return [UIApp _endBackgroundTask:*(a1 + 48)];
}

uint64_t __91___UIViewServiceViewControllerOperator___scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void __81___UIViewServiceViewControllerOperator___setHostTraitCollection_deferIfAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[157];
    if (v4)
    {
      v5 = [v4 _animator];
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __81___UIViewServiceViewControllerOperator___setHostTraitCollection_deferIfAnimated___block_invoke_2;
      v10 = &unk_1E70F35B8;
      v11 = v3;
      v12 = *(a1 + 32);
      [v5 setTransitionActions:&v7];
      [v5 animateTransition:{v3[157], v7, v8, v9, v10, v11}];
      v6 = v3[157];
      v3[157] = 0;
    }

    else
    {
      [v3[138] _setHostTraitCollection:*(a1 + 32)];
    }
  }
}

void *__139___UIViewServiceViewControllerOperator___hostWillTransitionToTraitCollection_withContextDescription_deferIfAnimated_inRemoteViewHierarchy___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1104);
  v3 = v2;
  if (*(a1 + 56))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 32) view];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = *(*(a1 + 32) + 1256);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v18 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setFromViewController:v4];
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setToViewController:0];
      [(_UIViewControllerTransitionContext *)v18 _setContainerView:v3];
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setFromStartFrame:v7, v9, v11, v13];
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setToEndFrame:v7, v9, v11, v13];
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setToStartFrame:v7, v9, v11, v13];
      [(_UIViewControllerOneToOneTransitionContext *)v18 _setFromEndFrame:v7, v9, v11, v13];
      [(_UIViewControllerTransitionContext *)v18 _setRotating:0];
      v19 = [(_UIWindowAnimationController *)_UIHostedWindowAnimationController animationControllerWithWindow:v3];
      [(_UIViewControllerTransitionContext *)v18 _setIsAnimated:*(a1 + 57)];
      [(_UIViewControllerTransitionContext *)v18 _setAnimator:v19];
      -[_UIViewControllerTransitionContext _setCompletionCurve:](v18, "_setCompletionCurve:", [*(a1 + 40) completionCurve]);
      objc_storeStrong((*(a1 + 32) + 1256), v18);
      v15 = 0;
      if ((*(a1 + 58) & 1) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __139___UIViewServiceViewControllerOperator___hostWillTransitionToTraitCollection_withContextDescription_deferIfAnimated_inRemoteViewHierarchy___block_invoke_2;
        aBlock[3] = &unk_1E70F6228;
        v26 = v19;
        v20 = v18;
        v21 = *(a1 + 32);
        v27 = v20;
        v28 = v21;
        v15 = _Block_copy(aBlock);
      }

      v14 = *(*(a1 + 32) + 1256);
    }

    v17 = [v14 _transitionCoordinator];

    v16 = (a1 + 48);
    [v3 _willTransitionToTraitCollection:*(a1 + 48) withTransitionCoordinator:v17];
    if (v15)
    {
      v15[2](v15);
    }
  }

  else
  {
    v16 = (a1 + 48);
    [v2 _willTransitionToTraitCollection:*(a1 + 48) withTransitionCoordinator:0];
    v17 = 0;
  }

  if (*(a1 + 56) == 1)
  {
    v22 = *v16;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

void __139___UIViewServiceViewControllerOperator___hostWillTransitionToTraitCollection_withContextDescription_deferIfAnimated_inRemoteViewHierarchy___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) animateTransition:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;
}

void __65___UIViewServiceViewControllerOperator__firstResponderDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1288] == 1)
  {
    WeakRetained[1288] = 0;
  }
}

void __82___UIViewServiceViewControllerOperator__wantsKeyboardEventsWithoutFirstResponder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1288] == 1)
  {
    WeakRetained[1288] = 0;
  }
}

void __95___UIViewServiceViewControllerOperator_systemLayoutFittingSizeDidChangeForChildViewController___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  LODWORD(v5) = 1112014848;
  LODWORD(v7) = 1112014848;
  [v3 _systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 40) _window];
  v14 = [v13 _windowHostingScene];
  v15 = [v14 _synchronizedDrawingFence];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained __viewServiceInstrinsicContentSizeDidChange:v15 fence:{v10, v12}];

  [v15 invalidate];

  objc_autoreleasePoolPop(v2);
}

void __82___UIViewServiceViewControllerOperator_presentationControllerDidAttemptToDismiss___block_invoke(uint64_t a1)
{
  v1 = [[UIPresentationController alloc] initWithPresentedViewController:*(*(a1 + 32) + 1088) presentingViewController:0];
  v2 = _MergedGlobals_65_0;
  _MergedGlobals_65_0 = v1;
}

void __93___UIViewServiceViewControllerOperator_dummyPopoverController_didChangeContentSize_animated___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1184));
  [WeakRetained popoverContentSize];
  if (v6 != a2 || v5 != a3)
  {
    [WeakRetained _super_setPopoverContentSize:{a2, a3}];
  }
}

void __52___UIViewServiceViewControllerOperator_XPCInterface__block_invoke()
{
  v0 = objc_alloc_init(_UIViewServiceViewControllerOperator_XPCInterface);
  v1 = qword_1ED499948;
  qword_1ED499948 = v0;
}

void __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1288] == 1)
  {
    WeakRetained[1288] = 0;
  }
}

uint64_t __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 1088) _preferredInterfaceOrientationGivenCurrentOrientation:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_3(void *a1)
{
  v1 = a1;
  v2 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[4] + 1184));
  v4 = v1[4];
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v1 = objc_loadWeakRetained(v4 + 148);
    [v1 popoverContentSize];
  }

  else
  {
    [v4 preferredContentSize];
  }

  (*(v2 + 16))(v2);
  if (v5)
  {
  }
}

id __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _traitsWillChangeHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) _traitsWillChangeHandler];
    v2 = v3[2]();

    [*(a1 + 32) _setTraitsWillChangeHandler:0];
  }

  [(UIViewController *)*(a1 + 32) _updateLastKnownInterfaceOrientationOnPresentionStack:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v15 + 1) + 8 * i) willRotateToInterfaceOrientation:*(a1 + 56) duration:*(a1 + 64)];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  *(*(a1 + 48) + 576) |= 0x400uLL;
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *(a1 + 48);
  v11 = MEMORY[0x1E695DF20];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v13 = [v11 dictionaryWithObjectsAndKeys:{v12, @"UIWindowNewOrientationUserInfoKey", 0, v15}];
  [v9 postNotificationName:@"UIWindowWillRotateNotification" object:v10 userInfo:v13];

  return v2;
}

void __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) count] != 0;
  }

  else
  {
    v3 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_3;
  v12[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
  v13 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_4;
  v6[3] = &unk_1E7123978;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = v13;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  [UIView conditionallyAnimate:v3 withAnimation:v12 layout:v6 completion:0];
}

void __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [UIKeyboardSceneDelegate setInterfaceOrientation:*(a1 + 56)];
  *(*(a1 + 32) + 1120) = *(a1 + 56);
  *(*(a1 + 32) + 1128) = *(a1 + 64);
  v2 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
  [(UIStatusBarAnimationParameters *)v2 setDuration:*(a1 + 72)];
  stealStatusBar(*(*(a1 + 32) + 1120), 0, *(*(a1 + 32) + 1104), 1);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7++) rotateToInterfaceOrientation:*(a1 + 56) duration:*(a1 + 72)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *(a1 + 48);
  v10 = MEMORY[0x1E695DF20];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v12 = [v10 dictionaryWithObjectsAndKeys:{v11, @"UIWindowNewOrientationUserInfoKey", 0, v13}];
  [v8 postNotificationName:@"UIWindowWillAnimateRotationNotification" object:v9 userInfo:v12];
}

void __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_5(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v23 + 1) + 8 * v6++) finishRotationFromInterfaceOrientation:*(a1 + 64)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  *(*(a1 + 40) + 576) &= ~0x400uLL;
  [*(a1 + 40) _setFromWindowOrientation:*(a1 + 72)];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *(a1 + 40);
  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"UIWindowOldOrientationUserInfoKey", 0, v23}];
  [v7 postNotificationName:@"UIWindowDidRotateNotification" object:v8 userInfo:v11];

  v12 = [*(a1 + 48) _traitsDidChangeHandler];

  if (v12)
  {
    v13 = [*(a1 + 48) _traitsDidChangeHandler];
    v13[2]();

    [*(a1 + 48) _setTraitsDidChangeHandler:0];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    [*(a1 + 40) frame];
    v16 = v15;
    v18 = v17;
    v19 = [*(a1 + 48) _window];
    v20 = __UIStatusBarManagerForWindow(v19);
    [v20 statusBarHeight];
    v22 = v21;

    (*(v14 + 16))(v14, v16, v18, v22);
  }
}

id __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) _traitsWillChangeHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) _traitsWillChangeHandler];
    v2 = v3[2]();

    [*(a1 + 32) _setTraitsWillChangeHandler:0];
  }

  return v2;
}

void __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) _traitsDidChangeHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) _traitsDidChangeHandler];
    v3[2]();

    [*(a1 + 32) _setTraitsDidChangeHandler:0];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    [*(a1 + 40) frame];
    v6 = v5;
    v8 = v7;
    v9 = [*(a1 + 32) _window];
    v10 = __UIStatusBarManagerForWindow(v9);
    [v10 statusBarHeight];
    v12 = v11;

    v13 = *(v4 + 16);
    v14.n128_u64[0] = v6;
    v15.n128_u64[0] = v8;
    v16.n128_u64[0] = v12;

    v13(v4, v14, v15, v16);
  }
}

uint64_t __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_579(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    *(*(a1 + 32) + 496) = *(a1 + 72);
  }

  if ((dyld_program_sdk_at_least() & 1) != 0 || *(a1 + 97) != 1)
  {
    [*(a1 + 40) __setBoundingPath:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 40) __setContentSize:*(a1 + 48) boundingPath:{*(a1 + 80), *(a1 + 88)}];
  }

  result = (*(*(a1 + 56) + 16))();
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v3 = *(a1 + 32);

    return [v3 _setHostTraitCollection:?];
  }

  return result;
}

uint64_t __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_2_580(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) __setContentSize:*(a1 + 40) boundingPath:{*(a1 + 64), *(a1 + 72)}];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);

  return [v2 __hostWillAnimateRotationToInterfaceOrientation:v3 duration:0 skipSelf:v4];
}

uint64_t __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_3_582(uint64_t a1)
{
  result = [*(a1 + 32) __hostDidRotateFromInterfaceOrientation:*(a1 + 56) skipSelf:0];
  v3 = *(a1 + 48);
  if (v3)
  {
    [*(a1 + 40) frame];
    v5 = v4;
    v7 = v6;
    v8 = [*(a1 + 32) _window];
    v9 = __UIStatusBarManagerForWindow(v8);
    [v9 statusBarHeight];
    v11 = v10;

    v12 = *(v3 + 16);
    v13.n128_u64[0] = v5;
    v14.n128_u64[0] = v7;
    v15.n128_u64[0] = v11;

    return v12(v3, v13, v14, v15);
  }

  return result;
}

void __106___UIViewServiceViewControllerOperator___hostWillAnimateRotationToInterfaceOrientation_duration_skipSelf___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 1136);
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

        [*(*(&v7 + 1) + 8 * v6++) rotateToInterfaceOrientation:*(a1 + 40) duration:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __90___UIViewServiceViewControllerOperator___createViewControllerWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(_UIViewServiceControllerOperatorCreateResult);
  v2 = [*(a1 + 32) hostingHandle];
  [(_UIViewServiceControllerOperatorCreateResult *)v6 setServiceWindowHostingHandle:v2];

  v3 = [*(a1 + 40) _supportedInterfaceOrientationsForViewController:*(*(a1 + 40) + 1088)];
  [(_UIViewServiceControllerOperatorCreateResult *)v6 setSupportedInterfaceOrientations:v3];

  v4 = [*(a1 + 40) _effectiveStatusBarStyleViewController];
  -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarStyle:](v6, "setPreferredStatusBarStyle:", [v4 preferredStatusBarStyle]);

  v5 = [*(a1 + 40) _effectiveStatusBarHiddenViewController];
  -[_UIViewServiceControllerOperatorCreateResult setPreferredStatusBarVisibility:](v6, "setPreferredStatusBarVisibility:", [v5 _preferredStatusBarVisibility]);

  [(_UIViewServiceControllerOperatorCreateResult *)v6 setAccessibilityServerPort:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

void __72___UIViewServiceViewControllerOperator__showServiceForType_withContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [*(*(a1 + 32) + 1104) windowScene];
    v7 = [v5 keyboardSceneDelegate];

    v6 = [*(a1 + 32) _inputViewsKey];
    [v7 _preserveInputViewsWithId:v6 animated:1];
  }
}

void __99___UIViewServiceViewControllerOperator__showServiceForText_selectedTextRange_type_fromRect_inView___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [*(*(a1 + 32) + 1104) windowScene];
    v7 = [v5 keyboardSceneDelegate];

    v6 = [*(a1 + 32) _inputViewsKey];
    [v7 _preserveInputViewsWithId:v6 animated:1];
  }
}

void __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke_2;
  v10[3] = &unk_1E710C928;
  v6 = a1[6];
  v8 = a1[4];
  v7 = a1[5];
  v13 = a1[7];
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v9 = v5;
  [a2 _timelinesForDateInterval:v8 completion:v10];
}

void __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (pthread_main_np() != 1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UIViewServiceViewControllerOperator.m" lineNumber:3426 description:@"Call must be made on main thread"];
  }

  [*(a1 + 40) addObjectsFromArray:v4];
  (*(*(a1 + 48) + 16))();
}

void __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke_3(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (pthread_main_np() != 1)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a1[8] object:a1[4] file:@"UIViewServiceViewControllerOperator.m" lineNumber:3431 description:@"Call must be made on main thread"];
  }

  v20 = [*(a1[4] + 1304) specifierAtPresentationDate:*(a1[4] + 1296)];
  v2 = [MEMORY[0x1E698E508] constructFrameSpecifiersForTimelines:a1[5] dateInterval:a1[6] shouldConstructStartSpecifier:0 framesPerSecond:30.0 previousSpecifier:?];
  [*(a1[4] + 1304) addSpecifiers:v2];
  v3 = [v2 lastObject];
  v4 = [v3 presentationInterval];
  v5 = [v4 startDate];
  v21 = a1;
  v6 = a1[4];
  v7 = *(v6 + 1296);
  *(v6 + 1296) = v5;

  v8 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x1E698E4F8]);
        v16 = [v14 presentationInterval];
        v17 = [v16 startDate];
        v18 = [v15 initWithDate:v17 fidelity:{objc_msgSend(v14, "requestedFidelity")}];

        [v8 addObject:v18];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  (*(v21[7] + 16))();
}

@end