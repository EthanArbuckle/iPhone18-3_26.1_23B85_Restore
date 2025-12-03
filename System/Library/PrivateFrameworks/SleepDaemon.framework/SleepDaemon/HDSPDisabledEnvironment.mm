@interface HDSPDisabledEnvironment
- (HDSPDisabledEnvironment)init;
- (void)prepare;
@end

@implementation HDSPDisabledEnvironment

- (HDSPDisabledEnvironment)init
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = HKSPCurrentDateProvider();
  v5 = HKSPUnfairLockGenerator();
  v8.receiver = self;
  v8.super_class = HDSPDisabledEnvironment;
  v6 = [(HDSPEnvironment *)&v8 initWithBehavior:mEMORY[0x277CCDD30] sleepStorageProvider:0 sleepScheduleModelManagerProvider:0 sleepSchedulerProvider:0 sleepServerProvider:&__block_literal_global_20 sleepCoordinatorProvider:0 sleepModeManagerProvider:0 sleepTrackingManagerProvider:0 goodMorningAlertManagerProvider:0 chargingReminderManagerProvider:0 wakeDetectionManagerProvider:0 wakeUpResultsNotificationManagerProvider:0 actionManagerProvider:0 sleepAlarmManagerProvider:0 healthStoreProvider:0 contextStoreManagerProvider:0 biomeManagerProvider:&__block_literal_global_299_1 migrationManagerProvider:0 notificationManagerProvider:0 notificationListenerProvider:&__block_literal_global_303_0 sleepLockScreenManagerProvider:0 sleepWidgetManagerProvider:0 idsServiceManagerProvider:0 diagnosticsProvider:0 systemMonitorProvider:0 assertionManager:0 timeChangeListenerProvider:0 sensitiveUIMonitorProvider:0 analyticsManagerProvider:0 userDefaults:0 fileManager:0 currentDateProvider:v4 defaultCallbackScheduler:0 mutexGenerator:v5];

  return v6;
}

HDSPSleepStoreServer *__31__HDSPDisabledEnvironment_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepStoreServer alloc] initWithEnvironment:v2];

  return v3;
}

HDSPBiomeManager *__31__HDSPDisabledEnvironment_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPBiomeManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPNotificationListener *__31__HDSPDisabledEnvironment_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPNotificationListener alloc] initWithEnvironment:v2];

  return v3;
}

- (void)prepare
{
  biomeManager = [(HDSPEnvironment *)self biomeManager];
  v4 = +[HDSPBiomeManager sleepModePublisher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HDSPDisabledEnvironment_prepare__block_invoke;
  v6[3] = &unk_279C7CAF0;
  v6[4] = self;
  v5 = [biomeManager subscribe:v4 callback:v6];

  [(HDSPEnvironment *)self environmentDidBecomeReady];
}

void __34__HDSPDisabledEnvironment_prepare__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] dropping Biome callback", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end