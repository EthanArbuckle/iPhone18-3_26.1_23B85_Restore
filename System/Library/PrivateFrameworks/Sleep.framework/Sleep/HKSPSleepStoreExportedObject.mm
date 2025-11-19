@interface HKSPSleepStoreExportedObject
- (HKSPSleepStore)sleepStore;
- (void)clientShouldCheckInWithCompletion:(id)a3;
- (void)getClientIdentifierWithCompletion:(id)a3;
- (void)sleepEventOccurred:(id)a3;
- (void)sleepEventRecordChanged:(id)a3 clientIdentifier:(id)a4;
- (void)sleepModeChanged:(id)a3;
- (void)sleepScheduleChanged:(id)a3 clientIdentifier:(id)a4;
- (void)sleepScheduleStateChanged:(id)a3;
- (void)sleepSettingsChanged:(id)a3 clientIdentifier:(id)a4;
@end

@implementation HKSPSleepStoreExportedObject

- (HKSPSleepStore)sleepStore
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepStore);

  return WeakRetained;
}

- (void)getClientIdentifierWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  v6 = [v5 clientIdentifier];

  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 loggingIdentifier];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] responding with client identifier: %{public}@", &v12, 0x16u);
  }

  v4[2](v4, v6, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)clientShouldCheckInWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(HKSPSleepStoreExportedObject *)self sleepStore];
    v9 = [v8 syncAnchorContainer];
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] responding with container: %{public}@", &v13, 0x16u);
  }

  v10 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  v11 = [v10 syncAnchorContainer];
  v4[2](v4, v11, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleChanged:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v8 _updateAndNotifyForChangedSleepSchedule:v7 clientIdentifier:v6];
}

- (void)sleepSettingsChanged:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v8 _updateAndNotifyForChangedSleepSettings:v7 clientIdentifier:v6];
}

- (void)sleepEventRecordChanged:(id)a3 clientIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v8 _updateAndNotifyForChangedSleepEventRecord:v7 clientIdentifier:v6];
}

- (void)sleepEventOccurred:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v5 _updateAndNotifyForSleepEvent:v4];
}

- (void)sleepScheduleStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v5 _updateAndNotifyForChangedSleepScheduleState:v4];
}

- (void)sleepModeChanged:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [v5 _updateAndNotifyForChangedSleepMode:v4];
}

@end