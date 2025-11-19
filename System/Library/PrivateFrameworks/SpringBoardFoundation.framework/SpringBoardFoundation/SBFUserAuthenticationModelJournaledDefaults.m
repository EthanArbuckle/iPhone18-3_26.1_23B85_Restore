@interface SBFUserAuthenticationModelJournaledDefaults
+ (id)_journaledDefaultsAndTypes;
- (BOOL)isPermanentlyBlocked;
- (BOOL)isTemporarilyBlocked;
- (SBFUserAuthenticationModelJournaledDefaults)init;
- (double)timeUntilUnblockedSinceReferenceDate;
- (id)_copyLockControllerDefaults;
- (id)_initWithJournalPath:(id)a3 securityDefaults:(id)a4 profileConnection:(id)a5;
- (id)updateLockControllerDefaultsWithBlock:(id)a3 journaled:(BOOL)a4;
- (void)_evaluatePendingWipe;
- (void)_loadLockControllerDefaults:(id)a3;
- (void)_loadLockControllerDefaultsJournalIfNecessary;
- (void)_persistentStateQueue_beginSpeculativeFailureCharge;
- (void)_persistentStateQueue_cancelSpeculativeFailureCharge;
- (void)_persistentStateQueue_clearBlockedState;
- (void)_persistentStateQueue_evaluatePendingWipe;
- (void)_persistentStateQueue_loadLockState;
- (void)_persistentStateQueue_unlockFailedWithError:(id)a3;
- (void)_persistentStateQueue_unlockSucceeded;
- (void)_updateLockControllerDefaultsJournal;
- (void)clearBlockedState;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailedWithError:(id)a3;
- (void)notePasscodeUnlockSucceeded;
- (void)performPasswordTest:(id)a3;
- (void)setDelegate:(id)a3;
- (void)synchronize;
- (void)test_reloadState;
@end

@implementation SBFUserAuthenticationModelJournaledDefaults

- (SBFUserAuthenticationModelJournaledDefaults)init
{
  v3 = [@"~/Library/SpringBoard/LockoutStateJournal.plist" stringByExpandingTildeInPath];
  v4 = objc_alloc_init(SBSecurityDefaults);
  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [(SBFUserAuthenticationModelJournaledDefaults *)self _initWithJournalPath:v3 securityDefaults:v4 profileConnection:v5];

  return v6;
}

- (id)_initWithJournalPath:(id)a3 securityDefaults:(id)a4 profileConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = SBFUserAuthenticationModelJournaledDefaults;
  v11 = [(SBFUserAuthenticationModelJournaledDefaults *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_securityDefaults, a4);
    objc_storeStrong(&v12->_profileConnection, a5);
    v13 = [v8 copy];
    journalPath = v12->_journalPath;
    v12->_journalPath = v13;

    Serial = BSDispatchQueueCreateSerial();
    persistentStateQueue = v12->_persistentStateQueue;
    v12->_persistentStateQueue = Serial;

    [(SBFUserAuthenticationModelJournaledDefaults *)v12 _loadLockControllerDefaultsJournalIfNecessary];
    v17 = v12->_persistentStateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__SBFUserAuthenticationModelJournaledDefaults__initWithJournalPath_securityDefaults_profileConnection___block_invoke;
    block[3] = &unk_1E807F178;
    v21 = v12;
    dispatch_async(v17, block);
    v18 = SBLogAuthenticationModel();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SBFUserAuthenticationModelJournaledDefaults _initWithJournalPath:v18 securityDefaults:? profileConnection:?];
    }
  }

  return v12;
}

- (void)synchronize
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode synchronize];
  }

  [(BSAbstractDefaultDomain *)self->_securityDefaults synchronizeDefaults];
}

- (void)notePasscodeEntryBegan
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeEntryBegan];
  }

  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SBFUserAuthenticationModelJournaledDefaults_notePasscodeEntryBegan__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(persistentStateQueue, block);
}

- (void)notePasscodeEntryCancelled
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeEntryCancelled];
  }

  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__SBFUserAuthenticationModelJournaledDefaults_notePasscodeEntryCancelled__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(persistentStateQueue, block);
}

- (void)notePasscodeUnlockSucceeded
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeUnlockSucceeded];
  }

  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SBFUserAuthenticationModelJournaledDefaults_notePasscodeUnlockSucceeded__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
  [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockStateMayHaveChangedForModel:self];
}

- (void)notePasscodeUnlockFailedWithError:(id)a3
{
  v4 = a3;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)v4 notePasscodeUnlockFailedWithError:v5];
  }

  persistentStateQueue = self->_persistentStateQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __81__SBFUserAuthenticationModelJournaledDefaults_notePasscodeUnlockFailedWithError___block_invoke;
  v11 = &unk_1E807F290;
  v12 = self;
  v13 = v4;
  v7 = v4;
  dispatch_async(persistentStateQueue, &v8);
  [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockStateMayHaveChangedForModel:self, v8, v9, v10, v11, v12];
}

- (void)performPasswordTest:(id)a3
{
  v4 = a3;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode performPasswordTest:];
  }

  persistentStateQueue = self->_persistentStateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__SBFUserAuthenticationModelJournaledDefaults_performPasswordTest___block_invoke;
  v8[3] = &unk_1E807F9B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(persistentStateQueue, v8);
}

- (void)clearBlockedState
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelSEP clearBlockedState];
  }

  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SBFUserAuthenticationModelJournaledDefaults_clearBlockedState__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(persistentStateQueue, block);
  [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockStateMayHaveChangedForModel:self];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    [(SBFUserAuthenticationModelJournaledDefaults *)self _evaluatePendingWipe];
  }
}

- (BOOL)isPermanentlyBlocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SBFUserAuthenticationModelJournaledDefaults_isPermanentlyBlocked__block_invoke;
  v5[3] = &unk_1E807F1F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isTemporarilyBlocked
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(SBFUserAuthenticationModelJournaledDefaults *)self timeUntilUnblockedSinceReferenceDate];
  return v4 < v5;
}

- (double)timeUntilUnblockedSinceReferenceDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  persistentStateQueue = self->_persistentStateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__SBFUserAuthenticationModelJournaledDefaults_timeUntilUnblockedSinceReferenceDate__block_invoke;
  v5[3] = &unk_1E807F1F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(persistentStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __83__SBFUserAuthenticationModelJournaledDefaults_timeUntilUnblockedSinceReferenceDate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_evaluatePendingWipe
{
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SBFUserAuthenticationModelJournaledDefaults__evaluatePendingWipe__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(persistentStateQueue, block);
}

- (void)_persistentStateQueue_beginSpeculativeFailureCharge
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"SBFUserAuthenticationModelJournaledDefaults.m" lineNumber:214 description:{@"We should not have rollback values when beginning a speculative failure charge, but we had %@", *a1}];
}

void __98__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_beginSpeculativeFailureCharge__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v2 setNumberOfFailedPasscodeAttempts:v3];

  v4 = *(a1 + 44);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x1E696AD98];
    if (v4 == -1)
    {
      v7 = [MEMORY[0x1E695DF00] distantFuture];
      [v7 timeIntervalSinceReferenceDate];
      v8 = [v6 numberWithDouble:?];
      [v5 setUnblockTimeFromReferenceDate:v8];

      [*(*(a1 + 32) + 16) setBlockedForPasscode:MEMORY[0x1E695E118]];
    }

    else
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v10 = [v6 numberWithDouble:v9 + *(a1 + 44)];
      [v5 setUnblockTimeFromReferenceDate:v10];
    }
  }

  if (*(a1 + 48) == 1)
  {
    v11 = *(*(a1 + 32) + 16);
    v12 = MEMORY[0x1E695E118];

    [v11 setPendingDeviceWipe:v12];
  }
}

- (void)_persistentStateQueue_cancelSpeculativeFailureCharge
{
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  if (self->_speculativePasscodeFailureChargeOutstanding)
  {
    self->_speculativePasscodeFailureChargeOutstanding = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __99__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_cancelSpeculativeFailureCharge__block_invoke;
    v5[3] = &unk_1E807F178;
    v5[4] = self;
    v3 = [(SBFUserAuthenticationModelJournaledDefaults *)self updateLockControllerDefaultsWithBlock:v5 journaled:0];
    originalDefaultsForRollback = self->_originalDefaultsForRollback;
    self->_originalDefaultsForRollback = 0;
  }
}

- (void)_persistentStateQueue_unlockSucceeded
{
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_cancelSpeculativeFailureCharge];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_unlockSucceeded__block_invoke;
  v4[3] = &unk_1E807F178;
  v4[4] = self;
  v3 = [(SBFUserAuthenticationModelJournaledDefaults *)self updateLockControllerDefaultsWithBlock:v4 journaled:0];
}

uint64_t __84__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_unlockSucceeded__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setNumberOfFailedPasscodeAttempts:0];
  [*(*(a1 + 32) + 16) setUnblockTimeFromReferenceDate:0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setBlockedForPasscode:0];
}

- (void)_persistentStateQueue_unlockFailedWithError:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  if (!self->_speculativePasscodeFailureChargeOutstanding)
  {
    v4 = SBLogAuthenticationModel();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1BEA11000, v4, OS_LOG_TYPE_INFO, "A passcode attempt failed without a corresponding speculative failure charge. Callstack %{public}@", &v7, 0xCu);
    }

    [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_beginSpeculativeFailureCharge];
  }

  self->_speculativePasscodeFailureChargeOutstanding = 0;
  originalDefaultsForRollback = self->_originalDefaultsForRollback;
  self->_originalDefaultsForRollback = 0;

  [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_loadLockState];
  [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_evaluatePendingWipe];
}

- (void)_persistentStateQueue_loadLockState
{
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  v3 = [(SBSecurityDefaults *)self->_securityDefaults unblockTimeFromReferenceDate];
  v9 = v3;
  if (v3)
  {
    [v3 doubleValue];
    self->_unblockTime = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
    [v5 timeIntervalSinceReferenceDate];
    self->_unblockTime = v6;
  }

  v7 = [(SBSecurityDefaults *)self->_securityDefaults isPendingDeviceWipe];
  self->_pendingWipe = [v7 BOOLValue];

  v8 = [(SBSecurityDefaults *)self->_securityDefaults isBlockedForPasscode];
  self->_permanentlyBlocked = [v8 BOOLValue];
}

- (void)_persistentStateQueue_evaluatePendingWipe
{
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  if (self->_pendingWipe)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_evaluatePendingWipe__block_invoke;
    block[3] = &unk_1E807F178;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __88__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_evaluatePendingWipe__block_invoke(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEA11000, v2, OS_LOG_TYPE_INFO, "Wiping device", v4, 2u);
  }

  return [*(*(a1 + 32) + 72) deviceLockModelRequestsDeviceWipe:?];
}

- (void)_persistentStateQueue_clearBlockedState
{
  dispatch_assert_queue_V2(self->_persistentStateQueue);
  [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_cancelSpeculativeFailureCharge];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_clearBlockedState__block_invoke;
  v4[3] = &unk_1E807F178;
  v4[4] = self;
  v3 = [(SBFUserAuthenticationModelJournaledDefaults *)self updateLockControllerDefaultsWithBlock:v4 journaled:0];
  [(SBFUserAuthenticationModelJournaledDefaults *)self _persistentStateQueue_loadLockState];
}

uint64_t __86__SBFUserAuthenticationModelJournaledDefaults__persistentStateQueue_clearBlockedState__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setNumberOfFailedPasscodeAttempts:0];
  [*(*(a1 + 32) + 16) setUnblockTimeFromReferenceDate:0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setBlockedForPasscode:0];
}

- (void)test_reloadState
{
  [(SBFUserAuthenticationModelJournaledDefaults *)self _loadLockControllerDefaultsJournalIfNecessary];
  persistentStateQueue = self->_persistentStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SBFUserAuthenticationModelJournaledDefaults_test_reloadState__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_sync(persistentStateQueue, block);
}

- (id)updateLockControllerDefaultsWithBlock:(id)a3 journaled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBFUserAuthenticationModelJournaledDefaults *)self _copyLockControllerDefaults];
  v8 = [(SBSecurityDefaults *)self->_securityDefaults blockStateGeneration];
  v9 = [v8 longLongValue];

  v6[2](v6);
  securityDefaults = self->_securityDefaults;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v9 + 1];
  [(SBSecurityDefaults *)securityDefaults setBlockStateGeneration:v11];

  if (v4)
  {
    [(SBFUserAuthenticationModelJournaledDefaults *)self _updateLockControllerDefaultsJournal];
  }

  return v7;
}

+ (id)_journaledDefaultsAndTypes
{
  v5[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"SBDeviceLockBlocked";
  v5[0] = objc_opt_class();
  v4[1] = @"SBDeviceLockFailedAttempts";
  v5[1] = objc_opt_class();
  v4[2] = @"SBFDeviceLockPendingWipe";
  v5[2] = objc_opt_class();
  v4[3] = @"SBDeviceLockBlockTimeIntervalSinceReferenceDate";
  v5[3] = objc_opt_class();
  v4[4] = @"SBDeviceLockBlockStateGeneration";
  v5[4] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (id)_copyLockControllerDefaults
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _journaledDefaultsAndTypes];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(SBSecurityDefaults *)self->_securityDefaults deviceLockDefaultForKey:v10, v14];
        if (v11)
        {
          [v4 setObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  return v12;
}

- (void)_updateLockControllerDefaultsJournal
{
  v3 = [(SBFUserAuthenticationModelJournaledDefaults *)self _copyLockControllerDefaults];
  [v3 writeToFile:self->_journalPath atomically:1];
  sync();
  v4 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEA11000, v4, OS_LOG_TYPE_INFO, "Updated journal", v5, 2u);
  }
}

- (void)_loadLockControllerDefaults:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [objc_opt_class() _journaledDefaultsAndTypes];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [v5 objectForKeyedSubscript:v10];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = SBLogAuthenticationModel();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = objc_opt_class();
              *buf = 138413058;
              v34 = v10;
              v35 = 2112;
              v36 = v11;
              v37 = 2114;
              v38 = v22;
              v39 = 2114;
              v40 = v12;
              v23 = v22;
              _os_log_impl(&dword_1BEA11000, v21, OS_LOG_TYPE_INFO, "Loading journal key %@ found object %@ of type %{public}@ but expected type %{public}@. Aborting journal loading.", buf, 0x2Au);
            }

            goto LABEL_21;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        securityDefaults = self->_securityDefaults;
        v20 = [v4 objectForKeyedSubscript:{v18, v24}];
        [(SBSecurityDefaults *)securityDefaults setDeviceLockDefault:v20 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

LABEL_21:
}

- (void)_loadLockControllerDefaultsJournalIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:self->_journalPath];
  if (v3)
  {
    v4 = [v3 bs_safeObjectForKey:@"SBDeviceLockBlockStateGeneration" ofType:objc_opt_class()];
    v5 = [v4 longLongValue];

    v6 = [(SBSecurityDefaults *)self->_securityDefaults blockStateGeneration];
    v7 = [v6 longLongValue];

    if (v7 < v5)
    {
      v8 = SBLogAuthenticationModel();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 134218240;
        v10 = v5;
        v11 = 2048;
        v12 = v7;
        _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_INFO, "journalGeneration = %lld defaultsGeneration = %lld. Updating defaults from journal", &v9, 0x16u);
      }

      [(SBFUserAuthenticationModelJournaledDefaults *)self _loadLockControllerDefaults:v3];
    }
  }
}

- (void)_initWithJournalPath:(uint64_t *)a1 securityDefaults:(NSObject *)a2 profileConnection:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEBUG, "Model using journal @ path: %@", &v3, 0xCu);
}

@end