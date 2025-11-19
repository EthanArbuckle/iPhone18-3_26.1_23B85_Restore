@interface BYSetupStateNotifier
+ (id)sharedNotifier;
- (BYSetupStateNotifier)init;
- (unint64_t)currentState;
- (void)_beginObservingState;
- (void)_endObservingState;
- (void)_noLongerExclusiveNotificationFired;
- (void)_shouldRemainAliveNotificationFired;
- (void)_stateChangedTo:(unint64_t)a3;
- (void)addObserverWhenSetupIsNoLongerExclusiveWithNotificationBlock:(id)a3;
- (void)addRelaunchStateChangeObserver:(id)a3;
- (void)addStateChangeObserver:(id)a3;
- (void)addStateCompletionObserver:(id)a3 forState:(unint64_t)a4;
- (void)dealloc;
- (void)notifySetupShouldRemainAlive;
- (void)notifyStateChangedTo:(unint64_t)a3;
@end

@implementation BYSetupStateNotifier

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[BYSetupStateNotifier sharedNotifier];
  }

  v3 = sharedNotifier_notifier;

  return v3;
}

- (unint64_t)currentState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(BYSetupStateNotifier *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__BYSetupStateNotifier_currentState__block_invoke;
  v6[3] = &unk_1E7D03C78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __36__BYSetupStateNotifier_currentState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __38__BYSetupStateNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_notifier = objc_alloc_init(BYSetupStateNotifier);

  return MEMORY[0x1EEE66BB8]();
}

- (BYSetupStateNotifier)init
{
  v15.receiver = self;
  v15.super_class = BYSetupStateNotifier;
  v2 = [(BYSetupStateNotifier *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = dispatch_queue_create("Setup State Notification Queue", 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    generalStateNotificationBlocks = v3->_generalStateNotificationBlocks;
    v3->_generalStateNotificationBlocks = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    specificStateNotificationBlocks = v3->_specificStateNotificationBlocks;
    v3->_specificStateNotificationBlocks = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    exclusiveNotificationBlocks = v3->_exclusiveNotificationBlocks;
    v3->_exclusiveNotificationBlocks = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    relaunchStateNotificationBlocks = v3->_relaunchStateNotificationBlocks;
    v3->_relaunchStateNotificationBlocks = v12;

    [(BYSetupStateNotifier *)v3 _beginObservingState];
  }

  return v3;
}

- (void)dealloc
{
  [(BYSetupStateNotifier *)self _endObservingState];
  v3.receiver = self;
  v3.super_class = BYSetupStateNotifier;
  [(BYSetupStateNotifier *)&v3 dealloc];
}

- (void)addStateChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(BYSetupStateNotifier *)self notificationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__BYSetupStateNotifier_addStateChangeObserver___block_invoke;
  v7[3] = &unk_1E7D02F28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __47__BYSetupStateNotifier_addStateChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generalStateNotificationBlocks];
  v3 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  [v2 addObject:v3];

  if ([*(a1 + 32) state])
  {
    v4 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__BYSetupStateNotifier_addStateChangeObserver___block_invoke_2;
    v6[3] = &unk_1E7D03CA0;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

uint64_t __47__BYSetupStateNotifier_addStateChangeObserver___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) state];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

- (void)addStateCompletionObserver:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BYSetupStateNotifier *)self notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__BYSetupStateNotifier_addStateCompletionObserver_forState___block_invoke;
  block[3] = &unk_1E7D03CC8;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __60__BYSetupStateNotifier_addStateCompletionObserver_forState___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] >= *(a1 + 48))
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__BYSetupStateNotifier_addStateCompletionObserver_forState___block_invoke_2;
    block[3] = &unk_1E7D02D70;
    v10 = *(a1 + 40);
    dispatch_async(v2, block);
  }

  v3 = [*(a1 + 32) specificStateNotificationBlocks];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v6 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  [v5 addObject:v6];

  v7 = [*(a1 + 32) specificStateNotificationBlocks];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v7 setObject:v5 forKeyedSubscript:v8];
}

- (void)addObserverWhenSetupIsNoLongerExclusiveWithNotificationBlock:(id)a3
{
  v4 = a3;
  v5 = [(BYSetupStateNotifier *)self notificationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__BYSetupStateNotifier_addObserverWhenSetupIsNoLongerExclusiveWithNotificationBlock___block_invoke;
  v7[3] = &unk_1E7D02F28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __85__BYSetupStateNotifier_addObserverWhenSetupIsNoLongerExclusiveWithNotificationBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) exclusiveNotificationBlocks];
  v2 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  [v3 addObject:v2];
}

- (void)addRelaunchStateChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(BYSetupStateNotifier *)self notificationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BYSetupStateNotifier_addRelaunchStateChangeObserver___block_invoke;
  v7[3] = &unk_1E7D02F28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __55__BYSetupStateNotifier_addRelaunchStateChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) relaunchStateNotificationBlocks];
  v3 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  [v2 addObject:v3];

  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BYSetupStateNotifier_addRelaunchStateChangeObserver___block_invoke_2;
  v6[3] = &unk_1E7D03CA0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, v6);
}

uint64_t __55__BYSetupStateNotifier_addRelaunchStateChangeObserver___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shouldRelaunchSetup];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)notifyStateChangedTo:(unint64_t)a3
{
  if (a3 - 1 <= 2)
  {
    v5 = (&off_1E7D03D38)[a3 - 1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *v5, 0, 0, 0);
  }

  is_valid_token = notify_is_valid_token([(BYSetupStateNotifier *)self stateNotificationToken]);
  v8 = _BYLoggingFacility();
  v9 = v8;
  if (!is_valid_token)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BYSetupStateNotifier notifyStateChangedTo:v9];
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(BYSetupStateNotifier *)a3 notifyStateChangedTo:v9];
  }

  v10 = notify_set_state([(BYSetupStateNotifier *)self stateNotificationToken], a3);
  if (v10)
  {
    v11 = v10;
    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BYSetupStateNotifier *)a3 notifyStateChangedTo:v11, v12];
    }
  }

  if (notify_post("com.apple.purplebuddy.setupStateChanged"))
  {
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BYSetupStateNotifier notifyStateChangedTo:];
    }

LABEL_15:
  }
}

- (void)notifySetupShouldRemainAlive
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to post remaing alive notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_beginObservingState
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to register for the should remain alive notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__BYSetupStateNotifier__beginObservingState__block_invoke(uint64_t a1)
{
  state64 = 0;
  if (notify_get_state([*(a1 + 32) stateNotificationToken], &state64))
  {
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __44__BYSetupStateNotifier__beginObservingState__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _stateChangedTo:state64];
  }
}

uint64_t __44__BYSetupStateNotifier__beginObservingState__block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) stateNotificationToken];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)_endObservingState
{
  notify_cancel([(BYSetupStateNotifier *)self stateNotificationToken]);
  notify_cancel([(BYSetupStateNotifier *)self exclusiveNotificationToken]);
  [(BYSetupStateNotifier *)self setStateNotificationToken:0xFFFFFFFFLL];

  [(BYSetupStateNotifier *)self setExclusiveNotificationToken:0xFFFFFFFFLL];
}

- (void)_stateChangedTo:(unint64_t)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(BYSetupStateNotifier *)self notificationQueue];
  dispatch_assert_queue_V2(v5);

  if ([(BYSetupStateNotifier *)self state]!= a3)
  {
    v6 = [(BYSetupStateNotifier *)self state];
    [(BYSetupStateNotifier *)self setState:a3];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(BYSetupStateNotifier *)self generalStateNotificationBlocks];
    v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          v12 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__BYSetupStateNotifier__stateChangedTo___block_invoke;
          block[3] = &unk_1E7D03CF0;
          block[5] = v11;
          block[6] = v6;
          block[4] = self;
          dispatch_async(v12, block);

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v13 = [(BYSetupStateNotifier *)self specificStateNotificationBlocks];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BYSetupStateNotifier state](self, "state")}];
    v15 = [v13 objectForKeyedSubscript:v14];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          v22 = dispatch_get_global_queue(0, 0);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __40__BYSetupStateNotifier__stateChangedTo___block_invoke_2;
          v25[3] = &unk_1E7D02D70;
          v25[4] = v21;
          dispatch_async(v22, v25);

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v18);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __40__BYSetupStateNotifier__stateChangedTo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) state];
  v4 = *(v2 + 16);

  return v4(v2, v1, v3);
}

- (void)_noLongerExclusiveNotificationFired
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(BYSetupStateNotifier *)self exclusiveNotificationBlocks];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__BYSetupStateNotifier__noLongerExclusiveNotificationFired__block_invoke;
        block[3] = &unk_1E7D02D70;
        block[4] = v8;
        dispatch_async(v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  [(BYSetupStateNotifier *)self setShouldRelaunchSetup:0];
  v10 = [(BYSetupStateNotifier *)self shouldRelaunchSetup];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(BYSetupStateNotifier *)self relaunchStateNotificationBlocks];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = dispatch_get_global_queue(0, 0);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __59__BYSetupStateNotifier__noLongerExclusiveNotificationFired__block_invoke_2;
        v19[3] = &unk_1E7D03D18;
        v19[4] = v16;
        v20 = v10;
        dispatch_async(v17, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_shouldRemainAliveNotificationFired
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to get the state of the should remain alive notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyStateChangedTo:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "Updating state notification to %ld...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)notifyStateChangedTo:(os_log_t)log .cold.3(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1B862F000, log, OS_LOG_TYPE_ERROR, "Failed to update state notification to %ld: %d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)notifyStateChangedTo:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to post state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__BYSetupStateNotifier__beginObservingState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to get the state of the state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end