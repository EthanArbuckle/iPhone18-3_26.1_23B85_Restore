@interface SMEligibilityChecker
+ (id)convertEligibilityTypeToString:(int64_t)a3;
+ (id)convertToPushTokenMap:(id)a3;
- (BOOL)checkRecipientAccountIsUnique:(id)a3;
- (SMEligibilityChecker)initWithQueue:(id)a3;
- (SMEligibilityChecker)initWithQueue:(id)a3 IDSIDQueryController:(id)a4 iMessageIDSService:(id)a5 iCloudIDSService:(id)a6;
- (int64_t)reportedEligibilityWithiMessageEligibility:(int64_t)a3 iCloudEligibility:(int64_t)a4;
- (void)addDelegateForService:(id)a3;
- (void)checkConversationEligibility:(id)a3 handler:(id)a4;
- (void)checkReceiverEligibility:(id)a3 handler:(id)a4;
- (void)resolveEndpointsForDestinations:(id)a3 service:(id)a4 requiredCapabilities:(id)a5 completionBlock:(id)a6;
@end

@implementation SMEligibilityChecker

- (SMEligibilityChecker)initWithQueue:(id)a3
{
  v4 = MEMORY[0x277D18728];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.safetymonitor"];
  v8 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.safetymonitor.multiplex"];
  v9 = [(SMEligibilityChecker *)self initWithQueue:v5 IDSIDQueryController:v6 iMessageIDSService:v7 iCloudIDSService:v8];

  return v9;
}

- (SMEligibilityChecker)initWithQueue:(id)a3 IDSIDQueryController:(id)a4 iMessageIDSService:(id)a5 iCloudIDSService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = SMEligibilityChecker;
  v15 = [(SMEligibilityChecker *)&v19 init];
  p_isa = &v15->super.isa;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = 0;
  if (v12 && v13)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    [p_isa addDelegateForService:@"com.apple.private.alloy.safetymonitor"];
    [p_isa addDelegateForService:@"com.apple.private.alloy.safetymonitor.multiplex"];
LABEL_5:
    v17 = p_isa;
  }

  return v17;
}

- (void)addDelegateForService:(id)a3
{
  v4 = a3;
  v6 = [(SMEligibilityChecker *)self idsIDQueryController];
  v5 = [(SMEligibilityChecker *)self queue];
  [v6 addDelegate:self forService:v4 listenerID:@"__kSMServiceForEligibilityCheckListenerID" queue:v5];
}

+ (id)convertToPushTokenMap:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = a3;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SMEligibilityChecker_convertToPushTokenMap___block_invoke;
    v9[3] = &unk_279B649D8;
    v10 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

void __46__SMEligibilityChecker_convertToPushTokenMap___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 pushToken];
  [v2 setObject:v3 forKey:v4];
}

- (void)checkReceiverEligibility:(id)a3 handler:(id)a4
{
  v73[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7 && ([v7 primaryHandle], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v11 = os_signpost_id_generate(v10);

    v61 = v11;
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v13 = v12;
    v14 = v59[3];
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SMCheckReceiverEligibility", " enableTelemetry=YES ", &buf, 2u);
    }

    v15 = [v7 primaryHandle];
    v16 = [(SMEligibilityChecker *)self checkRecipientAccountIsUnique:v15];

    if (v16)
    {
      v17 = dispatch_group_create();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy_;
      v68 = __Block_byref_object_dispose_;
      v69 = MEMORY[0x277CBEC10];
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x2020000000;
      v57[3] = 0;
      dispatch_group_enter(v17);
      v18 = [v7 primaryHandle];
      v64 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
      v63 = *MEMORY[0x277D18918];
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke;
      v52[3] = &unk_279B64A00;
      v21 = v7;
      v53 = v21;
      v55 = v57;
      p_buf = &buf;
      v22 = v17;
      v54 = v22;
      [(SMEligibilityChecker *)self resolveEndpointsForDestinations:v19 service:@"com.apple.private.alloy.safetymonitor" requiredCapabilities:v20 completionBlock:v52];

      v50[0] = 0;
      v50[1] = v50;
      v50[2] = 0x3032000000;
      v50[3] = __Block_byref_object_copy_;
      v50[4] = __Block_byref_object_dispose_;
      v51 = MEMORY[0x277CBEC10];
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v49[3] = 0;
      dispatch_group_enter(v22);
      v23 = [v21 primaryHandle];
      v62 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_21;
      v44[3] = &unk_279B64A00;
      v25 = v21;
      v45 = v25;
      v47 = v49;
      v48 = v50;
      v26 = v22;
      v46 = v26;
      [(SMEligibilityChecker *)self resolveEndpointsForDestinations:v24 service:@"com.apple.private.alloy.safetymonitor.multiplex" requiredCapabilities:MEMORY[0x277CBEBF8] completionBlock:v44];

      v27 = [(SMEligibilityChecker *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_22;
      block[3] = &unk_279B64A28;
      block[4] = self;
      v38 = v57;
      v39 = v49;
      v40 = &buf;
      v41 = v50;
      v43 = a2;
      v36 = v25;
      v42 = &v58;
      v37 = v8;
      dispatch_group_notify(v26, v27, block);

      _Block_object_dispose(v49, 8);
      _Block_object_dispose(v50, 8);

      _Block_object_dispose(v57, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v70 = *MEMORY[0x277CCA450];
      v71 = @"Receiver handle overlaps with initiator iMessage or iCloud account";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:1 userInfo:v26];
      v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v32 = v31;
      v33 = v59[3];
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = 2;
        _os_signpost_emit_with_name_impl(&dword_26455D000, v32, OS_SIGNPOST_INTERVAL_END, v33, "SMCheckReceiverEligibility", " enableTelemetry=YES {receiverEligibility:%{public,signpost.telemetry:number1}ld}", &buf, 0xCu);
      }

      (*(v8 + 2))(v8, 2, MEMORY[0x277CBEBF8], v30);
    }

    _Block_object_dispose(&v58, 8);
  }

  else
  {
    v72 = *MEMORY[0x277CCA450];
    v73[0] = @"No handles in the query";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:7 userInfo:v28];
    (*(v8 + 2))(v8, 2, MEMORY[0x277CBEBF8], v29);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = [*(a1 + 32) primaryHandle];
      v20 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      *buf = 134218498;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "Got %lu zelkova endpoints for %@, error, %@", buf, 0x20u);
    }
  }

  if (v6)
  {
    v11 = [v6 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277D18560]];

    if (v12)
    {
      v13 = [v6 code];
      v14 = *(*(a1 + 48) + 8);
      if (v13 == 5)
      {
        v15 = 6;
      }

      else if (v13 == 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 7;
      }

      goto LABEL_14;
    }
  }

  if (![v5 count])
  {
    v14 = *(*(a1 + 48) + 8);
    v15 = 4;
LABEL_14:
    *(v14 + 24) = v15;
  }

  v16 = [SMEligibilityChecker convertToPushTokenMap:v5];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  dispatch_group_leave(*(a1 + 40));
  v19 = *MEMORY[0x277D85DE8];
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = [*(a1 + 32) primaryHandle];
      v19 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      *buf = 134218498;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "Got %lu nice endpoints for %@, error, %@", buf, 0x20u);
    }
  }

  if (v6)
  {
    v11 = [v6 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277D18560]];

    if (v12)
    {
      v13 = [v6 code];
      v14 = 6;
      if (v13 != 5)
      {
        v14 = 7;
      }

      if (v13 == 3)
      {
        v14 = 5;
      }

      *(*(*(a1 + 48) + 8) + 24) = v14;
    }
  }

  v15 = [SMEligibilityChecker convertToPushTokenMap:v5];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_group_leave(*(a1 + 40));
  v18 = *MEMORY[0x277D85DE8];
}

void __57__SMEligibilityChecker_checkReceiverEligibility_handler___block_invoke_22(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportedEligibilityWithiMessageEligibility:*(*(*(a1 + 56) + 8) + 24) iCloudEligibility:*(*(*(a1 + 64) + 8) + 24)];
  v3 = MEMORY[0x277CBEB98];
  v4 = [*(*(*(a1 + 72) + 8) + 40) allKeys];
  v5 = [v3 setWithArray:v4];

  v6 = MEMORY[0x277CBEB98];
  v7 = [*(*(*(a1 + 80) + 8) + 40) allKeys];
  v8 = [v6 setWithArray:v7];

  v9 = [v5 mutableCopy];
  [v9 intersectSet:v8];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:{*(*(&v31 + 1) + 8 * v15), v31}];
        [v10 addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v49 count:16];
    }

    while (v13);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v27 = NSStringFromSelector(*(a1 + 96));
      v28 = *(a1 + 40);
      v29 = *(*(*(a1 + 56) + 8) + 24);
      v30 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 138413826;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      v39 = 2048;
      v40 = v29;
      v41 = 2048;
      v42 = v30;
      v43 = 2112;
      v44 = v5;
      v45 = 2112;
      v46 = v8;
      v47 = 2112;
      v48 = v11;
      _os_log_debug_impl(&dword_26455D000, v17, OS_LOG_TYPE_DEBUG, "%@, handle, %@, iMessageEligibilityError, %ld, iCloudEligibilityError, %ld, pushTokenSetForZelkova, %@, pushTokenSetForNice, %@, pushTokenSetIntersection, %@", buf, 0x48u);
    }
  }

  if (!v2)
  {
    if ([v10 count])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v19 = v18;
  v20 = *(*(*(a1 + 88) + 8) + 24);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134349056;
    v36 = v2;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v19, OS_SIGNPOST_INTERVAL_END, v20, "SMCheckReceiverEligibility", " enableTelemetry=YES {receiverEligibility:%{public,signpost.telemetry:number1}ld}", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(*(a1 + 96));
      v23 = *(a1 + 40);
      *buf = 138412802;
      v36 = v22;
      v37 = 2112;
      v38 = v23;
      v39 = 2048;
      v40 = v2;
      _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, "%@, handle, %@, eligibility, %ld", buf, 0x20u);
    }
  }

  v24 = *(a1 + 48);
  v25 = [v10 copy];
  (*(v24 + 16))(v24, v2, v25, 0);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)checkConversationEligibility:(id)a3 handler:(id)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = a4;
  if (v5 && ([v5 receiverHandles], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, checking eligibility for %@", buf, 0x16u);
      }
    }

    v9 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy_;
    v36[4] = __Block_byref_object_dispose_;
    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v5 receiverHandles];
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          [*(*&buf[8] + 40) setObject:&unk_287611A58 forKey:{v14, v18}];
          dispatch_group_enter(v9);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke;
          v27[3] = &unk_279B64A50;
          v27[4] = v14;
          v29 = buf;
          v30 = v36;
          v31 = a2;
          v28 = v9;
          [(SMEligibilityChecker *)self checkReceiverEligibility:v14 handler:v27];
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v11);
    }

    v15 = [(SMEligibilityChecker *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke_32;
    block[3] = &unk_279B64A78;
    v24 = buf;
    v25 = v36;
    v26 = a2;
    v22 = v5;
    v23 = v18;
    dispatch_group_notify(v9, v15, block);

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"No conversation or missing conversation data in the query";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:{1, v18}];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMErrorDomain" code:7 userInfo:v9];
    (*(v18 + 2))(v18, 2, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = *(a1 + 32);
      v15 = 138413058;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2048;
      v20 = a2;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_26455D000, v9, OS_LOG_TYPE_DEBUG, "%@, handle, %@, eligibility, %ld, error, %@", &v15, 0x2Au);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 setObject:v11 forKey:*(a1 + 32)];

  if (v8)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:v8 forKey:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void __61__SMEligibilityChecker_checkConversationEligibility_handler___block_invoke_32(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:{v8, v17}];
        v10 = [v9 intValue];

        v11 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v8];
        if (v11)
        {
          v12 = v11;
          v5 = v10;
          goto LABEL_15;
        }

        if (v5 == 1)
        {
          v5 = 1;
        }

        else
        {
          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

LABEL_15:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(*(a1 + 64));
      v15 = *(a1 + 32);
      *buf = 138413058;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v5;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_26455D000, v13, OS_LOG_TYPE_INFO, "%@, conversation, %@, eligibility, %ld, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resolveEndpointsForDestinations:(id)a3 service:(id)a4 requiredCapabilities:(id)a5 completionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(SMEligibilityChecker *)self idsIDQueryController];
  v16 = [(SMEligibilityChecker *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke;
  v21[3] = &unk_279B64AF0;
  v25 = v14;
  v26 = a2;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  [v15 currentRemoteDevicesForDestinations:v19 service:v18 listenerID:@"__kSMServiceForEligibilityCheckListenerID" queue:v16 completionBlockWithError:v21];
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = NSStringFromSelector(*(a1 + 64));
        v11 = [*(a1 + 32) description];
        v12 = *(a1 + 40);
        v15 = *(a1 + 48);
        v13 = [v5 count];
        v14 = [0 description];
        *buf = 138413570;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v15;
        v27 = 2048;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_debug_impl(&dword_26455D000, v8, OS_LOG_TYPE_DEBUG, "%@, destinations, %@, service, %@, capabilities, %@, numResults, %ld, error, %@", buf, 0x3Eu);
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_33;
    v16[3] = &unk_279B64AC8;
    v17 = *(a1 + 48);
    v18 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v16];
    (*(*(a1 + 56) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_33(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_2;
  v5[3] = &unk_279B64AA0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateObjectsUsingBlock:v5];
}

void __101__SMEligibilityChecker_resolveEndpointsForDestinations_service_requiredCapabilities_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 capabilities];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {

LABEL_11:
    [*(a1 + 40) addObject:{v3, v12}];
    goto LABEL_12;
  }

  v7 = v6;
  v8 = *v13;
  v9 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v9 &= [v4 valueForCapability:{*(*(&v12 + 1) + 8 * i), v12}];
    }

    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v7);

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)convertEligibilityTypeToString:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"Valid";
  }

  else
  {
    return *(&off_279B64B10 + a3);
  }
}

- (int64_t)reportedEligibilityWithiMessageEligibility:(int64_t)a3 iCloudEligibility:(int64_t)a4
{
  if (a3 && a4)
  {
    v4 = 7;
    v5 = a4 == 5 && a3 == 3;
    v6 = 2;
    if (!v5)
    {
      v6 = a3;
    }

    if (a4 == 7)
    {
      v6 = 7;
    }

    if (a3 != 7)
    {
      v4 = v6;
    }

    if (a4 == 6)
    {
      v4 = 6;
    }

    if (a3 == 6)
    {
      return 6;
    }

    else
    {
      return v4;
    }
  }

  else if (a3)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

- (BOOL)checkRecipientAccountIsUnique:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [(SMEligibilityChecker *)self iMessageIDSService];
  v8 = [v7 aliases];
  [v6 unionSet:v8];

  v9 = [(SMEligibilityChecker *)self iCloudIDSService];
  v10 = [v9 aliases];
  [v6 unionSet:v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(a2);
      v16 = 138412802;
      v17 = v15;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_26455D000, v11, OS_LOG_TYPE_DEBUG, "%@, checking recipient handle, recipientHandle, %@, self aliases, %@", &v16, 0x20u);
    }
  }

  v12 = [v6 containsObject:v5];

  v13 = *MEMORY[0x277D85DE8];
  return v12 ^ 1;
}

@end