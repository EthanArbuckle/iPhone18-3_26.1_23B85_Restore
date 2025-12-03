@interface RTTController
+ (id)sharedController;
- (BOOL)invalidateServerCaches:(id)caches;
- (HCHeardControllerProtocol)delegate;
- (RTTController)init;
- (id)_callForUUIDWithoutRefresh:(id)refresh;
- (id)actionClient;
- (id)callForUUID:(id)d;
- (id)displayCallPrompt:(id)prompt;
- (id)handleDatabaseRequest:(id)request;
- (id)handleDictionaryRequest:(id)request;
- (id)handleIncomingNotificationSuppressionChange:(id)change;
- (id)handleMediaAction:(id)action;
- (id)handleRTTControllerIsVisible:(id)visible;
- (id)handleRTTMessageInjection:(id)injection;
- (id)handleRTTTranslationLocaleMessage:(id)message;
- (id)handleRTTVoicemailMessage:(id)message;
- (id)handleSettingsRequest:(id)request;
- (id)responseFromCallWithID:(id)d forRequest:(id)request options:(id)options;
- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error;
- (void)_handlePreferredRelayNumberUpdate;
- (void)_refreshCurrentCallList;
- (void)_refreshCurrentCallListWithExistingCalls:(id)calls;
- (void)_requestNotificationAuthorizationIfNecessary;
- (void)_updateConversationControllerWithTranscription:(id)transcription type:(int64_t)type callUUID:(id)d;
- (void)_updateConversationControllerWithTranslatedTranscription:(id)transcription translation:(id)translation type:(int64_t)type callUUID:(id)d;
- (void)callDidConnect:(id)connect;
- (void)clientRemoved:(id)removed;
- (void)dealloc;
- (void)didChangeTelephonyCallingSupport;
- (void)dismissRTTFirstUseAlert;
- (void)displayRTTDowngradeAlert;
- (void)displayRTTFirstUseAlert;
- (void)handleUpdatedCalls:(id)calls;
- (void)transcriptionDidStart:(id)start forCallUUID:(id)d;
- (void)transcriptionDidUpdate:(id)update forCallUUID:(id)d;
- (void)ttyCall:(id)call didReceiveString:(id)string forUtterance:(id)utterance;
- (void)ttyCall:(id)call didSendRemoteString:(id)string forUtterance:(id)utterance;
- (void)ttyCall:(id)call didUpdateTranslation:(id)translation forUtterance:(id)utterance;
@end

@implementation RTTController

- (RTTController)init
{
  v63.receiver = self;
  v63.super_class = RTTController;
  v2 = [(RTTController *)&v63 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(RTTController *)v2 setRttCalls:array];

    v4 = +[RTTSettings sharedInstance];
    [v4 migrateSettings];

    [(RTTController *)v2 didChangeTelephonyCallingSupport];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_DEFAULT, 0);
    v7 = dispatch_queue_create("tty_worker_queue", v6);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v7;

    v9 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v2->_workerQueue];
    preferredRelayCoalescer = v2->_preferredRelayCoalescer;
    v2->_preferredRelayCoalescer = v9;

    v11 = [objc_alloc(MEMORY[0x277CE6950]) initWithTargetSerialQueue:v2->_workerQueue];
    callUpdateCoalescer = v2->_callUpdateCoalescer;
    v2->_callUpdateCoalescer = v11;

    [(AXDispatchTimer *)v2->_callUpdateCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    objc_initWeak(&location, v2);
    v13 = +[RTTSettings sharedInstance];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __21__RTTController_init__block_invoke;
    v60[3] = &unk_279AE76E8;
    objc_copyWeak(&v61, &location);
    [v13 registerUpdateBlock:v60 forRetrieveSelector:sel_preferredRelayNumber withListener:v2];

    v14 = +[RTTSettings sharedInstance];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __21__RTTController_init__block_invoke_2;
    v57[3] = &unk_279AE7710;
    objc_copyWeak(&v59, &location);
    v15 = v2;
    v58 = v15;
    [v14 registerUpdateBlock:v57 forRetrieveSelector:sel_TTYHardwareEnabled withListener:v15];

    v16 = +[RTTSettings sharedInstance];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __21__RTTController_init__block_invoke_3;
    v54[3] = &unk_279AE7710;
    objc_copyWeak(&v56, &location);
    v17 = v15;
    v55 = v17;
    [v16 registerUpdateBlock:v54 forRetrieveSelector:sel_TTYSoftwareEnabled withListener:v17];

    v18 = +[RTTSettings sharedInstance];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __21__RTTController_init__block_invoke_4;
    v52[3] = &unk_279AE76E8;
    objc_copyWeak(&v53, &location);
    [v18 registerUpdateBlock:v52 forRetrieveSelector:sel_incomingCallsTTY withListener:v17];

    v19 = +[RTTSettings sharedInstance];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __21__RTTController_init__block_invoke_5;
    v50[3] = &unk_279AE76E8;
    objc_copyWeak(&v51, &location);
    [v19 registerUpdateBlock:v50 forRetrieveSelector:sel_ttyShouldBeRealtime withListener:v17];

    v20 = +[RTTSettings sharedInstance];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __21__RTTController_init__block_invoke_6;
    v48[3] = &unk_279AE76E8;
    objc_copyWeak(&v49, &location);
    [v20 registerUpdateBlock:v48 forRetrieveSelector:sel_answerRTTCallsAsMuted withListener:v17];

    v21 = +[RTTSettings sharedInstance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __21__RTTController_init__block_invoke_7;
    v45[3] = &unk_279AE7710;
    objc_copyWeak(&v47, &location);
    v22 = v17;
    v46 = v22;
    [v21 registerUpdateBlock:v45 forRetrieveSelector:sel_showsRTTNotifications withListener:v22];

    v23 = +[RTTSettings sharedInstance];
    [v23 ttyShouldBeRealtime];

    v24 = +[RTTSettings sharedInstance];
    [v24 preferredRelayNumber];

    v25 = +[RTTSettings sharedInstance];
    [v25 TTYHardwareEnabled];

    v26 = +[RTTSettings sharedInstance];
    [v26 TTYSoftwareEnabled];

    v27 = +[RTTSettings sharedInstance];
    [v27 incomingCallsTTY];

    v28 = +[RTTSettings sharedInstance];
    [v28 answerRTTCallsAsMuted];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    localSettingsCache = v22->_localSettingsCache;
    v22->_localSettingsCache = dictionary;

    [MEMORY[0x277D6EDE8] addDelegate:v22 queue:v2->_workerQueue];
    v31 = +[RTTTelephonyUtilities sharedCallCenter];
    callServicesClientCapabilities = [v31 callServicesClientCapabilities];
    [callServicesClientCapabilities setWantsToScreenCalls:1];

    v33 = +[RTTTelephonyUtilities sharedCallCenter];
    callServicesClientCapabilities2 = [v33 callServicesClientCapabilities];
    [callServicesClientCapabilities2 save];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v22 selector:sel_callDidConnect_ name:*MEMORY[0x277D6EFF0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v22 selector:sel_callDidConnect_ name:*MEMORY[0x277D6F100] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v22 selector:sel_callDidConnect_ name:*MEMORY[0x277D6F0F8] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v22 selector:sel_callDidConnect_ name:*MEMORY[0x277D6EFE0] object:0];

    [(RTTController *)v22 callDidConnect:0];
    v39 = AXLogRTT();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v44[0] = 0;
      _os_log_impl(&dword_261754000, v39, OS_LOG_TYPE_INFO, "Posting transport changed because RTTController was inited", v44, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXTTYPreferredTransportMethodChangedNotification", 0, 0, 1u);
    if (!_AXSIsNonUIBuild())
    {
      v41 = [[RTTTranscriptionController alloc] initWithDelegate:v22];
      transcriber = v22->_transcriber;
      v22->_transcriber = v41;
    }

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&v51);
    objc_destroyWeak(&v53);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)didChangeTelephonyCallingSupport
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
    defaultVoiceContext = [v3 defaultVoiceContext];
    v13 = 138412290;
    v14 = defaultVoiceContext;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Telephony did change %@", &v13, 0xCu);
  }

  v5 = +[RTTTelephonyUtilities sharedUtilityProvider];
  defaultVoiceContext2 = [v5 defaultVoiceContext];

  if (defaultVoiceContext2)
  {
    if (!+[RTTTelephonyUtilities softwareTTYIsSupported])
    {
      v7 = +[RTTSettings sharedInstance];
      [v7 setTTYSoftwareEnabled:0];
    }

    if (!+[RTTTelephonyUtilities hardwareTTYIsSupported])
    {
      v8 = +[RTTSettings sharedInstance];
      [v8 setTTYHardwareEnabled:0];
    }

    v9 = +[RTTSettings sharedInstance];
    tTYSoftwareEnabled = [v9 TTYSoftwareEnabled];

    if (tTYSoftwareEnabled)
    {
      v11 = +[RTTDatabaseManager sharedManager];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[RTTController sharedController];
  }

  v3 = sharedController_Controller;

  return v3;
}

uint64_t __33__RTTController_sharedController__block_invoke()
{
  sharedController_Controller = objc_alloc_init(RTTController);

  return MEMORY[0x2821F96F8]();
}

void __21__RTTController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePreferredRelayNumberUpdate];
}

uint64_t __21__RTTController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateServerCaches:kAXSTTYHardwareEnabledPreference];

  v3 = *(a1 + 32);

  return [v3 _requestNotificationAuthorizationIfNecessary];
}

uint64_t __21__RTTController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateServerCaches:kAXSTTYSoftwareEnabledPreference];

  v3 = *(a1 + 32);

  return [v3 _requestNotificationAuthorizationIfNecessary];
}

void __21__RTTController_init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateServerCaches:kAXSTTYIncomingCallsTTYPreference];
}

void __21__RTTController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateServerCaches:kAXSTTYShouldBeRealtimePreference];
}

void __21__RTTController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateServerCaches:kAXSRTTAnswerAllRTTCallsAsMutedPreference];
}

uint64_t __21__RTTController_init__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateServerCaches:kAXSRTTShowsNotificationsPreference];

  v3 = *(a1 + 32);

  return [v3 _requestNotificationAuthorizationIfNecessary];
}

- (void)_requestNotificationAuthorizationIfNecessary
{
  v3 = +[RTTSettings sharedInstance];
  if ([v3 TTYHardwareEnabled])
  {
  }

  else
  {
    v4 = +[RTTSettings sharedInstance];
    tTYSoftwareEnabled = [v4 TTYSoftwareEnabled];

    if (!tTYSoftwareEnabled)
    {
      return;
    }
  }

  [(RTTController *)self _requestNotificationAuthorization];
}

void __50__RTTController__requestNotificationAuthorization__block_invoke()
{
  v0 = AXLogRTT();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_261754000, v0, OS_LOG_TYPE_INFO, "Requesting notification authorization because hw/sw enabled", v1, 2u);
  }

  RTTRequestNotificationAuthorization();
}

- (void)_handlePreferredRelayNumberUpdate
{
  [(AXDispatchTimer *)self->_preferredRelayCoalescer cancel];
  preferredRelayCoalescer = self->_preferredRelayCoalescer;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RTTController__handlePreferredRelayNumberUpdate__block_invoke;
  v4[3] = &unk_279AE7738;
  v4[4] = self;
  [(AXDispatchTimer *)preferredRelayCoalescer afterDelay:v4 processBlock:0.5];
}

void __50__RTTController__handlePreferredRelayNumberUpdate__block_invoke(uint64_t a1)
{
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Settings preferred number changed", buf, 2u);
  }

  v3 = +[RTTTelephonyUtilities sharedUtilityProvider];
  v4 = [v3 reloadRelayPhoneNumbers];

  if (v4)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Relay number actually changed, invalidating server cache", v6, 2u);
    }

    [*(a1 + 32) invalidateServerCaches:kAXSTTYPreferredRelayNumberPreference];
  }
}

- (BOOL)invalidateServerCaches:(id)caches
{
  v34 = *MEMORY[0x277D85DE8];
  cachesCopy = caches;
  v5 = +[RTTSettings sharedInstance];
  v6 = [v5 valueForPreferenceKey:cachesCopy];

  v7 = [(NSMutableDictionary *)self->_localSettingsCache objectForKeyedSubscript:cachesCopy];
  v8 = [v6 isEqual:v7];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v27 = cachesCopy;
    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Invalidate server caches:%@ -> new: %@, _localeCache: %@ [same: %d]", buf, 0x26u);
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    [(NSMutableDictionary *)self->_localSettingsCache setObject:v6 forKeyedSubscript:cachesCopy];
    delegate = [(RTTController *)self delegate];
    v12 = MEMORY[0x277D12B68];
    v13 = MEMORY[0x277D12B60];
    v23 = cachesCopy;
    v24 = @"axtty_server_settings_upate_action";
    v22 = @"preferenceKey";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [v13 messagePayloadFromDictionary:v15 andIdentifier:0x40000000000];
    v17 = [v12 messageWithPayload:v16];
    [delegate sendUpdateMessage:v17 forIdentifier:0x40000000000];

    serverInvalidateCallback = [(RTTController *)self serverInvalidateCallback];

    if (serverInvalidateCallback)
    {
      serverInvalidateCallback2 = [(RTTController *)self serverInvalidateCallback];
      (serverInvalidateCallback2)[2](serverInvalidateCallback2, 1, cachesCopy);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10 ^ 1;
}

- (void)callDidConnect:(id)connect
{
  connectCopy = connect;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__RTTController_callDidConnect___block_invoke;
  v11[3] = &unk_279AE7738;
  v5 = connectCopy;
  v12 = v5;
  [RTTTelephonyUtilities performCallCenterTask:v11];
  callUpdateCoalescer = self->_callUpdateCoalescer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__RTTController_callDidConnect___block_invoke_57;
  v8[3] = &unk_279AE7760;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  [(AXDispatchTimer *)callUpdateCoalescer afterDelay:v8 processBlock:0.25];
}

void __32__RTTController_callDidConnect___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Call connected notification: %{private}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __32__RTTController_callDidConnect___block_invoke_57(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) object];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = [v5 count];
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Processing %i calls from connect notification", v8, 8u);
  }

  [*(a1 + 40) _refreshCurrentCallListWithExistingCalls:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshCurrentCallList
{
  callUpdateCoalescer = self->_callUpdateCoalescer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__RTTController__refreshCurrentCallList__block_invoke;
  v3[3] = &unk_279AE7738;
  v3[4] = self;
  [(AXDispatchTimer *)callUpdateCoalescer afterDelay:v3 processBlock:0.0];
}

- (void)_refreshCurrentCallListWithExistingCalls:(id)calls
{
  callsCopy = calls;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__RTTController__refreshCurrentCallListWithExistingCalls___block_invoke;
  v6[3] = &unk_279AE7760;
  v7 = callsCopy;
  selfCopy = self;
  v5 = callsCopy;
  [RTTTelephonyUtilities performCallCenterTask:v6];
}

void __58__RTTController__refreshCurrentCallListWithExistingCalls___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedCallCenter];
  v3 = [v2 currentCalls];

  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Refresh call list: %@", &v11, 0xCu);
  }

  if (![v3 count])
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "No current calls for some reason, using what notification told us: %@", &v11, 0xCu);
    }

    v7 = *(a1 + 32);
    v3 = v7;
  }

  [*(a1 + 40) handleUpdatedCalls:v3];
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 40) rttCalls];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "RTT calls after update: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedCalls:(id)calls
{
  v13 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [callsCopy count];
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Found calls %lu", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__RTTController_handleUpdatedCalls___block_invoke;
  v10[3] = &unk_279AE7788;
  v10[4] = self;
  [callsCopy enumerateObjectsUsingBlock:v10];
  rttCalls = [(RTTController *)self rttCalls];
  v7 = [rttCalls indexesOfObjectsPassingTest:&__block_literal_global_66];

  rttCalls2 = [(RTTController *)self rttCalls];
  [rttCalls2 removeObjectsAtIndexes:v7];

  v9 = *MEMORY[0x277D85DE8];
}

void __36__RTTController_handleUpdatedCalls___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 status] == 4 || objc_msgSend(v3, "status") == 1) && objc_msgSend(v3, "ttyType") && (+[RTTTelephonyUtilities sharedUtilityProvider](RTTTelephonyUtilities, "sharedUtilityProvider"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "currentPreferredTransportMethod"), v4, v5 != 1))
  {
    v15 = *(a1 + 32);
    v16 = [v3 callUUID];
    v13 = [v15 _callForUUIDWithoutRefresh:v16];

    if (v13)
    {
      if (![v13 isLocallyHosted] || (v17 = objc_msgSend(v3, "isEndpointOnCurrentDevice"), v17 == objc_msgSend(v3, "isHostedOnCurrentDevice")))
      {
        v23 = AXLogRTT();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *v40 = 138412546;
          *&v40[4] = v13;
          *&v40[12] = 2112;
          v41 = v3;
          _os_log_impl(&dword_261754000, v23, OS_LOG_TYPE_INFO, "Stuttering call %@ - %@", v40, 0x16u);
        }

        [v13 stop];
      }

      else
      {
        [*(a1 + 32) ttyCall:v13 setVisible:0 serviceUpdate:RTTServiceUpdateTypeRemoteInterrupt];
        [v13 stop];
        v18 = [*(a1 + 32) rttCalls];
        [v18 removeObject:v13];

        v19 = [[RTTRemoteCall alloc] initWithCall:v3];
        [(RTTCall *)v19 setDelegate:*(a1 + 32)];
        v20 = [*(a1 + 32) rttCalls];
        [v20 addObject:v19];

        v21 = AXLogRTT();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [*(a1 + 32) rttCalls];
          *v40 = 138412290;
          *&v40[4] = v22;
          _os_log_impl(&dword_261754000, v21, OS_LOG_TYPE_INFO, "Updated software TTY Calls %@", v40, 0xCu);
        }

        v13 = v19;
      }
    }

    else
    {
      v28 = [v3 isEndpointOnCurrentDevice];
      v29 = [v3 isHostedOnCurrentDevice];
      v30 = AXLogRTT();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v28 == v29)
      {
        if (v31)
        {
          *v40 = 0;
          _os_log_impl(&dword_261754000, v30, OS_LOG_TYPE_INFO, "Creating TTY call as local", v40, 2u);
        }

        v32 = off_279AE7328;
      }

      else
      {
        if (v31)
        {
          *v40 = 0;
          _os_log_impl(&dword_261754000, v30, OS_LOG_TYPE_INFO, "Creating TTY call as remote", v40, 2u);
        }

        v32 = off_279AE7358;
      }

      v13 = [objc_alloc(*v32) initWithCall:v3];
      [v13 setDelegate:*(a1 + 32)];
      v33 = [*(a1 + 32) rttCalls];
      [v33 addObject:v13];

      v34 = AXLogRTT();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [*(a1 + 32) rttCalls];
        *v40 = 138412290;
        *&v40[4] = v35;
        _os_log_impl(&dword_261754000, v34, OS_LOG_TYPE_INFO, "Software TTY Calls %@", v40, 0xCu);
      }
    }

    [v13 start];
    v36 = [*(a1 + 32) transcriber];
    v37 = [v3 callUUID];
    [v36 startTranscribingForCallUUID:v37];

    v25 = +[RTTSettings sharedInstance];
    if (([v25 TTYSoftwareEnabled] & 1) == 0 && objc_msgSend(v3, "supportsTTYWithVoice") && objc_msgSend(v3, "isIncoming"))
    {
      v38 = +[RTTSettings sharedInstance];
      v39 = [v38 hasReceivedRTTCall];

      if (v39)
      {
        goto LABEL_26;
      }

      [*(a1 + 32) displayRTTFirstUseAlert];
      v25 = +[RTTSettings sharedInstance];
      [v25 setHasReceivedRTTCall:1];
    }
  }

  else
  {
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 status] == 1;
      v8 = [v3 ttyType] != 0;
      v9 = +[RTTTelephonyUtilities sharedUtilityProvider];
      *v40 = 67109890;
      *&v40[4] = v7;
      *&v40[8] = 1024;
      *&v40[10] = v8;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = [v9 currentPreferredTransportMethod] != 1;
      HIWORD(v41) = 2112;
      v42 = v3;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Skipping call: active: %d, tty: %d, no hw: %d - %@", v40, 0x1Eu);
    }

    v10 = *(a1 + 32);
    v11 = [v3 callUUID];
    v12 = [v11 copy];
    v13 = [v10 _callForUUIDWithoutRefresh:v12];

    if (v13 && [v3 status] == 1 && !objc_msgSend(v3, "ttyType"))
    {
      v24 = AXLogRTT();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v40 = 138412290;
        *&v40[4] = v3;
        _os_log_impl(&dword_261754000, v24, OS_LOG_TYPE_INFO, "Call downgraded %@", v40, 0xCu);
      }

      [v13 stop];
      [v13 toggleSystemOutputMute:0];
      [*(a1 + 32) displayRTTDowngradeAlert];
    }

    else if ([v3 status] == 6)
    {
      v14 = [v3 callUUID];
      RTTRemoveUserNotifications(v14);

      [v13 stop];
    }

    v25 = [*(a1 + 32) transcriber];
    v26 = [v3 callUUID];
    [v25 stopTranscribingForCallUUID:v26];
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
}

BOOL __36__RTTController_handleUpdatedCalls___block_invoke_63(uint64_t a1, void *a2)
{
  v2 = [a2 call];
  v3 = [v2 status] == 6;

  return v3;
}

- (id)_callForUUIDWithoutRefresh:(id)refresh
{
  v18 = *MEMORY[0x277D85DE8];
  refreshCopy = refresh;
  rttCalls = [(RTTController *)self rttCalls];
  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = refreshCopy;
    *&buf[12] = 2112;
    *&buf[14] = rttCalls;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Finding callID %@ from rtt calls %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__RTTController__callForUUIDWithoutRefresh___block_invoke;
  v11[3] = &unk_279AE77D0;
  v7 = refreshCopy;
  v12 = v7;
  v13 = buf;
  [rttCalls enumerateObjectsUsingBlock:v11];
  v8 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __44__RTTController__callForUUIDWithoutRefresh___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 call];
  v8 = [v7 callUUID];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)callForUUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(RTTController *)self _callForUUIDWithoutRefresh:dCopy];
  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Asking for RTT call: %@ and found: %@", &v10, 0x16u);
  }

  if (!v5)
  {
    [(RTTController *)self _refreshCurrentCallList];
    v5 = [(RTTController *)self _callForUUIDWithoutRefresh:dCopy];
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = dCopy;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Refreshed call list and asking again for RTT call: %@ and found: %@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)dismissRTTFirstUseAlert
{
  actionClient = [(RTTController *)self actionClient];
  backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
  [actionClient sendAsynchronousMessage:&unk_2873FFC58 withIdentifier:1 targetAccessQueue:backgroundAccessQueue completion:&__block_literal_global_75];
}

- (void)displayRTTFirstUseAlert
{
  v12[5] = *MEMORY[0x277D85DE8];
  actionClient = [(RTTController *)self actionClient];
  v11[0] = @"shouldShow";
  v11[1] = @"style";
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = &unk_2873FFD70;
  v11[2] = @"options";
  v3 = ttyLocString(@"RTTOk");
  v10 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[2] = v4;
  v11[3] = @"title";
  v5 = ttyLocString(@"RTTFirstUseAlertTitle");
  v12[3] = v5;
  v11[4] = @"message";
  v6 = ttyLocString(@"RTTFirstUseAlertMessage");
  v12[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
  [actionClient sendAsynchronousMessage:v7 withIdentifier:1 targetAccessQueue:backgroundAccessQueue completion:&__block_literal_global_99];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)displayRTTDowngradeAlert
{
  v12[5] = *MEMORY[0x277D85DE8];
  actionClient = [(RTTController *)self actionClient];
  v11[0] = @"shouldShow";
  v11[1] = @"style";
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = &unk_2873FFD70;
  v11[2] = @"options";
  v3 = ttyLocString(@"RTTOk");
  v10 = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v12[2] = v4;
  v11[3] = @"title";
  v5 = ttyLocString(@"RTTDowngradeAlertTitle");
  v12[3] = v5;
  v11[4] = @"message";
  v6 = ttyLocString(@"RTTDowngradeAlertMessage");
  v12[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
  [actionClient sendAsynchronousMessage:v7 withIdentifier:1 targetAccessQueue:backgroundAccessQueue completion:&__block_literal_global_107];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(RTTController *)self setActionCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = RTTController;
  [(RTTController *)&v3 dealloc];
}

- (void)clientRemoved:(id)removed
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rttCalls = [(RTTController *)self rttCalls];
  v4 = [rttCalls countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(rttCalls);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = AXLogRTT();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Client removed, marked view controller visible no: %@", buf, 0xCu);
        }

        if ([v8 isViewControllerVisible])
        {
          [v8 setIsViewControllerVisible:0];
        }
      }

      v5 = [rttCalls countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)actionClient
{
  actionUIClient = self->_actionUIClient;
  if (!actionUIClient)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getAXUIClientClass_softClass;
    v15 = getAXUIClientClass_softClass;
    if (!getAXUIClientClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getAXUIClientClass_block_invoke;
      v11[3] = &unk_279AE78F0;
      v11[4] = &v12;
      __getAXUIClientClass_block_invoke(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = [v4 alloc];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ActionSheetUIClient-%d", getpid()];
    v8 = [v6 initWithIdentifier:v7 serviceBundleName:@"AXActionSheetUIServer"];
    v9 = self->_actionUIClient;
    self->_actionUIClient = v8;

    [(AXUIClient *)self->_actionUIClient setDelegate:self];
    actionUIClient = self->_actionUIClient;
  }

  return actionUIClient;
}

- (id)userInterfaceClient:(id)client processMessageFromServer:(id)server withIdentifier:(unint64_t)identifier error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  serverCopy = server;
  v11 = serverCopy;
  if (identifier == 2)
  {
    v20 = [serverCopy valueForKey:@"didTap"];
    [v20 BOOLValue];
  }

  else if (identifier == 1)
  {
    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = clientCopy;
      _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Got action sheet reply: %@ from: %@", &v23, 0x16u);
    }

    v13 = [v11 valueForKey:@"result"];
    if (v13)
    {
      actionCompletionBlock = [(RTTController *)self actionCompletionBlock];

      if (actionCompletionBlock)
      {
        unsignedIntegerValue = [v13 unsignedIntegerValue];
        if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 4;
        }

        else
        {
          v16 = unsignedIntegerValue;
        }

        v17 = AXLogRTT();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = _Block_copy(self->_actionCompletionBlock);
          v23 = 138412546;
          v24 = v18;
          v25 = 1024;
          LODWORD(v26) = v16;
          _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Sending to action completion: %@ for calltype: %d", &v23, 0x12u);
        }

        actionCompletionBlock2 = [(RTTController *)self actionCompletionBlock];
        actionCompletionBlock2[2](actionCompletionBlock2, v16);

        [(RTTController *)self setActionCompletionBlock:0];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)handleRTTControllerIsVisible:(id)visible
{
  v18 = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  v4 = objc_autoreleasePoolPush();
  payload = [visibleCopy payload];
  v6 = [payload objectForKey:@"axtty_callID"];

  payload2 = [visibleCopy payload];
  v8 = [payload2 objectForKey:@"axtty_is_viewcontrollervisible_key"];
  bOOLValue = [v8 BOOLValue];

  v10 = +[RTTController sharedController];
  v11 = [v10 callForUUID:v6];

  [v11 setIsViewControllerVisible:bOOLValue];
  v12 = AXLogRTT();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109378;
    v15[1] = bOOLValue;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "Marking RTT view controller visible[%d] for call: %@", v15, 0x12u);
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)handleMediaAction:(id)action
{
  actionCopy = action;
  v4 = objc_autoreleasePoolPush();
  payload = [actionCopy payload];
  [payload enumerateKeysAndObjectsUsingBlock:&__block_literal_global_125];

  objc_autoreleasePoolPop(v4);
  v6 = [MEMORY[0x277D12B60] messagePayloadFromDictionary:MEMORY[0x277CBEC10] andIdentifier:0x80000000000];
  v7 = [actionCopy replyMessageWithPayload:v6];

  return v7;
}

void __35__RTTController_handleMediaAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 isEqualToString:@"axtty_media_action"];

  if (v7)
  {
    v8 = [v6 objectForKey:@"axtty_callID"];
    v9 = +[RTTController sharedController];
    v10 = [v9 callForUUID:v8];

    v11 = [v6 objectForKey:@"axtty_value"];
    v12 = [v11 BOOLValue];

    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15[0] = 67109378;
      v15[1] = v12;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Got request to toggle mute: %d %@", v15, 0x12u);
    }

    [v10 toggleSystemOutputMute:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)handleDatabaseRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = requestCopy;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Handling database request: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v6 = objc_autoreleasePoolPush();
  payload = [requestCopy payload];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__RTTController_handleDatabaseRequest___block_invoke;
  v13[3] = &unk_279AE7858;
  v13[4] = self;
  p_buf = &buf;
  v8 = requestCopy;
  v14 = v8;
  [payload enumerateKeysAndObjectsUsingBlock:v13];

  objc_autoreleasePoolPop(v6);
  v9 = [MEMORY[0x277D12B60] messagePayloadFromDictionary:*(*(&buf + 1) + 40) andIdentifier:0x800000000];
  v10 = [v8 replyMessageWithPayload:v9];

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __39__RTTController_handleDatabaseRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v137 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v103 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([v5 isEqualToString:@"axtty_read_action"])
  {
    v8 = v7;
    v9 = [v7 objectForKey:@"axtty_callID"];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v9];
    v11 = [*(a1 + 32) callForUUID:v9];
    v12 = [v11 conversation];
    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v134 = v12;
      v135 = 2112;
      v136 = v11;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Found conversation %@ from call: %@", buf, 0x16u);
    }

    if (v12)
    {
      goto LABEL_11;
    }

    v14 = +[RTTDatabaseManager sharedManager];
    v12 = [v14 conversationForCallUID:v9];

    v15 = AXLogRTT();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v134 = v12;
      _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Using saved conversation: %@", buf, 0xCu);
    }

    if (v12)
    {
LABEL_11:
      v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v16 encodeObject:v12 forKey:*MEMORY[0x277CCA308]];
      [v16 finishEncoding];
      v17 = [v16 encodedData];
      v131 = v10;
      v129 = @"axtty_conversation";
      v130 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      v132 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    else
    {
      v127 = v10;
      v125 = @"axtty_conversation";
      v12 = [MEMORY[0x277CBEB68] null];
      v126 = v12;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v128 = v17;
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v60 = *(*(a1 + 48) + 8);
      v16 = *(v60 + 40);
      *(v60 + 40) = v59;
    }

    goto LABEL_22;
  }

  if ([v5 isEqualToString:@"axtty_write_action"])
  {
    v22 = objc_alloc(MEMORY[0x277CCAAC8]);
    v101 = v7;
    v23 = [v7 objectForKey:@"axtty_conversation"];
    v104 = 0;
    v24 = [v22 initForReadingFromData:v23 error:&v104];
    v25 = v104;

    if (v25)
    {
      v26 = AXLogRTT();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __39__RTTController_handleDatabaseRequest___block_invoke_cold_3();
      }
    }

    else
    {
      v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v46 = [v24 decodeObjectOfClasses:v45 forKey:*MEMORY[0x277CCA308]];
      v47 = AXLogRTT();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v134 = v46;
        _os_log_impl(&dword_261754000, v47, OS_LOG_TYPE_INFO, "Server save conversation: %@", buf, 0xCu);
      }

      if (v46)
      {
        v48 = MEMORY[0x277CCACA8];
        v49 = [v46 callIdentifier];
        v50 = [v48 stringWithFormat:@"%@_%@", v5, v49];

        v51 = +[RTTDatabaseManager sharedManager];
        v52 = [v51 saveConversation:v46];

        v123 = v50;
        v121 = @"axtty_result";
        v53 = [MEMORY[0x277CCABB0] numberWithBool:v52];
        v122 = v53;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v124 = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v56 = *(*(a1 + 48) + 8);
        v57 = *(v56 + 40);
        *(v56 + 40) = v55;
      }
    }

    v7 = v101;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"axtty_delete_action"])
  {
    v8 = v7;
    v27 = [v7 objectForKey:@"axtty_callID"];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v27];
    v29 = +[RTTDatabaseManager sharedManager];
    v30 = [v29 deleteConversationWithCallUID:v27];

    v119 = v28;
    v117 = @"axtty_result";
    v31 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    v118 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    v120 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v34 = *(*(a1 + 48) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

LABEL_22:
    v7 = v8;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"axtty_contact_search_action"])
  {
    v8 = v7;
    v36 = [v7 objectForKey:@"axtty_contactID"];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v36];
    v38 = +[RTTDatabaseManager sharedManager];
    v39 = [v38 contactIDIsTTYContact:v36];

    v115 = v37;
    v113 = @"axtty_result";
    v40 = [MEMORY[0x277CCABB0] numberWithBool:v39];
    v114 = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    v116 = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v43 = *(*(a1 + 48) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    goto LABEL_22;
  }

  if ([v5 isEqualToString:@"axtty_contact_path_search_action"])
  {
    v61 = v7;
    v62 = [v7 objectForKey:@"axtty_value"];
    v63 = [v7 objectForKey:@"axtty_contactID"];
    v64 = [v62 indexOfObjectPassingTest:&__block_literal_global_141];
    v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v5, v63];
    v111 = v65;
    v109 = @"axtty_result";
    v66 = [MEMORY[0x277CCABB0] numberWithInt:v64 != 0x7FFFFFFFFFFFFFFFLL];
    v110 = v66;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v112 = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    v69 = *(*(a1 + 48) + 8);
    v70 = *(v69 + 40);
    *(v69 + 40) = v68;

    v7 = v61;
    goto LABEL_29;
  }

  if (![v5 isEqualToString:@"axtty_conversation_updates"])
  {
    if ([v5 isEqualToString:@"axtty_remote_conversation_updates"])
    {
      v8 = v7;
      v84 = [*(a1 + 40) client];
      v85 = v84;
      v86 = 0x10000000000;
    }

    else
    {
      if (![v5 isEqualToString:@"axtty_service_message_updates"])
      {
        if (![v5 isEqualToString:@"axtty_reset_cloud_support_store_action"])
        {
          goto LABEL_29;
        }

        v8 = v7;
        v85 = +[RTTTelephonyUtilities sharedUtilityProvider];
        [v85 resetCloudSupportStore];
        goto LABEL_53;
      }

      v8 = v7;
      v84 = [*(a1 + 40) client];
      v85 = v84;
      v86 = 0x20000000000;
    }

    [v84 setWantsUpdates:1 forIdentifier:v86];
LABEL_53:

    goto LABEL_22;
  }

  v71 = v7;
  v72 = [v7 objectForKey:@"axtty_callID"];
  v73 = AXLogRTT();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v134 = v7;
    _os_log_impl(&dword_261754000, v73, OS_LOG_TYPE_INFO, "Conversation update string: %@", buf, 0xCu);
  }

  v74 = [v7 objectForKey:@"axtty_value"];
  v75 = v74 == 0;

  if (v75)
  {
    v76 = [*(a1 + 40) client];
    [v76 setWantsUpdates:1 forIdentifier:0x800000000];
  }

  else
  {
    v76 = [v71 objectForKey:@"axtty_value"];
    v102 = [*(a1 + 32) callForUUID:v72];
    v77 = AXLogRTT();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v134 = v102;
      v135 = 2112;
      v136 = v72;
      _os_log_impl(&dword_261754000, v77, OS_LOG_TYPE_INFO, "Using call: %@[%@]", buf, 0x16u);
    }

    v78 = [v71 objectForKey:@"axtty_sender_type"];
    v79 = [v78 intValue];

    if (!v79)
    {
      v80 = AXLogRTT();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        __39__RTTController_handleDatabaseRequest___block_invoke_cold_1();
      }
    }

    v81 = [v71 objectForKey:@"axtty_message_type"];
    v82 = [v81 intValue];

    if (v82 == 1)
    {
      [v102 sendString:v76];
      if (v79 == 2)
      {
        v87 = [v102 conversation];
        v88 = [v87 utterances];
        v100 = [v88 lastObject];

        v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", v72];
        v99 = [*(a1 + 32) delegate];
        v98 = MEMORY[0x277D12B68];
        v90 = MEMORY[0x277D12B60];
        v107 = v89;
        v105[0] = @"axtty_result";
        v91 = [v100 text];
        v92 = v91;
        v93 = &stru_2873FC590;
        if (v91)
        {
          v93 = v91;
        }

        v106[0] = v93;
        v106[1] = v76;
        v105[1] = @"axtty_value";
        v105[2] = @"axtty_message_type";
        v106[2] = &unk_2873FFD88;
        v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
        v108 = v94;
        v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v96 = [v90 messagePayloadFromDictionary:v95 andIdentifier:0x800000000];
        v97 = [v98 messageWithPayload:v96];
        [v99 sendUpdateMessage:v97 forIdentifier:0x800000000];
      }
    }

    else if (v82)
    {
      if ((v82 & 0xFFFFFFFE) == 2 && v79 == 1)
      {
        [v102 saveTranscribedTextForConversation:v76 isNew:v82 == 2];
      }
    }

    else
    {
      v83 = AXLogRTT();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        __39__RTTController_handleDatabaseRequest___block_invoke_cold_2();
      }
    }
  }

  v7 = v71;
LABEL_29:

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __39__RTTController_handleDatabaseRequest___block_invoke_138(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[RTTDatabaseManager sharedManager];
  v4 = [v3 contactPathWasUsedForTTY:v2];

  return v4;
}

- (id)handleDictionaryRequest:(id)request
{
  payload = [request payload];
  v4 = [payload objectForKey:@"shouldBeAvailable"];
  bOOLValue = [v4 BOOLValue];

  v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
  [v6 setTTYDictionaryAvailability:bOOLValue];

  return 0;
}

- (id)handleSettingsRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  payload = [requestCopy payload];
  v5 = [payload objectForKey:@"axtty_uuid"];

  payload2 = [requestCopy payload];
  v7 = [payload2 objectForKey:@"axtty_settings_key"];

  v8 = +[RTTSettings sharedInstance];
  [v8 selectorForPreferenceKey:v7];

  v9 = +[RTTSettings sharedInstance];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0 || (+[RTTSettings sharedInstance](RTTSettings, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), [v11 valueForPreferenceKey:v7], null = objc_claimAutoreleasedReturnValue(), v11, !null))
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  client = [requestCopy client];
  [client setWantsUpdates:1 forIdentifier:0x40000000000];

  v14 = AXLogRTT();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = null;
    _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "Returning remote request for setting: %@ > %@", buf, 0x16u);
  }

  v15 = MEMORY[0x277D12B60];
  v23 = null;
  v24 = v5;
  v22 = @"axtty_result";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v18 = [v15 messagePayloadFromDictionary:v17 andIdentifier:0x4000000000];
  v19 = [requestCopy replyMessageWithPayload:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)displayCallPrompt:(id)prompt
{
  v52 = *MEMORY[0x277D85DE8];
  promptCopy = prompt;
  payload = [promptCopy payload];
  v6 = [payload objectForKey:@"shouldShow"];
  bOOLValue = [v6 BOOLValue];

  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = promptCopy;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Asking to show call prompt: %@", buf, 0xCu);
  }

  if (bOOLValue)
  {
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __35__RTTController_displayCallPrompt___block_invoke;
    v44 = &unk_279AE78A0;
    v9 = promptCopy;
    v45 = v9;
    [(RTTController *)self setActionCompletionBlock:&v41];
    payload2 = [v9 payload];
    v11 = [payload2 objectForKey:@"title"];

    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &stru_2873FC590;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = ttyLocString(@"TTYCallTypeVoiceWithDestination");
    v15 = [v13 stringWithFormat:v14, v12, v41, v42, v43, v44];

    actionClient = [(RTTController *)self actionClient];
    v17 = +[RTTTelephonyUtilities currentSupportedTextingType];
    v18 = @"TTYCallTypeTTY";
    v19 = @"TTYCallTypeRelay";
    if (v17 == 1)
    {
      v19 = @"TTYCallTypeRelayRTT";
      v18 = @"TTYCallTypeRTT";
    }

    if (v17 == 3)
    {
      v20 = @"TTYCallTypeRelayRTT_TTY";
    }

    else
    {
      v20 = v19;
    }

    v49[0] = v15;
    if (v17 == 3)
    {
      v21 = @"TTYCallTypeRTT_TTY";
    }

    else
    {
      v21 = v18;
    }

    v22 = ttyLocString(v21);
    v49[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];

    v48[0] = &unk_2873FFDA0;
    v24 = MEMORY[0x277CCABB0];
    if (+[RTTTelephonyUtilities shouldUseRTT])
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = [v24 numberWithUnsignedInteger:v25];
    v48[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];

    if (+[RTTTelephonyUtilities relayIsSupported])
    {
      v28 = +[RTTTelephonyUtilities sharedUtilityProvider];
      currentPreferredTransportMethod = [v28 currentPreferredTransportMethod];

      if (currentPreferredTransportMethod == 2)
      {
        v30 = ttyLocString(v20);
        v31 = [v23 arrayByAddingObject:v30];

        v32 = [v27 arrayByAddingObject:&unk_2873FFDB8];

        v23 = v31;
        v27 = v32;
      }
    }

    if (v23)
    {
      v46[0] = @"shouldShow";
      v46[1] = @"options";
      v47[0] = MEMORY[0x277CBEC38];
      v47[1] = v23;
      v47[2] = v27;
      v46[2] = @"optionIndexes";
      v46[3] = @"cancelMessage";
      v33 = ttyLocString(@"TTYCallTypeCancel");
      v47[3] = v33;
      v46[4] = @"style";
      v34 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D12B60], "deviceIsPad")}];
      v47[4] = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:5];

      backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
      [actionClient sendAsynchronousMessage:v35 withIdentifier:1 targetAccessQueue:backgroundAccessQueue completion:&__block_literal_global_193];
    }

    actionClient2 = v45;
  }

  else
  {
    actionClient2 = [(RTTController *)self actionClient];
    backgroundAccessQueue2 = [MEMORY[0x277CE6948] backgroundAccessQueue];
    [actionClient2 sendAsynchronousMessage:&unk_2873FFC80 withIdentifier:1 targetAccessQueue:backgroundAccessQueue2 completion:&__block_literal_global_199];
  }

  v39 = *MEMORY[0x277D85DE8];
  return 0;
}

void __35__RTTController_displayCallPrompt___block_invoke(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D12B60];
  v16 = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v17[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [v3 messagePayloadFromDictionary:v5 andIdentifier:0x1000000000];
  v7 = [v2 replyMessageWithPayload:v6];

  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 client];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Received reply %@, forwarding back to %@", &v12, 0x16u);
  }

  v10 = [v7 client];
  [v10 sendMessage:v7 errorBlock:&__block_literal_global_154];

  v11 = *MEMORY[0x277D85DE8];
}

void __35__RTTController_displayCallPrompt___block_invoke_151(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__RTTController_displayCallPrompt___block_invoke_151_cold_1();
  }
}

- (id)handleIncomingNotificationSuppressionChange:(id)change
{
  payload = [change payload];
  v5 = [payload objectForKey:@"shouldSuppress"];
  bOOLValue = [v5 BOOLValue];

  [(RTTController *)self setShouldSuppressIncomingNotification:bOOLValue];
  if (bOOLValue)
  {
    actionClient = [(RTTController *)self actionClient];
    backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
    [actionClient sendAsynchronousMessage:&unk_2873FFCA8 withIdentifier:2 targetAccessQueue:backgroundAccessQueue completion:&__block_literal_global_208];
  }

  return 0;
}

- (id)handleRTTVoicemailMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([MEMORY[0x277D12B60] currentProcessIsHeard])
  {
    payload = [messageCopy payload];
    v6 = [payload objectForKey:@"axtty_callID"];

    payload2 = [messageCopy payload];
    v8 = [payload2 objectForKey:@"axtty_voicemail_message_locale"];

    payload3 = [messageCopy payload];
    v10 = [payload3 objectForKey:@"axtty_voicemail_message_url"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0;
      v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v31];
      v12 = v31;
      if (v12)
      {
        v13 = v12;
        v14 = AXLogRTT();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [RTTController handleRTTVoicemailMessage:];
        }

LABEL_13:
        v15 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v15 = [v11 URL];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = AXLogRTT();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [RTTController handleRTTVoicemailMessage:];
        }

        goto LABEL_13;
      }

      v15 = v10;
    }

    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_261754000, v16, OS_LOG_TYPE_INFO, "Received voicemail message url for callID %@", &buf, 0xCu);
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v17 = getSFSpeechRecognizerClass_softClass;
    v35 = getSFSpeechRecognizerClass_softClass;
    if (!getSFSpeechRecognizerClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v37 = __getSFSpeechRecognizerClass_block_invoke;
      v38 = &unk_279AE78F0;
      v39 = &v32;
      __getSFSpeechRecognizerClass_block_invoke(&buf);
      v17 = v33[3];
    }

    v18 = v17;
    _Block_object_dispose(&v32, 8);
    v19 = [v17 alloc];
    v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
    v13 = [v19 initWithLocale:v20];

    v21 = [(RTTController *)self callForUUID:v6];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v22 = getSFSpeechURLRecognitionRequestClass_softClass;
    v35 = getSFSpeechURLRecognitionRequestClass_softClass;
    if (!getSFSpeechURLRecognitionRequestClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v37 = __getSFSpeechURLRecognitionRequestClass_block_invoke;
      v38 = &unk_279AE78F0;
      v39 = &v32;
      __getSFSpeechURLRecognitionRequestClass_block_invoke(&buf);
      v22 = v33[3];
    }

    v23 = v22;
    _Block_object_dispose(&v32, 8);
    v24 = [[v22 alloc] initWithURL:v15];
    [v24 setShouldReportPartialResults:0];
    [v24 setAddsPunctuation:1];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__RTTController_handleRTTVoicemailMessage___block_invoke;
    v29[3] = &unk_279AE78C8;
    v30 = v21;
    v25 = v21;
    v26 = [v13 recognitionTaskWithRequest:v24 resultHandler:v29];

    goto LABEL_22;
  }

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Can only handle voicemail transcriptions from heard", &buf, 2u);
  }

LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

void __43__RTTController_handleRTTVoicemailMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Transcription failed with error %@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  if ([v5 isFinal])
  {
    v8 = [v5 bestTranscription];
    v9 = [v8 formattedString];

    v10 = [*(a1 + 32) formatMessage:v9 withType:4 isMe:1];
    [*(a1 + 32) sendToTTYDeviceWithString:v10];
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Transcribed voicemail message text: %@", &v13, 0xCu);
    }

LABEL_9:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)handleRTTMessageInjection:(id)injection
{
  v36 = *MEMORY[0x277D85DE8];
  injectionCopy = injection;
  payload = [injectionCopy payload];
  v6 = [payload objectForKey:@"axtty_voicemail_message_url"];

  if (v6)
  {
    v7 = [(RTTController *)self handleRTTVoicemailMessage:injectionCopy];
  }

  else
  {
    payload2 = [injectionCopy payload];
    v9 = [payload2 objectForKey:@"axtty_callID"];

    payload3 = [injectionCopy payload];
    v11 = [payload3 objectForKey:@"axtty_message_type"];
    integerValue = [v11 integerValue];

    payload4 = [injectionCopy payload];
    v14 = [payload4 objectForKey:@"axtty_sender_is_me"];
    bOOLValue = [v14 BOOLValue];

    payload5 = [injectionCopy payload];
    v17 = [payload5 objectForKey:@"axtty_message_text"];

    payload6 = [injectionCopy payload];
    v19 = [payload6 objectForKey:@"axtty_translated_message_text"];

    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v26 = 138413315;
      v27 = v9;
      v28 = 2048;
      v29 = integerValue;
      v30 = 2112;
      v31 = v21;
      v32 = 2113;
      v33 = v17;
      v34 = 2113;
      v35 = v19;
      _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_INFO, "Injecting message for callID %@, messageType: %ld, senderIsMe: %@, messageText: %{private}@, translatedText: %{private}@", &v26, 0x34u);
    }

    v22 = [(RTTController *)self callForUUID:v9];
    v23 = [v22 formatMessage:v17 withType:integerValue isMe:bOOLValue];
    if (bOOLValue)
    {
      [v22 sendToTTYDeviceWithString:v23];
    }

    else if ((integerValue - 7) <= 1)
    {
      [(RTTController *)self _updateConversationControllerWithTranslatedTranscription:v23 translation:v19 type:integerValue callUUID:v9];
    }

    v7 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)handleRTTTranslationLocaleMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  payload = [messageCopy payload];
  v6 = [payload objectForKey:@"axtty_callID"];

  payload2 = [messageCopy payload];
  v8 = [payload2 objectForKey:@"axtty_local_locale"];

  payload3 = [messageCopy payload];

  v10 = [payload3 objectForKey:@"axtty_remote_locale"];

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 138412802;
    v20 = v6;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Updating translation locales for callID %@, local: %@, remote: %@", &v19, 0x20u);
  }

  v12 = [(RTTController *)self callForUUID:v6];
  if (!v8)
  {
    v13 = 0;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v13 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];
LABEL_8:
  [v12 setTranslationLocalesWithLocal:v13 remote:v14];
  transcriber = [(RTTController *)self transcriber];
  v16 = transcriber;
  if (v13 && v14)
  {
    [transcriber stopTranscribingForCallUUID:v6];
  }

  else
  {
    [transcriber startTranscribingForCallUUID:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)ttyCall:(id)call didReceiveString:(id)string forUtterance:(id)utterance
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  utteranceCopy = utterance;
  v10 = MEMORY[0x277CCACA8];
  call = [call call];
  callUUID = [call callUUID];
  v13 = [v10 stringWithFormat:@"%@_%@", @"axtty_conversation_updates", callUUID];

  v14 = utteranceCopy;
  v15 = AXLogRTT();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    delegate = [(RTTController *)self delegate];
    *buf = 138412802;
    v31 = stringCopy;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = delegate;
    _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Received remote string %@ for utterance: %@, sending to delegate: %@", buf, 0x20u);
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_2873FC590;
  }

  delegate2 = [(RTTController *)self delegate];
  v19 = MEMORY[0x277D12B68];
  v20 = MEMORY[0x277D12B60];
  v28 = v13;
  v26[0] = @"axtty_result";
  v26[1] = @"axtty_value";
  v27[0] = v17;
  v27[1] = stringCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v23 = [v20 messagePayloadFromDictionary:v22 andIdentifier:0x800000000];
  v24 = [v19 messageWithPayload:v23];
  [delegate2 sendUpdateMessage:v24 forIdentifier:0x800000000];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)ttyCall:(id)call didUpdateTranslation:(id)translation forUtterance:(id)utterance
{
  v36 = *MEMORY[0x277D85DE8];
  translationCopy = translation;
  utteranceCopy = utterance;
  v10 = MEMORY[0x277CCACA8];
  call = [call call];
  callUUID = [call callUUID];
  v13 = [v10 stringWithFormat:@"%@_%@", @"axtty_conversation_updates", callUUID];

  v14 = utteranceCopy;
  v15 = AXLogRTT();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    delegate = [(RTTController *)self delegate];
    *buf = 138412802;
    v31 = translationCopy;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = delegate;
    _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Received updated translation %@ for utterance: %@, sending to delegate: %@", buf, 0x20u);
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_2873FC590;
  }

  delegate2 = [(RTTController *)self delegate];
  v19 = MEMORY[0x277D12B68];
  v20 = MEMORY[0x277D12B60];
  v28 = v13;
  v26[0] = @"axtty_result";
  v26[1] = @"axtty_translated_message_text";
  v27[0] = v17;
  v27[1] = translationCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v23 = [v20 messagePayloadFromDictionary:v22 andIdentifier:0x800000000];
  v24 = [v19 messageWithPayload:v23];
  [delegate2 sendUpdateMessage:v24 forIdentifier:0x800000000];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)ttyCall:(id)call didSendRemoteString:(id)string forUtterance:(id)utterance
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  utteranceCopy = utterance;
  v10 = MEMORY[0x277CCACA8];
  call = [call call];
  callUUID = [call callUUID];
  v13 = [v10 stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", callUUID];

  v14 = utteranceCopy;
  v15 = AXLogRTT();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = stringCopy;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Sending remote string %@ for utterance: %@", buf, 0x16u);
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_2873FC590;
  }

  delegate = [(RTTController *)self delegate];
  v18 = MEMORY[0x277D12B68];
  v19 = MEMORY[0x277D12B60];
  v27 = v13;
  v25[0] = @"axtty_result";
  v25[1] = @"axtty_value";
  v26[0] = v16;
  v26[1] = stringCopy;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v28 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = [v19 messagePayloadFromDictionary:v21 andIdentifier:0x10000000000];
  v23 = [v18 messageWithPayload:v22];
  [delegate sendUpdateMessage:v23 forIdentifier:0x10000000000];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)responseFromCallWithID:(id)d forRequest:(id)request options:(id)options
{
  requestCopy = request;
  optionsCopy = options;
  v10 = [(RTTController *)self callForUUID:d];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 responseForRequest:requestCopy options:optionsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)transcriptionDidStart:(id)start forCallUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  startCopy = start;
  dCopy = d;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = startCopy;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_DEFAULT, "New transcription: %@", &v10, 0xCu);
  }

  [(RTTController *)self _updateConversationControllerWithTranscription:startCopy type:2 callUUID:dCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)transcriptionDidUpdate:(id)update forCallUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dCopy = d;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = updateCopy;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_DEFAULT, "Updated transcription: %@", &v10, 0xCu);
  }

  [(RTTController *)self _updateConversationControllerWithTranscription:updateCopy type:3 callUUID:dCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateConversationControllerWithTranscription:(id)transcription type:(int64_t)type callUUID:(id)d
{
  v24[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  transcriptionCopy = transcription;
  v10 = [(RTTController *)self callForUUID:dCopy];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", dCopy];

  delegate = [(RTTController *)self delegate];
  v13 = MEMORY[0x277D12B68];
  v14 = MEMORY[0x277D12B60];
  v23 = dCopy;
  v21[0] = @"axtty_result";
  v21[1] = @"axtty_value";
  v22[0] = transcriptionCopy;
  v22[1] = transcriptionCopy;
  v21[2] = @"axtty_message_type";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v22[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v18 = [v14 messagePayloadFromDictionary:v17 andIdentifier:0x800000000];
  v19 = [v13 messageWithPayload:v18];
  [delegate sendUpdateMessage:v19 forIdentifier:0x800000000];

  [v10 saveTranscribedTextForConversation:transcriptionCopy isNew:type == 2];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateConversationControllerWithTranslatedTranscription:(id)transcription translation:(id)translation type:(int64_t)type callUUID:(id)d
{
  v28[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  translationCopy = translation;
  transcriptionCopy = transcription;
  v24 = [(RTTController *)self callForUUID:dCopy];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", dCopy];

  delegate = [(RTTController *)self delegate];
  v15 = MEMORY[0x277D12B68];
  v16 = MEMORY[0x277D12B60];
  v27 = dCopy;
  v25[0] = @"axtty_result";
  v25[1] = @"axtty_value";
  v26[0] = transcriptionCopy;
  v26[1] = transcriptionCopy;
  v26[2] = translationCopy;
  v25[2] = @"axtty_translated_message_text";
  v25[3] = @"axtty_message_type";
  typeCopy = type;
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v26[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v21 = [v16 messagePayloadFromDictionary:v20 andIdentifier:0x800000000];
  v22 = [v15 messageWithPayload:v21];
  [delegate sendUpdateMessage:v22 forIdentifier:0x800000000];

  [v24 saveTranslatedTranscribedTextForConversation:transcriptionCopy translatedText:translationCopy isNew:typeCopy == 7];
  v23 = *MEMORY[0x277D85DE8];
}

- (HCHeardControllerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__RTTController_handleDatabaseRequest___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_261754000, v0, OS_LOG_TYPE_FAULT, "We need a sender type for update messages: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __39__RTTController_handleDatabaseRequest___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_261754000, v0, OS_LOG_TYPE_FAULT, "We need a message type for update messages: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __39__RTTController_handleDatabaseRequest___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to create unarchiver with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__RTTController_handleDatabaseRequest___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Exception decoding data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__RTTController_displayCallPrompt___block_invoke_151_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Send message error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleRTTVoicemailMessage:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to parse voicemail message url from payload for callID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleRTTVoicemailMessage:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_261754000, v1, OS_LOG_TYPE_ERROR, "Failed to decode voicemail message url for callID %@, error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end