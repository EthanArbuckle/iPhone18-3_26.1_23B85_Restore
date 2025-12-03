@interface AccountTransformer
+ (Class)transformerClassForConfigurationType:(id)type;
- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties;
- (id)_personaIDForConfiguration:(id)configuration accountStore:(id)store;
- (id)combinedServerTokensFromConfiguration:(id)configuration;
- (id)declarationKeyForConfiguration:(id)configuration;
- (id)resolveKeychainAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error;
- (id)resolveUserIdentityAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error;
- (id)resolveUserNameAndPasswordAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error;
- (id)saveAccount:(id)account accountStore:(id)store;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)addAccountDescriptionToProperties:(id)properties account:(id)account description:(id)description;
- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler;
@end

@implementation AccountTransformer

+ (Class)transformerClassForConfigurationType:(id)type
{
  v3 = qword_1000220E0;
  typeCopy = type;
  if (v3 != -1)
  {
    sub_100013330();
  }

  v5 = [qword_1000220D8 objectForKeyedSubscript:typeCopy];

  return v5;
}

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler
{
  configurationCopy = configuration;
  storeCopy = store;
  handlerCopy = handler;
  v28[0] = @"RemoteManagementDeclarationKey";
  v24 = [(AccountTransformer *)self declarationKeyForConfiguration:configurationCopy];
  v23 = [v24 key];
  v29[0] = v23;
  v28[1] = @"RemoteManagementSourceIdentifier";
  store = [configurationCopy store];
  identifier = [store identifier];
  v29[1] = identifier;
  v28[2] = @"RemoteManagementConfigurationIdentifier";
  declaration = [configurationCopy declaration];
  declarationIdentifier = [declaration declarationIdentifier];
  v29[2] = declarationIdentifier;
  v28[3] = @"RemoteManagementConfigurationType";
  declaration2 = [configurationCopy declaration];
  declarationType = [declaration2 declarationType];
  v29[3] = declarationType;
  v28[4] = @"RemoteManagementServerTokens";
  selfCopy = self;
  v16 = [(AccountTransformer *)self combinedServerTokensFromConfiguration:configurationCopy];
  v28[5] = @"_remotemanagement_managingOwnerIdentifierKey";
  v29[4] = v16;
  v29[5] = @"RemoteManagement";
  v17 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:6];
  v18 = [v17 mutableCopy];

  store2 = [configurationCopy store];
  accountIdentifier = [store2 accountIdentifier];
  if (accountIdentifier)
  {
    [v18 setObject:accountIdentifier forKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
  }

  v21 = [(AccountTransformer *)selfCopy _personaIDForConfiguration:configurationCopy accountStore:storeCopy];
  if (v21)
  {
    [v18 setObject:v21 forKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  }

  name = [store2 name];
  if (name)
  {
    [v18 setObject:name forKeyedSubscript:@"_remotemanagement_managingSourceNameKey"];
  }

  if ([store2 isManagedStore])
  {
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_isManagedKey"];
  }

  (*(handlerCopy + 2))(handlerCopy, v18, 0, 0);
}

- (void)addAccountDescriptionToProperties:(id)properties account:(id)account description:(id)description
{
  propertiesCopy = properties;
  accountCopy = account;
  descriptionCopy = description;
  if (accountCopy)
  {
    accountDescription = [accountCopy accountDescription];
    v10 = [accountCopy objectForKeyedSubscript:@"RemoteManagementDefaultDescription"];
    if ([v10 isEqualToString:accountDescription])
    {
      v11 = descriptionCopy;
    }

    else
    {
      v11 = accountDescription;
    }

    [propertiesCopy setObject:v11 forKeyedSubscript:@"_remotemanagement_accountDescription"];
  }

  else
  {
    [propertiesCopy setObject:descriptionCopy forKeyedSubscript:@"_remotemanagement_accountDescription"];
  }

  [propertiesCopy setObject:descriptionCopy forKeyedSubscript:@"_remotemanagement_accountDefaultDescription"];
}

- (id)_personaIDForConfiguration:(id)configuration accountStore:(id)store
{
  storeCopy = store;
  store = [configuration store];
  if ([store dataSeparated])
  {
    accountIdentifier = [store accountIdentifier];
    if (!accountIdentifier || ([storeCopy accountWithIdentifier:accountIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", ACAccountPropertyPersonaIdentifier), personaIdentifier = objc_claimAutoreleasedReturnValue(), v8, !personaIdentifier))
    {
      personaIdentifier = [store personaIdentifier];
    }
  }

  else
  {
    personaIdentifier = 0;
  }

  return personaIdentifier;
}

- (id)saveAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000065F4;
  v20 = sub_100006604;
  v21 = 0;
  v7 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000660C;
  v12[3] = &unk_10001CB68;
  v8 = accountCopy;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [storeCopy saveVerifiedAccount:v8 withCompletionHandler:v12];
  [v9 waitForCompletion];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler
{
  propertiesCopy = properties;
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  [accountCopy setAuthenticated:1];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100006900;
  v32[3] = &unk_10001CB90;
  v14 = accountCopy;
  v33 = v14;
  v15 = propertiesCopy;
  v34 = v15;
  [v15 enumerateKeysAndObjectsUsingBlock:v32];
  [v15 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000065F4;
  v30 = sub_100006604;
  v31 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100006F40;
  v16 = v20[3] = &unk_10001CBB8;
  v25 = &v26;
  v21 = v16;
  selfCopy = self;
  v17 = v14;
  v23 = v17;
  v18 = storeCopy;
  v24 = v18;
  v19 = [DMCPersonaHelper performBlockUnderPersona:v16 block:v20];
  handlerCopy[2](handlerCopy, v27[5]);

  _Block_object_dispose(&v26, 8);
}

- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties
{
  recreationCopy = recreation;
  propertiesCopy = properties;
  if (recreationCopy)
  {
    username = [recreationCopy username];
    v8 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_username"];
    v9 = [username isEqualToString:v8];

    if (v9)
    {
      v10 = [recreationCopy objectForKeyedSubscript:ACAccountPropertyHostname];
      v11 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        v13 = [propertiesCopy objectForKeyedSubscript:@"_remotemanagement_port"];
        if (!v13 || ([recreationCopy objectForKeyedSubscript:ACAccountPropertyPortNumber], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v13))
        {
          v16 = 0;
          goto LABEL_16;
        }

        v15 = +[RMLog accountTransformer];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Configuration change to port number requires account to be recreated", v20, 2u);
        }

LABEL_15:
        v16 = 1;
LABEL_16:

        goto LABEL_17;
      }

      v13 = +[RMLog accountTransformer];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v17 = "Configuration change to hostname requires account to be recreated";
      v18 = buf;
    }

    else
    {
      v13 = +[RMLog accountTransformer];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v22 = 0;
      v17 = "Configuration change to username requires account to be recreated.";
      v18 = &v22;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    goto LABEL_15;
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)combinedServerTokensFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"declarationIdentifier" ascending:1];
  assets = [configurationCopy assets];
  v24 = v4;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = [assets sortedArrayUsingDescriptors:v6];

  v8 = objc_opt_new();
  declaration = [configurationCopy declaration];
  declarationServerToken = [declaration declarationServerToken];
  [v8 addObject:declarationServerToken];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        declarationServerToken2 = [*(*(&v19 + 1) + 8 * i) declarationServerToken];
        [v8 addObject:declarationServerToken2];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v8 componentsJoinedByString:{@", "}];

  return v17;
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.AccountSubscriber" reference:configuration];

  return v3;
}

- (id)resolveUserIdentityAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000065F4;
  v27 = sub_100006604;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000065F4;
  v21 = sub_100006604;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000075EC;
  v13[3] = &unk_10001CBE0;
  v15 = &v17;
  v16 = &v23;
  v9 = objc_opt_new();
  v14 = v9;
  [RMAssetResolverController extractUserIdentityAsset:referenceCopy assetIdentifier:identifierCopy completionHandler:v13];
  [v9 waitForCompletion];
  if (error)
  {
    v10 = v24[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)resolveUserNameAndPasswordAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000065F4;
  v27 = sub_100006604;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000065F4;
  v21 = sub_100006604;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007864;
  v13[3] = &unk_10001CC08;
  v15 = &v17;
  v16 = &v23;
  v9 = objc_opt_new();
  v14 = v9;
  [RMAssetResolverController resolveUserNameAndPasswordAsset:referenceCopy assetIdentifier:identifierCopy completionHandler:v13];
  [v9 waitForCompletion];
  if (error)
  {
    v10 = v24[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)resolveKeychainAssetReference:(id)reference assetIdentifier:(id)identifier error:(id *)error
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000065F4;
  v27 = sub_100006604;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000065F4;
  v21 = sub_100006604;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100007AE4;
  v13[3] = &unk_10001CC30;
  v15 = &v17;
  v16 = &v23;
  v9 = objc_opt_new();
  v14 = v9;
  [RMAssetResolverController resolveKeychainAsset:referenceCopy assetIdentifier:identifierCopy accessGroup:@"com.apple.managed.account.identities" completionHandler:v13];
  [v9 waitForCompletion];
  if (error)
  {
    v10 = v24[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

@end