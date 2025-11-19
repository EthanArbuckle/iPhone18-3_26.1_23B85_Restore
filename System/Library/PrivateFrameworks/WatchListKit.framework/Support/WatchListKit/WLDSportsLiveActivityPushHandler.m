@interface WLDSportsLiveActivityPushHandler
+ (BOOL)shouldSuppressNotification:(id)a3;
- (BOOL)shouldHandleNotification:(id)a3;
- (id)connection;
- (void)createLiveActivityForCanonicalId:(id)a3 supplementaryData:(id)a4 completion:(id)a5;
- (void)handleGameStartNotification:(id)a3 completion:(id)a4;
- (void)handleNotification:(id)a3 completion:(id)a4;
- (void)handleSentimentNotification:(id)a3 completion:(id)a4;
- (void)shouldSuppressNotificationForCanonicalId:(id)a3 comletion:(id)a4;
@end

@implementation WLDSportsLiveActivityPushHandler

- (BOOL)shouldHandleNotification:(id)a3
{
  v3 = [a3 wlk_dictionaryForKey:@"payload"];
  if (!IsSentiment(v3))
  {
    if (!IsSession(v3))
    {
      goto LABEL_13;
    }

    v8 = v3;
    v9 = _os_feature_enabled_impl() ? @"sportsLAAEnabled" : @"liveActivityAutostartEnabled";
    v10 = [v8 wlk_BOOLForKey:v9 defaultValue:0];

    if (!v10)
    {
      goto LABEL_13;
    }

    if (_os_feature_enabled_impl())
    {
      v11 = [v8 wlk_stringForKey:@"trigger"];
      v12 = [v11 isEqualToString:@"UpNext"];

      if (v12)
      {
LABEL_13:
        v7 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v14 = +[WLKSystemPreferencesStore sharedPreferences];
      v15 = [v14 sportsScoreSpoilersAllowed];

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    v4 = WLKPushNotificationsLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v16 = 0;
    v5 = "WLDSportsLiveActivityPushHandler - Sports handling Game Start notification";
    v6 = &v16;
    goto LABEL_4;
  }

  v4 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "WLDSportsLiveActivityPushHandler - Sports handling Sentiment notification";
    v6 = buf;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

LABEL_5:

  v7 = 1;
LABEL_14:

  return v7;
}

- (void)handleNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 wlk_dictionaryForKey:@"payload"];
  if (IsSession(v8))
  {
    [(WLDSportsLiveActivityPushHandler *)self handleGameStartNotification:v6 completion:v7];
  }

  else if (IsSentiment(v8))
  {
    [(WLDSportsLiveActivityPushHandler *)self handleSentimentNotification:v6 completion:v7];
  }

  else
  {
    v9 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Sport cannot handle unsupported notification type", v10, 2u);
    }

    v7[2](v7, 0);
  }
}

- (void)handleSentimentNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 wlk_dictionaryForKey:@"payload"];
  v7 = [v8 wlk_stringForKey:@"entityId"];
  [(WLDSportsLiveActivityPushHandler *)self shouldSuppressNotificationForCanonicalId:v7 comletion:v6];
}

- (void)handleGameStartNotification:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 wlk_dictionaryForKey:@"payload"];
  v8 = [v7 wlk_stringForKey:@"entityId"];
  v9 = objc_opt_new();
  v10 = [v7 wlk_dictionaryForKey:@"liveActivityAutostart"];
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"liveActivityAutostart"];
  }

  v11 = v7;
  v12 = [v11 wlk_dictionaryForKey:@"liveActivityAutostart"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 wlk_stringForKey:@"actionId"];
    if (v14)
    {
      v28 = v8;
      v29 = v11;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = [v11 wlk_arrayForKey:@"actions"];
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v25 = v6;
        v26 = v10;
        v27 = self;
        v18 = *v34;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 wlk_stringForKey:@"id"];
              if ([v21 isEqualToString:v14])
              {
                v22 = v20;

                goto LABEL_19;
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v22 = 0;
LABEL_19:
        self = v27;
        v6 = v25;
        v10 = v26;
      }

      else
      {
        v22 = 0;
      }

      v8 = v28;
      v11 = v29;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    [v9 setObject:v22 forKeyedSubscript:@"liveActivityAutostartAction"];
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __75__WLDSportsLiveActivityPushHandler_handleGameStartNotification_completion___block_invoke;
  v30[3] = &unk_100045CF0;
  v31 = v8;
  v32 = v6;
  v23 = v6;
  v24 = v8;
  [(WLDSportsLiveActivityPushHandler *)self createLiveActivityForCanonicalId:v24 supplementaryData:v9 completion:v30];
}

void __75__WLDSportsLiveActivityPushHandler_handleGameStartNotification_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 localizedDescription];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Failed to handle game start notification for canonicalID %@: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)shouldSuppressNotification:(id)a3
{
  v3 = [a3 wlk_stringForKey:@"entityId"];
  v4 = +[WLKSettingsStore sharedSettings];
  v5 = [v4 suppressedSportsEventIDs];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (void)shouldSuppressNotificationForCanonicalId:(id)a3 comletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WLDSportsLiveActivityPushHandler *)self connection];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __87__WLDSportsLiveActivityPushHandler_shouldSuppressNotificationForCanonicalId_comletion___block_invoke;
  v11[3] = &unk_100045D18;
  v12 = v6;
  v9 = v6;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v11];

  [v10 shouldSuppressNotification:v7 completion:v9];
}

void __87__WLDSportsLiveActivityPushHandler_shouldSuppressNotificationForCanonicalId_comletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Error in shouldSuppressNotificationForCanonicalId: %@", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)createLiveActivityForCanonicalId:(id)a3 supplementaryData:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(WLDSportsLiveActivityPushHandler *)self connection];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __98__WLDSportsLiveActivityPushHandler_createLiveActivityForCanonicalId_supplementaryData_completion___block_invoke;
  v19[3] = &unk_100045D18;
  v12 = v9;
  v20 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v19];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __98__WLDSportsLiveActivityPushHandler_createLiveActivityForCanonicalId_supplementaryData_completion___block_invoke_10;
  v16[3] = &unk_100045CF0;
  v17 = v8;
  v18 = v12;
  v14 = v12;
  v15 = v8;
  [v13 createActivityWithCanonicalId:v15 supplementaryData:v10 completion:v16];
}

void __98__WLDSportsLiveActivityPushHandler_createLiveActivityForCanonicalId_supplementaryData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Error in XPC connection when creating live activity: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __98__WLDSportsLiveActivityPushHandler_createLiveActivityForCanonicalId_supplementaryData_completion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v3 localizedDescription];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Error creating live activity for canonicalId %@: %@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.sportsd.session.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___WLKSportsCommunicationsProtocol];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_14];
    objc_initWeak(&location, self);
    v8 = self->_connection;
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = __46__WLDSportsLiveActivityPushHandler_connection__block_invoke_63;
    v13 = &unk_100044AE8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_connection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __46__WLDSportsLiveActivityPushHandler_connection__block_invoke(id a1)
{
  v1 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Connection interrupted.", v2, 2u);
  }
}

void __46__WLDSportsLiveActivityPushHandler_connection__block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WLDSportsLiveActivityPushHandler - Connection invalidated.", v4, 2u);
  }

  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

@end