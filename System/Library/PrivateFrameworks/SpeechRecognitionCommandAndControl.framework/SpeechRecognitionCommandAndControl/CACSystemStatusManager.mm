@interface CACSystemStatusManager
+ (id)sharedManager;
- (CACSystemStatusManager)init;
@end

@implementation CACSystemStatusManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[CACSystemStatusManager sharedManager];
  }

  v3 = sharedManager_sSharedManager;

  return v3;
}

uint64_t __39__CACSystemStatusManager_sharedManager__block_invoke()
{
  sharedManager_sSharedManager = objc_alloc_init(CACSystemStatusManager);

  return MEMORY[0x2821F96F8]();
}

- (CACSystemStatusManager)init
{
  v14.receiver = self;
  v14.super_class = CACSystemStatusManager;
  v2 = [(CACSystemStatusManager *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = *MEMORY[0x277D76B90];
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__CACSystemStatusManager_init__block_invoke;
    v11[3] = &unk_279CEC728;
    objc_copyWeak(&v12, &location);
    LODWORD(v3) = notify_register_dispatch(v3, &_notificationToken, v4, v11);

    if (v3)
    {
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      _CACAssertionFailed("/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCommandAndControl/CommandAndControlFramework/SpokenCommandManager/CACSystemStatusManager.m", 52, "[CACSystemStatusManager init]", callStackSymbols, @"Could not register for dictation notifications", v7, v8, v9, v11[0]);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__CACSystemStatusManager_init__block_invoke(uint64_t a1)
{
  v2 = CACLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__CACSystemStatusManager_init__block_invoke_cold_1(v2);
  }

  state64 = 0;
  notify_get_state(_notificationToken, &state64);
  v3 = CACLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __30__CACSystemStatusManager_init__block_invoke_cold_2(&state64, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _systemDictationStatusDidChange:state64 == 1];
}

void __30__CACSystemStatusManager_init__block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = _notificationToken;
  _os_log_debug_impl(&dword_26B354000, log, OS_LOG_TYPE_DEBUG, "notifyd Keyboard Dictation TOKEN %i", v1, 8u);
}

void __30__CACSystemStatusManager_init__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "notifyd Keyboard Dictation GETSTATE %llu", &v3, 0xCu);
}

@end