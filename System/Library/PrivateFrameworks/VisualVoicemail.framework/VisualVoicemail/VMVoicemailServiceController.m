@interface VMVoicemailServiceController
- (NSString)description;
- (VMCarrierServicesController)carrierServicesController;
- (VMDAccountManager)accountManager;
- (VMDGreetingManager)greetingManager;
- (VMTranscriptionService)transcriptionService;
- (VMVoicemailServiceController)initWithConnection:(id)a3 accountManager:(id)a4 greetingManager:(id)a5 carrierServicesController:(id)a6 transcriptionService:(id)a7 telephonyClient:(id)a8;
- (id).cxx_construct;
- (id)allVoicemails;
- (id)clientConnectionWithErrorHandler:(id)a3;
- (void)_handleCheckSubscriptionStatus:(id)a3;
- (void)_handleOnlineStatusChanged:(id)a3;
- (void)_handleSubscriptionStatusChanged:(id)a3;
- (void)_handleSyncStatusChangedNotification:(id)a3;
- (void)_handleVoicemailStorageUsageChanged:(id)a3;
- (void)_handleVoicemailStoreSaved;
- (void)accounts:(id)a3;
- (void)accountsDidChangeForAccountManager:(id)a3;
- (void)allVoicemails:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)createPersonalizedTranscript:(id)a3 reply:(id)a4;
- (void)createTranscription:(id)a3 transcription:(id)a4 reply:(id)a5;
- (void)dealloc;
- (void)getServiceInfoForAccountUUID:(id)a3 reply:(id)a4;
- (void)greetingChangedByCarrier:(id)a3;
- (void)greetingForAccountUUID:(id)a3 reply:(id)a4;
- (void)greetingManager:(id)a3 greetingDidChangeForAccountUUID:(id)a4;
- (void)greetingManager:(id)a3 greetingWillChangeForAccountUUID:(id)a4;
- (void)insertVoicemail:(id)a3;
- (void)isAccountOnline:(id)a3 reply:(id)a4;
- (void)isAccountSubscribed:(id)a3 reply:(id)a4;
- (void)isCallVoicemailSupportedForAccountUUID:(id)a3 reply:(id)a4;
- (void)isGreetingChangeSupportedForAccountUUID:(id)a3 reply:(id)a4;
- (void)isPasscodeChangeSupportedForAccountUUID:(id)a3 reply:(id)a4;
- (void)maximumGreetingDurationForAccountUUID:(id)a3 reply:(id)a4;
- (void)maximumPasscodeLengthForAccountUUID:(id)a3 reply:(id)a4;
- (void)messageCountForMailboxType:(int64_t)a3 read:(BOOL)a4 reply:(id)a5;
- (void)messageCountForMailboxType:(int64_t)a3 reply:(id)a4;
- (void)messagesForMailboxType:(int64_t)a3 limit:(int64_t)a4 offset:(int64_t)a5 reply:(id)a6;
- (void)messagesForMailboxType:(int64_t)a3 read:(BOOL)a4 limit:(int64_t)a5 offset:(int64_t)a6 reply:(id)a7;
- (void)minimumPasscodeLengthForAccountUUID:(id)a3 reply:(id)a4;
- (void)obliterate;
- (void)ping:(id)a3;
- (void)remapAccount:(id)a3 toAccount:(id)a4;
- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)a3;
- (void)reportTranscriptionProblemForIdentifier:(int64_t)a3;
- (void)reportTranscriptionProblemForUUID:(id)a3;
- (void)requestInitialState:(id)a3;
- (void)requestTranscriptionProgress:(id)a3;
- (void)resetNetworkSettings;
- (void)retrieveDataForIdentifier:(int64_t)a3;
- (void)sendStateRequestForAccountUUID:(id)a3;
- (void)setAccountProperties:(id)a3 properties:(id)a4 reply:(id)a5;
- (void)setDeletedForIdentifier:(int64_t)a3;
- (void)setDeletedForIdentifiers:(id)a3;
- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 reply:(id)a5;
- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 reply:(id)a5;
- (void)setReadForIdentifier:(int64_t)a3;
- (void)setReadForIdentifiers:(id)a3;
- (void)setTrashedForIdentifiers:(id)a3;
- (void)storageUsageForAccountUUID:(id)a3 reply:(id)a4;
- (void)synchronize;
- (void)transcriptionController:(id)a3 transcriptionProgressFractionCompletedChanged:(double)a4;
- (void)transcriptionController:(id)a3 transcriptionProgressTotalUnitCountChanged:(int64_t)a4;
@end

@implementation VMVoicemailServiceController

- (VMCarrierServicesController)carrierServicesController
{
  WeakRetained = objc_loadWeakRetained(&self->_carrierServicesController);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0uLL;
  *(self + 4) = 0;
  return self;
}

- (VMTranscriptionService)transcriptionService
{
  WeakRetained = objc_loadWeakRetained(&self->_transcriptionService);

  return WeakRetained;
}

- (VMDAccountManager)accountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);

  return WeakRetained;
}

- (id)clientConnectionWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailServiceController *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (VMVoicemailServiceController)initWithConnection:(id)a3 accountManager:(id)a4 greetingManager:(id)a5 carrierServicesController:(id)a6 transcriptionService:(id)a7 telephonyClient:(id)a8
{
  v40 = a3;
  v15 = a4;
  v16 = a5;
  obj = a6;
  v42 = a7;
  v39 = a8;
  v43.receiver = self;
  v43.super_class = VMVoicemailServiceController;
  v17 = [(VMVoicemailServiceController *)&v43 init];
  if (v17)
  {
    v18 = [objc_opt_class() vm_classIdentifier];
    v19 = NSStringFromSelector("queue");
    v20 = [NSString stringWithFormat:@"%@.%@", v18, v19];

    v21 = v20;
    v22 = dispatch_queue_create([v20 UTF8String], 0);
    objc_storeStrong(&v17->_queue, v22);
    v23 = objc_storeWeak(&v17->_accountManager, v15);
    [v15 addDelegate:v17 queue:v17->_queue];

    v24 = objc_storeWeak(&v17->_greetingManager, v16);
    [v16 addDelegate:v17 queue:v17->_queue];

    objc_storeStrong(&v17->_connection, a3);
    [(NSXPCConnection *)v17->_connection setDelegate:v17];
    v17->procPid = [v40 processIdentifier];
    sub_100002EBC();
    p_procName = &v17->procName;
    if (*(&v17->procName.__rep_.__l + 23) < 0)
    {
      operator delete(*p_procName);
    }

    v26 = *&buf[16];
    *p_procName = *buf;
    *(&v17->procName.__rep_.__l + 2) = v26;
    *&v17->fMailsSyncRequested = 0;
    objc_storeWeak(&v17->_carrierServicesController, obj);
    objc_storeWeak(&v17->_transcriptionService, v42);
    objc_storeStrong(&v17->_telephonyClient, a8);
    WeakRetained = objc_loadWeakRetained(&v17->_transcriptionService);
    [WeakRetained addTranscriptionDelegate:v17 queue:v17->_queue];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v17, sub_10000C638, @"com.apple.voicemail.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v17 selector:"_handleSubscriptionStatusChanged:" name:@"VVServiceSubscriptionStatusChangedNotification" object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v17 selector:"_handleCheckSubscriptionStatus:" name:@"VVServiceCheckSubscriptionStatusNotification" object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v17 selector:"_handleOnlineStatusChanged:" name:@"VVServiceOnlineStateChangedNotification" object:0];

    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v17 selector:"_handleSyncStatusChangedNotification:" name:@"VVServiceSyncStatusChangedNotification" object:0];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v17 selector:"_handleVoicemailStorageUsageChanged:" name:@"VVServiceMailboxUsageChangedNotification" object:0];

    v34 = sub_10000294C();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      if (*(&v17->procName.__rep_.__l + 23) < 0)
      {
        p_procName = *p_procName;
      }

      procPid = v17->procPid;
      v37 = [(VMVoicemailServiceController *)v17 connection];
      *buf = 138413314;
      *&buf[4] = v35;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      *&buf[22] = 2080;
      v45 = p_procName;
      v46 = 1024;
      v47 = procPid;
      v48 = 2048;
      v49 = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "<%@ %p> for client [%s:%d] (conn=%p) Created", buf, 0x30u);
    }
  }

  return v17;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_transcriptionService);
  [WeakRetained removeTranscriptionDelegate:self];

  v6 = sub_10000294C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    v10 = [(VMVoicemailServiceController *)self connection];
    *buf = 138413314;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2080;
    v17 = p_procName;
    v18 = 1024;
    v19 = procPid;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> for client [%s:%d] (conn=%p) Deleted", buf, 0x30u);
  }

  v11.receiver = self;
  v11.super_class = VMVoicemailServiceController;
  [(VMVoicemailServiceController *)&v11 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  p_procName = &self->procName;
  if (*(&self->procName.__rep_.__l + 23) < 0)
  {
    p_procName = p_procName->__rep_.__l.__data_;
  }

  procPid = self->procPid;
  v6 = [(VMVoicemailServiceController *)self connection];
  [v3 appendFormat:@", client [%s:%d] (conn=%p)", p_procName, procPid, v6];

  [v3 appendString:@">"];

  return v3;
}

- (void)_handleVoicemailStorageUsageChanged:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v4;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v13, 0x16u);
  }

  if (self->fStateSyncRequested)
  {
    v7 = [v4 userInfo];
    v8 = [v7 valueForKey:@"accountUUID"];

    v9 = [v4 userInfo];
    v10 = [v9 valueForKey:@"MailboxUsage"];

    v11 = [(VMVoicemailServiceController *)self connection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&stru_1000ED938];
    [v12 setStorageUsage:v8 storageUsage:{objc_msgSend(v10, "unsignedIntValue")}];
  }
}

- (void)_handleVoicemailStoreSaved
{
  if (self->fMailsSyncRequested)
  {
    v5 = [(VMVoicemailServiceController *)self connection];
    v3 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000ED958];
    v4 = [(VMVoicemailServiceController *)self allVoicemails];
    [v3 voicemailsUpdated:v4];
  }
}

- (void)_handleSubscriptionStatusChanged:(id)a3
{
  if (self->fStateSyncRequested)
  {
    v6 = [(VMVoicemailServiceController *)self connection];
    v4 = [v6 remoteObjectProxyWithErrorHandler:&stru_1000ED978];
    v5 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSubscribed:{objc_msgSend(v5, "isSubscribed")}];
  }
}

- (void)_handleCheckSubscriptionStatus:(id)a3
{
  if (self->fStateSyncRequested)
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009B644(v4);
    }

    v5 = [(VMVoicemailServiceController *)self connection];
    v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000ED998];
    v7 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v6 setSubscribed:{objc_msgSend(v7, "isSubscribed")}];
  }
}

- (void)_handleOnlineStatusChanged:(id)a3
{
  if (self->fStateSyncRequested)
  {
    v6 = [(VMVoicemailServiceController *)self connection];
    v4 = [v6 remoteObjectProxyWithErrorHandler:&stru_1000ED9B8];
    v5 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setOnline:{objc_msgSend(v5, "isOnline")}];
  }
}

- (void)transcriptionController:(id)a3 transcriptionProgressFractionCompletedChanged:(double)a4
{
  if (self->fStateSyncRequested)
  {
    v7 = [(VMVoicemailServiceController *)self connection];
    v5 = [v7 remoteObjectProxyWithErrorHandler:&stru_1000EDA18];
    v6 = [NSNumber numberWithDouble:a4];
    [v5 setProgressFractionCompleted:v6];
  }
}

- (void)transcriptionController:(id)a3 transcriptionProgressTotalUnitCountChanged:(int64_t)a4
{
  if (self->fStateSyncRequested)
  {
    v7 = [(VMVoicemailServiceController *)self connection];
    v5 = [v7 remoteObjectProxyWithErrorHandler:&stru_1000EDA38];
    v6 = [NSNumber numberWithUnsignedLong:a4];
    [v5 setProgressTotalUnitCount:v6];
  }
}

- (void)_handleSyncStatusChangedNotification:(id)a3
{
  if (self->fStateSyncRequested)
  {
    v6 = [(VMVoicemailServiceController *)self connection];
    v4 = [v6 remoteObjectProxyWithErrorHandler:&stru_1000EDA58];
    v5 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSyncInProgress:{objc_msgSend(v5, "isSyncInProgress")}];
  }
}

- (void)ping:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VMVoicemailServiceController *)self connection];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got pinged by client: %@", &v7, 0xCu);
  }

  v4[2](v4, 1);
}

- (void)requestInitialState:(id)a3
{
  v4 = a3;
  self->fStateSyncRequested = 1;
  v17 = v4;
  if (v4)
  {
    v16 = [(VMVoicemailServiceController *)self carrierServicesController];
    v5 = [v16 isSubscribed];
    v15 = [(VMVoicemailServiceController *)self carrierServicesController];
    v6 = [v15 isOnline];
    v7 = [(VMVoicemailServiceController *)self carrierServicesController];
    v8 = [v7 isSyncInProgress];
    v9 = [(VMVoicemailServiceController *)self transcriptionService];
    v10 = [v9 isTranscriptionServiceAvailable];
    v11 = [(VMVoicemailServiceController *)self transcriptionService];
    v12 = [v11 cache_isTranscribing];
    v13 = [(VMVoicemailServiceController *)self carrierServicesController];
    v14 = [v13 getStorageUsage];
    v17[2](v17, v5, v6, v8, v10, v12, v14);
  }
}

- (void)requestTranscriptionProgress:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    p_procName = &self->procName;
    if (*(&self->procName.__rep_.__l + 23) < 0)
    {
      p_procName = p_procName->__rep_.__l.__data_;
    }

    procPid = self->procPid;
    v9 = [(VMVoicemailServiceController *)self connection];
    v18 = 138413314;
    v19 = v6;
    v20 = 2048;
    v21 = self;
    v22 = 2080;
    v23 = p_procName;
    v24 = 1024;
    v25 = procPid;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %p client [%s:%d] (conn=%p) requested transcription progress", &v18, 0x30u);
  }

  if (v4)
  {
    v10 = [(VMVoicemailServiceController *)self transcriptionService];
    v11 = [v10 cache_isTranscribing];

    if (v11)
    {
      v12 = [(VMVoicemailServiceController *)self transcriptionService];
      v13 = [v12 getTranscriptionProgress];
      v15 = v14;

      v16 = [NSNumber numberWithDouble:*&v13];
      v17 = [NSNumber numberWithUnsignedLong:v15];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v4[2](v4, v11, v16, v17);
  }
}

- (void)synchronize
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Synchronize requested from client", v5, 2u);
  }

  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 synchronize];
}

- (void)retrieveDataForIdentifier:(int64_t)a3
{
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    v6 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v6 retrieveDataForRecord:v5];

    CFRelease(v5);
  }
}

- (id)allVoicemails
{
  v3 = [(VMVoicemailServiceController *)self telephonyClient];
  v4 = [v3 subscriptions];

  v5 = [(VMVoicemailServiceController *)self telephonyClient];
  v6 = [v5 getIsoContryCodes];

  v21 = VMStoreCopyOfAllRecordsWithFlags(0, 0, 0);
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v21 count]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v21;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [VMVoicemail messageForRecord:*(*(&v26 + 1) + 8 * i) forContexts:v4 andIsoCodes:v6];
        v13 = v12;
        if (v12 && [v12 isDataAvailable] && (objc_msgSend(v13, "isDeleted") & 1) == 0 && (objc_msgSend(v13, "isTemporary") & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v14 = [v7 sortedArrayUsingComparator:&stru_1000EDA98];
  v15 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v14 count]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [v15 addObject:*(*(&v22 + 1) + 8 * j)];
      }

      v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  return v15;
}

- (void)allVoicemails:(id)a3
{
  v4 = a3;
  self->fMailsSyncRequested = 1;
  v6 = v4;
  if (v4)
  {
    v5 = [(VMVoicemailServiceController *)self allVoicemails];
    v6[2](v6, v5);
  }
}

- (void)setTrashedForIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 moveRecordsWithIdentifiersToTrash:v5];
}

- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)a3
{
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:a3];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 moveRecordsWithIdentifiersToInbox:v6];
}

- (void)setDeletedForIdentifier:(int64_t)a3
{
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:a3];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 moveRecordsWithIdentifiersToDeleted:v6];
}

- (void)setDeletedForIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 moveRecordsWithIdentifiersToDeleted:v5];
}

- (void)setReadForIdentifier:(int64_t)a3
{
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:a3];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 markRecordsWithIdentifiersAsRead:v6];
}

- (void)setReadForIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 markRecordsWithIdentifiersAsRead:v5];
}

- (void)remapAccount:(id)a3 toAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "VMVoicemailServiceController: remapAccount %@ %@", &v12, 0x16u);
  }

  v9 = [(VMVoicemailServiceController *)self carrierServicesController];
  v10 = [[NSUUID alloc] initWithUUIDString:v6];
  v11 = [[NSUUID alloc] initWithUUIDString:v7];
  [v9 remapAccount:v10 toAccount:v11];
}

- (void)resetNetworkSettings
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetNetworkSettings", v5, 2u);
  }

  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 resetNetworkSettings];
}

- (void)reportTranscriptionProblemForIdentifier:(int64_t)a3
{
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:a3];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@>", &v11, 0xCu);
  }

  v7 = VMStoreCopyRecordWithIdentifier();
  if (v7)
  {
    v8 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v8 reportTranscriptionProblemForRecord:v7];

    CFRelease(v7);
  }

  else
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:a3];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@> failed with error record not found", &v11, 0xCu);
    }
  }
}

- (void)reportTranscriptionProblemForUUID:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <uuid identifier=%@>", &v9, 0xCu);
  }

  v6 = sub_10008C108(v4);
  if (v6)
  {
    v7 = [(VMVoicemailServiceController *)self carrierServicesController];
    [v7 reportTranscriptionProblemForRecord:v6];

    CFRelease(v6);
  }

  else
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <uuid identifier=%@> failed with error record not found", &v9, 0xCu);
    }
  }
}

- (void)obliterate
{
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting (obliterate) VVM...", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v7 = 0;
  v4 = [v3 removeItemAtPath:@"/var/mobile/Library/Voicemail" error:&v7];
  v5 = v7;

  if (v4)
  {
    notify_post([kVVReloadServiceNotification UTF8String]);
  }

  else
  {
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009B960(v5, v6);
    }
  }
}

- (void)insertVoicemail:(id)a3
{
  v4 = a3;
  v5 = [(VMVoicemailServiceController *)self telephonyClient];
  v6 = [v4 receiverDestinationID];
  v7 = [v5 subscriptionContextWithPhoneNumber:v6];

  v53 = v7;
  if (!v7)
  {
    v8 = [(VMVoicemailServiceController *)self telephonyClient];
    v9 = [v8 userDefaultVoiceSubscriptionContext];

    v53 = v9;
    if (!v9)
    {
      v10 = [(VMVoicemailServiceController *)self telephonyClient];
      v11 = [v10 subscriptions];
      v53 = [v11 firstObject];
    }
  }

  v12 = [NSUUID alloc];
  v13 = [v53 labelID];
  v52 = [v12 initWithUUIDString:v13];

  v51 = [v53 phoneNumber];
  v14 = [v4 date];
  [v14 timeIntervalSince1970];
  v16 = v15;
  v17 = [v4 senderDestinationID];
  v50 = [NSString stringWithFormat:@"%f_%@", v16, v17];

  v18 = [v4 remoteUID];
  v19 = [v4 date];
  [v19 timeIntervalSince1970];
  v21 = v20;
  v22 = [v4 senderDestinationID];
  v23 = [v4 callbackDestinationID];
  [v4 duration];
  v25 = VMStoreCreateAndAddRecord(v18, v21, v50, v22, v23, v24, 0, 0, v51, v52);

  VMStoreSave();
  v26 = VMStoreRecordCopyDescription(v25);
  v27 = [v4 dataURL];
  v28 = [v27 path];

  v49 = VMStoreRecordCopyDataPath();
  v29 = +[NSFileManager defaultManager];
  LODWORD(v12) = [v29 fileExistsAtPath:v28];

  if (v12)
  {
    v30 = +[NSFileManager defaultManager];
    v55 = 0;
    v31 = [v30 copyItemAtPath:v28 toPath:v49 error:&v55];
    v32 = v55;

    if (v31)
    {
      VMStoreRecordSetFlag(v52, v25, 2u);
    }

    else
    {
      v35 = vm_vmd_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10009BA54();
      }
    }
  }

  else
  {
    v33 = vm_vmd_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10009B9EC();
    }

    Flags = VMStoreRecordGetFlags(v25);
    VMStoreRecordSetFlags(v52, v25, Flags & 0xFFFFFFFD);
  }

  v36 = [v4 transcriptionURL];
  v37 = [v36 path];

  v38 = VMStoreRecordCopyTranscriptionPath();
  v39 = +[NSFileManager defaultManager];
  v40 = [v39 fileExistsAtPath:v37];

  if (v40)
  {
    v41 = +[NSFileManager defaultManager];
    v54 = 0;
    v42 = [v41 copyItemAtPath:v37 toPath:v38 error:&v54];
    v43 = v54;

    if (v42)
    {
      VMStoreRecordSetFlag(v52, v25, 0x100u);
    }

    else
    {
      v46 = vm_vmd_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10009BB24();
      }
    }
  }

  else
  {
    v44 = vm_vmd_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_10009BABC();
    }

    v45 = VMStoreRecordGetFlags(v25);
    VMStoreRecordSetFlags(v52, v25, v45 & 0xFFFE6DFF | 0x1000);
  }

  v47 = VMStoreRecordCopyDescription(v25);

  v48 = vm_vmd_log();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v47;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Created record %@", buf, 0xCu);
  }

  VMStoreSave();
  if (v25)
  {
    VMStoreRecordRelease(v25);
  }
}

- (void)createTranscription:(id)a3 transcription:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v10 createTranscription:v11 transcription:v8 completion:v9];
}

- (void)createPersonalizedTranscript:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 createPersonalizedTranscript:v8 completion:v6];
}

- (void)sendStateRequestForAccountUUID:(id)a3
{
  v5 = a3;
  v4 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v4 sendStateRequestForAccountUUID:v5];
}

- (void)getServiceInfoForAccountUUID:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  v8 = [v7 getServiceInfoForAccountUUID:v9];
  v6[2](v6, v8);
}

- (void)accounts:(id)a3
{
  v6 = a3;
  v4 = [(VMVoicemailServiceController *)self accountManager];
  v5 = [v4 accounts];
  v6[2](v6, v5);
}

- (void)isAccountSubscribed:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 isAccountSubscribed:v8 completion:v6];
}

- (void)isAccountOnline:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 isAccountOnline:v8 completion:v6];
}

- (void)isCallVoicemailSupportedForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 isCallVoicemailSupportedForAccountUUID:v8 completion:v6];
}

- (void)isPasscodeChangeSupportedForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 isPasscodeChangeSupportedForAccountUUID:v8 completion:v6];
}

- (void)minimumPasscodeLengthForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 minimumPasscodeLengthForAccountUUID:v8 completion:v6];
}

- (void)maximumPasscodeLengthForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 maximumPasscodeLengthForAccountUUID:v8 completion:v6];
}

- (void)setPasscode:(id)a3 forAccountUUID:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v10 setPasscode:v11 forAccountUUID:v8 completion:v9];
}

- (void)storageUsageForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 storageUsageForAccountUUID:v8 completion:v6];
}

- (void)setAccountProperties:(id)a3 properties:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(VMVoicemailServiceController *)self carrierServicesController];
  v14 = 0;
  v12 = [v11 setAccountProperties:v8 properties:v9 error:&v14];
  v13 = v14;

  v10[2](v10, v12, v13);
}

- (void)accountsDidChangeForAccountManager:(id)a3
{
  v8 = a3;
  v4 = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(VMVoicemailServiceController *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000EDAB8];
  v7 = [v8 accounts];
  [v6 updateAccounts:v7];
}

- (void)greetingForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 greetingForAccountUUID:v8 completion:v6];
}

- (void)isGreetingChangeSupportedForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 isGreetingChangeSupportedForAccountUUID:v8 completion:v6];
}

- (void)maximumGreetingDurationForAccountUUID:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v7 maximumGreetingDurationForAccountUUID:v8 completion:v6];
}

- (void)setGreeting:(id)a3 forAccountUUID:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VMVoicemailServiceController *)self carrierServicesController];
  [v10 setGreeting:v11 forAccountUUID:v8 completion:v9];
}

- (void)greetingManager:(id)a3 greetingWillChangeForAccountUUID:(id)a4
{
  v4 = [(VMVoicemailServiceController *)self queue:a3];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingManager:(id)a3 greetingDidChangeForAccountUUID:(id)a4
{
  v4 = [(VMVoicemailServiceController *)self queue:a3];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingChangedByCarrier:(id)a3
{
  v7 = a3;
  v4 = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(VMVoicemailServiceController *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_1000EDAD8];
  [v6 greetingChangedByCarrier:v7];
}

- (void)messageCountForMailboxType:(int64_t)a3 reply:(id)a4
{
  v7 = a4;
  v5 = sub_10001BFFC(a3);
  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v5, 0);
  v7[2](v7, RecordCountWithMailboxType);
}

- (void)messageCountForMailboxType:(int64_t)a3 read:(BOOL)a4 reply:(id)a5
{
  v5 = a4;
  v10 = a5;
  v7 = sub_10001BFFC(a3);
  v8 = &kCFBooleanTrue;
  if (!v5)
  {
    v8 = &kCFBooleanFalse;
  }

  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v7, *v8);
  v10[2](v10, RecordCountWithMailboxType);
}

- (void)messagesForMailboxType:(int64_t)a3 limit:(int64_t)a4 offset:(int64_t)a5 reply:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = +[NSMutableArray array];
  v12 = sub_10001BFFC(a3);
  v13 = [(VMVoicemailServiceController *)self telephonyClient];
  v14 = [v13 subscriptions];

  v15 = [(VMVoicemailServiceController *)self telephonyClient];
  v16 = [v15 getIsoContryCodes];

  v17 = VMStoreCopyRecordsWithMailboxType(v12, 0, v7, v6);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100010BEC;
  v21[3] = &unk_1000EDB00;
  v18 = v14;
  v22 = v18;
  v19 = v16;
  v23 = v19;
  v20 = v11;
  v24 = v20;
  [v17 enumerateObjectsUsingBlock:v21];
  v10[2](v10, v20);
}

- (void)messagesForMailboxType:(int64_t)a3 read:(BOOL)a4 limit:(int64_t)a5 offset:(int64_t)a6 reply:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  v13 = +[NSMutableArray array];
  v14 = sub_10001BFFC(a3);
  v15 = [(VMVoicemailServiceController *)self telephonyClient];
  v16 = [v15 subscriptions];

  v17 = [(VMVoicemailServiceController *)self telephonyClient];
  v18 = [v17 getIsoContryCodes];

  v19 = &kCFBooleanTrue;
  if (!v9)
  {
    v19 = &kCFBooleanFalse;
  }

  v20 = VMStoreCopyRecordsWithMailboxType(v14, *v19, v8, v7);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100010E84;
  v24[3] = &unk_1000EDB00;
  v21 = v16;
  v25 = v21;
  v22 = v18;
  v26 = v22;
  v23 = v13;
  v27 = v23;
  [v20 enumerateObjectsUsingBlock:v24];
  v12[2](v12, v23);
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
  {
    [v9 invoke];
  }

  else
  {
    v11 = [v9 invocationDescription];
    v12 = sub_10000294C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      p_procName = &self->procName;
      if (*(&self->procName.__rep_.__l + 23) < 0)
      {
        p_procName = p_procName->__rep_.__l.__data_;
      }

      procPid = self->procPid;
      *buf = 136315906;
      *&buf[4] = p_procName;
      v26 = 1024;
      v27 = procPid;
      v28 = 2048;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client [%s:%d] (conn=%p) invoking %@", buf, 0x26u);
    }

    v15 = [(VMVoicemailServiceController *)self connection];
    v16 = [v15 exportedInterface];
    v17 = [v16 replyBlockSignatureForSelector:{objc_msgSend(v10, "selector")}];

    if (v17)
    {
      v18 = [v10 getBlockArgumentIndex];
      *buf = 0;
      [v10 getArgument:buf atIndex:v18];
      v19 = NSStringFromSelector([v10 selector]);
      v20 = [*buf copy];
      v21 = v17;
      [v17 UTF8String];
      v22 = v19;
      v23 = v20;
      v24 = __NSMakeSpecialForwardingCaptureBlock();
      [v10 setArgument:&v24 atIndex:{v18, _NSConcreteStackBlock, 3221225472, sub_100011254, &unk_1000EDB28}];
      [v10 invoke];
    }

    else
    {
      [v10 invoke];
    }
  }
}

- (VMDGreetingManager)greetingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_greetingManager);

  return WeakRetained;
}

@end