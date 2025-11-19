@interface BYTelephonyStateNotifier
+ (unint64_t)retrieveSIMUnlockStateFromToken:(int)a3;
- (BYTelephonyStateNotifier)initWithNotificationQueue:(id)a3 notificationBlock:(id)a4;
- (id)initForNotifying;
- (unint64_t)currentSIMUnlockState;
- (void)_beginObservingWithNotificationQueue:(id)a3 notificationBlock:(id)a4;
- (void)_endObservingState;
- (void)dealloc;
- (void)initForNotifying;
- (void)notifySIMUnlockStateChangedTo:(unint64_t)a3;
@end

@implementation BYTelephonyStateNotifier

- (BYTelephonyStateNotifier)initWithNotificationQueue:(id)a3 notificationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BYTelephonyStateNotifier;
  v8 = [(BYTelephonyStateNotifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_simUnlockNotificationToken = -1;
    if (v6)
    {
      if (v7)
      {
        [(BYTelephonyStateNotifier *)v8 _beginObservingWithNotificationQueue:v6 notificationBlock:v7];
      }
    }
  }

  return v9;
}

- (id)initForNotifying
{
  v5.receiver = self;
  v5.super_class = BYTelephonyStateNotifier;
  v2 = [(BYTelephonyStateNotifier *)&v5 init];
  if (v2 && notify_register_check("com.apple.purplebuddy.simUnlockStateChanged", &v2->_simUnlockNotificationToken))
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier initForNotifying];
    }

    v2->_simUnlockNotificationToken = -1;
  }

  return v2;
}

- (void)dealloc
{
  [(BYTelephonyStateNotifier *)self _endObservingState];
  v3.receiver = self;
  v3.super_class = BYTelephonyStateNotifier;
  [(BYTelephonyStateNotifier *)&v3 dealloc];
}

- (unint64_t)currentSIMUnlockState
{
  v3 = objc_opt_class();
  v4 = [(BYTelephonyStateNotifier *)self simUnlockNotificationToken];

  return [v3 retrieveSIMUnlockStateFromToken:v4];
}

- (void)notifySIMUnlockStateChangedTo:(unint64_t)a3
{
  is_valid_token = notify_is_valid_token([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]);
  v6 = _BYLoggingFacility();
  v7 = v6;
  if (!is_valid_token)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:v7];
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:v7];
  }

  if (notify_set_state([(BYTelephonyStateNotifier *)self simUnlockNotificationToken], a3))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:];
    }
  }

  if (notify_post("com.apple.purplebuddy.simUnlockStateChanged"))
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:];
    }

LABEL_13:
  }
}

- (void)_beginObservingWithNotificationQueue:(id)a3 notificationBlock:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__BYTelephonyStateNotifier__beginObservingWithNotificationQueue_notificationBlock___block_invoke;
  v9[3] = &unk_1E7D03B80;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  if (notify_register_dispatch("com.apple.purplebuddy.simUnlockStateChanged", &self->_simUnlockNotificationToken, a3, v9))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier initForNotifying];
    }
  }
}

uint64_t __83__BYTelephonyStateNotifier__beginObservingWithNotificationQueue_notificationBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  [objc_opt_class() retrieveSIMUnlockStateFromToken:a2];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_endObservingState
{
  if (notify_is_valid_token([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]))
  {
    notify_cancel([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]);
  }

  [(BYTelephonyStateNotifier *)self setSimUnlockNotificationToken:0xFFFFFFFFLL];
}

+ (unint64_t)retrieveSIMUnlockStateFromToken:(int)a3
{
  if (!notify_is_valid_token(a3))
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier retrieveSIMUnlockStateFromToken:v5];
    }

    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[BYTelephonyStateNotifier retrieveSIMUnlockStateFromToken:];
    }

    return 0;
  }

  return state64;
}

- (void)initForNotifying
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to register for the SIM unlock state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifySIMUnlockStateChangedTo:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to update SIM unlock state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifySIMUnlockStateChangedTo:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to post SIM unlock state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)retrieveSIMUnlockStateFromToken:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_4(&dword_1B862F000, v0, v1, "Failed to get the state of the SIM unlock state notification: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end