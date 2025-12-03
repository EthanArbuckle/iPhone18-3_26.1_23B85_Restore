@interface WBSRecentlyDeletedAlertConfiguration
+ (id)_alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:(int64_t)types;
+ (id)_alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:(int64_t)types;
+ (id)alertTitleForFailingToRecoverAccounts:(id)accounts;
@end

@implementation WBSRecentlyDeletedAlertConfiguration

+ (id)alertTitleForFailingToRecoverAccounts:(id)accounts
{
  v18 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [accountsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(accountsCopy);
        }

        v7 |= [*(*(&v13 + 1) + 8 * i) credentialTypes];
      }

      v6 = [accountsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([accountsCopy count] == 1)
  {
    [self _alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:v7];
  }

  else
  {
    [self _alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:v7];
  }
  v10 = ;

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:(int64_t)types
{
  if (types == 3)
  {
    v4 = @"Passwords was unable to recover these passkeys and passwords.";
  }

  else if (types == 2)
  {
    v4 = @"Passwords was unable to recover these passkeys.";
  }

  else
  {
    v4 = @"Passwords was unable to recover these passwords.";
  }

  v5 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);

  return v5;
}

+ (id)_alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:(int64_t)types
{
  if (types == 3)
  {
    v4 = @"Passwords was unable to recover this passkey and password.";
  }

  else if (types == 2)
  {
    v4 = @"Passwords was unable to recover this passkey.";
  }

  else
  {
    v4 = @"Passwords was unable to recover this password.";
  }

  v5 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);

  return v5;
}

@end