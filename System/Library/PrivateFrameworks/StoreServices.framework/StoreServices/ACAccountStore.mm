@interface ACAccountStore
@end

@implementation ACAccountStore

void __50__ACAccountStore_SSExtensions___accountTypesCache__block_invoke()
{
  v0 = objc_alloc_init(SSLRUCache);
  v1 = _accountTypesCache_ss_once_object___COUNTER__;
  _accountTypesCache_ss_once_object___COUNTER__ = v0;
}

uint64_t __96__ACAccountStore_SSExtensions___correspondingAccountWithAccountTypeIdentifier_forAccount_error___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 _ss_altDSID];
  if (([v5 isEqualToString:a1[4]] & 1) == 0)
  {
    v7 = a1[5];
    if (v7 && ([v4 _ss_DSID], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isEqualToNumber:", a1[5]) & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 username];
      v6 = [v8 isEqualToString:a1[6]];

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

@end