@interface HKSleepHealthStore(HDSPSleep)
- (id)hdsp_persistSessions:()HDSPSleep;
- (uint64_t)hdsp_startSession;
- (uint64_t)hdsp_stopSession;
@end

@implementation HKSleepHealthStore(HDSPSleep)

- (uint64_t)hdsp_startSession
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v3 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting session", &v6, 0xCu);
  }

  result = [self startSleepTrackingSession];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)hdsp_stopSession
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v3 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopping session", &v6, 0xCu);
  }

  result = [self stopSleepTrackingSession];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)hdsp_persistSessions:()HDSPSleep
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  scheduler = [self scheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HKSleepHealthStore_HDSPSleep__hdsp_persistSessions___block_invoke;
  v12[3] = &unk_279C7C050;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [scheduler performBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

@end