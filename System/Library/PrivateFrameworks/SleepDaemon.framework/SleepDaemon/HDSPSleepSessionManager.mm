@interface HDSPSleepSessionManager
- (HDSPSleepSessionManager)initWithEnvironment:(id)environment;
- (HDSPSleepSessionManager)initWithEnvironment:(id)environment persistence:(id)persistence;
- (HDSPSleepSessionManagerDelegate)delegate;
- (id)_unprocessedSessions;
- (id)saveSession:(id)session;
- (void)_locked_savePendingSessions;
- (void)_waitForFirstUnlock;
- (void)_withLock:(id)lock;
- (void)archiveSession:(id)session;
- (void)deviceHasBeenUnlocked;
- (void)removeSessionDataFile;
- (void)savePendingSessions;
- (void)sleepTracker:(id)tracker didEndSession:(id)session reason:(unint64_t)reason;
- (void)startSession;
- (void)stopSession;
@end

@implementation HDSPSleepSessionManager

- (HDSPSleepSessionManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  healthStoreProvider = [environmentCopy healthStoreProvider];
  sleepHealthStore = [healthStoreProvider sleepHealthStore];
  v7 = [(HDSPSleepSessionManager *)self initWithEnvironment:environmentCopy persistence:sleepHealthStore];

  return v7;
}

- (HDSPSleepSessionManager)initWithEnvironment:(id)environment persistence:(id)persistence
{
  environmentCopy = environment;
  persistenceCopy = persistence;
  v17.receiver = self;
  v17.super_class = HDSPSleepSessionManager;
  v8 = [(HDSPSleepSessionManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionLock._os_unfair_lock_opaque = 0;
    systemMonitor = [environmentCopy systemMonitor];
    deviceUnlockMonitor = [systemMonitor deviceUnlockMonitor];
    deviceUnlockManager = v9->_deviceUnlockManager;
    v9->_deviceUnlockManager = deviceUnlockMonitor;

    fileManager = [environmentCopy fileManager];
    fileManager = v9->_fileManager;
    v9->_fileManager = fileManager;

    objc_storeStrong(&v9->_persistence, persistence);
    v15 = v9;
  }

  return v9;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_sessionLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_sessionLock);
}

- (void)startSession
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting session", &v6, 0xCu);
  }

  [(HDSPSleepSessionPersistence *)self->_persistence hdsp_startSession];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSession
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopping session", &v9, 0xCu);
  }

  [(HDSPSleepSessionPersistence *)self->_persistence hdsp_stopSession];
  delegate = [(HDSPSleepSessionManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HDSPSleepSessionManager *)self delegate];
    [delegate2 sleepSessionManagerDidFinishSession:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)savePendingSessions
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__HDSPSleepSessionManager_savePendingSessions__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(HDSPSleepSessionManager *)self _withLock:v2];
}

void __46__HDSPSleepSessionManager_savePendingSessions__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _hasUnprocessedSessions];
  v3 = HKSPLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v19 = 138543362;
      v20 = objc_opt_class();
      v6 = v20;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] there are unprocessed sessions to save", &v19, 0xCu);
    }

    v7 = [*(*(a1 + 32) + 32) hasBeenUnlockedSinceBoot];
    v8 = HKSPLogForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = objc_opt_class();
        v19 = 138543362;
        v20 = v11;
        v12 = v11;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] can write session data", &v19, 0xCu);
      }

      [*(a1 + 32) _locked_savePendingSessions];
    }

    else
    {
      if (v9)
      {
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v19 = 138543362;
        v20 = v16;
        v17 = v16;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] can't write sessions until first unlock", &v19, 0xCu);
      }

      [*(a1 + 32) _waitForFirstUnlock];
    }
  }

  else
  {
    if (v4)
    {
      v13 = *(a1 + 32);
      v19 = 138543362;
      v20 = objc_opt_class();
      v14 = v20;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] no unprocessed sessions to save", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_waitForFirstUnlock
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] waiting for first unlock", &v6, 0xCu);
  }

  [(HDSPDeviceUnlockMonitor *)self->_deviceUnlockManager addObserver:self];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_locked_savePendingSessions
{
  v17 = *MEMORY[0x277D85DE8];
  _unprocessedSessions = [(HDSPSleepSessionManager *)self _unprocessedSessions];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    *buf = 138543618;
    v14 = v5;
    v15 = 2048;
    v16 = [_unprocessedSessions count];
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] %ld unprocessed sessions", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke;
  v12[3] = &unk_279C7B768;
  v12[4] = self;
  v7 = [_unprocessedSessions na_map:v12];
  v8 = [MEMORY[0x277D2C900] combineAllFutures:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke_2;
  v11[3] = &unk_279C7B7B8;
  v11[4] = self;
  v9 = [v8 addSuccessBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

id __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 requiresFirstUnlock] && (objc_msgSend(*(a1 + 32), "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [*(a1 + 32) delegate];
    v7 = [v6 sleepSessionManager:*(a1 + 32) requestsProcessedSessionForSession:v3];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  return v7;
}

void __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = v6;
    *buf = 138543618;
    v19 = v6;
    v20 = 2048;
    v21 = [v3 count];
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] %ld processed sessions", buf, 0x16u);
  }

  if ([v3 count])
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [*(*(a1 + 32) + 24) hdsp_persistSessions:v3];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke_304;
    v14[3] = &unk_279C7B790;
    v10 = *(a1 + 32);
    v15 = v8;
    v16 = v10;
    v17 = v3;
    v11 = v8;
    v12 = [v9 addCompletionBlock:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HDSPSleepSessionManager__locked_savePendingSessions__block_invoke_304(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) sleepSessionManager:*(a1 + 40) didSaveArchivedSessions:*(a1 + 48)];
  }

  v3 = *(a1 + 40);

  return [v3 removeSessionDataFile];
}

- (id)_unprocessedSessions
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ([(HDSPSleepSessionManager *)self _hasUnprocessedSessions]&& [(HDSPSleepSessionManager *)self _hasUnprocessedSessions])
  {
    v3 = [(HKSPFileManager *)self->_fileManager hkspDataForCacheFileWithName:@"SleepSessions.data"];
    if (v3)
    {
      v17 = 0;
      v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v17];
      v5 = v17;
      if (v5)
      {
        v6 = HKSPLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          *buf = 138543618;
          v19 = v14;
          v20 = 2114;
          v21 = v5;
          v15 = v14;
          _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] unarchiving failed with error %{public}@", buf, 0x16u);
        }

        [(HDSPSleepSessionManager *)self removeSessionDataFile];
        v7 = 0;
      }

      else
      {
        v9 = MEMORY[0x277CBEB98];
        v22[0] = objc_opt_class();
        v22[1] = objc_opt_class();
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
        v11 = [v9 setWithArray:v10];

        v7 = [v4 decodeObjectOfClasses:v11 forKey:@"HDSPUnprocessedSessions"];

        [v4 finishDecoding];
      }
    }

    else
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2114;
        v21 = @"SleepSessions.data";
        v16 = v19;
        _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] no data found in file %{public}@", buf, 0x16u);
      }

      [(HDSPSleepSessionManager *)self removeSessionDataFile];
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)archiveSession:(id)session
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (sessionCopy)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = sessionCopy;
      v6 = v24;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] archiveSession: %{public}@", buf, 0x16u);
    }

    _unprocessedSessions = [(HDSPSleepSessionManager *)self _unprocessedSessions];
    v8 = _unprocessedSessions;
    if (_unprocessedSessions)
    {
      v9 = [_unprocessedSessions mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v10 = v9;
    [v9 addObject:sessionCopy];
    v11 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v11 encodeObject:v10 forKey:@"HDSPUnprocessedSessions"];
    [v11 finishEncoding];
    encodedData = [v11 encodedData];
    fileManager = self->_fileManager;
    v22 = 0;
    v14 = [(HKSPFileManager *)fileManager hkspWriteData:encodedData toCacheFileWithName:@"SleepSessions.data" error:&v22];
    v15 = v22;
    v16 = HKSPLogForCategory();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v15;
        v19 = v18;
        _os_log_error_impl(&dword_269B11000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] failed to write sessions file with error %{public}@", buf, 0x16u);
LABEL_12:
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = @"SleepSessions.data";
      v19 = v20;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] wrote sessions to file %{public}@", buf, 0x16u);
      goto LABEL_12;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)saveSession:(id)session
{
  v34 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = objc_opt_class();
    v32 = 2114;
    v33 = sessionCopy;
    v6 = v31;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveSession %{public}@", buf, 0x16u);
  }

  sleepIntervals = [sessionCopy sleepIntervals];
  if ([sleepIntervals count])
  {
  }

  else
  {
    requiresFirstUnlock = [sessionCopy requiresFirstUnlock];

    if ((requiresFirstUnlock & 1) == 0)
    {
      v23 = HKSPLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        *buf = 138543362;
        v31 = v24;
        v25 = v24;
        _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] session has nothing to write", buf, 0xCu);
      }

      delegate = [(HDSPSleepSessionManager *)self delegate];
      [delegate sleepSessionManager:self didSaveSession:sessionCopy];

      goto LABEL_22;
    }
  }

  if (![(HDSPDeviceUnlockMonitor *)self->_deviceUnlockManager hasBeenUnlockedSinceBoot])
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543362;
      v31 = v17;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] archiving session for now", buf, 0xCu);
    }

    [(HDSPSleepSessionManager *)self archiveSession:sessionCopy];
    [(HDSPSleepSessionManager *)self _waitForFirstUnlock];
LABEL_22:
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_23;
  }

  if ([sessionCopy requiresFirstUnlock] && (-[HDSPSleepSessionManager delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543362;
      v31 = v12;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] session needs additional processing", buf, 0xCu);
    }

    delegate2 = [(HDSPSleepSessionManager *)self delegate];
    v15 = [delegate2 sleepSessionManager:self requestsProcessedSessionForSession:sessionCopy];
  }

  else
  {
    v19 = HKSPLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 138543362;
      v31 = v20;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] session is ready to write", buf, 0xCu);
    }

    v15 = [MEMORY[0x277D2C900] futureWithResult:sessionCopy];
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__HDSPSleepSessionManager_saveSession___block_invoke;
  v29[3] = &unk_279C7B808;
  v29[4] = self;
  futureWithNoResult = [v15 flatMap:v29];

LABEL_23:
  v27 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

id __39__HDSPSleepSessionManager_saveSession___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v3;
    v6 = v18;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] saving processed session %{public}@", buf, 0x16u);
  }

  v7 = *(*(a1 + 32) + 24);
  v16 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v9 = [v7 hdsp_persistSessions:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__HDSPSleepSessionManager_saveSession___block_invoke_315;
  v14[3] = &unk_279C7B7E0;
  v14[4] = *(a1 + 32);
  v15 = v3;
  v10 = v3;
  v11 = [v9 addSuccessBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __39__HDSPSleepSessionManager_saveSession___block_invoke_315(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sleepSessionManager:*(a1 + 32) didSaveSession:*(a1 + 40)];
}

- (void)removeSessionDataFile
{
  v14 = *MEMORY[0x277D85DE8];
  fileManager = self->_fileManager;
  v9 = 0;
  v3 = [(HKSPFileManager *)fileManager hkspRemoveFileWithNameFromCache:@"SleepSessions.data" error:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to remove session data file error %{public}@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceHasBeenUnlocked
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] deviceHasBeenUnlocked", &v6, 0xCu);
  }

  [(HDSPDeviceUnlockMonitor *)self->_deviceUnlockManager removeObserver:self];
  [(HDSPSleepSessionManager *)self savePendingSessions];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepTracker:(id)tracker didEndSession:(id)session reason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  sessionCopy = session;
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = sessionCopy;
    v19 = 2114;
    v20 = trackerCopy;
    v10 = v16;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] saving session %{public}@ from %{public}@", buf, 0x20u);
  }

  v11 = [(HDSPSleepSessionManager *)self saveSession:sessionCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDSPSleepSessionManager_sleepTracker_didEndSession_reason___block_invoke;
  v14[3] = &unk_279C7B830;
  v14[4] = self;
  v12 = [v11 addCompletionBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (HDSPSleepSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end