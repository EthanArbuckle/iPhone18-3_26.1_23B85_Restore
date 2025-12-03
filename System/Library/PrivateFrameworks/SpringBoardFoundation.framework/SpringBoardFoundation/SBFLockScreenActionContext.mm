@interface SBFLockScreenActionContext
- (NSString)lockLabel;
- (NSString)shortLockLabel;
- (SBFLockScreenActionContext)initWithLockLabel:(id)label shortLockLabel:(id)lockLabel action:(id)action identifier:(id)identifier;
@end

@implementation SBFLockScreenActionContext

- (SBFLockScreenActionContext)initWithLockLabel:(id)label shortLockLabel:(id)lockLabel action:(id)action identifier:(id)identifier
{
  labelCopy = label;
  lockLabelCopy = lockLabel;
  actionCopy = action;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = SBFLockScreenActionContext;
  v15 = [(SBFLockScreenActionContext *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_lockLabel, label);
    objc_storeStrong(&v16->_shortLockLabel, lockLabel);
    v17 = [actionCopy copy];
    action = v16->_action;
    v16->_action = v17;

    objc_storeStrong(&v16->_identifier, identifier);
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