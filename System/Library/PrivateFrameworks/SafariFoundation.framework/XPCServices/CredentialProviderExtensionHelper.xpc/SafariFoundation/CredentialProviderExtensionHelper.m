@interface CredentialProviderExtensionHelper
- (BOOL)_connection:(id)a3 hasEntitlementToProceedWithAccessType:(int64_t)a4;
- (BOOL)_hasEntitlementToProceedWithAccessType:(int64_t)a3;
- (CredentialProviderExtensionHelper)init;
- (void)_credentialIdentityStoreForCaller:(id)a3 withCompletion:(id)a4;
- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)a3 credentialIdentityType:(int64_t)a4 forExtension:(id)a5 connection:(id)a6 accessType:(int64_t)a7 completion:(id)a8;
- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)a3 credentialIdentityType:(int64_t)a4 fromStoreWithIdentifier:(id)a5 forExtension:(id)a6 completion:(id)a7;
- (void)_fetchCredentialIdentitiesMatchingCriteriaSync:(id)a3 credentialIdentityType:(int64_t)a4 accessType:(int64_t)a5 completion:(id)a6;
- (void)_fetchXPCCallerInformationWithCompletion:(id)a3;
- (void)_prepareAndOpenCredentialIdentityStoreForCaller:(id)a3 createIfNeeded:(BOOL)a4 completion:(id)a5;
- (void)_queue_prepareAndOpenCredentialIdentityStoreForCaller:(id)a3 createIfNeeded:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5;
- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)a3;
- (void)fetchCredentialIdentitiesForService:(id)a3 serviceIdentifierType:(int64_t)a4 credentialIdentityTypes:(int64_t)a5 completion:(id)a6;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5;
- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5;
- (void)getCredentialProviderExtensionStateWithCompletion:(id)a3;
- (void)removeAllCredentialIdentitiesWithCompletion:(id)a3;
- (void)removeCredentialIdentities:(id)a3 completion:(id)a4;
- (void)removeCredentialIdentityStoreForApplication:(id)a3 completion:(id)a4;
- (void)replaceCredentialIdentitiesWithIdentities:(id)a3 completion:(id)a4;
- (void)saveCredentialIdentities:(id)a3 completion:(id)a4;
@end

@implementation CredentialProviderExtensionHelper

- (CredentialProviderExtensionHelper)init
{
  v12.receiver = self;
  v12.super_class = CredentialProviderExtensionHelper;
  v2 = [(CredentialProviderExtensionHelper *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [NSString stringWithFormat:@"com.apple.SafariFoundation.%@.%p", v4, v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    storeAccessQueue = v2->_storeAccessQueue;
    v2->_storeAccessQueue = v6;

    v8 = objc_alloc_init(BKSApplicationStateMonitor);
    applicationStateMonitor = v2->_applicationStateMonitor;
    v2->_applicationStateMonitor = v8;

    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = CredentialProviderExtensionHelper;
  [(CredentialProviderExtensionHelper *)&v3 dealloc];
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [_SFMatchCriteria matchDomains:a3];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:1 accessType:0 completion:v6];
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = +[NSXPCConnection currentConnection];
  v11 = [_SFMatchCriteria matchDomains:v10];

  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:1 forExtension:v9 connection:v12 accessType:0 completion:v8];
}

- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_SFMatchCriteria matchDomains:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000011C4;
  v11[3] = &unk_10000C328;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v8 credentialIdentityType:2 accessType:0 completion:v11];
}

- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[_SFMatchCriteria matchAll];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v5 credentialIdentityType:2 accessType:0 completion:v4];
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [_SFMatchCriteria matchDomains:a3];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:3 accessType:0 completion:v6];
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[NSXPCConnection currentConnection];
  if ([v12 count])
  {
    [_SFMatchCriteria matchDomains:v12];
  }

  else
  {
    +[_SFMatchCriteria matchAll];
  }
  v11 = ;
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:3 forExtension:v9 connection:v10 accessType:0 completion:v8];
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)a3 forExtension:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = +[NSXPCConnection currentConnection];
  v11 = [_SFMatchCriteria matchDomains:v10];

  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:4 forExtension:v9 connection:v12 accessType:0 completion:v8];
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [_SFMatchCriteria matchDomains:a3];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:4 accessType:0 completion:v6];
}

- (void)fetchCredentialIdentitiesForService:(id)a3 serviceIdentifierType:(int64_t)a4 credentialIdentityTypes:(int64_t)a5 completion:(id)a6
{
  v27 = a4;
  v30 = a3;
  v7 = a6;
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v10 = WBSApplicationIdentifierFromAuditToken();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = +[SFCredentialProviderExtensionManager sharedManager];
  v12 = [v11 extensionsSync];

  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *v32;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      v18 = [v17 sf_bundleIdentifierForContainingApp];
      v19 = [v18 isEqualToString:v10];

      if (v19)
      {
        v20 = [v17 identifier];

        if (!v20)
        {
          goto LABEL_18;
        }

        v21 = v30;
        if ([v30 length])
        {
          if (v27 == 1)
          {
            v22 = [NSURL URLWithString:v30];
            v24 = [v22 host];
            v25 = [v24 safari_highLevelDomainForPasswordManager];
            v37 = v25;
            v26 = [NSArray arrayWithObjects:&v37 count:1];
            v23 = [_SFMatchCriteria matchDomains:v26];

            v21 = v30;
          }

          else
          {
            if (v27)
            {
              v23 = 0;
              goto LABEL_23;
            }

            v38 = v30;
            v22 = [NSArray arrayWithObjects:&v38 count:1];
            v23 = [_SFMatchCriteria matchDomains:v22];
          }
        }

        else
        {
          v23 = +[_SFMatchCriteria matchAll];
        }

LABEL_23:
        [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v23 credentialIdentityType:a5 forExtension:v10 connection:v9 accessType:1 completion:v7];

        goto LABEL_24;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_12:

LABEL_18:
  v7[2](v7, &__NSArray0__struct);
  v21 = v30;
LABEL_24:
}

- (void)_fetchCredentialIdentitiesMatchingCriteriaSync:(id)a3 credentialIdentityType:(int64_t)a4 accessType:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = +[NSXPCConnection currentConnection];
  v13 = +[SFCredentialProviderExtensionManager sharedManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001AD4;
  v17[3] = &unk_10000C3A0;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v22 = a5;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  [v13 getEnabledExtensionsWithCompletion:v17];
}

- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)a3 credentialIdentityType:(int64_t)a4 forExtension:(id)a5 connection:(id)a6 accessType:(int64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (v17)
  {
    if ([(CredentialProviderExtensionHelper *)self _connection:v16 hasEntitlementToProceedWithAccessType:a7])
    {
      v18 = +[SFCredentialProviderExtensionManager sharedManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100001F04;
      v20[3] = &unk_10000C3F0;
      v22 = v17;
      v23 = a4;
      v20[4] = self;
      v21 = v14;
      [v18 getExtensionWithBundleID:v15 completion:v20];
    }

    else
    {
      v19 = sub_100005438();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100005828();
      }

      (*(v17 + 2))(v17, &__NSArray0__struct);
    }
  }
}

- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)a3 credentialIdentityType:(int64_t)a4 fromStoreWithIdentifier:(id)a5 forExtension:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = +[SFExternalCredentialIdentityStoreManager sharedManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000237C;
  v20[3] = &unk_10000C540;
  v24 = v14;
  v25 = a4;
  v21 = v12;
  v22 = v13;
  v23 = self;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  [v16 getCredentialIdentityStoreWithIdentifier:v15 completion:v20];
}

- (void)replaceCredentialIdentitiesWithIdentities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002E9C;
  v14[3] = &unk_10000C568;
  v7 = a4;
  v15 = v7;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002F28;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = v6;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v11];
  }

  else
  {
    v9 = sub_100005438();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100005920();
    }

    v10 = sub_100002EB4();
    (v8[2])(v8, 0, v10);
  }
}

- (void)getCredentialProviderExtensionStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000032E0;
    v6[3] = &unk_10000C680;
    v6[4] = self;
    v7 = v4;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v6];
  }
}

- (void)saveCredentialIdentities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000380C;
  v14[3] = &unk_10000C568;
  v7 = a4;
  v15 = v7;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003824;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = v6;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v11];
  }

  else
  {
    v9 = sub_100005438();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100005954();
    }

    v10 = sub_100002EB4();
    (v8[2])(v8, 0, v10);
  }
}

- (void)removeCredentialIdentities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003CC4;
  v14[3] = &unk_10000C568;
  v7 = a4;
  v15 = v7;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003CDC;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = v6;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v11];
  }

  else
  {
    v9 = sub_100005438();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100005988();
    }

    v10 = sub_100002EB4();
    (v8[2])(v8, 0, v10);
  }
}

- (void)removeAllCredentialIdentitiesWithCompletion:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000415C;
  v10[3] = &unk_10000C568;
  v4 = a3;
  v11 = v4;
  v5 = objc_retainBlock(v10);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004174;
    v8[3] = &unk_10000C6D0;
    v8[4] = self;
    v9 = v5;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v8];
  }

  else
  {
    v6 = sub_100005438();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000059BC();
    }

    v7 = sub_100002EB4();
    (v5[2])(v5, 0, v7);
  }
}

- (void)_prepareAndOpenCredentialIdentityStoreForCaller:(id)a3 createIfNeeded:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  storeAccessQueue = self->_storeAccessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004534;
  v13[3] = &unk_10000C6F8;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(storeAccessQueue, v13);
}

- (void)_queue_prepareAndOpenCredentialIdentityStoreForCaller:(id)a3 createIfNeeded:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_suspend(self->_storeAccessQueue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000046CC;
  v16[3] = &unk_10000C720;
  v16[4] = self;
  v10 = objc_retainBlock(v16);
  if ([v8 associatedExtensionEnabled])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000046D8;
    v12[3] = &unk_10000C770;
    v13 = v9;
    v14 = v10;
    v15 = a4;
    [(CredentialProviderExtensionHelper *)self _credentialIdentityStoreForCaller:v8 withCompletion:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:1 userInfo:0];
    (*(v9 + 2))(v9, 0, v11, v10);
  }
}

- (void)_credentialIdentityStoreForCaller:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = a3;
    v7 = [v6 credentialIdentityStoreIdentifier];
    v8 = [v6 associatedExtensionEnabled];

    if (v7 && (v8 & 1) != 0)
    {
      v9 = +[SFExternalCredentialIdentityStoreManager sharedManager];
      [v9 getCredentialIdentityStoreWithIdentifier:v7 completion:v5];
    }

    else
    {
      v10 = sub_100005438();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138543618;
        v12 = v7;
        v13 = 1024;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did not provide identity store for bundleIdentifier: %{public}@ extension enabled: %d", &v11, 0x12u);
      }

      v5[2](v5, 0);
    }
  }
}

- (void)_fetchXPCCallerInformationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 processIdentifier];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004BD8;
  v15[3] = &unk_10000C7C0;
  v7 = v4;
  v16 = v7;
  v8 = objc_retainBlock(v15);
  v9 = +[PKManager defaultManager];
  v10 = [v9 containingAppForPlugInWithPid:v6];

  if (v10)
  {
    (v8[2])(v8, v6, v10);
  }

  else
  {
    applicationStateMonitor = self->_applicationStateMonitor;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004D8C;
    v12[3] = &unk_10000C7E8;
    v13 = v8;
    v14 = v6;
    [(BKSApplicationStateMonitor *)applicationStateMonitor applicationInfoForPID:v6 completion:v12];
  }
}

- (void)removeCredentialIdentityStoreForApplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100004F74;
  v16 = &unk_10000C568;
  v7 = a4;
  v17 = v7;
  v8 = objc_retainBlock(&v13);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:0])
  {
    v9 = SFCredentialIdentityStoreIdentifierCreateWithApplicationBundleIdentifier();
    v10 = +[SFExternalCredentialIdentityStoreManager sharedManager];
    [v10 removeCredentialIdentityStoreWithIdentifier:v9 completion:v8];
  }

  else
  {
    v11 = sub_100005438();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100005AE4();
    }

    v12 = [NSString stringWithFormat:@"The calling process is missing the entitlement %@", SFCredentialProviderSystemEntitlement, v13, v14, v15, v16];
    v9 = sub_100005330(v12);

    (v8[2])(v8, 0, v9);
  }
}

- (BOOL)_hasEntitlementToProceedWithAccessType:(int64_t)a3
{
  v5 = +[NSXPCConnection currentConnection];
  LOBYTE(a3) = [(CredentialProviderExtensionHelper *)self _connection:v5 hasEntitlementToProceedWithAccessType:a3];

  return a3;
}

- (BOOL)_connection:(id)a3 hasEntitlementToProceedWithAccessType:(int64_t)a4
{
  if (!a4)
  {
    v5 = &SFCredentialProviderSystemEntitlement;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = &SFCredentialProviderDeveloperEntitlement;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  v6 = &stru_10000C868;
LABEL_7:
  v7 = [a3 valueForEntitlement:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end