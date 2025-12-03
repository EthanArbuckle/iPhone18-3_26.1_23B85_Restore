@interface INBagRenewal
+ (void)attemptRenewCredentialsWithAccount:(id)account completion:(id)completion;
@end

@implementation INBagRenewal

+ (void)attemptRenewCredentialsWithAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v7 = +[ACAccountStore defaultStore];
  aa_altDSID = [accountCopy aa_altDSID];
  v18[0] = kACRenewCredentialsShouldAvoidUIKey;
  v18[1] = kACRenewCredentialsShouldForceKey;
  v19[0] = &__kCFBooleanTrue;
  v19[1] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100033E4C(aa_altDSID, v10);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004898;
  v14[3] = &unk_1000552C8;
  v16 = aa_altDSID;
  v17 = completionCopy;
  v15 = v7;
  v11 = aa_altDSID;
  v12 = v7;
  v13 = completionCopy;
  [v12 renewCredentialsForAccount:accountCopy options:v9 completion:v14];
}

@end