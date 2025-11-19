@interface UISceneLifecycleMultiplexer
@end

@implementation UISceneLifecycleMultiplexer

void __46___UISceneLifecycleMultiplexer_sharedInstance__block_invoke()
{
  v0 = [_UISceneLifecycleMultiplexer alloc];
  v1 = [(_UISceneLifecycleMultiplexer *)v0 initForAppSingleton:UIApp];
  v2 = _MergedGlobals_1027;
  _MergedGlobals_1027 = v1;
}

uint64_t __78___UISceneLifecycleMultiplexer_lifecycleWantsUnnecessaryDelayForSceneDelivery__block_invoke()
{
  v0 = _UIKitUserDefaults();
  v1 = [v0 BOOLForKey:@"UIRequireCrimsonLifecycle"];

  v2 = [UIApp _appAdoptsUISceneLifecycle];
  v3 = objc_opt_class();
  v4 = _UIApplicationWantsExtensionBehavior(v3);
  if (_os_feature_enabled_impl())
  {
    v5 = _UIApplicationStartsAppViewServiceListener() ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  result = [UIApp isFrontBoard];
  if ((v1 | v2 | v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 & (result ^ 1);
  }

  lifecycleWantsUnnecessaryDelayForSceneDelivery__lifecycleWantsUnnecessaryDelayForSceneDelivery = v7;
  return result;
}

uint64_t __67___UISceneLifecycleMultiplexer__mostActiveSceneForApplicationState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _isInternal])
  {
    v3 = [v2 _affectsAppLifecycleIfInternal];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __74___UISceneLifecycleMultiplexer_mostActiveSceneIncludingInternal_withTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 _hasLifecycle] || objc_msgSend(v3, "activationState") < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = (*(v4 + 16))(v4, v3);
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

void __74___UISceneLifecycleMultiplexer_mostActiveSceneIncludingInternal_withTest___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = *(*(a1 + 40) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      objc_storeStrong(v8, a2);
      *(*(*(a1 + 48) + 8) + 24) = [v10 activationState];
    }

    if ([*(a1 + 56) _compareLifecycleStateOfScene:? toScene:?] == -1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *(*(*(a1 + 48) + 8) + 24) = [v10 activationState];
    }

    if (![*(*(*(a1 + 40) + 8) + 40) activationState])
    {
      *a4 = 1;
    }
  }
}

uint64_t __62___UISceneLifecycleMultiplexer_mostActiveWindowSceneOnScreen___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 screen];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 104);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_2;
  v15[3] = &unk_1EFAFC690;
  v14 = *(a1 + 32);
  v3 = *(&v14 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v20 = *(a1 + 96);
  v6 = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v6;
  v16 = v14;
  v17 = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v21 = *(a1 + 108);
  *&v10 = *(a1 + 80);
  *(&v10 + 1) = v5;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v18 = v11;
  v19 = v10;
  _UIScenePerformActionsWithLifecycleActionMask(v2, v15);
  if (*(a1 + 104))
  {
    __cachedMostActiveWindowScene = 0;
    v12 = [UIApp applicationState];
    v13 = +[_UIApplicationIntelligenceSupport sharedInstance];
    [v13 setApplicationState:v12];
  }

  if (*(a1 + 110) == 1)
  {
    [*(a1 + 64) _enqueuePostSettingsUpdateResponseBlock:&__block_literal_global_30 inPhase:0x1EFB17450];
  }
}

void __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      [UIApp _updateAppPriorityForSuspendedState];
      *(UIApp + 176) &= ~0x200000000uLL;
      [UIApp _deactivateForReason:11];
      objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
      [UIApp _cancelAllInputs];
      [UIApp applicationWillSuspend];
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"UIApplicationSuspendedNotification" object:UIApp userInfo:0];

      [UIApp _applicationDidEnterBackground];
      LOBYTE(v11) = [*(a1 + 32) _prepareForClientSuspensionWithScene:*(a1 + 88)];
      v12 = *(a1 + 105);
      if (v12)
      {
        [UIApp _handleSuspensionActions];
        v13 = UIApp;
      }

      else
      {
        v15 = *(UIApp + 184);
        [UIApp _handleSuspensionActions];
        v13 = UIApp;
        if ((v15 & 0x400) == 0)
        {
          LODWORD(v11) = (*(UIApp + 185) >> 2) & 1;
        }
      }

      v16 = (v11 | v12 | [v13 reportApplicationSuspended]) & 1;
      v17 = [*(a1 + 88) uiSettings];
      v18 = [v17 deactivationReasons];

      if ((v18 & 0x100) != 0)
      {
        v19 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        [v19 setSuppressingKeyboard:1 forScene:*(a1 + 80)];
      }

      v20 = *(a1 + 64);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3254779904;
      v26[2] = __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_4;
      v26[3] = &unk_1EFAFC658;
      v32 = HIBYTE(v18) & 1;
      v27 = *(a1 + 80);
      v33 = v11;
      v21 = *(a1 + 40);
      v34 = v16;
      v22 = *(a1 + 32);
      v28 = v21;
      v29 = v22;
      v30 = *(a1 + 88);
      v31 = *(a1 + 96);
      [v20 _enqueuePostSettingsUpdateResponseBlock:v26 inPhase:0x1EFB17450];
    }

    else if (a2 == 4)
    {
      [UIApp _deactivateForReason:12];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 postNotificationName:@"UIApplicationSuspendedEventsOnlyNotification" object:UIApp userInfo:0];

      objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    }

    else if (a2 == 5 && [*(a1 + 32) lifecycleWantsUnnecessaryDelayForSceneDelivery])
    {
      objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
      v3 = *(a1 + 32);
      v4 = *(a1 + 48);
      v5 = *(a1 + 96);

      [v3 completeApplicationLaunchWithFBSScene:v4 transitionContext:v5];
    }

    return;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return;
    }

    v6 = [*(a1 + 56) deviceOrientation];
    if ([*(a1 + 56) deviceOrientationEventsEnabled])
    {
      if ((v6 - 1) >= 4)
      {
        v7 = [*(a1 + 56) interfaceOrientation];
LABEL_31:
        v23 = +[UIDevice currentDevice];
        [v23 setOrientation:v7 animated:{objc_msgSend(*(a1 + 72), "isForeground")}];

        [*(a1 + 32) _scheduleFirstCommit];
        BSSetMainThreadPriorityFixedForUI();
        [UIApp _deactivateForReason:12];
        if (*(a1 + 104) != 1 || ([*(a1 + 32) lifecycleWantsUnnecessaryDelayForSceneDelivery] & 1) == 0)
        {
          if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
          {
            [UIApp _checkActivityContinuationAndBecomeCurrentIfNeeded];
          }

          [UIApp _sendWillEnterForegroundCallbacks];
          objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
        }

        [UIApp _stopDeactivatingForReason:11];
        v24 = [MEMORY[0x1E696AD88] defaultCenter];
        [v24 postNotificationName:@"UIApplicationResumedEventsOnlyNotification" object:UIApp userInfo:0];

        return;
      }

      if ([UIApp _appAdoptsUISceneLifecycle])
      {
        v7 = [*(a1 + 56) interfaceOrientation];
        if (v6 != [*(a1 + 56) interfaceOrientation])
        {
          v8 = _UIMainBundleIdentifier();
          v9 = [@"com.apple.MobileSMS" isEqualToString:v8];

          if ((v9 & 1) == 0)
          {
            v10 = *(a1 + 64);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_3;
            v35[3] = &__block_descriptor_40_e5_v8__0l;
            v35[4] = v6;
            [v10 _enqueuePostSettingsUpdateResponseBlock:v35 inPhase:0x1EFB17450];
          }
        }

        goto LABEL_31;
      }
    }

    v7 = v6;
    goto LABEL_31;
  }

  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  [UIApp _stopDeactivatingForReason:12];
  if ((*(a1 + 104) & 1) == 0)
  {
    [UIApp applicationDidResume];
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 postNotificationName:@"UIApplicationResumedNotification" object:UIApp userInfo:0];
  }
}

void __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_3(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  [v2 setOrientation:*(a1 + 32) animated:0];
}

void __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_4(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_5;
  aBlock[3] = &unk_1E70F67F8;
  v9 = *(a1 + 72);
  v7 = *(a1 + 32);
  v10 = *(a1 + 73);
  v8 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v3 = v2;
  if (*(a1 + 74))
  {
    v2[2](v2);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"UIApplicationWantsViewsToDisappearNotification" object:*(a1 + 48)];

    [UIApp _handleTaskCompletionAndTerminate:*(a1 + 64)];
  }

  else if ([*(a1 + 40) isForeground])
  {
    if (*(a1 + 72) == 1)
    {
      v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v5 setSuppressingKeyboard:0 forScene:*(a1 + 32)];
    }
  }

  else
  {
    v3[2](v3);
  }
}

void __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v2 setSuppressingKeyboard:0 forScene:*(a1 + 32)];
  }

  if ((*(a1 + 49) & 1) == 0 && (_UISceneLifecycleStateIsSEO(*(a1 + 40)) & 1) == 0)
  {
    v3 = +[UIKeyboard activeKeyboard];
    [v3 _deactivateForBackgrounding];

    [UIApp _purgeSharedInstances];
    CFPreferencesSynchronize(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 synchronize];
  }
}

uint64_t __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke_2_31()
{
  v0 = UIApp;
  v1 = *(UIApp + 176);
  if ((v1 & 0x100000) != 0)
  {
    *(UIApp + 176) = v1 & 0xFFFFFFFFFFEFFFFFLL;
    result = [UIApp _reportMainSceneUpdateFinished:0];
    *(UIApp + 176) |= 0x100000uLL;
  }

  else
  {

    return [v0 _reportMainSceneUpdateFinished:0];
  }

  return result;
}

void __69___UISceneLifecycleMultiplexer__prepareForClientSuspensionWithScene___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKey:@"UISuspendedStatusBarStyleKey"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 integerValue];
      [v7 setStatusBarStyle:v4];
      [v7 setDefaultStatusBarStyle:v4];
    }
  }

  v5 = [*(a1 + 32) objectForKey:@"UISuspendedStatusBarHiddenKey"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 BOOLValue];
      [v7 setStatusBarHidden:v6];
      [v7 setDefaultStatusBarHidden:v6];
    }
  }

  [v7 setDefaultPNGName:*(a1 + 40)];
  [v7 setDefaultPNGExpirationTime:*(a1 + 48)];
}

@end