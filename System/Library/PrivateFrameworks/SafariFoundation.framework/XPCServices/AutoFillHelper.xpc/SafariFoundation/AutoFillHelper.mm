@interface AutoFillHelper
- (BOOL)_isKeychainSyncEnabled;
- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)rules confirmPasswordRules:(id)passwordRules overrideApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)handler;
@end

@implementation AutoFillHelper

- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)rules confirmPasswordRules:(id)passwordRules overrideApplicationIdentifier:(id)identifier completion:(id)completion
{
  rulesCopy = rules;
  passwordRulesCopy = passwordRules;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = +[NSXPCConnection currentConnection];
    v15 = v14;
    v31 = 0u;
    v32 = 0u;
    if (v14)
    {
      [v14 auditToken];
    }

    if ([(AutoFillHelper *)self _isKeychainSyncEnabled])
    {
      if (identifierCopy)
      {
        v29 = v31;
        v30 = v32;
        if (WBSAuditTokenHasEntitlement())
        {
          v16 = identifierCopy;
          goto LABEL_10;
        }

        v17 = SFAutoFillHelperErrorDomain;
        v18 = 3;
      }

      else
      {
        v29 = v31;
        v30 = v32;
        v16 = WBSApplicationIdentifierFromAuditToken();
        if (v16)
        {
LABEL_10:
          v19 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v16 error:0];
          bundleIdentifier = [v19 bundleIdentifier];
          v21 = [bundleIdentifier hasPrefix:@"com.apple."];

          if (v21 && ([v19 bundleIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"com.apple.sfapp"), v22, (v23 & 1) == 0))
          {
            v24 = [NSError errorWithDomain:SFAutoFillHelperErrorDomain code:2 userInfo:0];
            completionCopy[2](completionCopy, 0, v24);
          }

          else
          {
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_10000110C;
            v25[3] = &unk_100004190;
            v28 = completionCopy;
            v26 = rulesCopy;
            v27 = passwordRulesCopy;
            [SFSafariCredentialStore getCanSaveCredentialsWithAppID:v16 websiteURL:0 completionHandler:v25];

            v24 = v28;
          }

          goto LABEL_18;
        }

        v17 = SFAutoFillHelperErrorDomain;
        v18 = 1;
      }
    }

    else
    {
      v17 = SFAutoFillHelperErrorDomain;
      v18 = 0;
    }

    v16 = [NSError errorWithDomain:v17 code:v18 userInfo:0];
    completionCopy[2](completionCopy, 0, v16);
LABEL_18:
  }
}

- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.private.safari.can-inspect-autofill-feature-availability"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 BOOLValue] & 1) != 0)
  {
    handlerCopy[2](handlerCopy, +[SFSafariCredentialStore isRemoteAutoFillAvailable], 0);
  }

  else
  {
    v5 = [NSError errorWithDomain:SFAutoFillHelperErrorDomain code:3 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v5);
  }
}

- (BOOL)_isKeychainSyncEnabled
{
  v2 = objc_alloc_init(OTConfigurationContext);
  [v2 setContext:OTDefaultContext];
  v3 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  [v2 setAltDSID:aa_altDSID];
  v6 = [[OTClique alloc] initWithContextData:v2];
  v11 = 0;
  v7 = [v6 fetchUserControllableViewsSyncingEnabled:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = sub_1000013FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000157C(v9, v8);
    }
  }

  return v7;
}

@end