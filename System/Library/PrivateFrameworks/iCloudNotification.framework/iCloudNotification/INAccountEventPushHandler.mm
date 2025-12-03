@interface INAccountEventPushHandler
- (INAccountEventPushHandler)init;
- (INAccountEventPushHandler)initWithAccountStore:(id)store;
- (id)_iCloudAccountType;
- (void)_dismissNotificationsForPushEventWithID:(id)d;
- (void)_handleEventDetailsResponse:(id)response forEventID:(id)d accountID:(id)iD pushMessage:(id)message;
- (void)_requestEventDetailsForPushMessage:(id)message withEventID:(id)d recipientDSID:(id)iD;
- (void)_sendAcknowledgementForNotification:(id)notification;
- (void)accountNotifier:(id)notifier didActivateNotification:(id)notification;
- (void)accountNotifier:(id)notifier didClearNotification:(id)notification;
- (void)accountNotifier:(id)notifier didDismissNotification:(id)notification;
- (void)handleIncomingPushNotification:(id)notification;
@end

@implementation INAccountEventPushHandler

- (INAccountEventPushHandler)init
{
  [(INAccountEventPushHandler *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (INAccountEventPushHandler)initWithAccountStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = INAccountEventPushHandler;
  v6 = [(INAccountEventPushHandler *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
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

- (void)handleIncomingPushNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"dsid"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = v6;
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

      stringValue = [v6 stringValue];
    }

    v9 = stringValue;
LABEL_13:
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"msgid"];

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

    userInfo3 = [notificationCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:@"event"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEqualToString:@"dismiss"])
    {
      [(INAccountEventPushHandler *)self _dismissNotificationsForPushEventWithID:v8];
    }

    else
    {
      [(INAccountEventPushHandler *)self _requestEventDetailsForPushMessage:notificationCopy withEventID:v8 recipientDSID:v9];
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

- (void)_requestEventDetailsForPushMessage:(id)message withEventID:(id)d recipientDSID:(id)iD
{
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  v11 = [(ACAccountStore *)self->_accountStore aa_appleAccountWithPersonID:iDCopy];
  if (v11)
  {
    v12 = [[INAccountEventDetailsRequest alloc] initWithAccount:v11 pushMessage:messageCopy];
    v13 = +[INDaemon sharedInstance];
    pushToken = [v13 pushToken];
    [(INAccountEventDetailsRequest *)v12 setPushToken:pushToken];

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10001C284;
    v22 = &unk_100055CD0;
    selfCopy = self;
    v24 = dCopy;
    v25 = v11;
    v26 = messageCopy;
    v15 = objc_retainBlock(&v19);
    v16 = _INLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000392CC();
    }

    v17 = [AARequester alloc];
    v18 = [v17 initWithRequest:v12 handler:{v15, v19, v20, v21, v22, selfCopy}];
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

- (void)_handleEventDetailsResponse:(id)response forEventID:(id)d accountID:(id)iD pushMessage:(id)message
{
  responseCopy = response;
  dCopy = d;
  iDCopy = iD;
  messageCopy = message;
  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10003930C(responseCopy);
  }

  error = [responseCopy error];

  if (error)
  {
    title = _INLogSystem();
    if (os_log_type_enabled(title, OS_LOG_TYPE_ERROR))
    {
      sub_100039390(responseCopy);
    }
  }

  else if ([responseCopy showAlert])
  {
    title = [responseCopy title];
    message = [responseCopy message];
    if (title | message)
    {
      v19 = [ANAccountNotification alloc];
      _iCloudAccountType = [(INAccountEventPushHandler *)self _iCloudAccountType];
      v18 = [v19 initForAccountWithType:_iCloudAccountType];

      [v18 setTitle:title];
      [v18 setMessage:message];
      [v18 setEventIdentifier:dCopy];
      defaultButtonTitle = [responseCopy defaultButtonTitle];
      [v18 setActivateButtonTitle:defaultButtonTitle];

      defaultButtonURL = [responseCopy defaultButtonURL];
      v30 = defaultButtonURL;
      if (defaultButtonURL)
      {
        v23 = [ANNotificationAction actionForOpeningWebURL:defaultButtonURL];
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

      alternateButtonURL = [responseCopy alternateButtonURL];
      v31 = message;
      v29 = alternateButtonURL;
      if (alternateButtonURL)
      {
        v25 = [ANNotificationAction actionForOpeningWebURL:alternateButtonURL];
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
      [v26 setObject:iDCopy forKeyedSubscript:@"INAccountID"];
      userInfo = [messageCopy userInfo];
      v28 = [userInfo mutableCopy];

      [v28 removeObjectForKey:@"aps"];
      if (v28)
      {
        [v26 setObject:v28 forKeyedSubscript:@"INPushMessage"];
      }

      [v18 setUserInfo:v26];
      [(ANAccountNotifier *)self->_accountNotifier addNotification:v18];

      message = v31;
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
    title = _INLogSystem();
    if (os_log_type_enabled(title, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, title, OS_LOG_TYPE_DEFAULT, "Account event details says not to notify.", buf, 2u);
    }
  }
}

- (void)_dismissNotificationsForPushEventWithID:(id)d
{
  dCopy = d;
  v5 = _INLogSystem();
  v6 = v5;
  if (dCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing notifications for event ID: %@", &v7, 0xCu);
    }

    [(ANAccountNotifier *)self->_accountNotifier removeNotificationsWithEventIdentifier:dCopy];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003945C();
    }
  }
}

- (void)accountNotifier:(id)notifier didActivateNotification:(id)notification
{
  notificationCopy = notification;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(INAccountEventPushHandler *)self _sendAcknowledgementForNotification:notificationCopy];
}

- (void)accountNotifier:(id)notifier didClearNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

- (void)accountNotifier:(id)notifier didDismissNotification:(id)notification
{
  notificationCopy = notification;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(INAccountEventPushHandler *)self _sendAcknowledgementForNotification:notificationCopy];
}

- (void)_sendAcknowledgementForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"INAccountID"];

  v7 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:v6];
  if (v7)
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:@"INPushMessage"];

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
    pushToken = [v12 pushToken];
    [(INAcknowledgeAccountAlertRequest *)v11 setPushToken:pushToken];

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
    aa_appleAccountType = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
    v5 = self->_iCloudAccountType;
    self->_iCloudAccountType = aa_appleAccountType;

    iCloudAccountType = self->_iCloudAccountType;
  }

  return iCloudAccountType;
}

@end