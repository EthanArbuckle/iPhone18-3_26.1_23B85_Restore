@interface AccountTransformerLDAP
- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4;
- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4;
@end

@implementation AccountTransformerLDAP

- (void)accountPropertiesFromConfiguration:(id)a3 account:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D8D0;
  v17[3] = &unk_10001CCA0;
  v21 = a5;
  v22 = a6;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v16.receiver = self;
  v16.super_class = AccountTransformerLDAP;
  v12 = v21;
  v13 = v11;
  v14 = v22;
  v15 = v10;
  [(AccountTransformer *)&v16 accountPropertiesFromConfiguration:v15 account:v13 accountStore:v12 completionHandler:v17];
}

- (void)applyProperties:(id)a3 toAccount:(id)a4 accountStore:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v11 setAuthenticated:1];
  [DAAccount daAccountSubclassWithBackingAccountInfo:v11];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000DFE4;
  v14 = v33[3] = &unk_10001CCC8;
  v34 = v14;
  v15 = v11;
  v35 = v15;
  v16 = v10;
  v36 = v16;
  [v16 enumerateKeysAndObjectsUsingBlock:v33];
  [v16 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000E648;
  v31 = sub_10000E658;
  v32 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000E660;
  v17 = v21[3] = &unk_10001CBB8;
  v26 = &v27;
  v22 = v17;
  v23 = self;
  v18 = v15;
  v24 = v18;
  v19 = v12;
  v25 = v19;
  v20 = [DMCPersonaHelper performBlockUnderPersona:v17 block:v21];
  v13[2](v13, v28[5]);

  _Block_object_dispose(&v27, 8);
}

- (BOOL)changesRequireRecreation:(id)a3 properties:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [DAAccount daAccountSubclassWithBackingAccountInfo:a3];
    v7 = [v6 username];
    v8 = [v5 objectForKeyedSubscript:@"_remotemanagement_username"];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [v6 host];
      v11 = [v5 objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        v13 = [v5 objectForKeyedSubscript:@"_remotemanagement_port"];
        if (!v13 || (v14 = [v6 port], v14 == -[NSObject intValue](v13, "intValue")))
        {
          v15 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v19 = +[RMLog accountTransformerLDAP];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Configuration change to port number requires account to be recreated", v20, 2u);
        }

LABEL_13:
        v15 = 1;
        goto LABEL_14;
      }

      v13 = +[RMLog accountTransformerLDAP];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v16 = "Configuration change to hostname requires account to be recreated";
      v17 = buf;
    }

    else
    {
      v13 = +[RMLog accountTransformerLDAP];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v22 = 0;
      v16 = "Configuration change to username requires account to be recreated.";
      v17 = &v22;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
    goto LABEL_13;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)configurationUIForConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v24 = a4;
  v6 = +[RMLog accountTransformerLDAP];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 declaration];
    v8 = [v7 declarationIdentifier];
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  v23 = [v5 declaration];
  v9 = [v23 payloadVisibleName];
  v10 = [v23 payloadHostName];
  v22 = v5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"-";
  }

  v13 = [RMStoreLocalizable string:v11, RMConfigurationUIDetails];
  v14 = [RMStoreLocalizable string:@"UI.Description.LDAP"];
  v15 = [RMStoreLocalizable string:@"UI.Key.Name"];
  v26[0] = v15;
  v26[1] = v12;
  v16 = [NSArray arrayWithObjects:v26 count:2];
  v27[0] = v16;
  v17 = [RMStoreLocalizable string:@"UI.Key.Server"];
  v25[0] = v17;
  v25[1] = v10;
  v18 = [NSArray arrayWithObjects:v25 count:2];
  v27[1] = v18;
  v19 = [NSArray arrayWithObjects:v27 count:2];
  v20 = [v21 configurationUIWithTitle:v13 description:v14 details:v19];

  v24[2](v24, 1, v20, 0);
}

@end