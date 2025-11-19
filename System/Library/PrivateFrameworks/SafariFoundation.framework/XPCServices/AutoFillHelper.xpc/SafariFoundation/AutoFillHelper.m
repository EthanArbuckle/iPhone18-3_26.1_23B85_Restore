@interface AutoFillHelper
- (BOOL)_isKeychainSyncEnabled;
- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)a3 confirmPasswordRules:(id)a4 overrideApplicationIdentifier:(id)a5 completion:(id)a6;
- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)a3;
@end

@implementation AutoFillHelper

- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)a3 confirmPasswordRules:(id)a4 overrideApplicationIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
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
      if (v12)
      {
        v29 = v31;
        v30 = v32;
        if (WBSAuditTokenHasEntitlement())
        {
          v16 = v12;
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
          v20 = [v19 bundleIdentifier];
          v21 = [v20 hasPrefix:@"com.apple."];

          if (v21 && ([v19 bundleIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"com.apple.sfapp"), v22, (v23 & 1) == 0))
          {
            v24 = [NSError errorWithDomain:SFAutoFillHelperErrorDomain code:2 userInfo:0];
            v13[2](v13, 0, v24);
          }

          else
          {
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_10000110C;
            v25[3] = &unk_100004190;
            v28 = v13;
            v26 = v10;
            v27 = v11;
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
    v13[2](v13, 0, v16);
LABEL_18:
  }
}

- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)a3
{
  v6 = a3;
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.private.safari.can-inspect-autofill-feature-availability"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 BOOLValue] & 1) != 0)
  {
    v6[2](v6, +[SFSafariCredentialStore isRemoteAutoFillAvailable], 0);
  }

  else
  {
    v5 = [NSError errorWithDomain:SFAutoFillHelperErrorDomain code:3 userInfo:0];
    (v6)[2](v6, 0, v5);
  }
}

- (BOOL)_isKeychainSyncEnabled
{
  v2 = objc_alloc_init(OTConfigurationContext);
  [v2 setContext:OTDefaultContext];
  v3 = objc_alloc_init(ACAccountStore);
  v4 = [v3 aa_primaryAppleAccount];
  v5 = [v4 aa_altDSID];

  [v2 setAltDSID:v5];
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