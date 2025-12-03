@interface SBFMobileKeyBagUnlockOptions
- (SBFMobileKeyBagUnlockOptions)initWithPasscode:(id)passcode skipSEKeepUserDataOperation:(BOOL)operation;
@end

@implementation SBFMobileKeyBagUnlockOptions

- (SBFMobileKeyBagUnlockOptions)initWithPasscode:(id)passcode skipSEKeepUserDataOperation:(BOOL)operation
{
  passcodeCopy = passcode;
  v11.receiver = self;
  v11.super_class = SBFMobileKeyBagUnlockOptions;
  v8 = [(SBFMobileKeyBagUnlockOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_passcode, passcode);
    v9->_skipSEKeepUserDataOperation = operation;
  }

  return v9;
}

@end