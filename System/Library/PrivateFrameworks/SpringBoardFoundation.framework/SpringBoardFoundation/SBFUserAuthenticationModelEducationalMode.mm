@interface SBFUserAuthenticationModelEducationalMode
- (BOOL)isPermanentlyBlocked;
- (BOOL)isTemporarilyBlocked;
- (SBFUserAuthenticationModelEducationalMode)initWithKeyBag:(id)a3;
- (double)timeUntilUnblockedSinceReferenceDate;
- (id)_refreshStateAndNotify:(BOOL)a3;
- (void)_refreshStateForMkbState:(id)a3 notify:(BOOL)a4;
- (void)noteNewMkbDeviceLockState:(id)a3;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailedWithError:(id)a3;
- (void)notePasscodeUnlockSucceeded;
- (void)performPasswordTest:(id)a3;
- (void)setDelegate:(id)a3;
- (void)synchronize;
@end

@implementation SBFUserAuthenticationModelEducationalMode

- (SBFUserAuthenticationModelEducationalMode)initWithKeyBag:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBFUserAuthenticationModelEducationalMode;
  v5 = [(SBFUserAuthenticationModelEducationalMode *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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
  v4 = [v3 permanentlyBlocked];

  return v4;
}

- (double)timeUntilUnblockedSinceReferenceDate
{
  v2 = [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateAndNotify:0];
  [v2 backOffTime];
  if (v3 <= 0.0)
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
    [v7 timeIntervalSinceReferenceDate];
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (self->_delegate != v4)
  {
    self->_delegate = v4;
    if (self->_pendingWipe)
    {
      v5 = v4;
      [(SBFUserAuthenticationModelDelegate *)v4 deviceLockModelRequestsDeviceWipe:self];
      v4 = v5;
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

- (void)notePasscodeUnlockFailedWithError:(id)a3
{
  v4 = a3;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)v4 notePasscodeUnlockFailedWithError:v5];
  }

  v6 = [v4 domain];
  if ([v6 isEqualToString:@"com.apple.springboardfoundation.mkb"])
  {
    v7 = [v4 code];

    if (v7 == -14)
    {
      v8 = [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateAndNotify:1];
    }
  }

  else
  {
  }
}

- (void)noteNewMkbDeviceLockState:(id)a3
{
  v4 = a3;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)v4 noteNewMkbDeviceLockState:v5];
  }

  [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateForMkbState:v4 notify:1];
}

- (void)performPasswordTest:(id)a3
{
  v3 = a3;
  v4 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode performPasswordTest:];
  }

  v5 = 0;
  v3[2](v3, &v5);
}

- (id)_refreshStateAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBFMobileKeyBag *)self->_keybag state];
  [(SBFUserAuthenticationModelEducationalMode *)self _refreshStateForMkbState:v5 notify:v3];

  return v5;
}

- (void)_refreshStateForMkbState:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  if ([a3 shouldWipe])
  {
    self->_pendingWipe = 1;
  }

  else if (!self->_pendingWipe)
  {
    goto LABEL_5;
  }

  [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockModelRequestsDeviceWipe:self];
LABEL_5:
  if (v4)
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