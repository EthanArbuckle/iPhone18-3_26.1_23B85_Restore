@interface SMSafetyCacheZone
- (CKRecordID)accessDataRecordID;
- (CKRecordID)safetyCacheRecordID;
- (NSData)allowReadToken;
- (NSData)phoneSafetyCache;
- (NSData)watchSafetyCache;
- (NSDate)releaseTime;
- (SMSafetyCacheZone)initWithSessionID:(id)a3 ownerName:(id)a4 token:(id)a5 defaultsManager:(id)a6 queue:(id)a7;
- (void)createRecordsWithParticipants:(id)a3 qos:(id)a4 completion:(id)a5;
- (void)fetchAccessDataRecordWithQos:(id)a3 completion:(id)a4;
- (void)fetchSafetyCacheRecordWithQos:(id)a3 completion:(id)a4;
- (void)fetchSafetyCacheRecordsWithQos:(id)a3 completion:(id)a4;
- (void)fetchShareParticipantsWithRetryCount:(int64_t)a3 conversation:(id)a4 qos:(id)a5 completion:(id)a6;
- (void)fetchShareWithQos:(id)a3 completion:(id)a4;
- (void)saveZoneToDatabaseWithRetryCount:(int64_t)a3 qos:(id)a4 completion:(id)a5;
- (void)setupZoneAndShareWithConversation:(id)a3 qos:(id)a4 completion:(id)a5;
- (void)updateAccessDataRecord:(id *)a3 cacheReleaseTime:(id)a4;
- (void)updateAccessDataRecordWithCacheReleaseTime:(id)a3 qos:(id)a4 completion:(id)a5;
- (void)updateSafetyCacheRecordWithData:(id)a3 qos:(id)a4 completion:(id)a5;
- (void)updateSafetyCacheWithData:(id)a3 cacheReleaseTime:(id)a4 qos:(id)a5 completion:(id)a6;
@end

@implementation SMSafetyCacheZone

- (SMSafetyCacheZone)initWithSessionID:(id)a3 ownerName:(id)a4 token:(id)a5 defaultsManager:(id)a6 queue:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (!v13)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: sessionID";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_21;
  }

  if (!v14)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: ownerName";
    goto LABEL_20;
  }

  if (!v15)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: token";
    goto LABEL_20;
  }

  if (!v17)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: queue";
      goto LABEL_20;
    }

LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

  v34 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v32 = NSStringFromSelector(a2);
      *buf = 138413058;
      v40 = v13;
      v41 = 2112;
      v42 = v21;
      v43 = 2112;
      v44 = v32;
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,ownerName,%@", buf, 0x2Au);
    }
  }

  v22 = objc_alloc(MEMORY[0x277CBC5F8]);
  v23 = [v13 UUIDString];
  v24 = [v22 initWithZoneName:v23 ownerName:v14];

  v25 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v24];
  v38.receiver = self;
  v38.super_class = SMSafetyCacheZone;
  v26 = [(SMCloudKitZone *)&v38 initWithZone:v25 queue:v18];
  p_isa = &v26->super.super.isa;
  if (v26)
  {
    v33 = v25;
    objc_storeStrong(&v26->_token, a5);
    objc_storeStrong(p_isa + 8, a6);
    v28 = [p_isa queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SMSafetyCacheZone_initWithSessionID_ownerName_token_defaultsManager_queue___block_invoke;
    block[3] = &unk_2788C52E8;
    v36 = p_isa;
    v37 = a2;
    dispatch_async(v28, block);

    v25 = v33;
  }

  self = p_isa;

  v29 = self;
  v16 = v34;
LABEL_22:

  return v29;
}

void __77__SMSafetyCacheZone_initWithSessionID_ownerName_token_defaultsManager_queue___block_invoke(uint64_t a1)
{
  v2 = [[SMCloudKitQosOptions alloc] initWithDefaultQos:1 masqueradeBundleID:0 xpcActivity:0];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SMSafetyCacheZone_initWithSessionID_ownerName_token_defaultsManager_queue___block_invoke_2;
  v6[3] = &unk_2788CF568;
  v4 = v3;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v4 fetchShareWithQos:v2 withCompletion:v6];
}

void __77__SMSafetyCacheZone_initWithSessionID_ownerName_token_defaultsManager_queue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 40));
    v11 = 138413058;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,fetched share,%@,error,%@", &v11, 0x2Au);
  }

  if (v5)
  {
    [*(a1 + 32) setShare:v5];
  }
}

- (void)setupZoneAndShareWithConversation:(id)a3 qos:(id)a4 completion:(id)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v71 = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation", v71, 2u);
    }

    goto LABEL_21;
  }

  if (!v11)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v71 = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", v71, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

  *v71 = 0;
  v72 = v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__132;
  v75 = __Block_byref_object_dispose__132;
  v76 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v70 = 2;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 1;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__132;
  v65[4] = __Block_byref_object_dispose__132;
  v66 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke;
  aBlock[3] = &unk_2788CF5B8;
  v61 = v67;
  v62 = v65;
  v60 = v69;
  aBlock[4] = self;
  v63 = v71;
  v64 = a2;
  v13 = v10;
  v58 = v13;
  v59 = v12;
  v36 = _Block_copy(aBlock);
  v14 = [(SMSafetyCacheZone *)self defaultsManager];
  v15 = [v14 objectForKey:@"RTDefaultsSafetyCacheCloudKitZoneTTL"];

  if (!v15)
  {
    v15 = &unk_28459F1E0;
  }

  v16 = [(SMCloudKitZone *)self zone];
  [v16 setExpirationAfterTimeInterval:v15];
  v37 = v15;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v35 = [(SMCloudKitZone *)self zoneID];
      v18 = [v35 zoneName];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      Current = *&v21;
      v79 = 2112;
      v80 = v37;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,zone TTL set to %@ seconds", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  Current = CFAbsoluteTimeGetCurrent();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v23 = os_signpost_id_generate(v22);

  v56 = v23;
  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v25 = v24;
  v26 = v54[3];
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v45 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "SMInitializationSequenceSetupZoneAndShareSaveZone", " enableTelemetry=YES ", v45, 2u);
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_36;
  v49[3] = &unk_2788CF5E0;
  v49[4] = self;
  v51 = buf;
  v52 = &v53;
  v27 = v36;
  v50 = v27;
  [(SMSafetyCacheZone *)self saveZoneToDatabaseWithRetryCount:2 qos:v13 completion:v49];
  *v45 = 0;
  v46 = v45;
  v47 = 0x2020000000;
  v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v29 = os_signpost_id_generate(v28);

  v48 = v29;
  v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v31 = v30;
  v32 = *(v46 + 3);
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v44 = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v32, "SMInitializationSequenceSetupZoneAndShareFetchParticipants", " enableTelemetry=YES ", v44, 2u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_40;
  v38[3] = &unk_2788CF608;
  v41 = v45;
  v42 = v71;
  v38[4] = self;
  v43 = a2;
  v39 = v9;
  v33 = v27;
  v40 = v33;
  [(SMSafetyCacheZone *)self fetchShareParticipantsWithRetryCount:2 conversation:v39 qos:v13 completion:v38];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v71, 8);

LABEL_22:
}

void __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  --*(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) &= a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(*(a1 + 88));
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 138413826;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    Current = *&v12;
    v36 = 1024;
    v37 = a2;
    v38 = 2112;
    v39 = v6;
    v40 = 1024;
    v41 = v13;
    v42 = 1024;
    v43 = v14;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,result returned,%d,error,%@,pending results,%d,combined result,%d", buf, 0x3Cu);
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      Current = CFAbsoluteTimeGetCurrent();
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v16 = os_signpost_id_generate(v15);

      v33 = v16;
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
      v18 = v17;
      v19 = v31[3];
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *v29 = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "SMInitializationSequenceSetupZoneAndShareCreateRecordsWithParticipants", " enableTelemetry=YES ", v29, 2u);
      }

      v20 = *(*(*(a1 + 80) + 8) + 40);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_26;
      v23[3] = &unk_2788CF590;
      v23[4] = v21;
      v26 = buf;
      v27 = &v30;
      v28 = a2;
      v24 = v6;
      v25 = *(a1 + 48);
      [v21 createRecordsWithParticipants:v20 qos:v22 completion:v23];

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 defaultsManager];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 56) + 8) + 24)];
  [v6 setObject:v7 forKey:@"SMDefaultsSafetyCacheInitCKZoneCreateRecordsLatencyKey"];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 64) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = *(a1 + 72);
    v12 = [*(a1 + 40) domain];
    v13 = [v12 UTF8String];
    v14 = [*(a1 + 40) code];
    v15 = 134349570;
    v16 = v11;
    v17 = 2082;
    v18 = v13;
    v19 = 2050;
    v20 = v14;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMInitializationSequenceSetupZoneAndShareCreateRecordsWithParticipants", " enableTelemetry=YES {success:%{public, signpost.telemetry:number1}ld, errorDomain:%{public, signpost.telemetry:string1}s, errorCode:%{public, signpost.telemetry:number2}ld}", &v15, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_36(uint64_t a1, unsigned int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) defaultsManager];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 48) + 8) + 24)];
  [v6 setObject:v7 forKey:@"SMDefaultsSafetyCacheInitCKZoneSaveLatencyKey"];

  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 56) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [v5 domain];
    v12 = 134349570;
    v13 = a2;
    v14 = 2082;
    v15 = [v11 UTF8String];
    v16 = 2050;
    v17 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMInitializationSequenceSetupZoneAndShareSaveZone", " enableTelemetry=YES {success:%{public, signpost.telemetry:number1}ld, errorDomain:%{public, signpost.telemetry:string1}s, errorCode:%{public, signpost.telemetry:number2}ld}", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __70__SMSafetyCacheZone_setupZoneAndShareWithConversation_qos_completion___block_invoke_40(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v11 = v10;
  v12 = *(*(*(a1 + 56) + 8) + 24);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = [v9 domain];
    *buf = 134349570;
    v23 = a3;
    v24 = 2082;
    v25 = [v13 UTF8String];
    v26 = 2050;
    v27 = [v9 code];
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SMInitializationSequenceSetupZoneAndShareFetchParticipants", " enableTelemetry=YES {success:%{public, signpost.telemetry:number1}ld, errorDomain:%{public, signpost.telemetry:string1}s, errorCode:%{public, signpost.telemetry:number2}ld}", buf, 0x20u);
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) zoneID];
      v16 = [v15 zoneName];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(*(a1 + 72));
      v20 = [*(a1 + 40) receiverPrimaryHandles];
      v21 = [*(a1 + 32) zoneID];
      *buf = 138413314;
      v23 = v16;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,successfully identified participants %@ for zoneID %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)saveZoneToDatabaseWithRetryCount:(int64_t)a3 qos:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (a3 < 0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSafetyCacheZone saveZoneToDatabaseWithRetryCount:qos:completion:]";
      v21 = 1024;
      v22 = 209;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pendingRetryCount >= 0 (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else if (v9)
  {
LABEL_3:
    v11 = [(SMCloudKitZone *)self privateDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SMSafetyCacheZone_saveZoneToDatabaseWithRetryCount_qos_completion___block_invoke;
    v14[3] = &unk_2788CF630;
    v14[4] = self;
    v17 = a2;
    v16 = v10;
    v18 = a3;
    v15 = v9;
    [(SMCloudKitZone *)self saveZoneToDatabase:v11 qos:v15 withCompletion:v14];

    goto LABEL_10;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: qosOptions", buf, 2u);
  }

LABEL_10:
}

void __69__SMSafetyCacheZone_saveZoneToDatabaseWithRetryCount_qos_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [*(a1 + 32) zoneID];
      v23 = 138412802;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zone saved successfully for zoneID %@", &v23, 0x20u);
    }

    goto LABEL_13;
  }

  if (![SMCloudKitZone shouldRetryCkError:v4])
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      (*(*(a1 + 48) + 16))();
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(*(a1 + 56));
    v15 = [*(a1 + 32) zoneID];
    v23 = 138413058;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v4;
    v16 = "#SafetyCache,%@,%@,failed to save zone with zoneID %@ with non recoverable error %@";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, v16, &v23, 0x2Au);

    goto LABEL_13;
  }

  v5 = *(a1 + 64);
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5 <= 0)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v22 = objc_opt_class();
    v13 = NSStringFromClass(v22);
    v14 = NSStringFromSelector(*(a1 + 56));
    v15 = [*(a1 + 32) zoneID];
    v23 = 138413058;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v4;
    v16 = "#SafetyCache,%@,%@,failed to save zone with zoneID %@  after retries with recoverable error %@";
    goto LABEL_16;
  }

  if (v7)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(*(a1 + 56));
    v20 = [*(a1 + 32) zoneID];
    v21 = *(a1 + 64);
    v23 = 138413314;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    v29 = 2112;
    v30 = v4;
    v31 = 1024;
    v32 = v21;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to save zone with zoneID %@  with recoverable error %@, pendingRetryCount %d, retrying...", &v23, 0x30u);
  }

  [*(a1 + 32) saveZoneToDatabaseWithRetryCount:*(a1 + 64) - 1 qos:*(a1 + 40) completion:*(a1 + 48)];
LABEL_14:
}

- (void)fetchShareParticipantsWithRetryCount:(int64_t)a3 conversation:(id)a4 qos:(id)a5 completion:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 < 0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SMSafetyCacheZone fetchShareParticipantsWithRetryCount:conversation:qos:completion:]";
      v28 = 1024;
      v29 = 249;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pendingRetryCount >= 0 (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if (v11)
  {
    goto LABEL_3;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "[SMSafetyCacheZone fetchShareParticipantsWithRetryCount:conversation:qos:completion:]";
    v28 = 1024;
    v29 = 250;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
LABEL_11:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SMSafetyCacheZone fetchShareParticipantsWithRetryCount:conversation:qos:completion:]";
      v28 = 1024;
      v29 = 251;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: qosOptions (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__SMSafetyCacheZone_fetchShareParticipantsWithRetryCount_conversation_qos_completion___block_invoke;
  v20[3] = &unk_2788CF658;
  v20[4] = self;
  v21 = v11;
  v24 = a2;
  v25 = a3;
  v22 = v12;
  v23 = v13;
  v17 = v12;
  v18 = v13;
  v19 = v11;
  [(SMCloudKitZone *)self fetchShareParticipantsWithConversation:v19 qos:v17 completion:v20];
}

void __86__SMSafetyCacheZone_fetchShareParticipantsWithRetryCount_conversation_qos_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      v12 = v31 = v7;
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = [*(a1 + 40) receiverPrimaryHandles];
      v15 = [*(a1 + 32) zoneID];
      *buf = 138413314;
      v33 = v10;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,successfully identified participants %@ for zoneID %@", buf, 0x34u);

      v7 = v31;
    }

    v16 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  if (![SMCloudKitZone shouldRetryCkError:v7])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v16 = *(*(a1 + 56) + 16);
LABEL_14:
      v16();
      goto LABEL_15;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(*(a1 + 64));
    v23 = [*(a1 + 32) zoneID];
    *buf = 138413058;
    v33 = v21;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v7;
    v24 = "#SafetyCache,%@,%@,failed to fetch share participant with zoneID %@ with non recoverable error %@";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v24, buf, 0x2Au);

    goto LABEL_13;
  }

  v17 = *(a1 + 72);
  v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v17 <= 0)
  {
    if (!v19)
    {
      goto LABEL_13;
    }

    v30 = objc_opt_class();
    v21 = NSStringFromClass(v30);
    v22 = NSStringFromSelector(*(a1 + 64));
    v23 = [*(a1 + 32) zoneID];
    *buf = 138413058;
    v33 = v21;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v7;
    v24 = "#SafetyCache,%@,%@,failed to fetch share participant with zoneID %@  after retries with recoverable error %@";
    goto LABEL_17;
  }

  if (v19)
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(*(a1 + 64));
    v28 = [*(a1 + 32) zoneID];
    v29 = *(a1 + 72);
    *buf = 138413314;
    v33 = v26;
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v7;
    v40 = 1024;
    LODWORD(v41) = v29;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to save zone with zoneID %@  with recoverable error %@, pendingRetryCount %d, retrying...", buf, 0x30u);
  }

  [*(a1 + 32) fetchShareParticipantsWithRetryCount:*(a1 + 72) - 1 conversation:*(a1 + 40) qos:*(a1 + 48) completion:*(a1 + 56)];
LABEL_15:
}

- (void)createRecordsWithParticipants:(id)a3 qos:(id)a4 completion:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v46 = "Invalid parameter not satisfying: fetchedParticipantsToHandlesMap";
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, v46, buf, 2u);
    goto LABEL_28;
  }

  if (!v8)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v46 = "Invalid parameter not satisfying: qos";
    goto LABEL_25;
  }

  if (!v9)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v46 = "Invalid parameter not satisfying: completion";
    goto LABEL_25;
  }

  v52 = v9;
  v53 = v8;
  v11 = objc_alloc(MEMORY[0x277CBC5A0]);
  v12 = [(SMSafetyCacheZone *)self safetyCacheRecordID];
  v13 = [v11 initWithRecordType:@"SafetyCacheRecord" recordID:v12];
  [(SMSafetyCacheZone *)self setSafetyCacheRecord:v13];

  v14 = objc_alloc(MEMORY[0x277CBC5A0]);
  v15 = [(SMSafetyCacheZone *)self accessDataRecordID];
  v16 = [v14 initWithRecordType:@"AccessDataRecord" recordID:v15];

  v73 = v16;
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:7200.0];
  [(SMSafetyCacheZone *)self updateAccessDataRecord:&v73 cacheReleaseTime:v17];
  v18 = v73;

  v51 = v18;
  [(SMSafetyCacheZone *)self setAccessDataRecord:v18];
  v19 = objc_alloc(MEMORY[0x277CBC680]);
  v20 = [(SMCloudKitZone *)self zoneID];
  v21 = [v19 initWithRecordZoneID:v20];
  [(SMCloudKitZone *)self setShare:v21];

  v54 = v7;
  v55 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v69 objects:v87 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v70;
    v57 = v22;
    v56 = *v70;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v70 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v69 + 1) + 8 * i);
        v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [(SMCloudKitZone *)self zoneID];
          v60 = [v63 zoneName];
          v29 = objc_opt_class();
          v61 = NSStringFromClass(v29);
          v30 = NSStringFromSelector(a2);
          v62 = [v27 userIdentity];
          v31 = v24;
          v32 = [v62 hasiCloudAccount];
          v33 = [v27 userIdentity];
          v34 = [v33 publicSharingKey];
          *buf = 138413314;
          v78 = v60;
          v79 = 2112;
          v80 = v61;
          v81 = 2112;
          v82 = v30;
          v83 = 1024;
          v84 = v32;
          v24 = v31;
          v85 = 2112;
          v86 = v34;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,share participant,hasiCloudAccount,%d,publicSharingKey,%@", buf, 0x30u);

          v25 = v56;
          v22 = v57;
        }

        v35 = [v27 userIdentity];
        if ([v35 hasiCloudAccount])
        {
          v36 = [v27 userIdentity];
          v37 = [v36 publicSharingKey];

          if (v37)
          {
            [v27 setPermission:2];
            v38 = [(SMCloudKitZone *)self share];
            [v38 addParticipant:v27];

            [v55 addObject:v27];
          }
        }

        else
        {
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v69 objects:v87 count:16];
    }

    while (v24);
  }

  v39 = v55;
  if ([v55 count])
  {
    v40 = [(SMSafetyCacheZone *)self safetyCacheRecord];
    v74[0] = v40;
    v41 = [(SMSafetyCacheZone *)self accessDataRecord];
    v74[1] = v41;
    v42 = [(SMCloudKitZone *)self share];
    v74[2] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
    v44 = [(SMCloudKitZone *)self privateDatabase];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __66__SMSafetyCacheZone_createRecordsWithParticipants_qos_completion___block_invoke;
    v64[3] = &unk_2788CF6A8;
    v64[4] = self;
    v68 = a2;
    v10 = v52;
    v67 = v52;
    v65 = v22;
    v66 = v55;
    v8 = v53;
    [(SMCloudKitZone *)self saveRecordsWithRetry:2 records:v43 toDatabase:v44 qos:v53 withCompletion:v64];

    v39 = v55;
  }

  else
  {
    v47 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277D4ACD0];
    v75 = *MEMORY[0x277CCA450];
    v76 = @"All receivers have Manatee/iCloud services disabled";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v50 = [v47 errorWithDomain:v48 code:44 userInfo:v49];
    v10 = v52;
    (v52)[2](v52, 0, v50);

    v8 = v53;
  }

  v7 = v54;
  v45 = v51;
LABEL_28:
}

void __66__SMSafetyCacheZone_createRecordsWithParticipants_qos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v40 = a2;
  v41 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v6 = v5;
  if (v41)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v35 = [*(a1 + 32) zoneID];
      v36 = [v35 zoneName];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(*(a1 + 64));
      *buf = 138413058;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      *&buf[22] = 2112;
      v60 = v39;
      LOWORD(v61) = 2112;
      *(&v61 + 2) = v41;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) zoneID];
      v8 = [v7 zoneName];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v60 = v11;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,all records saved successfully", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__132;
    *&v61 = __Block_byref_object_dispose__132;
    *(&v61 + 1) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = v40;
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v13)
    {
      v14 = *v49;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v48 + 1) + 8 * i);
          v17 = [v16 recordID];
          v18 = [*(a1 + 32) safetyCacheRecordID];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            [*(a1 + 32) setSafetyCacheRecord:v16];
          }

          else
          {
            v20 = [v16 recordID];
            v21 = [*(a1 + 32) accessDataRecordID];
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              [*(a1 + 32) setAccessDataRecord:v16];
            }

            else
            {
              v23 = [v16 recordID];
              v24 = [*(a1 + 32) share];
              v25 = [v24 recordID];
              v26 = [v23 isEqual:v25];

              if (v26)
              {
                [*(a1 + 32) setShare:v16];
                v27 = [*(a1 + 32) share];
                v28 = [v27 participants];
                v42[0] = MEMORY[0x277D85DD0];
                v42[1] = 3221225472;
                v42[2] = __66__SMSafetyCacheZone_createRecordsWithParticipants_qos_completion___block_invoke_54;
                v42[3] = &unk_2788CF680;
                v29 = *(a1 + 64);
                v42[4] = *(a1 + 32);
                v47 = v29;
                v43 = *(a1 + 48);
                v44 = *(a1 + 40);
                v45 = buf;
                v46 = &v52;
                [v28 enumerateObjectsUsingBlock:v42];
              }
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v13);
    }

    if (v53[3])
    {
      v30 = [*(*&buf[8] + 40) copy];
      [*(a1 + 32) setInvitationTokenMap:v30];

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v31 = *(a1 + 56);
      v32 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v57 = @"None of the zone share participants have valid invitation tokens";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v34 = [v32 errorWithDomain:*MEMORY[0x277D4ACD0] code:45 userInfo:v33];
      (*(v31 + 16))(v31, 0, v34);
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __66__SMSafetyCacheZone_createRecordsWithParticipants_qos_completion___block_invoke_54(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(a1 + 32) zoneID];
      v17 = [v26 zoneName];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(*(a1 + 72));
      v21 = [v3 userIdentity];
      v22 = [v3 invitationToken];
      v25 = [v3 invitationTokenStatus];
      v23 = [v3 invitationToken];
      v24 = [v23 sharingInvitationData];
      *buf = 138413826;
      v28 = v17;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v37 = 2048;
      v38 = v25;
      v39 = 2112;
      v40 = v24;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,sessionID:%@,%@,%@,share participant ID,%@,invitation token,%@,invitation status,%ld,invitation data,%@", buf, 0x48u);
    }
  }

  if ([*(a1 + 40) containsObject:v3])
  {
    v5 = objc_alloc(MEMORY[0x277CBC2C0]);
    v6 = [v3 invitationToken];
    v7 = [v6 sharingInvitationData];
    v8 = [*(a1 + 32) share];
    v9 = [v8 URL];
    v10 = [v3 invitationToken];
    v11 = [v10 participantID];
    v12 = [v5 initWithSharingInvitationData:v7 shareURL:v9 participantID:v11];

    v13 = [*(a1 + 48) objectForKeyedSubscript:v3];
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = [v13 primaryHandle];
    [v14 setObject:v12 forKeyedSubscript:v15];

    v16 = [v3 invitationToken];
    *(*(*(a1 + 64) + 8) + 24) |= v16 != 0;
  }
}

- (void)updateSafetyCacheWithData:(id)a3 cacheReleaseTime:(id)a4 qos:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: safetyCacheData";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_7;
  }

  if (!v14)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: completion";
    goto LABEL_10;
  }

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 2;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 1;
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__132;
  v33 = __Block_byref_object_dispose__132;
  v34 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __79__SMSafetyCacheZone_updateSafetyCacheWithData_cacheReleaseTime_qos_completion___block_invoke;
  v22 = &unk_2788CF6D0;
  v26 = v35;
  v27 = buf;
  v25 = v37;
  v23 = self;
  v28 = a2;
  v24 = v14;
  v16 = _Block_copy(&v19);
  [(SMSafetyCacheZone *)self updateSafetyCacheRecordWithData:v11 qos:v13 completion:v16, v19, v20, v21, v22, v23];
  [(SMSafetyCacheZone *)self updateAccessDataRecordWithCacheReleaseTime:v12 qos:v13 completion:v16];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
LABEL_8:
}

void __79__SMSafetyCacheZone_updateSafetyCacheWithData_cacheReleaseTime_qos_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  --*(*(*(a1 + 48) + 8) + 24);
  *(*(*(a1 + 56) + 8) + 24) &= a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(*(a1 + 72));
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = 138413826;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 1024;
    v22 = a2;
    v23 = 2112;
    v24 = v6;
    v25 = 1024;
    v26 = v13;
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,result returned,%d,error,%@,pending results,%d,combined result,%d", &v15, 0x3Cu);
  }

  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchSafetyCacheRecordsWithQos:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 3;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 1;
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__132;
    v26 = __Block_byref_object_dispose__132;
    v27 = 0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __63__SMSafetyCacheZone_fetchSafetyCacheRecordsWithQos_completion___block_invoke;
    v15 = &unk_2788CF6D0;
    v19 = v28;
    v20 = buf;
    v18 = v30;
    v16 = self;
    v21 = a2;
    v17 = v8;
    v10 = _Block_copy(&v12);
    [(SMSafetyCacheZone *)self fetchSafetyCacheRecordWithQos:v7 completion:v10, v12, v13, v14, v15, v16];
    [(SMSafetyCacheZone *)self fetchAccessDataRecordWithQos:v7 completion:v10];
    [(SMSafetyCacheZone *)self fetchShareWithQos:v7 completion:v10];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __63__SMSafetyCacheZone_fetchSafetyCacheRecordsWithQos_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  --*(*(*(a1 + 48) + 8) + 24);
  *(*(*(a1 + 56) + 8) + 24) &= a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(*(a1 + 72));
    v13 = *(*(*(a1 + 48) + 8) + 24);
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v15 = 138413826;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 1024;
    v22 = a2;
    v23 = 2112;
    v24 = v6;
    v25 = 1024;
    v26 = v13;
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,result returned,%d,error,%@,pending results,%d,combined result,%d", &v15, 0x3Cu);
  }

  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (CKRecordID)safetyCacheRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [(SMCloudKitZone *)self zoneID];
  v5 = [v3 initWithRecordName:@"SafetyCache" zoneID:v4];

  return v5;
}

- (void)updateSafetyCacheRecordWithData:(id)a3 qos:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: safetyCacheData";
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_7;
  }

  if (!v11)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: completion";
    goto LABEL_9;
  }

  v13 = [(SMSafetyCacheZone *)self safetyCacheRecordID];
  v14 = [(SMCloudKitZone *)self privateDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__SMSafetyCacheZone_updateSafetyCacheRecordWithData_qos_completion___block_invoke;
  v20[3] = &unk_2788CF6F8;
  v21 = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SMSafetyCacheZone_updateSafetyCacheRecordWithData_qos_completion___block_invoke_63;
  v17[3] = &unk_2788C7BD0;
  v17[4] = self;
  v19 = a2;
  v18 = v12;
  [(SMCloudKitZone *)self updateRecord:v13 inDatabase:v14 qos:v10 usingBlock:v20 withCompletion:v17];

  v15 = v21;
LABEL_7:
}

void __68__SMSafetyCacheZone_updateSafetyCacheRecordWithData_qos_completion___block_invoke(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v4 = [*a2 encryptedValues];
    [v4 setObject:v2 forKeyedSubscript:@"PhoneSafetyCacheEncryptedData"];
  }

  else
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: recordPointer", buf, 2u);
    }
  }
}

void __68__SMSafetyCacheZone_updateSafetyCacheRecordWithData_qos_completion___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) zoneID];
      v15 = [v14 zoneName];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v19, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,saved successfully", &v19, 0x20u);
    }

    [*(a1 + 32) setSafetyCacheRecord:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSafetyCacheRecordWithQos:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(SMSafetyCacheZone *)self safetyCacheRecordID];
    v10 = [(SMCloudKitZone *)self privateDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__SMSafetyCacheZone_fetchSafetyCacheRecordWithQos_completion___block_invoke;
    v12[3] = &unk_2788C7BD0;
    v12[4] = self;
    v14 = a2;
    v13 = v8;
    [(SMCloudKitZone *)self fetchRecord:v9 fromDatabase:v10 qos:v7 withCompletion:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __62__SMSafetyCacheZone_fetchSafetyCacheRecordWithQos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) zoneID];
      v15 = [v14 zoneName];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v19, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched successfully", &v19, 0x20u);
    }

    [*(a1 + 32) setSafetyCacheRecord:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (NSData)phoneSafetyCache
{
  v3 = [(SMSafetyCacheZone *)self safetyCacheRecord];

  if (v3)
  {
    v4 = [(SMSafetyCacheZone *)self safetyCacheRecord];
    v5 = [v4 encryptedValues];
    v6 = [v5 objectForKeyedSubscript:@"PhoneSafetyCacheEncryptedData"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)watchSafetyCache
{
  v3 = [(SMSafetyCacheZone *)self safetyCacheRecord];

  if (v3)
  {
    v4 = [(SMSafetyCacheZone *)self safetyCacheRecord];
    v5 = [v4 encryptedValues];
    v6 = [v5 objectForKeyedSubscript:@"WatchSafetyCacheEncryptedData"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CKRecordID)accessDataRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [(SMCloudKitZone *)self zoneID];
  v5 = [v3 initWithRecordName:@"AccessData" zoneID:v4];

  return v5;
}

- (void)updateAccessDataRecordWithCacheReleaseTime:(id)a3 qos:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [(SMSafetyCacheZone *)self accessDataRecordID];
    v13 = [(SMCloudKitZone *)self privateDatabase];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__SMSafetyCacheZone_updateAccessDataRecordWithCacheReleaseTime_qos_completion___block_invoke;
    v18[3] = &unk_2788CF720;
    v18[4] = self;
    v19 = v9;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__SMSafetyCacheZone_updateAccessDataRecordWithCacheReleaseTime_qos_completion___block_invoke_65;
    v15[3] = &unk_2788C7BD0;
    v15[4] = self;
    v17 = a2;
    v16 = v11;
    [(SMCloudKitZone *)self updateRecord:v12 inDatabase:v13 qos:v10 usingBlock:v18 withCompletion:v15];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __79__SMSafetyCacheZone_updateAccessDataRecordWithCacheReleaseTime_qos_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 updateAccessDataRecord:a2 cacheReleaseTime:v4];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: recordPointer", v7, 2u);
    }
  }
}

void __79__SMSafetyCacheZone_updateAccessDataRecordWithCacheReleaseTime_qos_completion___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) zoneID];
      v15 = [v14 zoneName];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v19, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,saved successfully", &v19, 0x20u);
    }

    [*(a1 + 32) setAccessDataRecord:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAccessDataRecordWithQos:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(SMSafetyCacheZone *)self accessDataRecordID];
    v10 = [(SMCloudKitZone *)self privateDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SMSafetyCacheZone_fetchAccessDataRecordWithQos_completion___block_invoke;
    v12[3] = &unk_2788C7BD0;
    v12[4] = self;
    v14 = a2;
    v13 = v8;
    [(SMCloudKitZone *)self fetchRecord:v9 fromDatabase:v10 qos:v7 withCompletion:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __61__SMSafetyCacheZone_fetchAccessDataRecordWithQos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) zoneID];
      v15 = [v14 zoneName];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v19, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched successfully", &v19, 0x20u);
    }

    [*(a1 + 32) setAccessDataRecord:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchShareWithQos:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SMSafetyCacheZone_fetchShareWithQos_completion___block_invoke;
    v10[3] = &unk_2788CF748;
    v10[4] = self;
    v12 = a2;
    v11 = v7;
    [(SMCloudKitZone *)self fetchShareWithQos:a3 withCompletion:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __50__SMSafetyCacheZone_fetchShareWithQos_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) zoneID];
      v15 = [v14 zoneName];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 48));
      v19 = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,sessionID:%@,%@,%@,failed with error %@", &v19, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) zoneID];
      v10 = [v9 zoneName];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetched successfully", &v19, 0x20u);
    }

    [*(a1 + 32) setShare:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateAccessDataRecord:(id *)a3 cacheReleaseTime:(id)a4
{
  v7 = a4;
  v6 = [(SMSafetyCacheZone *)self token];
  [*a3 setObject:v6 forKeyedSubscript:@"Token"];

  [*a3 setObject:v7 forKeyedSubscript:@"CacheReleaseTime"];
}

- (NSData)allowReadToken
{
  v3 = [(SMSafetyCacheZone *)self accessDataRecord];
  if (v3 && (v4 = v3, -[SMSafetyCacheZone accessDataRecord](self, "accessDataRecord"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"Token"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEA90]);
    v8 = [(SMSafetyCacheZone *)self accessDataRecord];
    v9 = [v8 objectForKeyedSubscript:@"Token"];
    v10 = [v7 initWithBase64EncodedString:v9 options:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSDate)releaseTime
{
  v3 = [(SMSafetyCacheZone *)self accessDataRecord];
  if (v3 && (v4 = v3, -[SMSafetyCacheZone accessDataRecord](self, "accessDataRecord"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:@"CacheReleaseTime"], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(SMSafetyCacheZone *)self accessDataRecord];
    v8 = [v7 objectForKeyedSubscript:@"CacheReleaseTime"];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  }

  return v8;
}

@end