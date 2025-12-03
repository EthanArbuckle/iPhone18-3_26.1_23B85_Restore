@interface STMessageTrackingTransportEnvoy
+ (id)_retryIntervalForNumberOfAttempts:(int64_t)attempts;
- (STMessageTrackingTransportEnvoy)initWithTransportService:(id)service messageLedger:(id)ledger queue:(id)queue;
- (STTransportEnvoyDelegate)delegate;
- (id)intervalUntilNextRetryAttempt;
- (id)retryFailedMessages;
- (id)sendMessageEnvelope:(id)envelope;
- (int64_t)failMessagesStuckInSentState;
- (int64_t)purgeExpiredMessages;
- (void)transportService:(id)service didReceiveMessage:(id)message;
- (void)transportService:(id)service didSendMessageWithIdentifier:(id)identifier result:(id)result;
@end

@implementation STMessageTrackingTransportEnvoy

- (STMessageTrackingTransportEnvoy)initWithTransportService:(id)service messageLedger:(id)ledger queue:(id)queue
{
  serviceCopy = service;
  ledgerCopy = ledger;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = STMessageTrackingTransportEnvoy;
  v11 = [(STMessageTrackingTransportEnvoy *)&v18 init];
  transportService = v11->_transportService;
  v11->_transportService = serviceCopy;
  v13 = serviceCopy;

  [(STTransportService *)v11->_transportService setDelegate:v11];
  messageLedger = v11->_messageLedger;
  v11->_messageLedger = ledgerCopy;
  v15 = ledgerCopy;

  queue = v11->_queue;
  v11->_queue = queueCopy;

  return v11;
}

- (id)sendMessageEnvelope:(id)envelope
{
  envelopeCopy = envelope;
  message = [envelopeCopy message];
  addresses = [envelopeCopy addresses];

  v7 = +[STLog familyMessaging];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v14 = message;
    v15 = 2082;
    v16 = "[STMessageTrackingTransportEnvoy sendMessageEnvelope:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v2]       >>> message: %{private}@, %{public}s", buf, 0x16u);
  }

  transportService = [(STMessageTrackingTransportEnvoy *)self transportService];
  v9 = [transportService sendMessage:message toAddresses:addresses];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004AC20;
  v12[3] = &unk_1001A4438;
  v12[4] = self;
  v10 = [v9 then:v12];

  return v10;
}

- (id)retryFailedMessages
{
  v2 = +[STLog familyMessaging];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[STMessageTrackingTransportEnvoy retryFailedMessages]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", &buf, 0xCu);
  }

  messageLedger = [(STMessageTrackingTransportEnvoy *)self messageLedger];
  v4 = objc_opt_new();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x2020000000;
  v48 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10004B28C;
  v36[3] = &unk_1001A4460;
  p_buf = &buf;
  v5 = v4;
  v37 = v5;
  [messageLedger enumerateItemsWithState:3 usingBlock:v36];
  v29 = v5;
  v6 = [v5 count];
  if (v6)
  {
    v7 = +[STLog messageTrackingTransportEnvoy];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 136446466;
      v40 = "[STMessageTrackingTransportEnvoy retryFailedMessages]";
      v41 = 2050;
      v42 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nRetrying to send %{public}lu messages", v39, 0x16u);
    }

    v8 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v29;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [messageLedger addressesFromItem:v12 inState:3];
          message = [v12 message];
          v15 = +[STLog familyMessaging];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [message identifier];
            v17 = [v13 count];
            *v39 = 136446723;
            v40 = "[STMessageTrackingTransportEnvoy retryFailedMessages]";
            v41 = 2113;
            v42 = identifier;
            v43 = 2050;
            v44 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nRetrying message: %{private}@ to %{public}lu addresses", v39, 0x20u);
          }

          v18 = [v12 itemWithUpdatedStatusForAddresses:v13 usingBlock:&stru_1001A44A0];
          identifier2 = [message identifier];
          [messageLedger setItem:v18 forMessageIdentifier:identifier2];

          transportService = [(STMessageTrackingTransportEnvoy *)self transportService];
          v21 = [transportService sendMessage:message toAddresses:v13];

          [v8 addObject:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v9);
    }

    queue = [(STMessageTrackingTransportEnvoy *)self queue];
    v23 = [STPromise onQueue:queue all:v8];
    then = [v23 then];
    v25 = (then)[2](then, &stru_1001A44E0);
  }

  else
  {
    v26 = +[STLog familyMessaging];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 136446210;
      v40 = "[STMessageTrackingTransportEnvoy retryFailedMessages]";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nNo messages to retry sending", v39, 0xCu);
    }

    v27 = [STPromise alloc];
    v8 = +[STResult success];
    queue = [(STMessageTrackingTransportEnvoy *)self queue];
    v25 = [(STPromise *)v27 initWithResolution:v8 onQueue:queue];
  }

  _Block_object_dispose(&buf, 8);

  return v25;
}

- (id)intervalUntilNextRetryAttempt
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[STMessageTrackingTransportEnvoy intervalUntilNextRetryAttempt]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x3032000000;
  v11 = sub_10004B5EC;
  v12 = sub_10004B5FC;
  v13 = 0;
  messageLedger = [(STMessageTrackingTransportEnvoy *)self messageLedger];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004B604;
  v8[3] = &unk_1001A4508;
  v8[4] = &buf;
  [messageLedger enumerateItemsWithState:3 usingBlock:v8];

  v5 = *(*(&buf + 1) + 40);
  if (v5)
  {
    v6 = +[STMessageTrackingTransportEnvoy _retryIntervalForNumberOfAttempts:](STMessageTrackingTransportEnvoy, "_retryIntervalForNumberOfAttempts:", [v5 integerValue]);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&buf, 8);

  return v6;
}

+ (id)_retryIntervalForNumberOfAttempts:(int64_t)attempts
{
  v4 = +[STLog familyMessaging];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "+[STMessageTrackingTransportEnvoy _retryIntervalForNumberOfAttempts:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", &v6, 0xCu);
  }

  if (attempts > 5)
  {
    return &off_1001B2470;
  }

  else
  {
    return qword_1001A4570[attempts];
  }
}

- (int64_t)purgeExpiredMessages
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = "[STMessageTrackingTransportEnvoy purgeExpiredMessages]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", buf, 0xCu);
  }

  messageLedger = [(STMessageTrackingTransportEnvoy *)self messageLedger];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004BADC;
  v21[3] = &unk_1001A4530;
  v5 = objc_opt_new();
  v22 = v5;
  [messageLedger enumerateItemsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        [messageLedger removeItemWithMessageIdentifier:{v12, v17}];
        transportService = [(STMessageTrackingTransportEnvoy *)self transportService];
        [transportService stopTrackingMessageWithIdentifier:v12];

        objc_autoreleasePoolPop(v13);
      }

      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = +[STLog familyMessaging];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[STMessageTrackingTransportEnvoy purgeExpiredMessages]";
    v25 = 2050;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nPurged %{public}ld expired messages", buf, 0x16u);
  }

  return v9;
}

- (int64_t)failMessagesStuckInSentState
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[STMessageTrackingTransportEnvoy failMessagesStuckInSentState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", buf, 0xCu);
  }

  messageLedger = [(STMessageTrackingTransportEnvoy *)self messageLedger];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004BE1C;
  v22[3] = &unk_1001A4530;
  v5 = objc_opt_new();
  v23 = v5;
  [messageLedger enumerateItemsWithState:2 usingBlock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 itemWithUpdatedStatusUsingBlock:{&stru_1001A4550, v18}];
        message = [v12 message];
        identifier = [message identifier];
        [messageLedger setItem:v13 forMessageIdentifier:identifier];
      }

      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = +[STLog familyMessaging];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v25 = "[STMessageTrackingTransportEnvoy failMessagesStuckInSentState]";
    v26 = 2050;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nFailed %{public}ld stuck messages", buf, 0x16u);
  }

  return v9;
}

- (void)transportService:(id)service didReceiveMessage:(id)message
{
  messageCopy = message;
  v6 = +[STLog familyMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    message = [messageCopy message];
    identifier = [message identifier];
    v10 = 136446467;
    v11 = "[STMessageTrackingTransportEnvoy transportService:didReceiveMessage:]";
    v12 = 2113;
    v13 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDid receive message: %{private}@", &v10, 0x16u);
  }

  delegate = [(STMessageTrackingTransportEnvoy *)self delegate];
  [delegate transportEnvoy:self didReceiveMessage:messageCopy];
}

- (void)transportService:(id)service didSendMessageWithIdentifier:(id)identifier result:(id)result
{
  resultCopy = result;
  identifierCopy = identifier;
  v9 = +[STLog familyMessaging];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446210;
    v12 = "[STMessageTrackingTransportEnvoy transportService:didSendMessageWithIdentifier:result:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", &v11, 0xCu);
  }

  delegate = [(STMessageTrackingTransportEnvoy *)self delegate];
  [delegate transportEnvoy:self didSendMessageWithIdentifier:identifierCopy result:resultCopy];
}

- (STTransportEnvoyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end