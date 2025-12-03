@interface VMCarrierServicesController
- (BOOL)isOnline;
- (BOOL)isRefreshRequestedForAccount:(id)account andReset:(BOOL)reset;
- (BOOL)isSubscribed;
- (BOOL)isSyncInProgress;
- (BOOL)setAccountProperties:(id)properties properties:(id)a4 error:(id *)error;
- (BOOL)wasDeviceRestart;
- (VMCarrierServicesController)initWithStateRequestController:(id)controller transcriptionService:(id)service telephonyClient:(id)client queue:(id)queue;
- (VMCarrierServicesController)initWithTranscriptionService:(id)service queue:(id)queue telephonyClient:(id)client;
- (VMDCarrierAccountDataSource)carrierAccountDataSource;
- (VVService)defaultService;
- (id)accountsToRefreshIfNeeded;
- (id)findContextInfoWithLabelUUID:(id)d;
- (id)findContextInfoWithSubscriptionUUID:(id)d;
- (id)getServiceInfoForAccountUUID:(id)d;
- (id)getStorageUsage;
- (id)getVoicemailPhoneNumberForAccountUUID_sync:(id)d_sync;
- (id)serviceForLabel:(id)label;
- (void)_handleSubscriptionStatusChanged:(id)changed;
- (void)activeSubscriptionsDidChange;
- (void)carrierBundleChange:(id)change;
- (void)connectionAvailability:(id)availability availableConnections:(id)connections;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)createPersonalizedTranscript:(id)transcript completion:(id)completion;
- (void)createTranscription:(id)transcription transcription:(id)a4 completion:(id)completion;
- (void)dealloc;
- (void)do_M2A_merge:(id)a_merge;
- (void)dumpState;
- (void)executeHandlerForNotificationWithName:(id)name userInfo:(id)info;
- (void)executeHandlerForVoicemailInfoNotification:(id)notification userInfo:(id)info;
- (void)greetingForAccountUUID:(id)d completion:(id)completion;
- (void)handleNotificationWithName:(id)name userInfo:(id)info;
- (void)isAccountOnline:(id)online completion:(id)completion;
- (void)isAccountSubscribed:(id)subscribed completion:(id)completion;
- (void)isCallVoicemailSupportedForAccountUUID:(id)d completion:(id)completion;
- (void)isGreetingChangeSupportedForAccountUUID:(id)d completion:(id)completion;
- (void)isPasscodeChangeSupportedForAccountUUID:(id)d completion:(id)completion;
- (void)local_voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
- (void)markRecordsWithIdentifiersAsRead:(id)read;
- (void)markRecordsWithUniqueIdentifiersAsRead:(id)read;
- (void)maximumGreetingDurationForAccountUUID:(id)d completion:(id)completion;
- (void)maximumPasscodeLengthForAccountUUID:(id)d completion:(id)completion;
- (void)minimumPasscodeLengthForAccountUUID:(id)d completion:(id)completion;
- (void)moveRecordsWithIdentifiersToDeleted:(id)deleted;
- (void)moveRecordsWithIdentifiersToInbox:(id)inbox;
- (void)moveRecordsWithIdentifiersToTrash:(id)trash;
- (void)moveRecordsWithUniqueIdentifiersToDeleted:(id)deleted;
- (void)moveRecordsWithUniqueIdentifiersToInbox:(id)inbox;
- (void)moveRecordsWithUniqueIdentifiersToTrash:(id)trash;
- (void)performSynchronousBlock:(id)block;
- (void)postSmscAddressAvailable:(id)available smsc:(id)smsc;
- (void)queryAndInitVoicemailServices;
- (void)remapAccount:(id)account toAccount:(id)toAccount;
- (void)reportAccount:(id)account subscribed:(BOOL)subscribed;
- (void)reportTranscriptionProblemForRecord:(void *)record;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forRecord:(void *)record;
- (void)resetNetworkSettings;
- (void)retrieveDataForRecord:(void *)record;
- (void)sendStateRequestForAccountUUID:(id)d;
- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion;
- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion;
- (void)start;
- (void)storageUsageForAccountUUID:(id)d completion:(id)completion;
- (void)subscriberCountryCodeDidChange:(id)change;
- (void)subscriptionDataOnlyDidChange;
- (void)subscriptionInfoDidChange;
- (void)synchronize;
- (void)updateCarrierBundle:(id)bundle service:(id)service;
- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
@end

@implementation VMCarrierServicesController

- (BOOL)isSubscribed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002990;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMCarrierServicesController *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isOnline
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003200;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMCarrierServicesController *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isSyncInProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003588;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMCarrierServicesController *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)getStorageUsage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000385C;
  v7[3] = &unk_1000ED4C8;
  v7[4] = self;
  v7[5] = &v8;
  [(VMCarrierServicesController *)self performSynchronousBlock:v7];
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v9[3];
    *buf = 136315650;
    v13 = "";
    v14 = 2080;
    v15 = "";
    v16 = 2048;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail storageUsage is %lu", buf, 0x20u);
  }

  v4 = [NSNumber alloc];
  v5 = [v4 initWithUnsignedInteger:v9[3]];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (VMCarrierServicesController)initWithTranscriptionService:(id)service queue:(id)queue telephonyClient:(id)client
{
  clientCopy = client;
  queueCopy = queue;
  serviceCopy = service;
  v11 = [[VMCarrierStateRequestController alloc] initWithTelephonyClient:clientCopy];
  v12 = [(VMCarrierServicesController *)self initWithStateRequestController:v11 transcriptionService:serviceCopy telephonyClient:clientCopy queue:queueCopy];

  return v12;
}

- (VMCarrierServicesController)initWithStateRequestController:(id)controller transcriptionService:(id)service telephonyClient:(id)client queue:(id)queue
{
  controllerCopy = controller;
  serviceCopy = service;
  clientCopy = client;
  queueCopy = queue;
  v15 = sub_100002850();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "";
    v40 = 2080;
    v41 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%screating VMCarrierServicesController", buf, 0x16u);
  }

  if (!controllerCopy)
  {
    sub_10009D560();
  }

  if (!serviceCopy)
  {
    sub_10009D5D0();
  }

  if (!clientCopy)
  {
    sub_10009D640();
  }

  if (!queueCopy)
  {
    sub_10009D6B0();
  }

  v37.receiver = self;
  v37.super_class = VMCarrierServicesController;
  v16 = [(VMCarrierServicesController *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_queue, queue);
    dispatch_queue_set_specific(queueCopy, off_10010D3E0, v17, 0);
    v18 = objc_opt_new();
    [(VMCarrierServicesController *)v17 setLabelUUIDToGreetingController:v18];

    v19 = objc_opt_new();
    [(VMCarrierServicesController *)v17 setLabelUUIDToService:v19];

    [(VMCarrierServicesController *)v17 setTelephonyClient:clientCopy];
    telephonyClient = [(VMCarrierServicesController *)v17 telephonyClient];
    [telephonyClient addDelegate:v17 queue:queueCopy];

    objc_storeStrong(&v17->_stateRequestController, controller);
    objc_storeStrong(&v17->_transcriptionService, service);
    v21 = sub_100002850();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 136315906;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2112;
      v43 = v22;
      v44 = 2048;
      v45 = v17;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Adding state dump handler", buf, 0x2Au);
    }

    objc_initWeak(buf, v17);
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_10005B01C;
    v35 = &unk_1000EEEC0;
    objc_copyWeak(&v36, buf);
    v17->stateHandle = os_state_add_handler();
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10005B14C;
    v30 = &unk_1000EE5B8;
    v24 = v17;
    v31 = v24;
    dispatch_async(&_dispatch_main_q, &v27);
    v25 = [NSNotificationCenter defaultCenter:v27];
    [v25 addObserver:v24 selector:"_handleSubscriptionStatusChanged:" name:@"VVServiceSubscriptionStatusChangedNotification" object:0];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  return v17;
}

- (void)dealloc
{
  v3 = sub_100002850();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "";
    v12 = 2080;
    v13 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sdestroying VMCarrierServicesController", buf, 0x16u);
  }

  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  if (self->stateHandle)
  {
    v5 = sub_100002850();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 136315906;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v6;
      v16 = 2048;
      selfCopy = self;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s<%@ %p> Removing state dump handler", buf, 0x2Au);
    }

    stateHandle = self->stateHandle;
    os_state_remove_handler();
    self->stateHandle = 0;
  }

  v9.receiver = self;
  v9.super_class = VMCarrierServicesController;
  [(VMCarrierServicesController *)&v9 dealloc];
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B480;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)findContextInfoWithSubscriptionUUID:(id)d
{
  dCopy = d;
  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  contexts = [telephonyClient contexts];
  subscriptions = [contexts subscriptions];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = subscriptions;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uuid = [v12 uuid];
        v14 = [uuid isEqual:dCopy];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)findContextInfoWithLabelUUID:(id)d
{
  dCopy = d;
  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  contexts = [telephonyClient contexts];
  subscriptions = [contexts subscriptions];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = subscriptions;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        labelID = [v12 labelID];
        uUIDString = [dCopy UUIDString];
        v15 = [labelID isEqual:uUIDString];

        if (v15)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)executeHandlerForVoicemailInfoNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v8 = sub_100002850();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "";
    v14 = 2080;
    v15 = "";
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = notificationCopy;
    v9 = v17;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is executing voicemail info handler for subscription %@", &v12, 0x2Au);
  }

  v10 = [CTVoicemailInfoType voicemailInfoTypeForDictionaryRepresentation:infoCopy];

  [(VMCarrierServicesController *)self local_voicemailInfoAvailableNotification:notificationCopy voicemailInfo:v10];
  carrierAccountDataSource = [(VMCarrierServicesController *)self carrierAccountDataSource];
  [carrierAccountDataSource local_voicemailInfoAvailableNotification:notificationCopy voicemailInfo:v10];
}

- (void)executeHandlerForNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BA08;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = nameCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

- (void)handleNotificationWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100002850();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2112;
    v33 = objc_opt_class();
    v34 = 2112;
    v35 = nameCopy;
    v36 = 2112;
    v37 = infoCopy;
    v10 = v33;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling notification with name: %@ userInfo: %@", buf, 0x34u);
  }

  if ([nameCopy isEqualToString:kVVReloadServiceNotification])
  {
    sub_1000898BC(0, 0);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
    allValues = [labelUUIDToService allValues];

    v13 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          verifier = [*(*(&v23 + 1) + 8 * v16) verifier];
          [verifier _checkpointDictionaryChanged];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    labelUUIDToService2 = [(VMCarrierServicesController *)self labelUUIDToService];
    [labelUUIDToService2 removeAllObjects];

    labelUUIDToGreetingController = [(VMCarrierServicesController *)self labelUUIDToGreetingController];
    [labelUUIDToGreetingController removeAllObjects];
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"com.apple.telephonyutilities.callservicesdaemon.voicemailcallended"])
  {
    labelUUIDToGreetingController = [(VMCarrierServicesController *)self defaultService];
    [labelUUIDToGreetingController synchronize:0 reason:@"CallEnded"];
LABEL_14:

    goto LABEL_15;
  }

  if (([nameCopy isEqualToString:@"VVMessageWaitingFallbackNotification"] & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.voicemail.changed") & 1) == 0)
  {
    if ([nameCopy isEqualToString:@"com.apple.commcenter.InternationalRoamingEDGE.changed"])
    {
      defaultService = [(VMCarrierServicesController *)self defaultService];
      ignoresRoamingSwitch = [defaultService ignoresRoamingSwitch];

      if (ignoresRoamingSwitch)
      {
        goto LABEL_15;
      }

      labelUUIDToGreetingController = [(VMCarrierServicesController *)self defaultService];
      [labelUUIDToGreetingController _dataRoamingStatusChanged];
    }

    else
    {
      if (![nameCopy isEqualToString:@"kVMVoicemailTranscriptionTaskTranscribeAllVoicemails"])
      {
        goto LABEL_15;
      }

      v22 = sub_100002850();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "";
        v30 = 2080;
        v31 = "";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sGot notification to force us to retranscribe all voicemails", buf, 0x16u);
      }

      +[VMVoicemailTranscriptionTask resetRetranscriptionTaskState];
      labelUUIDToGreetingController = [(VMCarrierServicesController *)self transcriptionService];
      [labelUUIDToGreetingController retranscribeAllVoicemails];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_handleSubscriptionStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "";
    v12 = 2080;
    v13 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s_handleSubscriptionStatusChanged", &v10, 0x16u);
  }

  userInfo = [changedCopy userInfo];

  if (userInfo)
  {
    v7 = [userInfo objectForKey:@"yesno"];
    v8 = [userInfo objectForKey:@"contextInfo"];
    -[VMCarrierServicesController reportAccount:subscribed:](self, "reportAccount:subscribed:", v8, [v7 BOOLValue]);

    if ([v7 isEqual:&__kCFBooleanTrue])
    {
      v9 = [userInfo objectForKey:@"serviceLabelID"];
      [(VMCarrierServicesController *)self do_M2A_merge:v9];
    }
  }
}

- (BOOL)wasDeviceRestart
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = 16;
  if (sysctlbyname("kern.boottime", v14, &v13, 0, 0))
  {
    v2 = sub_100002850();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315906;
      v16 = "";
      v17 = 2080;
      v18 = "";
      v19 = 1024;
      v20 = v3;
      v21 = 2080;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%ssysctlbyname(kern.boottime, &bootTime, &bootTimeSize, NULL, 0) - failed with err:%d (%s)", buf, 0x26u);
    }

    v6 = 0;
  }

  else
  {
    v7 = +[VMPreferences sharedInstance];
    v2 = [v7 numberForKey:@"LastBootTime" defaultValue:0];

    if (v2 && (v8 = [v2 longValue], v8 == v14[0]))
    {
      v9 = sub_100002850();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "";
        v17 = 2080;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sNOT A FIRST TIME BOOTUP", buf, 0x16u);
      }

      v6 = 0;
    }

    else
    {
      v10 = +[VMPreferences sharedInstance];
      v11 = [NSNumber numberWithLong:v14[0]];
      [v10 setNumber:v11 forKey:@"LastBootTime"];

      v9 = sub_100002850();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "";
        v17 = 2080;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sFIRST TIME BOOTUP", buf, 0x16u);
      }

      v6 = 1;
    }
  }

  return v6;
}

- (id)accountsToRefreshIfNeeded
{
  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];
  v5 = [subscriptions count];

  if (v5)
  {
    v6 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    telephonyClient2 = [(VMCarrierServicesController *)self telephonyClient];
    subscriptions2 = [telephonyClient2 subscriptions];

    v9 = [subscriptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(subscriptions2);
          }

          v13 = *(*(&v47 + 1) + 8 * i);
          labelID = [v13 labelID];

          if (labelID)
          {
            labelID2 = [v13 labelID];
            [v6 addObject:labelID2];
          }
        }

        v10 = [subscriptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    if ([(VMCarrierServicesController *)self wasDeviceRestart])
    {
      v16 = v6;
LABEL_33:
      v37 = +[VMPreferences sharedInstance];
      v5 = v16;
      [v37 setPreferencesValue:v16 forKey:@"AccountsToRefreshIfNeeded"];

      v38 = +[VMPreferences sharedInstance];
      [v38 setPreferencesValue:v6 forKey:@"LastActiveAccounts"];

      goto LABEL_34;
    }

    v40 = v6;
    v17 = +[VMPreferences sharedInstance];
    v18 = [v17 preferencesValueForKey:@"AccountsToRefreshIfNeeded"];

    v19 = +[VMPreferences sharedInstance];
    v20 = [v19 preferencesValueForKey:@"LastActiveAccounts"];

    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }
    }

    v41 = v18;
    if (v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v20 = 0;
      }
    }

    v21 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    telephonyClient3 = [(VMCarrierServicesController *)self telephonyClient];
    subscriptions3 = [telephonyClient3 subscriptions];

    obj = subscriptions3;
    v24 = [subscriptions3 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v24)
    {
LABEL_32:

      v16 = v21;
      v6 = v40;
      goto LABEL_33;
    }

    v25 = v24;
    v26 = *v44;
LABEL_21:
    v27 = 0;
    while (1)
    {
      if (*v44 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v43 + 1) + 8 * v27);
      labelID3 = [v28 labelID];
      if (!labelID3)
      {
        goto LABEL_30;
      }

      v30 = labelID3;
      labelID4 = [v28 labelID];
      if ([v20 containsObject:labelID4])
      {
        [v28 labelID];
        v32 = v21;
        v34 = v33 = v20;
        v35 = [v41 containsObject:v34];

        v20 = v33;
        v21 = v32;

        if (!v35)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      labelID5 = [v28 labelID];
      [v21 addObject:labelID5];

LABEL_30:
      if (v25 == ++v27)
      {
        v25 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v25)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_34:

  return v5;
}

- (BOOL)isRefreshRequestedForAccount:(id)account andReset:(BOOL)reset
{
  resetCopy = reset;
  uUIDString = [account UUIDString];
  v6 = +[VMPreferences sharedInstance];
  v7 = [v6 preferencesValueForKey:@"AccountsToRefreshIfNeeded"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LODWORD(v8) = [v7 containsObject:uUIDString];
    if (v8)
    {
      v9 = !resetCopy;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = [v7 mutableCopy];
      [v10 removeObject:uUIDString];
      v11 = +[VMPreferences sharedInstance];
      if ([v10 count])
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      [v11 setPreferencesValue:v12 forKey:@"AccountsToRefreshIfNeeded"];

      v8 = sub_100002850();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "";
        v16 = 2080;
        v17 = "";
        v18 = 2112;
        v19 = uUIDString;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sMarked account as refreshed: %@", &v14, 0x20u);
      }

      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)queryAndInitVoicemailServices
{
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  accountsToRefreshIfNeeded = [(VMCarrierServicesController *)self accountsToRefreshIfNeeded];
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v150 = "";
    v151 = 2080;
    v152 = "";
    v153 = 2112;
    v154 = accountsToRefreshIfNeeded;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sAccounts to refresh if needed: %@", buf, 0x20u);
  }

  v115 = accountsToRefreshIfNeeded;

  v127 = objc_opt_new();
  selfCopy = self;
  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  contexts = [telephonyClient contexts];

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v116 = contexts;
  obj = [contexts subscriptions];
  v8 = [obj countByEnumeratingWithState:&v144 objects:v162 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v145;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v145 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v144 + 1) + 8 * i);
        v13 = +[NSFileManager defaultManager];
        accountID = [v12 accountID];
        v15 = sub_1000855D4(accountID);
        path = [v15 path];
        v17 = [v13 fileExistsAtPath:path];

        if ((v17 & 1) == 0)
        {
          accountID2 = [v12 accountID];
          [v127 addObject:accountID2];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v144 objects:v162 count:16];
    }

    while (v9);
  }

  v19 = sub_100002850();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v150 = "";
    v151 = 2080;
    v152 = "";
    v153 = 2112;
    v154 = contexts;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s===> Creating voicemail services for %@", buf, 0x20u);
  }

  v20 = selfCopy;
  carrierAccountDataSource = [(VMCarrierServicesController *)selfCopy carrierAccountDataSource];
  [carrierAccountDataSource checkUpdateAccounts];

  carrierAccountDataSource2 = [(VMCarrierServicesController *)selfCopy carrierAccountDataSource];
  accounts = [carrierAccountDataSource2 accounts];

  labelUUIDToService = [(VMCarrierServicesController *)selfCopy labelUUIDToService];
  v114 = [labelUUIDToService copy];

  obja = objc_opt_new();
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v126 = accounts;
  v25 = [v126 countByEnumeratingWithState:&v140 objects:v161 count:16];
  if (v25)
  {
    v26 = v25;
    v128 = *v141;
    do
    {
      v27 = 0;
      v124 = v26;
      do
      {
        if (*v141 != v128)
        {
          objc_enumerationMutation(v126);
        }

        v28 = *(*(&v140 + 1) + 8 * v27);
        telephonyClient2 = [(VMCarrierServicesController *)v20 telephonyClient];
        contexts2 = [telephonyClient2 contexts];
        uUID = [v28 UUID];
        v32 = sub_10005C978(contexts2, uUID);

        v33 = sub_100002850();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          uUID2 = [v28 UUID];
          *buf = 136315906;
          v150 = "";
          v151 = 2080;
          v152 = "";
          v153 = 2112;
          v154 = uUID2;
          v155 = 2112;
          v156 = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s==> Creating voicemail service for account UUID %@ with context %@", buf, 0x2Au);
        }

        telephonyClient3 = [(VMCarrierServicesController *)v20 telephonyClient];
        v36 = [telephonyClient3 carrierBundle:v32];

        serviceNameForSubscription = [v36 serviceNameForSubscription];
        v38 = serviceNameForSubscription;
        if (serviceNameForSubscription && ![serviceNameForSubscription caseInsensitiveCompare:@"IMAP"])
        {
          uUID3 = [v28 UUID];
          [obja addObject:uUID3];

          labelUUIDToService2 = [(VMCarrierServicesController *)v20 labelUUIDToService];
          uUID4 = [v28 UUID];
          v43 = [labelUUIDToService2 objectForKeyedSubscript:uUID4];

          if (v43)
          {
            v44 = sub_100002850();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v150 = "";
              v151 = 2080;
              v152 = "";
              v153 = 2112;
              v154 = v32;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sService currently exists; skipping service creation for subscription: %@", buf, 0x20u);
            }
          }

          else
          {
            telephonyClient4 = [(VMCarrierServicesController *)v20 telephonyClient];
            v46 = [telephonyClient4 isoCountryCode:v32];

            telephonyClient5 = [(VMCarrierServicesController *)v20 telephonyClient];
            v122 = [telephonyClient5 countryCode:v32];

            telephonyClient6 = [(VMCarrierServicesController *)v20 telephonyClient];
            v121 = [telephonyClient6 networkCode:v32];

            phoneNumber = [(__CFString *)v32 phoneNumber];
            v123 = v46;
            v50 = sub_100025188(phoneNumber, v46);

            if (!v50 || ![v50 length])
            {
              v51 = sub_100002850();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                uUID5 = [v28 UUID];
                *buf = 136315650;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = uUID5;
                _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "#E %s%sCould not retrieve a normalized telephone number for account %@", buf, 0x20u);
              }
            }

            v120 = v36;
            uUID6 = [v28 UUID];
            accountID3 = [(__CFString *)v32 accountID];
            telephonyClient7 = [(VMCarrierServicesController *)v20 telephonyClient];
            stateRequestController = [(VMCarrierServicesController *)selfCopy stateRequestController];
            accountID4 = [(__CFString *)v32 accountID];
            LOBYTE(v113) = [v127 containsObject:accountID4];
            v119 = v50;
            v115 = [VVService serviceWithLabel:uUID6 accountIdentifier:accountID3 phoneNumber:v50 name:v38 isoCountryCode:v123 countryCode:v122 networkCode:v121 contextInfo:v32 telephonyClient:telephonyClient7 stateRequestController:stateRequestController newAccount:v113, v114, v115];

            v58 = v115;
            uUID7 = [v28 UUID];
            LODWORD(uUID6) = [(VMCarrierServicesController *)selfCopy isRefreshRequestedForAccount:uUID7 andReset:1];

            if (uUID6)
            {
              [v115 refreshIfNeeded];
            }

            transcriptionService = [(VMCarrierServicesController *)selfCopy transcriptionService];
            [v115 setTranscriptionService:transcriptionService];

            v61 = sub_100002850();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v150 = "";
              v151 = 2080;
              v152 = "";
              v153 = 2112;
              v154 = v115;
              v155 = 2112;
              v156 = v32;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated service: %@ for subscription %@", buf, 0x2Au);
            }

            v62 = [[VMVoicemailGreetingController alloc] initWithService:v115];
            labelUUIDToGreetingController = [(VMCarrierServicesController *)selfCopy labelUUIDToGreetingController];
            uUID8 = [v28 UUID];
            [labelUUIDToGreetingController setObject:v62 forKeyedSubscript:uUID8];

            labelUUIDToService3 = [(VMCarrierServicesController *)selfCopy labelUUIDToService];
            uUID9 = [v28 UUID];
            [labelUUIDToService3 setObject:v58 forKeyedSubscript:uUID9];

            telephonyClient8 = [(VMCarrierServicesController *)selfCopy telephonyClient];
            context = [(__CFString *)v32 context];
            v139 = 0;
            v69 = [telephonyClient8 getConnectionAvailability:context connectionType:1 error:&v139];
            v70 = v139;

            v71 = sub_100002850();
            v72 = v71;
            if (v69)
            {
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v69;
                v155 = 2112;
                v156 = v32;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved data connection availability %@ for subscription %@", buf, 0x2Au);
              }

              [v58 setCellularNetworkAvailable:{objc_msgSend(v69, "available")}];
            }

            else
            {
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v70;
                v155 = 2112;
                v156 = v32;
                _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "#E %s%sRetrieving data connection availability failed with error %@ for subscription %@", buf, 0x2Au);
              }
            }

            telephonyClient9 = [(VMCarrierServicesController *)selfCopy telephonyClient];
            context2 = [(__CFString *)v32 context];
            v138 = v70;
            v75 = [telephonyClient9 getConnectionState:context2 connectionType:1 error:&v138];
            v76 = v138;

            v77 = sub_100002850();
            v78 = v77;
            v125 = v75;
            v118 = v69;
            if (v75)
            {
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v75;
                v155 = 2112;
                v156 = v32;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved data connection status %@ for subscription %@", buf, 0x2Au);
              }

              [v58 setWiFiNetworkSupported:{objc_msgSend(v75, "publicNetAllowed")}];
            }

            else
            {
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v76;
                v155 = 2112;
                v156 = v32;
                _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "#E %s%sRetrieving data connection status failed with error %@ for subscription %@", buf, 0x2Au);
              }
            }

            telephonyClient10 = [(VMCarrierServicesController *)selfCopy telephonyClient];
            v80 = [telephonyClient10 carrierBundle:v32];

            v117 = v80;
            isServiceSupportedOnInternetForSubscription = [v80 isServiceSupportedOnInternetForSubscription];
            v82 = sub_100002850();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v83 = @"NOT supported";
              if (isServiceSupportedOnInternetForSubscription)
              {
                v83 = @"supported";
              }

              v150 = "";
              v151 = 2080;
              v152 = "";
              v153 = 2112;
              v154 = v83;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved service availability on Internet: service is %@", buf, 0x20u);
            }

            if (isServiceSupportedOnInternetForSubscription != [v58 isWiFiNetworkSupported])
            {
              v84 = sub_100002850();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                if (isServiceSupportedOnInternetForSubscription)
                {
                  v85 = @"supported";
                }

                else
                {
                  v85 = @"NOT supported";
                }

                publicNetAllowed = [v75 publicNetAllowed];
                *buf = 136316418;
                v87 = @"NO";
                if (publicNetAllowed)
                {
                  v87 = @"YES";
                }

                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v85;
                v155 = 2112;
                v156 = v87;
                v157 = 2112;
                v158 = v75;
                v159 = 2112;
                v160 = v32;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s%sService is %@ on Internet in carrier bundle, but publicNetAllowed is %@ %@ for subscription %@", buf, 0x3Eu);
              }

              [v58 setWiFiNetworkSupported:isServiceSupportedOnInternetForSubscription];
            }

            telephonyClient11 = [(VMCarrierServicesController *)selfCopy telephonyClient];
            context3 = [(__CFString *)v32 context];
            v137 = v76;
            v90 = [telephonyClient11 getSmscAddress:context3 error:&v137];
            v91 = v137;

            v92 = sub_100002850();
            v93 = v92;
            if (v90)
            {
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v90;
                v155 = 2112;
                v156 = v32;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved SMSC address '%@' for subscription %@", buf, 0x2Au);
              }

              [v58 setSmscAddress:v90];
            }

            else
            {
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v91;
                v155 = 2112;
                v156 = v32;
                _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "#E %s%sRetrieving SMSC address failed with error %@ for subscription %@", buf, 0x2Au);
              }
            }

            telephonyClient12 = [(VMCarrierServicesController *)selfCopy telephonyClient];
            context4 = [(__CFString *)v32 context];
            v136 = v91;
            v96 = [telephonyClient12 getSmsReadyState:context4 error:&v136];
            v97 = v136;

            v98 = sub_100002850();
            v99 = v98;
            if (v96)
            {
              v36 = v120;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v96;
                v155 = 2112;
                v156 = v32;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved SMS ready state of %@ for subscription %@", buf, 0x2Au);
              }

              [v58 setSMSReady:{objc_msgSend(v96, "BOOLValue")}];
            }

            else
            {
              v36 = v120;
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v150 = "";
                v151 = 2080;
                v152 = "";
                v153 = 2112;
                v154 = v97;
                v155 = 2112;
                v156 = v32;
                _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "#E %s%sRetrieving SMS ready state failed with error %@ for subscription %@", buf, 0x2Au);
              }
            }

            v20 = selfCopy;
          }

          v26 = v124;
        }

        else
        {
          v39 = sub_100002850();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v150 = "";
            v151 = 2080;
            v152 = "";
            v153 = 2112;
            v154 = v32;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier does not support IMAP; cancelling service creation for subscription %@", buf, 0x20u);
          }

          [(VMCarrierServicesController *)v20 reportAccount:v32 subscribed:0];
        }

        v27 = v27 + 1;
      }

      while (v26 != v27);
      v26 = [v126 countByEnumeratingWithState:&v140 objects:v161 count:16];
    }

    while (v26);
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v101 = v114;
  v102 = [v101 countByEnumeratingWithState:&v132 objects:v148 count:16];
  if (v102)
  {
    v103 = v102;
    v104 = *v133;
    do
    {
      for (j = 0; j != v103; j = j + 1)
      {
        if (*v133 != v104)
        {
          objc_enumerationMutation(v101);
        }

        v106 = *(*(&v132 + 1) + 8 * j);
        if (([obja containsObject:v106] & 1) == 0)
        {
          v107 = sub_100002850();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = [v101 objectForKeyedSubscript:v106];
            *buf = 136315906;
            v150 = "";
            v151 = 2080;
            v152 = "";
            v153 = 2112;
            v154 = v108;
            v155 = 2112;
            v156 = v106;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I %s%sdeleting service %@ for labelUUID %@", buf, 0x2Au);
          }

          labelUUIDToService4 = [(VMCarrierServicesController *)selfCopy labelUUIDToService];
          [labelUUIDToService4 removeObjectForKey:v106];

          labelUUIDToGreetingController2 = [(VMCarrierServicesController *)selfCopy labelUUIDToGreetingController];
          [labelUUIDToGreetingController2 removeObjectForKey:v106];
        }
      }

      v103 = [v101 countByEnumeratingWithState:&v132 objects:v148 count:16];
    }

    while (v103);
  }

  v111 = sub_100002850();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    labelUUIDToService5 = [(VMCarrierServicesController *)selfCopy labelUUIDToService];
    *buf = 136315650;
    v150 = "";
    v151 = 2080;
    v152 = "";
    v153 = 2112;
    v154 = labelUUIDToService5;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I %s%slabelUUIDToService: %@", buf, 0x20u);
  }
}

- (void)synchronize
{
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DEC4;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (VVService)defaultService
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10005E164;
  v9 = sub_10005E174;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005E17C;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMCarrierServicesController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)reportAccount:(id)account subscribed:(BOOL)subscribed
{
  accountCopy = account;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E38C;
  block[3] = &unk_1000EEEE8;
  subscribedCopy = subscribed;
  v10 = accountCopy;
  selfCopy = self;
  v8 = accountCopy;
  dispatch_async(queue, block);
}

- (void)do_M2A_merge:(id)a_merge
{
  a_mergeCopy = a_merge;
  queue = [(VMCarrierServicesController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005E57C;
  v7[3] = &unk_1000ED450;
  v7[4] = self;
  v8 = a_mergeCopy;
  v6 = a_mergeCopy;
  dispatch_async(queue, v7);
}

- (void)moveRecordsWithIdentifiersToTrash:(id)trash
{
  trashCopy = trash;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = trashCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Trash <identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005E868;
  v8[3] = &unk_1000ED450;
  v9 = trashCopy;
  selfCopy = self;
  v7 = trashCopy;
  dispatch_async(queue, v8);
}

- (void)moveRecordsWithIdentifiersToInbox:(id)inbox
{
  inboxCopy = inbox;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = inboxCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Inbox <identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005ED54;
  v8[3] = &unk_1000ED450;
  v9 = inboxCopy;
  selfCopy = self;
  v7 = inboxCopy;
  dispatch_async(queue, v8);
}

- (void)moveRecordsWithIdentifiersToDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = deletedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Deleted <identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005F240;
  v8[3] = &unk_1000ED450;
  v9 = deletedCopy;
  selfCopy = self;
  v7 = deletedCopy;
  dispatch_async(queue, v8);
}

- (void)markRecordsWithIdentifiersAsRead:(id)read
{
  readCopy = read;
  queue = [(VMCarrierServicesController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F5FC;
  v7[3] = &unk_1000ED450;
  v8 = readCopy;
  selfCopy = self;
  v6 = readCopy;
  dispatch_async(queue, v7);
}

- (void)moveRecordsWithUniqueIdentifiersToTrash:(id)trash
{
  trashCopy = trash;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = trashCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Trash <uuid identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FAE8;
  v8[3] = &unk_1000ED450;
  v9 = trashCopy;
  selfCopy = self;
  v7 = trashCopy;
  dispatch_async(queue, v8);
}

- (void)moveRecordsWithUniqueIdentifiersToInbox:(id)inbox
{
  inboxCopy = inbox;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = inboxCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Inbox <uuid identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FFDC;
  v8[3] = &unk_1000ED450;
  v9 = inboxCopy;
  selfCopy = self;
  v7 = inboxCopy;
  dispatch_async(queue, v8);
}

- (void)moveRecordsWithUniqueIdentifiersToDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = sub_100002850();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "";
    v13 = 2080;
    v14 = "";
    v15 = 2112;
    v16 = deletedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sMove records to Deleted <uuid identifiers=%@>", buf, 0x20u);
  }

  queue = [(VMCarrierServicesController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000604D0;
  v8[3] = &unk_1000ED450;
  v9 = deletedCopy;
  selfCopy = self;
  v7 = deletedCopy;
  dispatch_async(queue, v8);
}

- (void)markRecordsWithUniqueIdentifiersAsRead:(id)read
{
  readCopy = read;
  queue = [(VMCarrierServicesController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060894;
  v7[3] = &unk_1000ED450;
  v8 = readCopy;
  selfCopy = self;
  v6 = readCopy;
  dispatch_async(queue, v7);
}

- (void)remapAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  queue = [(VMCarrierServicesController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100060D08;
  v11[3] = &unk_1000ED450;
  v12 = accountCopy;
  v13 = toAccountCopy;
  v9 = toAccountCopy;
  v10 = accountCopy;
  dispatch_async(queue, v11);
}

- (void)resetNetworkSettings
{
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100060FD8;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)serviceForLabel:(id)label
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10005E164;
  v14 = sub_10005E174;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100061788;
  v6[3] = &unk_1000EDDA0;
  v9 = &v10;
  selfCopy = self;
  labelCopy = label;
  v8 = labelCopy;
  [(VMCarrierServicesController *)selfCopy performSynchronousBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)retrieveDataForRecord:(void *)record
{
  CFRetain(record);
  queue = [(VMCarrierServicesController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100061894;
  v6[3] = &unk_1000EEF10;
  v6[4] = self;
  v6[5] = record;
  dispatch_async(queue, v6);
}

- (void)reportTranscriptionProblemForRecord:(void *)record
{
  CFRetain(record);
  queue = [(VMCarrierServicesController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000619B4;
  v6[3] = &unk_1000EEF10;
  v6[4] = self;
  v6[5] = record;
  dispatch_async(queue, v6);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forRecord:(void *)record
{
  CFRetain(record);
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061AAC;
  block[3] = &unk_1000EEF38;
  accurateCopy = accurate;
  block[4] = self;
  block[5] = record;
  dispatch_async(queue, block);
}

- (void)createTranscription:(id)transcription transcription:(id)a4 completion:(id)completion
{
  transcriptionCopy = transcription;
  v9 = a4;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100061C00;
  v15[3] = &unk_1000EEF60;
  v15[4] = self;
  v16 = transcriptionCopy;
  v17 = v9;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = v9;
  v14 = transcriptionCopy;
  dispatch_async(queue, v15);
}

- (void)createPersonalizedTranscript:(id)transcript completion:(id)completion
{
  transcriptCopy = transcript;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061D6C;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = transcriptCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = transcriptCopy;
  dispatch_async(queue, block);
}

- (void)subscriptionDataOnlyDidChange
{
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100002850();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "";
    v7 = 2080;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierService, Received subscriptionDataOnlyDidChange", &v5, 0x16u);
  }

  [(VMCarrierServicesController *)self queryAndInitVoicemailServices];
}

- (void)subscriptionInfoDidChange
{
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = sub_100002850();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "";
    v6 = 2080;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierService, Received subscriptionInfoDidChange", &v4, 0x16u);
  }
}

- (void)activeSubscriptionsDidChange
{
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100002850();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "";
    v7 = 2080;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierService, Received activeSubscriptionsDidChange", &v5, 0x16u);
  }

  [(VMCarrierServicesController *)self queryAndInitVoicemailServices];
  dispatch_async(&_dispatch_main_q, &stru_1000EEFA8);
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100002850();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "";
    v16 = 2080;
    v17 = "";
    v18 = 2112;
    v19 = objc_opt_class();
    v20 = 2112;
    v21 = changeCopy;
    v7 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ received carrier bundle change callback for subscription %@", &v14, 0x2Au);
  }

  v8 = [NSUUID alloc];
  labelID = [changeCopy labelID];
  v10 = [v8 initWithUUIDString:labelID];

  if (v10)
  {
    labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
    v12 = [labelUUIDToService objectForKeyedSubscript:v10];

    if (v12)
    {
      contextInfo = [v12 contextInfo];
      [(VMCarrierServicesController *)self updateCarrierBundle:contextInfo service:v12];
    }

    else
    {
      contextInfo = sub_100002850();
      if (os_log_type_enabled(contextInfo, OS_LOG_TYPE_ERROR))
      {
        sub_10009D7E8();
      }
    }
  }

  else
  {
    v12 = sub_100002850();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009D85C();
    }
  }
}

- (void)updateCarrierBundle:(id)bundle service:(id)service
{
  bundleCopy = bundle;
  serviceCopy = service;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
  v10 = [telephonyClient carrierBundle:bundleCopy];

  isServiceSupportedOnInternetForSubscription = [v10 isServiceSupportedOnInternetForSubscription];
  v12 = sub_100002850();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v16 = 136316162;
    v17 = "";
    v14 = @"NOT supported";
    v18 = 2080;
    v19 = "";
    v20 = 2112;
    if (isServiceSupportedOnInternetForSubscription)
    {
      v14 = @"supported";
    }

    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = bundleCopy;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ updating values from carrier bundle, service on Internet is %@ for subscription %@", &v16, 0x34u);
  }

  [serviceCopy setWiFiNetworkSupported:isServiceSupportedOnInternetForSubscription];
  [serviceCopy _carrierBundleChanged];
}

- (void)connectionAvailability:(id)availability availableConnections:(id)connections
{
  availabilityCopy = availability;
  connectionsCopy = connections;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100002850();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 136316162;
    v31 = "";
    v32 = 2080;
    v33 = "";
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = availabilityCopy;
    v38 = 2112;
    v39 = connectionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived delegate callback %@ %@ %@", buf, 0x34u);
  }

  v12 = [NSUUID alloc];
  labelID = [availabilityCopy labelID];
  v14 = [v12 initWithUUIDString:labelID];

  if (v14)
  {
    labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
    v16 = [labelUUIDToService objectForKeyedSubscript:v14];

    if (v16)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = connectionsCopy;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        v21 = kCTDataConnectionServiceTypeVVM;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if ([*(*(&v25 + 1) + 8 * v22) isEqualToString:{v21, v25}])
            {
              v23 = 1;
              goto LABEL_15;
            }

            v22 = v22 + 1;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v23 = 0;
LABEL_15:

      [v16 setCellularNetworkAvailable:v23];
    }

    else
    {
      v24 = sub_100002850();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10009D7E8();
      }
    }
  }
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (connection == 1)
  {
    v11 = sub_100002850();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = "";
      v20 = 2080;
      v21 = "";
      v22 = 2112;
      v23 = infoCopy;
      v24 = 2112;
      v25 = changedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sData connection state changed %@ for subscription %@", &v18, 0x2Au);
    }

    v12 = [NSUUID alloc];
    labelID = [changedCopy labelID];
    v14 = [v12 initWithUUIDString:labelID];

    if (v14)
    {
      labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
      v16 = [labelUUIDToService objectForKeyedSubscript:v14];

      if (v16)
      {
        [v16 setWiFiNetworkSupported:{objc_msgSend(infoCopy, "publicNetAllowed")}];
      }

      else
      {
        v17 = sub_100002850();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10009D7E8();
        }
      }
    }
  }
}

- (void)postSmscAddressAvailable:(id)available smsc:(id)smsc
{
  availableCopy = available;
  smscCopy = smsc;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100002850();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315906;
    v17 = "";
    v18 = 2080;
    v19 = "";
    v20 = 2112;
    v21 = smscCopy;
    v22 = 2112;
    v23 = availableCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sSMSC address is '%@' for subscription %@", &v16, 0x2Au);
  }

  v10 = [NSUUID alloc];
  labelID = [availableCopy labelID];
  v12 = [v10 initWithUUIDString:labelID];

  if (v12)
  {
    labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
    v14 = [labelUUIDToService objectForKeyedSubscript:v12];

    if (v14)
    {
      [v14 setSmscAddress:smscCopy];
    }

    else
    {
      v15 = sub_100002850();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009D7E8();
      }
    }
  }
}

- (void)subscriberCountryCodeDidChange:(id)change
{
  changeCopy = change;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100002850();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2112;
    v12 = changeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sISO country code has changed for subscription %@; updating the list of service providers.", &v7, 0x20u);
  }

  [(VMCarrierServicesController *)self queryAndInitVoicemailServices];
}

- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v7 = sub_100002850();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316162;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = infoCopy;
    v17 = 2112;
    v18 = notificationCopy;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is suppressing %@ for %@", &v9, 0x34u);
  }
}

- (void)local_voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  queue = [(VMCarrierServicesController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100002850();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 136316162;
    *&v17[4] = "";
    *&v17[12] = 2080;
    *&v17[14] = "";
    *&v17[22] = 2112;
    v18 = objc_opt_class();
    *v19 = 2112;
    *&v19[2] = notificationCopy;
    *&v19[10] = 2112;
    *&v19[12] = infoCopy;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling voicemail info available notification delegate callback for subscription %@, voicemail info %@", v17, 0x34u);
  }

  v11 = [NSUUID alloc];
  labelID = [notificationCopy labelID];
  v13 = [v11 initWithUUIDString:labelID];

  if (v13)
  {
    labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
    v15 = [labelUUIDToService objectForKeyedSubscript:v13];

    if (v15 || (-[VMCarrierServicesController queryAndInitVoicemailServices](self, "queryAndInitVoicemailServices"), -[VMCarrierServicesController labelUUIDToService](self, "labelUUIDToService"), v16 = objc_claimAutoreleasedReturnValue(), [v16 objectForKeyedSubscript:v13], v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
    {
      [v15 handleVoicemailInfoUpdate:infoCopy, *v17, *&v17[16], v18, *v19, *&v19[16]];
    }

    else
    {
      v15 = sub_100002850();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10009D7E8();
      }
    }
  }
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(off_10010D3E0) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(VMCarrierServicesController *)self queue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)isAccountSubscribed:(id)subscribed completion:(id)completion
{
  subscribedCopy = subscribed;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006317C;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = subscribedCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = subscribedCopy;
  dispatch_async(queue, block);
}

- (void)isAccountOnline:(id)online completion:(id)completion
{
  onlineCopy = online;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000633FC;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = onlineCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = onlineCopy;
  dispatch_async(queue, block);
}

- (id)getVoicemailPhoneNumberForAccountUUID_sync:(id)d_sync
{
  v4 = [(VMCarrierServicesController *)self findContextInfoWithLabelUUID:d_sync];
  if (v4)
  {
    telephonyClient = [(VMCarrierServicesController *)self telephonyClient];
    v6 = [telephonyClient carrierBundle:v4];

    if ([v6 isServiceSupportedForSubscription])
    {
      telephonyClient2 = [(VMCarrierServicesController *)self telephonyClient];
      v8 = [telephonyClient2 voicemailPhoneNumber:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)isCallVoicemailSupportedForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063734;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)isPasscodeChangeSupportedForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063AD0;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)minimumPasscodeLengthForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063DD8;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)maximumPasscodeLengthForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064044;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setPasscode:(id)passcode forAccountUUID:(id)d completion:(id)completion
{
  passcodeCopy = passcode;
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000642D8;
  v15[3] = &unk_1000EEF60;
  v15[4] = self;
  v16 = dCopy;
  v17 = passcodeCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = passcodeCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)storageUsageForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000645B4;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)sendStateRequestForAccountUUID:(id)d
{
  dCopy = d;
  labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
  v6 = [labelUUIDToService objectForKeyedSubscript:dCopy];

  v7 = sub_100002850();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 136315906;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating STATE request for service %@, accountUUID %@", &v9, 0x2Au);
    }

    [v6 resendBeacon];
  }

  else
  {
    if (v8)
    {
      v9 = 136315650;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not retrieve service provide for account UUID %@", &v9, 0x20u);
    }
  }
}

- (id)getServiceInfoForAccountUUID:(id)d
{
  dCopy = d;
  labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
  v6 = [labelUUIDToService objectForKeyedSubscript:dCopy];

  v7 = sub_100002850();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 136315906;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sReceiving info for service %@, accountUUID %@", &v11, 0x2Au);
    }

    getParameters = [v6 getParameters];
  }

  else
  {
    if (v8)
    {
      v11 = 136315650;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not retrieve service provide for account UUID %@", &v11, 0x20u);
    }

    getParameters = 0;
  }

  return getParameters;
}

- (BOOL)setAccountProperties:(id)properties properties:(id)a4 error:(id *)error
{
  propertiesCopy = properties;
  v8 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100064BE8;
  v12[3] = &unk_1000EEFD0;
  v12[4] = self;
  v9 = propertiesCopy;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [(VMCarrierServicesController *)self performSynchronousBlock:v12];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (void)greetingForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000654B8;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)setGreeting:(id)greeting forAccountUUID:(id)d completion:(id)completion
{
  greetingCopy = greeting;
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100065758;
  v15[3] = &unk_1000EEF60;
  v15[4] = self;
  v16 = dCopy;
  v17 = greetingCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = greetingCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

- (void)isGreetingChangeSupportedForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000659D0;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)maximumGreetingDurationForAccountUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = [(VMCarrierServicesController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065D80;
  block[3] = &unk_1000EEF88;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)dumpState
{
  v2 = sub_100002850();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "";
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s---------------- State Dump ----------------", buf, 0x16u);
  }

  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  v6 = MGCopyAnswer();
  v7 = MGCopyAnswer();
  v8 = sub_100002850();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sOS Build: %@", buf, 0x20u);
  }

  v9 = sub_100002850();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sHW Model: %@", buf, 0x20u);
  }

  v10 = sub_100002850();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sProduct vers: %@", buf, 0x20u);
  }

  v11 = sub_100002850();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sProduct type: %@", buf, 0x20u);
  }

  v12 = sub_100002850();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sProduct name: %@", buf, 0x20u);
  }

  carrierAccountDataSource = [(VMCarrierServicesController *)self carrierAccountDataSource];
  accounts = [carrierAccountDataSource accounts];

  v63 = accounts;
  v64 = [accounts count];
  v15 = sub_100002850();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "";
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s----------------  Accounts  ----------------", buf, 0x16u);
  }

  v61 = v4;
  v62 = v3;

  v16 = sub_100002850();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2048;
    v71 = v64;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved %lu account(s)", buf, 0x20u);
  }

  v59 = v6;
  v60 = v5;

  if (v64)
  {
    for (i = 0; i != v64; i = (i + 1))
    {
      v18 = [v63 objectAtIndexedSubscript:i];
      v19 = sub_100002850();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [v18 UUID];
        uUIDString = [uUID UUIDString];
        *buf = 136315906;
        v67 = "";
        v68 = 2080;
        v69 = "";
        v70 = 2048;
        v71 = i;
        v72 = 2112;
        v73 = uUIDString;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s[%lu]: %@", buf, 0x2Au);
      }

      labelUUIDToService = [(VMCarrierServicesController *)self labelUUIDToService];
      uUID2 = [v18 UUID];
      v24 = [labelUUIDToService objectForKeyedSubscript:uUID2];

      v25 = sub_100002850();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v26)
        {
          getServiceObjLogPrefix = [v24 getServiceObjLogPrefix];
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2080;
          v71 = getServiceObjLogPrefix;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s  Service:        [%s]", buf, 0x20u);
        }

        v28 = sub_100002850();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          isSubscribed = [v24 isSubscribed];
          *buf = 136315650;
          v30 = @"No";
          if (isSubscribed)
          {
            v30 = @"Yes";
          }

          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s  Subscribed:     [%@]", buf, 0x20u);
        }

        v31 = sub_100002850();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          isOnline = [v24 isOnline];
          *buf = 136315650;
          v33 = @"No";
          if (isOnline)
          {
            v33 = @"Yes";
          }

          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = v33;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s  Online:         [%@]", buf, 0x20u);
        }

        v34 = sub_100002850();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 mailboxUsage]);
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%s  Mailbox usage:  [%@]", buf, 0x20u);
        }

        v36 = sub_100002850();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          uUID3 = [v18 UUID];
          v38 = [(VMCarrierServicesController *)self getVoicemailPhoneNumberForAccountUUID_sync:uUID3];
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%s  Call Voicemail: [%@]", buf, 0x20u);
        }
      }

      else
      {
        if (v26)
        {
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = @"Not Available";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s  Service:        [%@]", buf, 0x20u);
        }

        v39 = sub_100002850();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = @"No";
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s  Subscribed:     [%@]", buf, 0x20u);
        }

        v36 = sub_100002850();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          uUID4 = [v18 UUID];
          v41 = [(VMCarrierServicesController *)self getVoicemailPhoneNumberForAccountUUID_sync:uUID4];
          *buf = 136315650;
          v67 = "";
          v68 = 2080;
          v69 = "";
          v70 = 2112;
          v71 = v41;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%s  Call Voicemail: [%@]", buf, 0x20u);
        }
      }
    }
  }

  v42 = VMStoreCountOfRecordsWithFlagsGeneric(0, 12);
  v43 = VMStoreCountOfRecordsWithFlagsGeneric(8, 4);
  v44 = VMStoreCountOfRecordsWithFlagsGeneric(0, 0);
  v45 = VMStoreCountOfRecordsWithFlagsGeneric(4, 0);
  v46 = sub_100002850();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "";
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s%s---------------- Voicemails ----------------", buf, 0x16u);
  }

  v47 = sub_100002850();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2048;
    v71 = v44;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved %lu voicemail(s)", buf, 0x20u);
  }

  v48 = sub_100002850();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2048;
    v71 = v42;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%s  Inbox:   [%lu]", buf, 0x20u);
  }

  v49 = sub_100002850();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2048;
    v71 = v43;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%s  Trash:   [%lu]", buf, 0x20u);
  }

  v50 = sub_100002850();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v67 = "";
    v68 = 2080;
    v69 = "";
    v70 = 2048;
    v71 = v45;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%s  Deleted: [%lu]", buf, 0x20u);
  }

  v51 = +[NSUserDefaults standardUserDefaults];
  v52 = [v51 persistentDomainForName:@"com.apple.TelephonyUtilities"];

  v53 = [v52 objectForKey:@"CallScreeningDisabled"];
  v54 = sub_100002850();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "";
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%s", buf, 0x16u);
  }

  v55 = sub_100002850();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v53 BOOLValue];
    v57 = @"Enabled";
    *buf = 136315650;
    v67 = "";
    if (bOOLValue)
    {
      v57 = @"Disabled";
    }

    v68 = 2080;
    v69 = "";
    v70 = 2112;
    v71 = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s  LVM: [%@]", buf, 0x20u);
  }

  v58 = sub_100002850();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "";
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s%s--------------------------------------------", buf, 0x16u);
  }
}

- (VMDCarrierAccountDataSource)carrierAccountDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_carrierAccountDataSource);

  return WeakRetained;
}

@end