@interface VMVoicemailServiceController
- (NSString)description;
- (VMCarrierServicesController)carrierServicesController;
- (VMDAccountManager)accountManager;
- (VMDGreetingManager)greetingManager;
- (VMTranscriptionService)transcriptionService;
- (VMVoicemailServiceController)initWithConnection:(id)connection accountManager:(id)manager greetingManager:(id)greetingManager carrierServicesController:(id)controller transcriptionService:(id)service telephonyClient:(id)client;
- (id).cxx_construct;
- (id)allVoicemails;
- (id)clientConnectionWithErrorHandler:(id)handler;
- (void)_handleCheckSubscriptionStatus:(id)status;
- (void)_handleOnlineStatusChanged:(id)changed;
- (void)_handleSubscriptionStatusChanged:(id)changed;
- (void)_handleSyncStatusChangedNotification:(id)notification;
- (void)_handleVoicemailStorageUsageChanged:(id)changed;
- (void)_handleVoicemailStoreSaved;
- (void)accounts:(id)accounts;
- (void)accountsDidChangeForAccountManager:(id)manager;
- (void)allVoicemails:(id)voicemails;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)createPersonalizedTranscript:(id)transcript reply:(id)reply;
- (void)createTranscription:(id)transcription transcription:(id)a4 reply:(id)reply;
- (void)dealloc;
- (void)getServiceInfoForAccountUUID:(id)d reply:(id)reply;
- (void)greetingChangedByCarrier:(id)carrier;
- (void)greetingForAccountUUID:(id)d reply:(id)reply;
- (void)greetingManager:(id)manager greetingDidChangeForAccountUUID:(id)d;
- (void)greetingManager:(id)manager greetingWillChangeForAccountUUID:(id)d;
- (void)insertVoicemail:(id)voicemail;
- (void)isAccountOnline:(id)online reply:(id)reply;
- (void)isAccountSubscribed:(id)subscribed reply:(id)reply;
- (void)isCallVoicemailSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)isGreetingChangeSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)isPasscodeChangeSupportedForAccountUUID:(id)d reply:(id)reply;
- (void)maximumGreetingDurationForAccountUUID:(id)d reply:(id)reply;
- (void)maximumPasscodeLengthForAccountUUID:(id)d reply:(id)reply;
- (void)messageCountForMailboxType:(int64_t)type read:(BOOL)read reply:(id)reply;
- (void)messageCountForMailboxType:(int64_t)type reply:(id)reply;
- (void)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply;
- (void)messagesForMailboxType:(int64_t)type read:(BOOL)read limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply;
- (void)minimumPasscodeLengthForAccountUUID:(id)d reply:(id)reply;
- (void)obliterate;
- (void)ping:(id)ping;
- (void)remapAccount:(id)account toAccount:(id)toAccount;
- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)identifier;
- (void)reportTranscriptionProblemForIdentifier:(int64_t)identifier;
- (void)reportTranscriptionProblemForUUID:(id)d;
- (void)requestInitialState:(id)state;
- (void)requestTranscriptionProgress:(id)progress;
- (void)resetNetworkSettings;
- (void)retrieveDataForIdentifier:(int64_t)identifier;
- (void)sendStateRequestForAccountUUID:(id)d;
- (void)setAccountProperties:(id)properties properties:(id)a4 reply:(id)reply;
- (void)setDeletedForIdentifier:(int64_t)identifier;
- (void)setDeletedForIdentifiers:(id)identifiers;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d reply:(id)reply;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d reply:(id)reply;
- (void)setReadForIdentifier:(int64_t)identifier;
- (void)setReadForIdentifiers:(id)identifiers;
- (void)setTrashedForIdentifiers:(id)identifiers;
- (void)storageUsageForAccountUUID:(id)d reply:(id)reply;
- (void)synchronize;
- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed;
- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed;
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

- (id)clientConnectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (VMVoicemailServiceController)initWithConnection:(id)connection accountManager:(id)manager greetingManager:(id)greetingManager carrierServicesController:(id)controller transcriptionService:(id)service telephonyClient:(id)client
{
  connectionCopy = connection;
  managerCopy = manager;
  greetingManagerCopy = greetingManager;
  obj = controller;
  serviceCopy = service;
  clientCopy = client;
  v43.receiver = self;
  v43.super_class = VMVoicemailServiceController;
  v17 = [(VMVoicemailServiceController *)&v43 init];
  if (v17)
  {
    vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
    v19 = NSStringFromSelector("queue");
    v20 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v19];

    v21 = v20;
    v22 = dispatch_queue_create([v20 UTF8String], 0);
    objc_storeStrong(&v17->_queue, v22);
    v23 = objc_storeWeak(&v17->_accountManager, managerCopy);
    [managerCopy addDelegate:v17 queue:v17->_queue];

    v24 = objc_storeWeak(&v17->_greetingManager, greetingManagerCopy);
    [greetingManagerCopy addDelegate:v17 queue:v17->_queue];

    objc_storeStrong(&v17->_connection, connection);
    [(NSXPCConnection *)v17->_connection setDelegate:v17];
    v17->procPid = [connectionCopy processIdentifier];
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
    objc_storeWeak(&v17->_transcriptionService, serviceCopy);
    objc_storeStrong(&v17->_telephonyClient, client);
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
      connection = [(VMVoicemailServiceController *)v17 connection];
      *buf = 138413314;
      *&buf[4] = v35;
      *&buf[12] = 2048;
      *&buf[14] = v17;
      *&buf[22] = 2080;
      v45 = p_procName;
      v46 = 1024;
      v47 = procPid;
      v48 = 2048;
      v49 = connection;
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
    connection = [(VMVoicemailServiceController *)self connection];
    *buf = 138413314;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2080;
    v17 = p_procName;
    v18 = 1024;
    v19 = procPid;
    v20 = 2048;
    v21 = connection;
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
  connection = [(VMVoicemailServiceController *)self connection];
  [v3 appendFormat:@", client [%s:%d] (conn=%p)", p_procName, procPid, connection];

  [v3 appendString:@">"];

  return v3;
}

- (void)_handleVoicemailStorageUsageChanged:(id)changed
{
  changedCopy = changed;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = changedCopy;
    v6 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v13, 0x16u);
  }

  if (self->fStateSyncRequested)
  {
    userInfo = [changedCopy userInfo];
    v8 = [userInfo valueForKey:@"accountUUID"];

    userInfo2 = [changedCopy userInfo];
    v10 = [userInfo2 valueForKey:@"MailboxUsage"];

    connection = [(VMVoicemailServiceController *)self connection];
    v12 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED938];
    [v12 setStorageUsage:v8 storageUsage:{objc_msgSend(v10, "unsignedIntValue")}];
  }
}

- (void)_handleVoicemailStoreSaved
{
  if (self->fMailsSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v3 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED958];
    allVoicemails = [(VMVoicemailServiceController *)self allVoicemails];
    [v3 voicemailsUpdated:allVoicemails];
  }
}

- (void)_handleSubscriptionStatusChanged:(id)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED978];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSubscribed:{objc_msgSend(carrierServicesController, "isSubscribed")}];
  }
}

- (void)_handleCheckSubscriptionStatus:(id)status
{
  if (self->fStateSyncRequested)
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009B644(v4);
    }

    connection = [(VMVoicemailServiceController *)self connection];
    v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED998];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v6 setSubscribed:{objc_msgSend(carrierServicesController, "isSubscribed")}];
  }
}

- (void)_handleOnlineStatusChanged:(id)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000ED9B8];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setOnline:{objc_msgSend(carrierServicesController, "isOnline")}];
  }
}

- (void)transcriptionController:(id)controller transcriptionProgressFractionCompletedChanged:(double)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v5 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA18];
    v6 = [NSNumber numberWithDouble:changed];
    [v5 setProgressFractionCompleted:v6];
  }
}

- (void)transcriptionController:(id)controller transcriptionProgressTotalUnitCountChanged:(int64_t)changed
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v5 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA38];
    v6 = [NSNumber numberWithUnsignedLong:changed];
    [v5 setProgressTotalUnitCount:v6];
  }
}

- (void)_handleSyncStatusChangedNotification:(id)notification
{
  if (self->fStateSyncRequested)
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v4 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDA58];
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [v4 setSyncInProgress:{objc_msgSend(carrierServicesController, "isSyncInProgress")}];
  }
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    connection = [(VMVoicemailServiceController *)self connection];
    v7 = 138412290;
    v8 = connection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got pinged by client: %@", &v7, 0xCu);
  }

  pingCopy[2](pingCopy, 1);
}

- (void)requestInitialState:(id)state
{
  stateCopy = state;
  self->fStateSyncRequested = 1;
  v17 = stateCopy;
  if (stateCopy)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    isSubscribed = [carrierServicesController isSubscribed];
    carrierServicesController2 = [(VMVoicemailServiceController *)self carrierServicesController];
    isOnline = [carrierServicesController2 isOnline];
    carrierServicesController3 = [(VMVoicemailServiceController *)self carrierServicesController];
    isSyncInProgress = [carrierServicesController3 isSyncInProgress];
    transcriptionService = [(VMVoicemailServiceController *)self transcriptionService];
    isTranscriptionServiceAvailable = [transcriptionService isTranscriptionServiceAvailable];
    transcriptionService2 = [(VMVoicemailServiceController *)self transcriptionService];
    cache_isTranscribing = [transcriptionService2 cache_isTranscribing];
    carrierServicesController4 = [(VMVoicemailServiceController *)self carrierServicesController];
    getStorageUsage = [carrierServicesController4 getStorageUsage];
    v17[2](v17, isSubscribed, isOnline, isSyncInProgress, isTranscriptionServiceAvailable, cache_isTranscribing, getStorageUsage);
  }
}

- (void)requestTranscriptionProgress:(id)progress
{
  progressCopy = progress;
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
    connection = [(VMVoicemailServiceController *)self connection];
    v18 = 138413314;
    v19 = v6;
    v20 = 2048;
    selfCopy = self;
    v22 = 2080;
    v23 = p_procName;
    v24 = 1024;
    v25 = procPid;
    v26 = 2048;
    v27 = connection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %p client [%s:%d] (conn=%p) requested transcription progress", &v18, 0x30u);
  }

  if (progressCopy)
  {
    transcriptionService = [(VMVoicemailServiceController *)self transcriptionService];
    cache_isTranscribing = [transcriptionService cache_isTranscribing];

    if (cache_isTranscribing)
    {
      transcriptionService2 = [(VMVoicemailServiceController *)self transcriptionService];
      getTranscriptionProgress = [transcriptionService2 getTranscriptionProgress];
      v15 = v14;

      v16 = [NSNumber numberWithDouble:*&getTranscriptionProgress];
      v17 = [NSNumber numberWithUnsignedLong:v15];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    progressCopy[2](progressCopy, cache_isTranscribing, v16, v17);
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

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController synchronize];
}

- (void)retrieveDataForIdentifier:(int64_t)identifier
{
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController retrieveDataForRecord:v5];

    CFRelease(v5);
  }
}

- (id)allVoicemails
{
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

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

        v12 = [VMVoicemail messageForRecord:*(*(&v26 + 1) + 8 * i) forContexts:subscriptions andIsoCodes:getIsoContryCodes];
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

- (void)allVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  self->fMailsSyncRequested = 1;
  v6 = voicemailsCopy;
  if (voicemailsCopy)
  {
    allVoicemails = [(VMVoicemailServiceController *)self allVoicemails];
    v6[2](v6, allVoicemails);
  }
}

- (void)setTrashedForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController moveRecordsWithIdentifiersToTrash:identifiersCopy];
}

- (void)removeVoicemailFromTrashWithIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController moveRecordsWithIdentifiersToInbox:v6];
}

- (void)setDeletedForIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController moveRecordsWithIdentifiersToDeleted:v6];
}

- (void)setDeletedForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController moveRecordsWithIdentifiersToDeleted:identifiersCopy];
}

- (void)setReadForIdentifier:(int64_t)identifier
{
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v5 = [NSNumber numberWithInteger:identifier];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [carrierServicesController markRecordsWithIdentifiersAsRead:v6];
}

- (void)setReadForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController markRecordsWithIdentifiersAsRead:identifiersCopy];
}

- (void)remapAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = toAccountCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "VMVoicemailServiceController: remapAccount %@ %@", &v12, 0x16u);
  }

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v10 = [[NSUUID alloc] initWithUUIDString:accountCopy];
  v11 = [[NSUUID alloc] initWithUUIDString:toAccountCopy];
  [carrierServicesController remapAccount:v10 toAccount:v11];
}

- (void)resetNetworkSettings
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "resetNetworkSettings", v5, 2u);
  }

  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController resetNetworkSettings];
}

- (void)reportTranscriptionProblemForIdentifier:(int64_t)identifier
{
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@>", &v11, 0xCu);
  }

  v7 = VMStoreCopyRecordWithIdentifier();
  if (v7)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionProblemForRecord:v7];

    CFRelease(v7);
  }

  else
  {
    v9 = vm_vmd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [NSNumber numberWithInteger:identifier];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <identifier=%@> failed with error record not found", &v11, 0xCu);
    }
  }
}

- (void)reportTranscriptionProblemForUUID:(id)d
{
  dCopy = d;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record <uuid identifier=%@>", &v9, 0xCu);
  }

  v6 = sub_10008C108(dCopy);
  if (v6)
  {
    carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
    [carrierServicesController reportTranscriptionProblemForRecord:v6];

    CFRelease(v6);
  }

  else
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
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

- (void)insertVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  receiverDestinationID = [voicemailCopy receiverDestinationID];
  v7 = [telephonyClient subscriptionContextWithPhoneNumber:receiverDestinationID];

  firstObject = v7;
  if (!v7)
  {
    telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
    userDefaultVoiceSubscriptionContext = [telephonyClient2 userDefaultVoiceSubscriptionContext];

    firstObject = userDefaultVoiceSubscriptionContext;
    if (!userDefaultVoiceSubscriptionContext)
    {
      telephonyClient3 = [(VMVoicemailServiceController *)self telephonyClient];
      subscriptions = [telephonyClient3 subscriptions];
      firstObject = [subscriptions firstObject];
    }
  }

  v12 = [NSUUID alloc];
  labelID = [firstObject labelID];
  v52 = [v12 initWithUUIDString:labelID];

  phoneNumber = [firstObject phoneNumber];
  date = [voicemailCopy date];
  [date timeIntervalSince1970];
  v16 = v15;
  senderDestinationID = [voicemailCopy senderDestinationID];
  v50 = [NSString stringWithFormat:@"%f_%@", v16, senderDestinationID];

  remoteUID = [voicemailCopy remoteUID];
  date2 = [voicemailCopy date];
  [date2 timeIntervalSince1970];
  v21 = v20;
  senderDestinationID2 = [voicemailCopy senderDestinationID];
  callbackDestinationID = [voicemailCopy callbackDestinationID];
  [voicemailCopy duration];
  v25 = VMStoreCreateAndAddRecord(remoteUID, v21, v50, senderDestinationID2, callbackDestinationID, v24, 0, 0, phoneNumber, v52);

  VMStoreSave();
  v26 = VMStoreRecordCopyDescription(v25);
  dataURL = [voicemailCopy dataURL];
  path = [dataURL path];

  v49 = VMStoreRecordCopyDataPath();
  v29 = +[NSFileManager defaultManager];
  LODWORD(v12) = [v29 fileExistsAtPath:path];

  if (v12)
  {
    v30 = +[NSFileManager defaultManager];
    v55 = 0;
    v31 = [v30 copyItemAtPath:path toPath:v49 error:&v55];
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

  transcriptionURL = [voicemailCopy transcriptionURL];
  path2 = [transcriptionURL path];

  v38 = VMStoreRecordCopyTranscriptionPath();
  v39 = +[NSFileManager defaultManager];
  v40 = [v39 fileExistsAtPath:path2];

  if (v40)
  {
    v41 = +[NSFileManager defaultManager];
    v54 = 0;
    v42 = [v41 copyItemAtPath:path2 toPath:v38 error:&v54];
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

- (void)createTranscription:(id)transcription transcription:(id)a4 reply:(id)reply
{
  transcriptionCopy = transcription;
  v8 = a4;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController createTranscription:transcriptionCopy transcription:v8 completion:replyCopy];
}

- (void)createPersonalizedTranscript:(id)transcript reply:(id)reply
{
  transcriptCopy = transcript;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController createPersonalizedTranscript:transcriptCopy completion:replyCopy];
}

- (void)sendStateRequestForAccountUUID:(id)d
{
  dCopy = d;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController sendStateRequestForAccountUUID:dCopy];
}

- (void)getServiceInfoForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v8 = [carrierServicesController getServiceInfoForAccountUUID:dCopy];
  replyCopy[2](replyCopy, v8);
}

- (void)accounts:(id)accounts
{
  accountsCopy = accounts;
  accountManager = [(VMVoicemailServiceController *)self accountManager];
  accounts = [accountManager accounts];
  accountsCopy[2](accountsCopy, accounts);
}

- (void)isAccountSubscribed:(id)subscribed reply:(id)reply
{
  subscribedCopy = subscribed;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isAccountSubscribed:subscribedCopy completion:replyCopy];
}

- (void)isAccountOnline:(id)online reply:(id)reply
{
  onlineCopy = online;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isAccountOnline:onlineCopy completion:replyCopy];
}

- (void)isCallVoicemailSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isCallVoicemailSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)isPasscodeChangeSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isPasscodeChangeSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)minimumPasscodeLengthForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController minimumPasscodeLengthForAccountUUID:dCopy completion:replyCopy];
}

- (void)maximumPasscodeLengthForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController maximumPasscodeLengthForAccountUUID:dCopy completion:replyCopy];
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d reply:(id)reply
{
  passcodeCopy = passcode;
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController setPasscode:passcodeCopy forAccountUUID:dCopy completion:replyCopy];
}

- (void)storageUsageForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController storageUsageForAccountUUID:dCopy completion:replyCopy];
}

- (void)setAccountProperties:(id)properties properties:(id)a4 reply:(id)reply
{
  propertiesCopy = properties;
  v9 = a4;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  v14 = 0;
  v12 = [carrierServicesController setAccountProperties:propertiesCopy properties:v9 error:&v14];
  v13 = v14;

  replyCopy[2](replyCopy, v12, v13);
}

- (void)accountsDidChangeForAccountManager:(id)manager
{
  managerCopy = manager;
  queue = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDAB8];
  accounts = [managerCopy accounts];
  [v6 updateAccounts:accounts];
}

- (void)greetingForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController greetingForAccountUUID:dCopy completion:replyCopy];
}

- (void)isGreetingChangeSupportedForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController isGreetingChangeSupportedForAccountUUID:dCopy completion:replyCopy];
}

- (void)maximumGreetingDurationForAccountUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController maximumGreetingDurationForAccountUUID:dCopy completion:replyCopy];
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d reply:(id)reply
{
  greetingCopy = greeting;
  dCopy = d;
  replyCopy = reply;
  carrierServicesController = [(VMVoicemailServiceController *)self carrierServicesController];
  [carrierServicesController setGreeting:greetingCopy forAccountUUID:dCopy completion:replyCopy];
}

- (void)greetingManager:(id)manager greetingWillChangeForAccountUUID:(id)d
{
  v4 = [(VMVoicemailServiceController *)self queue:manager];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingManager:(id)manager greetingDidChangeForAccountUUID:(id)d
{
  v4 = [(VMVoicemailServiceController *)self queue:manager];
  dispatch_assert_queue_V2(v4);
}

- (void)greetingChangedByCarrier:(id)carrier
{
  carrierCopy = carrier;
  queue = [(VMVoicemailServiceController *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = [(VMVoicemailServiceController *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1000EDAD8];
  [v6 greetingChangedByCarrier:carrierCopy];
}

- (void)messageCountForMailboxType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  v5 = sub_10001BFFC(type);
  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v5, 0);
  replyCopy[2](replyCopy, RecordCountWithMailboxType);
}

- (void)messageCountForMailboxType:(int64_t)type read:(BOOL)read reply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  v7 = sub_10001BFFC(type);
  v8 = &kCFBooleanTrue;
  if (!readCopy)
  {
    v8 = &kCFBooleanFalse;
  }

  RecordCountWithMailboxType = VMStoreGetRecordCountWithMailboxType(v7, *v8);
  replyCopy[2](replyCopy, RecordCountWithMailboxType);
}

- (void)messagesForMailboxType:(int64_t)type limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply
{
  offsetCopy = offset;
  limitCopy = limit;
  replyCopy = reply;
  v11 = +[NSMutableArray array];
  v12 = sub_10001BFFC(type);
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

  v17 = VMStoreCopyRecordsWithMailboxType(v12, 0, limitCopy, offsetCopy);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100010BEC;
  v21[3] = &unk_1000EDB00;
  v18 = subscriptions;
  v22 = v18;
  v19 = getIsoContryCodes;
  v23 = v19;
  v20 = v11;
  v24 = v20;
  [v17 enumerateObjectsUsingBlock:v21];
  replyCopy[2](replyCopy, v20);
}

- (void)messagesForMailboxType:(int64_t)type read:(BOOL)read limit:(int64_t)limit offset:(int64_t)offset reply:(id)reply
{
  offsetCopy = offset;
  limitCopy = limit;
  readCopy = read;
  replyCopy = reply;
  v13 = +[NSMutableArray array];
  v14 = sub_10001BFFC(type);
  telephonyClient = [(VMVoicemailServiceController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  telephonyClient2 = [(VMVoicemailServiceController *)self telephonyClient];
  getIsoContryCodes = [telephonyClient2 getIsoContryCodes];

  v19 = &kCFBooleanTrue;
  if (!readCopy)
  {
    v19 = &kCFBooleanFalse;
  }

  v20 = VMStoreCopyRecordsWithMailboxType(v14, *v19, limitCopy, offsetCopy);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100010E84;
  v24[3] = &unk_1000EDB00;
  v21 = subscriptions;
  v25 = v21;
  v22 = getIsoContryCodes;
  v26 = v22;
  v23 = v13;
  v27 = v23;
  [v20 enumerateObjectsUsingBlock:v24];
  replyCopy[2](replyCopy, v23);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = invocationCopy;
  if (replyCopy)
  {
    [invocationCopy invoke];
  }

  else
  {
    invocationDescription = [invocationCopy invocationDescription];
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
      v29 = connectionCopy;
      v30 = 2112;
      v31 = invocationDescription;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Client [%s:%d] (conn=%p) invoking %@", buf, 0x26u);
    }

    connection = [(VMVoicemailServiceController *)self connection];
    exportedInterface = [connection exportedInterface];
    v17 = [exportedInterface replyBlockSignatureForSelector:{objc_msgSend(v10, "selector")}];

    if (v17)
    {
      getBlockArgumentIndex = [v10 getBlockArgumentIndex];
      *buf = 0;
      [v10 getArgument:buf atIndex:getBlockArgumentIndex];
      v19 = NSStringFromSelector([v10 selector]);
      v20 = [*buf copy];
      v21 = v17;
      [v17 UTF8String];
      v22 = v19;
      v23 = v20;
      v24 = __NSMakeSpecialForwardingCaptureBlock();
      [v10 setArgument:&v24 atIndex:{getBlockArgumentIndex, _NSConcreteStackBlock, 3221225472, sub_100011254, &unk_1000EDB28}];
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