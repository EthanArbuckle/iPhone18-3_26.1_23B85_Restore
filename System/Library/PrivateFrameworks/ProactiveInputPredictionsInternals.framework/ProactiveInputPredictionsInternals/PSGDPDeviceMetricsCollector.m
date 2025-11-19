@interface PSGDPDeviceMetricsCollector
+ (BOOL)recordEngagementMetrics:(id)a3 selectedRecorder:(id)a4 ignoredRecorder:(id)a5;
+ (BOOL)recordResponse:(id)a3 numTimesToLog:(unint64_t)a4 recorder:(id)a5 prefix:(id)a6;
+ (BOOL)sendEngagementToDPUsingData:(id)a3;
+ (id)getActiveTrialInformationWithWithXPCActivityManager:(id)a3 activity:(id)a4;
+ (id)getPrefixFromRolloutID:(id)a3 factorPackId:(id)a4 experimentId:(id)a5 treatmentId:(id)a6;
+ (id)onCompletionWithXPCActivityManager:(id)a3 activity:(id)a4 engagementMetrics:(id)a5 idsService:(id)a6 destinationDevice:(id)a7;
+ (id)onDeltaRowWithXPCActivityManager:(id)a3 activity:(id)a4 engagementMetrics:(id)a5;
+ (id)recorderForKey:(id)a3;
- (BOOL)collectDeviceQREngagement:(id)a3;
- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)a3;
- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)a3 idsService:(id)a4 queue:(id)a5 store:(id)a6;
- (id)initAsDelegate;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation PSGDPDeviceMetricsCollector

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = psg_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 serviceName];
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v11;
    v19 = 2048;
    v20 = [v10 length];
    _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "Received file for service %@, identifier: %@; size: %tu", &v15, 0x20u);
  }

  [PSGDPDeviceMetricsCollector sendEngagementToDPUsingData:v10];
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)collectDeviceQREngagement:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = psg_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v5, OS_LOG_TYPE_DEFAULT, "Begin syncing QR engagement data", buf, 2u);
  }

  v6 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4];
  v7 = psg_default_log_handle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Begin fetching device experiment information", buf, 2u);
    }

    v10 = [PSGDPDeviceMetricsCollector getActiveTrialInformationWithWithXPCActivityManager:self->_xpcActivityManager activity:v4];
    v11 = v10;
    if (v10)
    {
      if (![v10 count])
      {
        v15 = psg_default_log_handle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "Early returning on engagement data sync since no Trial information associated with device", buf, 2u);
        }

        v9 = 1;
        goto LABEL_28;
      }

      v12 = [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager shouldDefer:v4];
      v13 = psg_default_log_handle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Begin retrieving and recording delta records from DB", buf, 2u);
        }

        v16 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.ZKWSelected"];
        v17 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.ZKWIgnored"];
        v18 = v17;
        if (v16 && v17)
        {
          store = self->_store;
          v20 = [PSGDPDeviceMetricsCollector onDeltaRowWithXPCActivityManager:self->_xpcActivityManager activity:v4 engagementMetrics:v11];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __57__PSGDPDeviceMetricsCollector_collectDeviceQREngagement___block_invoke;
          v23[3] = &unk_279ABDFD0;
          v24 = v11;
          v25 = self;
          v26 = v4;
          v27 = v16;
          v28 = v18;
          v9 = [(SGQuickResponsesStore *)store deltaForResponsesOnRow:v20 completion:v23];
        }

        else
        {
          v20 = psg_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138413058;
            v30 = @"com.apple.proactive.messages.ZKWSelected";
            v31 = 1024;
            v32 = v16 == 0;
            v33 = 2112;
            v34 = @"com.apple.proactive.messages.ZKWIgnored";
            v35 = 1024;
            v36 = v18 == 0;
            _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Bailing out because unable to create recorder for some key(s), %@: %d, %@: %d", buf, 0x22u);
          }

          v9 = 0;
        }

        goto LABEL_28;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing after successful experiment id retrieval", buf, 2u);
      }
    }

    [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:3];
    v9 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during eager initial check", buf, 2u);
  }

  [(SGXPCActivityManagerProtocol *)self->_xpcActivityManager setState:v4 state:3];
  v9 = 0;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __57__PSGDPDeviceMetricsCollector_collectDeviceQREngagement___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) allValues];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v43 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v26;
    v6 = 0x279ABD000uLL;
    *&v3 = 138413826;
    v21 = v3;
    v22 = *v26;
    while (2)
    {
      v7 = 0;
      v23 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        if ([*(*(a1 + 40) + 8) shouldDefer:{*(a1 + 48), v21}])
        {
          v18 = psg_default_log_handle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v18, OS_LOG_TYPE_DEFAULT, "Deferring engagement data recording in the middle of recording", buf, 2u);
          }

          [*(*(a1 + 40) + 8) setState:*(a1 + 48) state:3];
          goto LABEL_15;
        }

        v9 = [*(v6 + 3104) recordEngagementMetrics:v8 selectedRecorder:*(a1 + 56) ignoredRecorder:*(a1 + 64)];
        v10 = psg_default_log_handle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 lang];
          v12 = [v8 rolloutId];
          v13 = [v8 factorPackId];
          v14 = [v8 experimentId];
          v15 = [v8 treatmentId];
          v16 = [v8 engagementDeltas];
          v17 = [v16 count];
          *buf = v21;
          v30 = v11;
          v31 = 2112;
          v32 = v12;
          v33 = 2112;
          v34 = v13;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v15;
          v39 = 2048;
          v40 = v17;
          v41 = 1024;
          v42 = v9;
          _os_log_impl(&dword_260D36000, v10, OS_LOG_TYPE_DEFAULT, "Recorded engagement metrics running in language %@, rollout %@, factor pack %@, experiment %@, treatment %@, records %tu, success %d", buf, 0x44u);

          v5 = v22;
          v4 = v23;

          v6 = 0x279ABD000;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v43 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 40) + 8) setState:*(a1 + 48) state:5];
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)a3 idsService:(id)a4 queue:(id)a5 store:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PSGDPDeviceMetricsCollector;
  v15 = [(PSGDPDeviceMetricsCollector *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xpcActivityManager, a3);
    objc_storeStrong(&v16->_idsService, a4);
    objc_storeStrong(&v16->_store, a6);
    objc_storeStrong(&v16->_queue, a5);
    [(IDSService *)v16->_idsService addDelegate:v16 queue:v16->_queue];
  }

  return v16;
}

- (PSGDPDeviceMetricsCollector)initWithActivityManager:(id)a3
{
  v4 = MEMORY[0x277D18778];
  v5 = a3;
  v6 = [[v4 alloc] initWithService:@"com.apple.private.alloy.suggestions.smartreplies"];
  v7 = [MEMORY[0x277D025B8] sharedInstance];
  v8 = dispatch_queue_create("com.apple.dpwatchmetricscollection.idsSend", 0);
  v9 = [(PSGDPDeviceMetricsCollector *)self initWithActivityManager:v5 idsService:v6 queue:v8 store:v7];

  return v9;
}

- (id)initAsDelegate
{
  v8.receiver = self;
  v8.super_class = PSGDPDeviceMetricsCollector;
  v2 = [(PSGDPDeviceMetricsCollector *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.suggestions.smartreplies"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    v5 = dispatch_queue_create("com.apple.dpwatchmetricscollection.idsSend", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
  }

  return v2;
}

+ (BOOL)sendEngagementToDPUsingData:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v3 = psg_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v3, OS_LOG_TYPE_DEFAULT, "Begin sending QR engagement data to DP", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v5 initWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v4);
  v13 = psg_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Begin payload deserialization", buf, 2u);
  }

  v84 = 0;
  v14 = v75;
  v15 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v75 error:&v84];
  v16 = v84;
  [v15 setRequiresSecureCoding:1];
  [v15 setClass:objc_opt_class() forClassName:@"SGQuickResponsesEngagementMetrics"];
  v17 = objc_autoreleasePoolPush();
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v17);
  v19 = [v15 decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v12 forKey:*MEMORY[0x277CCA308]];

  if (v16)
  {
    v20 = psg_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v86 = v16;
      _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Unable to deserialize engagement data: %@", buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_76;
  }

  v22 = psg_default_log_handle();
  v20 = v22;
  if (v19)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v20, OS_LOG_TYPE_DEFAULT, "Successfully deserialized payload", buf, 2u);
    }

    v23 = psg_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Begin payload content validation", buf, 2u);
    }

    [v19 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_54];
    v20 = [v19 objectForKeyedSubscript:@"compatVer"];
    if (!v20)
    {
      v24 = psg_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v24, OS_LOG_TYPE_DEFAULT, "Compatability version is not in payload. Assuming payload is legacy and inferring version to be 0", buf, 2u);
      }

      v20 = &unk_28734B0B8;
    }

    v25 = psg_default_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v86 = v20;
      v87 = 1024;
      *v88 = 2;
      _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_DEFAULT, "Received compatability version %@ with local compatability version %d", buf, 0x12u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v20 intValue]!= 2)
      {
        v36 = psg_default_log_handle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v36, OS_LOG_TYPE_DEFAULT, "Compatability versions do not match, proceeding to early return", buf, 2u);
        }

        v21 = 1;
        goto LABEL_75;
      }

      v26 = [v19 objectForKeyedSubscript:@"responses"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v51 = psg_default_log_handle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          v60 = objc_opt_class();
          NSStringFromClass(v60);
          v62 = v61 = v20;
          *buf = 138412290;
          v86 = v62;
          _os_log_fault_impl(&dword_260D36000, v51, OS_LOG_TYPE_FAULT, "Deserialized engagementMetrics was of class %@, something went wrong", buf, 0xCu);

          v20 = v61;
        }

        v21 = 0;
LABEL_59:
        v36 = v26;
        goto LABEL_75;
      }

      if (v26)
      {
        if ([v26 count])
        {
          v67 = v20;
          v68 = v19;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          obj = v26;
          v27 = [obj countByEnumeratingWithState:&v80 objects:v97 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v81;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v81 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v80 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v53 = psg_default_log_handle();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                  {
                    v63 = objc_opt_class();
                    v64 = NSStringFromClass(v63);
                    *buf = 138412290;
                    v86 = v64;
                    _os_log_fault_impl(&dword_260D36000, v53, OS_LOG_TYPE_FAULT, "Deserialized engagementMetrics elements was of class %@, something went wrong", buf, 0xCu);
                  }

                  v36 = obj;
                  v21 = 0;
                  v19 = v68;
                  goto LABEL_74;
                }
              }

              v28 = [obj countByEnumeratingWithState:&v80 objects:v97 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v32 = psg_default_log_handle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v32, OS_LOG_TYPE_DEFAULT, "Successfully validated payload content", buf, 2u);
          }

          v33 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.SmartReplySelected"];
          v34 = [PSGDPDeviceMetricsCollector recorderForKey:@"com.apple.proactive.messages.SmartReplyIgnored"];
          v35 = v34;
          if (v33 && v34)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v36 = obj;
            v74 = obj;
            v37 = [v74 countByEnumeratingWithState:&v76 objects:v96 count:16];
            if (!v37)
            {
              v21 = 1;
              v19 = v68;
LABEL_73:

LABEL_74:
              v20 = v67;
              goto LABEL_75;
            }

            v65 = v15;
            v66 = v12;
            v38 = *v77;
            v21 = 1;
            v39 = v37;
            v71 = v35;
            v72 = v33;
            v70 = *v77;
            do
            {
              v40 = 0;
              v73 = v39;
              do
              {
                if (*v77 != v38)
                {
                  objc_enumerationMutation(v74);
                }

                v41 = *(*(&v76 + 1) + 8 * v40);
                v42 = [PSGDPDeviceMetricsCollector recordEngagementMetrics:v41 selectedRecorder:v33 ignoredRecorder:v35];
                v43 = psg_default_log_handle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v41 lang];
                  v45 = [v41 rolloutId];
                  v46 = [v41 factorPackId];
                  v47 = [v41 experimentId];
                  v48 = [v41 treatmentId];
                  v49 = [v41 engagementDeltas];
                  v50 = [v49 count];
                  *buf = 138413826;
                  v86 = v44;
                  v87 = 2112;
                  *v88 = v45;
                  *&v88[8] = 2112;
                  *&v88[10] = v46;
                  *&v88[18] = 2112;
                  v89 = v47;
                  v90 = 2112;
                  v91 = v48;
                  v92 = 2048;
                  v93 = v50;
                  v94 = 1024;
                  v95 = v42;
                  _os_log_impl(&dword_260D36000, v43, OS_LOG_TYPE_DEFAULT, "Recorded engagement metrics running in language %@, rollout %@, factor pack %@, experiment %@, treatment %@, records %tu, success %d", buf, 0x44u);

                  v35 = v71;
                  v39 = v73;

                  v33 = v72;
                  v38 = v70;
                }

                v21 &= v42;
                ++v40;
              }

              while (v39 != v40);
              v39 = [v74 countByEnumeratingWithState:&v76 objects:v96 count:16];
            }

            while (v39);
            v14 = v75;
            v16 = 0;
            v12 = v66;
            v15 = v65;
            v19 = v68;
          }

          else
          {
            v74 = psg_default_log_handle();
            v19 = v68;
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              *buf = 138413058;
              v86 = @"com.apple.proactive.messages.SmartReplySelected";
              v87 = 1024;
              *v88 = v33 == 0;
              *&v88[4] = 2112;
              *&v88[6] = @"com.apple.proactive.messages.SmartReplyIgnored";
              *&v88[14] = 1024;
              *&v88[16] = v35 == 0;
              _os_log_fault_impl(&dword_260D36000, v74, OS_LOG_TYPE_FAULT, "Bailing out because unable to create recorder for some key(s), %@: %d, %@: %d", buf, 0x22u);
            }

            v21 = 0;
          }

          v36 = obj;
          goto LABEL_73;
        }

        v57 = psg_default_log_handle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v57, OS_LOG_TYPE_DEFAULT, "Received empty engagement rate data to process", buf, 2u);
        }

        v21 = 1;
        goto LABEL_59;
      }

      v52 = psg_default_log_handle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v52, OS_LOG_TYPE_ERROR, "Deserialized engagementMetrics was nil, something went wrong", buf, 2u);
      }

      v36 = 0;
    }

    else
    {
      v36 = psg_default_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        v54 = objc_opt_class();
        NSStringFromClass(v54);
        v56 = v55 = v36;
        *buf = 138412290;
        v86 = v56;
        _os_log_fault_impl(&dword_260D36000, v55, OS_LOG_TYPE_FAULT, "Deserialized compatability version was of class %@, something went wrong", buf, 0xCu);

        v36 = v55;
      }
    }

    v21 = 0;
LABEL_75:

    goto LABEL_76;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_260D36000, v20, OS_LOG_TYPE_FAULT, "Received empty payload", buf, 2u);
  }

  v21 = 1;
LABEL_76:

  v58 = *MEMORY[0x277D85DE8];
  return v21;
}

void __59__PSGDPDeviceMetricsCollector_sendEngagementToDPUsingData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = psg_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "Payload key %@ is of class %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)onCompletionWithXPCActivityManager:(id)a3 activity:(id)a4 engagementMetrics:(id)a5 idsService:(id)a6 destinationDevice:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:0 userInfo:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __122__PSGDPDeviceMetricsCollector_onCompletionWithXPCActivityManager_activity_engagementMetrics_idsService_destinationDevice___block_invoke;
  v25[3] = &unk_279ABDFA8;
  v26 = v13;
  v27 = v11;
  v28 = v12;
  v29 = v16;
  v30 = v15;
  v31 = v14;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  v23 = MEMORY[0x2666EDC40](v25);

  return v23;
}

__CFString *__122__PSGDPDeviceMetricsCollector_onCompletionWithXPCActivityManager_activity_engagementMetrics_idsService_destinationDevice___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v53 objects:v71 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v54;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v54 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v53 + 1) + 8 * i)];
          v10 = [v9 engagementDeltas];
          v11 = [v10 count];

          if (v11)
          {
            [v2 addObject:v9];
            v12 = [v9 engagementDeltas];
            v6 = (v6 + [v12 count]);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v53 objects:v71 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v15 = psg_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v58 = v6;
      _os_log_impl(&dword_260D36000, v15, OS_LOG_TYPE_DEFAULT, "Begin syncing for %tu records", buf, 0xCu);
    }

    if ([*(a1 + 40) shouldDefer:*(a1 + 48)])
    {
      v16 = psg_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v16, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during initial completion block check", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v14 = *(a1 + 56);
      goto LABEL_61;
    }

    if (!v6)
    {
      v22 = psg_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D36000, v22, OS_LOG_TYPE_DEFAULT, "Completed engagement data syncing with no updates, no records to sync", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:5];
      v14 = 0;
      goto LABEL_61;
    }

    v69[0] = @"responses";
    v69[1] = @"compatVer";
    v70[0] = v2;
    v70[1] = &unk_28734B0A0;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v18 = psg_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v18, OS_LOG_TYPE_DEFAULT, "Begin records serialization", buf, 2u);
    }

    v52 = 0;
    v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v52];
    v20 = v52;
    if (v20)
    {
      v14 = v20;
      v21 = psg_default_log_handle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v14;
        _os_log_error_impl(&dword_260D36000, v21, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing because of serialization error: %@", buf, 0xCu);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      goto LABEL_60;
    }

    v23 = [*(a1 + 40) shouldDefer:*(a1 + 48)];
    v24 = psg_default_log_handle();
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v25, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing after data serialization", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v14 = *(a1 + 56);
      goto LABEL_60;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v19 length];
      *buf = 134217984;
      v58 = v26;
      _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_DEFAULT, "Serialized records with data size of %tu", buf, 0xCu);
    }

    v27 = objc_autoreleasePoolPush();
    v28 = objc_alloc(MEMORY[0x277CBEB98]);
    v29 = *(a1 + 64);
    v30 = IDSCopyIDForDevice();
    v31 = [v28 initWithObjects:{v30, 0}];

    objc_autoreleasePoolPop(v27);
    v32 = psg_default_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D36000, v32, OS_LOG_TYPE_DEFAULT, "Begin IDS sync request", buf, 2u);
    }

    v33 = *(a1 + 72);
    v34 = *MEMORY[0x277D18678];
    v67[0] = *MEMORY[0x277D185B0];
    v67[1] = v34;
    v68[0] = MEMORY[0x277CBEC38];
    v68[1] = MEMORY[0x277CBEC38];
    v67[2] = *MEMORY[0x277D185D0];
    v68[2] = MEMORY[0x277CBEC38];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
    v50 = 0;
    v51 = 0;
    v36 = [v33 sendData:v19 toDestinations:v31 priority:100 options:v35 identifier:&v51 error:&v50];
    v37 = v51;
    v38 = v50;

    v39 = [*(a1 + 40) shouldDefer:*(a1 + 48)];
    v40 = psg_default_log_handle();
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v41, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing after IDS sync call", buf, 2u);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v42 = *(a1 + 56);
    }

    else
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [MEMORY[0x277CCABB0] numberWithBool:v36];
        v44 = [v19 length];
        *buf = 138413314;
        v58 = @"com.apple.private.alloy.suggestions.smartreplies";
        v59 = 2112;
        v60 = v43;
        v61 = 2112;
        v62 = v37;
        v63 = 2048;
        v64 = v44;
        v65 = 2112;
        v66 = v38;
        _os_log_impl(&dword_260D36000, v41, OS_LOG_TYPE_DEFAULT, "Performed IDS request for service %@, success %@, identifier %@, data size: %tu, error %@", buf, 0x34u);
      }

      if (v38)
      {
        v45 = 0;
      }

      else
      {
        v45 = v36;
      }

      if (v45)
      {
        v46 = psg_default_log_handle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v46, OS_LOG_TYPE_DEFAULT, "Successfully passed data to IDS for syncing", buf, 2u);
        }

        [*(a1 + 40) setState:*(a1 + 48) state:5];
        v38 = 0;
        v14 = 0;
        goto LABEL_59;
      }

      if (!v38)
      {
        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:1 userInfo:0];
      }

      v47 = psg_default_log_handle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v38;
        _os_log_error_impl(&dword_260D36000, v47, OS_LOG_TYPE_ERROR, "Deferring engagement data syncing because IDS failure: %@", buf, 0xCu);
      }

      [*(a1 + 40) setState:*(a1 + 48) state:3];
      v42 = v38;
      v38 = v42;
    }

    v14 = v42;
LABEL_59:

LABEL_60:
LABEL_61:

    goto LABEL_62;
  }

  v13 = psg_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "Completed engagement data syncing with no updates, no Trial information for device", buf, 2u);
  }

  [*(a1 + 40) setState:*(a1 + 48) state:5];
  v14 = 0;
LABEL_62:
  v48 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)onDeltaRowWithXPCActivityManager:(id)a3 activity:(id)a4 engagementMetrics:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SGDPDeviceMetricsCollectorErrorDomain" code:0 userInfo:0];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__PSGDPDeviceMetricsCollector_onDeltaRowWithXPCActivityManager_activity_engagementMetrics___block_invoke;
  v17[3] = &unk_279ABDF80;
  v18 = v7;
  v19 = v8;
  v20 = v10;
  v21 = v9;
  v22 = v23;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  v14 = v7;
  v15 = MEMORY[0x2666EDC40](v17);

  _Block_object_dispose(v23, 8);

  return v15;
}

uint64_t __91__PSGDPDeviceMetricsCollector_onDeltaRowWithXPCActivityManager_activity_engagementMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = psg_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_260D36000, v6, OS_LOG_TYPE_DEFAULT, "Begin validation for record", &v26, 2u);
  }

  if ([*(a1 + 32) shouldDefer:*(a1 + 40)])
  {
    v7 = psg_default_log_handle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v26) = 0;
    goto LABEL_6;
  }

  v9 = *(a1 + 56);
  v10 = [v5 lang];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [v5 lang];
      v26 = 138412290;
      *v27 = v25;
      _os_log_error_impl(&dword_260D36000, v19, OS_LOG_TYPE_ERROR, "Error for record due to us recording an unknown language code %@", &v26, 0xCu);
    }

    goto LABEL_25;
  }

  if (([v5 displayed] & 0x80000000) != 0 || (objc_msgSend(v5, "selected") & 0x80000000) != 0)
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v5 displayed];
      v21 = [v5 selected];
      v26 = 67109376;
      v27[0] = v20;
      LOWORD(v27[1]) = 1024;
      *(&v27[1] + 2) = v21;
      _os_log_error_impl(&dword_260D36000, v19, OS_LOG_TYPE_ERROR, "Error for record due to negative value for displayed %d or selected %d", &v26, 0xEu);
    }

    goto LABEL_25;
  }

  if (![v5 displayed] && !objc_msgSend(v5, "selected"))
  {
    v19 = psg_default_log_handle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_260D36000, v19, OS_LOG_TYPE_DEFAULT, "Skipping record since no delta in displayed or selected", &v26, 2u);
    }

LABEL_25:

    goto LABEL_26;
  }

  v12 = psg_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_260D36000, v12, OS_LOG_TYPE_DEFAULT, "Validated record to sync", &v26, 2u);
  }

  v13 = *(a1 + 56);
  v14 = [v5 lang];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [v15 engagementDeltas];
  [v16 addObject:v5];

  if (++*(*(*(a1 + 64) + 8) + 24) >= 0xD06uLL)
  {
    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(*(a1 + 64) + 8) + 24);
      v26 = 134217984;
      *v27 = v18;
      _os_log_impl(&dword_260D36000, v17, OS_LOG_TYPE_DEFAULT, "Truncating number of responses to fetch since it's greater than %tu", &v26, 0xCu);
    }

    goto LABEL_9;
  }

  if (![*(a1 + 32) shouldDefer:*(a1 + 40)])
  {
LABEL_26:
    v8 = MEMORY[0x277D42690];
    goto LABEL_27;
  }

  v7 = psg_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
LABEL_6:
    _os_log_impl(&dword_260D36000, v7, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during delta row iteration", &v26, 2u);
  }

LABEL_7:

  [*(a1 + 32) setState:*(a1 + 40) state:3];
  if (a3)
  {
    *a3 = *(a1 + 48);
  }

LABEL_9:
  v8 = MEMORY[0x277D42698];
LABEL_27:
  v22 = *v8;

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)recorderForKey:(id)a3
{
  v3 = MEMORY[0x277D05310];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:v4];

  return v5;
}

+ (id)getActiveTrialInformationWithWithXPCActivityManager:(id)a3 activity:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v32 = a4;
  context = objc_autoreleasePoolPush();
  v28 = objc_opt_new();
  v31 = +[PSGExperimentResolver sharedInstance];
  v5 = [v31 zkwLangAndNamespaces];
  v6 = [v5 allKeys];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = v6;
  v30 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v8 = 0;
  if (v30)
  {
    v29 = *v39;
    obj = v7;
LABEL_3:
    v9 = 0;
    v10 = v8;
    while (1)
    {
      if (*v39 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v38 + 1) + 8 * v9);
      v8 = [v31 getResponseSuggestionsExperimentConfig:v11 shouldDownloadAssets:0];

      if ([v33 shouldDefer:v32])
      {
        v23 = psg_default_log_handle();
        v21 = v28;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Deferring engagement data syncing during trial information fetching", buf, 2u);
        }

        v7 = obj;
        v22 = 0;
        goto LABEL_17;
      }

      v12 = [v8 rolloutIdentifiers];
      if (v12)
      {
        break;
      }

      v13 = [v8 experimentIdentifiers];

      if (v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v9;
      v10 = v8;
      if (v30 == v9)
      {
        v7 = obj;
        v30 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    v34 = [PSGQuickResponsesEngagementMetrics alloc];
    v36 = [v8 rolloutIdentifiers];
    v35 = [v36 rolloutId];
    v14 = [v8 rolloutIdentifiers];
    v15 = [v14 factorPackId];
    v16 = [v8 experimentIdentifiers];
    v17 = [v16 experimentId];
    v18 = [v8 experimentIdentifiers];
    v19 = [v18 treatmentId];
    v20 = [(PSGQuickResponsesEngagementMetrics *)v34 initWithLang:v11 rolloutId:v35 factorPackId:v15 experimentId:v17 treatmentId:v19];
    [v28 setObject:v20 forKeyedSubscript:v11];

    goto LABEL_11;
  }

LABEL_13:

  v21 = v28;
  v22 = [v28 copy];
LABEL_17:

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (BOOL)recordEngagementMetrics:(id)a3 selectedRecorder:(id)a4 ignoredRecorder:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = a4;
  v29 = a5;
  v8 = [v7 rolloutId];
  v9 = [v7 factorPackId];
  v10 = [v7 experimentId];
  v11 = [v7 treatmentId];
  v12 = [PSGDPDeviceMetricsCollector getPrefixFromRolloutID:v8 factorPackId:v9 experimentId:v10 treatmentId:v11];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = v7;
  obj = [v7 engagementDeltas];
  v13 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    v16 = 1;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 response];
        if (!v19)
        {
          v25 = psg_default_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v25, OS_LOG_TYPE_INFO, "Skipping DP logging for empty response.", buf, 2u);
          }

          goto LABEL_16;
        }

        v20 = [v18 selected];
        v21 = [v18 displayed];
        v22 = v21 - [v18 selected];
        if ((v20 & 0x80000000) != 0 || (v22 & 0x80000000) != 0)
        {
          v25 = psg_default_log_handle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v37 = v20;
            *&v37[4] = 1024;
            *&v37[6] = v22;
            _os_log_error_impl(&dword_260D36000, v25, OS_LOG_TYPE_ERROR, "Skipping DP logging for response because invalid count for selected %d or ignored %d", buf, 0xEu);
          }

LABEL_16:

          goto LABEL_17;
        }

        v23 = psg_default_log_handle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v37 = v20;
          *&v37[8] = 2048;
          v38 = v22;
          _os_log_impl(&dword_260D36000, v23, OS_LOG_TYPE_DEFAULT, "Logging message selected %tu, ignored %tu", buf, 0x16u);
        }

        v24 = [PSGDPDeviceMetricsCollector recordResponse:v19 numTimesToLog:v20 recorder:v30 prefix:v12];
        v16 &= [PSGDPDeviceMetricsCollector recordResponse:v19 numTimesToLog:v22 recorder:v29 prefix:v12]&& v24;
LABEL_17:
      }

      v14 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (!v14)
      {
        goto LABEL_21;
      }
    }
  }

  LOBYTE(v16) = 1;
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

+ (BOOL)recordResponse:(id)a3 numTimesToLog:(unint64_t)a4 recorder:(id)a5 prefix:(id)a6
{
  v35[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v9 length])
  {
    if (!a4)
    {
      v30 = 1;
      goto LABEL_35;
    }

    v35[0] = v11;
    v35[1] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v13 = [v12 _pas_componentsJoinedByString:@"|"];

    v14 = psg_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 134217984;
      v34 = a4;
      _os_log_impl(&dword_260D36000, v14, OS_LOG_TYPE_DEFAULT, "Preparing to log message %tu times", &v33, 0xCu);
    }

    v15 = [v13 length];
    v16 = 0x800 / v15;
    if (v15 > 0x800)
    {
      v16 = 1;
    }

    if (v16 >= a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = v16;
    }

    v18 = a4 / v17;
    v19 = a4 / v17 * v17;
    v20 = a4 % v17;
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v17];
    v22 = v21;
    while ([v21 count]< v17)
    {
      [v22 addObject:v13];
      v21 = v22;
    }

    v23 = 0;
    v24 = 0;
    do
    {
      v25 = [v10 record:v22];
      v24 += v25 ^ 1;
      v23 += v25;
    }

    while (v23 < v18 && v24 < 3);
    if (a4 != v19 && v24 <= 2)
    {
      v27 = [v22 subarrayWithRange:0, v20];
      do
      {
        v28 = [v10 record:v27];
        v24 += v28 ^ 1u;
      }

      while ((v28 & 1) == 0 && v24 < 3);
    }

    if (v24)
    {
      v29 = psg_default_log_handle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = 134217984;
        v34 = v24;
        _os_log_error_impl(&dword_260D36000, v29, OS_LOG_TYPE_ERROR, "Call to recorder failed %tu times", &v33, 0xCu);
      }
    }

    v30 = v24 < 3;
  }

  else
  {
    v22 = psg_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_260D36000, v22, OS_LOG_TYPE_ERROR, "Logging of empty response is not allowed", &v33, 2u);
    }

    v30 = 0;
    v13 = v9;
  }

  v9 = v13;
LABEL_35:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (id)getPrefixFromRolloutID:(id)a3 factorPackId:(id)a4 experimentId:(id)a5 treatmentId:(id)a6
{
  v25[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = &stru_287345C00;
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &stru_287345C00;
  }

  v15 = v14;
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &stru_287345C00;
  }

  v17 = v16;
  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = &stru_287345C00;
  }

  if (v12)
  {
    v19 = v11 != 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18;
  if (v10)
  {
    v21 = v9 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 || v19)
  {
    if (v19)
    {
      v25[0] = v11;
      v25[1] = v12;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v13 = [v22 _pas_componentsJoinedByString:@"|"];
    }

    else
    {
      v13 = v15;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

@end