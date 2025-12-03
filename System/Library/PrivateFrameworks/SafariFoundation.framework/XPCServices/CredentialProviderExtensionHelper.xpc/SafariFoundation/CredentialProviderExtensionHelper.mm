@interface CredentialProviderExtensionHelper
- (BOOL)_connection:(id)_connection hasEntitlementToProceedWithAccessType:(int64_t)type;
- (BOOL)_hasEntitlementToProceedWithAccessType:(int64_t)type;
- (CredentialProviderExtensionHelper)init;
- (void)_credentialIdentityStoreForCaller:(id)caller withCompletion:(id)completion;
- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)criteria credentialIdentityType:(int64_t)type forExtension:(id)extension connection:(id)connection accessType:(int64_t)accessType completion:(id)completion;
- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)criteria credentialIdentityType:(int64_t)type fromStoreWithIdentifier:(id)identifier forExtension:(id)extension completion:(id)completion;
- (void)_fetchCredentialIdentitiesMatchingCriteriaSync:(id)sync credentialIdentityType:(int64_t)type accessType:(int64_t)accessType completion:(id)completion;
- (void)_fetchXPCCallerInformationWithCompletion:(id)completion;
- (void)_prepareAndOpenCredentialIdentityStoreForCaller:(id)caller createIfNeeded:(BOOL)needed completion:(id)completion;
- (void)_queue_prepareAndOpenCredentialIdentityStoreForCaller:(id)caller createIfNeeded:(BOOL)needed completion:(id)completion;
- (void)dealloc;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)completion;
- (void)fetchCredentialIdentitiesForService:(id)service serviceIdentifierType:(int64_t)type credentialIdentityTypes:(int64_t)types completion:(id)completion;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion;
- (void)getCredentialProviderExtensionStateWithCompletion:(id)completion;
- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion;
- (void)removeCredentialIdentities:(id)identities completion:(id)completion;
- (void)removeCredentialIdentityStoreForApplication:(id)application completion:(id)completion;
- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion;
- (void)saveCredentialIdentities:(id)identities completion:(id)completion;
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

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  completionCopy = completion;
  v7 = [_SFMatchCriteria matchDomains:domains];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:1 accessType:0 completion:completionCopy];
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  domainsCopy = domains;
  v12 = +[NSXPCConnection currentConnection];
  v11 = [_SFMatchCriteria matchDomains:domainsCopy];

  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:1 forExtension:extensionCopy connection:v12 accessType:0 completion:completionCopy];
}

- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  v8 = [_SFMatchCriteria matchDomains:domainsCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000011C4;
  v11[3] = &unk_10000C328;
  v12 = domainsCopy;
  v13 = completionCopy;
  v9 = domainsCopy;
  v10 = completionCopy;
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v8 credentialIdentityType:2 accessType:0 completion:v11];
}

- (void)fetchAllPaskeyCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[_SFMatchCriteria matchAll];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v5 credentialIdentityType:2 accessType:0 completion:completionCopy];
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  completionCopy = completion;
  v7 = [_SFMatchCriteria matchDomains:domains];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:3 accessType:0 completion:completionCopy];
}

- (void)fetchAllCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  extensionCopy = extension;
  v10 = +[NSXPCConnection currentConnection];
  if ([domainsCopy count])
  {
    [_SFMatchCriteria matchDomains:domainsCopy];
  }

  else
  {
    +[_SFMatchCriteria matchAll];
  }
  v11 = ;
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:3 forExtension:extensionCopy connection:v10 accessType:0 completion:completionCopy];
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains forExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  domainsCopy = domains;
  v12 = +[NSXPCConnection currentConnection];
  v11 = [_SFMatchCriteria matchDomains:domainsCopy];

  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v11 credentialIdentityType:4 forExtension:extensionCopy connection:v12 accessType:0 completion:completionCopy];
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  completionCopy = completion;
  v7 = [_SFMatchCriteria matchDomains:domains];
  [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteriaSync:v7 credentialIdentityType:4 accessType:0 completion:completionCopy];
}

- (void)fetchCredentialIdentitiesForService:(id)service serviceIdentifierType:(int64_t)type credentialIdentityTypes:(int64_t)types completion:(id)completion
{
  typeCopy = type;
  serviceCopy = service;
  completionCopy = completion;
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
  extensionsSync = [v11 extensionsSync];

  v13 = [extensionsSync countByEnumeratingWithState:&v31 objects:v39 count:16];
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
        objc_enumerationMutation(extensionsSync);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      sf_bundleIdentifierForContainingApp = [v17 sf_bundleIdentifierForContainingApp];
      v19 = [sf_bundleIdentifierForContainingApp isEqualToString:v10];

      if (v19)
      {
        identifier = [v17 identifier];

        if (!identifier)
        {
          goto LABEL_18;
        }

        v21 = serviceCopy;
        if ([serviceCopy length])
        {
          if (typeCopy == 1)
          {
            v22 = [NSURL URLWithString:serviceCopy];
            host = [v22 host];
            safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
            v37 = safari_highLevelDomainForPasswordManager;
            v26 = [NSArray arrayWithObjects:&v37 count:1];
            v23 = [_SFMatchCriteria matchDomains:v26];

            v21 = serviceCopy;
          }

          else
          {
            if (typeCopy)
            {
              v23 = 0;
              goto LABEL_23;
            }

            v38 = serviceCopy;
            v22 = [NSArray arrayWithObjects:&v38 count:1];
            v23 = [_SFMatchCriteria matchDomains:v22];
          }
        }

        else
        {
          v23 = +[_SFMatchCriteria matchAll];
        }

LABEL_23:
        [(CredentialProviderExtensionHelper *)self _fetchCredentialIdentitiesMatchingCriteria:v23 credentialIdentityType:types forExtension:v10 connection:v9 accessType:1 completion:completionCopy];

        goto LABEL_24;
      }
    }

    v14 = [extensionsSync countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_12:

LABEL_18:
  completionCopy[2](completionCopy, &__NSArray0__struct);
  v21 = serviceCopy;
LABEL_24:
}

- (void)_fetchCredentialIdentitiesMatchingCriteriaSync:(id)sync credentialIdentityType:(int64_t)type accessType:(int64_t)accessType completion:(id)completion
{
  syncCopy = sync;
  completionCopy = completion;
  v12 = +[NSXPCConnection currentConnection];
  v13 = +[SFCredentialProviderExtensionManager sharedManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100001AD4;
  v17[3] = &unk_10000C3A0;
  v17[4] = self;
  v18 = syncCopy;
  typeCopy = type;
  accessTypeCopy = accessType;
  v19 = v12;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v12;
  v16 = syncCopy;
  [v13 getEnabledExtensionsWithCompletion:v17];
}

- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)criteria credentialIdentityType:(int64_t)type forExtension:(id)extension connection:(id)connection accessType:(int64_t)accessType completion:(id)completion
{
  criteriaCopy = criteria;
  extensionCopy = extension;
  connectionCopy = connection;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(CredentialProviderExtensionHelper *)self _connection:connectionCopy hasEntitlementToProceedWithAccessType:accessType])
    {
      v18 = +[SFCredentialProviderExtensionManager sharedManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100001F04;
      v20[3] = &unk_10000C3F0;
      v22 = completionCopy;
      typeCopy = type;
      v20[4] = self;
      v21 = criteriaCopy;
      [v18 getExtensionWithBundleID:extensionCopy completion:v20];
    }

    else
    {
      v19 = sub_100005438();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100005828();
      }

      (*(completionCopy + 2))(completionCopy, &__NSArray0__struct);
    }
  }
}

- (void)_fetchCredentialIdentitiesMatchingCriteria:(id)criteria credentialIdentityType:(int64_t)type fromStoreWithIdentifier:(id)identifier forExtension:(id)extension completion:(id)completion
{
  criteriaCopy = criteria;
  extensionCopy = extension;
  completionCopy = completion;
  identifierCopy = identifier;
  v16 = +[SFExternalCredentialIdentityStoreManager sharedManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000237C;
  v20[3] = &unk_10000C540;
  v24 = completionCopy;
  typeCopy = type;
  v21 = criteriaCopy;
  v22 = extensionCopy;
  selfCopy = self;
  v17 = extensionCopy;
  v18 = criteriaCopy;
  v19 = completionCopy;
  [v16 getCredentialIdentityStoreWithIdentifier:identifierCopy completion:v20];
}

- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002E9C;
  v14[3] = &unk_10000C568;
  completionCopy = completion;
  v15 = completionCopy;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002F28;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = identitiesCopy;
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

- (void)getCredentialProviderExtensionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000032E0;
    v6[3] = &unk_10000C680;
    v6[4] = self;
    v7 = completionCopy;
    [(CredentialProviderExtensionHelper *)self _fetchXPCCallerInformationWithCompletion:v6];
  }
}

- (void)saveCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000380C;
  v14[3] = &unk_10000C568;
  completionCopy = completion;
  v15 = completionCopy;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003824;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = identitiesCopy;
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

- (void)removeCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003CC4;
  v14[3] = &unk_10000C568;
  completionCopy = completion;
  v15 = completionCopy;
  v8 = objc_retainBlock(v14);
  if ([(CredentialProviderExtensionHelper *)self _hasEntitlementToProceedWithAccessType:1])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003CDC;
    v11[3] = &unk_10000C608;
    v11[4] = self;
    v13 = v8;
    v12 = identitiesCopy;
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

- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000415C;
  v10[3] = &unk_10000C568;
  completionCopy = completion;
  v11 = completionCopy;
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

- (void)_prepareAndOpenCredentialIdentityStoreForCaller:(id)caller createIfNeeded:(BOOL)needed completion:(id)completion
{
  callerCopy = caller;
  completionCopy = completion;
  storeAccessQueue = self->_storeAccessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004534;
  v13[3] = &unk_10000C6F8;
  v13[4] = self;
  v14 = callerCopy;
  neededCopy = needed;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = callerCopy;
  dispatch_async(storeAccessQueue, v13);
}

- (void)_queue_prepareAndOpenCredentialIdentityStoreForCaller:(id)caller createIfNeeded:(BOOL)needed completion:(id)completion
{
  callerCopy = caller;
  completionCopy = completion;
  dispatch_suspend(self->_storeAccessQueue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000046CC;
  v16[3] = &unk_10000C720;
  v16[4] = self;
  v10 = objc_retainBlock(v16);
  if ([callerCopy associatedExtensionEnabled])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000046D8;
    v12[3] = &unk_10000C770;
    v13 = completionCopy;
    v14 = v10;
    neededCopy = needed;
    [(CredentialProviderExtensionHelper *)self _credentialIdentityStoreForCaller:callerCopy withCompletion:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v11, v10);
  }
}

- (void)_credentialIdentityStoreForCaller:(id)caller withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    callerCopy = caller;
    credentialIdentityStoreIdentifier = [callerCopy credentialIdentityStoreIdentifier];
    associatedExtensionEnabled = [callerCopy associatedExtensionEnabled];

    if (credentialIdentityStoreIdentifier && (associatedExtensionEnabled & 1) != 0)
    {
      v9 = +[SFExternalCredentialIdentityStoreManager sharedManager];
      [v9 getCredentialIdentityStoreWithIdentifier:credentialIdentityStoreIdentifier completion:completionCopy];
    }

    else
    {
      v10 = sub_100005438();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138543618;
        v12 = credentialIdentityStoreIdentifier;
        v13 = 1024;
        v14 = associatedExtensionEnabled;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did not provide identity store for bundleIdentifier: %{public}@ extension enabled: %d", &v11, 0x12u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_fetchXPCCallerInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSXPCConnection currentConnection];
  processIdentifier = [v5 processIdentifier];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004BD8;
  v15[3] = &unk_10000C7C0;
  v7 = completionCopy;
  v16 = v7;
  v8 = objc_retainBlock(v15);
  v9 = +[PKManager defaultManager];
  v10 = [v9 containingAppForPlugInWithPid:processIdentifier];

  if (v10)
  {
    (v8[2])(v8, processIdentifier, v10);
  }

  else
  {
    applicationStateMonitor = self->_applicationStateMonitor;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004D8C;
    v12[3] = &unk_10000C7E8;
    v13 = v8;
    v14 = processIdentifier;
    [(BKSApplicationStateMonitor *)applicationStateMonitor applicationInfoForPID:processIdentifier completion:v12];
  }
}

- (void)removeCredentialIdentityStoreForApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100004F74;
  v16 = &unk_10000C568;
  completionCopy = completion;
  v17 = completionCopy;
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

- (BOOL)_hasEntitlementToProceedWithAccessType:(int64_t)type
{
  v5 = +[NSXPCConnection currentConnection];
  LOBYTE(type) = [(CredentialProviderExtensionHelper *)self _connection:v5 hasEntitlementToProceedWithAccessType:type];

  return type;
}

- (BOOL)_connection:(id)_connection hasEntitlementToProceedWithAccessType:(int64_t)type
{
  if (!type)
  {
    v5 = &SFCredentialProviderSystemEntitlement;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v5 = &SFCredentialProviderDeveloperEntitlement;
LABEL_5:
    v6 = *v5;
    goto LABEL_7;
  }

  v6 = &stru_10000C868;
LABEL_7:
  v7 = [_connection valueForEntitlement:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end