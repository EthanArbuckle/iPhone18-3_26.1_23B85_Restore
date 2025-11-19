@interface SBFMobileKeyBagUnlockOptions
- (SBFMobileKeyBagUnlockOptions)initWithPasscode:(id)a3 skipSEKeepUserDataOperation:(BOOL)a4;
@end

@implementation SBFMobileKeyBagUnlockOptions

- (SBFMobileKeyBagUnlockOptions)initWithPasscode:(id)a3 skipSEKeepUserDataOperation:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBFMobileKeyBagUnlockOptions;
  v8 = [(SBFMobileKeyBagUnlockOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_passcode, a3);
    v9->_skipSEKeepUserDataOperation = a4;
  }

  return v9;
}

@end