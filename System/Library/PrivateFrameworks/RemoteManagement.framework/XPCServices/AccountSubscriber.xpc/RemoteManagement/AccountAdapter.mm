@interface AccountAdapter
- (AccountAdapter)init;
- (BOOL)_unassignAssetReference:(id)reference scope:(int64_t)scope error:(id *)error;
- (id)_dataclassActionsForRemovalOfAccount:(id)account;
- (id)accountKeyFromConfiguration:(id)configuration;
- (id)combinedServerTokensFromConfiguration:(id)configuration;
- (id)createAccountWithTypeIdentifier:(id)identifier;
- (id)getRemotelyManagedAccounts;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account completionHandler:(id)handler;
- (void)applyProperties:(id)properties toAccount:(id)account configuration:(id)configuration completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler;
- (void)removeAccount:(id)account scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation AccountAdapter

- (AccountAdapter)init
{
  v6.receiver = self;
  v6.super_class = AccountAdapter;
  v2 = [(AccountAdapter *)&v6 init];
  if (v2)
  {
    v3 = +[ACAccountStore rm_defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account completionHandler:(id)handler
{
  configurationCopy = configuration;
  accountCopy = account;
  handlerCopy = handler;
  declaration = [configurationCopy declaration];
  declarationType = [declaration declarationType];
  [AccountTransformer transformerClassForConfigurationType:declarationType];
  v12 = objc_opt_new();

  if (v12)
  {
    accountStore = [(AccountAdapter *)self accountStore];
    [v12 accountPropertiesFromConfiguration:configurationCopy account:accountCopy accountStore:accountStore completionHandler:handlerCopy];
  }

  else
  {
    accountStore = +[RMErrorUtilities createInternalError];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, accountStore);
  }
}

- (id)getRemotelyManagedAccounts
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  accountStore = [(AccountAdapter *)self accountStore];
  accounts = [accountStore accounts];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000017BC;
  v30[3] = &unk_10001C5F8;
  v23 = v3;
  v31 = v23;
  v8 = v4;
  v32 = v8;
  v9 = v5;
  v33 = v9;
  [accounts enumerateObjectsUsingBlock:v30];

  v24 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];
        v16 = [v8 containsObject:v15];

        if ((v16 & 1) == 0)
        {
          v17 = v14;
          v18 = [v17 objectForKeyedSubscript:@"RemoteManagementSourceIdentifier"];
          v19 = [v17 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];

          v20 = [NSString stringWithFormat:@"%@-%@", v18, v19];

          [v24 setObject:v17 forKeyedSubscript:v20];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  v34[0] = @"Managed";
  v34[1] = @"Orphaned";
  v35[0] = v23;
  v35[1] = v24;
  v21 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

  return v21;
}

- (id)accountKeyFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  store = [configurationCopy store];
  identifier = [store identifier];
  declaration = [configurationCopy declaration];

  declarationIdentifier = [declaration declarationIdentifier];
  v8 = [NSString stringWithFormat:@"%@-%@", identifier, declarationIdentifier];

  return v8;
}

- (id)combinedServerTokensFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_opt_new();
  v5 = [v4 combinedServerTokensFromConfiguration:configurationCopy];

  return v5;
}

- (id)createAccountWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountStore = [(AccountAdapter *)self accountStore];
  v6 = [accountStore accountTypeWithAccountTypeIdentifier:identifierCopy];

  v7 = [[ACAccount alloc] initWithAccountType:v6];

  return v7;
}

- (void)applyProperties:(id)properties toAccount:(id)account configuration:(id)configuration completionHandler:(id)handler
{
  propertiesCopy = properties;
  accountCopy = account;
  handlerCopy = handler;
  declaration = [configuration declaration];
  declarationType = [declaration declarationType];

  [AccountTransformer transformerClassForConfigurationType:declarationType];
  v15 = objc_opt_new();
  if (v15)
  {
    accountStore = [(AccountAdapter *)self accountStore];
    [v15 applyProperties:propertiesCopy toAccount:accountCopy accountStore:accountStore completionHandler:handlerCopy];
  }

  else
  {
    v17 = +[RMLog accountAdapter];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012980(declarationType, v17);
    }

    accountStore = +[RMErrorUtilities createInternalError];
    handlerCopy[2](handlerCopy, accountStore);
  }
}

- (void)removeAccount:(id)account scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  accountCopy = account;
  v10 = [accountCopy objectForKeyedSubscript:@"RemoteManagementDeclarationKey"];
  if (v10)
  {
    v11 = [RMStoreDeclarationKey newDeclarationKey:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(AccountAdapter *)self _dataclassActionsForRemovalOfAccount:accountCopy];
  accountStore = [(AccountAdapter *)self accountStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100001D84;
  v16[3] = &unk_10001C620;
  v17 = v11;
  selfCopy = self;
  v19 = handlerCopy;
  scopeCopy = scope;
  v14 = handlerCopy;
  v15 = v11;
  [accountStore removeAccount:accountCopy withDataclassActions:v12 completion:v16];
}

- (id)_dataclassActionsForRemovalOfAccount:(id)account
{
  accountCopy = account;
  accountStore = [(AccountAdapter *)self accountStore];
  v6 = [accountStore dataclassActionsForAccountDeletion:accountCopy];

  v7 = +[RMLog accountAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000129F8(v6, v7);
  }

  if (v6)
  {
    v23 = accountCopy;
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [v6 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v31 objects:v38 count:16];
    v26 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v24 = allKeys;
      v25 = v6;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v6 objectForKeyedSubscript:v14];
          if ([v15 count] == 1)
          {
            lastObject = [v15 lastObject];
            [v8 setObject:lastObject forKey:v14];
          }

          else if ([v15 count] < 2)
          {
            lastObject = +[RMLog accountAdapter];
            if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v36 = v14;
              _os_log_debug_impl(&_mh_execute_header, lastObject, OS_LOG_TYPE_DEBUG, "Failed to get possible actions for dataclass %{public}@ during account removal.", buf, 0xCu);
            }
          }

          else
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            lastObject = v15;
            v17 = [lastObject countByEnumeratingWithState:&v27 objects:v37 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v28;
              while (2)
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v28 != v19)
                  {
                    objc_enumerationMutation(lastObject);
                  }

                  v21 = *(*(&v27 + 1) + 8 * j);
                  if ([v21 isDestructive])
                  {
                    v8 = v26;
                    [v26 setObject:v21 forKey:v14];
                    allKeys = v24;
                    v6 = v25;
                    goto LABEL_24;
                  }
                }

                v18 = [lastObject countByEnumeratingWithState:&v27 objects:v37 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }

              v6 = v25;
              v8 = v26;
              allKeys = v24;
            }
          }

LABEL_24:
        }

        v11 = [allKeys countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v11);
    }

    accountCopy = v23;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  declaration = [configurationCopy declaration];
  declarationType = [declaration declarationType];
  [AccountTransformer transformerClassForConfigurationType:declarationType];
  v8 = objc_opt_new();

  if (v8)
  {
    [v8 configurationUIForConfiguration:configurationCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = +[RMErrorUtilities createInternalError];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
  }
}

- (BOOL)_unassignAssetReference:(id)reference scope:(int64_t)scope error:(id *)error
{
  referenceCopy = reference;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100002364;
  v22 = sub_100002374;
  v23 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000237C;
  v15 = &unk_10001C648;
  v17 = &v18;
  v8 = objc_opt_new();
  v16 = v8;
  [RMSubscriberStore unassignAssets:referenceCopy scope:scope completionHandler:&v12];
  [v8 waitForCompletion];
  if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v10;
}

@end