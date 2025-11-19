@interface SBContinuitySessionServiceClient
@end

@implementation SBContinuitySessionServiceClient

void __86___SBContinuitySessionServiceClient__connectionQueue_handleLaunchEventOfType_payload___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) succinctDescription];
      v7 = *(a1 + 40);
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] received launch event of type: %{public}@ but we are already invalidated so ignoring!", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) succinctDescription];
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] received launch event of type: %{public}@", &v10, 0x16u);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 continuitySessionServiceClient:*(a1 + 32) handleLaunchEventOfType:*(a1 + 40) payload:*(a1 + 48)];
  }
}

void __82___SBContinuitySessionServiceClient__connectionQueue_handleContinuityButtonEvent___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) succinctDescription];
      v7 = NSStringFromSBUIContinuityButtonEventType();
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent button event: %{public}@ but we are already invalidated so ignoring!", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) succinctDescription];
      v9 = NSStringFromSBUIContinuityButtonEventType();
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent button event: %{public}@", &v10, 0x16u);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 continuitySessionServiceClient:*(a1 + 32) handleContinuityButtonEvent:*(a1 + 40)];
  }
}

void __84___SBContinuitySessionServiceClient__connectionQueue_setHostedInterfaceOrientation___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) succinctDescription];
      v7 = BSInterfaceOrientationDescription();
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] set hosted interface orientation: %{public}@ but we are already invalidated so ignoring", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) succinctDescription];
      v9 = BSInterfaceOrientationDescription();
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] set hosted interface orientation: %{public}@", &v10, 0x16u);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 continuitySessionServiceClient:*(a1 + 32) setHostedInterfaceOrientation:*(a1 + 40)];
  }
}

void __69___SBContinuitySessionServiceClient__connectionQueue_handleActivated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (*(v2 + 13) == 1)
  {
    v3 = SBLogContinuitySessionService();
    if (os_signpost_enabled(v3))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_SESSION_ACTIVATED", &unk_21F8B82DE, &v11, 2u);
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 13) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 12);
  os_unfair_lock_unlock((v4 + 8));
  v6 = SBLogContinuitySessionService();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) succinctDescription];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent activation message but we are already invalidated so ignoring!", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = [*(a1 + 32) succinctDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] handling activation message", &v11, 0xCu);
    }

    v10 = [*(a1 + 32) delegate];
    [v10 continuitySessionServiceClientDidUpdateExternallyBlockedReasons:*(a1 + 32)];

    [*(a1 + 32) continuitySessionDidUpdateState:*(*(a1 + 32) + 32)];
  }
}

void __92___SBContinuitySessionServiceClient__connectionQueue_handleUpdatedExternallyBlockedReasons___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) succinctDescription];
      v7 = [*(a1 + 40) bs_array];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent externally blocked reasons %{public}@ but we are already invalidated so ignoring!", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) succinctDescription];
      v9 = [*(a1 + 40) bs_array];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sent externally blocked reasons %{public}@", &v10, 0x16u);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 continuitySessionServiceClientDidUpdateExternallyBlockedReasons:*(a1 + 32)];
  }
}

void __81___SBContinuitySessionServiceClient__connectionQueue_handleHIDServicesConfigured__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  os_unfair_lock_unlock((v2 + 8));
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) succinctDescription];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished configuring HID services but we are already invalidated so ignoring!", &v8, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 32) succinctDescription];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished configuring HID services", &v8, 0xCu);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 continuitySessionServiceClientDidConfigureHIDServices:*(a1 + 32)];
  }
}

void __109___SBContinuitySessionServiceClient__connectionQueue_updatedAppearanceSettings_transitionContext_completion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  os_unfair_lock_lock((a1[4] + 8));
  v3 = *(*v2 + 12);
  os_unfair_lock_unlock(*v2 + 2);
  v4 = SBLogContinuitySessionService();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) == 0)
  {
    if (v5)
    {
      v9 = [*v2 succinctDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] updated appearance settings", &v14, 0xCu);
    }

    v10 = [*v2 delegate];
    v8 = v10;
    if (v10)
    {
      [v10 continuitySessionServiceClient:a1[4] updatedAppearanceSettings:a1[5] transitionContext:a1[6] completion:a1[7]];
    }

    else
    {
      v11 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __109___SBContinuitySessionServiceClient__connectionQueue_updatedAppearanceSettings_transitionContext_completion___block_invoke_cold_1(v2);
      }

      v12 = a1[7];
      if (v12)
      {
        v13 = SBUIContinuitySessionErrorCreate();
        (*(v12 + 16))(v12, 0, v13);
      }
    }

    goto LABEL_14;
  }

  if (v5)
  {
    v6 = [*v2 succinctDescription];
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] updated appearance settings but we are already invalidated so ignoring!", &v14, 0xCu);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = SBUIContinuitySessionErrorCreate();
    (*(v7 + 16))(v7, 0, v8);
LABEL_14:
  }
}

void __74___SBContinuitySessionServiceClient__connectionQueue_didCaptureScreenshot__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*v1 + 12);
  os_unfair_lock_unlock(*v1 + 2);
  v3 = SBLogContinuitySessionService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did capture screenshot but we are already invalidated so ignoring!", &v9, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did capture screenshot", &v9, 0xCu);
    }

    v7 = [*v1 delegate];
    v3 = v7;
    if (v7)
    {
      [v7 continuitySessionServiceClientDidCaptureScreenshot:*v1];
    }

    else
    {
      v8 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __74___SBContinuitySessionServiceClient__connectionQueue_didCaptureScreenshot__block_invoke_cold_1(v1);
      }
    }
  }
}

void __77___SBContinuitySessionServiceClient__connectionQueue_didStartScreenRecording__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*v1 + 12);
  os_unfair_lock_unlock(*v1 + 2);
  v3 = SBLogContinuitySessionService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did start screen recording but we are already invalidated so ignoring!", &v9, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did start screen recording", &v9, 0xCu);
    }

    v7 = [*v1 delegate];
    v3 = v7;
    if (v7)
    {
      [v7 continuitySessionServiceClientDidStartScreenRecording:*v1];
    }

    else
    {
      v8 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __77___SBContinuitySessionServiceClient__connectionQueue_didStartScreenRecording__block_invoke_cold_1(v1);
      }
    }
  }
}

void __96___SBContinuitySessionServiceClient__connectionQueue_clientHasAdoptedScreenCaptureNotifications__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*v1 + 12);
  os_unfair_lock_unlock(*v1 + 2);
  v3 = SBLogContinuitySessionService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] client has adopted screen capture notifications but we are already invalidated so ignoring!", &v9, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] client has adopted screen capture notifications", &v9, 0xCu);
    }

    v7 = [*v1 delegate];
    v3 = v7;
    if (v7)
    {
      [v7 continuitySessionServiceClientHasAdoptedScreenCaptureNotifications:*v1];
    }

    else
    {
      v8 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __96___SBContinuitySessionServiceClient__connectionQueue_clientHasAdoptedScreenCaptureNotifications__block_invoke_cold_1(v1);
      }
    }
  }
}

void __76___SBContinuitySessionServiceClient__connectionQueue_didStopScreenRecording__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*v1 + 12);
  os_unfair_lock_unlock(*v1 + 2);
  v3 = SBLogContinuitySessionService();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did stop screen recording but we are already invalidated so ignoring!", &v9, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = [*v1 succinctDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] did stop screen recording", &v9, 0xCu);
    }

    v7 = [*v1 delegate];
    v3 = v7;
    if (v7)
    {
      [v7 continuitySessionServiceClientDidStopScreenRecording:*v1];
    }

    else
    {
      v8 = SBLogContinuitySessionService();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __76___SBContinuitySessionServiceClient__connectionQueue_didStopScreenRecording__block_invoke_cold_1(v1);
      }
    }
  }
}

uint64_t __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 20) withName:@"pid"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"INVALIDATED" ifEqualTo:1];
  result = [*(a1 + 32) hasSuccinctStyle];
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 14) withName:@"suppressingClientCallouts"];
    return [*(a1 + 32) appendBool:*(*(a1 + 40) + 15) withName:@"sentDisplayUUID"];
  }

  return result;
}

void __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) externallyBlockedReasons];
  v4 = [v2 appendObject:v3 withName:@"externallyBlockedReasons"];

  v5 = *(a1 + 32);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke_3;
  v17 = &unk_2783A92D8;
  v6 = v5;
  v7 = *(a1 + 40);
  v18 = v6;
  v19 = v7;
  [v6 appendBodySectionWithName:@"internalState" block:&v14];
  v8 = *(a1 + 32);
  v9 = BSInterfaceOrientationDescription();
  v10 = [v8 appendObject:v9 withName:{@"currentInterfaceOrientation", v14, v15, v16, v17}];

  v11 = *(a1 + 32);
  v12 = BSInterfaceOrientationMaskDescription();
  v13 = [v11 appendObject:v12 withName:@"supportedInterfaceOrientations"];
}

void __63___SBContinuitySessionServiceClient_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSBContinuitySessionState(*(*(a1 + 40) + 48));
  v4 = [v2 appendObject:v3 withName:@"state"];

  v5 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 56) bs_array];
  v6 = [v5 appendObject:v7 withName:@"stateReasons"];
}

void __109___SBContinuitySessionServiceClient__connectionQueue_updatedAppearanceSettings_transitionContext_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_26(a1) succinctDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "[%{public}@] updated appearance settings - no delegate", v4, v5, v6, v7, v8);
}

void __74___SBContinuitySessionServiceClient__connectionQueue_didCaptureScreenshot__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_26(a1) succinctDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "[%{public}@] did capture screenshot - no delegate", v4, v5, v6, v7, v8);
}

void __77___SBContinuitySessionServiceClient__connectionQueue_didStartScreenRecording__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_26(a1) succinctDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "[%{public}@] did start screen recording - no delegate", v4, v5, v6, v7, v8);
}

void __96___SBContinuitySessionServiceClient__connectionQueue_clientHasAdoptedScreenCaptureNotifications__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_26(a1) succinctDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "[%{public}@] client has adopted screen capture notifications - no delegate", v4, v5, v6, v7, v8);
}

void __76___SBContinuitySessionServiceClient__connectionQueue_didStopScreenRecording__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_3_26(a1) succinctDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "[%{public}@] did stop screen recording - no delegate", v4, v5, v6, v7, v8);
}

@end