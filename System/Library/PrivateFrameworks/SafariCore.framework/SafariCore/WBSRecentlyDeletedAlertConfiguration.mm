@interface WBSRecentlyDeletedAlertConfiguration
+ (id)_alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:(int64_t)a3;
+ (id)_alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:(int64_t)a3;
+ (id)alertTitleForFailingToRecoverAccounts:(id)a3;
@end

@implementation WBSRecentlyDeletedAlertConfiguration

+ (id)alertTitleForFailingToRecoverAccounts:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v13 + 1) + 8 * i) credentialTypes];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v4 count] == 1)
  {
    [a1 _alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:v7];
  }

  else
  {
    [a1 _alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:v7];
  }
  v10 = ;

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_alertTitleForFailingToRecoverMultipleAccountsWithCredentialTypes:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = @"Passwords was unable to recover these passkeys and passwords.";
  }

  else if (a3 == 2)
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

+ (id)_alertTitleForFailingToRecoverSingleAccountWithCredentialTypes:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = @"Passwords was unable to recover this passkey and password.";
  }

  else if (a3 == 2)
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