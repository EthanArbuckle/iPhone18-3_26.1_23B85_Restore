@interface AccountTransformerGoogle
- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4;
- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation AccountTransformerGoogle

- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C87C;
  v17[3] = &unk_10001CCA0;
  v21 = a5;
  v22 = a6;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v16.receiver = self;
  v16.super_class = AccountTransformerGoogle;
  v12 = v21;
  v13 = v11;
  v14 = v22;
  v15 = v10;
  [(AccountTransformer *)&v16 accountPropertiesFromConfiguration:v15 account:v13 accountStore:v12 completionHandler:v17];
}

- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = ACAccountPropertyPersonaIdentifier;
  v11 = a6;
  v12 = [v8 objectForKeyedSubscript:v10];
  [v9 setAuthenticated:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000CEF0;
  v25[3] = &unk_10001CCC8;
  v13 = [[MailAccount alloc] initWithPersistentAccount:v9];
  v26 = v13;
  v14 = v9;
  v27 = v14;
  v15 = v8;
  v28 = v15;
  [v15 enumerateKeysAndObjectsUsingBlock:v25];
  +[MailAccount reloadAccounts];
  v16 = +[MailAccount mailAccounts];
  v17 = [v16 mutableCopy];

  [v17 addObject:v13];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000D398;
  v22[3] = &unk_10001CD78;
  v18 = v17;
  v23 = v18;
  v19 = v13;
  v24 = v19;
  v20 = [DMCPersonaHelper performBlockUnderPersona:v12 block:v22];
  v21 = +[RMLog accountTransformerGoogle];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000135D4(v19, v21);
  }

  v11[2](v11, 0);
}

- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = [[MailAccount alloc] initWithPersistentAccount:v6];

  v8 = [v7 username];
  v9 = [v5 objectForKeyedSubscript:@"_remotemanagement_username"];

  v10 = [v8 isEqualToString:v9];
  if ((v10 & 1) == 0)
  {
    v11 = +[RMLog accountTransformerGoogle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Configuration change to username requires account to be recreated.", v14, 2u);
    }
  }

  v12 = v10 ^ 1;

  return v12;
}

- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[RMLog accountTransformerGoogle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 declaration];
    v9 = [v8 declarationIdentifier];
    *buf = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  v10 = [v5 declaration];
  v11 = [v10 payloadVisibleName];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"UI.Description.Google";
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"-";
  }

  v14 = [RMStoreLocalizable string:v12];
  v15 = [RMStoreLocalizable string:@"UI.Description.Google"];
  v16 = [RMStoreLocalizable string:@"UI.Key.Name"];
  v20[0] = v16;
  v20[1] = v13;
  v17 = [NSArray arrayWithObjects:v20 count:2];
  v21 = v17;
  v18 = [NSArray arrayWithObjects:&v21 count:1];
  v19 = [RMConfigurationUIDetails configurationUIWithTitle:v14 description:v15 details:v18];

  v6[2](v6, 1, v19, 0);
}

@end