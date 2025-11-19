@interface SFUnlockState
- (SFUnlockState)initWithCoder:(id)a3;
- (SFUnlockState)initWithUnlockEnabled:(id)a3 remotePasscodeEnabled:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUnlockState

- (SFUnlockState)initWithUnlockEnabled:(id)a3 remotePasscodeEnabled:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SFUnlockState;
  v8 = [(SFUnlockState *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    unlockEnabled = v8->_unlockEnabled;
    v8->_unlockEnabled = v9;

    v11 = [v7 copy];
    remotePasscodeEnabled = v8->_remotePasscodeEnabled;
    v8->_remotePasscodeEnabled = v11;
  }

  return v8;
}

- (SFUnlockState)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFUnlockState;
  v5 = [(SFUnlockState *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnlockEnabled"];
    v7 = [v6 copy];
    unlockEnabled = v5->_unlockEnabled;
    v5->_unlockEnabled = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemotePasscodeEnabled"];
    v10 = [v9 copy];
    remotePasscodeEnabled = v5->_remotePasscodeEnabled;
    v5->_remotePasscodeEnabled = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  unlockEnabled = self->_unlockEnabled;
  v5 = a3;
  [v5 encodeObject:unlockEnabled forKey:@"UnlockEnabled"];
  [v5 encodeObject:self->_remotePasscodeEnabled forKey:@"RemotePasscodeEnabled"];
}

@end