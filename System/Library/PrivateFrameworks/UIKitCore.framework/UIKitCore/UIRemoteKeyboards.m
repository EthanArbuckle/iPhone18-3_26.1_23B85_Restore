@interface UIRemoteKeyboards
@end

@implementation UIRemoteKeyboards

void __43___UIRemoteKeyboards_sharedRemoteKeyboards__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED499748;
  qword_1ED499748 = v0;
}

void __33___UIRemoteKeyboards_serviceName__block_invoke()
{
  v3 = [MEMORY[0x1E698E6D0] environmentAliases];
  v0 = [v3 resolveMachService:@"com.apple.UIKit.KeyboardManagement.hosted"];
  v1 = [v0 copy];
  v2 = qword_1ED499758;
  qword_1ED499758 = v1;
}

void __43___UIRemoteKeyboards_reloadForSnapshotting__block_invoke(uint64_t a1, void *a2)
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
  if ([v2 isSnapshotting])
  {
    v3 = +[UIInputViewAnimationStyle animationStyleImmediate];
    [v4 pushAnimationStyle:v3];

    [v4 forceReloadInputViews];
    [v4 popAnimationStyle];
  }
}

void __61___UIRemoteKeyboards__isWritingToolsHandlingKeyboardTracking__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isWritingToolsReadyToHandleKeyboardTracking];
  v3 = [*(a1 + 32) _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking];
  byte_1ED499713 = v2 & v3;
  v4 = KeyboardArbiterClientLog_1();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "N";
    if (byte_1ED499713)
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    if (v2)
    {
      v7 = "Y";
    }

    else
    {
      v7 = "N";
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = v7;
    if (v3)
    {
      v5 = "Y";
    }

    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "isWritingToolsHandlingKeyboardTracking:%s (WT ready:%s, Arbiter ready:%s)", &v8, 0x20u);
  }
}

uint64_t __40___UIRemoteKeyboards_isOnScreenRotating__block_invoke(uint64_t result, void *a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    result = [a2 isOnScreenRotating];
    *(*(*(v2 + 32) + 8) + 24) |= result;
  }

  return result;
}

uint64_t __37___UIRemoteKeyboards_startConnection__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 112) removeAllObjects];
  v2 = *(a1 + 32);
  if ((v2[64] & 1) != 0 || *(a1 + 56) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      [v2 didHandleKeyboardChange:v3 shouldConsiderSnapshottingKeyboard:0 isLocalEvent:0];
    }
  }

  if (*(a1 + 56) == 1)
  {
    [UIApp _setDisableBecomeFirstResponder:1];
    [*(a1 + 32) setDisableBecomeFirstResponder:1];
  }

  *(*(a1 + 32) + 64) = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 _updateEventSource:v5 options:19];
}

void __78___UIRemoteKeyboards_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
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

    v18 = 136315138;
    v19 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardArbiterClientHandle:%s", &v18, 0xCu);
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 containerRootController];
  v6 = [v5 inputViewSet];
  v7 = [v6 inputView];

  v8 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v9 = [v8[7] superview];

    if (v9 == v7)
    {
      [*(a1 + 32) resetSnapshotWithWindowCheck:0];
    }
  }

  else
  {
    v10 = [v8 keyboardWindow];
    v11 = [v10 snapshotView];
    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;

    [*(*(a1 + 32) + 56) setUserInteractionEnabled:0];
    v14 = [*(*(a1 + 32) + 56) layer];
    [v14 setAllowsHitTesting:0];

    [v7 bounds];
    [v7 convertPoint:0 toView:?];
    v16 = v15;
    [*(*(a1 + 32) + 56) frame];
    v22 = CGRectOffset(v21, 0.0, -v16);
    [*(*(a1 + 32) + 56) setFrame:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    [v7 addSubview:*(*(a1 + 32) + 56)];
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))();
  }
}

uint64_t __62___UIRemoteKeyboards_queue_activeProcessResignWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX activeProcessResign", v14, 2u);
  }

  v3 = [*(a1 + 32) keyboardWindow];

  if (v3)
  {
    v4 = [*(a1 + 32) currentState];
    v5 = [v4 sourceBundleIdentifier];
    *(*(a1 + 32) + 196) = [v5 isEqualToString:@"com.apple.siri"];

    [*(a1 + 32) applicationDidBecomeActive:0 forceSignalToProxy:1];
    *(*(a1 + 32) + 196) = 0;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v6 currentInputMode];

    if ([v7 isExtensionInputMode] && objc_msgSend(v7, "isDisplayed"))
    {
      v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v9 = [v8 inputViews];
      v10 = [v9 inputViewController];
      v11 = [v10 _compatibilityController];
      [v11 setTearingDownInputController];

      v12 = +[UIKeyboardImpl activeInstance];
      [v12 postInputViewControllerShouldUpdateNotification:v7];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __45___UIRemoteKeyboards_queue_failedConnection___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "failedConnection", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  if (v4 == *(a1 + 40))
  {
    *(v3 + 248) = 0;

    [*(a1 + 40) invalidate];
    v5 = *(a1 + 32);
    v6 = +[_UIKeyboardChangedInformation informationForKeyboardDown];
    [v5 didHandleKeyboardChange:v6 shouldConsiderSnapshottingKeyboard:0 isLocalEvent:1];

    [*(a1 + 32) cleanSuppression];
    [*(a1 + 32) setDisableBecomeFirstResponder:0];
    v7 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___UIRemoteKeyboards_queue_failedConnection___block_invoke_434;
    block[3] = &unk_1E70F3590;
    block[4] = *(a1 + 32);
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

void __37___UIRemoteKeyboards_startConnection__block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "XPC connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) queue_failedConnection:WeakRetained];
}

void __37___UIRemoteKeyboards_startConnection__block_invoke_447(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "XPC connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) queue_failedConnection:WeakRetained];
}

void __37___UIRemoteKeyboards_startConnection__block_invoke_449(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_2;
  block[3] = &unk_1E70F32F0;
  block[4] = *(a1 + 32);
  block[5] = a4;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v9 = [UIApp _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_3;
  v12[3] = &unk_1E7102A70;
  v10 = *(a1 + 32);
  v15 = a5;
  v12[4] = v10;
  v13 = v8;
  v14 = a4;
  v11 = v8;
  [v9 performAsync:v12];
}

void __61___UIRemoteKeyboards_toggleSuppressionForWritingToolIfNeeded__block_invoke()
{
  v0 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v0 forceReloadInputViews];
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v4 = [v15 scene];
  v5 = [v4 _FBSScene];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identityToken];
    v8 = [v7 stringRepresentation];
  }

  else
  {
    v8 = [v4 _sceneIdentifier];
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "ignoresPinning")}];
    [v9 setObject:v10 forKey:v8];

    if (([v15 ignoresPinning] & 1) == 0)
    {
      [v15 setIgnoresPinning:1];
    }

    v11 = [*(a1 + 40) sourceSceneIdentityString];
    v12 = [v11 isEqual:v8];

    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else if (*(a1 + 80) == 1)
    {
      v13 = [*(*(a1 + 48) + 200) objectForKeyedSubscript:v8];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
        *(*(*(a1 + 72) + 8) + 24) = 1;
        [*(*(a1 + 48) + 200) setObject:MEMORY[0x1E695E110] forKeyedSubscript:v8];
      }
    }
  }
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_462(uint64_t a1)
{
  [*(a1 + 32) resetSnapshotWithWindowCheck:0];
  v2 = [*(a1 + 32) keyboardWindow];
  v3 = [v2 snapshotView];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;

  [*(*(a1 + 32) + 56) setUserInteractionEnabled:0];
  v6 = [*(*(a1 + 32) + 56) layer];
  [v6 setAllowsHitTesting:0];

  if (((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1) && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v9 = [v7 containerWindow];
    [v9 addSubview:*(*(a1 + 32) + 56)];

    v8 = 500000000;
  }

  else
  {
    v7 = [*(a1 + 32) keyboardWindow];
    [v7 addSubview:*(*(a1 + 32) + 56)];
    v8 = 100000000;
  }

  v10 = dispatch_time(0, v8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_4;
  v1[3] = &unk_1E7104050;
  v2 = *(a1 + 32);
  [UIKeyboardSceneDelegate performOnControllers:v1];
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 scene];
  v4 = [v3 _FBSScene];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identityToken];
    v7 = [v6 stringRepresentation];
  }

  else
  {
    v7 = [v3 _sceneIdentifier];
  }

  v8 = [*(a1 + 32) sourceSceneIdentityString];
  if ([v8 isEqualToString:v7])
  {
  }

  else
  {
    v9 = [*(a1 + 32) sourceDisplayIdentifier];
    v10 = [v17 scene];
    v11 = [v10 screen];
    v12 = [v11 displayConfiguration];
    v13 = [v12 _nameForDisplayType];
    v14 = [v9 isEqualToString:v13];

    if (v14)
    {
      v15 = @"remote-keyboards";
LABEL_10:
      v16 = [*(a1 + 32) keyboardPreserveKey];
      [v17 _preserveInputViewsWithId:v16];

      goto LABEL_11;
    }
  }

  if (([*(a1 + 32) shouldRestoreKeyboard] & 1) == 0)
  {
    v15 = [*(a1 + 32) keyboardPreserveKey];
    if (v15)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2_470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scene];
  v5 = [v4 _FBSScene];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identityToken];
    v8 = [v7 stringRepresentation];
  }

  else
  {
    v8 = [v4 _sceneIdentifier];
  }

  v9 = [*(a1 + 32) sourceSceneIdentityString];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) sourceSceneIdentityString];
    if ([v11 isEqualToString:v8])
    {

      goto LABEL_29;
    }

    v12 = [*(a1 + 32) sourceDisplayIdentifier];
    if (v12)
    {
      v13 = v12;
      [*(a1 + 32) sourceDisplayIdentifier];
      v14 = v30 = v8;
      v15 = [v3 scene];
      v16 = [v15 screen];
      v17 = [v16 displayConfiguration];
      v18 = [v17 _nameForDisplayType];
      v29 = [v14 isEqualToString:v18];

      v8 = v30;
      if (!v29)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }
  }

  v19 = [*(a1 + 32) hostProcessIdentifier];
  *(*(a1 + 40) + 232) = v19 == getpid();
  if (([*(a1 + 32) keyboardOnScreen] & 1) != 0 || *(*(a1 + 40) + 232) != 1)
  {
    v21 = [*(a1 + 32) keyboardPreserveKey];
    if (v21 && (v22 = v21, v23 = [*(a1 + 32) shouldRestoreKeyboard], v22, v23))
    {
      v24 = [*(a1 + 32) keyboardPreserveKey];
      [v3 _restoreInputViewsWithId:v24 animated:1];
    }

    else if (!+[UIKeyboard usesInputSystemUI])
    {
      if (!_UIApplicationIsFirstPartyStickers() || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v25 = objc_claimAutoreleasedReturnValue(), [v25 window], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, !v26))
      {
        v27 = _UIMainBundleIdentifier();
        if ([v27 isEqualToString:@"com.apple.siri"])
        {
          v28 = [*(a1 + 32) keyboardOnScreen];

          if ((v28 & 1) == 0)
          {
            [v3 updateLightEffectsBackdropAnimated:1];
          }
        }

        else
        {
        }

        *(*(a1 + 40) + 232) = 1;
        if (+[UIInputWindowController useMetronomeTracking])
        {
          [v3 updateProviderFromRemoteUpdate:*(a1 + 32)];
        }

        else
        {
          [v3 forceReloadInputViews];
        }

        *(*(a1 + 40) + 232) = 0;
      }
    }
  }

  else
  {
    v20 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3_471;
    block[3] = &unk_1E70F35B8;
    block[4] = *(a1 + 40);
    v32 = v3;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);
  }

  *(*(a1 + 40) + 232) = 0;
  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_29:
}

uint64_t __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3_471(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: Executing delayed forceReloadInputViews", v4, 2u);
  }

  *(*(a1 + 32) + 232) = 1;
  result = [*(a1 + 40) forceReloadInputViews];
  *(*(a1 + 32) + 232) = 0;
  return result;
}

void __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2_475(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 scene];
  v4 = [v3 _FBSScene];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identityToken];
    v7 = [v6 stringRepresentation];
  }

  else
  {
    v7 = [v3 _sceneIdentifier];
  }

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKey:v7];
    v9 = [v8 BOOLValue];

    if ((v9 & 1) == 0)
    {
      [v10 setIgnoresPinning:0];
    }
  }
}

void __55___UIRemoteKeyboards_queue_keyboardChanged_onComplete___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 195) = 0;
  v3 = [*(a1 + 40) sourceSceneIdentityString];

  if (v3)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v4 = *(*(a1 + 32) + 112);
    v5 = [v4 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v55;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v55 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v54 + 1) + 8 * i);
          v9 = [*(a1 + 40) sourceSceneIdentityString];
          if (v9)
          {
            v10 = v9;
            v11 = [v8 sceneIdentityString];
            v12 = [*(a1 + 40) sourceSceneIdentityString];
            v13 = [v11 isEqual:v12];

            if (v13)
            {
              v14 = 1;
              goto LABEL_15;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_15:
  }

  else
  {
    v15 = [*(a1 + 40) sourceBundleIdentifier];
    v16 = _UIMainBundleIdentifier();
    if ([v15 isEqualToString:v16])
    {
      v14 = 1;
    }

    else
    {
      v17 = [*(a1 + 40) hostBundleIdentifier];
      v18 = _UIMainBundleIdentifier();
      v14 = [v17 isEqualToString:v18];
    }
  }

  v19 = [*(a1 + 40) sourceSceneIdentityString];
  v20 = *(a1 + 40);
  if (v19)
  {
    v21 = [v20 sourceSceneIdentityString];
    v22 = _UISceneIdentityToLogString(v21);
  }

  else
  {
    v23 = [v20 sourceBundleIdentifier];
    v21 = v23;
    v24 = @"(unspecified)";
    if (v23)
    {
      v24 = v23;
    }

    v22 = v24;
  }

  v25 = v22;

  v26 = _UIArbiterClientLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = "N";
    if (v14)
    {
      v27 = "Y";
    }

    *buf = 136315394;
    v59 = v27;
    v60 = 2112;
    v61 = v25;
    _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "RX keyboardChanged (isLocal:%s source:%@)", buf, 0x16u);
  }

  v28 = [UIApp systemIsAnimatingApplicationLifecycleEvent];
  v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v30 = [v29 hardwareKeyboardExclusivityIdentifier];

  if ((*(*(a1 + 32) + 81) & 1) != 0 || [UIApp _isSpringBoard] && objc_msgSend(*(*(a1 + 32) + 112), "count"))
  {
    goto LABEL_52;
  }

  v31 = _UIMainBundleIdentifier();
  v32 = [v31 isEqualToString:@"com.apple.Spotlight"];
  if (v32)
  {
    v33 = [*(a1 + 40) hostBundleIdentifier];
    if (([v33 isEqualToString:@"com.apple.Spotlight"] & 1) == 0 && (v30 == 0) != objc_msgSend(*(a1 + 40), "isOneness"))
    {

      goto LABEL_52;
    }

    v49 = v33;
  }

  v53 = v32;
  v34 = _UIMainBundleIdentifier();
  if (([v34 isEqualToString:@"com.apple.CoreAuthUI"] & 1) == 0 && !objc_msgSend(v34, "isEqualToString:", @"com.apple.LocalAuthenticationUIService"))
  {
    v35 = 0;
    goto LABEL_42;
  }

  i = [*(a1 + 40) hostBundleIdentifier];
  if ([i isEqualToString:@"com.apple.CoreAuthUI"])
  {

    v35 = 1;
    goto LABEL_42;
  }

  v36 = [i isEqualToString:@"com.apple.LocalAuthenticationUIService"];

  v35 = 1;
  v37 = 1;
  if (v36)
  {
LABEL_42:
    v50 = v35;
    v51 = v28;
    v52 = v14;
    v38 = _UIMainBundleIdentifier();
    v39 = [v38 isEqualToString:@"com.apple.WebSheet"];
    if (v39)
    {
      v40 = [*(a1 + 40) hostBundleIdentifier];
      if (![v40 isEqualToString:@"com.apple.WebSheet"])
      {
        v37 = 1;
        goto LABEL_57;
      }

      v48 = v40;
    }

    v41 = v31;
    v42 = _UIMainBundleIdentifier();
    if ([v42 isEqualToString:@"com.apple.siri"])
    {
      v43 = [*(a1 + 40) hostBundleIdentifier];
      v37 = [v43 isEqualToString:@"com.apple.siri"] ^ 1;

      v31 = v41;
      v40 = v48;
      if (v39)
      {
LABEL_57:

        v28 = v51;
        v14 = v52;
        if (v50)
        {
          goto LABEL_58;
        }

LABEL_50:

        if (v53)
        {
          goto LABEL_59;
        }

LABEL_51:

        if (!v37)
        {
          goto LABEL_60;
        }

        goto LABEL_52;
      }
    }

    else
    {

      v37 = 0;
      v31 = v41;
      v40 = v48;
      if (v39)
      {
        goto LABEL_57;
      }
    }

    v28 = v51;
    v14 = v52;
    if (v50)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

LABEL_58:

  if ((v53 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_59:

  if ((v37 & 1) == 0)
  {
LABEL_60:
    if (v28 && ([*(a1 + 40) keyboardPosition], CGRectGetHeight(v64) != 0.0))
    {
      v47 = *(a1 + 48);
      if (!v47)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v46 = [*(a1 + 32) didHandleKeyboardChange:*(a1 + 40) shouldConsiderSnapshottingKeyboard:objc_msgSend(*(a1 + 40) isLocalEvent:{"shouldTakeSnapshot", v48), v14}];
      v47 = *(a1 + 48);
      if (!v47)
      {
        goto LABEL_55;
      }

      if (v46)
      {
        [UIApp _performBlockAfterCATransactionCommits:?];
        goto LABEL_55;
      }
    }

    v45 = *(v47 + 16);
    goto LABEL_54;
  }

LABEL_52:
  v44 = *(a1 + 48);
  if (v44)
  {
    v45 = *(v44 + 16);
LABEL_54:
    v45();
  }

LABEL_55:
}

uint64_t __58___UIRemoteKeyboards_queue_keyboardChangedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardChangeCompleted", v4, 2u);
  }

  [*(a1 + 32) keyboardChangedCompleted];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __58___UIRemoteKeyboards_queue_keyboardIAVChanged_onComplete___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardIAVChanged:%.0f", &v8, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (*(v4 + 152) != v5)
  {
    *(v4 + 152) = v5;
    if (([*(a1 + 32) keyboardVisible] & 1) == 0)
    {
      *(*(a1 + 32) + 224) = 1;
      v6 = +[UIPeripheralHost sharedInstance];
      [v6 forceReloadInputViews];

      *(*(a1 + 32) + 224) = 0;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __62___UIRemoteKeyboards_queue_sceneBecameFocused_withCompletion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v4 = _UISceneIdentityToLogString(v3);
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX sceneBecameFocused:%@", buf, 0xCu);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499770);
  if (*CategoryCachedImpl)
  {
    v22 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v22;
      v25 = [v23 stringRepresentation];
      *buf = 136315394;
      v36 = "[_UIRemoteKeyboards queue_sceneBecameFocused:withCompletion:]_block_invoke";
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "%s: Scene became focused: %@", buf, 0x16u);
    }
  }

  if (*(a1 + 32))
  {
    [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v34 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v7)
    {
      v8 = *v32;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [v10 _FBSScene];
          v12 = [v11 identityToken];
          v13 = BSEqualObjects();

          if (v13)
          {
            v7 = v10;
            goto LABEL_15;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v14 = [(UIWindowScene *)v7 _keyWindow];
    if (v14 && ([v7 _isTargetOfKeyboardEventDeferringEnvironment] & 1) == 0)
    {
      v15 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499778);
      if (*v15)
      {
        v27 = *(v15 + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 32);
          v29 = v27;
          v30 = [v28 stringRepresentation];
          *buf = 136315650;
          v36 = "[_UIRemoteKeyboards queue_sceneBecameFocused:withCompletion:]_block_invoke";
          v37 = 2048;
          v38 = v14;
          v39 = 2112;
          v40 = v30;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "%s: Performing required scene update because it was focused in the arbiter: %p; scene: %@", buf, 0x20u);
        }
      }

      [(_UIRemoteKeyboards *)*(a1 + 40) _performRequiredSceneUpdateIfPermittedForWindow:v14 withContext:65537];
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = [*(a1 + 40) focusedSceneIdentityStringOrIdentifier];
  v17 = v16;
  if (!v7)
  {
    if (v16)
    {
      v18 = [*(a1 + 32) stringRepresentation];
      v19 = BSEqualStrings();

      if ((v19 & 1) == 0)
      {
        v20 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499780);
        if (*v20)
        {
          v26 = *(v20 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v36 = "[_UIRemoteKeyboards queue_sceneBecameFocused:withCompletion:]_block_invoke";
            _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "%s: Setting focused scene identity or identifier to nil because a scene from another application was focused", buf, 0xCu);
          }
        }

        [*(a1 + 40) setFocusedSceneIdentityStringOrIdentifier:0];
      }
    }
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))();
  }
}

void __55___UIRemoteKeyboards_queue_getDebugInfoWithCompletion___block_invoke(uint64_t a1)
{
  v1 = _UIArbiterClientLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_188A29000, v1, OS_LOG_TYPE_DEBUG, "RX getDebugInfo", buf, 2u);
  }

  v2 = [UIApp keyWindow];
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 responder];
  v5 = [(UIWindow *)v2 _fbsScene];
  v6 = [v5 settings];

  v7 = [v2 _firstResponder];
  v140 = [v3 inputViews];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (v4)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);

    if (v10)
    {
      [v8 setObject:v10 forKey:@"keyboardResponder"];
    }
  }

  v11 = [v4 inputView];
  if (v11)
  {
    v12 = v11;
    v13 = [v4 inputView];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);

    if (v15)
    {
      [v8 setObject:v15 forKey:@"keyboardResponder.inputView"];
    }
  }

  v16 = [v4 inputViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [v4 inputViewController];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);

    if (v20)
    {
      [v8 setObject:v20 forKey:@"keyboardResponder.inputViewController"];
    }
  }

  v21 = [v4 inputAccessoryView];
  if (v21)
  {
    v22 = v21;
    v23 = [v4 inputAccessoryView];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);

    if (v25)
    {
      [v8 setObject:v25 forKey:@"keyboardResponder.inputAccessoryView"];
    }
  }

  v26 = [v4 inputAccessoryViewController];
  if (v26)
  {
    v27 = v26;
    v28 = [v4 inputAccessoryViewController];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);

    if (v30)
    {
      [v8 setObject:v30 forKey:@"keyboardResponder.inputAccessoryViewController"];
    }
  }

  if ([v4 _disableAutomaticKeyboardBehavior])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v31 forKey:@"keyboardResponderDisableKeyboardBehaviour"];
  }

  if ([v4 _disableAutomaticKeyboardUI])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v32 forKey:@"keyboardResponderDisableKeyboardUI"];
  }

  v33 = [v4 _requiresKeyboardWhenFirstResponder];
  if (v4)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:v33];
    [v8 setObject:v34 forKey:@"keyboardResponderRequiresKeyboard"];
  }

  if (v2)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);

    if (v36)
    {
      [v8 setObject:v36 forKey:@"keyWindow"];
    }
  }

  if (v7)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);

    if (v38)
    {
      [v8 setObject:v38 forKey:@"keyWindowFirstResponder"];
    }
  }

  v39 = [v7 inputView];
  if (v39)
  {
    v40 = v39;
    v41 = [v7 inputView];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);

    if (v43)
    {
      [v8 setObject:v43 forKey:@"keyWindowFirstResponder.inputView"];
    }
  }

  v44 = [v7 inputViewController];
  if (v44)
  {
    v45 = v44;
    v46 = [v7 inputViewController];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);

    if (v48)
    {
      [v8 setObject:v48 forKey:@"keyWindowFirstResponder.inputViewController"];
    }
  }

  v49 = [v7 inputAccessoryView];
  if (v49)
  {
    v50 = v49;
    v51 = [v7 inputAccessoryView];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);

    if (v53)
    {
      [v8 setObject:v53 forKey:@"keyWindowFirstResponder.inputAccessoryView"];
    }
  }

  v54 = [v7 inputAccessoryViewController];
  if (v54)
  {
    v55 = v54;
    v56 = [v7 inputAccessoryViewController];
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);

    if (v58)
    {
      [v8 setObject:v58 forKey:@"keyWindowFirstResponder.inputAccessoryViewController"];
    }
  }

  if ([v7 _disableAutomaticKeyboardBehavior])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v59 forKey:@"keyWindowFirstResponderDisableKeyboardBehaviour"];
  }

  if ([v7 _disableAutomaticKeyboardUI])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v60 forKey:@"keyWindowFirstResponderDisableKeyboardUI"];
  }

  v61 = [v7 _requiresKeyboardWhenFirstResponder];
  if (v7)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:v61];
    [v8 setObject:v62 forKey:@"keyWindowFirstResponderRequiresKeyboard"];
  }

  v63 = [v140 keyboard];
  if (v63)
  {
    v64 = v63;
    v65 = [v140 keyboard];
    v66 = objc_opt_class();
    v67 = NSStringFromClass(v66);

    if (v67)
    {
      [v8 setObject:v67 forKey:@"inputViews.keyboard"];
    }
  }

  if (v140)
  {
    if (v140[8])
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);

      if (v69)
      {
        [v8 setObject:v69 forKey:@"inputViews ? inputViews->_inputView : nil"];
      }
    }

    if (v140[11])
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);

      if (v71)
      {
        [v8 setObject:v71 forKey:@"inputViews ? inputViews->_inputViewController : nil"];
      }
    }

    if (v140[9])
    {
      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);

      if (v73)
      {
        [v8 setObject:v73 forKey:@"inputViews ? inputViews->_inputAccessoryView : nil"];
      }
    }

    if (v140[12])
    {
      v74 = objc_opt_class();
      v75 = NSStringFromClass(v74);

      if (v75)
      {
        [v8 setObject:v75 forKey:@"inputViews ? inputViews->_accessoryViewController : nil"];
      }
    }

    if (v140[10])
    {
      v76 = objc_opt_class();
      v77 = NSStringFromClass(v76);

      if (v77)
      {
        [v8 setObject:v77 forKey:@"inputViews ? inputViews->_inputAssistantView : nil"];
      }
    }

    if (v140[13])
    {
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);

      if (v79)
      {
        [v8 setObject:v79 forKey:@"inputViews ? inputViews->_assistantViewController : nil"];
      }
    }
  }

  v135 = v7;
  v80 = [*(a1 + 32) keyboardWindow];
  v81 = [v3 existingContainerWindow];
  v82 = [v80 rootViewController];
  v83 = [(UIViewController *)v82 _windowForAutorotationBelowWindow:v81];
  v134 = v82;
  v139 = v81;
  v84 = [(UIViewController *)v82 _primaryViewControllerForAutorotationBelowWindow:v81];
  if (v83)
  {
    v85 = objc_opt_class();
    v86 = NSStringFromClass(v85);

    if (v86)
    {
      [v8 setObject:v86 forKey:@"rotateWindow"];
    }
  }

  if (v84)
  {
    v87 = objc_opt_class();
    v88 = NSStringFromClass(v87);

    if (v88)
    {
      [v8 setObject:v88 forKey:@"rotateVC"];
    }

    v89 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(UIApp, "interfaceOrientation")}];
    [v8 setObject:v89 forKey:@"UIApp.interfaceOrientation"];

    v90 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v84, "interfaceOrientation")}];
    v91 = @"rotateVC.interfaceOrientation";
  }

  else
  {
    v90 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(UIApp, "interfaceOrientation")}];
    v91 = @"UIApp.interfaceOrientation";
  }

  [v8 setObject:v90 forKey:v91];

  if (v2)
  {
    v92 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "interfaceOrientation")}];
    [v8 setObject:v92 forKey:@"keyWindow.interfaceOrientation"];
  }

  if (v6)
  {
    v93 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "interfaceOrientation")}];
    [v8 setObject:v93 forKey:@"keyWindowSceneSettings.interfaceOrientation"];
  }

  if (v83)
  {
    v94 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v83, "interfaceOrientation")}];
    [v8 setObject:v94 forKey:@"rotateWindow.interfaceOrientation"];
  }

  if (v84)
  {
    v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v84, "supportedInterfaceOrientations")}];
    [v8 setObject:v95 forKey:@"rotateVC.supportedInterfaceOrientations"];
  }

  if (v80)
  {
    v96 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v80, "interfaceOrientation")}];
    [v8 setObject:v96 forKey:@"keyboardWindow.interfaceOrientation"];

    [v80 frame];
    v97 = NSStringFromCGRect(v143);
    [v8 setObject:v97 forKey:@"keyboardWindow.frame"];

    v98 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v80, "isHidden")}];
    [v8 setObject:v98 forKey:@"keyboardWindow.isHidden"];
  }

  if (v2)
  {
    [v2 frame];
    v99 = NSStringFromCGRect(v144);
    [v8 setObject:v99 forKey:@"keyWindow.frame"];
  }

  v136 = v6;
  if (v83)
  {
    [v83 frame];
    v100 = NSStringFromCGRect(v145);
    [v8 setObject:v100 forKey:@"rotateWindow.frame"];
  }

  v101 = +[UIPeripheralHost sharedInstance];
  v102 = [v101 _isKeyboardDeactivated];
  if (v102)
  {
    v103 = [MEMORY[0x1E696AD98] numberWithInt:v102];
    [v8 setObject:v103 forKey:@"suppressionCount"];
  }

  v132 = v84;
  v133 = v83;
  if ([*(a1 + 32) disableBecomeFirstResponder])
  {
    v104 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v104 forKey:@"responderDisabled"];
  }

  v138 = v2;
  v105 = MEMORY[0x1E696AEC0];
  if ([v101 automaticAppearanceEnabled])
  {
    v106 = @"YES";
  }

  else
  {
    v106 = @"NO";
  }

  if ([v101 automaticAppearanceInternalEnabled])
  {
    v107 = @"YES";
  }

  else
  {
    v107 = @"NO";
  }

  v108 = [v105 stringWithFormat:@"en %@ / int %@", v106, v107];
  if (v108)
  {
    [v8 setObject:v108 forKey:@"automaticAppearance"];
  }

  v131 = v108;
  v109 = [v80 rootViewController];
  v110 = [v109 placement];

  if (v110)
  {
    v111 = objc_opt_class();
    v112 = NSStringFromClass(v111);

    if (v112)
    {
      [v8 setObject:v112 forKey:@"placementKeyboard"];
    }
  }

  v137 = v4;
  v113 = [v139 rootViewController];
  v114 = [v113 placement];

  if (v114)
  {
    v115 = objc_opt_class();
    v116 = NSStringFromClass(v115);

    if (v116)
    {
      [v8 setObject:v116 forKey:@"placementEffects"];
    }
  }

  v117 = +[UIKeyboardImpl activeInstance];
  v118 = [v117 _getCurrentKeyplaneName];

  if (v118)
  {
    [v8 setObject:v118 forKey:@"currentKeyboard"];
  }

  v119 = objc_opt_class();
  v120 = objc_opt_class();
  if (v80)
  {
    if (v119 != v120)
    {
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);

      if (v122)
      {
        [v8 setObject:v122 forKey:@"keyboardWindow"];
      }
    }
  }

  v123 = objc_opt_class();
  if (v123 != objc_opt_class())
  {
    if (v139)
    {
      v124 = objc_opt_class();
      v125 = NSStringFromClass(v124);

      if (v125)
      {
        [v8 setObject:v125 forKey:@"effectsWindow"];
      }
    }
  }

  v126 = v3;
  v127 = [v3 scene];
  v128 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v127];
  v129 = [v128 useHostedInstance];

  if (v129)
  {
    v130 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v130 forKey:@"effectsHosting"];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke(uint64_t a1)
{
  [UIApp _setDisableBecomeFirstResponder:0];
  [*(a1 + 32) setDisableBecomeFirstResponder:0];
  v2 = UIApp;
  v3 = *(a1 + 40);

  return [v2 _endBackgroundTask:v3];
}

void __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke_645(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  [v2 performAsync:*(a1 + 32)];
}

void __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke_2(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();
  v3 = [v2 isEqualToString:@"com.apple.Spotlight"];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) reloadForSnapshotting];
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __44___UIRemoteKeyboards_applicationWillResume___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = _UIMainBundleIdentifier();
  v3 = [v2 isEqualToString:@"com.apple.Spotlight"];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) reloadForSnapshotting];
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v6 = [@"notification: " stringByAppendingString:v5];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 UTF8String];
    v9 = [v4 keyboardWindow];
    v10 = [v4 wantsToShowKeyboardForWindow:v9];

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &_resumeConnectionForReason____s_category);
    if (*CategoryCachedImpl)
    {
      v20 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315650;
        v22 = "[_UIRemoteKeyboards _resumeConnectionForReason:]";
        v23 = 2080;
        v24 = v8;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "%s: Performing resume required scene update for reason: %s; wantsKeyboard: %d", &v21, 0x1Cu);
      }
    }

    v12 = +[UIWindow _applicationKeyWindow];
    [(_UIRemoteKeyboards *)v4 _performRequiredSceneUpdateIfPermittedForWindow:v12 withContext:1];
    [v4 startConnection];
  }

  [*(a1 + 32) resetSnapshotWithWindowCheck:0];
  v13 = *(a1 + 32);
  v14 = [v13 keyboardWindow];
  LODWORD(v13) = [v13 wantsToShowKeyboardForWindow:v14];

  if (v13)
  {
    v15 = [*(a1 + 32) keyboardWindow];
    v16 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
    [v16 windowLevel];
    [v15 setWindowLevel:v17 + 1.0];

    v18 = [*(a1 + 32) keyboardWindow];
    LODWORD(v16) = [v18 _isHostedInAnotherProcess];

    if (v16)
    {
      v19 = [*(a1 + 32) keyboardWindow];
      [v19 setHidden:0];
    }

    else
    {
      [*(a1 + 32) setWindowEnabled:{objc_msgSend(*(a1 + 32), "allowedToShowKeyboard")}];
    }
  }

  *(*(a1 + 32) + 83) = 0;
}

void __53___UIRemoteKeyboards_applicationKeyWindowWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 _overriddenInterfaceOrientation];
  }

  else
  {
    v4 = [v3 interfaceOrientation];
  }

  v5 = v4;
  v6 = [*(a1 + 40) keyboardWindow];
  v7 = [v6 interfaceOrientation];

  if (v7 != v5)
  {
    v10 = [*(a1 + 40) keyboardWindow];
    v8 = [*(a1 + 40) keyboardWindow];
    v9 = [v8 rootViewController];
    [v10 _setRotatableClient:v9 toOrientation:v5 updateStatusBar:0 duration:0 force:1 isRotating:0.0];
  }
}

void __96___UIRemoteKeyboards_prepareToMoveKeyboard_withIAV_isIAVRelevant_showing_notifyRemote_forScene___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96___UIRemoteKeyboards_prepareToMoveKeyboard_withIAV_isIAVRelevant_showing_notifyRemote_forScene___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

void __52___UIRemoteKeyboards_completeMoveKeyboardForWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 needsToShowKeyboardForWindow:WeakRetained];
  [v2 setWindowEnabled:v3];
  if ((v3 & 1) == 0 && [v2 allowedToShowKeyboard])
  {
    [WeakRetained invalidate];
  }
}

void __52___UIRemoteKeyboards_completeMoveKeyboardForWindow___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) proxy];
  [v1 signalKeyboardChangeComplete];
}

void __50___UIRemoteKeyboards_controllerDidLayoutSubviews___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) focusedSceneIdentityStringOrIdentifier];

  v3 = [*(a1 + 32) keyboardWindow];

  if (v3)
  {
    v4 = [*(a1 + 32) keyboardWindow];
    v5 = [v4 rootViewController];

    v6 = [v5 inputViewSet];
    v7 = [v6 normalizePlaceholders];

    v8 = [v5 placementIgnoringRotation];
    [v8 remoteIntrinsicContentSizeForInputViewInSet:v7 includingIAV:0];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [v5 placementIgnoringRotation];
    [v17 remoteIntrinsicContentSizeForInputViewInSet:v7 includingIAV:1];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [*(a1 + 32) currentState];
    [v26 keyboardPosition];
    v29 = v14 == v28 && v16 == v27;
    if (v29)
    {
      v32 = [*(a1 + 32) currentState];
      [v32 keyboardPositionWithIAV];
      v54 = v33;
      v55 = v21;
      v34 = v19;
      v35 = v10;
      v36 = v12;
      v38 = v37;

      v29 = v23 == v38;
      v12 = v36;
      v10 = v35;
      v19 = v34;
      v21 = v55;
      if (v29 && v25 == v54)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    if (v2 && (v30 = *(a1 + 32), (v30[231] & 1) == 0))
    {
      v31 = [v30 allowedToEnableKeyboardWindow];
    }

    else
    {
      v31 = 0;
    }

    v39 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v40 = *(a1 + 32);
    v41 = [v39 inputViews];
    v42 = [v41 isInputAccessoryViewPlaceholder];
    v43 = [v39 scene];
    [v40 prepareToMoveKeyboard:v42 ^ 1u withIAV:1 isIAVRelevant:v31 showing:v43 notifyRemote:v10 forScene:{v12, v14, v16, v19, v21, v23, v25}];

    goto LABEL_16;
  }

LABEL_17:
  v44 = [*(*(a1 + 32) + 8) count];
  v45 = *(a1 + 32);
  v46 = *(v45 + 104);
  if (v46 >= v44 * v44)
  {
    NSLog(&cfstr_WarningInputVi.isa);
  }

  else
  {
    *(v45 + 104) = v46 + 1;
    v47 = [*(*(a1 + 32) + 8) copy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v57;
      do
      {
        v52 = 0;
        do
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v56 + 1) + 8 * v52);
          if (v53 != *(a1 + 40))
          {
            [v53 checkPlaceholdersForRemoteKeyboards];
          }

          ++v52;
        }

        while (v50 != v52);
        v50 = [v48 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v50);
    }

    --*(*(a1 + 32) + 104);
  }
}

void __65___UIRemoteKeyboards__performOnDistributedControllersExceptSelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1EFF09968])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __68___UIRemoteKeyboards_addHostedWindowView_fromPID_forScene_callerID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObjectAtIndex:{objc_msgSend(*(*(a1 + 32) + 40), "indexOfObject:", *(a1 + 40))}];
  if ((*(a1 + 76) & 1) == 0)
  {
    v2 = [*(a1 + 32) currentState];
    if ([v2 keyboardOnScreen] && !objc_msgSend(*(*(a1 + 32) + 40), "containsObject:", *(a1 + 40)))
    {
      v7 = [*(a1 + 32) currentState];
      v8 = [v7 processIdentifier];
      v9 = *(a1 + 72);

      if (v8 == v9)
      {
        [*(a1 + 32) setWindowEnabled:0];
      }
    }

    else
    {
    }
  }

  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 48) removeObjectAtIndex:{objc_msgSend(*(*(a1 + 32) + 48), "indexOfObject:")}];
  }

  if (([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v3 = [*(a1 + 32) proxy];
    [v3 setWindowHostingPID:*(a1 + 72) active:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (([WeakRetained hasHostedViews] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained _window];
    [v4 completeMoveKeyboardForWindow:v5];
  }

  v6 = [WeakRetained _window];
  [v6 updateLastRemoteView:0 forView:*(a1 + 56) inContainer:WeakRetained];
}

uint64_t __62___UIRemoteKeyboards_queue_keyboardSuppressed_withCompletion___block_invoke(uint64_t a1)
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
  v5 = *(v4 + 100);
  if (*(a1 + 48))
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 100) = v6;
  v7 = +[UIPeripheralHost sharedInstance];
  [v7 setDeactivatedKeyboard:*(a1 + 48) forScene:0];

  return (*(*(a1 + 40) + 16))();
}

void __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_4(uint64_t a1, void *a2)
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

uint64_t __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = _UIKeyboardTransitionStageToString(*(a1 + 64));
    v8 = 138543618;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardTransition:%{public}@ event:%@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 231);
  *(v5 + 231) = 1;
  [*(a1 + 40) _performOnDistributedControllersExceptSelf:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 40) + 231) = v6;
  return result;
}

void __64___UIRemoteKeyboards_setStickerPrewarmingViewControllerEnabled___block_invoke(uint64_t a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___STKPrewarmingViewController(a2);
  objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___UIRemoteKeyboards_setStickerPrewarmingViewControllerEnabled___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63___UIRemoteKeyboards_queue_setKeyboardDisabled_withCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
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

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX setKeyboardDisabled:%s", &v5, 0xCu);
  }

  [UIApp _setDisableBecomeFirstResponder:*(a1 + 48)];
  [*(a1 + 32) setDisableBecomeFirstResponder:*(a1 + 48) forSuppressionAssertion:0 updatePlacement:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __39___UIRemoteKeyboards_forceKeyboardAway__block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39___UIRemoteKeyboards_forceKeyboardAway__block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

void __45___UIRemoteKeyboards_preserveKeyboardWithId___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___UIRemoteKeyboards_preserveKeyboardWithId___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

void __44___UIRemoteKeyboards_restoreKeyboardWithId___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44___UIRemoteKeyboards_restoreKeyboardWithId___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

uint64_t __62___UIRemoteKeyboards_queue_setLastEventSource_withCompletion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = _UITextInputSourceToString(*(a1 + 48));
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_INFO, "RX setLastEventSource:%{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 231);
  *(v4 + 231) = 1;
  [*(a1 + 32) _updateEventSource:*(a1 + 48) options:1];
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 231) = v5;
  return result;
}

@end