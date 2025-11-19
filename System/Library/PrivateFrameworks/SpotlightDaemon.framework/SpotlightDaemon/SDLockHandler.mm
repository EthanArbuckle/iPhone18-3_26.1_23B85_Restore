@interface SDLockHandler
+ (void)setLockHandlerWithDelegate:(id)a3 options:(unint64_t)a4;
- (BOOL)unlocked;
- (SDLockHandler)initWithDelegate:(id)a3 options:(unint64_t)a4;
- (void)checkMigrationComplete;
- (void)handleFirstUnlock;
- (void)handleFirstUnlockHomeScreen;
- (void)handleFirstUnlockInSpringBoard;
- (void)handleMigrationComplete;
- (void)start;
@end

@implementation SDLockHandler

- (BOOL)unlocked
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MKBGetDeviceLockState();
  v3 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (v2 > 7)
    {
      v4 = "unknown";
    }

    else
    {
      v4 = getMobileKeyBagStateCStr_sKeyBagStates[v2];
    }

    v9[0] = 67109378;
    v9[1] = v2;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_INFO, "[LOCK] MKBGetDeviceLockState returned ret:%d %s", v9, 0x12u);
  }

  v6 = v2 == 3 || v2 == 0;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)handleFirstUnlock
{
  if ((atomic_exchange(&self->_didFirstUnlockSinceBoot, 1u) & 1) == 0)
  {
    v2 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] device unlocked since boot", v3, 2u);
    }
  }
}

- (void)checkMigrationComplete
{
  v2 = atomic_load(&self->_didMigrationComplete);
  if ((v2 & 1) == 0 && _getDeviceMigrationComplete())
  {

    [(SDLockHandler *)self handleMigrationComplete];
  }
}

+ (void)setLockHandlerWithDelegate:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SDLockHandler_setLockHandlerWithDelegate_options___block_invoke;
  v8[3] = &unk_2789343B0;
  v9 = v5;
  v10 = a4;
  v6 = setLockHandlerWithDelegate_options__onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    dispatch_once(&setLockHandlerWithDelegate_options__onceToken, v8);
  }
}

uint64_t __52__SDLockHandler_setLockHandlerWithDelegate_options___block_invoke(uint64_t a1)
{
  sSDLockHandler = [[SDLockHandler alloc] initWithDelegate:*(a1 + 32) options:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)handleMigrationComplete
{
  if ((atomic_exchange(&self->_didMigrationComplete, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] Migration Complete", buf, 2u);
    }

    v4 = [(SDLockHandlerDelegate *)self->_delegate indexQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SDLockHandler_handleMigrationComplete__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    dispatch_async(v4, block);

    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SDLockHandler_handleMigrationComplete__block_invoke_2;
    v6[3] = &unk_278934050;
    v6[4] = self;
    dispatch_async(notificationQueue, v6);
  }
}

uint64_t __40__SDLockHandler_handleMigrationComplete__block_invoke_2(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 44) != -1)
  {
    v1 = result;
    v2 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 44);
      v5[0] = 67109378;
      v5[1] = v3;
      v6 = 2080;
      v7 = "com.apple.springboard.homescreenunlocked";
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] cancel token %d %s", v5, 0x12u);
    }

    result = notify_cancel(*(*(v1 + 32) + 44));
    *(*(v1 + 32) + 44) = -1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleFirstUnlockHomeScreen
{
  if ((atomic_exchange(&self->_didFirstUnlockInHomeScreen, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] Home Screen first unlock", v4, 2u);
    }

    [(SDLockHandler *)self handleMigrationComplete];
  }
}

- (void)handleFirstUnlockInSpringBoard
{
  v3 = atomic_load(&self->_didMigrationComplete);
  if ((v3 & 1) == 0)
  {
    if (!_getDeviceMigrationComplete())
    {
      return;
    }

    [(SDLockHandler *)self handleMigrationComplete];
  }

  if ((atomic_exchange(&self->_didFirstUnlockInSpringBoard, 1u) & 1) == 0)
  {
    v4 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[LOCK] SpringBoard first unlock", buf, 2u);
    }

    v5 = [(SDLockHandlerDelegate *)self->_delegate indexQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) firstUnlockSBCompleted];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke_2;
  block[3] = &unk_278934050;
  block[4] = v2;
  dispatch_async(v3, block);
}

uint64_t __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke_2(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 48) != -1)
  {
    v1 = result;
    v2 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 48);
      v4 = *MEMORY[0x277D67770];
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2080;
      v8 = v4;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] cancel token %d %s", v6, 0x12u);
    }

    result = notify_cancel(*(*(v1 + 32) + 48));
    *(*(v1 + 32) + 48) = -1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (SDLockHandler)initWithDelegate:(id)a3 options:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v49.receiver = self;
  v49.super_class = SDLockHandler;
  v8 = [(SDLockHandler *)&v49 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a3);
    *&v9->_notifyTokenKeybagLockStateNotifyToken = -1;
    v9->_options = a4;
    v9->_notifyTokenSBLockState = -1;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_initially_inactive(v10);
    v12 = dispatch_queue_create("com.apple.spotlight.locknotification", v11);
    notificationQueue = v9->_notificationQueue;
    v9->_notificationQueue = v12;

    if (MKBDeviceUnlockedSinceBoot() || MKBGetDeviceLockState() == 3)
    {
      [(SDLockHandler *)v9 handleFirstUnlock];
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = MEMORY[0x277D67770];
    if (v9->_options & 5) != 0 || (_getDeviceMigrationComplete())
    {
      [(SDLockHandler *)v9 handleMigrationComplete];
      v16 = *v15;
      if ((v14 & 1) != 0 || (out_token = -1, state64 = -1, notify_register_check(v16, &out_token)))
      {
        v17 = 0;
      }

      else
      {
        check = 0;
        if (!notify_check(out_token, &check) && check && !notify_get_state(out_token, &state64))
        {
          v18 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            v54 = out_token;
            v55 = 2080;
            v56 = v16;
            v57 = 2048;
            v58 = state64;
            _os_log_impl(&dword_231A35000, v18, OS_LOG_TYPE_DEFAULT, "[LOCK] check %d %s %lu", buf, 0x1Cu);
          }
        }

        notify_cancel(out_token);
        v17 = 0;
        v19 = 0;
        if (!state64)
        {
LABEL_32:
          v31 = v9->_notificationQueue;
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_8;
          v43[3] = &unk_2789343D8;
          v32 = v9;
          v44 = v32;
          v33 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v9->_notifyTokenKeybagLockStateNotifyToken, v31, v43);
          v34 = logForCSLogCategoryIndex();
          v35 = v34;
          if (v33)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [SDLockHandler initWithDelegate:options:];
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            notifyTokenKeybagLockStateNotifyToken = v9->_notifyTokenKeybagLockStateNotifyToken;
            *buf = 67109378;
            v54 = notifyTokenKeybagLockStateNotifyToken;
            v55 = 2080;
            v56 = "com.apple.mobile.keybagd.lock_status";
            _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
          }

          v37 = v9->_notificationQueue;
          v38 = v32;
          v39 = AKSEventsRegister();
          v38->_aksEvent = v39;
          if (v39)
          {
            if (v19)
            {
LABEL_40:

              goto LABEL_41;
            }
          }

          else
          {
            v42 = logForCSLogCategoryIndex();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              [SDLockHandler initWithDelegate:v42 options:?];
            }

            if (v19)
            {
              goto LABEL_40;
            }
          }

          [(SDLockHandler *)v38 handleFirstUnlockInSpringBoard];
          goto LABEL_40;
        }
      }
    }

    else
    {
      v16 = *v15;
      v17 = 1;
    }

    v20 = v9->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke;
    handler[3] = &unk_2789343D8;
    v21 = v9;
    v48 = v21;
    v22 = notify_register_dispatch(v16, &v9->_notifyTokenSBLockState, v20, handler);
    v23 = logForCSLogCategoryIndex();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(SDLockHandler *)v16 initWithDelegate:v22 options:v24];
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      notifyTokenSBLockState = v9->_notifyTokenSBLockState;
      *buf = 67109378;
      v54 = notifyTokenSBLockState;
      v55 = 2080;
      v56 = v16;
      _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
    }

    if (v17)
    {
      v26 = v9->_notificationQueue;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_6;
      v45[3] = &unk_2789343D8;
      v46 = v21;
      v27 = notify_register_dispatch("com.apple.springboard.homescreenunlocked", &v9->_notifyTokenSBHomescreenUnlocked, v26, v45);
      v28 = logForCSLogCategoryIndex();
      v29 = v28;
      if (v27)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [SDLockHandler initWithDelegate:options:];
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        notifyTokenSBHomescreenUnlocked = v9->_notifyTokenSBHomescreenUnlocked;
        *buf = 67109378;
        v54 = notifyTokenSBHomescreenUnlocked;
        v55 = 2080;
        v56 = "com.apple.springboard.homescreenunlocked";
        _os_log_impl(&dword_231A35000, v29, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
      }
    }

    v19 = 1;
    goto LABEL_32;
  }

LABEL_41:

  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke(uint64_t a1, int token)
{
  v19 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = state;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SDLockHandler_initWithDelegate_options___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    v12 = state64;
    v13 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "NO";
      if (!v12)
      {
        v14 = "YES";
      }

      *buf = 136315138;
      v18 = v14;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "[LOCK] SpringBoard unlocked: %s", buf, 0xCu);
    }

    if (!v12)
    {
      [*(a1 + 32) handleFirstUnlockInSpringBoard];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_6(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  if (notify_get_state(token, &state64))
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__SDLockHandler_initWithDelegate_options___block_invoke_6_cold_1();
    }
  }

  else
  {
    v4 = state64;
    v5 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      if (v4 == 1)
      {
        v6 = "YES";
      }

      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "[LOCK] Home Screen: %s", buf, 0xCu);
    }

    if (v4 == 1)
    {
      [*(a1 + 32) handleFirstUnlockHomeScreen];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_8(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24 = @"ExtendedDeviceLockState";
  v25[0] = *MEMORY[0x277CBED28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v3 = MKBGetDeviceLockState();
  v4 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 7)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = getMobileKeyBagStateCStr_sKeyBagStates[v3];
    }

    *buf = 67109378;
    v21 = v3;
    v22 = 2080;
    v23 = v5;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[LOCK] Device state changed: %d %s", buf, 0x12u);
  }

  if (v3 > 7 || ((1 << v3) & 0xC9) == 0)
  {
    v7 = 0;
  }

  else
  {
    [*(a1 + 32) handleFirstUnlock];
    v7 = 1;
  }

  v8 = qos_class_self();
  v9 = dispatch_get_global_queue(v8, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_11;
  block[3] = &unk_278934400;
  v18 = *(a1 + 32);
  v19 = v7;
  dispatch_async(v9, block);

  v10 = [*(*(a1 + 32) + 8) indexQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_2;
  v13[3] = &unk_278934428;
  v14 = v2;
  v16 = v3;
  v15 = *(a1 + 32);
  v11 = v2;
  dispatch_async(v10, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MKBGetDeviceLockState();
  v4 = *(a1 + 48);
  v5 = logForCSLogCategoryIndex();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    if (v3 > 7)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = getMobileKeyBagStateCStr_sKeyBagStates[v3];
    }

    v15 = 67109378;
    v16 = v3;
    v17 = 2080;
    *v18 = v7;
    v10 = "[LOCK] Device state %d %s";
    v11 = v5;
    v12 = 18;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    v8 = *(a1 + 48);
    if (v8 > 7)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = getMobileKeyBagStateCStr_sKeyBagStates[v8];
    }

    if (v3 > 7)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = getMobileKeyBagStateCStr_sKeyBagStates[v3];
    }

    v15 = 67109890;
    v16 = v8;
    v17 = 1024;
    *v18 = v3;
    *&v18[4] = 2080;
    *&v18[6] = v9;
    v19 = 2080;
    v20 = v13;
    v10 = "[LOCK] Device state:(%d/%d) (%s/%s)";
    v11 = v5;
    v12 = 34;
  }

  _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
LABEL_16:

  if (v3 <= 7)
  {
    if (((1 << v3) & 0xC9) != 0)
    {
      [*(*(a1 + 40) + 8) unlocked];
    }

    else if (v3 == 1)
    {
      [*(*(a1 + 40) + 8) locked];
    }

    else if (v3 == 2)
    {
      [*(*(a1 + 40) + 8) locking];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_12(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2 == 1)
  {
    value[5] = v3;
    value[6] = v4;
    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CEE040], value))
    {
      v7 = CFGetTypeID(value[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          v8 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "Received Cx expiring notification", buf, 2u);
          }

          [*(*(a1 + 32) + 8) lockingCx];
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CEE038], value))
    {
      v9 = CFGetTypeID(value[0]);
      if (v9 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          [*(*(a1 + 32) + 8) lockedCx];
          v10 = logForCSLogCategoryIndex();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_DEFAULT, "Received Cx expired notification", v11, 2u);
          }
        }
      }
    }
  }
}

- (void)start
{
  if ((atomic_exchange(&self->_didStart, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] handler started", v4, 2u);
    }

    dispatch_activate(self->_notificationQueue);
  }
}

- (void)initWithDelegate:(os_log_t)log options:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "Error %u setting up notification handler for %s", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:options:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_231A35000, v0, v1, "Error %u setting up notification handler for %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:options:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_231A35000, v0, v1, "Error %u setting up notification handler for %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D67770];
  OUTLINED_FUNCTION_1_1(&dword_231A35000, a2, a3, "Error %u getting state for %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_231A35000, v0, v1, "Error %u getting state for %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end