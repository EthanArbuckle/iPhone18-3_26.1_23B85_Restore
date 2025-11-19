@interface SBFUserAuthenticationModelSEP
- (BOOL)isTemporarilyBlocked;
- (NSString)description;
- (SBFUserAuthenticationModelSEP)initWithKeyBag:(id)a3;
- (id)_initWithKeyBag:(id)a3 profileConnection:(id)a4;
- (id)descriptionBuilder;
- (void)_refreshStateAndNotify:(BOOL)a3;
- (void)_refreshStateForMkbState:(id)a3 notify:(BOOL)a4;
- (void)clearBlockedState;
- (void)noteNewMkbDeviceLockState:(id)a3;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailedWithError:(id)a3;
- (void)notePasscodeUnlockSucceeded;
- (void)performPasswordTest:(id)a3;
- (void)refreshBlockedState;
- (void)setDelegate:(id)a3;
- (void)synchronize;
@end

@implementation SBFUserAuthenticationModelSEP

- (BOOL)isTemporarilyBlocked
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(SBFUserAuthenticationModelSEP *)self timeUntilUnblockedSinceReferenceDate];
  return v4 < v5;
}

- (void)notePasscodeUnlockSucceeded
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeUnlockSucceeded];
  }

  [(SBFUserAuthenticationModelSEP *)self _refreshStateForMkbState:0 notify:1];
}

- (id)_initWithKeyBag:(id)a3 profileConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SBFUserAuthenticationModelSEP;
  v8 = [(SBFUserAuthenticationModelSEP *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_profileConnection, a4);
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = +[SBFMobileKeyBag sharedInstance];
    }

    keybag = v9->_keybag;
    v9->_keybag = v10;

    v12 = objc_alloc_init(SBSecurityDefaults);
    securityDefaults = v9->_securityDefaults;
    v9->_securityDefaults = v12;

    [(SBFUserAuthenticationModelSEP *)v9 _refreshStateAndNotify:1];
  }

  return v9;
}

- (SBFUserAuthenticationModelSEP)initWithKeyBag:(id)a3
{
  v4 = MEMORY[0x1E69ADFB8];
  v5 = a3;
  v6 = [v4 sharedConnection];
  v7 = [(SBFUserAuthenticationModelSEP *)self _initWithKeyBag:v5 profileConnection:v6];

  return v7;
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

  MKBPrewarmSPS();
}

- (void)notePasscodeEntryCancelled
{
  v2 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelEducationalMode notePasscodeEntryCancelled];
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
    if ([v4 code] == -14)
    {

LABEL_8:
      [(SBFUserAuthenticationModelSEP *)self _refreshStateAndNotify:1];
      goto LABEL_9;
    }

    v7 = [v4 code];

    if (v7 == -13)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_9:
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

- (void)clearBlockedState
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelSEP clearBlockedState];
  }

  [(SBFUserAuthenticationModelSEP *)self _refreshStateAndNotify:1];
}

- (void)refreshBlockedState
{
  v3 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFUserAuthenticationModelSEP refreshBlockedState];
  }

  [(SBFUserAuthenticationModelSEP *)self _refreshStateAndNotify:0];
}

- (void)noteNewMkbDeviceLockState:(id)a3
{
  v4 = a3;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)v4 noteNewMkbDeviceLockState:v5];
  }

  [(SBFUserAuthenticationModelSEP *)self _refreshStateForMkbState:v4 notify:1];
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

- (NSString)description
{
  v2 = [(SBFUserAuthenticationModelSEP *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_unblockTime];
  v5 = [v3 appendObject:v4 withName:@"unblockTime"];

  v6 = [v3 appendBool:self->_permanentlyBlocked withName:@"permanentlyBlocked"];
  v7 = [v3 appendBool:self->_pendingWipe withName:@"pendingWipe"];

  return v3;
}

- (void)_refreshStateAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBFMobileKeyBag *)self->_keybag state];
  [(SBFUserAuthenticationModelSEP *)self _refreshStateForMkbState:v5 notify:v3];
}

- (void)_refreshStateForMkbState:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v25 = 138543618;
    v26 = v6;
    v27 = 2112;
    v28 = self;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_INFO, "Refreshing state from MKB state %{public}@. Current state = %@", &v25, 0x16u);
  }

  v8 = [(SBFUserAuthenticationModelSEP *)v6 failedAttemptCount];
  if (v8 < 1)
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [(SBFMobileKeyBag *)self->_keybag maxUnlockAttempts];
    v11 = [(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADE60]];
    v12 = v11 != 2;
    if (v9 < v10)
    {
      v13 = 0;
      v14 = 0;
LABEL_15:
      v15 = v12;
      goto LABEL_16;
    }

    v16 = v11;
    v17 = [(MCProfileConnection *)self->_profileConnection valueRestrictionForFeature:*MEMORY[0x1E69ADED8]];

    if (v16 == 2)
    {
      if (!v17)
      {
LABEL_14:
        v14 = 0;
        v13 = 1;
        goto LABEL_15;
      }

      v15 = 0;
      v13 = 0;
    }

    else
    {
      v18 = [(SBFUserAuthenticationModelSEP *)self _isDeviceWipePreferenceEnabled];
      v13 = 0;
      v15 = 1;
      if (!v18)
      {
        v14 = 1;
        if (v17)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    v14 = 1;
  }

LABEL_16:
  self->_pendingWipe = v14;
  self->_permanentlyBlocked = v13;
  self->_userRequestedEraseEnabled = v15;
  [(SBFUserAuthenticationModelSEP *)v6 backOffTime];
  if (v13 || (v20 = v19, v19 <= 0.0))
  {
    v21 = [MEMORY[0x1E695DF00] distantPast];
    [v21 timeIntervalSinceReferenceDate];
  }

  else
  {
    v21 = [MEMORY[0x1E695DF00] date];
    [v21 timeIntervalSinceReferenceDate];
    v23 = v20 + v22;
  }

  self->_unblockTime = v23;

  if (self->_pendingWipe)
  {
    [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockModelRequestsDeviceWipe:self];
  }

  if (v4)
  {
    [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockStateMayHaveChangedForModel:self];
  }

  v24 = SBLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = self;
    _os_log_impl(&dword_1BEA11000, v24, OS_LOG_TYPE_INFO, "New MKB state = %@", &v25, 0xCu);
  }
}

@end