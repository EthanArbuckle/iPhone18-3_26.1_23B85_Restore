@interface SBUIBiometricKitInterface
@end

@implementation SBUIBiometricKitInterface

void __34___SBUIBiometricKitInterface_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    *(WeakRetained + 2) = state64;
    [*(WeakRetained + 9) biometricKitInterface:WeakRetained enrolledIdentitiesDidChange:{objc_msgSend(WeakRetained, "hasEnrolledIdentities")}];
  }
}

uint64_t __59___SBUIBiometricKitInterface_operation_finishedWithReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48) - 1;
    if (v4 > 3)
    {
      v5 = @"BKOperationEndReasonFailed";
    }

    else
    {
      v5 = off_1E789E128[v4];
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_INFO, "operation:%@ finishedWithReason:%@", &v7, 0x16u);
  }

  _SBUIEffectiveBiometricClassFromString(@"BKMatchPearlOperation");
  result = objc_opt_isKindOfClass();
  if ((result & 1) != 0 && *(a1 + 48) == 3)
  {
    return [*(a1 + 40) _sendDelegateEvent:15];
  }

  return result;
}

void __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40;
  v3 = [*(a1 + 32) _trackerForOperation:*(a1 + 40)];
  v4 = *(v2 + 8);
  v5 = SBLogBiometricResource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *v2;
    if ((v4 - 1) > 4)
    {
      v7 = @"BKOperationStateFinished";
    }

    else
    {
      v7 = off_1E789E148[v4 - 1];
    }

    *v14 = 138412546;
    *&v14[4] = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "operation:%@ stateChanged:%@", v14, 0x16u);
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 5)
      {
        goto LABEL_24;
      }

      _SBUIEffectiveBiometricClassFromString(@"BKMatchPearlOperation");
      if (objc_opt_isKindOfClass())
      {
        if ([v3 state] == 1)
        {
          *v14 = 1;
          v8 = [*v2 device];
          v9 = [v8 bioLockoutState:v14 forUser:getuid() error:0];
          v10 = *v14;

          v11 = 15;
          if (v9 && v10 != 1)
          {
            v11 = [*(a1 + 32) _eventForLockoutState:*v14];
          }

          v12 = SBLogBiometricResource();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke_cold_2(v2, v11, v12);
          }

          [*(a1 + 32) _sendDelegateEvent:v11];
        }

        else
        {
          v13 = SBLogBiometricResource();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke_cold_1(v2, v3, v13);
          }
        }
      }
    }

LABEL_23:
    [v3 setState:0];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_23;
  }

  if (v4 == 2)
  {
    [v3 setState:1];
    [*(a1 + 32) _sendDelegateEvent:12];
  }

LABEL_24:
}

void __62___SBUIBiometricKitInterface_matchOperation_failedWithReason___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48) - 2;
    if (v4 > 0xA)
    {
      v5 = @"BKMatchFailReasonUnspecified";
    }

    else
    {
      v5 = off_1E789E170[v4];
    }

    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_INFO, "operation:%@ finishedWithReason:%@", &v9, 0x16u);
  }

  v6 = *(a1 + 48);
  if (v6 != 2)
  {
    v7 = 27;
    if (v6 == 5)
    {
      v7 = 26;
    }

    if (v6 == 4)
    {
      v8 = 25;
    }

    else
    {
      v8 = v7;
    }

    [*(a1 + 40) _sendDelegateEvent:v8];
  }
}

uint64_t __61___SBUIBiometricKitInterface_operation_presenceStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  v3 = [v2 descriptor];
  v4 = [v3 type];

  if (*(a1 + 48) == 1)
  {
    if (v4 == 2)
    {
      v4 = 13;
      return [*(a1 + 40) _sendDelegateEvent:v4];
    }

    if (v4 == 1)
    {
      *(*(a1 + 40) + 28) = 1;
      v10 = 1;
      _SBUIEffectiveBiometricClassFromString(@"BKMatchOperation");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return [*(a1 + 40) _sendDelegateEvent:v4];
      }

      v5 = [*(a1 + 32) device];
      if ([v5 bioLockoutState:&v10 forUser:getuid() error:0])
      {
        v6 = v10;

        if (v6 != 1)
        {
          v4 = [*(a1 + 40) _eventForLockoutState:v10];
          return [*(a1 + 40) _sendDelegateEvent:v4];
        }
      }

      else
      {
      }
    }

    v4 = 1;
    return [*(a1 + 40) _sendDelegateEvent:v4];
  }

  if (v4 == 2)
  {
    v7 = 14;
  }

  else
  {
    v7 = 0;
    if (v4 == 1)
    {
      *(*(a1 + 40) + 28) = 0;
    }
  }

  v8 = *(a1 + 40);

  return [v8 _sendDelegateEvent:v7];
}

void __63___SBUIBiometricKitInterface_matchOperation_matchedWithResult___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _trackerForOperation:*(a1 + 40)];
  v2 = [*(a1 + 48) identity];

  if (v2)
  {
    [v8 setState:2];
    [*(a1 + 32) _sendDelegateEvent:3];
  }

  else
  {
    [v8 setState:3];
    v3 = [*(a1 + 48) identity];

    if (!v3)
    {
      v4 = [*(a1 + 48) lockoutState];
      [*(a1 + 32) _sendDelegateEvent:{objc_msgSend(*(a1 + 32), "_eventForLockoutState:", v4)}];
      v5 = (v4 & 0xFFFFFFFFFFFFFFFDLL) == 4 ? 11 : 10;
      [*(a1 + 32) _sendDelegateEvent:v5];
      _SBUIEffectiveBiometricClassFromString(@"BKMatchPearlResultInfo");
      if (objc_opt_isKindOfClass())
      {
        v6 = *(a1 + 48);
        v7 = [v6 feedback];
        if (v7 >= 1)
        {
          [*(a1 + 32) _sendDelegateEventForFeedback:v7];
        }

        if ([v6 periocularMatchState] == 8)
        {
          [*(a1 + 32) _sendDelegateEvent:32];
        }
      }
    }
  }
}

void __58___SBUIBiometricKitInterface__startFallbackIndicatorTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendDelegateEvent:35];
}

void __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = 138412802;
  v6 = v4;
  v7 = 2112;
  v8 = @"BKOperationStateOnHold";
  v9 = 2048;
  v10 = [a2 state];
  _os_log_debug_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_DEBUG, "operation:%@ stateChanged:%@ not sending event because operation was in state %ld", &v5, 0x20u);
}

void __53___SBUIBiometricKitInterface_operation_stateChanged___block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412802;
  v5 = v3;
  v6 = 2112;
  v7 = @"BKOperationStateOnHold";
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_1A9A79000, log, OS_LOG_TYPE_DEBUG, "operation:%@ stateChanged:%@ sending event %lu because operation was running", &v4, 0x20u);
}

@end