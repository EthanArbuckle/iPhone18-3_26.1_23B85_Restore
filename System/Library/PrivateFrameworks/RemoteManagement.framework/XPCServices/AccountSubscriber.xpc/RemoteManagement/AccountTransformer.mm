@interface AccountTransformer
+ (Class)transformerClassForConfigurationType:(id)a3;
- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4;
- (id)_personaIDForConfiguration:(id)a3 accountStore:(id)a4;
- (id)combinedServerTokensFromConfiguration:(id)a3;
- (id)declarationKeyForConfiguration:(id)a3;
- (id)resolveKeychainAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5;
- (id)resolveUserIdentityAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5;
- (id)resolveUserNameAndPasswordAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5;
- (id)saveAccount:(id)a3 accountStore:(id)a4;
- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
- (void)addAccountDescriptionToProperties:(id)a3 account:(id)a4 description:(id)a5;
- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
@end

@implementation AccountTransformer

+ (Class)transformerClassForConfigurationType:(id)a3
{
  v3 = qword_1000220E0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100013330();
  }

  v5 = [qword_1000220D8 objectForKeyedSubscript:v4];

  return v5;
}

- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v27 = a5;
  v26 = a6;
  v28[0] = @"RemoteManagementDeclarationKey";
  v24 = [(AccountTransformer *)self declarationKeyForConfiguration:v9];
  v23 = [v24 key];
  v29[0] = v23;
  v28[1] = @"RemoteManagementSourceIdentifier";
  v10 = [v9 store];
  v11 = [v10 identifier];
  v29[1] = v11;
  v28[2] = @"RemoteManagementConfigurationIdentifier";
  v12 = [v9 declaration];
  v13 = [v12 declarationIdentifier];
  v29[2] = v13;
  v28[3] = @"RemoteManagementConfigurationType";
  v14 = [v9 declaration];
  v15 = [v14 declarationType];
  v29[3] = v15;
  v28[4] = @"RemoteManagementServerTokens";
  v25 = self;
  v16 = [(AccountTransformer *)self combinedServerTokensFromConfiguration:v9];
  v28[5] = @"_remotemanagement_managingOwnerIdentifierKey";
  v29[4] = v16;
  v29[5] = @"RemoteManagement";
  v17 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:6];
  v18 = [v17 mutableCopy];

  v19 = [v9 store];
  v20 = [v19 accountIdentifier];
  if (v20)
  {
    [v18 setObject:v20 forKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
  }

  v21 = [(AccountTransformer *)v25 _personaIDForConfiguration:v9 accountStore:v27];
  if (v21)
  {
    [v18 setObject:v21 forKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  }

  v22 = [v19 name];
  if (v22)
  {
    [v18 setObject:v22 forKeyedSubscript:@"_remotemanagement_managingSourceNameKey"];
  }

  if ([v19 isManagedStore])
  {
    [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_remotemanagement_isManagedKey"];
  }

  (*(v26 + 2))(v26, v18, 0, 0);
}

- (void)addAccountDescriptionToProperties:(id)a3 account:(id)a4 description:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [v7 accountDescription];
    v10 = [v7 objectForKeyedSubscript:@"RemoteManagementDefaultDescription"];
    if ([v10 isEqualToString:v9])
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

    [v12 setObject:v11 forKeyedSubscript:@"_remotemanagement_accountDescription"];
  }

  else
  {
    [v12 setObject:v8 forKeyedSubscript:@"_remotemanagement_accountDescription"];
  }

  [v12 setObject:v8 forKeyedSubscript:@"_remotemanagement_accountDefaultDescription"];
}

- (id)_personaIDForConfiguration:(id)a3 accountStore:(id)a4
{
  v5 = a4;
  v6 = [a3 store];
  if ([v6 dataSeparated])
  {
    v7 = [v6 accountIdentifier];
    if (!v7 || ([v5 accountWithIdentifier:v7], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", ACAccountPropertyPersonaIdentifier), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v9 = [v6 personaIdentifier];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)saveAccount:(id)a3 accountStore:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v8 = v5;
  v13 = v8;
  v15 = &v16;
  v9 = v7;
  v14 = v9;
  [v6 saveVerifiedAccount:v8 withCompletionHandler:v12];
  [v9 waitForCompletion];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v11 setAuthenticated:1];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100006900;
  v32[3] = &unk_10001CB90;
  v14 = v11;
  v33 = v14;
  v15 = v10;
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
  v22 = self;
  v17 = v14;
  v23 = v17;
  v18 = v12;
  v24 = v18;
  v19 = [DMCPersonaHelper performBlockUnderPersona:v16 block:v20];
  v13[2](v13, v27[5]);

  _Block_object_dispose(&v26, 8);
}

- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 username];
    v8 = [v6 objectForKeyedSubscript:@"_remotemanagement_username"];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [v5 objectForKeyedSubscript:ACAccountPropertyHostname];
      v11 = [v6 objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"_remotemanagement_port"];
        if (!v13 || ([v5 objectForKeyedSubscript:ACAccountPropertyPortNumber], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v13))
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

- (id)combinedServerTokensFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"declarationIdentifier" ascending:1];
  v5 = [v3 assets];
  v24 = v4;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = objc_opt_new();
  v9 = [v3 declaration];
  v10 = [v9 declarationServerToken];
  [v8 addObject:v10];

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

        v16 = [*(*(&v19 + 1) + 8 * i) declarationServerToken];
        [v8 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v8 componentsJoinedByString:{@", "}];

  return v17;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.AccountSubscriber" reference:a3];

  return v3;
}

- (id)resolveUserIdentityAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  [RMAssetResolverController extractUserIdentityAsset:v7 assetIdentifier:v8 completionHandler:v13];
  [v9 waitForCompletion];
  if (a5)
  {
    v10 = v24[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)resolveUserNameAndPasswordAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  [RMAssetResolverController resolveUserNameAndPasswordAsset:v7 assetIdentifier:v8 completionHandler:v13];
  [v9 waitForCompletion];
  if (a5)
  {
    v10 = v24[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

- (id)resolveKeychainAssetReference:(id)a3 assetIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  [RMAssetResolverController resolveKeychainAsset:v7 assetIdentifier:v8 accessGroup:@"com.apple.managed.account.identities" completionHandler:v13];
  [v9 waitForCompletion];
  if (a5)
  {
    v10 = v24[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

@end