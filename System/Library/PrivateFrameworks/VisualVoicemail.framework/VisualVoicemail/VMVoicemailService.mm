@interface VMVoicemailService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (VMVoicemailService)initWithTelephonyClient:(id)a3 telephonyClient:(id)a4;
- (id)daemonListener;
- (id)findContextInfoWithAccountUUID:(id)a3;
- (void)dealloc;
- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4;
- (void)full_start;
- (void)loadAllNotifications;
- (void)loadNotification:(id)a3;
- (void)removeNotification:(id)a3;
- (void)startXpc;
@end

@implementation VMVoicemailService

- (id)daemonListener
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E724;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D898 != -1)
  {
    dispatch_once(&qword_10010D898, block);
  }

  return qword_10010D890;
}

- (VMVoicemailService)initWithTelephonyClient:(id)a3 telephonyClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VMVoicemailService;
  v8 = [(VMVoicemailService *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(VMVoicemailService *)v8 setQueue:v6];
    [(VMVoicemailService *)v9 setTelephonyClient:v7];
    v10 = objc_alloc_init(NSMutableArray);
    clients = v9->_clients;
    v9->_clients = v10;

    carrierAccountDataSource = v9->_carrierAccountDataSource;
    v9->_carrierAccountDataSource = 0;

    carrierGreetingDataSource = v9->_carrierGreetingDataSource;
    v9->_carrierGreetingDataSource = 0;

    carrierServicesController = v9->_carrierServicesController;
    v9->_carrierServicesController = 0;

    accountManager = v9->_accountManager;
    v9->_accountManager = 0;

    greetingManager = v9->_greetingManager;
    v9->_greetingManager = 0;

    transcriptionService = v9->_transcriptionService;
    v9->_transcriptionService = 0;
  }

  return v9;
}

- (void)full_start
{
  v3 = [(VMVoicemailService *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100002784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "";
    v34 = 2080;
    v35 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Voicemail database", buf, 0x16u);
  }

  VMStoreInitializeLocked();
  v5 = sub_100002784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "";
    v34 = 2080;
    v35 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading services", buf, 0x16u);
  }

  v6 = objc_alloc_init(VMTranscriptionService);
  transcriptionService = self->_transcriptionService;
  self->_transcriptionService = v6;

  v8 = [VMCarrierServicesController alloc];
  v9 = self->_transcriptionService;
  v10 = [(VMVoicemailService *)self queue];
  v11 = [(VMVoicemailService *)self telephonyClient];
  v12 = [(VMCarrierServicesController *)v8 initWithTranscriptionService:v9 queue:v10 telephonyClient:v11];
  carrierServicesController = self->_carrierServicesController;
  self->_carrierServicesController = v12;

  v14 = [VMDCarrierAccountDataSource alloc];
  v15 = self->_carrierServicesController;
  v16 = [(VMVoicemailService *)self queue];
  v17 = [(VMVoicemailService *)self telephonyClient];
  v18 = [(VMDCarrierAccountDataSource *)v14 initWithServicesController:v15 queue:v16 telephonyClient:v17];
  carrierAccountDataSource = self->_carrierAccountDataSource;
  self->_carrierAccountDataSource = v18;

  v20 = [[VMDAccountManager alloc] initWithDataSource:self->_carrierAccountDataSource];
  accountManager = self->_accountManager;
  self->_accountManager = v20;

  v22 = [VMDCarrierGreetingDataSource alloc];
  v23 = self->_carrierServicesController;
  v24 = [(VMVoicemailService *)self telephonyClient];
  v25 = [(VMDCarrierGreetingDataSource *)v22 initWithServicesController:v23 telephonyClient:v24];
  carrierGreetingDataSource = self->_carrierGreetingDataSource;
  self->_carrierGreetingDataSource = v25;

  v27 = [[VMDGreetingManager alloc] initWithDataSource:self->_carrierGreetingDataSource];
  greetingManager = self->_greetingManager;
  self->_greetingManager = v27;

  v29 = [(VMVoicemailService *)self carrierServicesController];
  [v29 start];

  v30 = [(VMVoicemailService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E6C4;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(v30, block);
}

- (void)dealloc
{
  v3 = [(VMVoicemailService *)self daemonListener];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = VMVoicemailService;
  [(VMVoicemailService *)&v4 dealloc];
}

- (void)startXpc
{
  v3 = sub_100002784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "";
    v7 = 2080;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sResuming daemon listener", &v5, 0x16u);
  }

  v4 = [(VMVoicemailService *)self daemonListener];
  [v4 resume];

  notify_post([VMXPCConnectionAvailable UTF8String]);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VMVoicemailService *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(VMVoicemailService *)self daemonListener];

  if (v9 != v6)
  {
    v10 = sub_100002784();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v38 = "";
      v39 = 2080;
      v40 = "";
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAsked to accept a listener for an unknown type: %@, connection: %@", buf, 0x2Au);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v11 = [v7 valueForEntitlement:@"com.apple.visualvoicemail.client"];
  v10 = v11;
  if (!v11 || ![v11 BOOLValue])
  {
    v16 = sub_100002784();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "";
      v39 = 2080;
      v40 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sClient connection was rejected because it was not entitled", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v12 = sub_100002784();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "";
    v39 = 2080;
    v40 = "";
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sAccepting new connection for Daemon XPC listener: %@", buf, 0x20u);
  }

  v36 = 0;
  v13 = +[VMDaemon sharedDaemon];
  v31 = [v13 unlock_if_needed:&v36];

  v14 = v31 == 0;
  if (v31)
  {
    v15 = sub_100002784();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v38 = "";
      v39 = 2080;
      v40 = "";
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%sFirst Unlock check failed. Unable to accept new connection: %@, err:%@", buf, 0x2Au);
    }
  }

  else
  {
    if (v36 == 1)
    {
      v18 = sub_100002784();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v38 = "";
        v39 = 2080;
        v40 = "";
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sdaemon was full started by %@", buf, 0x20u);
      }
    }

    v19 = +[VMClientWrapper voicemailClientXPCInterface];
    [v7 setRemoteObjectInterface:v19];

    v20 = +[VMClientWrapper voicemailServerXPCInterface];
    [v7 setExportedInterface:v20];

    v21 = [VMVoicemailServiceController alloc];
    v30 = [(VMVoicemailService *)self accountManager];
    v22 = [(VMVoicemailService *)self greetingManager];
    v23 = [(VMVoicemailService *)self carrierServicesController];
    v24 = [(VMVoicemailService *)self transcriptionService];
    v25 = [(VMVoicemailService *)self telephonyClient];
    v26 = [(VMVoicemailServiceController *)v21 initWithConnection:v7 accountManager:v30 greetingManager:v22 carrierServicesController:v23 transcriptionService:v24 telephonyClient:v25];

    [v7 setExportedObject:v26];
    v27 = [(VMVoicemailService *)self clients];
    [v27 addObject:v26];

    objc_initWeak(buf, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10003EE28;
    v32[3] = &unk_1000EE608;
    v32[4] = self;
    v28 = v7;
    v33 = v28;
    objc_copyWeak(&v35, buf);
    v15 = v26;
    v34 = v15;
    v29 = objc_retainBlock(v32);
    [v28 setInvalidationHandler:v29];
    [v28 setInterruptionHandler:v29];
    [v28 resume];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

LABEL_15:
  return v14;
}

- (id)findContextInfoWithAccountUUID:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailService *)self telephonyClient];
  v6 = [v5 contexts];
  v7 = [v6 subscriptions];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = [v12 accountID];
        v15 = [v13 hashedUUID:v14];
        v16 = [v15 UUIDString];

        if ([v16 isEqual:v4])
        {
          v9 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)loadNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100002784();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    *buf = 136315650;
    v37 = "";
    v38 = 2080;
    v39 = "";
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sReading notification file %@", buf, 0x20u);
  }

  v35 = 0;
  v7 = [[NSDictionary alloc] initWithContentsOfURL:v4 error:&v35];
  v8 = v35;
  v9 = sub_100002784();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 136315650;
      v37 = "";
      v38 = 2080;
      v39 = "";
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification %@", buf, 0x20u);
    }

    v9 = [v7 objectForKey:@"Account"];
    v11 = [v7 objectForKey:@"Info"];
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v34 = 0;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v11 error:&v34];
    v17 = v34;
    if (v17)
    {
      v18 = sub_100002784();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v37 = "";
        v38 = 2080;
        v39 = "";
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#W %s%sError decoding data notification: %@", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v18 = sub_100002784();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v19)
      {
        *buf = 136315650;
        v37 = "";
        v38 = 2080;
        v39 = "";
        v40 = 2112;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification info %@", buf, 0x20u);
      }

      v18 = [(VMVoicemailService *)self findContextInfoWithAccountUUID:v9];
      log = sub_100002784();
      v20 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        v32 = v15;
        if (v20)
        {
          [v18 accountID];
          v22 = v21 = v16;
          *buf = 136316162;
          v37 = "";
          v38 = 2080;
          v39 = "";
          v40 = 2112;
          v41 = v18;
          v42 = 2112;
          v43 = v22;
          v44 = 2112;
          v45 = v9;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification for subscription %@ with account %@, accountUUID %@", buf, 0x34u);

          v16 = v21;
        }

        v31 = v16;
        v23 = [[NSMutableDictionary alloc] initWithDictionary:v16];
        v24 = [v18 uuid];
        v25 = [v24 UUIDString];
        [v23 setObject:v25 forKey:kCTIndicatorVoiceMailSubInstance];

        v26 = sub_100002784();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v37 = "";
          v38 = 2080;
          v39 = "";
          v40 = 2112;
          v41 = v23;
          v42 = 2112;
          v43 = v18;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting notification %@ for subscription %@", buf, 0x2Au);
        }

        v27 = self;
        v28 = v23;
        [(VMVoicemailService *)v27 executeHandlerForNotificationWithName:kCTIndicatorsVoiceMailNotification info:v23];
        v16 = v31;
        v15 = v32;
        v17 = 0;
        goto LABEL_27;
      }

      if (!v20)
      {
        v28 = log;
        goto LABEL_27;
      }

      *buf = 136315650;
      v37 = "";
      v38 = 2080;
      v39 = "";
      v40 = 2112;
      v41 = v9;
      v29 = "#W %s%sSubscription for accountUUID %@ not found";
      v28 = log;
      v30 = log;
    }

    else
    {
      if (!v19)
      {
LABEL_28:

        goto LABEL_29;
      }

      v28 = [v4 path];
      *buf = 136315650;
      v37 = "";
      v38 = 2080;
      v39 = "";
      v40 = 2112;
      v41 = v28;
      v29 = "#W %s%sInfo dictionary is nil for notification file at path %@";
      v30 = v18;
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);
LABEL_27:

    goto LABEL_28;
  }

  if (v10)
  {
    v11 = [v4 path];
    *buf = 136315906;
    v37 = "";
    v38 = 2080;
    v39 = "";
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not load notification file at path %@ due to error %@", buf, 0x2Au);
LABEL_29:
  }
}

- (void)removeNotification:(id)a3
{
  v3 = a3;
  v4 = sub_100002784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 path];
    *buf = 136315650;
    v13 = "";
    v14 = 2080;
    v15 = "";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving notification file %@", buf, 0x20u);
  }

  v6 = +[NSFileManager defaultManager];
  v11 = 0;
  v7 = [v6 removeItemAtURL:v3 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = sub_100002784();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 path];
      *buf = 136315906;
      v13 = "";
      v14 = 2080;
      v15 = "";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to remove notification file %@ with error %@", buf, 0x2Au);
    }
  }
}

- (void)loadAllNotifications
{
  v3 = sub_100085730();
  v4 = [v3 path];
  v5 = +[NSFileManager defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v25 = 0;
    v9 = [v8 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v25];
    v10 = v25;

    v11 = sub_100002784();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = [v3 path];
        *buf = 136315906;
        v28 = "";
        v29 = 2080;
        v30 = "";
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sError while reading notification directory at path: %@ error: %@", buf, 0x2Au);
      }
    }

    else
    {
      if (v12)
      {
        v15 = [v9 count];
        *buf = 136315906;
        v28 = "";
        v29 = 2080;
        v30 = "";
        v31 = 2112;
        v32 = v4;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sReading notification directory %@, %lu items", buf, 0x2Au);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v9;
      v16 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v11);
            }

            v20 = *(*(&v21 + 1) + 8 * i);
            [(VMVoicemailService *)self loadNotification:v20, v21];
            [(VMVoicemailService *)self removeNotification:v20];
          }

          v17 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v17);
      }
    }
  }

  else
  {
    v10 = sub_100002784();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v3 path];
      *buf = 136315650;
      v28 = "";
      v29 = 2080;
      v30 = "";
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNotification directory %@ does not exit", buf, 0x20u);
    }
  }
}

- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VMVoicemailService *)self carrierServicesController];
  [v8 executeHandlerForNotificationWithName:v7 userInfo:v6];
}

@end