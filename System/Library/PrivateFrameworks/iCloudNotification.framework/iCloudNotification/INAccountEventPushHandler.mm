@interface INAccountEventPushHandler
- (INAccountEventPushHandler)init;
- (INAccountEventPushHandler)initWithAccountStore:(id)a3;
- (id)_iCloudAccountType;
- (void)_dismissNotificationsForPushEventWithID:(id)a3;
- (void)_handleEventDetailsResponse:(id)a3 forEventID:(id)a4 accountID:(id)a5 pushMessage:(id)a6;
- (void)_requestEventDetailsForPushMessage:(id)a3 withEventID:(id)a4 recipientDSID:(id)a5;
- (void)_sendAcknowledgementForNotification:(id)a3;
- (void)accountNotifier:(id)a3 didActivateNotification:(id)a4;
- (void)accountNotifier:(id)a3 didClearNotification:(id)a4;
- (void)accountNotifier:(id)a3 didDismissNotification:(id)a4;
- (void)handleIncomingPushNotification:(id)a3;
@end

@implementation INAccountEventPushHandler

- (INAccountEventPushHandler)init
{
  [(INAccountEventPushHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (INAccountEventPushHandler)initWithAccountStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = INAccountEventPushHandler;
  v6 = [(INAccountEventPushHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = [[ANAccountNotifier alloc] initWithCallbackMachService:@"com.apple.ind.and_callback"];
    accountNotifier = v7->_accountNotifier;
    v7->_accountNotifier = v8;

    [(ANAccountNotifier *)v7->_accountNotifier setDelegate:v7];
    v10 = objc_alloc_init(NSOperationQueue);
    networkingQueue = v7->_networkingQueue;
    v7->_networkingQueue = v10;
  }

  return v7;
}

- (void)handleIncomingPushNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"dsid"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = _INLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100039180();
        }

        v9 = 0;
        goto LABEL_13;
      }

      v7 = [v6 stringValue];
    }

    v9 = v7;
LABEL_13:
    v11 = [v4 userInfo];
    v8 = [v11 objectForKeyedSubscript:@"msgid"];

    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = _INLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100039220();
        }
      }
    }

    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"event"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:@"dismiss"])
    {
      [(INAccountEventPushHandler *)self _dismissNotificationsForPushEventWithID:v8];
    }

    else
    {
      [(INAccountEventPushHandler *)self _requestEventDetailsForPushMessage:v4 withEventID:v8 recipientDSID:v9];
    }

    goto LABEL_23;
  }

  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100039290();
  }

  v9 = 0;
LABEL_23:
}

- (void)_requestEventDetailsForPushMessage:(id)a3 withEventID:(id)a4 recipientDSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:v10];
  if (v11)
  {
    v12 = [[INAccountEventDetailsRequest alloc] initWithAccount:v11 pushMessage:v8];
    v13 = +[INDaemon sharedInstance];
    v14 = [v13 pushToken];
    [(INAccountEventDetailsRequest *)v12 setPushToken:v14];

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10001C284;
    v22 = &unk_100055CD0;
    v23 = self;
    v24 = v9;
    v25 = v11;
    v26 = v8;
    v15 = objc_retainBlock(&v19);
    v16 = _INLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000392CC();
    }

    v17 = [AARequester alloc];
    v18 = [v17 initWithRequest:v12 handler:{v15, v19, v20, v21, v22, v23}];
    [(NSOperationQueue *)self->_networkingQueue addOperation:v18];
  }

  else
  {
    v12 = _INLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100033C08();
    }
  }
}

- (void)_handleEventDetailsResponse:(id)a3 forEventID:(id)a4 accountID:(id)a5 pushMessage:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10003930C(v10);
  }

  v15 = [v10 error];

  if (v15)
  {
    v16 = _INLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100039390(v10);
    }
  }

  else if ([v10 showAlert])
  {
    v16 = [v10 title];
    v17 = [v10 message];
    if (v16 | v17)
    {
      v19 = [ANAccountNotification alloc];
      v20 = [(INAccountEventPushHandler *)self _iCloudAccountType];
      v18 = [v19 initForAccountWithType:v20];

      [v18 setTitle:v16];
      [v18 setMessage:v17];
      [v18 setEventIdentifier:v11];
      v21 = [v10 defaultButtonTitle];
      [v18 setActivateButtonTitle:v21];

      v22 = [v10 defaultButtonURL];
      v30 = v22;
      if (v22)
      {
        v23 = [ANNotificationAction actionForOpeningWebURL:v22];
        [v18 setActivateAction:v23];
      }

      else
      {
        v23 = _INLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No server-supplied default action URL.", v33, 2u);
        }
      }

      v24 = [v10 alternateButtonURL];
      v31 = v17;
      v29 = v24;
      if (v24)
      {
        v25 = [ANNotificationAction actionForOpeningWebURL:v24];
        [v18 setDismissAction:v25];
      }

      else
      {
        v25 = _INLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No server-supplied alternate action URL.", v32, 2u);
        }
      }

      v26 = objc_alloc_init(NSMutableDictionary);
      [v26 setObject:v12 forKeyedSubscript:@"INAccountID"];
      v27 = [v13 userInfo];
      v28 = [v27 mutableCopy];

      [v28 removeObjectForKey:@"aps"];
      if (v28)
      {
        [v26 setObject:v28 forKeyedSubscript:@"INPushMessage"];
      }

      [v18 setUserInfo:v26];
      [(ANAccountNotifier *)self->_accountNotifier addNotification:v18];

      v17 = v31;
    }

    else
    {
      v18 = _INLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100039420();
      }
    }
  }

  else
  {
    v16 = _INLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Account event details says not to notify.", buf, 2u);
    }
  }
}

- (void)_dismissNotificationsForPushEventWithID:(id)a3
{
  v4 = a3;
  v5 = _INLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing notifications for event ID: %@", &v7, 0xCu);
    }

    [(ANAccountNotifier *)self->_accountNotifier removeNotificationsWithEventIdentifier:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003945C();
    }
  }
}

- (void)accountNotifier:(id)a3 didActivateNotification:(id)a4
{
  v5 = a4;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(INAccountEventPushHandler *)self _sendAcknowledgementForNotification:v5];
}

- (void)accountNotifier:(id)a3 didClearNotification:(id)a4
{
  v4 = a4;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

- (void)accountNotifier:(id)a3 didDismissNotification:(id)a4
{
  v5 = a4;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(INAccountEventPushHandler *)self _sendAcknowledgementForNotification:v5];
}

- (void)_sendAcknowledgementForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"INAccountID"];

  v7 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:v6];
  if (v7)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"INPushMessage"];

    if (!v9)
    {
      v10 = _INLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100039498();
      }
    }

    v11 = [[INAcknowledgeAccountAlertRequest alloc] initWithAccount:v7 store:self->_accountStore];
    [(INAcknowledgeAccountAlertRequest *)v11 setPushMessageInfo:v9];
    v12 = +[INDaemon sharedInstance];
    v13 = [v12 pushToken];
    [(INAcknowledgeAccountAlertRequest *)v11 setPushToken:v13];

    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1000394D4();
    }

    v15 = [[AARequester alloc] initWithRequest:v11 handler:&stru_100055D10];
    [(NSOperationQueue *)self->_networkingQueue addOperation:v15];
  }

  else
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100039514();
    }
  }
}

- (id)_iCloudAccountType
{
  iCloudAccountType = self->_iCloudAccountType;
  if (!iCloudAccountType)
  {
    v4 = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
    v5 = self->_iCloudAccountType;
    self->_iCloudAccountType = v4;

    iCloudAccountType = self->_iCloudAccountType;
  }

  return iCloudAccountType;
}

@end