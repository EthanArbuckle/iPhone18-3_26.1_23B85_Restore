@interface PushNotificationController
+ (BOOL)_amsHandleNotification:(id)a3 urlBag:(id)a4;
+ (id)_newPushHandlerWithURLBag:(id)a3;
+ (id)sharedInstance;
+ (id)soundFilesDirectoryPath;
- (BOOL)_isValidEnvironment:(id)a3;
- (PushNotificationController)init;
- (id)_bag;
- (id)_clientForIdentifier:(id)a3 createIfNeeded:(BOOL)a4 inContext:(id)a5;
- (id)_enabledTopics;
- (id)_environmentForName:(id)a3 createIfNeeded:(BOOL)a4 inContext:(id)a5;
- (id)_environmentNameForConnection:(id)a3;
- (id)_newAPSConnectionWithEnvironment:(id)a3;
- (id)_newPostTokenOperationForEnvironment:(id)a3 account:(id)a4;
- (id)_portNameForEnvironmentName:(id)a3;
- (int64_t)_numberOfClientsInContext:(id)a3;
- (void)_accountStoreChangedNotification:(id)a3;
- (void)_addNotificationWithUserInfo:(id)a3 client:(id)a4 context:(id)a5;
- (void)_closeEnvironment:(id)a3 inContext:(id)a4;
- (void)_deviceNameChanged;
- (void)_fireRegisterBlocksAfterOperation:(id)a3;
- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
- (void)_loadConnectionsInContext:(id)a3;
- (void)_networkTypeChanged:(id)a3;
- (void)_openConnectionForEnvironment:(id)a3;
- (void)_postNotificationsAvailableForClient:(id)a3 inContext:(id)a4;
- (void)_postTokenForEnvironment:(id)a3;
- (void)_postTokensInContext:(id)a3 force:(BOOL)a4;
- (void)_reloadActiveEnvironmentInContext:(id)a3;
- (void)_reloadDaemonClientInContext:(id)a3;
- (void)_reloadPushStateInContext:(id)a3;
- (void)_setShouldAggressivelySendToken:(BOOL)a3;
- (void)_storeFrontChangedNotification:(id)a3;
- (void)_updateEnvironmentAfterTokenPost:(id)a3;
- (void)_updatePushEnabledState;
- (void)_urlBagDidLoadNotification:(id)a3;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)observeXPCServer:(id)a3;
- (void)popRemoteNotificationWithMessage:(id)a3 connection:(id)a4;
- (void)postClientNotificationWithUserInfo:(id)a3;
- (void)postPushTokens;
- (void)registerNotificationClientWithMessage:(id)a3 connection:(id)a4;
- (void)registerTokenForEnvironmentName:(id)a3 accountIdentifier:(id)a4 completionBlock:(id)a5;
- (void)showLocalNotificationWithMessage:(id)a3 connection:(id)a4;
- (void)unregisterNotificationClientWithMessage:(id)a3 connection:(id)a4;
@end

@implementation PushNotificationController

- (PushNotificationController)init
{
  v22.receiver = self;
  v22.super_class = PushNotificationController;
  v2 = [(PushNotificationController *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.PushNotificationController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = dispatch_queue_create("com.apple.itunesstored.PushNotificationController.notify", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    v9 = v2->_notificationQueue;
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);

    [(PushNotificationController *)v2 _resetLastRegisterAttemptTime];
    v11 = objc_alloc_init(ISOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v11;

    [(ISOperationQueue *)v2->_operationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v13 = +[Daemon daemon];
    [v13 addKeepAliveOperationQueue:v2->_operationQueue];

    v14 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E3F4;
    block[3] = &unk_100327110;
    v15 = v2;
    v21 = v15;
    dispatch_async(v14, block);
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v15 selector:"_networkTypeChanged:" name:ISNetworkTypeChangedNotification object:0];
    [v16 addObserver:v15 selector:"_urlBagDidLoadNotification:" name:ISURLBagDidLoadNotification object:0];
    [v16 addObserver:v15 selector:"_accountStoreChangedNotification:" name:SSAccountStoreChangedNotification object:0];
    [v16 addObserver:v15 selector:"_storeFrontChangedNotification:" name:SSDeviceStoreFrontChangedNotification object:0];
    objc_initWeak(&location, v15);
    v23 = @"UserAssignedDeviceName";
    [NSArray arrayWithObjects:&v23 count:1];
    objc_copyWeak(&v18, &location);
    v15->_deviceNameChangedToken = MGRegisterForUpdates();
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ISNetworkTypeChangedNotification object:0];
  [v3 removeObserver:self name:ISURLBagDidLoadNotification object:0];
  [v3 removeObserver:self name:SSAccountStoreChangedNotification object:0];
  [v3 removeObserver:self name:SSDeviceStoreFrontChangedNotification object:0];
  MGCancelNotifications();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 removeFromRunLoop];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = +[Daemon daemon];
  [v10 removeKeepAliveOperationQueue:self->_operationQueue];

  [(NSMutableArray *)self->_tokenOperations makeObjectsPerformSelector:"setCompletionBlock:" withObject:0];
  v11.receiver = self;
  v11.super_class = PushNotificationController;
  [(PushNotificationController *)&v11 dealloc];
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010E730;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100383EB0 != -1)
  {
    dispatch_once(&qword_100383EB0, block);
  }

  v2 = qword_100383EA8;

  return v2;
}

+ (id)soundFilesDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [[NSArray alloc] initWithObjects:{v3, @"com.apple.itunesstored", @"APNS_Sounds", 0}];
  v5 = [NSString pathWithComponents:v4];

  return v5;
}

- (void)postClientNotificationWithUserInfo:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010E8BC;
  v7[3] = &unk_100327238;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)postPushTokens
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EE48;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)registerTokenForEnvironmentName:(id)a3 accountIdentifier:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010F0DC;
  v15[3] = &unk_100328E58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:self selector:"popRemoteNotificationWithMessage:connection:" forMessage:79];
  [v4 addObserver:self selector:"registerNotificationClientWithMessage:connection:" forMessage:80];
  [v4 addObserver:self selector:"showLocalNotificationWithMessage:connection:" forMessage:78];
  [v4 addObserver:self selector:"unregisterNotificationClientWithMessage:connection:" forMessage:81];
}

- (void)popRemoteNotificationWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F4D4;
  v7[3] = &unk_100328E80;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PushNotificationController *)v8 _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)registerNotificationClientWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010F7E0;
  v7[3] = &unk_100328E80;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PushNotificationController *)v8 _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)showLocalNotificationWithMessage:(id)a3 connection:(id)a4
{
  v7 = a3;
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v5 = SSXPCDictionaryCopyObjectWithClass();
    v6 = [[PushNotificationDisplayOperation alloc] initWithNotificationUserInfo:v5];
    [(ISOperationQueue *)self->_operationQueue addOperation:v6];
  }
}

- (void)unregisterNotificationClientWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010FB9C;
  v7[3] = &unk_100328E80;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(PushNotificationController *)v8 _handleMessage:v6 connection:v5 usingBlock:v7];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FFD4;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011030C;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
}

- (void)_accountStoreChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001109EC;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceNameChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110AD4;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_networkTypeChanged:(id)a3
{
  v4 = +[ISNetworkObserver sharedInstance];
  v5 = [v4 networkType];

  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100110D2C;
    block[3] = &unk_100327110;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_storeFrontChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110E34;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_urlBagDidLoadNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110F58;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  v4 = objc_alloc_init(PushNotificationSoundsSyncOperation);
  v5 = +[ISOperationQueue mainQueue];
  [v5 addOperation:v4];
}

- (void)_addNotificationWithUserInfo:(id)a3 client:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [PushNotification entityFromContext:v7];
  v10 = [[PushNotification alloc] initWithEntity:v12 insertIntoManagedObjectContext:v7];

  [(PushNotification *)v10 setClient:v8];
  v11 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];

  [(PushNotification *)v10 setUserInfo:v11];
}

+ (BOOL)_amsHandleNotification:(id)a3 urlBag:(id)a4
{
  v6 = a3;
  if (!a4)
  {
    a4 = +[SSLogConfig sharedDaemonConfig];
    if (!a4)
    {
      a4 = +[SSLogConfig sharedConfig];
    }

    v8 = [a4 shouldLog];
    if ([a4 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [a4 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v15 = 138412290;
      v16 = a1;
      LODWORD(v14) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_17:

        LOBYTE(a4) = 0;
        goto LABEL_18;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, &v15, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_17;
  }

  v7 = [a1 _newPushHandlerWithURLBag:a4];
  LODWORD(a4) = [v7 shouldHandleNotification:v6];
  if (a4)
  {
    [v7 handleNotification:v6];
  }

LABEL_18:
  return a4;
}

- (id)_bag
{
  v2 = [ISLoadURLBagOperation alloc];
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 run];
  v5 = [v4 URLBag];

  return v5;
}

- (id)_clientForIdentifier:(id)a3 createIfNeeded:(BOOL)a4 inContext:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [PushNotificationClient entityFromContext:v8];
  v10 = objc_alloc_init(NSFetchRequest);
  [v10 setEntity:v9];
  v11 = [NSPredicate predicateWithFormat:@"clientIdentifier=%@", v7];
  [v10 setPredicate:v11];

  v38 = 0;
  v12 = [v8 executeFetchRequest:v10 error:&v38];
  v13 = v38;
  v14 = v13;
  if (!v12)
  {
    v32 = v7;
    v16 = v13;
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v40 = 138412546;
      v41 = v22;
      v42 = 2112;
      v43 = v16;
      v23 = v22;
      LODWORD(v31) = 22;
      v24 = _os_log_send_and_compose_impl();

      v14 = v16;
      v7 = v32;
      if (!v24)
      {
LABEL_28:

        v15 = 0;
        goto LABEL_29;
      }

      v20 = [NSString stringWithCString:v24 encoding:4, &v40, v31];
      free(v24);
      SSFileLog();
    }

    else
    {
      v14 = v16;
      v7 = v32;
    }

    goto LABEL_28;
  }

  if ([v12 count] == 1)
  {
    v15 = [v12 objectAtIndex:0];
  }

  else
  {
    v33 = v14;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v8 deleteObject:*(*(&v34 + 1) + 8 * i)];
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v27);
    }

    if (v6)
    {
      v15 = [[PushNotificationClient alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
      [(PushNotificationClient *)v15 setClientIdentifier:v7];
    }

    else
    {
      v15 = 0;
    }

    v14 = v33;
    sub_1000CE00C(v8);
  }

LABEL_29:

  return v15;
}

- (void)_closeEnvironment:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 environmentName];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    *v25 = 138412546;
    *&v25[4] = objc_opt_class();
    *&v25[12] = 2112;
    *&v25[14] = v6;
    v13 = *&v25[4];
    LODWORD(v24) = 22;
    v23 = v25;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_12;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, v25, v24, *v25, *&v25[16]];
    free(v14);
    v23 = v12;
    SSFileLog();
  }

LABEL_12:
  [v7 deleteObject:v6];

  v15 = [(NSMutableDictionary *)self->_connections objectForKey:v8];
  if (v15)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      *v25 = 138412546;
      *&v25[4] = v20;
      *&v25[12] = 2112;
      *&v25[14] = v8;
      v21 = v20;
      LODWORD(v24) = 22;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_24:

        [v15 setDelegate:0];
        [v15 setEnabledTopics:0];
        [v15 removeFromRunLoop];
        [(NSMutableDictionary *)self->_connections removeObjectForKey:v8];
        goto LABEL_25;
      }

      v19 = [NSString stringWithCString:v22 encoding:4, v25, v24];
      free(v22);
      SSFileLog();
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (id)_enabledTopics
{
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    v2 = [NSArray arrayWithObject:@"com.apple.itunesstored"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_environmentForName:(id)a3 createIfNeeded:(BOOL)a4 inContext:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [PushNotificationEnvironment entityFromContext:v8];
  v10 = objc_alloc_init(NSFetchRequest);
  [v10 setEntity:v9];
  v11 = [NSPredicate predicateWithFormat:@"environmentName = %@", v7];
  [v10 setPredicate:v11];

  v38 = 0;
  v12 = [v8 executeFetchRequest:v10 error:&v38];
  v13 = v38;
  v14 = v13;
  if (!v12)
  {
    v32 = v13;
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v40 = 138412546;
      v41 = v21;
      v42 = 2112;
      v43 = v32;
      v22 = v21;
      LODWORD(v31) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_16:

        v15 = 0;
        v14 = v32;
        goto LABEL_28;
      }

      v19 = [NSString stringWithCString:v23 encoding:4, &v40, v31];
      free(v23);
      SSFileLog();
    }

    goto LABEL_16;
  }

  if ([v12 count] == 1)
  {
    v15 = [v12 objectAtIndex:0];
  }

  else
  {
    v33 = v14;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v8 deleteObject:*(*(&v34 + 1) + 8 * i)];
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v26);
    }

    if (v6)
    {
      v15 = [[PushNotificationEnvironment alloc] initWithEntity:v9 insertIntoManagedObjectContext:v8];
      [(PushNotificationEnvironment *)v15 setEnvironmentName:v7];
      v29 = [NSNumber numberWithInteger:0];
      [(PushNotificationEnvironment *)v15 setLastAccountIdentifier:v29];
    }

    else
    {
      v15 = 0;
    }

    v14 = v33;
    sub_1000CE00C(v8);
  }

LABEL_28:

  return v15;
}

- (id)_environmentNameForConnection:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_connections;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_connections objectForKey:v10, v14];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_fireRegisterBlocksAfterOperation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 authenticationContext];
  v7 = [v6 requiredUniqueIdentifier];

  v26 = v4;
  v8 = [v4 environmentName];
  v9 = [(NSMutableArray *)self->_registerBlocks count];
  if (v9 >= 1)
  {
    v10 = v9 + 1;
    do
    {
      v11 = [(NSMutableArray *)self->_registerBlocks objectAtIndex:v10 - 2];
      v12 = [v11 accountIdentifier];
      if ([v12 isEqualToNumber:v7])
      {
        v13 = [v11 environmentName];
        v14 = [v13 isEqualToString:v8];

        if (v14)
        {
          v15 = [v11 block];
          [v5 insertObject:v15 atIndex:0];

          [(NSMutableArray *)self->_registerBlocks removeObjectAtIndex:v10 - 2];
        }
      }

      else
      {
      }

      --v10;
    }

    while (v10 > 1);
  }

  if ([v5 count])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = v21;
      v29 = 138412546;
      v30 = v21;
      v31 = 2048;
      v32 = [v5 count];
      LODWORD(v25) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_21:

        notificationQueue = self->_notificationQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10011221C;
        block[3] = &unk_100327110;
        v28 = v5;
        dispatch_async(notificationQueue, block);

        goto LABEL_22;
      }

      v19 = [NSString stringWithCString:v23 encoding:4, &v29, v25];
      free(v23);
      SSFileLog();
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[XPCClient alloc] initWithInputConnection:v9];
  if ([(XPCClient *)v11 hasEntitlements])
  {
    v12 = +[Daemon daemon];
    [v12 takeKeepAliveAssertion:@"com.apple.itunesstore.PushNotificationController"];

    dispatchQueue = self->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100112450;
    v15[3] = &unk_100328EA8;
    v17 = v10;
    v16 = v11;
    dispatch_async(dispatchQueue, v15);
  }

  else
  {
    reply = xpc_dictionary_create_reply(v8);
    xpc_connection_send_message(v9, reply);
  }
}

- (BOOL)_isValidEnvironment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 isEqualToString:APSEnvironmentProduction])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isEqualToString:APSEnvironmentDevelopment];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_loadConnectionsInContext:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v54 = 138412290;
    *&v54[4] = objc_opt_class();
    v9 = *&v54[4];
    LODWORD(v46) = 12;
    v44 = v54;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v8 = [NSString stringWithCString:v10 encoding:4, v54, v46];
    free(v10);
    v44 = v8;
    SSFileLog();
  }

LABEL_12:
  v11 = objc_alloc_init(NSFetchRequest);
  v12 = [PushNotificationEnvironment entityFromContext:v4];
  [v11 setEntity:v12];

  v52 = 0;
  v13 = [v4 executeFetchRequest:v11 error:&v52];
  v14 = v52;
  v15 = +[SSLogConfig sharedDaemonConfig];
  v16 = v15;
  v47 = v14;
  if (!v13)
  {
    if (!v15)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v29 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v16 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      *v54 = 138412546;
      *&v54[4] = v32;
      *&v54[12] = 2112;
      *&v54[14] = v14;
      v33 = v32;
      LODWORD(v46) = 22;
      v45 = v54;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_43:

        goto LABEL_44;
      }

      v31 = [NSString stringWithCString:v34 encoding:4, v54, v46];
      free(v34);
      v45 = v31;
      SSFileLog();
    }

    goto LABEL_43;
  }

  if (!v15)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  v20 = objc_opt_class();
  v21 = v20;
  v22 = [v13 count];
  *v54 = 138412546;
  *&v54[4] = v20;
  *&v54[12] = 2048;
  *&v54[14] = v22;
  LODWORD(v46) = 22;
  v45 = v54;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v19 = [NSString stringWithCString:v23 encoding:4, v54, v46];
    free(v23);
    v45 = v19;
    SSFileLog();
LABEL_23:
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(PushNotificationController *)self _openConnectionForEnvironment:*(*(&v48 + 1) + 8 * i), v45];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  sub_1000CE00C(v4);
LABEL_44:
  *v54 = APSEnvironmentProduction;
  *&v54[8] = APSEnvironmentDevelopment;
  v35 = v54;
  v36 = 1;
  do
  {
    v37 = v36;
    v38 = *v35;
    v39 = [(NSMutableDictionary *)self->_connections objectForKey:*v35, v45];

    if (!v39)
    {
      v40 = [APSConnection alloc];
      v41 = [(PushNotificationController *)self _portNameForEnvironmentName:v38];
      v42 = [v40 initWithEnvironmentName:v38 namedDelegatePort:v41];

      [v42 setEnabledTopics:0];
    }

    v36 = 0;
    v35 = &v54[8];
  }

  while ((v37 & 1) != 0);
  for (j = 8; j != -8; j -= 8)
  {
  }
}

- (id)_newAPSConnectionWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [APSConnection alloc];
  v6 = [(PushNotificationController *)self _portNameForEnvironmentName:v4];
  v7 = [v5 initWithEnvironmentName:v4 namedDelegatePort:v6];

  [v7 setDelegate:self];
  v8 = [(PushNotificationController *)self _enabledTopics];
  [v7 setEnabledTopics:v8];

  v9 = +[NSRunLoop mainRunLoop];
  [v7 scheduleInRunLoop:v9];

  return v7;
}

- (id)_newPostTokenOperationForEnvironment:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PostPushNotificationTokenOperation alloc];
  v8 = [v6 environmentName];
  v9 = [v6 tokenData];

  v10 = [(PostPushNotificationTokenOperation *)v7 initWithEnvironmentName:v8 tokenData:v9];
  v11 = [[SSAuthenticationContext alloc] initWithAccount:v5];

  [(PostPushNotificationTokenOperation *)v10 setAuthenticationContext:v11];
  return v10;
}

+ (id)_newPushHandlerWithURLBag:(id)a3
{
  v10 = @"4";
  v11 = @"22";
  v12 = @"25";
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v10 count:3];
  v5 = [NSSet setWithArray:v4, v10, v11, v12];

  v6 = [[AMSPushConfiguration alloc] initWithEnabledActionTypes:v5];
  [v6 setUserNotificationExtensionId:@"mst-notification-category"];
  v7 = [[ISAMSBagShim alloc] initWithURLBag:v3];

  v8 = [[AMSPushHandler alloc] initWithConfiguration:v6 bag:v7];
  return v8;
}

- (int64_t)_numberOfClientsInContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSFetchRequest);
  v5 = [PushNotificationClient entityFromContext:v3];
  [v4 setEntity:v5];

  v6 = [v3 countForFetchRequest:v4 error:0];
  return v6;
}

- (void)_openConnectionForEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 environmentName];
  if (![(PushNotificationController *)self _isValidEnvironment:v5])
  {
    goto LABEL_18;
  }

  v6 = [(NSMutableDictionary *)self->_connections objectForKey:v5];
  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v20 = 138412546;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2112;
      *&v20[14] = v4;
      v11 = *&v20[4];
      LODWORD(v19) = 22;
      v18 = v20;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_14:

        v6 = [(PushNotificationController *)self _newAPSConnectionWithEnvironment:v5];
        [(NSMutableDictionary *)self->_connections setObject:v6 forKey:v5];
        goto LABEL_15;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v20, v19, *v20, *&v20[16]];
      free(v12);
      v18 = v10;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v13 = [v6 publicToken];
  v14 = [v4 tokenData];
  v15 = [v13 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [NSNumber numberWithInteger:0];
    [v4 setLastAccountIdentifier:v16];

    v17 = [v6 publicToken];
    [v4 setTokenData:v17];
  }

LABEL_18:
}

- (id)_portNameForEnvironmentName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:APSEnvironmentProduction])
  {
    v4 = @"com.apple.itunesstored.aps";
  }

  else if ([v3 isEqualToString:APSEnvironmentDevelopment])
  {
    v4 = @"com.apple.itunesstored.aps.dev";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_postNotificationsAvailableForClient:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSFetchRequest);
  v8 = [PushNotification entityFromContext:v6];
  [v7 setEntity:v8];

  v9 = [NSPredicate predicateWithFormat:@"client=%@", v5];
  [v7 setPredicate:v9];

  v10 = [v6 countForFetchRequest:v7 error:0];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v16 = v15;
    [v5 clientIdentifier];
    v19 = 138412802;
    v20 = v15;
    v21 = 2048;
    v22 = v10;
    v24 = v23 = 2112;
    LODWORD(v18) = 32;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = [NSString stringWithCString:v17 encoding:4, &v19, v18];
    free(v17);
    SSFileLog();
  }

LABEL_12:
  if (v10 >= 1)
  {
    notify_post(kSSNotificationReceivedPushNotification);
  }
}

- (void)_postTokenForEnvironment:(id)a3
{
  v4 = a3;
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    [(PushNotificationController *)self _setShouldAggressivelySendToken:1];
    v5 = [v4 environmentName];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = self->_tokenOperations;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = *v33;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = [v10 environmentName];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v21 = v10;

      if (v21)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_10:
    }

    v22 = +[SSAccountStore defaultStore];
    v23 = [v22 activeAccount];
    v21 = [(PushNotificationController *)self _newPostTokenOperationForEnvironment:v4 account:v23];

    objc_initWeak(location, v21);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100113794;
    v30[3] = &unk_100328EF8;
    v30[4] = self;
    objc_copyWeak(&v31, location);
    [v21 setCompletionBlock:v30];
    tokenOperations = self->_tokenOperations;
    if (!tokenOperations)
    {
      v25 = objc_alloc_init(NSMutableArray);
      v27 = self->_tokenOperations;
      p_tokenOperations = &self->_tokenOperations;
      *p_tokenOperations = v25;

      tokenOperations = *p_tokenOperations;
    }

    [(NSMutableArray *)tokenOperations addObject:v21];
    v28 = +[ISOperationQueue mainQueue];
    [v28 addOperation:v21];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
LABEL_25:
  }

  else
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v13 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v5 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      pushEnabledState = self->_pushEnabledState;
      *location = 138543618;
      *&location[4] = v16;
      v37 = 2048;
      v38 = pushEnabledState;
      v18 = v16;
      LODWORD(v29) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (v19)
      {
        v20 = [NSString stringWithCString:v19 encoding:4, location, v29];
        free(v19);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

- (void)_postTokensInContext:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PushNotificationController *)self _shouldAggressivelySendToken])
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v61 = 138543362;
      v62 = objc_opt_class();
      v12 = v62;
      LODWORD(v52) = 12;
      v50 = &v61;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_14:

        v4 = 1;
        goto LABEL_15;
      }

      v10 = [NSString stringWithCString:v13 encoding:4, &v61, v52];
      free(v13);
      v50 = v10;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(PushNotificationController *)self _isPushEnabled])
  {
    v14 = +[SSAccountStore defaultStore];
    v15 = [v14 activeAccount];

    v16 = objc_alloc_init(NSFetchRequest);
    v17 = [PushNotificationEnvironment entityFromContext:v6];
    [v16 setEntity:v17];

    if (!v4)
    {
      v18 = [v15 uniqueIdentifier];
      v19 = [NSPredicate predicateWithFormat:@"(tokenData != nil) AND (lastAccountIdentifier != %@)", v18];
      [v16 setPredicate:v19];
    }

    v59 = 0;
    v20 = [v6 executeFetchRequest:v16 error:&v59];
    v21 = v59;
    v22 = +[SSLogConfig sharedDaemonConfig];
    v23 = v22;
    if (v20)
    {
      v54 = v6;
      if (!v22)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      v24 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v25 = v24 | 2;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      if (v27)
      {
        v28 = v21;
        v29 = objc_opt_class();
        v53 = v29;
        v30 = [v20 count];
        v61 = 138543874;
        v62 = v29;
        v21 = v28;
        v63 = 2048;
        v64 = v30;
        v65 = 1024;
        v66 = v4;
        LODWORD(v52) = 28;
        v51 = &v61;
        v31 = _os_log_send_and_compose_impl();

        v6 = v54;
        if (!v31)
        {
          goto LABEL_54;
        }

        v26 = [NSString stringWithCString:v31 encoding:4, &v61, v52];
        free(v31);
        v51 = v26;
        SSFileLog();
      }

      else
      {
        v6 = v54;
      }

LABEL_54:
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v23 = v20;
      v45 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = v21;
        v48 = *v56;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v56 != v48)
            {
              objc_enumerationMutation(v23);
            }

            [(PushNotificationController *)self _postTokenForEnvironment:*(*(&v55 + 1) + 8 * i), v51];
          }

          v46 = [v23 countByEnumeratingWithState:&v55 objects:v60 count:16];
        }

        while (v46);
        v21 = v47;
      }

      goto LABEL_62;
    }

    if (!v22)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v37 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v23 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = v6;
      v42 = objc_opt_class();
      v61 = 138412546;
      v62 = v42;
      v63 = 2112;
      v64 = v21;
      v43 = v42;
      LODWORD(v52) = 22;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
        v6 = v41;
        goto LABEL_62;
      }

      v39 = [NSString stringWithCString:v44 encoding:4, &v61, v52];
      free(v44);
      SSFileLog();
      v6 = v41;
    }

LABEL_62:
    goto LABEL_63;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v32 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v32 |= 2u;
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 & 2;
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  v34 = objc_opt_class();
  v61 = 138543362;
  v62 = v34;
  v35 = v34;
  LODWORD(v52) = 12;
  v36 = _os_log_send_and_compose_impl();

  if (v36)
  {
    v16 = [NSString stringWithCString:v36 encoding:4, &v61, v52];
    free(v36);
    SSFileLog();
LABEL_63:
  }
}

- (void)_reloadActiveEnvironmentInContext:(id)a3
{
  v4 = a3;
  pushEnabledState = self->_pushEnabledState;
  if (pushEnabledState != -1)
  {
    if (pushEnabledState == 1)
    {
      v6 = [(PushNotificationController *)self _bag];
      v7 = [v6 valueForKey:@"push-notifications"];
      v8 = [v7 objectForKey:@"environment"];
      if (![(PushNotificationController *)self _isValidEnvironment:v8])
      {
        v9 = APSEnvironmentProduction;

        v8 = v9;
      }
    }

    else
    {
      v8 = 0;
    }

    if (![(PushNotificationController *)self _numberOfClientsInContext:v4])
    {

      v8 = 0;
    }

    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v48 = 138412546;
      v49 = objc_opt_class();
      v50 = 2112;
      v51 = v8;
      v14 = v49;
      LODWORD(v41) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_20;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, &v48, v41];
      free(v15);
      SSFileLog();
    }

LABEL_20:
    v16 = objc_alloc_init(NSFetchRequest);
    v17 = [PushNotificationEnvironment entityFromContext:v4];
    [v16 setEntity:v17];

    v18 = @"nil";
    if (v8)
    {
      v18 = v8;
    }

    v19 = [NSPredicate predicateWithFormat:@"environmentName != %@", v18];
    [v16 setPredicate:v19];

    v46 = 0;
    v20 = [v4 executeFetchRequest:v16 error:&v46];
    v21 = v46;
    if (v20)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(PushNotificationController *)self _closeEnvironment:*(*(&v42 + 1) + 8 * i) inContext:v4];
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v24);
      }

LABEL_42:

      if (v8)
      {
        v33 = [(PushNotificationController *)self _environmentForName:v8 createIfNeeded:1 inContext:v4];
        [(PushNotificationController *)self _openConnectionForEnvironment:v33];
        [(PushNotificationController *)self _postTokensIfNecessaryInContext:v4];
LABEL_55:

        goto LABEL_56;
      }

      v33 = +[SSLogConfig sharedDaemonConfig];
      if (!v33)
      {
        v33 = +[SSLogConfig sharedConfig];
      }

      v34 = [v33 shouldLog];
      if ([v33 shouldLogToDisk])
      {
        v35 = v34 | 2;
      }

      else
      {
        v35 = v34;
      }

      v36 = [v33 OSLogObject];
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v35 &= 2u;
      }

      if (v35)
      {
        v37 = objc_opt_class();
        v48 = 138543362;
        v49 = v37;
        v38 = v37;
        LODWORD(v41) = 12;
        v39 = _os_log_send_and_compose_impl();

        if (!v39)
        {
          goto LABEL_55;
        }

        v36 = [NSString stringWithCString:v39 encoding:4, &v48, v41];
        free(v39);
        SSFileLog();
      }

      goto LABEL_55;
    }

    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v27 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v22 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v48 = 138412546;
      v49 = v30;
      v50 = 2112;
      v51 = v21;
      v31 = v30;
      LODWORD(v41) = 22;
      v40 = &v48;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
        goto LABEL_42;
      }

      v29 = [NSString stringWithCString:v32 encoding:4, &v48, v41];
      free(v32);
      v40 = v29;
      SSFileLog();
    }

    goto LABEL_42;
  }

LABEL_56:
}

- (void)_reloadDaemonClientInContext:(id)a3
{
  v4 = a3;
  v5 = [(PushNotificationController *)self _bag];
  v6 = [v5 valueForKey:@"automatic-downloads2"];
  if (!v6)
  {
    v6 = [v5 valueForKey:@"automatic-downloads"];
  }

  v7 = [v6 objectForKey:@"downloads-url"];

  if (!v7)
  {
    v15 = [(PushNotificationController *)self _clientForIdentifier:@"com.apple.itunesstored" createIfNeeded:0 inContext:v4];
    if (!v15)
    {
LABEL_29:

      goto LABEL_30;
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(v23) = 138412290;
      *(&v23 + 4) = objc_opt_class();
      v20 = *(&v23 + 4);
      LODWORD(v22) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_28:

        [v4 deleteObject:v15];
        goto LABEL_29;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, &v23, v22, v23];
      free(v21);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  LODWORD(v23) = 138412290;
  *(&v23 + 4) = objc_opt_class();
  v12 = *(&v23 + 4);
  LODWORD(v22) = 12;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v11 = [NSString stringWithCString:v13 encoding:4, &v23, v22, v23];
    free(v13);
    SSFileLog();
LABEL_14:
  }

  v14 = [(PushNotificationController *)self _clientForIdentifier:@"com.apple.itunesstored" createIfNeeded:1 inContext:v4];
LABEL_30:
}

- (void)_reloadPushStateInContext:(id)a3
{
  v4 = a3;
  v5 = [(PushNotificationController *)self _isPushEnabled];
  [(PushNotificationController *)self _updatePushEnabledState];
  [(PushNotificationController *)self _reloadDaemonClientInContext:v4];
  [(PushNotificationController *)self _reloadActiveEnvironmentInContext:v4];
  v6 = [(PushNotificationController *)self _isPushEnabled];
  if (v5 == v6)
  {
    goto LABEL_31;
  }

  v7 = v6;
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_class();
  pushEnabledState = self->_pushEnabledState;
  v44 = 138412546;
  v45 = v12;
  v46 = 2048;
  v47 = pushEnabledState;
  v14 = v12;
  LODWORD(v33) = 22;
  v32 = &v44;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v11 = [NSString stringWithCString:v15 encoding:4, &v44, v33];
    free(v15);
    v32 = v11;
    SSFileLog();
LABEL_12:
  }

  v16 = [(PushNotificationController *)self _enabledTopics];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_connections;
  v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(NSMutableDictionary *)self->_connections objectForKey:*(*(&v38 + 1) + 8 * i), v32];
        [v22 setEnabledTopics:v16];
      }

      v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v19);
  }

  if (v7)
  {
    [(PushNotificationController *)self _postTokensIfNecessaryInContext:v4];
  }

  else
  {
    v23 = objc_alloc_init(NSFetchRequest);
    v24 = [PushNotificationEnvironment entityFromContext:v4];
    [v23 setEntity:v24];

    v25 = [v4 executeFetchRequest:v23 error:0];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v34 + 1) + 8 * j);
          v31 = [NSNumber numberWithInteger:0, v32];
          [v30 setLastAccountIdentifier:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v27);
    }
  }

LABEL_31:
}

- (void)_setShouldAggressivelySendToken:(BOOL)a3
{
  v3 = &kCFBooleanTrue;
  if (!a3)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"ShouldForcePushTokenRequest", *v3, kSSUserDefaultsIdentifier);

  CFPreferencesAppSynchronize(v4);
}

- (void)_updateEnvironmentAfterTokenPost:(id)a3
{
  v4 = a3;
  v5 = +[NSThread beginPrivateManagedContextSession];
  v6 = [v4 environmentName];
  v7 = [(PushNotificationController *)self _environmentForName:v6 createIfNeeded:0 inContext:v5];

  if (v7)
  {
    v8 = [v4 authenticationContext];
    v9 = [v8 requiredUniqueIdentifier];

    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [v4 environmentName];
      v20 = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v9;
      LODWORD(v19) = 32;
      v18 = &v20;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_13:

        [v7 setLastAccountIdentifier:v9];
        sub_1000CE00C(v5);

        goto LABEL_14;
      }

      v13 = [NSString stringWithCString:v17 encoding:4, &v20, v19];
      free(v17);
      v18 = v13;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  +[NSThread endPrivateManagedContextSession];
}

- (void)_updatePushEnabledState
{
  v3 = [(PushNotificationController *)self _bag];
  v4 = +[SSAccountStore defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    if (v3)
    {
      v6 = [v3 valueForKey:@"push-notifications"];

      if (v6)
      {
        self->_pushEnabledState = 1;
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v9 &= 2u;
        }

        if (!v9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        self->_pushEnabledState = 0;
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v15 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        v10 = [v7 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v16 &= 2u;
        }

        if (!v16)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      self->_pushEnabledState = -1;
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v13 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v10 = [v7 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 &= 2u;
      }

      if (!v14)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    self->_pushEnabledState = 0;
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v11 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v17 = objc_opt_class();
  pushEnabledState = self->_pushEnabledState;
  *v22 = 138543618;
  *&v22[4] = v17;
  *&v22[12] = 2048;
  *&v22[14] = pushEnabledState;
  v19 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v10 = [NSString stringWithCString:v20 encoding:4, v22, v21, *v22, *&v22[16]];
    free(v20);
    SSFileLog();
LABEL_41:
  }
}

@end