@interface AccountTransformerSubscribedCalendar
- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation AccountTransformerSubscribedCalendar

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler
{
  configurationCopy = configuration;
  accountCopy = account;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000117EC;
  v17[3] = &unk_10001CCA0;
  storeCopy = store;
  handlerCopy = handler;
  v18 = configurationCopy;
  selfCopy = self;
  v20 = accountCopy;
  v16.receiver = self;
  v16.super_class = AccountTransformerSubscribedCalendar;
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
  storeCopy = store;
  handlerCopy = handler;
  [accountCopy setAuthenticated:1];
  [DAAccount daAccountSubclassWithBackingAccountInfo:accountCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100011EA0;
  v14 = v33[3] = &unk_10001CCC8;
  v34 = v14;
  v15 = accountCopy;
  v35 = v15;
  v16 = propertiesCopy;
  v36 = v16;
  [v16 enumerateKeysAndObjectsUsingBlock:v33];
  [v16 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100012360;
  v31 = sub_100012370;
  v32 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100012378;
  v17 = v21[3] = &unk_10001CBB8;
  v26 = &v27;
  v22 = v17;
  selfCopy = self;
  v18 = v15;
  v24 = v18;
  v19 = storeCopy;
  v25 = v19;
  v20 = [DMCPersonaHelper performBlockUnderPersona:v17 block:v21];
  handlerCopy[2](handlerCopy, v28[5]);

  _Block_object_dispose(&v27, 8);
}

- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties
{
  propertiesCopy = properties;
  if (recreation)
  {
    v6 = [DAAccount daAccountSubclassWithBackingAccountInfo:recreation];
    username = [v6 username];
    v8 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_username"];
    v9 = [username isEqualToString:v8];

    if (v9)
    {
      host = [v6 host];
      v11 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v12 = [host isEqualToString:v11];

      if (v12)
      {
        v13 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v14 = +[RMLog accountTransformerSubscribedCalendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 0;
        v15 = "Configuration change to hostname requires account to be recreated";
        v16 = &v18;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = +[RMLog accountTransformerSubscribedCalendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v15 = "Configuration change to username requires account to be recreated.";
        v16 = &v19;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
      }
    }

    v13 = 1;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v6 = +[RMLog accountTransformerSubscribedCalendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v29 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  payloadVisibleName = [declaration2 payloadVisibleName];
  payloadCalendarURL = [declaration2 payloadCalendarURL];
  v22 = configurationCopy;
  if (payloadVisibleName)
  {
    v11 = payloadVisibleName;
  }

  else
  {
    v11 = payloadCalendarURL;
  }

  if (payloadVisibleName)
  {
    v12 = payloadVisibleName;
  }

  else
  {
    v12 = @"-";
  }

  rMConfigurationUIDetails = [RMStoreLocalizable string:v11, RMConfigurationUIDetails];
  v14 = [RMStoreLocalizable string:@"UI.Description.SubscribedCalendar"];
  v15 = [RMStoreLocalizable string:@"UI.Key.Name"];
  v26[0] = v15;
  v26[1] = v12;
  v16 = [NSArray arrayWithObjects:v26 count:2];
  v27[0] = v16;
  v17 = [RMStoreLocalizable string:@"UI.Key.URL"];
  v25[0] = v17;
  v25[1] = payloadCalendarURL;
  v18 = [NSArray arrayWithObjects:v25 count:2];
  v27[1] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:2];
  v20 = [v21 configurationUIWithTitle:rMConfigurationUIDetails description:v14 details:v19];

  handlerCopy[2](handlerCopy, 1, v20, 0);
}

@end