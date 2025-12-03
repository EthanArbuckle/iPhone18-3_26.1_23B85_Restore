@interface AccountTransformerMail
- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties;
- (id)_authSchemeForAuthenticationMethod:(id)method;
- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation AccountTransformerMail

- (void)accountPropertiesFromConfiguration:(id)configuration account:(id)account accountStore:(id)store completionHandler:(id)handler
{
  configurationCopy = configuration;
  accountCopy = account;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000ED34;
  v17[3] = &unk_10001CCA0;
  storeCopy = store;
  handlerCopy = handler;
  v18 = configurationCopy;
  selfCopy = self;
  v20 = accountCopy;
  v16.receiver = self;
  v16.super_class = AccountTransformerMail;
  v12 = storeCopy;
  v13 = accountCopy;
  v14 = handlerCopy;
  v15 = configurationCopy;
  [(AccountTransformer *)&v16 accountPropertiesFromConfiguration:v15 account:v13 accountStore:v12 completionHandler:v17];
}

- (id)_authSchemeForAuthenticationMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:@"EmailAuthCRAMMD5"])
  {
    v4 = @"CRAM-MD5";
  }

  else if ([methodCopy isEqualToString:@"EmailAuthNTLM"])
  {
    v4 = @"NTLM";
  }

  else if ([methodCopy isEqualToString:@"EmailAuthHTTPMD5"])
  {
    v4 = @"DIGEST-MD5";
  }

  else
  {
    v4 = ACAuthenticationSchemeAnyPlainText;
  }

  return v4;
}

- (void)applyProperties:(id)properties toAccount:(id)account accountStore:(id)store completionHandler:(id)handler
{
  propertiesCopy = properties;
  accountCopy = account;
  handlerCopy = handler;
  v10 = [accountCopy objectForKeyedSubscript:@"RemoteManagementSecondaryAccountIdentifier"];
  v11 = +[RMLog accountTransformerMail];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (!v10)
  {
    if (v12)
    {
      sub_100013750(v11);
    }

    goto LABEL_9;
  }

  if (v12)
  {
    sub_1000136E8();
  }

  v13 = [SMTPAccount accountWithIdentifier:v10];
  if (!v13)
  {
LABEL_9:
    v14 = +[RMLog accountTransformerMail];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100013794(v14);
    }

    v13 = objc_opt_new();
  }

  v61 = v10;
  v15 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_1000137D8();
  }

  persistentAccount = [v13 persistentAccount];
  [persistentAccount setAuthenticated:1];

  v17 = [propertiesCopy objectForKeyedSubscript:@"RemoteManagementAccountType"];
  v18 = [v17 isEqualToString:ACAccountTypeIdentifierIMAP];
  v19 = IMAPAccount_ptr;
  if (!v18)
  {
    v19 = POPAccount_ptr;
  }

  v20 = *v19;
  v21 = objc_opt_class();

  v22 = [[v21 alloc] initWithPersistentAccount:accountCopy];
  v23 = NSStringFromClass(v21);
  [v22 setAccountProperty:v23 forKey:MFMailAccountClass];

  [accountCopy setAuthenticated:1];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1000103AC;
  v80[3] = &unk_10001CCC8;
  v24 = v22;
  v81 = v24;
  v60 = accountCopy;
  v82 = v60;
  v25 = propertiesCopy;
  v83 = v25;
  [v25 enumerateKeysAndObjectsUsingBlock:v80];
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100010AE8;
  v78[3] = &unk_10001CDE0;
  v26 = v13;
  v79 = v26;
  [v25 enumerateKeysAndObjectsUsingBlock:v78];
  [v24 setDeliveryAccount:v26];
  identifier = [v26 identifier];
  [v24 setAccountProperty:identifier forKey:@"RemoteManagementSecondaryAccountIdentifier"];

  identifier2 = [v24 identifier];
  [v26 setAccountProperty:identifier2 forKey:@"RemoteManagementPrimaryAccountIdentifier"];

  +[MailAccount reloadAccounts];
  v29 = +[MailAccount mailAccounts];
  v30 = [v29 mutableCopy];

  [v30 addObject:v24];
  v31 = [v25 objectForKeyedSubscript:ACAccountPropertyPersonaIdentifier];
  v32 = +[RMLog accountTransformerMail];
  v33 = &NSStringFromClass_ptr;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_100013840();
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100010DB4;
  v74[3] = &unk_10001CE08;
  v34 = v31;
  v75 = v34;
  v59 = v30;
  v76 = v59;
  v35 = v24;
  v77 = v35;
  v36 = [DMCPersonaHelper performBlockUnderPersona:v34 block:v74];
  v37 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    sub_1000138A8();
  }

  [DeliveryAccount addDeliveryAccount:v26];
  v38 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_100013910();
  }

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100010E20;
  v71[3] = &unk_10001CD78;
  v39 = v34;
  v72 = v39;
  v58 = v26;
  v73 = v58;
  v40 = [DMCPersonaHelper performBlockUnderPersona:v39 block:v71];
  v41 = [v25 objectForKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];

  if (v41)
  {
    v42 = [v35 accountPropertyForKey:MailAccountEmailAddresses];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v43 = [v42 countByEnumeratingWithState:&v67 objects:v85 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v68;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v68 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v67 + 1) + 8 * i);
          v48 = [v25 objectForKeyedSubscript:@"_remotemanagement_smimeSigningIdentity"];
          [v35 setSigningIdentityPersistentReference:v48 forAddress:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v67 objects:v85 count:16];
      }

      while (v44);
    }

    v33 = &NSStringFromClass_ptr;
  }

  v49 = [v25 objectForKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];

  if (v49)
  {
    v50 = [v35 accountPropertyForKey:MailAccountEmailAddresses];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v63 objects:v84 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v64;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v63 + 1) + 8 * j);
          v56 = [v25 objectForKeyedSubscript:@"_remotemanagement_smimeEncryptionIdentity"];
          [v35 setEncryptionIdentityPersistentReference:v56 forAddress:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v63 objects:v84 count:16];
      }

      while (v52);
    }

    v33 = &NSStringFromClass_ptr;
  }

  accountTransformerMail = [v33[133] accountTransformerMail];
  if (os_log_type_enabled(accountTransformerMail, OS_LOG_TYPE_DEBUG))
  {
    sub_100013978();
  }

  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)changesRequireRecreation:(id)recreation properties:(id)properties
{
  recreationCopy = recreation;
  propertiesCopy = properties;
  v7 = propertiesCopy;
  if (recreationCopy)
  {
    v8 = [propertiesCopy objectForKeyedSubscript:@"RemoteManagementAccountType"];
    v9 = [v8 isEqualToString:ACAccountTypeIdentifierIMAP];
    v10 = IMAPAccount_ptr;
    if (!v9)
    {
      v10 = POPAccount_ptr;
    }

    v11 = *v10;
    v12 = objc_opt_class();

    v13 = [[v12 alloc] initWithPersistentAccount:recreationCopy];
    username = [v13 username];
    v15 = [v7 objectForKeyedSubscript:@"_remotemanagement_username"];
    v16 = [username isEqualToString:v15];

    if (v16)
    {
      hostname = [v13 hostname];
      v18 = [v7 objectForKeyedSubscript:@"_remotemanagement_hostname"];
      v19 = [hostname isEqualToString:v18];

      if (v19)
      {
        v20 = [v7 objectForKeyedSubscript:@"_remotemanagement_port"];
        if (v20 && (v21 = [v13 portNumber], v21 != -[NSObject unsignedIntValue](v20, "unsignedIntValue")))
        {
          v25 = +[RMLog accountTransformerMail];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 0;
            v38 = "Configuration change to inbound mail port number requires account to be recreated";
            v39 = v48;
            goto LABEL_27;
          }
        }

        else
        {
          v22 = NSStringFromClass(v12);
          v23 = [recreationCopy objectForKeyedSubscript:MFMailAccountClass];
          v24 = [v22 isEqualToString:v23];

          if (v24)
          {
            v25 = [recreationCopy objectForKeyedSubscript:@"RemoteManagementSecondaryAccountIdentifier"];
            if (!v25)
            {
LABEL_15:
              v35 = 0;
LABEL_35:

              goto LABEL_36;
            }

            v26 = [SMTPAccount accountWithIdentifier:v25];
            username2 = [v26 username];
            v28 = [v7 objectForKeyedSubscript:@"_remotemanagement_usernameSecondary"];
            v29 = [username2 isEqualToString:v28];

            if (v29)
            {
              hostname2 = [v26 hostname];
              v31 = [v7 objectForKeyedSubscript:@"_remotemanagement_hostnameSecondary"];
              v32 = [hostname2 isEqualToString:v31];

              if (v32)
              {
                v33 = [v7 objectForKeyedSubscript:@"_remotemanagement_portSecondary"];
                if (!v33 || (v34 = [v26 portNumber], v34 == -[NSObject unsignedIntValue](v33, "unsignedIntValue")))
                {

                  goto LABEL_15;
                }

                v43 = +[RMLog accountTransformerMail];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *v44 = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Configuration change to outbound mail port number requires account to be recreated", v44, 2u);
                }

                goto LABEL_33;
              }

              v33 = +[RMLog accountTransformerMail];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *v45 = 0;
                v40 = "Configuration change to outbound mail hostname requires account to be recreated";
                v41 = v45;
                goto LABEL_32;
              }
            }

            else
            {
              v33 = +[RMLog accountTransformerMail];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v46 = 0;
                v40 = "Configuration change to outbound mail username requires account to be recreated.";
                v41 = &v46;
LABEL_32:
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v40, v41, 2u);
              }
            }

LABEL_33:

            goto LABEL_34;
          }

          v25 = +[RMLog accountTransformerMail];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v47 = 0;
            v38 = "Configuration change to inbound mail type requires account to be recreated";
            v39 = &v47;
LABEL_27:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v38, v39, 2u);
          }
        }

LABEL_34:
        v35 = 1;
        goto LABEL_35;
      }

      v20 = +[RMLog accountTransformerMail];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v36 = "Configuration change to inbound mail hostname requires account to be recreated";
        v37 = buf;
        goto LABEL_21;
      }
    }

    else
    {
      v20 = +[RMLog accountTransformerMail];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        v36 = "Configuration change to inbound mail username requires account to be recreated.";
        v37 = &v50;
LABEL_21:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v36, v37, 2u);
      }
    }

    v35 = 1;
LABEL_36:

    goto LABEL_37;
  }

  v35 = 0;
LABEL_37:

  return v35;
}

- (void)configurationUIForConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v6 = +[RMLog accountTransformerMail];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v30 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  payloadVisibleName = [declaration2 payloadVisibleName];
  payloadIncomingServer = [declaration2 payloadIncomingServer];
  payloadHostName = [payloadIncomingServer payloadHostName];

  v23 = configurationCopy;
  if (payloadVisibleName)
  {
    v12 = payloadVisibleName;
  }

  else
  {
    v12 = payloadHostName;
  }

  if (payloadVisibleName)
  {
    v13 = payloadVisibleName;
  }

  else
  {
    v13 = @"-";
  }

  rMConfigurationUIDetails = [RMStoreLocalizable string:v12, RMConfigurationUIDetails];
  v15 = [RMStoreLocalizable string:@"UI.Description.Mail"];
  v16 = [RMStoreLocalizable string:@"UI.Key.Name"];
  v27[0] = v16;
  v27[1] = v13;
  v17 = [NSArray arrayWithObjects:v27 count:2];
  v28[0] = v17;
  v18 = [RMStoreLocalizable string:@"UI.Key.Server"];
  v26[0] = v18;
  v26[1] = payloadHostName;
  v19 = [NSArray arrayWithObjects:v26 count:2];
  v28[1] = v19;
  v20 = [NSArray arrayWithObjects:v28 count:2];
  v21 = [v22 configurationUIWithTitle:rMConfigurationUIDetails description:v15 details:v20];

  handlerCopy[2](handlerCopy, 1, v21, 0);
}

@end