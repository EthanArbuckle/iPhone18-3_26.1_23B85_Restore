@interface SBFShamMobileKeyBag
+ (id)shamKeyBagWithRecoveryRequired:(BOOL)required correctPasscode:(id)passcode;
+ (id)shamKeyBagWithRecoveryRequired:(BOOL)required recoveryPossible:(BOOL)possible timeScaleFactor:(float)factor correctPasscode:(id)passcode;
- (BOOL)beginRecovery:(id)recovery error:(id *)error;
- (SBFShamMobileKeyBag)initWithRecoveryRequired:(BOOL)required recoveryPossible:(BOOL)possible timeScaleFactor:(float)factor correctPasscode:(id)passcode;
- (id)extendedState;
- (id)state;
- (int64_t)_simplifiedLockStateForLockState:(int64_t)state;
- (void)_queue_initializeSecretChangeMachine:(id)machine;
- (void)_queue_stepSecretChangeMachine;
- (void)createStashBag:(id)bag skipSEKeepUserDataOperation:(BOOL)operation completion:(id)completion completionQueue:(id)queue;
- (void)lock;
- (void)waitForUnlockWithTimeout:(float)timeout;
@end

@implementation SBFShamMobileKeyBag

+ (id)shamKeyBagWithRecoveryRequired:(BOOL)required correctPasscode:(id)passcode
{
  requiredCopy = required;
  passcodeCopy = passcode;
  v6 = [[SBFShamMobileKeyBag alloc] initWithRecoveryRequired:requiredCopy correctPasscode:passcodeCopy];

  return v6;
}

+ (id)shamKeyBagWithRecoveryRequired:(BOOL)required recoveryPossible:(BOOL)possible timeScaleFactor:(float)factor correctPasscode:(id)passcode
{
  possibleCopy = possible;
  requiredCopy = required;
  passcodeCopy = passcode;
  v10 = [SBFShamMobileKeyBag alloc];
  *&v11 = factor;
  v12 = [(SBFShamMobileKeyBag *)v10 initWithRecoveryRequired:requiredCopy recoveryPossible:possibleCopy timeScaleFactor:passcodeCopy correctPasscode:v11];

  return v12;
}

- (SBFShamMobileKeyBag)initWithRecoveryRequired:(BOOL)required recoveryPossible:(BOOL)possible timeScaleFactor:(float)factor correctPasscode:(id)passcode
{
  possibleCopy = possible;
  requiredCopy = required;
  passcodeCopy = passcode;
  v20.receiver = self;
  v20.super_class = SBFShamMobileKeyBag;
  v11 = [(SBFShamMobileKeyBag *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_timeScaleFactor = factor;
    v13 = dispatch_queue_create("com.apple.springboardfoundation.shamkeybag", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    v15 = [passcodeCopy copy];
    queue_correctPasscode = v12->_queue_correctPasscode;
    v12->_queue_correctPasscode = v15;

    v17 = objc_alloc_init(SBFMutableMobileKeyBagState);
    queue_state = v12->_queue_state;
    v12->_queue_state = v17;

    [(SBFMutableMobileKeyBagState *)v12->_queue_state setLockState:2];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setBackOffTime:0.0];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setFailedAttemptCount:0];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setPermanentlyBlocked:0];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setShouldWipe:0];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setRecoveryEnabled:1];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setRecoveryRequired:requiredCopy];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setRecoveryPossible:possibleCopy];
    [(SBFMutableMobileKeyBagState *)v12->_queue_state setEscrowCount:0];
  }

  return v12;
}

- (void)lock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SBFShamMobileKeyBag_lock__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)createStashBag:(id)bag skipSEKeepUserDataOperation:(BOOL)operation completion:(id)completion completionQueue:(id)queue
{
  bagCopy = bag;
  completionCopy = completion;
  queueCopy = queue;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__SBFShamMobileKeyBag_createStashBag_skipSEKeepUserDataOperation_completion_completionQueue___block_invoke;
  v16[3] = &unk_1E80808C0;
  v16[4] = self;
  v17 = queueCopy;
  v18 = bagCopy;
  v19 = completionCopy;
  v13 = bagCopy;
  v14 = queueCopy;
  v15 = completionCopy;
  dispatch_async(queue, v16);
}

void __93__SBFShamMobileKeyBag_createStashBag_skipSEKeepUserDataOperation_completion_completionQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 32) lockState])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = [*(*(a1 + 32) + 32) lockState];
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failing because state %ld is not unlocked", &v6, 0xCu);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_async(*(a1 + 40), v3);
    }
  }

  if (([*(a1 + 48) isEqualToData:*(*(a1 + 32) + 24)] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failing because passcodes do not match", &v6, 2u);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      dispatch_async(*(a1 + 40), v4);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    dispatch_async(*(a1 + 40), v5);
  }
}

- (BOOL)beginRecovery:(id)recovery error:(id *)error
{
  recoveryCopy = recovery;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SBFShamMobileKeyBag_beginRecovery_error___block_invoke;
  v9[3] = &unk_1E807F290;
  v9[4] = self;
  v10 = recoveryCopy;
  v7 = recoveryCopy;
  dispatch_async(queue, v9);

  return 1;
}

- (void)waitForUnlockWithTimeout:(float)timeout
{
  state = [(SBFShamMobileKeyBag *)self state];
  lockState = [state lockState];

  if (lockState)
  {
    v7 = ((timeout * 1000000.0) / self->_timeScaleFactor);

    usleep(v7);
  }
}

- (id)state
{
  extendedState = [(SBFShamMobileKeyBag *)self extendedState];
  v4 = [extendedState mutableCopy];

  [v4 setLockState:{-[SBFShamMobileKeyBag _simplifiedLockStateForLockState:](self, "_simplifiedLockStateForLockState:", objc_msgSend(v4, "lockState"))}];
  v5 = [v4 copy];

  return v5;
}

- (id)extendedState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SBFShamMobileKeyBag_extendedState__block_invoke;
  v5[3] = &unk_1E807F1F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__SBFShamMobileKeyBag_extendedState__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _queue_stepSecretChangeMachine];
}

- (void)_queue_initializeSecretChangeMachine:(id)machine
{
  self->_queue_escrowState = 1;
  v4 = [machine copy];
  queue_trialPasscode = self->_queue_trialPasscode;
  self->_queue_trialPasscode = v4;

  self->_queue_escrowCountTotal = 1000000.0;
  self->_queue_escrowCountDelta = self->_timeScaleFactor * 1667.0;
  queue_state = self->_queue_state;

  [(SBFMutableMobileKeyBagState *)queue_state setEscrowCount:1000000];
}

- (void)_queue_stepSecretChangeMachine
{
  if (self->_queue_escrowState == 1)
  {
    v11 = v2;
    v7 = self->_queue_escrowCountTotal - self->_queue_escrowCountDelta;
    self->_queue_escrowCountTotal = v7;
    if (v7 <= 0.0)
    {
      self->_queue_escrowCountTotal = 0.0;
      if (![(SBFMobileKeyBagState *)self->_queue_state permanentlyBlocked]&& [(SBFMobileKeyBagState *)self->_queue_state recoveryPossible]&& [(NSData *)self->_queue_trialPasscode isEqualToData:self->_queue_correctPasscode])
      {
        [(SBFMutableMobileKeyBagState *)self->_queue_state setLockState:0];
        [(SBFMutableMobileKeyBagState *)self->_queue_state setBackOffTime:0.0];
        [(SBFMutableMobileKeyBagState *)self->_queue_state setFailedAttemptCount:0];
        [(SBFMutableMobileKeyBagState *)self->_queue_state setShouldWipe:0];
        [(SBFMutableMobileKeyBagState *)self->_queue_state setRecoveryRequired:0];
        v8 = 2;
      }

      else
      {
        if (![(SBFMobileKeyBagState *)self->_queue_state permanentlyBlocked:v3])
        {
          if ([(SBFMobileKeyBagState *)self->_queue_state recoveryPossible])
          {
            [(SBFMutableMobileKeyBagState *)self->_queue_state setFailedAttemptCount:[(SBFMobileKeyBagState *)self->_queue_state failedAttemptCount]+ 1];
            if ([(SBFMobileKeyBagState *)self->_queue_state failedAttemptCount]>= 5)
            {
              [(SBFMutableMobileKeyBagState *)self->_queue_state setRecoveryPossible:0];
            }
          }
        }

        v8 = 3;
      }

      self->_queue_escrowState = v8;
    }

    queue_state = self->_queue_state;
    queue_escrowCountTotal = self->_queue_escrowCountTotal;

    [(SBFMutableMobileKeyBagState *)queue_state setEscrowCount:queue_escrowCountTotal];
  }
}

- (int64_t)_simplifiedLockStateForLockState:(int64_t)state
{
  result = state;
  if ((state - 4) <= 3)
  {
    return qword_1BEAD5C18[state - 4];
  }

  return result;
}

@end