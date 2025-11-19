@interface UIKeyboardArbiterClient
@end

@implementation UIKeyboardArbiterClient

void __56___UIKeyboardArbiterClient_automaticSharedArbiterClient__block_invoke()
{
  if (+[_UIKeyboardArbiterClient enabled])
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      v0 = off_1E70EBA58;
    }

    else
    {
      v1 = [UIApp _isSpringBoard];
      v0 = off_1E70EBA50;
      if (v1)
      {
        v0 = off_1E70EBA60;
      }
    }

    v2 = objc_alloc_init(*v0);
    v3 = qword_1ED49DA80;
    qword_1ED49DA80 = v2;
  }
}

void __39___UIKeyboardArbiterClient_serviceName__block_invoke()
{
  v2 = [MEMORY[0x1E698E6D0] environmentAliases];
  v0 = [v2 resolveMachService:@"com.apple.UIKit.KeyboardManagement.hosted"];
  v1 = qword_1ED49DA88;
  qword_1ED49DA88 = v0;
}

void __48___UIKeyboardArbiterClient_mainBundleIdentifier__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = qword_1ED49DAA0;
  qword_1ED49DAA0 = v0;
}

void __40___UIKeyboardArbiterClient_arbiterProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient arbiterProxy]  Failed to access remote service: %@", &v4, 0xCu);
  }
}

void __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "XPC connection interrupted", buf, 2u);
  }

  v3 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient startConnectionWithCompletion:]_block_invoke  XPC connection interrupted", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained connection];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 queue_failedConnection:v5];
}

void __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_133(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "XPC connection invalidated", buf, 2u);
  }

  v3 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient startConnectionWithCompletion:]_block_invoke  XPC unexpectedly invalidated", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained connection];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 queue_failedConnection:v5];
}

void __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_136(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  if (v11)
  {
    if (a5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      (*(v11 + 16))(v11, 1, 0, [WeakRetained avoidDisableKeyboard] ^ 1);
    }

    else
    {
      (*(v11 + 16))(*(a1 + 32), 1, 0, 0);
    }
  }

  v13 = [UIApp _systemAnimationFenceExemptQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_2;
  v16[3] = &unk_1E7105FC8;
  objc_copyWeak(v20, (a1 + 40));
  v21 = a5;
  v14 = v9;
  v17 = v14;
  v15 = v10;
  v18 = v15;
  v20[1] = a4;
  v19 = *(a1 + 32);
  [v13 performAsync:v16];

  objc_destroyWeak(v20);
}

void __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained expectingInitialState])
  {

LABEL_3:
    if (*(a1 + 32))
    {
      v3 = objc_loadWeakRetained((a1 + 56));
      [v3 _didHandleKeyboardClientChange:*(a1 + 32) shouldConsiderSnapshottingKeyboard:0 isLocalEvent:0];
    }

    if (*(a1 + 40))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained syncKeyboardUIChangeInfo:*(a1 + 40)];
LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_10;
  }

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 avoidDisableKeyboard];

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v6 = objc_loadWeakRetained((a1 + 56));
  [v6 setExpectingInitialState:0];

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 _updateEventSource:*(a1 + 64) options:3];

  v8 = *(a1 + 48);
  if (v8)
  {
    if (*(a1 + 72))
    {
      v9 = objc_loadWeakRetained((a1 + 56));
      (*(v8 + 16))(v8, 1, 1, [v9 avoidDisableKeyboard] ^ 1);
    }

    else
    {
      (*(v8 + 16))(*(a1 + 48), 1, 1, 0);
    }
  }

  v10 = objc_loadWeakRetained((a1 + 56));
  [v10 setAvoidDisableKeyboard:0];
}

uint64_t __46___UIKeyboardArbiterClient_isOnScreenRotating__block_invoke(uint64_t result, void *a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = [a2 isOnScreenRotating];
    *(*(*(v2 + 32) + 8) + 24) |= result;
  }

  return result;
}

uint64_t __64___UIKeyboardArbiterClient_queue_endInputSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "RX endInputSession", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __51___UIKeyboardArbiterClient_queue_failedConnection___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "failedConnection", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  if (v4 == *(a1 + 40))
  {
    *(v3 + 104) = 0;

    [*(a1 + 40) invalidate];
    [*(a1 + 32) didFailArbiterConnection];
    v5 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51___UIKeyboardArbiterClient_queue_failedConnection___block_invoke_143;
    block[3] = &unk_1E70F3590;
    block[4] = *(a1 + 32);
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __68___UIKeyboardArbiterClient_queue_setLastEventSource_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = _UITextInputSourceToString(*(a1 + 48));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_INFO, "RX setLastEventSource:%{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _updateEventSource:*(a1 + 48) options:1];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68___UIKeyboardArbiterClient_queue_keyboardSuppressed_withCompletion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = "Y";
    }

    else
    {
      v3 = "N";
    }

    v9 = 136315138;
    v10 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardSuppressed:%s", &v9, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 12);
  if (*(a1 + 48))
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 12) = v6;
  v7 = +[UIPeripheralHost sharedInstance];
  [v7 setDeactivatedKeyboard:*(a1 + 48) forScene:0];

  return (*(*(a1 + 40) + 16))();
}

uint64_t __61___UIKeyboardArbiterClient_queue_keyboardChanged_onComplete___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardChanged (isLocal:N)", v4, 2u);
  }

  return [*(a1 + 32) _handleKeyboardChanged:*(a1 + 40) isLocal:0 onComplete:*(a1 + 48)];
}

uint64_t __64___UIKeyboardArbiterClient_queue_keyboardChangedWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) keyboardChangedCompleted];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (([@"_UIScrollKeyboardDuration" isEqual:v4] & 1) != 0 || objc_msgSend(@"_UIScrollKeyboardIAVOffset", "isEqual:", v4))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      isKindOfClass = v7 <= 1.0 && v7 >= 0.0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (([@"_UIScrollKeyboardCancelInfo" isEqual:v4] & 1) == 0 && (objc_msgSend(@"_UIKeyboardContextID", "isEqual:", v4) & 1) == 0 && !objc_msgSend(@"_UIKeyboardLayerID", "isEqual:", v4) && !objc_msgSend(@"_UIScrollKeyboardPlacementFrom", "isEqual:", v4) && !objc_msgSend(@"_UIScrollKeyboardPlacementTo", "isEqual:", v4))
  {
    if (![@"Origin" isEqual:v4])
    {
      isKindOfClass = 0;
      goto LABEL_22;
    }

    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 pointValue];
      if (v10 == 0.0)
      {
        isKindOfClass = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

LABEL_20:
    isKindOfClass = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_22:

  return isKindOfClass & 1;
}

void __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v10 = [v4 objectForKey:@"Quiet"];
  v6 = [v10 BOOLValue];
  v7 = [*(a1 + 40) objectForKey:@"Animated"];
  v8 = [v7 BOOLValue];
  v9 = [*(a1 + 40) objectForKey:@"Notify"];
  [v5 setPlacement:v3 quietly:v6 animated:v8 generateSplitNotification:{objc_msgSend(v9, "BOOLValue")}];
}

uint64_t __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = _UIKeyboardTransitionStageToString(*(a1 + 64));
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardTransition:%{public}@ event:%{public}@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 42);
  *(v5 + 42) = 1;
  *(*(a1 + 40) + 55) = 1;
  [*(a1 + 40) _performOnDistributedControllersExceptSelf:*(a1 + 48)];
  *(*(a1 + 40) + 55) = 0;
  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 40) + 42) = v6;
  return result;
}

void __71___UIKeyboardArbiterClient__performOnDistributedControllersExceptSelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1EFF09968])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56___UIKeyboardArbiterClient_controllerDidLayoutSubviews___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) keyboardActive])
  {
    [*(a1 + 32) _layoutKeyboardViews:*(a1 + 40)];
  }

  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 >= v2 * v2)
  {
    v6 = KeyboardArbiterClientLog_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient controllerDidLayoutSubviews:]  Warning - input views recursively changing sizes - aborting", buf, 2u);
    }
  }

  else
  {
    *(v3 + 24) = v4 + 1;
    v5 = [*(*(a1 + 32) + 16) copy];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (v11 != *(a1 + 40))
          {
            [v11 checkPlaceholdersForRemoteKeyboards];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    --*(*(a1 + 32) + 24);
  }
}

void __49___UIKeyboardArbiterClient_reloadForSnapshotting__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([UIApp _isSpringBoard])
  {
    [v4 containerRootController];
  }

  else
  {
    [v4 existingContainerRootController];
  }
  v2 = ;
  v3 = +[UIInputViewAnimationStyle animationStyleImmediate];
  [v4 pushAnimationStyle:v3];

  [v4 forceReloadInputViews];
  [v4 popAnimationStyle];
}

uint64_t __39___UIKeyboardArbiterClient_didSuspend___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDisableBecomeFirstResponder:0];
  v2 = UIApp;
  v3 = *(a1 + 40);

  return [v2 _endBackgroundTask:v3];
}

void __39___UIKeyboardArbiterClient_didSuspend___block_invoke_2(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  [v2 performAsync:*(a1 + 32)];
}

uint64_t __39___UIKeyboardArbiterClient_didSuspend___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) shouldSnapshot];
  if (result)
  {
    result = +[UIKeyboard isKeyboardProcess];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) reloadForSnapshotting];
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __39___UIKeyboardArbiterClient_willResume___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldSnapshot] && !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess"))
  {
    [*(a1 + 32) reloadForSnapshotting];
  }

  [*(a1 + 32) startConnection];
  v2 = *(a1 + 32);

  return [v2 setEnqueuedWillEnterForegroundActions:0];
}

@end