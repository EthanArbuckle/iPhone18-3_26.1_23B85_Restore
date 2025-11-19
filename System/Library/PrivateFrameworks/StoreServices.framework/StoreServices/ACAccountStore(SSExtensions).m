@interface ACAccountStore(SSExtensions)
+ (id)_accountTypesCache;
- (id)_correspondingAccountWithAccountTypeIdentifier:()SSExtensions forAccount:error:;
- (id)_ss_accountTypeWithIdentifier:()SSExtensions error:;
@end

@implementation ACAccountStore(SSExtensions)

+ (id)_accountTypesCache
{
  if (_accountTypesCache_ss_once_token___COUNTER__ != -1)
  {
    +[ACAccountStore(SSExtensions) _accountTypesCache];
  }

  v1 = _accountTypesCache_ss_once_object___COUNTER__;

  return v1;
}

- (id)_ss_accountTypeWithIdentifier:()SSExtensions error:
{
  v6 = a3;
  v7 = [objc_opt_class() _accountTypesCache];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [a1 accountTypeWithAccountTypeIdentifier:v6];
    v9 = [objc_opt_class() _accountTypesCache];
    [v9 setObject:v8 forKey:v6];

    if (a4)
    {
      if (!v8)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load an ACAccountType for %@", v6];
        *a4 = SSError(@"SSAccountErrorDomain", 2, 0, v10);

        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)_correspondingAccountWithAccountTypeIdentifier:()SSExtensions forAccount:error:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _ss_accountTypeWithIdentifier:v8 error:a5];
  if (v10)
  {
    v11 = [a1 accountsWithAccountType:v10];
    v12 = [v9 _ss_altDSID];
    v13 = [v9 _ss_DSID];
    v14 = [v9 username];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __96__ACAccountStore_SSExtensions___correspondingAccountWithAccountTypeIdentifier_forAccount_error___block_invoke;
    v26[3] = &unk_1E84AFCC8;
    v15 = v12;
    v27 = v15;
    v16 = v13;
    v28 = v16;
    v17 = v14;
    v29 = v17;
    v18 = [v11 _ss_firstObjectPassingTest:v26];
    v19 = v18;
    if (a5 && !v18)
    {
      v20 = MEMORY[0x1E696AEC0];
      [v9 _ss_hashedDescription];
      v25 = v15;
      v22 = v21 = v11;
      v23 = [v20 stringWithFormat:@"Unable to find a corresponding account. accountTypeIdentifier = %@ | account = %@", v8, v22];

      v11 = v21;
      v15 = v25;
      *a5 = SSError(@"SSAccountErrorDomain", 1, 0, v23);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end