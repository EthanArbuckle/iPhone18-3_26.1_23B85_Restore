@interface AccountAdapter
- (AccountAdapter)init;
- (BOOL)_unassignAssetReference:(id)a3 scope:(int64_t)a4 error:(id *)a5;
- (id)_dataclassActionsForRemovalOfAccount:(id)a3;
- (id)accountKeyFromConfiguration:(id)a3;
- (id)combinedServerTokensFromConfiguration:(id)a3;
- (id)createAccountWithTypeIdentifier:(id)a3;
- (id)getRemotelyManagedAccounts;
- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 completionHandler:(id)a5;
- (void)applyProperties:(id)a3 toAccount:(id)a4 configuration:(id)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4;
- (void)removeAccount:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
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

- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 declaration];
  v11 = [v10 declarationType];
  [AccountTransformer transformerClassForConfigurationType:v11];
  v12 = objc_opt_new();

  if (v12)
  {
    v13 = [(AccountAdapter *)self accountStore];
    [v12 accountPropertiesFromConfiguration:v14 account:v8 accountStore:v13 completionHandler:v9];
  }

  else
  {
    v13 = +[RMErrorUtilities createInternalError];
    (*(v9 + 2))(v9, 0, 0, v13);
  }
}

- (id)getRemotelyManagedAccounts
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(AccountAdapter *)self accountStore];
  v7 = [v6 accounts];
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
  [v7 enumerateObjectsUsingBlock:v30];

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

- (id)accountKeyFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 store];
  v5 = [v4 identifier];
  v6 = [v3 declaration];

  v7 = [v6 declarationIdentifier];
  v8 = [NSString stringWithFormat:@"%@-%@", v5, v7];

  return v8;
}

- (id)combinedServerTokensFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 combinedServerTokensFromConfiguration:v3];

  return v5;
}

- (id)createAccountWithTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AccountAdapter *)self accountStore];
  v6 = [v5 accountTypeWithAccountTypeIdentifier:v4];

  v7 = [[ACAccount alloc] initWithAccountType:v6];

  return v7;
}

- (void)applyProperties:(id)a3 toAccount:(id)a4 configuration:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a5 declaration];
  v14 = [v13 declarationType];

  [AccountTransformer transformerClassForConfigurationType:v14];
  v15 = objc_opt_new();
  if (v15)
  {
    v16 = [(AccountAdapter *)self accountStore];
    [v15 applyProperties:v10 toAccount:v11 accountStore:v16 completionHandler:v12];
  }

  else
  {
    v17 = +[RMLog accountAdapter];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012980(v14, v17);
    }

    v16 = +[RMErrorUtilities createInternalError];
    v12[2](v12, v16);
  }
}

- (void)removeAccount:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 objectForKeyedSubscript:@"RemoteManagementDeclarationKey"];
  if (v10)
  {
    v11 = [RMStoreDeclarationKey newDeclarationKey:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(AccountAdapter *)self _dataclassActionsForRemovalOfAccount:v9];
  v13 = [(AccountAdapter *)self accountStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100001D84;
  v16[3] = &unk_10001C620;
  v17 = v11;
  v18 = self;
  v19 = v8;
  v20 = a4;
  v14 = v8;
  v15 = v11;
  [v13 removeAccount:v9 withDataclassActions:v12 completion:v16];
}

- (id)_dataclassActionsForRemovalOfAccount:(id)a3
{
  v4 = a3;
  v5 = [(AccountAdapter *)self accountStore];
  v6 = [v5 dataclassActionsForAccountDeletion:v4];

  v7 = +[RMLog accountAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000129F8(v6, v7);
  }

  if (v6)
  {
    v23 = v4;
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v6 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
    v26 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      v24 = v9;
      v25 = v6;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v6 objectForKeyedSubscript:v14];
          if ([v15 count] == 1)
          {
            v16 = [v15 lastObject];
            [v8 setObject:v16 forKey:v14];
          }

          else if ([v15 count] < 2)
          {
            v16 = +[RMLog accountAdapter];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v36 = v14;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Failed to get possible actions for dataclass %{public}@ during account removal.", buf, 0xCu);
            }
          }

          else
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
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
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v27 + 1) + 8 * j);
                  if ([v21 isDestructive])
                  {
                    v8 = v26;
                    [v26 setObject:v21 forKey:v14];
                    v9 = v24;
                    v6 = v25;
                    goto LABEL_24;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v27 objects:v37 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }

              v6 = v25;
              v8 = v26;
              v9 = v24;
            }
          }

LABEL_24:
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v11);
    }

    v4 = v23;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 declaration];
  v7 = [v6 declarationType];
  [AccountTransformer transformerClassForConfigurationType:v7];
  v8 = objc_opt_new();

  if (v8)
  {
    [v8 configurationUIForConfiguration:v10 completionHandler:v5];
  }

  else
  {
    v9 = +[RMErrorUtilities createInternalError];
    (*(v5 + 2))(v5, 0, 0, v9);
  }
}

- (BOOL)_unassignAssetReference:(id)a3 scope:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
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
  [RMSubscriberStore unassignAssets:v7 scope:a4 completionHandler:&v12];
  [v8 waitForCompletion];
  if (a5)
  {
    v9 = v19[5];
    if (v9)
    {
      *a5 = v9;
    }
  }

  v10 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v10;
}

@end