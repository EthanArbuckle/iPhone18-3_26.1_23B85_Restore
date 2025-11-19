id HKSPLogForCategory(unint64_t a1)
{
  if (a1 >= 0x16)
  {
    __assert_rtn("HKSPLogForCategory", "HKSPLogging.m", 69, "category < HKSPLogCount");
  }

  if (HKSPLogForCategory_onceToken != -1)
  {
    dispatch_once(&HKSPLogForCategory_onceToken, &__block_literal_global_3);
  }

  v2 = HKSPLogForCategory_logObjects[a1];

  return v2;
}

id HKSPSleepServerInterface()
{
  if (qword_280B06920 != -1)
  {
    dispatch_once(&qword_280B06920, &__block_literal_global_8);
  }

  v1 = _MergedGlobals_12;

  return v1;
}

id HKSPGenerateSleepStoreIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  if ([v1 length])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, v1];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

void __HKSPLogForCategory_block_invoke()
{
  for (i = 0; i != 22; ++i)
  {
    v1 = HKSPLogCategoryForCategory(i);
    v2 = os_log_create("com.apple.Sleep", v1);
    v3 = HKSPLogForCategory_logObjects[i];
    HKSPLogForCategory_logObjects[i] = v2;
  }
}

const char *HKSPLogCategoryForCategory(unint64_t a1)
{
  if (a1 >= 0x16)
  {
    __assert_rtn("HKSPLogCategoryForCategory", "HKSPLogging.m", 38, "category < HKSPLogCount");
  }

  if (a1 - 1 > 0x14)
  {
    return "default";
  }

  else
  {
    return off_279C74340[a1 - 1];
  }
}

void __HKSPCurrentDateProvider_block_invoke()
{
  v0 = qword_280B068B8;
  qword_280B068B8 = &__block_literal_global_303_0;
}

void __HKSPSleepServerInterface_block_invoke()
{
  v127[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9AFA0];
  v1 = _MergedGlobals_12;
  _MergedGlobals_12 = v0;

  v2 = _MergedGlobals_12;
  v3 = MEMORY[0x277CBEB98];
  v127[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_connectWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = _MergedGlobals_12;
  v7 = MEMORY[0x277CBEB98];
  v126 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_checkInWithSyncAnchorContainer_completion_ argumentIndex:0 ofReply:0];

  v10 = _MergedGlobals_12;
  v11 = MEMORY[0x277CBEB98];
  v125 = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_getSleepScheduleWithCompletion_ argumentIndex:0 ofReply:1];

  v14 = _MergedGlobals_12;
  v15 = MEMORY[0x277CBEB98];
  v124 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_getSleepScheduleWithCompletion_ argumentIndex:1 ofReply:1];

  v18 = _MergedGlobals_12;
  v19 = MEMORY[0x277CBEB98];
  v123 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_saveSleepSchedule_completion_ argumentIndex:0 ofReply:0];

  v22 = _MergedGlobals_12;
  v23 = MEMORY[0x277CBEB98];
  v122 = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
  v25 = [v23 setWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_saveSleepSchedule_completion_ argumentIndex:0 ofReply:1];

  v26 = _MergedGlobals_12;
  v27 = MEMORY[0x277CBEB98];
  v121 = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
  v29 = [v27 setWithArray:v28];
  [v26 setClasses:v29 forSelector:sel_getSleepSettingsWithCompletion_ argumentIndex:0 ofReply:1];

  v30 = _MergedGlobals_12;
  v31 = MEMORY[0x277CBEB98];
  v120 = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
  v33 = [v31 setWithArray:v32];
  [v30 setClasses:v33 forSelector:sel_getSleepSettingsWithCompletion_ argumentIndex:1 ofReply:1];

  v34 = _MergedGlobals_12;
  v35 = MEMORY[0x277CBEB98];
  v119 = objc_opt_class();
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
  v37 = [v35 setWithArray:v36];
  [v34 setClasses:v37 forSelector:sel_saveSleepSettings_completion_ argumentIndex:0 ofReply:0];

  v38 = _MergedGlobals_12;
  v39 = MEMORY[0x277CBEB98];
  v118 = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
  v41 = [v39 setWithArray:v40];
  [v38 setClasses:v41 forSelector:sel_saveSleepSettings_completion_ argumentIndex:0 ofReply:1];

  v42 = _MergedGlobals_12;
  v43 = MEMORY[0x277CBEB98];
  v117 = objc_opt_class();
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
  v45 = [v43 setWithArray:v44];
  [v42 setClasses:v45 forSelector:sel_getSleepEventRecordWithCompletion_ argumentIndex:0 ofReply:1];

  v46 = _MergedGlobals_12;
  v47 = MEMORY[0x277CBEB98];
  v116 = objc_opt_class();
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
  v49 = [v47 setWithArray:v48];
  [v46 setClasses:v49 forSelector:sel_getSleepEventRecordWithCompletion_ argumentIndex:1 ofReply:1];

  v50 = _MergedGlobals_12;
  v51 = MEMORY[0x277CBEB98];
  v115 = objc_opt_class();
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
  v53 = [v51 setWithArray:v52];
  [v50 setClasses:v53 forSelector:sel_saveSleepEventRecord_completion_ argumentIndex:0 ofReply:0];

  v54 = _MergedGlobals_12;
  v55 = MEMORY[0x277CBEB98];
  v114 = objc_opt_class();
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  v57 = [v55 setWithArray:v56];
  [v54 setClasses:v57 forSelector:sel_saveSleepEventRecord_completion_ argumentIndex:0 ofReply:1];

  v58 = _MergedGlobals_12;
  v59 = MEMORY[0x277CBEB98];
  v113 = objc_opt_class();
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
  v61 = [v59 setWithArray:v60];
  [v58 setClasses:v61 forSelector:sel_getSleepScheduleModelWithCompletion_ argumentIndex:0 ofReply:1];

  v62 = _MergedGlobals_12;
  v63 = MEMORY[0x277CBEB98];
  v112 = objc_opt_class();
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
  v65 = [v63 setWithArray:v64];
  [v62 setClasses:v65 forSelector:sel_getSleepScheduleModelWithCompletion_ argumentIndex:1 ofReply:1];

  v66 = _MergedGlobals_12;
  v67 = MEMORY[0x277CBEB98];
  v111 = objc_opt_class();
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
  v69 = [v67 setWithArray:v68];
  [v66 setClasses:v69 forSelector:sel_getSleepModeWithCompletion_ argumentIndex:1 ofReply:1];

  v70 = _MergedGlobals_12;
  v71 = MEMORY[0x277CBEB98];
  v110 = objc_opt_class();
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
  v73 = [v71 setWithArray:v72];
  [v70 setClasses:v73 forSelector:sel_setSleepMode_reason_completion_ argumentIndex:0 ofReply:1];

  v74 = _MergedGlobals_12;
  v75 = MEMORY[0x277CBEB98];
  v109 = objc_opt_class();
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
  v77 = [v75 setWithArray:v76];
  [v74 setClasses:v77 forSelector:sel_getSleepScheduleStateWithCompletion_ argumentIndex:1 ofReply:1];

  v78 = _MergedGlobals_12;
  v79 = MEMORY[0x277CBEB98];
  v108[0] = objc_opt_class();
  v108[1] = objc_opt_class();
  v108[2] = objc_opt_class();
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:3];
  v81 = [v79 setWithArray:v80];
  [v78 setClasses:v81 forSelector:sel_publishNotificationWithIdentifier_userInfo_completion_ argumentIndex:1 ofReply:0];

  v82 = _MergedGlobals_12;
  v83 = MEMORY[0x277CBEB98];
  v107[0] = objc_opt_class();
  v107[1] = objc_opt_class();
  v107[2] = objc_opt_class();
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:3];
  v85 = [v83 setWithArray:v84];
  [v82 setClasses:v85 forSelector:sel_publishWakeUpResultsNotificationWithCompletion_ argumentIndex:0 ofReply:1];

  v86 = _MergedGlobals_12;
  v87 = MEMORY[0x277CBEB98];
  v106[0] = objc_opt_class();
  v106[1] = objc_opt_class();
  v106[2] = objc_opt_class();
  v106[3] = objc_opt_class();
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:4];
  v89 = [v87 setWithArray:v88];
  [v86 setClasses:v89 forSelector:sel_setLockScreenOverrideState_userInfo_completion_ argumentIndex:1 ofReply:0];

  v90 = _MergedGlobals_12;
  v91 = MEMORY[0x277CBEB98];
  v105 = objc_opt_class();
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
  v93 = [v91 setWithArray:v92];
  [v90 setClasses:v93 forSelector:sel_createSleepFocusInState_completion_ argumentIndex:1 ofReply:1];

  v94 = _MergedGlobals_12;
  v95 = MEMORY[0x277CBEB98];
  v104 = objc_opt_class();
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
  v97 = [v95 setWithArray:v96];
  [v94 setClasses:v97 forSelector:sel_deleteSleepFocusModeWithCompletion_ argumentIndex:1 ofReply:1];

  v98 = _MergedGlobals_12;
  v99 = MEMORY[0x277CBEB98];
  v103 = objc_opt_class();
  v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  v101 = [v99 setWithArray:v100];
  [v98 setClasses:v101 forSelector:sel_configureSleepFocusWithState_completion_ argumentIndex:1 ofReply:1];

  v102 = *MEMORY[0x277D85DE8];
}

_HKSPQueueBackedScheduler *HKSPMainQueueBackedScheduler()
{
  v0 = [_HKSPQueueBackedScheduler alloc];
  v1 = [(_HKSPQueueBackedScheduler *)v0 initWithQueue:MEMORY[0x277D85CD0]];

  return v1;
}

id HKSPCurrentDateProvider()
{
  if (qword_280B068C0 != -1)
  {
    dispatch_once(&qword_280B068C0, &__block_literal_global_300);
  }

  v0 = MEMORY[0x26D64AA30](qword_280B068B8);

  return v0;
}

HKSPFeatureAvailabilityStore *getSleepFeatureAvailabilityProviding(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6 && ([v6 canConnectToSystemMachService] & 1) == 0)
  {
    v9 = [[HKSPFeatureAvailabilityStore alloc] initWithFeatureIdentifier:v7 sleepStore:0];
  }

  else
  {
    if (qword_280B06910 != -1)
    {
      dispatch_once(&qword_280B06910, &__block_literal_global_7);
    }

    v8 = [_MergedGlobals_11 sleepStoreForIdentifier:v5 healthStore:v6];
    if (v8)
    {
      v9 = [[HKSPFeatureAvailabilityStore alloc] initWithFeatureIdentifier:v7 sleepStore:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __getSleepFeatureAvailabilityProviding_block_invoke()
{
  _MergedGlobals_11 = +[HKSPSleepStoreCache weakCache];

  return MEMORY[0x2821F96F8]();
}

_HKSPUnfairLock *__HKSPUnfairLockGenerator_block_invoke()
{
  v0 = objc_alloc_init(_HKSPUnfairLock);

  return v0;
}

_HKSPOrderPreservingScheduler *HKSPOrderPreservingScheduler(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[_HKSPOrderPreservingScheduler alloc] initWithScheduler:v4 mutexProvider:v3];

  return v5;
}

id HKSPSleepClientInterface()
{
  if (qword_280B06930 != -1)
  {
    dispatch_once(&qword_280B06930, &__block_literal_global_385);
  }

  v1 = qword_280B06928;

  return v1;
}

_HKSPDarwinNotificationHeartbeatListener *HKSPStandardHeartbeatListener(void *a1)
{
  v1 = a1;
  v2 = [_HKSPDarwinNotificationHeartbeatListener alloc];
  v3 = [v1 lifecycleNotification];

  v4 = [(_HKSPDarwinNotificationHeartbeatListener *)v2 initWithLifecycleNotification:v3];

  return v4;
}

void __HKSPSleepClientInterface_block_invoke()
{
  v57[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A8BD78];
  v1 = qword_280B06928;
  qword_280B06928 = v0;

  v2 = qword_280B06928;
  v3 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getClientIdentifierWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = qword_280B06928;
  v7 = MEMORY[0x277CBEB98];
  v56 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_clientShouldCheckInWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = qword_280B06928;
  v11 = MEMORY[0x277CBEB98];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_sleepScheduleChanged_clientIdentifier_ argumentIndex:0 ofReply:0];

  v14 = qword_280B06928;
  v15 = MEMORY[0x277CBEB98];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_sleepScheduleChanged_clientIdentifier_ argumentIndex:1 ofReply:0];

  v18 = qword_280B06928;
  v19 = MEMORY[0x277CBEB98];
  v53 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_sleepSettingsChanged_clientIdentifier_ argumentIndex:0 ofReply:0];

  v22 = qword_280B06928;
  v23 = MEMORY[0x277CBEB98];
  v52 = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v25 = [v23 setWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_sleepSettingsChanged_clientIdentifier_ argumentIndex:1 ofReply:0];

  v26 = qword_280B06928;
  v27 = MEMORY[0x277CBEB98];
  v51 = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v29 = [v27 setWithArray:v28];
  [v26 setClasses:v29 forSelector:sel_sleepEventRecordChanged_clientIdentifier_ argumentIndex:0 ofReply:0];

  v30 = qword_280B06928;
  v31 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v33 = [v31 setWithArray:v32];
  [v30 setClasses:v33 forSelector:sel_sleepEventRecordChanged_clientIdentifier_ argumentIndex:1 ofReply:0];

  v34 = qword_280B06928;
  v35 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v37 = [v35 setWithArray:v36];
  [v34 setClasses:v37 forSelector:sel_sleepEventOccurred_ argumentIndex:0 ofReply:0];

  v38 = qword_280B06928;
  v39 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v41 = [v39 setWithArray:v40];
  [v38 setClasses:v41 forSelector:sel_sleepScheduleStateChanged_ argumentIndex:0 ofReply:0];

  v42 = qword_280B06928;
  v43 = MEMORY[0x277CBEB98];
  v47 = objc_opt_class();
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v45 = [v43 setWithArray:v44];
  [v42 setClasses:v45 forSelector:sel_sleepModeChanged_ argumentIndex:0 ofReply:0];

  v46 = *MEMORY[0x277D85DE8];
}

void sub_269A87278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269A87540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269A8783C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269A87980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_HKSPQueueBackedScheduler *HKSPQueueBackedScheduler(void *a1)
{
  v1 = a1;
  v2 = [[_HKSPQueueBackedScheduler alloc] initWithQueue:v1];

  return v2;
}

void HKSPDecodeObjectWithCoder(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_opt_class() allProperties];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) decodeValueForObject:v3 fromCoder:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id HKSPSleepSettingsProperties()
{
  v18[13] = *MEMORY[0x277D85DE8];
  v15 = MEMORY[0x277CBEB98];
  v17 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPSettingsVersion" propertyName:@"version"];
  v18[0] = v17;
  v16 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPSettingsLastModifiedDate" propertyName:@"lastModifiedDate" expectedValueClass:objc_opt_class()];
  v18[1] = v16;
  v14 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPWatchSleepFeaturesEnabled" propertyName:@"watchSleepFeaturesEnabled"];
  v18[2] = v14;
  v13 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPScheduledSleepMode" propertyName:@"scheduledSleepMode"];
  v18[3] = v13;
  v12 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPSleepModeOptions" propertyName:@"sleepModeOptions"];
  v18[4] = v12;
  v0 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPTimeInBedTracking" propertyName:@"timeInBedTracking"];
  v18[5] = v0;
  v1 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPWakeUpResults" propertyName:@"wakeUpResults"];
  v18[6] = v1;
  v2 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPSleepTracking" propertyName:@"sleepTracking"];
  v18[7] = v2;
  v3 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPBedtimeReminders" propertyName:@"bedtimeReminders"];
  v18[8] = v3;
  v4 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPChargingReminders" propertyName:@"chargingReminders"];
  v18[9] = v4;
  v5 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPShareAcrossDevices" propertyName:@"shareAcrossDevices"];
  v18[10] = v5;
  v6 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPSpringBoardGreetingDisabled" propertyName:@"springBoardGreetingDisabled"];
  v18[11] = v6;
  v7 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPSpringBoardSuggestedPageCreated" propertyName:@"springBoardSuggestedPageCreated"];
  v18[12] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:13];
  v9 = [v15 setWithArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HKSPNullify(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

id HKSPNilify(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB68] null];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

void sub_269A881C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromHKSPSleepModeOptions(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if ((a1 & 0x4000) != 0)
  {
    [v2 addObject:@".sleepScreen"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:@".hideTime"];
  }

  if ((a1 & 0x700) == 0)
  {
    [v3 addObject:@"!legacyOptions"];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:@"|"];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

uint64_t HKSPObjectsAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __HKSPObjectsAreEqual_block_invoke;
  v7[3] = &unk_279C763E0;
  v8 = v3;
  v4 = v3;
  v5 = _HKSPEquateObjectsWithBlock(v4, a2, v7);

  return v5;
}

uint64_t _HKSPEquateObjectsWithBlock(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
    {
      v8 = [MEMORY[0x277CF0C20] builder];
      v7[2](v7, v5, v6, v8);
      v9 = [v8 isEqual];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void HKSPEncodeObjectWithCoder(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_opt_class() allProperties];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) encodeValueForObject:v3 fromCoder:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

_HKSPObjectProperty *_WakeUpConfirmedUntilDateProperty()
{
  v0 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPWakeUpConfirmedUntilDate" propertyName:@"wakeUpConfirmedUntilDate" expectedValueClass:objc_opt_class()];

  return v0;
}

id HKSPSleepEventRecordProperties()
{
  v21[16] = *MEMORY[0x277D85DE8];
  v18 = MEMORY[0x277CBEB98];
  v20 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPEventRecordVersion" propertyName:@"version"];
  v21[0] = v20;
  v19 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPEventRecordLastModifiedDate" propertyName:@"lastModifiedDate" expectedValueClass:objc_opt_class()];
  v21[1] = v19;
  v17 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPWakeUpEarlyNotificationConfirmedDate" propertyName:@"wakeUpEarlyNotificationConfirmedDate" expectedValueClass:objc_opt_class()];
  v21[2] = v17;
  v16 = _WakeUpConfirmedUntilDateProperty();
  v21[3] = v16;
  v15 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPWakeUpAlarmDismissedDate" propertyName:@"wakeUpAlarmDismissedDate" expectedValueClass:objc_opt_class()];
  v21[4] = v15;
  v14 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPWakeUpOverriddenDate" propertyName:@"wakeUpOverriddenDate" expectedValueClass:objc_opt_class()];
  v21[5] = v14;
  v13 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPWakeUpAlarmSnoozedUntilDate" propertyName:@"wakeUpAlarmSnoozedUntilDate" expectedValueClass:objc_opt_class()];
  v21[6] = v13;
  v12 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPGoodMorningDismissedDate" propertyName:@"goodMorningDismissedDate" expectedValueClass:objc_opt_class()];
  v21[7] = v12;
  v0 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPSleepCoachingOnboardingFirstCompletedDate" propertyName:@"sleepCoachingOnboardingFirstCompletedDate" expectedValueClass:objc_opt_class()];
  v21[8] = v0;
  v1 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPSleepCoachingOnboardingCompletedVersion" propertyName:@"sleepCoachingOnboardingCompletedVersion"];
  v21[9] = v1;
  v2 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPSleepTrackingOnboardingFirstCompletedDate" propertyName:@"sleepTrackingOnboardingFirstCompletedDate" expectedValueClass:objc_opt_class()];
  v21[10] = v2;
  v3 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPSleepTrackingOnboardingCompletedVersion" propertyName:@"sleepTrackingOnboardingCompletedVersion"];
  v21[11] = v3;
  v4 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPSleepWindDownShortcutsOnboardingFirstCompletedDate" propertyName:@"sleepWindDownShortcutsOnboardingFirstCompletedDate" expectedValueClass:objc_opt_class()];
  v21[12] = v4;
  v5 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPSleepWindDownShortcutsOnboardingCompletedVersion" propertyName:@"sleepWindDownShortcutsOnboardingCompletedVersion"];
  v21[13] = v5;
  v6 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSent" propertyName:@"lastWakeUpResultsIntroductionNotificationVersionSent"];
  v21[14] = v6;
  v7 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPLastWakeUpResultsIntroductionNotificationVersionSentDate" propertyName:@"lastWakeUpResultsIntroductionNotificationVersionSentDate" expectedValueClass:objc_opt_class()];
  v21[15] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:16];
  v9 = [v18 setWithArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id HKSPSleepScheduleDayOccurrenceProperties()
{
  v12[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPDayOccurrenceVersion" propertyName:@"version"];
  v11[0] = v1;
  v2 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPDayOccurrenceWakeUpComponents" propertyName:@"wakeUpComponents" expectedValueClass:objc_opt_class()];
  v11[1] = v2;
  v3 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPDayOccurrenceBedtimeComponents" propertyName:@"bedtimeComponents" expectedValueClass:objc_opt_class()];
  v11[2] = v3;
  v4 = [_HKSPRelationshipProperty alloc];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [(_HKSPObjectProperty *)v4 initWithIdentifier:@"HKSPDayOccurrenceAlarm" propertyName:@"alarmConfiguration" expectedValueClasses:v5];

  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v0 setWithArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id HKSPSleepScheduleDayOccurrencePropertiesForEquivalency()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPDayOccurrenceVersion";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepScheduleDayOccurrenceProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepScheduleDayOccurrencePropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepScheduleDayOccurrencePropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

__CFString *NSStringFromHKSPSleepWidgetState(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_279C73A48[a1];
  }
}

void sub_269A8A1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKSPSleepScheduleProperties()
{
  v42[13] = *MEMORY[0x277D85DE8];
  v29 = MEMORY[0x277CBEB98];
  v33 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPScheduleVersion" propertyName:@"version"];
  v42[0] = v33;
  v32 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPScheduleLastModifiedDate" propertyName:@"lastModifiedDate" expectedValueClass:objc_opt_class()];
  v42[1] = v32;
  v31 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPScheduleEnabled" propertyName:@"enabled"];
  v42[2] = v31;
  v30 = [(HKSPProperty *)[_HKSPTimeIntervalProperty alloc] initWithIdentifier:@"HKSPWindDownTimeInterval" propertyName:@"windDownTime"];
  v42[3] = v30;
  v28 = [(HKSPProperty *)[_HKSPTimeIntervalProperty alloc] initWithIdentifier:@"HKSPSleepDurationGoal" propertyName:@"sleepDurationGoal"];
  v42[4] = v28;
  v0 = [_HKSPRelationshipProperty alloc];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v26 = [(_HKSPObjectProperty *)v0 initWithIdentifier:@"HKSPMondayOccurrence" propertyName:@"mondayOccurrence" expectedValueClasses:v27];
  v42[5] = v26;
  v1 = [_HKSPRelationshipProperty alloc];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v24 = [(_HKSPObjectProperty *)v1 initWithIdentifier:@"HKSPTuesdayOccurrence" propertyName:@"tuesdayOccurrence" expectedValueClasses:v25];
  v42[6] = v24;
  v2 = [_HKSPRelationshipProperty alloc];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v22 = [(_HKSPObjectProperty *)v2 initWithIdentifier:@"HKSPWednesdayOccurrence" propertyName:@"wednesdayOccurrence" expectedValueClasses:v23];
  v42[7] = v22;
  v3 = [_HKSPRelationshipProperty alloc];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v20 = [(_HKSPObjectProperty *)v3 initWithIdentifier:@"HKSPThursdayOccurrence" propertyName:@"thursdayOccurrence" expectedValueClasses:v21];
  v42[8] = v20;
  v4 = [_HKSPRelationshipProperty alloc];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v5 = [(_HKSPObjectProperty *)v4 initWithIdentifier:@"HKSPFridayOccurrence" propertyName:@"fridayOccurrence" expectedValueClasses:v19];
  v42[9] = v5;
  v6 = [_HKSPRelationshipProperty alloc];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v8 = [(_HKSPObjectProperty *)v6 initWithIdentifier:@"HKSPSaturdayOccurrence" propertyName:@"saturdayOccurrence" expectedValueClasses:v7];
  v42[10] = v8;
  v9 = [_HKSPRelationshipProperty alloc];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v11 = [(_HKSPObjectProperty *)v9 initWithIdentifier:@"HKSPSundayOccurrence" propertyName:@"sundayOccurrence" expectedValueClasses:v10];
  v42[11] = v11;
  v12 = [_HKSPRelationshipProperty alloc];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v14 = [(_HKSPObjectProperty *)v12 initWithIdentifier:@"HKSPOverrideOccurrence" propertyName:@"overrideDayOccurrence" expectedValueClasses:v13];
  v42[12] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:13];
  v16 = [v29 setWithArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id HKSPSleepSchedulePropertiesForEquivalency()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPScheduleVersion";
  v10[1] = @"HKSPScheduleLastModifiedDate";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepScheduleProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepSchedulePropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepSchedulePropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPSleepSchedulePropertiesForSignificance()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPScheduleVersion";
  v10[1] = @"HKSPScheduleLastModifiedDate";
  v10[2] = @"HKSPSleepDurationGoal";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepScheduleProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepSchedulePropertiesForSignificance_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepSchedulePropertiesForSignificance_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t HKSPIsCharging()
{
  v0 = [MEMORY[0x277CBEBD0] hksp_sleepdUserDefaults];
  v1 = [v0 objectForKey:@"HKSPSimulatedOnCharger"];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = IOPSDrawingUnlimitedPower();
  }

  v3 = v2;

  return v3;
}

float HKSPBatteryLevel()
{
  v0 = [MEMORY[0x277CBEBD0] hksp_sleepdUserDefaults];
  v1 = [v0 objectForKey:@"HKSPSimulatedBatteryLevel"];

  if (v1)
  {
    [v1 floatValue];
    v3 = v2;
  }

  else
  {
    IOPSGetPercentRemaining();
    v3 = 0 / 100.0;
  }

  return v3;
}

_HKSPDarwinNotificationHeartbeatGenerator *HKSPStandardHeartbeatGenerator(void *a1)
{
  v1 = a1;
  v2 = [_HKSPDarwinNotificationHeartbeatGenerator alloc];
  v3 = [v1 lifecycleNotification];

  v4 = [(_HKSPDarwinNotificationHeartbeatGenerator *)v2 initWithLifecycleNotification:v3];

  return v4;
}

uint64_t HKSPAnalyticsEventsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 conformsToProtocol:&unk_287A827F0] && objc_msgSend(v4, "conformsToProtocol:", &unk_287A827F0))
  {
    v5 = [v3 eventName];
    v6 = [v4 eventName];
    if ([v5 isEqualToString:v6])
    {
      v7 = [v3 eventPayload];
      v8 = [v4 eventPayload];
      v9 = [v7 isEqualToDictionary:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t HKSPAnalyticsEventHash(void *a1)
{
  v1 = a1;
  v2 = [v1 eventName];
  v3 = [v2 hash];
  v4 = [v1 eventPayload];

  v5 = [v4 hksp_hash];
  return v5 ^ v3;
}

uint64_t HKSPIsHomePod()
{
  if (qword_280B068B0 != -1)
  {
    dispatch_once(&qword_280B068B0, &__block_literal_global_2);
  }

  return _MergedGlobals_8;
}

uint64_t __HKSPIsHomePod_block_invoke()
{
  result = MGGetProductType();
  if (result == 4240173202 || result == 2702125347)
  {
    _MergedGlobals_8 = 1;
  }

  return result;
}

id HKSPLocalizedString(void *a1)
{
  v1 = qword_280B068D0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_280B068D0, &__block_literal_global_306);
  }

  v3 = [qword_280B068C8 localizedStringForKey:v2 value:&stru_287A719F0 table:@"Localizable"];

  return v3;
}

uint64_t __HKSPLocalizedString_block_invoke()
{
  qword_280B068C8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Sleep"];

  return MEMORY[0x2821F96F8]();
}

uint64_t HKSPIsValidDate(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CBEAA8] distantPast];
    if ([v1 isEqualToDate:v2])
    {
      v3 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CBEAA8] distantFuture];
      v3 = [v1 isEqualToDate:v4] ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id HKSPWatchKitApplicationLaunchURL(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  v15 = @"uai";
  v16[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  if (v3)
  {
    v14 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v14];
    v5 = v14;
    if (!v4)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData * _Nonnull _serializeObject(id  _Nonnull __strong)"];
      [v12 handleFailureInFunction:v13 file:@"HKSPUtilities.m" lineNumber:91 description:{@"Failed to archive object. Got error %@, object: %@", v5, v3}];
    }
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length])
  {
    v6 = [v4 base64EncodedStringWithOptions:0];
    if (qword_280B068E0 != -1)
    {
      dispatch_once(&qword_280B068E0, &__block_literal_global_338);
    }

    v7 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:qword_280B068D8];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:///%@?userActivity=%@", @"watchkit", @"nativecomplication", v7];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t HKSPAnalyticsSleepScheduleChangeApplicationFromValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
    if ((v3 - 1) >= 4)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HKSPAnalyticsScheduleChangeContext(void *a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"HKSPAnalyticsSleepScheduleChangeProvenanceInfo";
  v9[1] = @"HKSPAnalyticsSleepScheduleChangeApplication";
  v10[0] = a1;
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:a2];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_269A943C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHKSPSleepMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C740F8[a1];
  }
}

__CFString *NSStringFromHKSPSleepModeChangeReason(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C74110[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269A95B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269A95C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269A95D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _HKSPDeserializedObject(void *a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v5 hksp_isSerialized])
  {
    v9 = v5;
LABEL_8:
    v9 = v9;
    v12 = v9;
    goto LABEL_9;
  }

  v7 = [[HKSPDictionaryDeserializer alloc] initWithAllowedClasses:v6 serializedDictionary:v5 serializationOptions:0];
  v8 = [v5 hksp_serializedClassName];
  v15 = 0;
  v9 = [(HKSPDictionaryDeserializer *)v7 deserializeObjectOfClass:NSClassFromString(v8) error:&v15];
  v10 = v15;

  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = HKSPLogForCategory(6uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_269A84000, v11, OS_LOG_TYPE_ERROR, "[HKSPObject] failed to deserialize %{public}@ with error %{public}@", buf, 0x16u);
  }

  *a3 = 1;
  v12 = 0;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

HKSPChangeSet *HKSPGenerateChangeSetBetweenObjects(void *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v6 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "[HKSPObject] objects must be non-nil";
      goto LABEL_28;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = HKSPLogForCategory(6uLL);
      if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v27 = "[HKSPObject] objects must be of the same class";
LABEL_28:
        _os_log_error_impl(&dword_269A84000, &v6->super.super, OS_LOG_TYPE_ERROR, v27, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v6 = [[HKSPDictionarySerializer alloc] initWithSerializationOptions:0];
  v44 = 0;
  v7 = [(HKSPDictionarySerializer *)v6 serialize:v3 error:&v44];
  v8 = v44;
  if (v8)
  {
    v9 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v46 = v3;
      v47 = 2114;
      v48 = v8;
      _os_log_error_impl(&dword_269A84000, v9, OS_LOG_TYPE_ERROR, "[HKSPObject] failed to serialize %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v10 = [(HKSPDictionarySerializer *)v6 serializedDictionary];
    v11 = [v10 hksp_serializedProperties];

    v43 = 0;
    v12 = [(HKSPDictionarySerializer *)v6 serialize:v5 error:&v43];
    v8 = v43;
    if (v8)
    {
      v13 = HKSPLogForCategory(6uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v46 = v5;
        v47 = 2114;
        v48 = v8;
        _os_log_error_impl(&dword_269A84000, v13, OS_LOG_TYPE_ERROR, "[HKSPObject] failed to serialize %{public}@ with error %{public}@", buf, 0x16u);
      }
    }

    if (v12)
    {
      v14 = [(HKSPDictionarySerializer *)v6 serializedDictionary];
      v15 = [v14 hksp_serializedProperties];

      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = [objc_opt_class() allProperties];
      v18 = HKSPPropertiesByIdentifier(v17);

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __HKSPGenerateChangeSetBetweenObjects_block_invoke;
      v38[3] = &unk_279C74460;
      v19 = v6;
      v39 = v19;
      v40 = v15;
      v20 = v18;
      v41 = v20;
      v21 = v16;
      v42 = v21;
      v22 = v15;
      [v11 enumerateKeysAndObjectsUsingBlock:v38];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __HKSPGenerateChangeSetBetweenObjects_block_invoke_2;
      v33 = &unk_279C74460;
      v34 = v11;
      v35 = v19;
      v36 = v20;
      v37 = v21;
      v23 = v21;
      v24 = v20;
      [v22 enumerateKeysAndObjectsUsingBlock:&v30];
      v25 = [HKSPChangeSet alloc];
      v26 = [(HKSPChangeSet *)v25 initWithChangeDictionary:v23, v30, v31, v32, v33];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_24:
  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

void __HKSPGenerateChangeSetBetweenObjects_block_invoke(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = a2;
  v7 = a1[4];
  v8 = a3;
  v9 = [v7 serializedClasses];
  v10 = _HKSPDeserializedObject(v8, v9, a4);

  if ((*a4 & 1) == 0)
  {
    v11 = [a1[5] objectForKeyedSubscript:v22];
    v12 = [a1[4] serializedClasses];
    v13 = _HKSPDeserializedObject(v11, v12, a4);

    if ((*a4 & 1) == 0 && (NAEqualObjects() & 1) == 0)
    {
      v14 = v10;
      v15 = v13;
      v13 = v15;
      if ([v14 conformsToProtocol:&unk_287A88888])
      {
        v13 = v15;
        if ([v15 conformsToProtocol:&unk_287A88888])
        {
          v16 = HKSPGenerateChangeSetBetweenObjects(v14, v15);
          v13 = [v14 mutableCopy];
          HKSPApplyChangesToObject(v13, v16);
        }
      }

      v17 = [a1[6] objectForKeyedSubscript:v22];
      v18 = [v17 isRelationshipProperty];
      v19 = off_279C73598;
      if (!v18)
      {
        v19 = off_279C734F8;
      }

      v20 = *v19;
      v21 = [objc_alloc(objc_opt_class()) initWithProperty:v17 changedValue:v13 originalValue:v14];
      [a1[7] setObject:v21 forKeyedSubscript:v22];
    }
  }
}

void __HKSPGenerateChangeSetBetweenObjects_block_invoke_2(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = [a1[4] objectForKeyedSubscript:v16];
  if (!v8)
  {
    v9 = [a1[5] serializedClasses];
    v10 = _HKSPDeserializedObject(v7, v9, a4);

    if ((*a4 & 1) == 0)
    {
      v11 = [a1[6] objectForKeyedSubscript:v16];
      v12 = [v11 isRelationshipProperty];
      v13 = off_279C73598;
      if (!v12)
      {
        v13 = off_279C734F8;
      }

      v14 = *v13;
      v15 = [objc_alloc(objc_opt_class()) initWithProperty:v11 changedValue:v10 originalValue:0];
      [a1[7] setObject:v15 forKeyedSubscript:v16];
    }
  }
}

_HKSPDefaultScheduleProvider *HKSPDefaultScheduleProvider()
{
  v0 = objc_alloc_init(_HKSPDefaultScheduleProvider);

  return v0;
}

void HKSPPowerLog(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = HKSPLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_INFO, "[HKSPPowerLog] eventName: %{public}@ eventData: %{public}@", &v7, 0x16u);
  }

  PLLogRegisteredEvent();
  v6 = *MEMORY[0x277D85DE8];
}

void sub_269A994A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269A99664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269A99860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id HKSPAlarmConfigurationProperties()
{
  v13[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPAlarmVersion" propertyName:@"version"];
  v13[0] = v1;
  v2 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPAlarmEnabled" propertyName:@"enabled"];
  v13[1] = v2;
  v3 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPAlarmAllowsSnooze" propertyName:@"allowsSnooze"];
  v13[2] = v3;
  v4 = [(HKSPProperty *)[_HKSPTimeIntervalProperty alloc] initWithIdentifier:@"HKSPAlarmSnoozeDuration" propertyName:@"snoozeDuration"];
  v13[3] = v4;
  v5 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPAlarmSilentModeOptions" propertyName:@"breaksThroughSilentModeOptions"];
  v13[4] = v5;
  v6 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPAlarmToneIdentifier" propertyName:@"toneIdentifier" expectedValueClass:objc_opt_class()];
  v13[5] = v6;
  v7 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPAlarmVibrationIdentifier" propertyName:@"vibrationIdentifier" expectedValueClass:objc_opt_class()];
  v13[6] = v7;
  v8 = [[_HKSPObjectProperty alloc] initWithIdentifier:@"HKSPAlarmSoundVolume" propertyName:@"soundVolume" expectedValueClass:objc_opt_class()];
  v13[7] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:8];
  v10 = [v0 setWithArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id HKSPAlarmConfigurationPropertiesForEquivalency()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPAlarmVersion";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPAlarmConfigurationProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPAlarmConfigurationPropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPAlarmConfigurationPropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPAlarmConfigurationPropertiesForSignificance()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPAlarmEnabled";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPAlarmConfigurationProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPAlarmConfigurationPropertiesForSignificance_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPAlarmConfigurationPropertiesForSignificance_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id HKSPSleepURLWithOptionsFromSource(void *a1, char a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCDD30] sharedBehavior];
  v11 = [v10 isDeviceSupported];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v13 = [MEMORY[0x277CCDD30] sharedBehavior];
    v14 = [v13 isAppleWatch];

    if (v14)
    {
      [v12 setScheme:@"nanosleep"];
      v15 = @"com.apple.NanoSleep.watchkitapp";
    }

    else
    {
      [v12 setScheme:*MEMORY[0x277CCC188]];
      v15 = @"SleepHealthAppPlugin.healthplugin";
    }

    [v12 setHost:v15];
    v17 = &stru_287A719F0;
    if (v7)
    {
      v17 = v7;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v17];
    [v12 setPath:v18];

    v19 = objc_alloc(MEMORY[0x277CBEB18]);
    v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"source" value:v8];
    v29[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    v22 = [v19 initWithArray:v21];

    if (v9)
    {
      v23 = [MEMORY[0x277CCAD18] queryItemWithName:@"presentation" value:v9];
      [v22 addObject:v23];
    }

    v24 = [(__CFString *)v7 isEqualToString:@"viewSchedule"];
    if ((a2 & 2) != 0 && v24)
    {
      v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"delayScrollToSchedule" value:@"1"];
      [v22 addObject:v25];
    }

    v26 = [v22 copy];
    [v12 setQueryItems:v26];

    v16 = [v12 URL];
  }

  else
  {
    v16 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v16;
}

id HKSPSleepURLWithProvenanceInfo(void *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [v5 source];
  v8 = [v5 presentation];

  v9 = HKSPSleepURLWithOptionsFromSource(v6, a2, v7, v8);

  return v9;
}

uint64_t HKSPIsRemoveSpacesForTimeFormatEnabled()
{
  v0 = HKSPLocalizedString(@"ENABLE_REMOVE_SPACES_FOR_TIME_FORMAT");
  v1 = [v0 isEqualToString:@"1"];

  return v1;
}

__CFString *NSStringFromHKSPDevice(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        return @"Phone";
      case 2:
        return @"Watch";
      case 3:
        return @"iPod";
    }

    return @"Other";
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      return @"Reality";
    }

    return @"Other";
  }

  if (a1 == 4)
  {
    return @"iPad";
  }

  else
  {
    return @"Mac";
  }
}

uint64_t HKSPIsUnitTesting()
{
  if (qword_280B06900 != -1)
  {
    dispatch_once(&qword_280B06900, &__block_literal_global_6);
  }

  return _MergedGlobals_10;
}

Class __HKSPIsUnitTesting_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctest.isa);
  _MergedGlobals_10 = result != 0;
  return result;
}

void sub_269AA1F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AA24E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HKSPSleepLockScreenClientInterface()
{
  if (qword_280B06940 != -1)
  {
    dispatch_once(&qword_280B06940, &__block_literal_global_424);
  }

  v1 = qword_280B06938;

  return v1;
}

void __HKSPSleepLockScreenClientInterface_block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9B060];
  v1 = qword_280B06938;
  qword_280B06938 = v0;

  v2 = qword_280B06938;
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_setLockScreenState_userInfo_ argumentIndex:1 ofReply:0];

  v6 = *MEMORY[0x277D85DE8];
}

id HKSPSleepLockScreenRemoteContentHostInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9B138];
  [v0 setXPCType:MEMORY[0x277D86468] forSelector:sel_getContentBoundsWithReplyBlock_ argumentIndex:0 ofReply:1];

  return v0;
}

id HKSPSleepLockScreenRemoteContentServiceInterface()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9B238];
  v1 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v3 = [v1 setWithArray:{v2, v7, v8}];
  [v0 setClasses:v3 forSelector:sel_configureWithUserInfo_contentBounds_endpoint_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277D86468];
  [v0 setXPCType:MEMORY[0x277D86468] forSelector:sel_configureWithUserInfo_contentBounds_endpoint_ argumentIndex:1 ofReply:0];
  [v0 setXPCType:MEMORY[0x277D86478] forSelector:sel_configureWithUserInfo_contentBounds_endpoint_ argumentIndex:2 ofReply:0];
  [v0 setXPCType:v4 forSelector:sel_getInlinePresentationContentFrameWithReplyBlock_ argumentIndex:0 ofReply:1];
  v5 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_269AA6718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AA84C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269AA8A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id HKSPSleepScheduleWrapWithSyncAnchor(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 objectWithSyncAnchor:a2];
  }

  else
  {
    [HKSPSleepSchedule emptyScheduleWithSyncAnchor:a2];
  }
  v2 = ;

  return v2;
}

void *HKSPSleepScheduleUnwrap(void *a1)
{
  v1 = a1;
  if ([v1 isEmptySleepSchedule])
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v2;
}

void sub_269AAC830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_269AACB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269AAD9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269AAE750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_269AAF094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_269AAF9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_269AB0454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AB0BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AB1518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHKSPAlarmSource(uint64_t a1)
{
  v1 = @"Local";
  if (a1 == 1)
  {
    v1 = @"NanoSync";
  }

  if (a1 == 2)
  {
    return @"CloudSync";
  }

  else
  {
    return v1;
  }
}

void sub_269ABCC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269ABD280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ABD844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269ABDBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269ABE2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ABE3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHSTimelineController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HKSPSleepWidgetManager.m" lineNumber:21 description:{@"Unable to find class %s", "CHSTimelineController"}];

    __break(1u);
  }
}

void ChronoServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ChronoServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279C75858;
    v6 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"HKSPSleepWidgetManager.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCHSWidgetServiceClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHSWidgetService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHSWidgetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCHSWidgetServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HKSPSleepWidgetManager.m" lineNumber:22 description:{@"Unable to find class %s", "CHSWidgetService"}];

    __break(1u);
  }
}

_HKSPUserDefaultsStatePersistence *HKSPUserDefaultsStatePersistence()
{
  v0 = [_HKSPUserDefaultsStatePersistence alloc];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [(_HKSPUserDefaultsStatePersistence *)v0 initWithUserDefaults:v1];

  return v2;
}

void sub_269AC40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HKSPSleepSettingsPropertiesForPersist()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = HKSPSleepSettingsProperties();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __HKSPSleepSettingsPropertiesForPersist_block_invoke;
  v5[3] = &unk_279C73A28;
  v6 = v0;
  v2 = v0;
  v3 = [v1 na_filter:v5];

  return v3;
}

uint64_t __HKSPSleepSettingsPropertiesForPersist_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPSleepSettingsPropertiesForSync()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"HKSPShareAcrossDevices"];
  v1 = HKSPSleepSettingsPerGizmoProperties();
  v2 = [v1 na_map:&__block_literal_global_16];
  [v0 unionSet:v2];

  v3 = HKSPSleepSettingsPropertiesForPersist();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __HKSPSleepSettingsPropertiesForSync_block_invoke_2;
  v7[3] = &unk_279C73A28;
  v8 = v0;
  v4 = v0;
  v5 = [v3 na_filter:v7];

  return v5;
}

id HKSPSleepSettingsPerGizmoProperties()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPWatchSleepFeaturesEnabled" propertyName:@"watchSleepFeaturesEnabled"];
  v2 = [v0 setWithObject:v1];

  return v2;
}

uint64_t __HKSPSleepSettingsPropertiesForSync_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPSleepSettingsPropertiesForEquivalency()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPSettingsVersion";
  v10[1] = @"HKSPSettingsLastModifiedDate";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepSettingsProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepSettingsPropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepSettingsPropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPSleepSettingsPropertiesForSignificance()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v1 isAppleWatch])
  {
    v11[0] = @"HKSPWatchSleepFeaturesEnabled";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v3 = [v0 setWithArray:v2];
  }

  else
  {
    v3 = [v0 setWithArray:MEMORY[0x277CBEBF8]];
  }

  v4 = HKSPSleepSettingsProperties();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __HKSPSleepSettingsPropertiesForSignificance_block_invoke;
  v9[3] = &unk_279C73A28;
  v10 = v3;
  v5 = v3;
  v6 = [v4 na_filter:v9];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __HKSPSleepSettingsPropertiesForSignificance_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id HKSPSleepSettingsDefaultValues()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPWatchSleepFeaturesEnabled" propertyName:@"watchSleepFeaturesEnabled"];
  v6[0] = v0;
  v1 = MEMORY[0x277CBEC38];
  v7[0] = MEMORY[0x277CBEC38];
  v2 = [(HKSPProperty *)[_HKSPBoolProperty alloc] initWithIdentifier:@"HKSPShareAcrossDevices" propertyName:@"shareAcrossDevices"];
  v6[1] = v2;
  v7[1] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_269AC59F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269AC5C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC5F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC6138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC6470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC6A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC71B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AC9E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269ACA198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ACB570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_269ACBA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 - 128));
  _Unwind_Resume(a1);
}

void sub_269ACBFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269ACC270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_269ACC578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ACC9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ACCB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269ACD098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_HKSPImmediateScheduler *HKSPImmediateScheduler()
{
  v0 = objc_alloc_init(_HKSPImmediateScheduler);

  return v0;
}

_HKSPQueueBackedScheduler *HKSPSerialQueueBackedSchedulerWithQoS(void *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);
  v6 = a1;

  v7 = [v6 UTF8String];
  v8 = dispatch_queue_create(v7, v5);
  v9 = [[_HKSPQueueBackedScheduler alloc] initWithQueue:v8];

  return v9;
}

id HKSPDispatchQueueName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [objc_opt_class() isEqual:v3];
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = v8;
    v10 = @".";
    v11 = &stru_287A719F0;
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v10 = &stru_287A719F0;
    }

    if (v5)
    {
      [v6 stringWithFormat:@"com.apple.sleep.%@%@%@", v8, v10, v11, v15];
    }

    else
    {
      [v6 stringWithFormat:@"com.apple.sleep.%@%@%@.%p", v8, v10, v11, v3];
    }
    v13 = ;
  }

  else
  {
    v12 = &stru_287A719F0;
    if (v4)
    {
      v12 = v4;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.sleep.%@", v12];
  }

  return v13;
}

void HKSPResetUserDefaults(void *a1)
{
  v1 = a1;
  v5 = [v1 hksp_dictionaryRepresentation];
  v2 = MEMORY[0x277CBEB98];
  v3 = [v5 allKeys];
  v4 = [v2 setWithArray:v3];
  [v1 hksp_removeObjectsForKeys:v4];

  [v1 hksp_synchronize];
}

void sub_269ACE5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromHKSPAlarmSilentModeOptions(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C75F98[a1 - 1];
  }
}

id HKSPSleepEventRecordPropertiesForEquivalency()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPEventRecordVersion";
  v10[1] = @"HKSPEventRecordLastModifiedDate";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepEventRecordProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepEventRecordPropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepEventRecordPropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id HKSPSleepEventRecordPropertiesForSignificance()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = _WakeUpConfirmedUntilDateProperty();
  v2 = [v0 setWithObject:v1];

  return v2;
}

__CFString *NSStringFromHKSPSleepLockScreenState(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C76038[a1];
  }
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269AD42A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_269AD60F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKSPWeekdaysFromDay(uint64_t a1)
{
  if ((a1 + 2) > 9)
  {
    return 0;
  }

  else
  {
    return qword_269AE6420[a1 + 2];
  }
}

uint64_t HKSPDayForWeekdays(uint64_t result)
{
  if (result > 15)
  {
    if (result <= 63)
    {
      if (result == 16)
      {
        return 6;
      }

      if (result == 32)
      {
        return 7;
      }
    }

    else
    {
      switch(result)
      {
        case 0x40:
          return 1;
        case 0x7FLL:
          return -1;
        case 0xFFFFFFFFLL:
          return -2;
      }
    }
  }

  else if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      return 2;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        return 3;
      case 4:
        return result;
      case 8:
        return 5;
    }
  }

  return 0;
}

void HKSPEnumerateWeekdays(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 != 0xFFFFFFFFLL)
  {
    v5 = 0;
    for (i = 1; ; i *= 2)
    {
      if ((i & a1) != 0)
      {
        v3[2](v3, i, &v5);
        if (i > 0x20 || (v5 & 1) != 0)
        {
          break;
        }
      }

      else if (i > 0x20)
      {
        break;
      }
    }
  }
}

void HKSPWeekdaysEnumerateDays(uint64_t a1, void *a2, char a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a2;
  v7 = [v5 hk_gregorianCalendar];
  HKSPWeekdaysEnumerateDaysInCalendar(v7, a1, v6, a3);
}

void HKSPWeekdaysEnumerateDaysInCalendar(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = v7;
  if (a2 != 0xFFFFFFFFLL)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __HKSPWeekdaysEnumerateDaysInCalendar_block_invoke;
    v9[3] = &unk_279C761A0;
    v11 = a2;
    v10 = v7;
    HKSPEnumerateDaysOfWeekInCalendar(a1, v9, a4);
  }
}

void HKSPEnumerateDaysOfWeekInCalendar(void *a1, void *a2, char a3)
{
  v6 = a2;
  if ((a3 & 2) != 0)
  {
    v5 = [a1 firstWeekday];
  }

  else
  {
    v5 = [a1 hksp_firstNonWeekendDay];
  }

  HKSPEnumerateDaysOfWeekStartingOnDay(v5, v6, a3);
}

uint64_t __HKSPWeekdaysEnumerateDaysInCalendar_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  result = HKSPWeekdaysFromDay(a2);
  if ((result & v3) != 0)
  {
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

void HKSPEnumerateDaysOfWeek(void *a1, char a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 hk_gregorianCalendar];
  HKSPEnumerateDaysOfWeekInCalendar(v5, v4, a2);
}

uint64_t HKSPEnumerateDaysOfWeekStartingOnDay(uint64_t result, uint64_t a2, char a3)
{
  v9 = 0;
  v3 = *MEMORY[0x277CCBC00];
  if (*MEMORY[0x277CCBC00])
  {
    v5 = result;
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 7;
    }

    if (a3)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (a3)
    {
      v8 = 7;
    }

    else
    {
      v8 = 1;
    }

    do
    {
      result = (*(a2 + 16))(a2, v5, &v9);
      if (v9)
      {
        break;
      }

      if (v5 == v6)
      {
        v5 = v8;
      }

      else
      {
        v5 += v7;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t HKSPPreviousDay(uint64_t a1)
{
  if (a1 == 1)
  {
    return 7;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t HKSPNextDay(uint64_t a1)
{
  if (a1 == 7)
  {
    return 1;
  }

  else
  {
    return a1 + 1;
  }
}

uint64_t HKSPPreviousDayInWeekdays(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __HKSPPreviousDayInWeekdays_block_invoke;
  v8 = &unk_279C74B28;
  v9 = &v11;
  v10 = a2;
  v15 = 0;
  v3 = *MEMORY[0x277CCBC00];
  if (*MEMORY[0x277CCBC00])
  {
    if (a1 == 1)
    {
      v4 = 7;
    }

    else
    {
      v4 = a1 - 1;
    }

    do
    {
      v7(v6, v4, &v15);
      if (v15)
      {
        break;
      }

      if (v4 == 1)
      {
        v4 = 7;
      }

      else
      {
        --v4;
      }

      --v3;
    }

    while (v3);
    v2 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  return v2;
}

void sub_269AD7840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSPPreviousDayInWeekdays_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = HKSPWeekdaysFromDay(a2);
  if ((*(a1 + 40) & result) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

unint64_t HKSPWeekdaysShiftBackOneDay(unint64_t result)
{
  v1 = ((result & 1) << 6) | (result >> 1);
  if (result == 0xFFFFFFFF)
  {
    v1 = 0xFFFFFFFFLL;
  }

  if (result)
  {
    return v1;
  }

  return result;
}

__CFString *NSStringFromHKSPWeekdays(uint64_t a1)
{
  switch(a1)
  {
    case 127:
      v2 = @"Every Day";

      break;
    case 96:
      v2 = @"Weekends";

      break;
    case 31:
      v2 = @"Weekdays";

      break;
    default:
      v2 = HKSPIdentifierStringForWeekdays(a1);

      break;
  }

  return v2;
}

id HKSPIdentifierStringForWeekdays(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __HKSPIdentifierStringForWeekdays_block_invoke;
  v5[3] = &unk_279C73B08;
  v3 = v2;
  v6 = v3;
  HKSPWeekdaysEnumerateDays(a1, v5, 0);

  return v3;
}

void __HKSPIdentifierStringForWeekdays_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = NSStringForHKSPDay(a2);
  [v2 appendString:v3];
}

__CFString *NSStringForHKSPDay(uint64_t a1)
{
  if ((a1 + 2) > 9)
  {
    return @"M";
  }

  else
  {
    return off_279C762B0[a1 + 2];
  }
}

uint64_t NSGregorianCalendarDayForHKSPDay(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return 0;
  }

  return result;
}

uint64_t HKSPDayForNSGregorianCalendarDay(uint64_t result)
{
  if ((result - 1) >= 7)
  {
    return 0;
  }

  return result;
}

id NSGregorianCalendarDaysForWeekdays(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __NSGregorianCalendarDaysForWeekdays_block_invoke;
  v6[3] = &unk_279C761C8;
  v7 = v2;
  v3 = v2;
  HKSPEnumerateWeekdays(a1, v6);
  v4 = [v3 copy];

  return v4;
}

uint64_t __NSGregorianCalendarDaysForWeekdays_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = HKSPDayForWeekdays(a2);
  if ((v3 - 1) >= 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return [v2 addIndex:v4];
}

id HKSPDaysForWeekdays(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = HKSPDaysForWeekdaysInCalendar(a1, v2);

  return v3;
}

id HKSPDaysForWeekdaysInCalendar(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAB58];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __HKSPDaysForWeekdaysInCalendar_block_invoke;
  v9[3] = &unk_279C73B08;
  v10 = v5;
  v6 = v5;
  HKSPWeekdaysEnumerateDaysInCalendar(v4, a1, v9, 0);

  v7 = [v6 copy];

  return v7;
}

uint64_t HKSPWeekdaysAreConsecutive(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7 = HKSPWeekdaysAreConsecutiveInCalendar(v6, a1, a2, a3);

  return v7;
}

uint64_t HKSPWeekdaysAreConsecutiveInCalendar(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (a2 && a2 != 0xFFFFFFFFLL)
  {
    if (a2 == 127)
    {
      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = 0;
      }

LABEL_13:
      v9 = 1;
      goto LABEL_20;
    }

    if ((a2 & (a2 - 1)) == 0)
    {
      if (a3)
      {
        *a3 = a2;
      }

      if (a4)
      {
        *a4 = a2;
      }

      goto LABEL_13;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __HKSPWeekdaysAreConsecutiveInCalendar_block_invoke;
    v11[3] = &unk_279C761F0;
    v11[4] = &v16;
    v11[5] = &v12;
    v11[6] = &v20;
    v11[7] = a2;
    HKSPWeekdaysEnumerateDaysInCalendar(v7, a2, v11, 0);
    v9 = *(v21 + 24);
    if (v9 == 1)
    {
      if (a3)
      {
        *a3 = v17[3];
      }

      if (a4)
      {
        *a4 = v13[3];
      }
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

LABEL_20:

  return v9;
}

void sub_269AD7F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __HKSPWeekdaysAreConsecutiveInCalendar_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = 1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __HKSPWeekdaysAreConsecutiveInCalendar_block_invoke_2;
  v12 = &unk_279C761F0;
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[5];
  v13 = v17;
  v14 = v4;
  v15 = v6;
  v16 = v5;
  v19 = 0;
  v7 = *MEMORY[0x277CCBC00];
  if (*MEMORY[0x277CCBC00])
  {
    v8 = a2;
    do
    {
      v11(v10, v8, &v19);
      if (v19)
      {
        break;
      }

      if (v8 == 7)
      {
        v8 = 1;
      }

      else
      {
        ++v8;
      }

      --v7;
    }

    while (v7);
    v4 = a1[6];
  }

  if (*(*(v4 + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  _Block_object_dispose(v17, 8);
}

void sub_269AD8070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSPWeekdaysAreConsecutiveInCalendar_block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = a1[7];
  result = HKSPWeekdaysFromDay(a2);
  v8 = *(a1[4] + 8);
  if ((result & v6) != 0)
  {
    if (*(v8 + 24) == 1)
    {
      *(*(a1[5] + 8) + 24) = 0;
      *a3 = 1;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = a2;
    }
  }

  else
  {
    *(v8 + 24) = 1;
  }

  return result;
}

uint64_t HKSPWeekdaysFromDays(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __HKSPWeekdaysFromDays_block_invoke;
  v4[3] = &unk_279C76218;
  v4[4] = &v5;
  [v1 enumerateIndexesUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_269AD81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSPWeekdaysFromDays_block_invoke(uint64_t a1, uint64_t a2)
{
  result = HKSPWeekdaysFromDay(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

BOOL NSDateIsOnHKSPDayInCalendar(uint64_t a1, uint64_t a2, void *a3)
{
  if ((a2 - 1) >= 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  return v3 == [a3 component:512 fromDate:a1];
}

uint64_t HKSPWeekendDaysInCurrentCalendar()
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = HKSPWeekendDaysInCalendar(v0);

  return v1;
}

uint64_t HKSPWeekendDaysInCalendar(void *a1)
{
  v1 = a1;
  v2 = [v1 hk_weekendDays];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __HKSPWeekendDaysInCalendar_block_invoke;
  v5[3] = &unk_279C76240;
  v5[4] = &v6;
  [v2 na_each:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_269AD835C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSPWeekendDaysInCalendar_block_invoke(uint64_t a1, void *a2)
{
  result = HKSPWeekdaysFromDay([a2 unsignedIntegerValue]);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t HKSPWeekdayDaysInCurrentCalendar()
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = ~HKSPWeekendDaysInCalendar(v0);

  return v1 & 0x7F;
}

uint64_t HKSPCompareWeekdaysInCurrentCalendar(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = HKSPCompareWeekdaysInCalendar(a1, a2, v4);

  return v5;
}

uint64_t HKSPCompareWeekdaysInCalendar(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPCompareWeekdaysInCalendar_block_invoke;
  v8[3] = &unk_279C76268;
  v8[5] = a1;
  v8[6] = a2;
  v8[4] = &v9;
  HKSPEnumerateDaysOfWeekInCalendar(v5, v8, 0);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_269AD8538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSPCompareWeekdaysInCalendar_block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  result = HKSPWeekdaysFromDay(a2);
  v6 = a1[5] & result;
  if (v6 != (a1[6] & result))
  {
    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    *(*(a1[4] + 8) + 24) = v7;
    *a3 = 1;
  }

  return result;
}

uint64_t HKSleepScheduleWeekdaysFromHKSPWeekdays(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __HKSleepScheduleWeekdaysFromHKSPWeekdays_block_invoke;
  v3[3] = &unk_279C76290;
  v3[4] = &v4;
  HKSPWeekdaysEnumerateDays(a1, v3, 0);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_269AD8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HKSleepScheduleWeekdaysFromHKSPWeekdays_block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 - 1) <= 6)
  {
    *(*(*(result + 32) + 8) + 24) |= qword_269AE6470[a2 - 1];
  }

  return result;
}

__CFString *NSStringFromHKSPSleepEventTimelineResultsSleepScheduleInvalidReason(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_279C76300[a1 - 1];
  }
}

_HKSPUnfairLock *HKSPUnfairLock()
{
  v0 = objc_alloc_init(_HKSPUnfairLock);

  return v0;
}

_HKSPSynchronized *HKSPSynchronized()
{
  v0 = objc_alloc_init(_HKSPSynchronized);

  return v0;
}

_HKSPNoop *HKSPNoop()
{
  v0 = objc_alloc_init(_HKSPNoop);

  return v0;
}

_HKSPSynchronized *__HKSPSynchronizedGenerator_block_invoke()
{
  v0 = objc_alloc_init(_HKSPSynchronized);

  return v0;
}

_HKSPNoop *__HKSPNoopGenerator_block_invoke()
{
  v0 = objc_alloc_init(_HKSPNoop);

  return v0;
}

void HKSPApplyChangesToObject(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ((HKSPIsUnitTesting() & 1) == 0)
  {
    v5 = HKSPLogForCategory(5uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v36 = v4;
      v37 = 2114;
      v38 = v3;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_INFO, "[HKSPObject] applying changeSet: %{public}@ to: %{public}@", buf, 0x16u);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v4 changes];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    v29 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ((HKSPIsUnitTesting() & 1) == 0)
        {
          v12 = HKSPLogForCategory(5uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v36 = v11;
            v37 = 2114;
            v38 = v3;
            _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_INFO, "[HKSPObject] applying change: %{public}@ to: %{public}@", buf, 0x16u);
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v3;
          v14 = v11;
          if (([v14 isAdd] & 1) != 0 || (objc_msgSend(v14, "isRemove") & 1) != 0 || (objc_msgSend(v14, "changedValue"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "conformsToProtocol:", &unk_287A88DD8), v15, (v16 & 1) == 0))
          {
            v19 = [v13 changeSet];
            [v19 addChange:v14];
          }

          else
          {
            v17 = [v14 property];
            v18 = [v13 hksp_valueForProperty:v17];
            v19 = [v18 mutableCopy];

            v20 = [v14 changedValue];
            v21 = [v20 changeSet];
            HKSPApplyChangesToObject(v19, v21);

            v22 = [HKSPRelationshipChange alloc];
            v23 = [v14 property];
            v24 = [v14 originalValue];
            v25 = [(HKSPRelationshipChange *)v22 initWithProperty:v23 changedObject:v19 originalObject:v24];

            v26 = [v13 changeSet];
            [v26 addChange:v25];

            v6 = v29;
          }
        }

        else
        {
          v13 = [v3 changeSet];
          [v13 addChange:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t HKSPEvaluateChangesToObject(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_287A88DD8] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v2 = [objc_opt_class() significantProperties];
    v3 = [v1 changeSet];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v4 = [v3 changes];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __HKSPEvaluateChangesToObject_block_invoke;
    v8[3] = &unk_279C76340;
    v5 = v2;
    v9 = v5;
    v10 = &v11;
    [v4 enumerateObjectsUsingBlock:v8];

    v6 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_269AD902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __HKSPEvaluateChangesToObject_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v12 = v6;
  v8 = [v6 property];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v12;
      if (([v9 isAdd] & 1) != 0 || (objc_msgSend(v9, "isRemove") & 1) != 0 || (objc_msgSend(v9, "changedValue"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HKSPEvaluateChangesToObject(), v10, v11 == 2))
      {
        *(*(*(a1 + 40) + 8) + 24) = 2;
        *a4 = 1;
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 2;
      *a4 = 1;
    }
  }
}

id HKSPPropertiesByIdentifier(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __HKSPPropertiesByIdentifier_block_invoke;
  v6[3] = &unk_279C76368;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __HKSPPropertiesByIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

id HKSPDefaultValuesByIdentifier(void *a1)
{
  v1 = MEMORY[0x277CBEB38];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __HKSPDefaultValuesByIdentifier_block_invoke;
  v6[3] = &unk_279C76390;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

void __HKSPDefaultValuesByIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 identifier];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void __HKSPObjectsAreEqual_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(a1 + 32);
  obj = [objc_opt_class() allProperties];
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v7 hksp_valueForProperty:v15];
        v17 = [v8 hksp_valueForProperty:v15];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __HKSPObjectsAreEqual_block_invoke_2;
        v22[3] = &unk_279C763B8;
        v23 = v17;
        v18 = v17;
        v19 = [v9 appendObject:v16 counterpart:v22];
      }

      v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t HKSPObjectsAreEquivalentWithTransformer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __HKSPObjectsAreEquivalentWithTransformer_block_invoke;
  v11[3] = &unk_279C76450;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = _HKSPEquateObjectsWithBlock(v8, a2, v11);

  return v9;
}

void __HKSPObjectsAreEquivalentWithTransformer_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v7 = a3;
  v8 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = *(a1 + 32);
  obj = [objc_opt_class() propertiesForEquivalence];
  v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = *(a1 + 40);
        v16 = [v28 hksp_valueForProperty:v14];
        v17 = (*(v15 + 16))(v15, v14, v16);

        v18 = *(a1 + 40);
        v19 = [v7 hksp_valueForProperty:v14];
        v20 = (*(v18 + 16))(v18, v14, v19);

        if ([v14 isRelationshipProperty])
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __HKSPObjectsAreEquivalentWithTransformer_block_invoke_2;
          v31[3] = &unk_279C76428;
          v32 = v17;
          v33 = v20;
          v21 = v20;
          v22 = [v8 appendEqualsBlocks:{v31, 0}];

          v23 = &v32;
        }

        else
        {
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __HKSPObjectsAreEquivalentWithTransformer_block_invoke_3;
          v29[3] = &unk_279C763B8;
          v30 = v20;
          v24 = v20;
          v25 = [v8 appendObject:v17 counterpart:v29];
          v23 = &v30;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t HKSPHashValue(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CF0C40] builder];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [objc_opt_class() allProperties];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v1 hksp_valueForProperty:*(*(&v13 + 1) + 8 * v7)];
          v9 = [v2 appendObject:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v10 = [v2 hash];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void HKSPCopyFromObject(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HKSPCopyFromObject(id<HKSPObject>  _Nonnull __strong, id<HKSPObject>  _Nonnull __strong)"}];
      [v11 handleFailureInFunction:v12 file:@"HKSPObject.m" lineNumber:151 description:@"objects must be subclasses"];
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_opt_class() allProperties];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) copyValueFromObject:v3 toObject:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

__CFString *NSStringFromHKSPSleepFocusConfigurationState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unconfigured";
  }

  else
  {
    return off_279C76470[a1];
  }
}

id HKSPSleepScheduleOccurrenceProperties()
{
  v11[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPOccurrenceVersion" propertyName:@"version"];
  v11[0] = v1;
  v2 = [_HKSPRelationshipProperty alloc];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v4 = [(_HKSPObjectProperty *)v2 initWithIdentifier:@"HKSPOccurrenceBackingOccurrence" propertyName:@"backingOccurrence" expectedValueClasses:v3, v10[0]];
  v11[1] = v4;
  v5 = [(HKSPProperty *)[_HKSPUnsignedIntegerProperty alloc] initWithIdentifier:@"HKSPOccurrenceWeekdays" propertyName:@"weekdays"];
  v11[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v7 = [v0 setWithArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id HKSPSleepScheduleOccurrencePropertiesForEquivalency()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = @"HKSPOccurrenceVersion";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v2 = [v0 setWithArray:v1];

  v3 = HKSPSleepScheduleOccurrenceProperties();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __HKSPSleepScheduleOccurrencePropertiesForEquivalency_block_invoke;
  v8[3] = &unk_279C73A28;
  v9 = v2;
  v4 = v2;
  v5 = [v3 na_filter:v8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __HKSPSleepScheduleOccurrencePropertiesForEquivalency_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

__CFString *NSStringFromHKSPSleepScheduleState(uint64_t a1)
{
  v1 = @"WindDown";
  v2 = @"DelayedWakeUp";
  v3 = @"None";
  if (a1 != 0xFFFFFFFFLL)
  {
    v3 = 0;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  v4 = @"Bedtime";
  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 1)
  {
    v4 = @"WakeUp";
  }

  if (!a1)
  {
    v4 = @"Disabled";
  }

  if (a1 <= 2)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t NSStringFromHKSPSleepScheduleStateChangeReason(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_279C764E8 + a1 - 1);
  }
}

__CFString *NSStringFromHKSPAnalyticsSleepNotificationType(uint64_t a1)
{
  if (a1)
  {
    return @"FocusIntroduction";
  }

  else
  {
    return @"BedtimeReminder";
  }
}

__CFString *NSStringFromHKSPAnalyticsSleepNotificationAction(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Fired";
  }

  else
  {
    return off_279C76528[a1 - 1];
  }
}

void sub_269ADE644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}