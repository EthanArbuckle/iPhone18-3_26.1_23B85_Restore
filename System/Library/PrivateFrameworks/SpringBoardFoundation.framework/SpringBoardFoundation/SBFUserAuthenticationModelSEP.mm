@interface SBFUserAuthenticationModelSEP
- (BOOL)isTemporarilyBlocked;
- (NSString)description;
- (SBFUserAuthenticationModelSEP)initWithKeyBag:(id)bag;
- (id)_initWithKeyBag:(id)bag profileConnection:(id)connection;
- (id)descriptionBuilder;
- (void)_refreshStateAndNotify:(BOOL)notify;
- (void)_refreshStateForMkbState:(id)state notify:(BOOL)notify;
- (void)clearBlockedState;
- (void)noteNewMkbDeviceLockState:(id)state;
- (void)notePasscodeEntryBegan;
- (void)notePasscodeEntryCancelled;
- (void)notePasscodeUnlockFailedWithError:(id)error;
- (void)notePasscodeUnlockSucceeded;
- (void)performPasswordTest:(id)test;
- (void)refreshBlockedState;
- (void)setDelegate:(id)delegate;
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

- (id)_initWithKeyBag:(id)bag profileConnection:(id)connection
{
  bagCopy = bag;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = SBFUserAuthenticationModelSEP;
  v8 = [(SBFUserAuthenticationModelSEP *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_profileConnection, connection);
    if (bagCopy)
    {
      v10 = bagCopy;
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

- (SBFUserAuthenticationModelSEP)initWithKeyBag:(id)bag
{
  v4 = MEMORY[0x1E69ADFB8];
  bagCopy = bag;
  sharedConnection = [v4 sharedConnection];
  v7 = [(SBFUserAuthenticationModelSEP *)self _initWithKeyBag:bagCopy profileConnection:sharedConnection];

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
    if ([errorCopy code] == -14)
    {

LABEL_8:
      [(SBFUserAuthenticationModelSEP *)self _refreshStateAndNotify:1];
      goto LABEL_9;
    }

    code = [errorCopy code];

    if (code == -13)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_9:
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

- (void)noteNewMkbDeviceLockState:(id)state
{
  stateCopy = state;
  v5 = SBLogAuthenticationModel();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFUserAuthenticationModelEducationalMode *)stateCopy noteNewMkbDeviceLockState:v5];
  }

  [(SBFUserAuthenticationModelSEP *)self _refreshStateForMkbState:stateCopy notify:1];
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

- (NSString)description
{
  descriptionBuilder = [(SBFUserAuthenticationModelSEP *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
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

- (void)_refreshStateAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  state = [(SBFMobileKeyBag *)self->_keybag state];
  [(SBFUserAuthenticationModelSEP *)self _refreshStateForMkbState:state notify:notifyCopy];
}

- (void)_refreshStateForMkbState:(id)state notify:(BOOL)notify
{
  notifyCopy = notify;
  v29 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v25 = 138543618;
    selfCopy2 = stateCopy;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_INFO, "Refreshing state from MKB state %{public}@. Current state = %@", &v25, 0x16u);
  }

  failedAttemptCount = [(SBFUserAuthenticationModelSEP *)stateCopy failedAttemptCount];
  if (failedAttemptCount < 1)
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v9 = failedAttemptCount;
    maxUnlockAttempts = [(SBFMobileKeyBag *)self->_keybag maxUnlockAttempts];
    v11 = [(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADE60]];
    v12 = v11 != 2;
    if (v9 < maxUnlockAttempts)
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
      _isDeviceWipePreferenceEnabled = [(SBFUserAuthenticationModelSEP *)self _isDeviceWipePreferenceEnabled];
      v13 = 0;
      v15 = 1;
      if (!_isDeviceWipePreferenceEnabled)
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
  [(SBFUserAuthenticationModelSEP *)stateCopy backOffTime];
  if (v13 || (v20 = v19, v19 <= 0.0))
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] date];
    [distantPast timeIntervalSinceReferenceDate];
    v23 = v20 + v22;
  }

  self->_unblockTime = v23;

  if (self->_pendingWipe)
  {
    [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockModelRequestsDeviceWipe:self];
  }

  if (notifyCopy)
  {
    [(SBFUserAuthenticationModelDelegate *)self->_delegate deviceLockStateMayHaveChangedForModel:self];
  }

  v24 = SBLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_1BEA11000, v24, OS_LOG_TYPE_INFO, "New MKB state = %@", &v25, 0xCu);
  }
}

@end