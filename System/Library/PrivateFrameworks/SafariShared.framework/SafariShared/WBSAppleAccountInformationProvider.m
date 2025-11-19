@interface WBSAppleAccountInformationProvider
- (BOOL)isSafariSyncEnabled;
- (int64_t)appleAccountSecurityState;
- (unint64_t)_primaryAppleAccountSecurityLevel;
- (void)getAppleAccountSecurityStateWithCompletion:(id)a3;
@end

@implementation WBSAppleAccountInformationProvider

- (void)getAppleAccountSecurityStateWithCompletion:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(WBSAppleAccountInformationProvider *)self appleAccountSecurityState]);
}

- (int64_t)appleAccountSecurityState
{
  result = NSClassFromString(&cfstr_Akaccountmanag.isa);
  if (result)
  {
    v4 = [(WBSAppleAccountInformationProvider *)self _primaryAppleAccountSecurityLevel];
    v5 = 1;
    if (v4 == 4)
    {
      v5 = 2;
    }

    if (v4)
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
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_altDSID];

  v5 = [MEMORY[0x1E698DC80] sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];
  v7 = [v5 securityLevelForAccount:v6];

  return v7;
}

- (BOOL)isSafariSyncEnabled
{
  v2 = objc_alloc_init(MEMORY[0x1E6959A40]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 isEnabledForDataclass:*MEMORY[0x1E6959610]];

  return v4;
}

@end