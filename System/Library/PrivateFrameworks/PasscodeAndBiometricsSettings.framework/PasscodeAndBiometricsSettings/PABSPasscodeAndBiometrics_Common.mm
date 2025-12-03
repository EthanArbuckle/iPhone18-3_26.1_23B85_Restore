@interface PABSPasscodeAndBiometrics_Common
+ (id)sharedInstance;
- (BOOL)isUnlockEnabled;
@end

@implementation PABSPasscodeAndBiometrics_Common

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PABSPasscodeAndBiometrics_Common_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

- (BOOL)isUnlockEnabled
{
  v2 = +[PABSBiometrics sharedInstance];
  if ([v2 isFingerprintUnlockAllowed])
  {
    v3 = +[PABSPasscode sharedInstance];
    if ([v3 isPasscodeSet])
    {
      v4 = +[PABSBiometrics identities];
      if ([v4 count])
      {
        v5 = +[PABSBiometrics sharedInstance];
        v6 = [v5 isTouchIDUnlockRestricted] ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end