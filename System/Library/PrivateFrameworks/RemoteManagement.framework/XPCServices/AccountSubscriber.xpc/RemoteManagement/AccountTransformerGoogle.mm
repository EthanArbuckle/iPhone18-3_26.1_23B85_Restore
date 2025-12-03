@interface AccountTransformerGoogle
- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation AccountTransformerGoogle

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler
{
  configurationCopy = configuration;
  accountCopy = account;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C87C;
  v17[3] = &unk_10001CCA0;
  storeCopy = store;
  handlerCopy = handler;
  v18 = configurationCopy;
  selfCopy = self;
  v20 = accountCopy;
  v16.receiver = self;
  v16.super_class = AccountTransformerGoogle;
  v12 = storeCopy;
  v13 = accountCopy;
  v14 = handlerCopy;
  v15 = configurationCopy;
  [(AccountTransformer *)&v16 accountPropertiesFromConfiguration:v15 account:v13 accountStore:v12 completionHandler:v17];
}

- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler
{
  propertiesCopy = properties;
  accountCopy = account;
  v10 = ACAccountPropertyPersonaIdentifier;
  handlerCopy = handler;
  v12 = [propertiesCopy objectForKeyedSubscript:v10];
  [accountCopy setAuthenticated:1];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000CEF0;
  v25[3] = &unk_10001CCC8;
  v13 = [[MailAccount alloc] initWithPersistentAccount:accountCopy];
  v26 = v13;
  v14 = accountCopy;
  v27 = v14;
  v15 = propertiesCopy;
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

  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties
{
  if (!recreation)
  {
    return 0;
  }

  propertiesCopy = properties;
  recreationCopy = recreation;
  v7 = [[MailAccount alloc] initWithPersistentAccount:recreationCopy];

  username = [v7 username];
  v9 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_username"];

  v10 = [username isEqualToString:v9];
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

- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v7 = +[RMLog accountTransformerGoogle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v23 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  payloadVisibleName = [declaration2 payloadVisibleName];
  if (payloadVisibleName)
  {
    v12 = payloadVisibleName;
  }

  else
  {
    v12 = @"UI.Description.Google";
  }

  if (payloadVisibleName)
  {
    v13 = payloadVisibleName;
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

  handlerCopy[2](handlerCopy, 1, v19, 0);
}

@end