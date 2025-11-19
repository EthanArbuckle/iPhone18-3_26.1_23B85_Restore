@interface CSDDualSIMRingtoneHelper
- (CSDDualSIMRingtoneHelper)init;
- (CSDDualSIMRingtoneHelper)initWithQueue:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)handleActiveSubscriptionsDidChange;
- (void)handleTLTonePreferencesDidChangeNotification;
- (void)refreshSubscriptionsInUse;
- (void)refreshToneForDefaultSIM;
- (void)refreshToneForSIMIdentifier:(id)a3;
- (void)sendDualSIMRingtoneMetrics;
@end

@implementation CSDDualSIMRingtoneHelper

- (CSDDualSIMRingtoneHelper)init
{
  [(CSDDualSIMRingtoneHelper *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDDualSIMRingtoneHelper)initWithQueue:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CSDDualSIMRingtoneHelper;
  v5 = [(CSDDualSIMRingtoneHelper *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v5->_featureFlags;
    v5->_featureFlags = v6;

    v8 = [(CSDDualSIMRingtoneHelper *)v5 featureFlags];
    v9 = [v8 dualSIMRingtoneEnabled];

    if (v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initializing CSDDualSIMRingtoneHelper", buf, 2u);
      }

      v5->_alertType = TLAlertTypeFromString();
      if (v4)
      {
        v11 = v4;
        queue = v5->_queue;
        v5->_queue = v11;
      }

      else
      {
        v13 = &_dispatch_main_q;
        queue = v5->_queue;
        v5->_queue = &_dispatch_main_q;
      }

      v14 = [[CoreTelephonyClient alloc] initWithQueue:v5->_queue];
      coreTelephonyClient = v5->_coreTelephonyClient;
      v5->_coreTelephonyClient = v14;

      [(CoreTelephonyClient *)v5->_coreTelephonyClient setDelegate:v5];
      objc_initWeak(buf, v5);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006661C;
      handler[3] = &unk_100619D10;
      objc_copyWeak(&v19, buf);
      xpc_activity_register("com.apple.callservicesd.ringtone.metrics.daily", XPC_ACTIVITY_CHECK_IN, handler);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_100066714, @"_TLTonePreferencesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"_TLTonePreferencesDidChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = CSDDualSIMRingtoneHelper;
  [(CSDDualSIMRingtoneHelper *)&v4 dealloc];
}

- (void)handleTLTonePreferencesDidChangeNotification
{
  v3 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v4 = [v3 dualSIMRingtoneEnabled];

  if (v4)
  {
    v5 = +[TLToneManager sharedToneManager];
    v6 = [v5 currentToneIdentifierForAlertType:self->_alertType topic:0];

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CSDDualSIMRingtoneHelper *)self cachedDefaultToneIdentifier];
      v27 = 136315650;
      v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Received defaultToneIdentifier: %@. Cached value is: %@", &v27, 0x20u);
    }

    if (v6)
    {
      v9 = [(CSDDualSIMRingtoneHelper *)self cachedDefaultToneIdentifier];
      if (v9 && (v10 = v9, -[CSDDualSIMRingtoneHelper cachedDefaultToneIdentifier](self, "cachedDefaultToneIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:v6], v11, v10, v12))
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 136315138;
          v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Default ringtone identifier was not changed. No update required.", &v27, 0xCu);
        }
      }

      else
      {
        [(CSDDualSIMRingtoneHelper *)self setCachedDefaultToneIdentifier:v6];
        v14 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
        if (!v14 || (v15 = v14, -[CSDDualSIMRingtoneHelper subscriptionsInUse](self, "subscriptionsInUse"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, v15, !v17))
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315138;
            v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: self.subscriptionsInUse is nil or empty. Triggering a refetch.", &v27, 0xCu);
          }

          [(CSDDualSIMRingtoneHelper *)self refreshSubscriptionsInUse];
        }

        v19 = [(CSDDualSIMRingtoneHelper *)self defaultSIMLineSubscriptionContext];
        v13 = [v19 labelID];

        if (v13)
        {
          v20 = [@"TLAlertTopicIncomingCall" stringByAppendingString:v13];
          v21 = sub_100004778();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315650;
            v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            v29 = 2112;
            v30 = v13;
            v31 = 2112;
            v32 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: Checking for changes for default SIM with identifier: %@, topic: %@", &v27, 0x20u);
          }

          v22 = +[TLToneManager sharedToneManager];
          v23 = [v22 currentToneIdentifierForAlertType:self->_alertType topic:v20];

          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 136315394;
            v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
            v29 = 2112;
            v30 = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: Received toneIdentifierForTopic: %@", &v27, 0x16u);
          }

          v25 = sub_100004778();
          v26 = v25;
          if (v23)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v27 = 136315138;
              v28 = "[CSDDualSIMRingtoneHelper handleTLTonePreferencesDidChangeNotification]";
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: toneIdentifierForTopic: is different from defaultToneIdentifier. Overwriting toneIdentifierForTopic", &v27, 0xCu);
            }

            v26 = +[TLToneManager sharedToneManager];
            [v26 setCurrentToneIdentifier:v6 forAlertType:self->_alertType topic:v20];
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100470FA8();
          }
        }
      }
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100471028();
      }
    }
  }
}

- (void)refreshSubscriptionsInUse
{
  v3 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v4 = [v3 dualSIMRingtoneEnabled];

  if (v4)
  {
    [(CSDDualSIMRingtoneHelper *)self setSubscriptionsInUse:0];
    [(CSDDualSIMRingtoneHelper *)self setDefaultSIMLineSubscriptionContext:0];
    v5 = [(CSDDualSIMRingtoneHelper *)self coreTelephonyClient];
    v24 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v24];
    v7 = v24;

    if (!v7)
    {
      v8 = [v6 subscriptionsInUse];
      [(CSDDualSIMRingtoneHelper *)self setSubscriptionsInUse:v8];
    }

    v9 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
    v10 = [v9 count];

    if (v10)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            v17 = [v16 userDefaultVoice];
            if ([v17 BOOLValue] && (objc_msgSend(v16, "isSimHidden") & 1) == 0)
            {
              v18 = [v16 isSimDataOnly];

              if ((v18 & 1) == 0)
              {
                [(CSDDualSIMRingtoneHelper *)self setDefaultSIMLineSubscriptionContext:v16];
              }
            }

            else
            {
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v19 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
          v13 = v19;
        }

        while (v19);
      }
    }
  }
}

- (void)refreshToneForDefaultSIM
{
  v3 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v4 = [v3 dualSIMRingtoneEnabled];

  if (v4)
  {
    v5 = [(CSDDualSIMRingtoneHelper *)self defaultSIMLineSubscriptionContext];
    v6 = [v5 labelID];

    if (v6)
    {
      v7 = [@"TLAlertTopicIncomingCall" stringByAppendingString:v6];
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking for changes for default SIM with identifier: %@, topic: %@", &v18, 0x16u);
      }

      v9 = +[TLToneManager sharedToneManager];
      v10 = [v9 currentToneIdentifierForAlertType:self->_alertType topic:v7];

      v11 = +[TLToneManager sharedToneManager];
      v12 = [v11 currentToneIdentifierForAlertType:self->_alertType topic:0];

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v10;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received toneIdentifierForTopic: %@, defaultToneIdentifier: %@", &v18, 0x16u);
      }

      if (v12 && v10)
      {
        v14 = [v10 isEqualToString:v12];
        v15 = sub_100004778();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            LOWORD(v18) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is same as defaultToneIdentifier. Setting defaultToneIdentifier as toneIdentifierForTopic in case toneIdentifierForTopic was nil in defaults", &v18, 2u);
          }

          v17 = +[TLToneManager sharedToneManager];
          [v17 setCurrentToneIdentifier:v12 forAlertType:self->_alertType topic:v7];
        }

        else
        {
          if (v16)
          {
            LOWORD(v18) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is different from defaultToneIdentifier. Overwriting defaultToneIdentifier", &v18, 2u);
          }

          v17 = +[TLToneManager sharedToneManager];
          [v17 setCurrentToneIdentifier:v10 forAlertType:self->_alertType];
        }
      }

      else
      {
        v17 = sub_100004778();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1004710A8();
        }
      }
    }
  }
}

- (void)refreshToneForSIMIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v6 = [v5 dualSIMRingtoneEnabled];

  if (v6)
  {
    v7 = [@"TLAlertTopicIncomingCall" stringByAppendingString:v4];
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking for changes for non-default SIM with identifier: %@, topic: %@", &v15, 0x16u);
    }

    v9 = +[TLToneManager sharedToneManager];
    v10 = [v9 currentToneIdentifierForAlertType:self->_alertType topic:v7];

    v11 = +[TLToneManager sharedToneManager];
    v12 = [v11 currentToneIdentifierForAlertType:self->_alertType topic:0];

    if (v12 && v10)
    {
      if (![v10 isEqualToString:v12])
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "toneIdentifierForTopic: is same as defaultToneIdentifier. Setting defaultToneIdentifier as toneIdentifierForTopic in case toneIdentifierForTopic was nil in defaults", &v15, 2u);
      }

      v14 = +[TLToneManager sharedToneManager];
      [v14 setCurrentToneIdentifier:v12 forAlertType:self->_alertType topic:v7];
    }

    else
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1004710A8();
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)handleActiveSubscriptionsDidChange
{
  v3 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v4 = [v3 dualSIMRingtoneEnabled];

  if (v4)
  {
    [(CSDDualSIMRingtoneHelper *)self refreshSubscriptionsInUse];
    v5 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];

    if (!v5)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received no subscriptions. Not doing anything", buf, 2u);
      }
    }

    [(CSDDualSIMRingtoneHelper *)self refreshToneForDefaultSIM];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(CSDDualSIMRingtoneHelper *)self subscriptionsInUse];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 userDefaultVoice];
          if (([v13 BOOLValue] & 1) == 0 && (objc_msgSend(v12, "isSimHidden") & 1) == 0)
          {
            v14 = [v12 isSimDataOnly];

            if (v14)
            {
              continue;
            }

            v13 = [v12 labelID];
            [(CSDDualSIMRingtoneHelper *)self refreshToneForSIMIdentifier:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)activeSubscriptionsDidChange
{
  v3 = [(CSDDualSIMRingtoneHelper *)self featureFlags];
  v4 = [v3 dualSIMRingtoneEnabled];

  if (v4)
  {

    [(CSDDualSIMRingtoneHelper *)self handleActiveSubscriptionsDidChange];
  }
}

- (void)sendDualSIMRingtoneMetrics
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067600;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end