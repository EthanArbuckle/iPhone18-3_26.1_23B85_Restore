@interface WBSAppleAccountInformationProvider
- (BOOL)isSafariSyncEnabled;
- (int64_t)appleAccountSecurityState;
- (unint64_t)_primaryAppleAccountSecurityLevel;
- (void)getAppleAccountSecurityStateWithCompletion:(id)completion;
@end

@implementation WBSAppleAccountInformationProvider

- (void)getAppleAccountSecurityStateWithCompletion:(id)completion
{
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(WBSAppleAccountInformationProvider *)self appleAccountSecurityState]);
}

- (int64_t)appleAccountSecurityState
{
  result = NSClassFromString(&cfstr_Akaccountmanag.isa);
  if (result)
  {
    _primaryAppleAccountSecurityLevel = [(WBSAppleAccountInformationProvider *)self _primaryAppleAccountSecurityLevel];
    v5 = 1;
    if (_primaryAppleAccountSecurityLevel == 4)
    {
      v5 = 2;
    }

    if (_primaryAppleAccountSecurityLevel)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)_primaryAppleAccountSecurityLevel
{
  v2 = objc_alloc_init(MEMORY[0x1E6959A40]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:aa_altDSID];
  v7 = [mEMORY[0x1E698DC80] securityLevelForAccount:v6];

  return v7;
}

- (BOOL)isSafariSyncEnabled
{
  v2 = objc_alloc_init(MEMORY[0x1E6959A40]);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = [aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x1E6959610]];

  return v4;
}

@end