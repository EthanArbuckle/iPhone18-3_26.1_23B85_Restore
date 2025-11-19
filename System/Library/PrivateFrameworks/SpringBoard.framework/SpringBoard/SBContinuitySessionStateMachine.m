@interface SBContinuitySessionStateMachine
@end

@implementation SBContinuitySessionStateMachine

id __122___SBContinuitySessionStateMachine_initWithSystemEventMonitor_continuityDisplayAuthenticationCoordinator_inStoreDemoMode___block_invoke(uint64_t a1, Class a2)
{
  v2 = [[a2 alloc] initWithSystemEventMonitor:*(a1 + 32) continuityDisplayAuthenticationCoordinator:*(a1 + 40)];

  return v2;
}

id __53___SBContinuitySessionStateMachine__initializeStates__block_invoke(uint64_t a1, void *a2)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_2;
  v11[3] = &unk_2783C43A8;
  objc_copyWeak(v12, (a1 + 40));
  v4 = *(a1 + 48);
  v12[1] = a2;
  v12[2] = v4;
  v11[4] = *(a1 + 32);
  v5 = MEMORY[0x223D6F7F0](v11);
  v9 = MEMORY[0x223D6F7F0](v5, v6, v7, v8);

  objc_destroyWeak(v12);

  return v9;
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 14) != *(a1 + 48))
    {
      __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_2_cold_1();
    }

    [v4 _moveToInvalidStateForReasons:v5 postToDelegate:1];
  }
}

id __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_3(uint64_t a1, void *a2)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_4;
  v11[3] = &unk_2783C43F8;
  objc_copyWeak(v12, (a1 + 40));
  v4 = *(a1 + 48);
  v12[1] = a2;
  v12[2] = v4;
  v11[4] = *(a1 + 32);
  v5 = MEMORY[0x223D6F7F0](v11);
  v9 = MEMORY[0x223D6F7F0](v5, v6, v7, v8);

  objc_destroyWeak(v12);

  return v9;
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (WeakRetained[14] != *(a1 + 48))
    {
      __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_4_cold_1();
      WeakRetained = v5;
    }

    [WeakRetained _moveToState:a2];
    WeakRetained = v5;
  }
}

id __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_5(uint64_t a1, void *a2)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_6;
  v11[3] = &unk_2783C43A8;
  objc_copyWeak(v12, (a1 + 40));
  v4 = *(a1 + 48);
  v12[1] = a2;
  v12[2] = v4;
  v11[4] = *(a1 + 32);
  v5 = MEMORY[0x223D6F7F0](v11);
  v9 = MEMORY[0x223D6F7F0](v5, v6, v7, v8);

  objc_destroyWeak(v12);

  return v9;
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 14) != *(a1 + 48))
    {
      __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_6_cold_1();
    }

    [v4 _updateCurrentStateReasons:v5];
  }
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_7(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = *(v5 + 16);
  v10 = a2;
  v7 = v6(v5, a3);
  [v10 setStateTransitionHandler:v7];

  v8 = (*(a1[6] + 16))();
  [v10 setInvalidStateHandler:v8];

  v9 = (*(a1[7] + 16))();
  [v10 setStateUpdateHandler:v9];

  [v10 setClientExternallyBlockedReasonsProvider:a1[4]];
}

void __63___SBContinuitySessionStateMachine__updateCurrentStateReasons___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[14] == 12)
    {
      v4 = SBLogContinuityDisplay();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 138543362;
        v7 = v5;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[State Machine] already posted .invalid to client - ignoring updated reasons: %{public}@", &v6, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(WeakRetained + 17, *(a1 + 32));
      v4 = [v3 delegate];
      [v4 continuitySessionStateMachineDidUpdateState:v3 oldState:*(a1 + 48)];
    }
  }
}

void __49___SBContinuitySessionStateMachine__moveToState___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[14] == 12)
    {
      v4 = SBLogContinuityDisplay();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = NSStringFromSBContinuitySessionState(*(a1 + 48));
        v6 = 138543362;
        v7 = v5;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[State Machine] internal state is .invalid so ignoring async move to state %{public}@", &v6, 0xCu);
      }
    }

    else
    {
      WeakRetained[16] = *(a1 + 48);
      objc_storeStrong(WeakRetained + 17, *(a1 + 32));
      v4 = [v3 delegate];
      [v4 continuitySessionStateMachineDidUpdateState:v3 oldState:*(a1 + 56)];
    }
  }
}

void __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = NSStringFromSBContinuitySessionState(*(a1[5] + 128));
  [v2 appendString:v3 withName:0];

  v4 = a1[4];
  v5 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_3;
  v8[3] = &unk_2783A92D8;
  v6 = v4;
  v7 = a1[5];
  v9 = v6;
  v10 = v7;
  [v6 overlayStyle:v5 block:v8];
}

void __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = NSStringFromSBContinuitySessionState(*(a1[5] + 112));
  [v2 appendString:v3 withName:0];

  v4 = a1[4];
  v5 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62___SBContinuitySessionStateMachine_appendDescriptionToStream___block_invoke_5;
  v8[3] = &unk_2783A92D8;
  v6 = v4;
  v7 = a1[5];
  v9 = v6;
  v10 = v7;
  [v6 overlayStyle:v5 block:v8];
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_0_58();
  [OUTLINED_FUNCTION_2_41(v1 v2];
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_0_58();
  [OUTLINED_FUNCTION_2_41(v1 v2];
}

void __53___SBContinuitySessionStateMachine__initializeStates__block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_0_58();
  [OUTLINED_FUNCTION_2_41(v1 v2];
}

@end