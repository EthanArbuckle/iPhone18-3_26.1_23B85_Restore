@interface INVerifyTermsPushHandler
- (INVerifyTermsPushHandler)init;
- (INVerifyTermsPushHandler)initWithAccountStore:(id)store;
- (void)_refreshAppleAccount:(id)account completion:(id)completion;
- (void)handleIncomingPushNotification:(id)notification;
@end

@implementation INVerifyTermsPushHandler

- (INVerifyTermsPushHandler)init
{
  [(INVerifyTermsPushHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (INVerifyTermsPushHandler)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = INVerifyTermsPushHandler;
  v6 = [(INVerifyTermsPushHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

- (void)handleIncomingPushNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"dsid"];

  if (v6)
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"event"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = v6;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v6 stringValue];
LABEL_13:
        v10 = stringValue;
        v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:stringValue];
        if (!v11)
        {
          v14 = _INLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100033C08();
          }

          goto LABEL_30;
        }

        if ([v8 isEqualToString:@"t_needs_agree"])
        {
          v12 = _INLogSystem();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
LABEL_26:

            [(INVerifyTermsPushHandler *)self _refreshAppleAccount:v11 completion:&stru_100055278];
            goto LABEL_30;
          }

          v17 = 138412290;
          v18 = v11;
          v13 = "Will post terms follow up for account: %@";
        }

        else
        {
          v15 = [v8 isEqualToString:@"t_did_agree"];
          v16 = _INLogSystem();
          v12 = v16;
          if (!v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100033B98();
            }

            goto LABEL_30;
          }

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }

          v17 = 138412290;
          v18 = v11;
          v13 = "Will dismiss terms follow up for account: %@";
        }

        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0xCu);
        goto LABEL_26;
      }

      v11 = _INLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100033AF4(v6, v11);
      }
    }

    else
    {
      v11 = _INLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100033AB4();
      }
    }

    v10 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100033C78();
  }

  v10 = 0;
LABEL_31:
}

- (void)_refreshAppleAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountStore = self->_accountStore;
  v13 = kACDiscoverPropertiesShouldSaveKey;
  v14 = &__kCFBooleanTrue;
  accountCopy = account;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000044A8;
  v11[3] = &unk_1000552A0;
  v12 = completionCopy;
  v10 = completionCopy;
  [(ACAccountStore *)accountStore discoverPropertiesForAccount:accountCopy options:v9 completion:v11];
}

@end