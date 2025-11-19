@interface CACUserAttentionInterface
+ (id)sharedManager;
- (void)cancelDelayedUserAttentionControllerStop;
- (void)startUserAttentionControllerIfNeededForTypes:(unint64_t)a3;
- (void)stopUserAttentionControllerIfNeeded;
- (void)stopUserAttentionControllerIfNeededAfterDelay:(double)a3;
- (void)userAttentionController:(id)a3 didGainAttentionWithEvent:(int64_t)a4;
- (void)userAttentionController:(id)a3 didLoseAttentionWithEvent:(int64_t)a4;
- (void)userAttentionControllerAttentionAwarenessInterrupted:(id)a3;
- (void)userAttentionControllerAttentionAwarenessInterruptionEnded:(id)a3;
@end

@implementation CACUserAttentionInterface

+ (id)sharedManager
{
  if (sharedManager_sSingletonInit != -1)
  {
    +[CACUserAttentionInterface sharedManager];
  }

  v3 = sharedManager_sSharedCACUserAttentionInterface;

  return v3;
}

uint64_t __42__CACUserAttentionInterface_sharedManager__block_invoke()
{
  sharedManager_sSharedCACUserAttentionInterface = objc_alloc_init(CACUserAttentionInterface);

  return MEMORY[0x2821F96F8]();
}

- (void)startUserAttentionControllerIfNeededForTypes:(unint64_t)a3
{
  v5 = CACLogAttentionAware();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26B354000, v5, OS_LOG_TYPE_INFO, "Starting Attention Aware Client ...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke;
  v8[3] = &unk_279CEC6B8;
  objc_copyWeak(v9, buf);
  v9[1] = a3;
  CACGetDeviceSupportsUserAttentionDetection(v6, v8);

  objc_destroyWeak(v9);
  objc_destroyWeak(buf);
}

void __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _userAttentionController];

    if (!v8)
    {
      v9 = [[CACUserAttentionController alloc] initWithSamplingInterval:a2 attentionLossTimeout:a3 supportedAttentionAwarenessEvents:2.0 deviceSupportsRaiseGestureDetection:4.0];
      [(CACUserAttentionController *)v9 setDelegate:v7];
      [v7 _setUserAttentionController:v9];
    }

    v10 = [v7 _userAttentionController];
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke_2;
    v13[3] = &unk_279CEB980;
    v14 = v7;
    [v10 startIfNeededForTypes:v11 completionQueue:MEMORY[0x277D85CD0] completion:v13];

    v12 = v14;
  }

  else
  {
    v12 = CACLogAttentionAware();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke_cold_1(v12);
    }
  }
}

void __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CACLogAttentionAware();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke_2_cold_1(a1, v3, v4);
    }
  }
}

- (void)stopUserAttentionControllerIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_26B354000, log, OS_LOG_TYPE_ERROR, "Failed to stop user attention controller: %{public}@, error: %{public}@", &v4, 0x16u);
}

- (void)stopUserAttentionControllerIfNeededAfterDelay:(double)a3
{
  [(CACUserAttentionInterface *)self cancelDelayedUserAttentionControllerStop];

  [(CACUserAttentionInterface *)self performSelector:sel_stopUserAttentionControllerIfNeeded withObject:0 afterDelay:a3];
}

- (void)cancelDelayedUserAttentionControllerStop
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_stopUserAttentionControllerIfNeeded object:0];
}

- (void)userAttentionController:(id)a3 didLoseAttentionWithEvent:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = CACLogAttentionAware();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_26B354000, v6, OS_LOG_TYPE_INFO, "Attention was lost with event=%zd", &v8, 0xCu);
  }

  if ([(CACUserAttentionInterface *)self isAttentionAwarenessInterrupted])
  {
    v7 = CACLogAttentionAware();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26B354000, v7, OS_LOG_TYPE_INFO, "Attention awareness was interrupted. Ignoring event.", &v8, 2u);
    }
  }

  else
  {
    if ((a4 - 1) > 1)
    {
      return;
    }

    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v7 attentionAwareLost];
  }
}

- (void)userAttentionController:(id)a3 didGainAttentionWithEvent:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = CACLogAttentionAware();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_26B354000, v6, OS_LOG_TYPE_INFO, "Attention was gained with event=%zd", &v8, 0xCu);
  }

  if ([(CACUserAttentionInterface *)self isAttentionAwarenessInterrupted])
  {
    v7 = CACLogAttentionAware();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26B354000, v7, OS_LOG_TYPE_INFO, "Attention awareness was interrupted. Ignoring event.", &v8, 2u);
    }
  }

  else
  {
    if ((a4 - 1) > 3)
    {
      return;
    }

    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v7 attentionAwareGained];
  }
}

- (void)userAttentionControllerAttentionAwarenessInterrupted:(id)a3
{
  if (![(CACUserAttentionInterface *)self isAttentionAwarenessInterrupted])
  {
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v4 attentionAwareInterrupted];
  }

  [(CACUserAttentionInterface *)self setIsAttentionAwarenessInterrupted:1];
}

- (void)userAttentionControllerAttentionAwarenessInterruptionEnded:(id)a3
{
  if ([(CACUserAttentionInterface *)self isAttentionAwarenessInterrupted])
  {
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v4 attentionAwareInterruptionEnded];
  }

  [(CACUserAttentionInterface *)self setIsAttentionAwarenessInterrupted:0];
}

void __74__CACUserAttentionInterface_startUserAttentionControllerIfNeededForTypes___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) _userAttentionController];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_26B354000, a3, OS_LOG_TYPE_ERROR, "Failed to start user attention controller: %{public}@, error: %{public}@", &v6, 0x16u);
}

@end