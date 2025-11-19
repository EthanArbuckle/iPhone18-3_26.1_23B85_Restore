@interface SBFLockScreenActionContext
- (NSString)lockLabel;
- (NSString)shortLockLabel;
- (SBFLockScreenActionContext)initWithLockLabel:(id)a3 shortLockLabel:(id)a4 action:(id)a5 identifier:(id)a6;
@end

@implementation SBFLockScreenActionContext

- (SBFLockScreenActionContext)initWithLockLabel:(id)a3 shortLockLabel:(id)a4 action:(id)a5 identifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SBFLockScreenActionContext;
  v15 = [(SBFLockScreenActionContext *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_lockLabel, a3);
    objc_storeStrong(&v16->_shortLockLabel, a4);
    v17 = [v13 copy];
    action = v16->_action;
    v16->_action = v17;

    objc_storeStrong(&v16->_identifier, a6);
  }

  return v16;
}

- (NSString)lockLabel
{
  if (lockLabel___once != -1)
  {
    [SBFLockScreenActionContext lockLabel];
  }

  if (self->_lockLabel)
  {
    lockLabel = self->_lockLabel;
  }

  else
  {
    lockLabel = lockLabel___defaultLockLabel;
  }

  return lockLabel;
}

void __39__SBFLockScreenActionContext_lockLabel__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 localizedStringForKey:@"AWAY_LOCK_LABEL" value:&stru_1F3D19FF0 table:@"SpringBoard"];
  v1 = lockLabel___defaultLockLabel;
  lockLabel___defaultLockLabel = v0;
}

- (NSString)shortLockLabel
{
  if (shortLockLabel___once != -1)
  {
    [SBFLockScreenActionContext shortLockLabel];
  }

  if (self->_shortLockLabel)
  {
    shortLockLabel = self->_shortLockLabel;
  }

  else
  {
    shortLockLabel = shortLockLabel___defaultShortLockLabel;
  }

  return shortLockLabel;
}

void __44__SBFLockScreenActionContext_shortLockLabel__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 localizedStringForKey:@"AWAY_LOCK_LABEL_SHORT" value:&stru_1F3D19FF0 table:@"SpringBoard"];
  v1 = shortLockLabel___defaultShortLockLabel;
  shortLockLabel___defaultShortLockLabel = v0;
}

@end