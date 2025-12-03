@interface AccountApplicator
+ (id)supportedConfigurationTypes;
- (AccountApplicator)init;
- (AccountApplicator)initWithAdapter:(id)adapter;
- (void)_createAccountIfNeededAndApplyProperties:(id)properties configuration:(id)configuration properties:(id)a5 completionHandler:(id)handler;
- (void)_invalidateAllConfigurations:(id)configurations completionHandler:(id)handler;
- (void)applyConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation AccountApplicator

- (AccountApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(AccountApplicator *)self initWithAdapter:v3];

  return v4;
}

- (AccountApplicator)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v9.receiver = self;
  v9.super_class = AccountApplicator;
  v6 = [(AccountApplicator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, adapter);
  }

  return v7;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  v3 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  v4 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  v5 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  v6 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  v7 = +[RMModelAccountMailDeclaration registeredIdentifier];
  v8 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  v9 = [NSSet setWithObjects:v2, v3, v4, v5, v6, v7, v8, 0];

  return v9;
}

- (void)applyConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[RMManagedDevice currentManagedDevice];
  LODWORD(identifier) = [v8 isSharediPad];

  if ((identifier ^ 1) == scope)
  {
    adapter = [(AccountApplicator *)self adapter];
    getRemotelyManagedAccounts = [adapter getRemotelyManagedAccounts];

    v10 = [getRemotelyManagedAccounts objectForKeyedSubscript:@"Managed"];
    v63 = [v10 mutableCopy];

    v11 = [getRemotelyManagedAccounts objectForKeyedSubscript:@"Orphaned"];
    allValues = [v11 allValues];
    v56 = [allValues mutableCopy];

    group = dispatch_group_create();
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = configurationsCopy;
    v64 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v64)
    {
      v62 = *v92;
      do
      {
        v13 = 0;
        do
        {
          if (*v92 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v91 + 1) + 8 * v13);
          dispatch_group_enter(group);
          store = [v14 store];
          scope = [store scope];
          v17 = +[RMManagedDevice currentManagedDevice];
          isSharediPad = [v17 isSharediPad];

          if (scope == (isSharediPad ^ 1))
          {
            adapter2 = [(AccountApplicator *)self adapter];
            v20 = [adapter2 accountKeyFromConfiguration:v14];

            *v100 = 0;
            *&v100[8] = v100;
            *&v100[16] = 0x3032000000;
            v101 = sub_10000301C;
            v102 = sub_10000302C;
            v103 = [v63 objectForKeyedSubscript:v20];
            identifier = [*(*&v100[8] + 40) identifier];
            v22 = identifier;
            v23 = &stru_10001CEA8;
            if (identifier)
            {
              v23 = identifier;
            }

            v24 = v23;

            accountType = [*(*&v100[8] + 40) accountType];
            accountTypeDescription = [accountType accountTypeDescription];
            v27 = accountTypeDescription;
            v28 = &stru_10001CEA8;
            if (accountTypeDescription)
            {
              v28 = accountTypeDescription;
            }

            v29 = v28;

            [v63 removeObjectForKey:v20];
            if (!*(*&v100[8] + 40))
            {
              goto LABEL_20;
            }

            adapter3 = [(AccountApplicator *)self adapter];
            v31 = [adapter3 combinedServerTokensFromConfiguration:v14];
            v32 = [*(*&v100[8] + 40) objectForKeyedSubscript:@"RemoteManagementServerTokens"];
            v33 = [v31 isEqualToString:v32];

            if (v33)
            {
              v34 = +[RMLog accountApplicator];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v97 = v24;
                v98 = 2114;
                v99 = v29;
                _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Skipping unchanged configuration for account %{public}@ of type %{public}@", buf, 0x16u);
              }

              dispatch_group_leave(group);
            }

            else
            {
LABEL_20:
              v37 = +[RMLog accountApplicator];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                declaration = [v14 declaration];
                declarationIdentifier = [declaration declarationIdentifier];
                *buf = 138543362;
                v97 = declarationIdentifier;
                _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Processing configuration: %{public}@", buf, 0xCu);
              }

              adapter4 = [(AccountApplicator *)self adapter];
              v39 = *(*&v100[8] + 40);
              v79[0] = _NSConcreteStackBlock;
              v79[1] = 3221225472;
              v79[2] = sub_100003034;
              v79[3] = &unk_10001C708;
              v79[4] = v14;
              v80 = store;
              v81 = group;
              v85 = v100;
              v82 = v24;
              v83 = v29;
              selfCopy = self;
              scopeCopy = scope;
              [adapter4 accountPropertiesFromConfiguration:v14 account:v39 completionHandler:v79];
            }

            _Block_object_dispose(v100, 8);
          }

          else
          {
            v35 = +[RMLog accountApplicator];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              sub_100012A84(&v89, v90, v35);
            }

            declaration2 = [v14 declaration];
            v87[0] = _NSConcreteStackBlock;
            v87[1] = 3221225472;
            v87[2] = sub_100003014;
            v87[3] = &unk_10001C690;
            v88 = group;
            [store configurationFailedToApply:declaration2 error:0 completionHandler:v87];

            v20 = v88;
          }

          v13 = v13 + 1;
        }

        while (v64 != v13);
        v64 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v64);
    }

    allValues2 = [v63 allValues];
    [v56 addObjectsFromArray:allValues2];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v65 = v56;
    v43 = [v65 countByEnumeratingWithState:&v75 objects:v95 count:16];
    if (v43)
    {
      v44 = *v76;
      do
      {
        v45 = 0;
        do
        {
          if (*v76 != v44)
          {
            objc_enumerationMutation(v65);
          }

          v46 = *(*(&v75 + 1) + 8 * v45);
          dispatch_group_enter(group);
          identifier2 = [v46 identifier];
          accountType2 = [v46 accountType];
          accountTypeDescription2 = [accountType2 accountTypeDescription];

          v50 = +[RMLog accountApplicator];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *v100 = 138543618;
            *&v100[4] = identifier2;
            *&v100[12] = 2114;
            *&v100[14] = accountTypeDescription2;
            _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Removing account: %{public}@ of type %{public}@", v100, 0x16u);
          }

          adapter5 = [(AccountApplicator *)self adapter];
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_1000034C4;
          v71[3] = &unk_10001C730;
          v72 = identifier2;
          v73 = accountTypeDescription2;
          v74 = group;
          v52 = accountTypeDescription2;
          v53 = identifier2;
          [adapter5 removeAccount:v46 scope:scope completionHandler:v71];

          v45 = v45 + 1;
        }

        while (v43 != v45);
        v43 = [v65 countByEnumeratingWithState:&v75 objects:v95 count:16];
      }

      while (v43);
    }

    v54 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003558;
    block[3] = &unk_10001C758;
    v70 = handlerCopy;
    dispatch_group_notify(group, v54, block);

    v55 = handlerCopy;
  }

  else
  {
    v55 = handlerCopy;
    [(AccountApplicator *)self _invalidateAllConfigurations:configurationsCopy completionHandler:handlerCopy];
  }
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  adapter = [(AccountApplicator *)self adapter];
  [adapter configurationUIForConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (void)_invalidateAllConfigurations:(id)configurations completionHandler:(id)handler
{
  configurationsCopy = configurations;
  handlerCopy = handler;
  if ([configurationsCopy count])
  {
    v6 = +[RMLog accountApplicator];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100012DC4(v6);
    }
  }

  v7 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = configurationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        store = [v13 store];
        declaration = [v13 declaration];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100003860;
        v21[3] = &unk_10001C690;
        v22 = v7;
        [store configurationFailedToApply:declaration error:0 completionHandler:v21];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v16 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003868;
  block[3] = &unk_10001C758;
  v20 = handlerCopy;
  v17 = handlerCopy;
  dispatch_group_notify(v7, v16, block);
}

- (void)_createAccountIfNeededAndApplyProperties:(id)properties configuration:(id)configuration properties:(id)a5 completionHandler:(id)handler
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  v12 = a5;
  handlerCopy = handler;
  if (!propertiesCopy)
  {
    v14 = +[RMLog accountApplicator];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100012E08(configurationCopy, v14);
    }

    adapter = [(AccountApplicator *)self adapter];
    v16 = [v12 objectForKeyedSubscript:@"RemoteManagementAccountType"];
    propertiesCopy = [adapter createAccountWithTypeIdentifier:v16];
  }

  identifier = [propertiesCopy identifier];
  v18 = +[RMLog accountApplicator];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100012EB8(identifier, configurationCopy, v18);
  }

  adapter2 = [(AccountApplicator *)self adapter];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003A64;
  v23[3] = &unk_10001C7A8;
  v24 = configurationCopy;
  v25 = identifier;
  v26 = handlerCopy;
  v20 = handlerCopy;
  v21 = identifier;
  v22 = configurationCopy;
  [adapter2 applyProperties:v12 toAccount:propertiesCopy configuration:v22 completionHandler:v23];
}

@end