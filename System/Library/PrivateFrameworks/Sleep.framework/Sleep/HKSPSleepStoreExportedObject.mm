@interface HKSPSleepStoreExportedObject
- (HKSPSleepStore)sleepStore;
- (void)clientShouldCheckInWithCompletion:(id)completion;
- (void)getClientIdentifierWithCompletion:(id)completion;
- (void)sleepEventOccurred:(id)occurred;
- (void)sleepEventRecordChanged:(id)changed clientIdentifier:(id)identifier;
- (void)sleepModeChanged:(id)changed;
- (void)sleepScheduleChanged:(id)changed clientIdentifier:(id)identifier;
- (void)sleepScheduleStateChanged:(id)changed;
- (void)sleepSettingsChanged:(id)changed clientIdentifier:(id)identifier;
@end

@implementation HKSPSleepStoreExportedObject

- (HKSPSleepStore)sleepStore
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepStore);

  return WeakRetained;
}

- (void)getClientIdentifierWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  clientIdentifier = [sleepStore clientIdentifier];

  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    loggingIdentifier = [clientIdentifier loggingIdentifier];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = loggingIdentifier;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] responding with client identifier: %{public}@", &v12, 0x16u);
  }

  completionCopy[2](completionCopy, clientIdentifier, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)clientShouldCheckInWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
    syncAnchorContainer = [sleepStore syncAnchorContainer];
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = syncAnchorContainer;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] responding with container: %{public}@", &v13, 0x16u);
  }

  sleepStore2 = [(HKSPSleepStoreExportedObject *)self sleepStore];
  syncAnchorContainer2 = [sleepStore2 syncAnchorContainer];
  completionCopy[2](completionCopy, syncAnchorContainer2, 0);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleChanged:(id)changed clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  changedCopy = changed;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForChangedSleepSchedule:changedCopy clientIdentifier:identifierCopy];
}

- (void)sleepSettingsChanged:(id)changed clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  changedCopy = changed;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForChangedSleepSettings:changedCopy clientIdentifier:identifierCopy];
}

- (void)sleepEventRecordChanged:(id)changed clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  changedCopy = changed;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForChangedSleepEventRecord:changedCopy clientIdentifier:identifierCopy];
}

- (void)sleepEventOccurred:(id)occurred
{
  occurredCopy = occurred;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForSleepEvent:occurredCopy];
}

- (void)sleepScheduleStateChanged:(id)changed
{
  changedCopy = changed;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForChangedSleepScheduleState:changedCopy];
}

- (void)sleepModeChanged:(id)changed
{
  changedCopy = changed;
  sleepStore = [(HKSPSleepStoreExportedObject *)self sleepStore];
  [sleepStore _updateAndNotifyForChangedSleepMode:changedCopy];
}

@end