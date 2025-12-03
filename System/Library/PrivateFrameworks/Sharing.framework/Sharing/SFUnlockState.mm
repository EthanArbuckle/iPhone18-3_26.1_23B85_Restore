@interface SFUnlockState
- (SFUnlockState)initWithCoder:(id)coder;
- (SFUnlockState)initWithUnlockEnabled:(id)enabled remotePasscodeEnabled:(id)passcodeEnabled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUnlockState

- (SFUnlockState)initWithUnlockEnabled:(id)enabled remotePasscodeEnabled:(id)passcodeEnabled
{
  enabledCopy = enabled;
  passcodeEnabledCopy = passcodeEnabled;
  v14.receiver = self;
  v14.super_class = SFUnlockState;
  v8 = [(SFUnlockState *)&v14 init];
  if (v8)
  {
    v9 = [enabledCopy copy];
    unlockEnabled = v8->_unlockEnabled;
    v8->_unlockEnabled = v9;

    v11 = [passcodeEnabledCopy copy];
    remotePasscodeEnabled = v8->_remotePasscodeEnabled;
    v8->_remotePasscodeEnabled = v11;
  }

  return v8;
}

- (SFUnlockState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFUnlockState;
  v5 = [(SFUnlockState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnlockEnabled"];
    v7 = [v6 copy];
    unlockEnabled = v5->_unlockEnabled;
    v5->_unlockEnabled = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemotePasscodeEnabled"];
    v10 = [v9 copy];
    remotePasscodeEnabled = v5->_remotePasscodeEnabled;
    v5->_remotePasscodeEnabled = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  unlockEnabled = self->_unlockEnabled;
  coderCopy = coder;
  [coderCopy encodeObject:unlockEnabled forKey:@"UnlockEnabled"];
  [coderCopy encodeObject:self->_remotePasscodeEnabled forKey:@"RemotePasscodeEnabled"];
}

@end