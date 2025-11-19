@interface SBIdleTimerGlobalNumericSettingMonitor
@end

@implementation SBIdleTimerGlobalNumericSettingMonitor

void __59___SBIdleTimerGlobalNumericSettingMonitor__settingChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _updateCache])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 40) name];
    v4 = [*(a1 + 32) label];
    v5 = [v2 stringWithFormat:@"%@:%@", v3, v4];

    v6 = SBLogIdleTimer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [*(a1 + 32) formattedValue];
      *buf = 138412802;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%@ _settingChanged:] - reason: %{public}@, setting: %{public}@", buf, 0x20u);
    }

    v10 = [*(a1 + 32) delegate];
    [v10 idleTimerGlobalSettingMonitor:*(a1 + 32) changedForReason:v5];
  }
}

@end