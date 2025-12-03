@interface SBFUserAuthenticationModelEducationalMode
- (BOOL)isPermanentlyBlocked;
- (BOOL)isTemporarilyBlocked;
- (SBFUserAuthenticationModelEducationalMode)initWithKeyBag:(id)bag;
- (double)timeUntilUnblockedSinceReferenceDate;
- (id)_refreshStateAndNotify:(BOOL)notify;
- (void)_refreshStateForMkbState:(id)state notify:(BOOL)notify;
- (void)noteNewMkbDeviceLockState:(id)state;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailedWithError:(id)error;
- (void)notePasscodeUnlockSucceeded;
- (void)performPasswordTest:(id)test;
- (void)setDelegate:(id)delegate;
- (void)synchronize;
@end

@implementation SBFUserAuthenticationModelEducationalMode

- (SBFUserAuthenticationModelEducationalMode)initWithKeyBag:(id)bag
{
  bagCopy = bag;
  v10.receiver = self;
  v10.super_class = SBFUserAuthenticationModelEducationalMode;
  v5 = [(SBFUserAuthenticationModelEducationalMode *)&v10 init];
  if (v5)
  {
    if (bagCopy)
    {
      v6 = bagCopy;
    }

    else
    {
      v6 = +[SBFMobileKeyBag sharedInstance];
    }

    keybag = v5->_keybag;
    v5->_keybag = v6;

    v8 = [(SBFUserAuthenticationModelEducationalMode *)v5 _refreshStateAndNotify:1];
  }

  return v5;
}

- (BOOL)isTemporarilyBlocked
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(SBFUserAuthenticationModelEducationalMode *)self timeUntilUnblockedSinceReferenceDate];
  return v4 < v5;
}

- (BOOL)isPermanentlyBlocked
{
  if (self->_pendingWipe)
  {
    return 1;
  }

  v3 = [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateAndNotify:0];
  permanentlyBlocked = [v3 permanentlyBlocked];

  return permanentlyBlocked;
}

- (double)timeUntilUnblockedSinceReferenceDate
{
  v2 = [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateAndNotify:0];
  [v2 backOffTime];
  if (v3 <= 0.0)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  else
  {
    v4 = v3;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v4 + v5;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_delegate != delegateCopy)
  {
    self->_delegate = delegateCopy;
    if (self->_pendingWipe)
    {
      v5 = delegateCopy;
      [(SBFUserAuthenticationModelDelegate *)delegateCopy deviceLockModelRequestsDeviceWipe:self];
      delegateCopy = v5;
    }
  }
}

- (void)synchronize
{
  v2 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode synchronize];
  }
}

- (void)notePasscodeEntryBegan
{
  v2 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeEntryBegan];
  }
}

- (void)notePasscodeEntryCancelled
{
  v2 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeEntryCancelled];
  }
}

- (void)notePasscodeUnlockSucceeded
{
  v2 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeUnlockSucceeded];
  }
}

- (void)notePasscodeUnlockFailedWithError:(id)error
{
  errorCopy = error;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)errorCopy notePasscodeUnlockFailedWithError:v5];
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.springboardfoundation.mkb"])
  {
    code = [errorCopy code];

    if (code == -14)
    {
      v8 = [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateAndNotify:1];
    }
  }

  else
  {
  }
}

- (void)noteNewMkbDeviceLockState:(id)state
{
  stateCopy = state;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)stateCopy noteNewMkbDeviceLockState:v5];
  }

  [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateForMkbState:stateCopy notify:1];
}

- (void)performPasswordTest:(id)test
{
  testCopy = test;
  v4 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode performPasswordTest:];
  }

  v5 = 0;
  testCopy[2](testCopy, &v5);
}

- (id)_refreshStateAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  state = [(SBFMobileKeyBag *)self->_keybag state];
  [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateForMkbState:state notify:notifyCopy];

  return state;
}

- (void)_refreshStateForMkbState:(id)state notify:(BOOL)notify
{
  notifyCopy = notify;
  if ([state shouldWipe])
  {
    self->_pendingWipe = 1;
  }

  else if (!self->_pendingWipe)
  {
    goto LABEL_5;
  }

  [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockModelRequestsDeviceWipe:self];
LABEL_5:
  if (notifyCopy)
  {
    delegate = self->_delegate;

    [(SBFUserAuthenticationModelDelegate *)delegate deviceLockStateMayHaveChangedForModel:self];
  }
}

- (void)notePasscodeUnlockFailedWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEBUG, "passcodeUnlockFailed with error: %@", &v2, 0xCu);
}

- (void)noteNewMkbDeviceLockState:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEBUG, "noteNewMkbDeviceLockState: %@", &v2, 0xCu);
}

@end