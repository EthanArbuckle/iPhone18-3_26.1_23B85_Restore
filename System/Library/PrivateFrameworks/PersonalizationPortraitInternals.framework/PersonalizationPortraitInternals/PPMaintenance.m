@interface PPMaintenance
+ (id)singletonWarmupQueue;
+ (uint64_t)_kValue;
+ (uint64_t)_logEngagementMetricsForDomain:(void *)a3 feedback:(int)a4 count:(void *)a5 shouldContinue:;
+ (void)_logDonationIntervalStatsForSource:(uint64_t)a3 domain:(void *)a4 lastDonationTimes:(void *)a5 lastBatchDonationTimes:;
+ (void)registerMaintenanceTasksInternal;
@end

@implementation PPMaintenance

+ (void)registerMaintenanceTasksInternal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PPMaintenance_registerMaintenanceTasksInternal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (registerMaintenanceTasksInternal_onceToken != -1)
  {
    dispatch_once(&registerMaintenanceTasksInternal_onceToken, block);
  }
}

void __49__PPMaintenance_registerMaintenanceTasksInternal__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = *MEMORY[0x277D86288];
  v5 = *MEMORY[0x277D86298];
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  key = *MEMORY[0x277D86340];
  string = *MEMORY[0x277D86348];
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  v126 = *MEMORY[0x277D86230];
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86378], 1);
  v127 = *MEMORY[0x277D86280];
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  v132 = *MEMORY[0x277D86278];
  xpc_dictionary_set_uint64(v3, *MEMORY[0x277D86278], 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __43__PPMaintenance__registerCoreRoutineImport__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerCoreRoutineImport;
  v150 = v2;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.CoreRoutineImport", v3, &handler);
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: registered task CoreRoutineImport", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_self();
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v9, v4, v5);
  xpc_dictionary_set_string(v9, key, string);
  xpc_dictionary_set_BOOL(v9, v126, 0);
  xpc_dictionary_set_string(v9, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v9, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __36__PPMaintenance__registerMapsImport__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerMapsImport;
  v150 = v8;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.MapsImport", v9, &handler);
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPMaintenance: registered task MapsImport", buf, 2u);
  }

  v11 = *(a1 + 32);
  v130 = objc_opt_self();
  v141 = 0;
  v142 = &v141;
  v143 = 0x2020000000;
  v144 = 1;
  *buf = MEMORY[0x277D85DD0];
  v137 = 3221225472;
  v138 = __41__PPMaintenance__registerHealthKitImport__block_invoke;
  v139 = &unk_2789792D0;
  v140 = &v141;
  v12 = _Block_copy(buf);
  v13 = pp_maintenance_signpost_handle();
  v14 = os_signpost_id_generate(v13);

  v15 = pp_maintenance_signpost_handle();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(handler) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "HealthKitDataAvailable", "", &handler, 2u);
  }

  v12[2](v12);
  v17 = pp_maintenance_signpost_handle();
  v18 = v17;
  value = v5;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(handler) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v18, OS_SIGNPOST_INTERVAL_END, v14, "HealthKitDataAvailable", " enableTelemetry=YES ", &handler, 2u);
  }

  v19 = MEMORY[0x277D86370];
  if (*(v142 + 24) == 1)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, v4, v5);
    xpc_dictionary_set_string(v20, key, string);
    xpc_dictionary_set_BOOL(v20, v126, 0);
    xpc_dictionary_set_BOOL(v20, *v19, 1);
    xpc_dictionary_set_string(v20, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v20, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __41__PPMaintenance__registerHealthKitImport__block_invoke_138;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerHealthKitImport;
    v150 = v130;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.HealthKitImport", v20, &handler);
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v135 = 0;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_INFO, "PPMaintenance: registered task HealthKitImport", v135, 2u);
    }
  }

  _Block_object_dispose(&v141, 8);
  v22 = *(a1 + 32);
  v23 = objc_opt_self();
  v24 = MEMORY[0x277D425A0];
  v25 = +[PPMaintenance singletonWarmupQueue];
  [v24 runAsyncOnQueue:v25 afterDelaySeconds:&__block_literal_global_129_17299 block:3.0];

  v26 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v26, v4, *MEMORY[0x277D862D0]);
  xpc_dictionary_set_string(v26, key, string);
  xpc_dictionary_set_BOOL(v26, v126, 0);
  xpc_dictionary_set_string(v26, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v26, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __40__PPMaintenance__registerEventKitImport__block_invoke_2;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerEventKitImport;
  v150 = v23;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.EventKitImport", v26, &handler);
  v27 = pp_default_log_handle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_INFO, "PPMaintenance: registered task EventKitImport", buf, 2u);
  }

  v28 = *(a1 + 32);
  v29 = objc_opt_self();
  v30 = MEMORY[0x277D425A0];
  v31 = +[PPMaintenance singletonWarmupQueue];
  [v30 runAsyncOnQueue:v31 afterDelaySeconds:&__block_literal_global_143_17282 block:3.0];

  v32 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v32, v4, v5);
  xpc_dictionary_set_string(v32, key, string);
  xpc_dictionary_set_BOOL(v32, v126, 0);
  xpc_dictionary_set_string(v32, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v32, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __40__PPMaintenance__registerContactsImport__block_invoke_2;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerContactsImport;
  v150 = v29;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ContactsImport", v32, &handler);
  v33 = pp_default_log_handle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_INFO, "PPMaintenance: registered task ContactsImport", buf, 2u);
  }

  v34 = *(a1 + 32);
  objc_opt_self();
  v35 = *(a1 + 32);
  objc_opt_self();
  v36 = *(a1 + 32);
  objc_opt_self();
  v37 = *(a1 + 32);
  objc_opt_self();
  v38 = *(a1 + 32);
  objc_opt_self();
  v39 = v4;
  v40 = key;
  v41 = v5;
  v42 = v126;
  v43 = v127;
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v44 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v44, v39, value);
    xpc_dictionary_set_string(v44, key, string);
    xpc_dictionary_set_BOOL(v44, v126, 0);
    xpc_dictionary_set_string(v44, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v44, v132, 1uLL);
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.RTCSendLogs", v44, &__block_literal_global_174_17274);
    v45 = pp_default_log_handle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      LOWORD(handler) = 0;
      _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_INFO, "PPMaintenance: registered task RTCSendLogs", &handler, 2u);
    }

    v41 = value;
  }

  v46 = *(a1 + 32);
  v47 = objc_opt_self();
  v48 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v48, v39, v41);
  xpc_dictionary_set_string(v48, key, string);
  xpc_dictionary_set_BOOL(v48, v126, 0);
  xpc_dictionary_set_string(v48, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v48, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = v47;
  v150 = sel__registerDailyMetricsLogging;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DailyMetricsLogging", v48, &handler);
  v49 = pp_default_log_handle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v49, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DailyMetricsLogging", buf, 2u);
  }

  v50 = *(a1 + 32);
  v51 = objc_opt_self();
  v52 = xpc_dictionary_create(0, 0, 0);
  v53 = *MEMORY[0x277D862C8];
  xpc_dictionary_set_int64(v52, v39, *MEMORY[0x277D862C8]);
  xpc_dictionary_set_string(v52, key, string);
  xpc_dictionary_set_BOOL(v52, v126, 0);
  xpc_dictionary_set_string(v52, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v52, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerLogNamedEntityFirstSource;
  v150 = v51;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogNamedEntityFirstSource", v52, &handler);
  v54 = pp_default_log_handle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogNamedEntityFirstSource", buf, 2u);
  }

  v55 = *(a1 + 32);
  v56 = objc_opt_self();
  v57 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v57, v39, v53);
  xpc_dictionary_set_string(v57, key, string);
  xpc_dictionary_set_BOOL(v57, v126, 0);
  xpc_dictionary_set_string(v57, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v57, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerLogTopicFirstSource;
  v150 = v56;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogTopicFirstSource", v57, &handler);
  v58 = pp_default_log_handle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v58, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogTopicFirstSource", buf, 2u);
  }

  v59 = *(a1 + 32);
  v60 = objc_opt_self();
  v61 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v61, v39, value);
  xpc_dictionary_set_string(v61, key, string);
  xpc_dictionary_set_BOOL(v61, v126, 0);
  xpc_dictionary_set_string(v61, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v61, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerLogNamedEntityPerplexity;
  v150 = v60;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogNamedEntityPerplexity", v61, &handler);
  v62 = pp_default_log_handle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v62, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogNamedEntityPerplexity", buf, 2u);
  }

  v63 = *(a1 + 32);
  v64 = objc_opt_self();
  v65 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v65, v39, value);
  xpc_dictionary_set_string(v65, key, string);
  xpc_dictionary_set_BOOL(v65, v126, 0);
  xpc_dictionary_set_string(v65, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v65, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerLogTopicPerplexity;
  v150 = v64;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogTopicPerplexity", v65, &handler);
  v66 = pp_default_log_handle();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v66, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogTopicPerplexity", buf, 2u);
  }

  v67 = *(a1 + 32);
  v68 = objc_opt_self();
  v69 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v69, v39, value);
  xpc_dictionary_set_string(v69, key, string);
  xpc_dictionary_set_BOOL(v69, v126, 0);
  xpc_dictionary_set_string(v69, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v69, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerLogLocationPerplexity;
  v150 = v68;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogLocationPerplexity", v69, &handler);
  v70 = pp_default_log_handle();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v70, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogLocationPerplexity", buf, 2u);
  }

  v71 = *(a1 + 32);
  v72 = objc_opt_self();
  v73 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v73, v39, value);
  v74 = string;
  xpc_dictionary_set_string(v73, key, string);
  xpc_dictionary_set_BOOL(v73, v126, 0);
  xpc_dictionary_set_BOOL(v73, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v73, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v73, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __44__PPMaintenance__registerLogSportsFavorites__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = v72;
  v150 = sel__registerLogSportsFavorites;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogSportsFavorites", v73, &handler);
  v75 = pp_default_log_handle();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v75, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogSportsFavorites", buf, 2u);
  }

  +[PPSocialHighlightMetrics registerCTSDataCollection];
  v76 = *(a1 + 32);
  v77 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v78 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v78, v39, value);
    xpc_dictionary_set_string(v78, key, string);
    xpc_dictionary_set_BOOL(v78, v126, 0);
    xpc_dictionary_set_string(v78, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v78, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerTTLBasedDonationCleanup;
    v150 = v77;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.TTLBasedDonationCleanup", v78, &handler);
    v79 = pp_default_log_handle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v79, OS_LOG_TYPE_INFO, "PPMaintenance: registered task TTLBasedDonationCleanup", buf, 2u);
    }
  }

  v80 = *(a1 + 32);
  v81 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v82 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v82, v39, value);
    xpc_dictionary_set_string(v82, key, string);
    xpc_dictionary_set_BOOL(v82, v126, 0);
    xpc_dictionary_set_string(v82, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v82, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerRemotelyDonatedRecordCleanup;
    v150 = v81;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.RemotelyDonatedRecordCleanup", v82, &handler);
    v83 = pp_default_log_handle();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v83, OS_LOG_TYPE_INFO, "PPMaintenance: registered task RemotelyDonatedRecordCleanup", buf, 2u);
    }
  }

  v84 = *(a1 + 32);
  v85 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v86 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v86, key, string);
    xpc_dictionary_set_int64(v86, v39, value);
    xpc_dictionary_set_BOOL(v86, v126, 0);
    xpc_dictionary_set_string(v86, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v86, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerTTLBasedDecayedFeedbackCountsCleanup;
    v150 = v85;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.TTLBasedFeedbackRecordCleanup", v86, &handler);
    v87 = pp_default_log_handle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v87, OS_LOG_TYPE_INFO, "PPMaintenance: registered task TTLBasedFeedbackRecordCleanup", buf, 2u);
    }
  }

  v88 = *(a1 + 32);
  v89 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v90 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v90, key, string);
    xpc_dictionary_set_int64(v90, v39, value);
    xpc_dictionary_set_BOOL(v90, v126, 0);
    xpc_dictionary_set_string(v90, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v90, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerDecayedFeedbackCountsCleanup;
    v150 = v89;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DecayedFeedbackCleanup", v90, &handler);
    v91 = pp_default_log_handle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v91, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DecayedFeedbackCleanup", buf, 2u);
    }
  }

  v92 = *(a1 + 32);
  v93 = objc_opt_self();
  v94 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v94, v39, value);
  xpc_dictionary_set_string(v94, key, string);
  xpc_dictionary_set_BOOL(v94, v126, 0);
  xpc_dictionary_set_string(v94, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v94, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerNamedEntityFiltering;
  v150 = v93;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.NamedEntityFiltering", v94, &handler);

  v95 = *(a1 + 32);
  v96 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v97 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v97, v39, v53);
    xpc_dictionary_set_string(v97, key, string);
    xpc_dictionary_set_BOOL(v97, v126, 0);
    xpc_dictionary_set_BOOL(v97, *MEMORY[0x277D86370], 1);
    xpc_dictionary_set_string(v97, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v97, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __40__PPMaintenance__registerDatabaseVacuum__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerDatabaseVacuum;
    v150 = v96;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.VacuumDatabase", v97, &handler);
    v98 = pp_default_log_handle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v98, OS_LOG_TYPE_INFO, "PPMaintenance: registered task VacuumDatabase", buf, 2u);
    }

    v74 = string;
    v42 = v126;
    v43 = v127;
    v40 = key;
  }

  v99 = *(a1 + 32);
  v100 = objc_opt_self();
  v101 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v101, v39, value);
  xpc_dictionary_set_string(v101, v40, v74);
  xpc_dictionary_set_BOOL(v101, v42, 0);
  xpc_dictionary_set_string(v101, v43, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v101, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerSocialHighlightFeedbackCleanUp;
  v150 = v100;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.SocialHighlightFeedbackCleanUp", v101, &handler);
  v102 = pp_default_log_handle();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v102, OS_LOG_TYPE_INFO, "PPMaintenance: registered task SocialHighlightCleanUp", buf, 2u);
  }

  v103 = *(a1 + 32);
  objc_opt_self();
  v104 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v104, v39, value);
  xpc_dictionary_set_string(v104, key, string);
  xpc_dictionary_set_BOOL(v104, v126, 1);
  xpc_dictionary_set_string(v104, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v104, v132, 1uLL);
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.SpotlightScoringCache", v104, &__block_literal_global_454);
  v105 = pp_default_log_handle();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    LOWORD(handler) = 0;
    _os_log_impl(&dword_23224A000, v105, OS_LOG_TYPE_INFO, "PPMaintenance: registered task SpotlightScoringCache", &handler, 2u);
  }

  v106 = *(a1 + 32);
  v107 = objc_opt_self();
  v108 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v108, v39, value);
  xpc_dictionary_set_string(v108, key, string);
  xpc_dictionary_set_BOOL(v108, v126, 0);
  v109 = *MEMORY[0x277D86370];
  xpc_dictionary_set_BOOL(v108, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_string(v108, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v108, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __45__PPMaintenance__registerContactHandlesCache__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerContactHandlesCache;
  v150 = v107;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ContactHandlesCache", v108, &handler);
  v110 = pp_default_log_handle();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v110, OS_LOG_TYPE_INFO, "PPMaintenance: registered task ContactHandlesCache", buf, 2u);
  }

  v111 = *(a1 + 32);
  v112 = objc_opt_self();
  v113 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v113, key, string);
  xpc_dictionary_set_int64(v113, v39, value);
  xpc_dictionary_set_BOOL(v113, v126, 0);
  xpc_dictionary_set_string(v113, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v113, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = v112;
  v150 = sel__registerProcessPendingFeedback;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.FeedbackProcessing", v113, &handler);
  v114 = pp_default_log_handle();
  if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v114, OS_LOG_TYPE_INFO, "PPMaintenance: registered task FeedbackProcessing", buf, 2u);
  }

  v115 = *(a1 + 32);
  v116 = objc_opt_self();
  v117 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v117, key, string);
  xpc_dictionary_set_int64(v117, v39, value);
  xpc_dictionary_set_BOOL(v117, v126, 0);
  xpc_dictionary_set_string(v117, v127, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v117, v132, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v146 = 3221225472;
  v147 = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke;
  v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v149 = sel__registerDecayedFeedbackCountsDecay;
  v150 = v116;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DecayedFeedbackCountsDecay", v117, &handler);
  v118 = pp_default_log_handle();
  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v118, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DecayedFeedbackCountsDecay", buf, 2u);
  }

  v119 = *(a1 + 32);
  objc_opt_self();
  if (_registerNowPlayingMPRequestResponseController_onceToken != -1)
  {
    dispatch_once(&_registerNowPlayingMPRequestResponseController_onceToken, &__block_literal_global_170_16996);
  }

  v120 = *(a1 + 32);
  v121 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v122 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v122, v39, value);
    xpc_dictionary_set_string(v122, key, string);
    xpc_dictionary_set_BOOL(v122, v126, 0);
    xpc_dictionary_set_BOOL(v122, v109, 1);
    xpc_dictionary_set_string(v122, v127, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v122, v132, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v146 = 3221225472;
    v147 = __42__PPMaintenance__registerOptimizeDatabase__block_invoke;
    v148 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v149 = sel__registerOptimizeDatabase;
    v150 = v121;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.OptimizeDatabase", v122, &handler);
    v123 = pp_default_log_handle();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v123, OS_LOG_TYPE_INFO, "PPMaintenance: registered task OptimizeDatabase", buf, 2u);
    }
  }

  v124 = *(a1 + 32);
  objc_opt_self();
  xpc_activity_unregister("com.apple.proactive.PersonalizationPortrait.SocialHighlightFeedbackSync");
  v125 = +[PPSettings sharedInstance];
  [v125 registerDisabledBundleIdPurgeHandler];

  v134 = +[PPSettings sharedInstance];
  [v134 registerCloudKitDisabledBundleIdRewriteHandler];
}

void __42__PPMaintenance__registerOptimizeDatabase__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PPMaintenance__registerOptimizeDatabase__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__PPMaintenance__registerOptimizeDatabase__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "OptimizeDatabase", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "OptimizeDatabase", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:342 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: OptimizeDatabase: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PPMaintenance__registerOptimizeDatabase__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __42__PPMaintenance__registerOptimizeDatabase__block_invoke_3(uint64_t a1)
{
  v2 = +[PPSQLDatabase sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "OptimizeDatabase failed to create database, giving up.";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v2 optimizeDatabaseWithShouldContinueBlock:*(a1 + 32)])
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "OptimizeDatabase completed successfully.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __63__PPMaintenance__registerNowPlayingMPRequestResponseController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registerNowPlayingMPRequestResponseController_delegate;
  _registerNowPlayingMPRequestResponseController_delegate = v0;

  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "PPMediaPlayerDelegate: _registerNowPlayingMPRequestResponseController was called!", v3, 2u);
  }
}

void __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DecayedFeedbackCountsDecay", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "DecayedFeedbackCountsDecay", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1239 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: starting", v35, 2u);
  }

  v3 = +[PPConfiguration sharedInstance];
  [v3 decayedFeedbackCountsHalfLifeDays];
  v5 = v4;

  if ((*(*(a1 + 32) + 16))())
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing topic store", v35, 2u);
    }

    v7 = +[PPLocalTopicStore defaultStore];
  }

  else
  {
    v7 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing named entity store", v35, 2u);
    }

    v9 = +[PPLocalNamedEntityStore defaultStore];
  }

  else
  {
    v9 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing location store", v35, 2u);
    }

    v11 = +[PPLocalLocationStore defaultStore];
  }

  else
  {
    v11 = 0;
  }

  v12 = 0.693147181 / v5;
  v13 = [v7 storage];
  if (v13)
  {
    v14 = v13;
    v15 = (*(*(a1 + 32) + 16))();

    if (v15)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for topic feedback counts", v35, 2u);
      }

      v17 = [v7 storage];
      v18 = [v17 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v18 & 1) == 0)
      {
        v19 = pp_default_log_handle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for topic feedback", v35, 2u);
        }
      }
    }
  }

  v20 = [v9 storage];
  if (v20)
  {
    v21 = v20;
    v22 = (*(*(a1 + 32) + 16))();

    if (v22)
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for named entity feedback counts", v35, 2u);
      }

      v24 = [v9 storage];
      v25 = [v24 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v25 & 1) == 0)
      {
        v26 = pp_default_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for named entity feedback", v35, 2u);
        }
      }
    }
  }

  v27 = [v11 storage];
  if (v27)
  {
    v28 = v27;
    v29 = (*(*(a1 + 32) + 16))();

    if (v29)
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for location feedback counts", v35, 2u);
      }

      v31 = [v11 storage];
      v32 = [v31 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v32 & 1) == 0)
      {
        v33 = pp_default_log_handle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v33, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for location feedback", v35, 2u);
        }
      }
    }
  }

  v34 = pp_default_log_handle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: finished", v35, 2u);
  }
}

void __48__PPMaintenance__registerProcessPendingFeedback__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v26 = &v27;
  v4 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v6 = pp_maintenance_signpost_handle();
  v7 = os_signpost_id_generate(v6);

  v8 = pp_maintenance_signpost_handle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FeedbackProcessing", "", buf, 2u);
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186;
  v21 = &unk_278975E68;
  v23 = *(a1 + 32);
  v10 = v5;
  v22 = v10;
  __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186(&v18);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v28 + 24);
    *buf = 67109120;
    v32 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v7, "FeedbackProcessing", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v28 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  if (*(v28 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:1155 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: FeedbackProcessing: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v27, 8);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = +[PPConfiguration sharedInstance];
  [v4 portraitAnalyticsSamplingRate];
  v17 = 0;
  v5 = [v3 constructAndSendMessageForSamplingRate:v2 shouldContinueBlock:&v17 error:?];
  v6 = v17;
  v18 = v6;

  if ((v5 & 1) == 0)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPCollaborativeFilteringSampler: failed to complete: %@", buf, 0xCu);
    }
  }

  if ((v2[2](v2) & 1) == 0)
  {
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Processing feedback deferred after data collection.";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  v8 = objc_opt_new();
  v9 = [v8 processPendingFeedbackWithShouldContinueBlock:v2 error:&v18];

  if ((v9 & 1) == 0)
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "Feedback processing failed: %@", buf, 0xCu);
    }
  }

  if ((v2[2](v2) & 1) == 0)
  {
    v11 = pp_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "Processing feedback deferred partway through processing.", buf, 2u);
    }
  }

  v12 = objc_opt_new();
  v13 = [v12 deleteExpiredFeedbackWithShouldContinueBlock:v2];

  if ((v13 & 1) == 0)
  {
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Processing pending feedback deferred during clean up operations.";
LABEL_19:
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

LABEL_21:

  v16 = *MEMORY[0x277D85DE8];
}

void __45__PPMaintenance__registerContactHandlesCache__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerContactHandlesCache__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__PPMaintenance__registerContactHandlesCache__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ContactHandlesCache", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ContactHandlesCache", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:297 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: ContactHandlesCache: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PPMaintenance__registerContactHandlesCache__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerContactHandlesCache__block_invoke_3(uint64_t a1)
{
  v2 = +[PPLocalContactStore defaultStore];
  [v2 rebuildCachedSignificantContactHandlesWithShouldContinue:*(a1 + 32)];
}

void __47__PPMaintenance__registerSpotlightScoringCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v18 = &v19;
  v3 = v2;
  v17 = v3;
  v4 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v5 = pp_maintenance_signpost_handle();
  v6 = os_signpost_id_generate(v5);

  v7 = pp_maintenance_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SpotlightScoringCache", "", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455;
  v13[3] = &unk_278975D98;
  v9 = v4;
  v14 = v9;
  __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455(v13);
  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SpotlightScoringCache", " enableTelemetry=YES ", buf, 2u);
  }

  if (*(v20 + 24))
  {
    v12 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v12 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v12);

  _Block_object_dispose(&v19, 8);
}

uint64_t __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = pp_default_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "Deferred topic scores", buf, 2u);
    }
  }

  v3 = +[PPLocalTopicStore defaultStore];
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [v3 computeAndCacheTopicScoresWithShouldContinueBlock:v4 error:&v14];
  v6 = v14;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = &stru_284759D38;
      if (!v6)
      {
        v12 = 0;
      }

      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPMaintenance was unable to compute and cache topic scores: %@", buf, 0xCu);
    }

    v9 = +[PPLocalTopicStore defaultStore];
    v13 = v6;
    [v9 clearTopicScoresCache:&v13];
    v10 = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SocialHighlightCleanUp", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "SocialHighlightCleanUp", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:774 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: SocialHighlightCleanUp: deferred.", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_3(uint64_t a1)
{
  v4 = objc_opt_new();
  v2 = *(a1 + 32);
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  [v4 cleanUpFeedbackWithShouldContinueBlock:v2 ttl:&__block_literal_global_160 onDeleteBlock:?];
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  [PPSocialHighlightMetrics logMetricsForExpiringFeedback:v2];
  v3 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 highlight];
    v5 = [v4 highlightIdentifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPMaintenance: removed feedback for identifier %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __40__PPMaintenance__registerDatabaseVacuum__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerDatabaseVacuum__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__PPMaintenance__registerDatabaseVacuum__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VacuumDatabase", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "VacuumDatabase", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:388 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: VacuumDatabase: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PPMaintenance__registerDatabaseVacuum__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerDatabaseVacuum__block_invoke_3(uint64_t a1)
{
  v2 = +[PPSQLDatabase sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Vacuum database failed to create database, giving up.";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v2 vacuumDatabaseWithShouldContinueBlock:*(a1 + 32)])
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Vacuum database completed successfully.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __46__PPMaintenance__registerNamedEntityFiltering__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "NamedEntityFiltering", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "NamedEntityFiltering", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:674 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring named entity filtering.", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance: beginning named entity filtering.", buf, 2u);
  }

  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 filterExistingNamedEntitiesWithShouldContinueBlock:*(a1 + 32)];

  if ((v4 & 1) == 0)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: unable to successfully complete named entity filtering.", v6, 2u);
    }
  }
}

void __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v27 = &v28;
  v4 = v3;
  v26 = v4;
  v5 = _Block_copy(aBlock);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v28;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DecayedFeedbackCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v29 + 24);
    *buf = 67109120;
    v33 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "DecayedFeedbackCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v29 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v29 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1428 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCleanup: starting", buf, 2u);
  }

  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Performing topic feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v4 = +[PPLocalTopicStore defaultStore];
  v5 = 0;
  v6 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v4 pruneOrphanedTopicFeedbackCountsWithLimit:100 rowOffset:v5 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up topic feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v5 = v5 - *buf + 100;
      if (--v6)
      {
        continue;
      }
    }

    break;
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "Finished topic feedback cleanup", v21, 2u);
  }

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "Running location feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v10 = +[PPLocalLocationStore defaultStore];
  v11 = 0;
  v12 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v10 pruneOrphanedLocationFeedbackCountsWithLimit:100 rowOffset:v11 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up location feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v11 = v11 - *buf + 100;
      if (--v12)
      {
        continue;
      }
    }

    break;
  }

  v14 = pp_default_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "Finished location feedback cleanup", v21, 2u);
  }

  v15 = pp_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Running named entity feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v16 = +[PPLocalNamedEntityStore defaultStore];
  v17 = 0;
  v18 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v16 pruneOrphanedNamedEntityFeedbackCountsWithLimit:100 rowOffset:v17 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up named entity feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v17 = v17 - *buf + 100;
      if (--v18)
      {
        continue;
      }
    }

    break;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v20 = pp_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "Finished named entity feedback cleanup", buf, 2u);
    }
  }
}

void __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v27 = &v28;
  v4 = v3;
  v26 = v4;
  v5 = _Block_copy(aBlock);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v28;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TTLBasedFeedbackRecordCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v29 + 24);
    *buf = 67109120;
    v33 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "TTLBasedFeedbackRecordCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v29 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v29 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1319 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: starting", v18, 2u);
  }

  v3 = objc_opt_new();
  v4 = [v3 dateByAddingTimeInterval:-2592000.0];

  if ((*(*(a1 + 32) + 16))())
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing topic store", v18, 2u);
    }

    v6 = +[PPLocalTopicStore defaultStore];
  }

  else
  {
    v6 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing named entity store", v18, 2u);
    }

    v8 = +[PPLocalNamedEntityStore defaultStore];
  }

  else
  {
    v8 = 0;
  }

  if (!(*(*(a1 + 32) + 16))())
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing location store", v18, 2u);
  }

  v10 = +[PPLocalLocationStore defaultStore];
  if (v6)
  {
LABEL_19:
    if ((*(*(a1 + 32) + 16))())
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "Running TTL-based topic feedback cleanup", v18, 2u);
      }

      if (([v6 deleteAllTopicFeedbackCountsOlderThanDate:v4] & 1) == 0)
      {
        v12 = pp_default_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for topic feedback", v18, 2u);
        }
      }
    }
  }

LABEL_26:
  if (v8 && (*(*(a1 + 32) + 16))())
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Running TTL-based named entity feedback cleanup", v18, 2u);
    }

    if (([v8 deleteAllNamedEntityFeedbackCountsOlderThanDate:v4] & 1) == 0)
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for named entity feedback", v18, 2u);
      }
    }
  }

  if (v10 && (*(*(a1 + 32) + 16))())
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Running TTL-based location feedback cleanup", v18, 2u);
    }

    if (([v10 deleteAllLocationFeedbackCountsOlderThanDate:v4] & 1) == 0)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for location feedback", v18, 2u);
      }
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: finished", v18, 2u);
    }
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke(uint64_t a1, void *a2)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v39 = &v40;
  v4 = v3;
  v38 = v4;
  v5 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_3;
  v35[3] = &unk_278975D98;
  v6 = v5;
  v36 = v6;
  v7 = _Block_copy(v35);
  v46[0] = v7;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_164;
  v33[3] = &unk_278975D98;
  v8 = v6;
  v34 = v8;
  v9 = _Block_copy(v33);
  v46[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];

  v11 = objc_opt_new();
  v12 = [v10 _pas_shuffledArrayUsingRng:v11];

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_168;
  v30 = &unk_278977560;
  v13 = v12;
  v31 = v13;
  v14 = v8;
  v32 = v14;
  v15 = _Block_copy(&v27);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v16 = pp_maintenance_signpost_handle();
  v17 = os_signpost_id_generate(v16);

  v18 = pp_maintenance_signpost_handle();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RemotelyDonatedRecordCleanup", "", buf, 2u);
  }

  v15[2](v15);
  v20 = pp_maintenance_signpost_handle();
  v21 = v20;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = *(v41 + 24);
    *buf = 67109120;
    v45 = v22;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_END, v17, "RemotelyDonatedRecordCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v41 + 24))
  {
    v23 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v23 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v23);
  if (*(v41 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:837 description:@"Unexpected failure of deferral"];
    }

    v24 = pp_default_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v40, 8);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting for named entity records", v5, 2u);
  }

  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 storage];
  if (v4 && (*(*(a1 + 32) + 16))())
  {
    [v4 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_164(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting for topic records", v5, 2u);
  }

  v3 = +[PPLocalTopicStore defaultStore];
  v4 = [v3 storage];
  if (v4 && (*(*(a1 + 32) + 16))())
  {
    [v4 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_168(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
      if (!(*(*(a1 + 40) + 16))(*(a1 + 40)))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: finished", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v27 = &v28;
  v4 = v3;
  v26 = v4;
  v5 = _Block_copy(aBlock);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v28;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TTLBasedDonationCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v29 + 24);
    *buf = 67109120;
    v33 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "TTLBasedDonationCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v29 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v29 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:728 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: deferred.", buf, 2u);
    }
  }

  _Block_object_dispose(&v28, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: starting.", buf, 2u);
  }

  v3 = +[PPTTLDeletionPolicy defaultPolicy];
  v4 = pp_default_log_handle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: using policy: %@", buf, 0xCu);
    }

    v14 = 0;
    v6 = [v3 applyPolicyWithError:&v14 shouldContinueBlock:*(a1 + 32)];
    v4 = v14;
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = pp_default_log_handle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "PPMaintenance: TTLBasedDonationCleanup: deferring.";
LABEL_14:
        v11 = v8;
        v12 = 2;
LABEL_17:
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

    else if (v6)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "PPMaintenance: TTLBasedDonationCleanup: completed successfully.";
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      *buf = 138412290;
      v16 = v4;
      v10 = "PPMaintenance: TTLBasedDonationCleanup: failed with error: %@";
      v11 = v8;
      v12 = 12;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: failed to load default policy, possibly due to device lock.", buf, 2u);
  }

LABEL_19:

  v13 = *MEMORY[0x277D85DE8];
}

void __44__PPMaintenance__registerLogSportsFavorites__block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D3A578];
  v5 = +[PPConfiguration sharedInstance];
  [v5 sportsMetricsSamplingRate];
  if ([v4 yesWithProbability:?])
  {

    goto LABEL_4;
  }

  v6 = [MEMORY[0x277D3A578] isInternalDevice];

  if (v6)
  {
LABEL_4:
    *v34 = 0;
    v35 = v34;
    v36 = 0x2020000000;
    v37 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PPMaintenance__registerLogSportsFavorites__block_invoke_394;
    aBlock[3] = &unk_278975D70;
    v33 = v34;
    v7 = v3;
    v32 = v7;
    v8 = _Block_copy(aBlock);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__PPMaintenance__registerLogSportsFavorites__block_invoke_2;
    v23[3] = &unk_278976090;
    v9 = v8;
    v24 = v9;
    v25 = &v27;
    v26 = *(a1 + 32);
    v10 = _Block_copy(v23);
    PPPostNotification(kPPMaintenanceJobStartedNotification);
    v11 = pp_maintenance_signpost_handle();
    v12 = os_signpost_id_generate(v11);

    v13 = pp_maintenance_signpost_handle();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LogSportsFavorites", "", buf, 2u);
    }

    v10[2](v10);
    v15 = pp_maintenance_signpost_handle();
    v16 = v15;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = v35[24];
      *buf = 67109120;
      v39 = v17;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_END, v12, "LogSportsFavorites", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
    }

    if (v35[24])
    {
      v18 = &kPPMaintenanceJobDeferredNotification;
    }

    else
    {
      v18 = &kPPMaintenanceJobCompletedNotification;
    }

    PPPostNotification(*v18);
    if ((v28[3] & 1) == 0 && v35[24] == 1)
    {
      if (!xpc_activity_set_state(v7, 3))
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:2587 description:@"Unexpected failure of deferral"];
      }

      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogSportsFavorites: deferring", buf, 2u);
      }
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v34, 8);
    goto LABEL_24;
  }

  v20 = pp_default_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: Sports metrics skipped due to sampling.", v34, 2u);
  }

LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PPMaintenance__registerLogSportsFavorites__block_invoke_394(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __44__PPMaintenance__registerLogSportsFavorites__block_invoke_2(uint64_t a1)
{
  v136 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 16))())
  {
    v2 = *(a1 + 48);
    v74 = a1;
    v76 = *(a1 + 32);
    objc_opt_self();
    context = objc_autoreleasePoolPush();
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v135 = 0;
      _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "PPMaintenance: enters _logSportsFavorites", v135, 2u);
    }

    v4 = +[PPTrialWrapper sharedInstance];
    v5 = [v4 trieForFactorName:@"tvAppSportsFavorites.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

    if (v5)
    {
      if (v76[2]())
      {
        v72 = objc_opt_new();
        v6 = [@"PersonalizationPortrait" copy];
        [v72 setCaller:v6];

        v7 = dispatch_group_create();
        dispatch_group_enter(v7);
        v114 = 0;
        v115 = &v114;
        v116 = 0x3032000000;
        v117 = __Block_byref_object_copy__17081;
        v118 = __Block_byref_object_dispose__17082;
        v119 = 0;
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __35__PPMaintenance__logSportsMetrics___block_invoke;
        v111[3] = &unk_2789760B8;
        v113 = &v114;
        v8 = v7;
        v112 = v8;
        [v72 makeRequestWithCompletion:v111];
        v9 = [MEMORY[0x277D425A0] waitForGroup:v8 timeoutSeconds:8.0];
        v71 = v8;
        if ((v76[2]() & 1) == 0)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *v135 = 0;
            _os_log_debug_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v135, 2u);
          }

          v56 = 0;
          goto LABEL_61;
        }

        if (v9 == 1 || !v115[5])
        {
          v56 = 0;
LABEL_62:

          _Block_object_dispose(&v114, 8);
          v60 = v72;
          goto LABEL_63;
        }

        v10 = objc_alloc(MEMORY[0x277CBEB58]);
        v11 = [v10 initWithCapacity:{objc_msgSend(v115[5], "count")}];
        v77 = objc_opt_new();
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v12 = v115[5];
        v13 = [v12 countByEnumeratingWithState:&v107 objects:v135 count:16];
        if (v13)
        {
          v14 = *v108;
          do
          {
            v15 = 0;
            do
            {
              if (*v108 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v107 + 1) + 8 * v15);
              v17 = pp_default_log_handle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v19 = [v16 ID];
                v20 = [v16 name];
                *buf = 138740227;
                v132 = v19;
                v133 = 2117;
                v134 = v20;
                _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "PPMaintenance: TV app favorite: %{sensitive}@: \t\t %{sensitive}@", buf, 0x16u);
              }

              v18 = [v16 ID];
              [v11 addObject:v18];

              ++v15;
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v107 objects:v135 count:16];
          }

          while (v13);
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v21 = v11;
        v22 = [v21 countByEnumeratingWithState:&v103 objects:buf count:16];
        if (v22)
        {
          v23 = *v104;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v104 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = [v5 payloadForString:*(*(&v103 + 1) + 8 * i)];
              if (v25)
              {
                v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v25];
                [v77 addObject:v26];
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v103 objects:buf count:16];
          }

          while (v22);
        }

        v27 = +[PPLocalTopicStore defaultStore];
        v28 = objc_opt_new();
        v102 = 0;
        v70 = [v27 scoresForTopicMapping:@"sirisports" query:v28 error:&v102];
        v69 = v102;

        if (v70)
        {
          v29 = pp_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v120) = 138739971;
            *(&v120 + 4) = v70;
            _os_log_debug_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEBUG, "PPMaintenance: Portrait siri sports predictions:\n%{sensitive}@", &v120, 0xCu);
          }

          if (v76[2]())
          {
            v30 = [v70 keysSortedByValueUsingComparator:&__block_literal_global_410];
            v31 = objc_opt_new();
            v73 = v30;
            v32 = +[PPConfiguration sharedInstance];
            v67 = [v32 sportsMetricsNumberOfTeamsLogged];

            v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamFalseNegativesTop%lu", v67];
            v66 = [v33 _pas_stringBackedByUTF8CString];

            v34 = +[PPConfiguration sharedInstance];
            LODWORD(v33) = [v34 sportsMetricsNumberOfLeaguesLogged];

            v35 = v33;
            v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueFalseNegativesTop%lu", v33];
            v65 = [v36 _pas_stringBackedByUTF8CString];

            v37 = objc_opt_new();
            v98 = 0;
            v99 = &v98;
            v100 = 0x2020000000;
            v101 = [v21 count];
            v94 = 0;
            v95 = &v94;
            v96 = 0x2020000000;
            v97 = [v21 count];
            v90 = 0;
            v91 = &v90;
            v92 = 0x2020000000;
            v93 = [v77 count];
            v86 = 0;
            v87 = &v86;
            v88 = 0x2020000000;
            v89 = [v77 count];
            *&v120 = MEMORY[0x277D85DD0];
            *(&v120 + 1) = 3221225472;
            v121 = __35__PPMaintenance__logSportsMetrics___block_invoke_2;
            v122 = &unk_2789760E0;
            v123 = v5;
            v130 = v67;
            v38 = v37;
            v124 = v38;
            v125 = v70;
            v126 = v21;
            v128 = &v98;
            v129 = &v94;
            v63 = v31;
            v127 = v63;
            [v73 enumerateObjectsUsingBlock:&v120];
            if (v67)
            {
              for (j = 0; j != v67; ++j)
              {
                v40 = objc_autoreleasePoolPush();
                if (j >= [v73 count])
                {
                  v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamScore%lu", j];
                  v42 = [v41 _pas_stringBackedByUTF8CString];
                  [v38 setObject:&unk_284784320 forKeyedSubscript:v42];

                  v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", j];
                  v44 = [v43 _pas_stringBackedByUTF8CString];
                  [v38 setObject:&unk_284784338 forKeyedSubscript:v44];
                }

                objc_autoreleasePoolPop(v40);
              }
            }

            v68 = [v63 keysSortedByValueUsingComparator:&__block_literal_global_437];
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __35__PPMaintenance__logSportsMetrics___block_invoke_2_438;
            v79[3] = &unk_278976108;
            v85 = v35;
            v45 = v38;
            v80 = v45;
            v64 = v63;
            v81 = v64;
            v82 = v77;
            v83 = &v90;
            v84 = &v86;
            [v68 enumerateObjectsUsingBlock:v79];
            v46 = [v68 count];
            if (v46 < v35)
            {
              do
              {
                v47 = objc_autoreleasePoolPush();
                v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueScore%lu", v46, v64];
                v49 = [v48 _pas_stringBackedByUTF8CString];
                [v45 setObject:&unk_284784320 forKeyedSubscript:v49];

                v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueState%lu", v46];
                v51 = [v50 _pas_stringBackedByUTF8CString];
                [v45 setObject:&unk_284784338 forKeyedSubscript:v51];

                objc_autoreleasePoolPop(v47);
                ++v46;
              }

              while (v35 != v46);
            }

            v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99[3]];
            [v45 setObject:v52 forKeyedSubscript:@"teamFalseNegativesAll"];

            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95[3]];
            [v45 setObject:v53 forKeyedSubscript:v66];

            v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v91[3]];
            [v45 setObject:v54 forKeyedSubscript:@"leagueFalseNegativesAll"];

            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v87[3]];
            [v45 setObject:v55 forKeyedSubscript:v65];

            v56 = v76[2]();
            if (v56)
            {
              v57 = +[PPConfiguration sharedInstance];
              v58 = [v57 sportsMetricsEventName];
              [PPMetricsDispatcher logPayloadForEvent:v58 payload:v45 inBackground:1];
            }

            else
            {
              v57 = pp_default_log_handle();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *v78 = 0;
                _os_log_debug_impl(&dword_23224A000, v57, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v78, 2u);
              }
            }

            _Block_object_dispose(&v86, 8);
            _Block_object_dispose(&v90, 8);
            _Block_object_dispose(&v94, 8);
            _Block_object_dispose(&v98, 8);

            v61 = v73;
            goto LABEL_60;
          }

          v61 = pp_default_log_handle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v120) = 0;
            _os_log_debug_impl(&dword_23224A000, v61, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", &v120, 2u);
          }
        }

        else
        {
          v61 = pp_default_log_handle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v120) = 138412290;
            *(&v120 + 4) = v69;
            _os_log_error_impl(&dword_23224A000, v61, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to get Portrait siri sports predictions:%@", &v120, 0xCu);
          }
        }

        v56 = 0;
LABEL_60:

LABEL_61:
        goto LABEL_62;
      }

      v60 = pp_default_log_handle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *v135 = 0;
        _os_log_debug_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v135, 2u);
      }
    }

    else
    {
      v60 = pp_default_log_handle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *v135 = 0;
        _os_log_error_impl(&dword_23224A000, v60, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to load TV app Sports Favorites trie.", v135, 2u);
      }
    }

    v56 = 0;
LABEL_63:

    objc_autoreleasePoolPop(context);
    *(*(*(v74 + 40) + 8) + 24) = v56;
    goto LABEL_64;
  }

  v59 = pp_default_log_handle();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    *v135 = 0;
    _os_log_debug_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v135, 2u);
  }

LABEL_64:
  v62 = *MEMORY[0x277D85DE8];
}

void __35__PPMaintenance__logSportsMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Enters favRequest completion block.", &v12, 2u);
  }

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to make WLKFavoritesRequest: %@", &v12, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

void __35__PPMaintenance__logSportsMetrics___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v26 = a2;
  v5 = [*(a1 + 32) payloadForString:?];
  if (*(a1 + 88) > a3)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:v26];
    v7 = *(a1 + 40);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamScore%lu", a3];
    v9 = [v8 _pas_stringBackedByUTF8CString];
    [v7 setObject:v6 forKeyedSubscript:v9];
  }

  if (v5)
  {
    if ([*(a1 + 56) containsObject:v26])
    {
      --*(*(*(a1 + 72) + 8) + 24);
      if (*(a1 + 88) > a3)
      {
        --*(*(*(a1 + 80) + 8) + 24);
        v10 = &unk_2847842D8;
LABEL_11:
        v14 = *(a1 + 40);
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", a3];
        v16 = [v15 _pas_stringBackedByUTF8CString];
        [v14 setObject:v10 forKeyedSubscript:v16];
      }
    }

    else if (*(a1 + 88) > a3)
    {
      v10 = &unk_2847842F0;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCABB0];
    v12 = [*(a1 + 48) objectForKeyedSubscript:v26];
    [v12 doubleValue];
    v19 = v18;
    v20 = *(a1 + 64);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v21 = [v20 objectForKeyedSubscript:v13];
    [v21 doubleValue];
    v23 = [v17 numberWithDouble:v19 + v22];
    v24 = *(a1 + 64);
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    [v24 setObject:v23 forKeyedSubscript:v25];

    goto LABEL_13;
  }

  if (*(a1 + 88) <= a3)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 40);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", a3];
  v13 = [v12 _pas_stringBackedByUTF8CString];
  [v11 setObject:&unk_284784308 forKeyedSubscript:v13];
LABEL_13:

LABEL_14:
}

void __35__PPMaintenance__logSportsMetrics___block_invoke_2_438(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v14 = v5;
  if (*(a1 + 72) > a3)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueScore%lu", a3];
    v9 = [v8 _pas_stringBackedByUTF8CString];
    [v7 setObject:v6 forKeyedSubscript:v9];

    v5 = v14;
  }

  if ([*(a1 + 48) containsObject:v5])
  {
    --*(*(*(a1 + 56) + 8) + 24);
    if (*(a1 + 72) <= a3)
    {
      goto LABEL_9;
    }

    --*(*(*(a1 + 64) + 8) + 24);
    v10 = &unk_2847842D8;
  }

  else
  {
    if (*(a1 + 72) <= a3)
    {
      goto LABEL_9;
    }

    v10 = &unk_2847842F0;
  }

  v11 = *(a1 + 32);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueState%lu", a3];
  v13 = [v12 _pas_stringBackedByUTF8CString];
  [v11 setObject:v10 forKeyedSubscript:v13];

LABEL_9:
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v31 = &v32;
  v4 = v3;
  v30 = v4;
  v5 = _Block_copy(aBlock);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v25;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogLocationPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v33 + 24);
    *buf = 67109120;
    v37 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogLocationPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v33 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v26[3] & 1) == 0 && *(v33 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2537 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogLocationPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_3(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity location statistics.", &buf, 2u);
  }

  v36 = +[PPLocalLocationStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = objc_opt_new();
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    [v3 setToDate:v4];

    v56 = 0;
    v35 = [v36 locationRecordsWithQuery:v3 error:&v56];
    v5 = v56;
    if (!v35)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPMaintenance: error fetching location records: %@", &buf, 0xCu);
      }

      goto LABEL_37;
    }

    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [PPLocationClusterID lookupTableWithRecords:v35];
    v8 = [v7 allKeys];
    v34 = [v6 initWithArray:v8];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
      }

      goto LABEL_36;
    }

    v33 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v9 = [v36 storage];
    v32 = [v9 lastDonationTimeForSourcesBeforeDate:v33];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
      }

      goto LABEL_35;
    }

    if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
    {
      v10 = objc_opt_new();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x2020000000;
      v60 = 0;
      v11 = objc_opt_new();
      v55 = v5;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_383;
      v51[3] = &unk_278976040;
      v53 = *(a1 + 32);
      v12 = v10;
      v52 = v12;
      p_buf = &buf;
      [v36 iterRankedLocationsWithQuery:v11 error:&v55 block:v51];
      obj = v55;

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v25 = pp_default_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *v50 = 0;
          _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", v50, 2u);
        }

        _Block_object_dispose(&buf, 8);
        v5 = obj;
        v15 = v12;
        goto LABEL_35;
      }

      _Block_object_dispose(&buf, 8);
      v5 = obj;
    }

    else
    {
      v12 = 0;
    }

    v31 = objc_opt_new();

    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    [v31 setFromDate:v17];

    [v31 setDeviceFilter:1];
    v18 = objc_opt_new();
    v49 = v5;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_385;
    v43[3] = &unk_278976068;
    v44 = v34;
    v30 = v18;
    v45 = v30;
    v27 = v12;
    v46 = v27;
    v47 = v32;
    v28 = v16;
    v48 = v28;
    LOBYTE(v16) = [v36 iterLocationRecordsWithQuery:v31 error:&v49 block:v43];
    v29 = v49;

    *(*(*(a1 + 40) + 8) + 24) = v16;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obja = v30;
      v19 = [obja countByEnumeratingWithState:&v39 objects:v57 count:16];
      if (v19)
      {
        v20 = *v40;
        do
        {
          v21 = 0;
          do
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(obja);
            }

            v22 = *(*(&v39 + 1) + 8 * v21);
            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.LocationDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
            [PPMetricsDispatcher logPayloadForEvent:v23 payload:v22 inBackground:1];

            ++v21;
          }

          while (v19 != v21);
          v19 = [obja countByEnumeratingWithState:&v39 objects:v57 count:16];
        }

        while (v19);
      }

      v24 = pp_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity location statistics.", &buf, 2u);
      }
    }

    else
    {
      v24 = pp_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v29;
        _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging location perplexity: %@", &buf, 0xCu);
      }
    }

    v3 = v31;
    v5 = v29;
    v15 = v27;
LABEL_35:

    v14 = v33;
LABEL_36:

    v13 = v34;
LABEL_37:

    goto LABEL_38;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
  }

LABEL_38:

  v26 = *MEMORY[0x277D85DE8];
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_383(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    *a3 = 1;
  }

  v5 = [PPLocationClusterID alloc];
  v6 = [v12 location];
  v7 = [v6 placemark];
  v8 = [(PPLocationClusterID *)v5 initWithPlacemark:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 48) + 8) + 24)];
    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_385(uint64_t a1, void *a2)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PPLocationClusterID alloc];
  v5 = [v3 location];
  v6 = [v5 placemark];
  v7 = [(PPLocationClusterID *)v4 initWithPlacemark:v6];

  LODWORD(v4) = [*(a1 + 32) containsObject:v7];
  v27 = *(a1 + 40);
  context = objc_autoreleasePoolPush();
  v29[0] = @"source";
  v25 = [v3 source];
  v24 = [v25 bundleId];
  v23 = [PPMetricsUtils filterBundleId:?];
  v30[0] = v23;
  v29[1] = @"algorithm";
  v22 = [MEMORY[0x277D3A3F0] describeAlgorithm:{objc_msgSend(v3, "algorithm")}];
  v30[1] = v22;
  v29[2] = @"isNew";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1];
  v30[2] = v21;
  v29[3] = @"groupId";
  v20 = [v3 source];
  v19 = [v20 groupId];
  v8 = [PPMetricsUtils filterGroupIdAllowance:?];
  v9 = v8;
  if (!v8)
  {
    v9 = objc_opt_new();
  }

  v30[3] = v9;
  v29[4] = @"isUserCreated";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 source];
  v12 = [v11 metadata];
  v13 = [v10 numberWithInt:{objc_msgSend(v12, "flags") & 1}];
  v30[4] = v13;
  v29[5] = @"rank";
  v28 = v7;
  v14 = [*(a1 + 48) objectForKeyedSubscript:v7];
  v15 = v14;
  if (!v14)
  {
    v15 = objc_opt_new();
  }

  v30[5] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
  if (!v14)
  {
  }

  if (!v8)
  {
  }

  objc_autoreleasePoolPop(context);
  [v27 addObject:v16];

  v17 = [v3 source];
  [PPMaintenance _logDonationIntervalStatsForSource:v17 domain:2 lastDonationTimes:*(a1 + 56) lastBatchDonationTimes:*(a1 + 64)];

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)_logDonationIntervalStatsForSource:(uint64_t)a3 domain:(void *)a4 lastDonationTimes:(void *)a5 lastBatchDonationTimes:
{
  v34 = a2;
  v8 = a4;
  v9 = a5;
  objc_opt_self();
  v10 = objc_opt_new();
  [v10 setDomain:{+[PPMetricsUtils mapDomainForPET2:](PPMetricsUtils, "mapDomainForPET2:", a3)}];
  v11 = [v34 bundleId];
  [v10 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", v11)}];

  v12 = [v34 bundleId];
  v13 = [v8 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [v34 date];
    v15 = [v34 bundleId];
    v16 = [v8 objectForKeyedSubscript:v15];
    [v14 timeIntervalSinceDate:v16];
    v18 = fabs(v17);

    if (v18 >= 600.0)
    {
      [v10 setIsFirstDonation:0];
      v26 = [v34 date];
      v27 = [v34 bundleId];
      v28 = [v9 objectForKeyedSubscript:v27];
      [v26 timeIntervalSinceDate:v28];
      LODWORD(v30) = vcvtad_u64_f64(v29 / 3600.0);
      [v10 setInterval:v30];

      v21 = [v34 bundleId];
      [v9 removeObjectForKey:v21];
    }

    else
    {
      v19 = [v34 bundleId];
      v20 = [v9 valueForKey:v19];

      [v10 setIsFirstDonation:v20 == 0];
      if (!v20)
      {
        goto LABEL_9;
      }

      v21 = [v34 date];
      v22 = [v34 bundleId];
      v23 = [v9 objectForKeyedSubscript:v22];
      [v21 timeIntervalSinceDate:v23];
      LODWORD(v25) = vcvtad_u64_f64(v24 / 3600.0);
      [v10 setInterval:v25];
    }
  }

  else
  {
    [v10 setIsFirstDonation:1];
  }

  v31 = [v34 date];
  v32 = [v34 bundleId];
  [v8 setObject:v31 forKeyedSubscript:v32];

LABEL_9:
  v33 = [MEMORY[0x277D41DA8] sharedInstance];
  [v33 trackScalarForMessage:v10];
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v31 = &v32;
  v4 = v3;
  v30 = v4;
  v5 = _Block_copy(aBlock);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v25;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogTopicPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v33 + 24);
    *buf = 67109120;
    v37 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogTopicPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v33 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v26[3] & 1) == 0 && *(v33 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2156 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogTopicPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_3(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = pp_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v1, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity topic statistics.", buf, 2u);
  }

  v39 = +[PPLocalTopicStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    oslog = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v2 = [v39 storage];
    v37 = [v2 clusterIdentifiersExistingBeforeDate:oslog];

    if ((*(*(a1 + 32) + 16))())
    {
      if ((*(*(a1 + 32) + 16))())
      {
        v35 = objc_opt_new();
        [v35 setFromDate:oslog];
        [v35 setDeviceFilter:1];
        if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
        {
          v36 = objc_opt_new();
          v3 = objc_opt_new();
          v63 = 0;
          v38 = [v39 rankedTopicsWithQuery:v3 error:&v63];
          v4 = v63;

          if ([v38 count])
          {
            v5 = 0;
            while (1)
            {
              v6 = objc_autoreleasePoolPush();
              if (((*(*(a1 + 32) + 16))() & 1) == 0)
              {
                break;
              }

              v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
              v8 = [v38 objectAtIndexedSubscript:v5];
              v9 = [v8 item];
              v10 = [v9 topicIdentifier];
              [v36 setObject:v7 forKeyedSubscript:v10];

              objc_autoreleasePoolPop(v6);
              if (++v5 >= [v38 count])
              {
                goto LABEL_11;
              }
            }

            v32 = pp_default_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "PPMaintenance: deferring topic ranks.", buf, 2u);
            }

            objc_autoreleasePoolPop(v6);
            goto LABEL_52;
          }

LABEL_11:
        }

        else
        {
          v36 = 0;
          v4 = 0;
        }

        v11 = objc_opt_new();
        *buf = 0;
        v58 = buf;
        v59 = 0x3032000000;
        v60 = __Block_byref_object_copy__17081;
        v61 = __Block_byref_object_dispose__17082;
        v62 = 0;
        v56 = v4;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_317;
        v50[3] = &unk_278975F78;
        v54 = *(a1 + 32);
        v51 = v37;
        v36 = v36;
        v52 = v36;
        v38 = v11;
        v53 = v38;
        v55 = buf;
        v12 = [v39 iterTopicRecordsWithQuery:v35 error:&v56 block:v50];
        v34 = v56;

        *(*(*(a1 + 40) + 8) + 24) = v12;
        if ((*(*(a1 + 32) + 16))())
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          obj = v38;
          v13 = [obj countByEnumeratingWithState:&v46 objects:v73 count:16];
          if (v13)
          {
            v14 = *v47;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v47 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v46 + 1) + 8 * i);
                v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
                [PPMetricsDispatcher logPayloadForEvent:v17 payload:v16 inBackground:1];
              }

              v13 = [obj countByEnumeratingWithState:&v46 objects:v73 count:16];
            }

            while (v13);
          }

          if (*(*(*(a1 + 40) + 8) + 24))
          {
            v4 = v34;
            if (*(v58 + 5))
            {
              v18 = pp_default_log_handle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                LOWORD(v68) = 0;
                _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_INFO, "PPMaintenance: performing sampled logging of user created entity", &v68, 2u);
              }

              v19 = objc_opt_new();
              v20 = objc_autoreleasePoolPush();
              v21 = objc_alloc(MEMORY[0x277CBEB98]);
              v22 = [v21 initWithObjects:{*(v58 + 5), 0}];
              objc_autoreleasePoolPop(v20);
              [v19 setMatchingTopicIds:v22];

              [v19 setToDate:oslog];
              *&v68 = 0;
              *(&v68 + 1) = &v68;
              v69 = 0x3032000000;
              v70 = __Block_byref_object_copy__17081;
              v71 = __Block_byref_object_dispose__17082;
              v72 = 0;
              v44[4] = &v68;
              v45 = v34;
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_339;
              v44[3] = &unk_278975FA0;
              v23 = [v39 iterTopicRecordsWithQuery:v19 error:&v45 block:v44];
              v4 = v45;

              if (v23)
              {
                if (*(*(&v68 + 1) + 40))
                {
                  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.UserWroteTopic", @"com.apple.proactive.PersonalizationPortrait"];
                  v25 = objc_autoreleasePoolPush();
                  v64[0] = @"source";
                  obja = [*(*(&v68 + 1) + 40) source];
                  v26 = [obja bundleId];
                  v27 = [PPMetricsUtils filterBundleId:v26];
                  v64[1] = @"algorithm";
                  v65[0] = v27;
                  v28 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(*(*(&v68 + 1) + 40), "algorithm")}];
                  v65[1] = v28;
                  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];

                  objc_autoreleasePoolPop(v25);
                  [PPMetricsDispatcher logPayloadForEvent:v24 payload:v29 inBackground:1];
                }

                v30 = pp_default_log_handle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *v66 = 0;
                  _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of sampled user created entity", v66, 2u);
                }
              }

              else
              {
                v30 = pp_default_log_handle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *v66 = 138412290;
                  v67 = v4;
                  _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPMaintenance: error logging sampled user creation metrics: %@", v66, 0xCu);
                }
              }

              _Block_object_dispose(&v68, 8);
              if ((v23 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            v31 = pp_default_log_handle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              LOWORD(v68) = 0;
              _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity topic statistics.", &v68, 2u);
            }

            v34 = v4;
          }

          else
          {
            v31 = pp_default_log_handle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v68) = 138412290;
              *(&v68 + 4) = v34;
              _os_log_error_impl(&dword_23224A000, v31, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging topic perplexity: %@", &v68, 0xCu);
            }
          }
        }

        else
        {
          v31 = pp_default_log_handle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v68) = 0;
            _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic donation analysis reporting.", &v68, 2u);
          }
        }

        v4 = v34;
LABEL_51:

        _Block_object_dispose(buf, 8);
LABEL_52:

        goto LABEL_53;
      }

      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
LABEL_18:
        _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring topic perplexity.", buf, 2u);
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  oslog = pp_default_log_handle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring topic perplexity.", buf, 2u);
  }

LABEL_54:

  v33 = *MEMORY[0x277D85DE8];
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_317(uint64_t a1, void *a2, _BYTE *a3)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (((*(*(a1 + 56) + 16))() & 1) == 0)
  {
    *a3 = 1;
    goto LABEL_17;
  }

  v6 = *(a1 + 32);
  v7 = [v5 topic];
  v8 = [v7 clusterIdentifier];
  v9 = [v6 containsObject:v8];

  v37[0] = @"source";
  v35 = [v5 source];
  v34 = [v35 bundleId];
  v33 = [PPMetricsUtils filterBundleId:?];
  v38[0] = v33;
  v37[1] = @"algorithm";
  v32 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v5, "algorithm")}];
  v38[1] = v32;
  v37[2] = @"isNew";
  v36 = v9;
  v31 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
  v38[2] = v31;
  v37[3] = @"groupId";
  v30 = [v5 source];
  v29 = [v30 groupId];
  v10 = [PPMetricsUtils filterGroupIdAllowance:?];
  v11 = v10;
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v38[3] = v10;
  v37[4] = @"isUserCreated";
  v12 = MEMORY[0x277CCABB0];
  v13 = [v5 source];
  v14 = [v13 metadata];
  v15 = [v12 numberWithInt:{objc_msgSend(v14, "flags") & 1}];
  v38[4] = v15;
  v37[5] = @"rank";
  v16 = *(a1 + 40);
  v17 = [v5 topic];
  v18 = [v17 topicIdentifier];
  v19 = [v16 objectForKeyedSubscript:v18];
  v20 = v19;
  if (!v19)
  {
    v20 = objc_opt_new();
  }

  v38[5] = v20;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
  if (!v19)
  {
  }

  if (!v11)
  {
  }

  [*(a1 + 48) addObject:v28];
  if (v36)
  {
    v21 = [v5 source];
    v22 = [v21 metadata];
    if (([v22 flags] & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = [MEMORY[0x277D3A578] yesWithProbability:0.100000001];

    if (v23)
    {
      v21 = [v5 topic];
      v24 = [v21 topicIdentifier];
      v25 = *(*(a1 + 64) + 8);
      v22 = *(v25 + 40);
      *(v25 + 40) = v24;
      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v31 = &v32;
  v4 = v3;
  v30 = v4;
  v5 = _Block_copy(aBlock);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_3;
  v22 = &unk_278975DE0;
  v6 = v5;
  v23 = v6;
  v24 = &v25;
  v7 = _Block_copy(&v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogNamedEntityPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v33 + 24);
    *buf = 67109120;
    v37 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogNamedEntityPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v33 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v26[3] & 1) == 0 && *(v33 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2417 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogNamedEntityPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_3(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity named entity statistics.", buf, 2u);
  }

  v43 = +[PPLocalNamedEntityStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    oslog = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v3 = [v43 storage];
    v42 = [v3 clusterIdentifiersExistingBeforeDate:oslog];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
      }

      goto LABEL_46;
    }

    v4 = [v43 storage];
    v41 = [v4 lastDonationTimeForSourcesBeforeDate:oslog];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
      }

      goto LABEL_45;
    }

    v40 = objc_opt_new();
    [v40 setFromDate:oslog];
    [v40 setDeviceFilter:1];
    v39 = objc_opt_new();
    if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
    {
      v5 = objc_opt_new();
      *buf = 0;
      v60 = buf;
      v61 = 0x2020000000;
      LODWORD(v62) = 0;
      v6 = objc_opt_new();
      v69 = 0;
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_362;
      v65[3] = &unk_278975FC8;
      v67 = *(a1 + 32);
      v38 = v5;
      v66 = v38;
      v68 = buf;
      [v43 iterRankedNamedEntitiesWithQuery:v6 error:&v69 block:v65];
      v7 = v69;

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v31 = pp_default_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v75) = 0;
          _os_log_debug_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", &v75, 2u);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_44;
      }

      _Block_object_dispose(buf, 8);
      v8 = v38;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *buf = 0;
    v60 = buf;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__17081;
    v63 = __Block_byref_object_dispose__17082;
    v64 = 0;
    v10 = objc_opt_new();
    v58 = v7;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_364;
    v51[3] = &unk_278975FF0;
    v52 = v42;
    v37 = v10;
    v53 = v37;
    v11 = v8;
    v54 = v11;
    v55 = v41;
    v56 = v39;
    v57 = buf;
    LOBYTE(v10) = [v43 iterNamedEntityRecordsWithQuery:v40 error:&v58 block:v51];
    v38 = v11;
    v12 = v58;

    *(*(*(a1 + 40) + 8) + 24) = v10;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(v60 + 5))
      {
        v13 = pp_default_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v75) = 0;
          _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPMaintenance: performing sampled logging of user created entity", &v75, 2u);
        }

        v36 = objc_opt_new();
        v14 = objc_autoreleasePoolPush();
        v15 = objc_alloc(MEMORY[0x277CBEB98]);
        v16 = [v15 initWithObjects:{*(v60 + 5), 0}];
        objc_autoreleasePoolPop(v14);
        [v36 setMatchingNames:v16];

        [v36 setToDate:oslog];
        *&v75 = 0;
        *(&v75 + 1) = &v75;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__17081;
        v78 = __Block_byref_object_dispose__17082;
        v79 = 0;
        v49[4] = &v75;
        v50 = v12;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_373;
        v49[3] = &unk_278976018;
        v35 = [v43 iterNamedEntityRecordsWithQuery:v36 error:&v50 block:v49];
        v34 = v50;

        if (v35)
        {
          if (*(*(&v75 + 1) + 40))
          {
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.UserWroteNamedEntity", @"com.apple.proactive.PersonalizationPortrait"];
            v18 = objc_autoreleasePoolPush();
            v71[0] = @"source";
            v33 = [*(*(&v75 + 1) + 40) source];
            v19 = [v33 bundleId];
            v20 = [PPMetricsUtils filterBundleId:v19];
            v71[1] = @"algorithm";
            v72[0] = v20;
            v21 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(*(*(&v75 + 1) + 40), "algorithm")}];
            v72[1] = v21;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];

            objc_autoreleasePoolPop(v18);
            [PPMetricsDispatcher logPayloadForEvent:v17 payload:v22 inBackground:1];
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v23 = v37;
          v24 = [v23 countByEnumeratingWithState:&v45 objects:v70 count:16];
          if (v24)
          {
            v25 = *v46;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v46 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v45 + 1) + 8 * i);
                v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
                [PPMetricsDispatcher logPayloadForEvent:v28 payload:v27 inBackground:1];
              }

              v24 = [v23 countByEnumeratingWithState:&v45 objects:v70 count:16];
            }

            while (v24);
          }

          v29 = pp_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *v73 = 0;
            _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of sampled user created entity", v73, 2u);
          }
        }

        else
        {
          v29 = pp_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v73 = 138412290;
            v74 = v34;
            _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "PPMaintenance: error logging sampled user creation metrics: %@", v73, 0xCu);
          }
        }

        _Block_object_dispose(&v75, 8);
        v12 = v34;
        if ((v35 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(v75) = 0;
        _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity entity statistics.", &v75, 2u);
      }
    }

    else
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v75) = 138412290;
        *(&v75 + 4) = v12;
        _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging entity perplexity: %@", &v75, 0xCu);
      }
    }

LABEL_43:
    v7 = v12;

    _Block_object_dispose(buf, 8);
LABEL_44:

LABEL_45:
    v9 = v41;
LABEL_46:

    goto LABEL_47;
  }

  oslog = pp_default_log_handle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
  }

LABEL_47:

  v32 = *MEMORY[0x277D85DE8];
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_362(void *a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (((*(a1[5] + 16))() & 1) == 0)
  {
    *a3 = 1;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1[6] + 8) + 24)];
  objc_autoreleasePoolPop(v5);
  v7 = a1[4];
  v8 = objc_autoreleasePoolPush();
  v9 = [v12 item];
  v10 = [v9 name];
  v11 = [v10 lowercaseString];

  objc_autoreleasePoolPop(v8);
  [v7 setObject:v6 forKeyedSubscript:v11];

  ++*(*(a1[6] + 8) + 24);
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_364(void *a1, void *a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 entity];
  v6 = [v5 clusterIdentifier];
  v7 = [v4 containsObject:v6];

  v45 = a1[5];
  context = objc_autoreleasePoolPush();
  v48[0] = @"source";
  v43 = [v3 source];
  v42 = [v43 bundleId];
  v41 = [PPMetricsUtils filterBundleId:?];
  v49[0] = v41;
  v48[1] = @"algorithm";
  v40 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v3, "algorithm")}];
  v49[1] = v40;
  v48[2] = @"category";
  v8 = MEMORY[0x277D3A420];
  v39 = [v3 entity];
  v38 = [v8 describeCategory:{objc_msgSend(v39, "category")}];
  v49[2] = v38;
  v48[3] = @"dynamicCategory";
  v37 = [v3 entity];
  v36 = [v37 dynamicCategory];
  v9 = [v36 _pas_stringBackedByUTF8CString];
  v35 = v9;
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v30 = v9;
  v49[3] = v9;
  v48[4] = @"isNew";
  v46 = v7;
  v34 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
  v49[4] = v34;
  v48[5] = @"groupId";
  v33 = [v3 source];
  v32 = [v33 groupId];
  v10 = [PPMetricsUtils filterGroupIdAllowance:?];
  v11 = v10;
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v29 = v10;
  v49[5] = v10;
  v48[6] = @"isUserCreated";
  v12 = MEMORY[0x277CCABB0];
  v13 = [v3 source];
  v14 = [v13 metadata];
  v15 = [v12 numberWithInt:{objc_msgSend(v14, "flags") & 1}];
  v49[6] = v15;
  v48[7] = @"rank";
  v47 = a1;
  v16 = a1[6];
  v17 = [v3 entity];
  v18 = [v17 name];
  v19 = [v18 lowercaseString];
  v20 = [v16 objectForKeyedSubscript:v19];
  v21 = v20;
  if (!v20)
  {
    v21 = objc_opt_new();
  }

  v49[7] = v21;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:8];
  if (!v20)
  {
  }

  if (!v11)
  {
  }

  if (!v35)
  {
  }

  objc_autoreleasePoolPop(context);
  [v45 addObject:v31];

  v22 = [v3 source];
  [PPMaintenance _logDonationIntervalStatsForSource:v22 domain:1 lastDonationTimes:v47[7] lastBatchDonationTimes:v47[8]];

  if (v46)
  {
    v23 = [v3 source];
    v24 = [v23 metadata];
    if (([v24 flags] & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    v25 = [MEMORY[0x277D3A578] yesWithProbability:0.100000001];

    if (v25)
    {
      v23 = [v3 entity];
      v26 = [v23 name];
      v27 = *(v47[9] + 8);
      v24 = *(v27 + 40);
      *(v27 + 40) = v26;
      goto LABEL_17;
    }
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

void __45__PPMaintenance__registerLogTopicFirstSource__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v20 = &v21;
  v3 = v2;
  v19 = v3;
  v4 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_3;
  v16[3] = &unk_278975D98;
  v5 = v4;
  v17 = v5;
  v6 = _Block_copy(v16);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v7 = pp_maintenance_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_maintenance_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LogTopicFirstSource", "", buf, 2u);
  }

  v6[2](v6);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v22 + 24);
    *buf = 67109120;
    v26 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "LogTopicFirstSource", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v22 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalTopicStore defaultStore];
  v29 = objc_opt_new();
  v3 = [v2 storage];
  v31 = a1;
  v4 = [v3 firstDonationSourceCountsWithShouldContinueBlock:*(a1 + 32)];

  if (v4)
  {
    v27 = v4;
    v28 = v2;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v7 = v29;
    if (v6)
    {
      v8 = v6;
      v9 = *v37;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          if (((*(*(v31 + 32) + 16))() & 1) == 0)
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring partially completed topic first source logging", buf, 2u);
            }

            v4 = v27;
            v2 = v28;
            v18 = obj;
            goto LABEL_26;
          }

          v12 = objc_autoreleasePoolPush();
          v42[0] = @"source";
          v13 = [v11 bundleId];
          v14 = [PPMetricsUtils filterBundleId:v13];
          v43[0] = v14;
          v42[1] = @"algorithm";
          v15 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v11, "algorithm")}];
          v43[1] = v15;
          v42[2] = @"matchedCount";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "count")}];
          v43[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

          objc_autoreleasePoolPop(v12);
          [v29 addObject:v17];
        }

        v5 = obj;
        v8 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v29;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicInitialDonation", @"com.apple.proactive.PersonalizationPortrait"];
          [PPMetricsDispatcher logPayloadForEvent:v24 payload:v23 inBackground:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v20);
      v2 = v28;
      v7 = v29;
    }

    else
    {
      v2 = v28;
    }

    v4 = v27;
  }

  else
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring bundle counts work due to nil result", buf, 2u);
    }

    v7 = v29;
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
}

void __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v20 = &v21;
  v3 = v2;
  v19 = v3;
  v4 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_3;
  v16[3] = &unk_278975D98;
  v5 = v4;
  v17 = v5;
  v6 = _Block_copy(v16);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v7 = pp_maintenance_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_maintenance_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LogNamedEntityFirstSource", "", buf, 2u);
  }

  v6[2](v6);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v22 + 24);
    *buf = 67109120;
    v26 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "LogNamedEntityFirstSource", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v22 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalNamedEntityStore defaultStore];
  v29 = objc_opt_new();
  v3 = [v2 storage];
  v31 = a1;
  v4 = [v3 firstDonationSourceCountsWithShouldContinueBlock:*(a1 + 32)];

  if (v4)
  {
    v27 = v4;
    v28 = v2;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v7 = v29;
    if (v6)
    {
      v8 = v6;
      v9 = *v37;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          if (((*(*(v31 + 32) + 16))() & 1) == 0)
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring partially completed entity first source logging", buf, 2u);
            }

            v4 = v27;
            v2 = v28;
            v18 = obj;
            goto LABEL_26;
          }

          v12 = objc_autoreleasePoolPush();
          v42[0] = @"source";
          v13 = [v11 bundleId];
          v14 = [PPMetricsUtils filterBundleId:v13];
          v43[0] = v14;
          v42[1] = @"algorithm";
          v15 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v11, "algorithm")}];
          v43[1] = v15;
          v42[2] = @"matchedCount";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "count")}];
          v43[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

          objc_autoreleasePoolPop(v12);
          [v29 addObject:v17];
        }

        v5 = obj;
        v8 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = v29;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityInitialDonation", @"com.apple.proactive.PersonalizationPortrait"];
          [PPMetricsDispatcher logPayloadForEvent:v24 payload:v23 inBackground:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v20);
      v2 = v28;
      v7 = v29;
    }

    else
    {
      v2 = v28;
    }

    v4 = v27;
  }

  else
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring bundle counts work due to nil result", buf, 2u);
    }

    v7 = v29;
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
}

void __45__PPMaintenance__registerDailyMetricsLogging__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v30 = &v31;
  v4 = v3;
  v29 = v4;
  v5 = _Block_copy(aBlock);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_3;
  v20[3] = &unk_278976090;
  v6 = *(a1 + 32);
  v22 = &v24;
  v23 = v6;
  v7 = v5;
  v21 = v7;
  v8 = _Block_copy(v20);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v9 = pp_maintenance_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DailyMetricsLogging", "", buf, 2u);
  }

  v8[2](v8);
  v13 = pp_maintenance_signpost_handle();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(v32 + 24);
    *buf = 67109120;
    v36 = v15;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v10, "DailyMetricsLogging", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v32 + 24))
  {
    v16 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v16 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v16);
  if ((v25[3] & 1) == 0 && *(v32 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:1969 description:@"Unexpected failure of deferral"];
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DailyMetricsLogging: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_3(uint64_t a1)
{
  v45[7] = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance running periodic daily metrics logging", buf, 2u);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning daily metrics generation.", buf, 2u);
  }

  v7 = v4;
  objc_opt_self();
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.DeviceStats", @"com.apple.proactive.PersonalizationPortrait"];
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  [PPMetricsDispatcher logPayloadForEvent:v8 payload:MEMORY[0x277CBEC10] inBackground:1];

  if (v7[2](v7))
  {
    v30 = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke;
    aBlock[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    aBlock[4] = v5;
    v9 = _Block_copy(aBlock);
    v45[0] = v9;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_2;
    v41[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v41[4] = v5;
    v10 = _Block_copy(v41);
    v45[1] = v10;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_3;
    v40[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v40[4] = v5;
    v11 = _Block_copy(v40);
    v45[2] = v11;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_4;
    v39[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v39[4] = v5;
    v12 = _Block_copy(v39);
    v45[3] = v12;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_5;
    v38[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v38[4] = v5;
    v13 = _Block_copy(v38);
    v45[4] = v13;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_6;
    v37[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v37[4] = v5;
    v14 = _Block_copy(v37);
    v45[5] = v14;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_7;
    v36[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v36[4] = v5;
    v15 = _Block_copy(v36);
    v45[6] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];

    v17 = objc_opt_new();
    v18 = [v16 _pas_shuffledArrayUsingRng:v17];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:buf count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if (!(*(*(*(&v32 + 1) + 8 * i) + 16))() || (v7[2](v7) & 1) == 0)
          {
            v26 = pp_default_log_handle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *v31 = 0;
              _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_INFO, "PPMaintenance: deferring daily metrics generation", v31, 2u);
            }

            v25 = 0;
            v24 = v19;
            goto LABEL_21;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v24 = pp_default_log_handle();
    v25 = 1;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: completed daily metrics generation.", v31, 2u);
    }

LABEL_21:
    a1 = v30;
  }

  else
  {
    v25 = 0;
  }

  v27 = 0;
  *(*(*(a1 + 40) + 8) + 24) = v25;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v28 = pp_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v27;
      _os_log_error_impl(&dword_23224A000, v28, OS_LOG_TYPE_ERROR, "PPMaintenance failed to run periodic metrics logging operations: %@", buf, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily database statistics.", buf, 2u);
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v7 = +[PPSQLDatabase sharedInstance];
  v8 = [v7 stats];
  v9 = [v8 objectForKeyedSubscript:@"version"];
  v10 = [v9 integerValue];

  v11 = objc_autoreleasePoolPush();
  v12 = [v8 objectForKeyedSubscript:@"rowCounts"];
  *buf = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke;
  v47 = &unk_278975EA0;
  v50 = v10;
  v13 = v5;
  v48 = v13;
  v49 = &v51;
  [v12 enumerateKeysAndObjectsUsingBlock:buf];

  objc_autoreleasePoolPop(v11);
  if (v52[3])
  {
    goto LABEL_5;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [v8 objectForKeyedSubscript:@"remoteRecordCounts"];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke_2;
  v40[3] = &unk_278975EA0;
  v43 = v10;
  v16 = v13;
  v41 = v16;
  v42 = &v51;
  [v15 enumerateKeysAndObjectsUsingBlock:v40];

  objc_autoreleasePoolPop(v14);
  if (v52[3])
  {
LABEL_5:
    v17 = 0;
  }

  else
  {
    v18 = [v7 checkWithError:a2];
    v19 = objc_autoreleasePoolPush();
    v38 = v18;
    v20 = [v18 objectForKeyedSubscript:@"integrity_check"];
    v21 = [v20 objectAtIndexedSubscript:0];
    if ([v21 isEqualToString:@"ok"])
    {
      v22 = 0;
    }

    else
    {
      v23 = [v18 objectForKeyedSubscript:@"integrity_check"];
      v22 = [v23 count];
    }

    v24 = objc_opt_new();
    [v24 setSchemaVersion:v10];
    [v24 setPragmaCheckType:1];
    v25 = +[PPTrialWrapper sharedInstance];
    v26 = [v25 concatenatedTreatmentNames];
    [v24 setActiveTreatments:v26];

    v27 = [MEMORY[0x277D41DA8] sharedInstance];
    [v27 trackScalarForMessage:v24 updateCount:v22];

    objc_autoreleasePoolPop(v19);
    v28 = v38;
    if ((v16[2](v16) & 1) == 0)
    {
      goto LABEL_14;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = [v38 objectForKeyedSubscript:@"foreign_key_check"];
    v31 = [v30 count];

    v32 = objc_opt_new();
    [v32 setSchemaVersion:v10];
    [v32 setPragmaCheckType:2];
    v33 = +[PPTrialWrapper sharedInstance];
    v34 = [v33 concatenatedTreatmentNames];
    [v32 setActiveTreatments:v34];

    v35 = [MEMORY[0x277D41DA8] sharedInstance];
    [v35 trackScalarForMessage:v32 updateCount:v31];

    objc_autoreleasePoolPop(v29);
    v28 = v38;
    if (v16[2](v16))
    {
      v36 = pp_default_log_handle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v39 = 0;
        _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily database statistics.", v39, 2u);
      }

      v17 = 1;
    }

    else
    {
LABEL_14:
      v17 = 0;
    }
  }

  _Block_object_dispose(&v51, 8);
  return v17;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a3;
  objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily named entity statistics.", buf, 2u);
  }

  v6 = +[PPLocalNamedEntityStore defaultStore];
  v7 = [v6 storage];
  v8 = [v7 uniqueClusterIdentifierCount];

  if (!v4[2](v4))
  {
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityStoreStats", @"com.apple.proactive.PersonalizationPortrait"];
  v10 = objc_autoreleasePoolPush();
  v36 = @"uniqueItems";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  *buf = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v36 count:1];

  objc_autoreleasePoolPop(v10);
  [PPMetricsDispatcher logPayloadForEvent:v9 payload:v12 inBackground:1];

  if (!v4[2](v4))
  {
LABEL_12:
    v31 = 0;
    goto LABEL_19;
  }

  objc_opt_self();
  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private named entity statistics.", v35, 2u);
  }

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [MEMORY[0x277CBEAF8] currentLocale];
  v16 = [v15 localeIdentifier];
  v17 = [v14 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"namedEntityDonationSource", v16];

  v18 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v17];
  v19 = +[PPLocalNamedEntityStore defaultStore];
  v20 = [v19 storage];
  v21 = [v20 thirdPartyBundleIdsFromToday];
  v22 = v21;
  v23 = MEMORY[0x277CBEBF8];
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = [v18 record:v24];
  v26 = pp_default_log_handle();
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v35 = 0;
      v28 = "PPMaintenance: Successfully logged named entity source bundle identifiers to differential privacy.";
      v29 = v27;
      v30 = OS_LOG_TYPE_INFO;
LABEL_15:
      _os_log_impl(&dword_23224A000, v29, v30, v28, v35, 2u);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    v28 = "PPMaintenance: unable to log named entity bundle identifiers to differential privacy.";
    v29 = v27;
    v30 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_15;
  }

  v32 = pp_default_log_handle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily named entity statistics.", v35, 2u);
  }

  v31 = 1;
LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

BOOL __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_3(uint64_t a1, uint64_t *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily location statistics.", buf, 2u);
  }

  v7 = +[PPLocalLocationStore defaultStore];
  v8 = objc_opt_new();
  v9 = [v7 locationRecordsWithQuery:v8 error:a2];

  v10 = v9 != 0;
  if (!v9)
  {
    v35 = pp_default_log_handle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = *a2;
      *buf = 138412290;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_23224A000, v35, OS_LOG_TYPE_ERROR, "PPMaintenance: error fetching location records: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v11 = [PPLocationClusterID lookupTableWithRecords:v9];
  v12 = [v11 count];

  if (v5[2](v5))
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.LocationStoreStats", @"com.apple.proactive.PersonalizationPortrait"];
    v14 = objc_autoreleasePoolPush();
    v40 = @"uniqueItems";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    *buf = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v40 count:1];

    objc_autoreleasePoolPop(v14);
    [PPMetricsDispatcher logPayloadForEvent:v13 payload:v16 inBackground:1];

    if (v5[2](v5))
    {
      objc_opt_self();
      v17 = pp_default_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v39 = 0;
        _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private location statistics.", v39, 2u);
      }

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = [MEMORY[0x277CBEAF8] currentLocale];
      v20 = [v19 localeIdentifier];
      v21 = [v18 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"locationDonationSource", v20];

      v22 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v21];
      v23 = +[PPLocalLocationStore defaultStore];
      v24 = [v23 storage];
      v25 = [v24 thirdPartyBundleIdsFromToday];
      v26 = v25;
      v27 = MEMORY[0x277CBEBF8];
      if (v25)
      {
        v27 = v25;
      }

      v28 = v27;

      v29 = [v22 record:v28];
      v30 = pp_default_log_handle();
      v31 = v30;
      if (v29)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        *v39 = 0;
        v32 = "PPMaintenance: Successfully logged location source bundle identifiers to differential privacy.";
        v33 = v31;
        v34 = OS_LOG_TYPE_INFO;
      }

      else
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *v39 = 0;
        v32 = "PPMaintenance: unable to log location bundle identifiers to differential privacy.";
        v33 = v31;
        v34 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&dword_23224A000, v33, v34, v32, v39, 2u);
LABEL_21:

      v35 = pp_default_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v39 = 0;
        _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily location statistics.", v39, 2u);
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  v10 = 0;
LABEL_17:

  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a3;
  objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily topic statistics.", buf, 2u);
  }

  v6 = +[PPLocalTopicStore defaultStore];
  v7 = [v6 storage];
  v8 = [v7 uniqueClusterIdentifierCount];

  if (!v4[2](v4))
  {
    goto LABEL_12;
  }

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicStoreStats", @"com.apple.proactive.PersonalizationPortrait"];
  v10 = objc_autoreleasePoolPush();
  v36 = @"uniqueItems";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  *buf = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v36 count:1];

  objc_autoreleasePoolPop(v10);
  [PPMetricsDispatcher logPayloadForEvent:v9 payload:v12 inBackground:1];

  if (!v4[2](v4))
  {
LABEL_12:
    v31 = 0;
    goto LABEL_19;
  }

  objc_opt_self();
  v13 = pp_default_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private topic statistics.", v35, 2u);
  }

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [MEMORY[0x277CBEAF8] currentLocale];
  v16 = [v15 localeIdentifier];
  v17 = [v14 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"topicDonationSource", v16];

  v18 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v17];
  v19 = +[PPLocalTopicStore defaultStore];
  v20 = [v19 storage];
  v21 = [v20 thirdPartyBundleIdsFromToday];
  v22 = v21;
  v23 = MEMORY[0x277CBEBF8];
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = [v18 record:v24];
  v26 = pp_default_log_handle();
  v27 = v26;
  if (v25)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v35 = 0;
      v28 = "PPMaintenance: Successfully logged topic source bundle identifiers to differential privacy.";
      v29 = v27;
      v30 = OS_LOG_TYPE_INFO;
LABEL_15:
      _os_log_impl(&dword_23224A000, v29, v30, v28, v35, 2u);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    v28 = "PPMaintenance: unable to log topic bundle identifiers to differential privacy.";
    v29 = v27;
    v30 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_15;
  }

  v32 = pp_default_log_handle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily topic statistics.", v35, 2u);
  }

  v31 = 1;
LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily topic engagement statistics.", buf, 2u);
  }

  v7 = objc_opt_new();
  [v7 setLimit:+[PPMaintenance _kValue]()];
  v8 = objc_opt_new();
  v9 = [v8 mappedTopicsPendingFeedbackWithShouldContinueBlock:v5];

  if (!v9)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "PPMaintenance: unable to fetch topic engagements.";
LABEL_43:
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
    }

LABEL_44:
    v52 = 0;
    goto LABEL_52;
  }

  if ((v5[2](v5) & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v53 = "PPMaintenance: deferring topic engagements.";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_291];
  v12 = [v10 initWithArray:v11];

  v67 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v85 objects:buf count:16];
  if (!v14)
  {
    v52 = 1;
    goto LABEL_51;
  }

  v15 = 0x27896F000uLL;
  v16 = *v86;
  v64 = v7;
  v65 = v5;
  v62 = v13;
  v63 = v9;
  v58 = a2;
  v60 = *v86;
  while (2)
  {
    v17 = 0;
    v59 = v14;
    do
    {
      if (*v86 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v85 + 1) + 8 * v17);
      if ((v5[2](v5) & 1) == 0)
      {
        v55 = pp_default_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 0;
          _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic engagements.", v84, 2u);
        }

LABEL_49:

        v52 = 0;
        goto LABEL_51;
      }

      v61 = v17;
      v19 = [*(v15 + 2504) defaultStore];
      v74 = v18;
      v20 = [v19 scoresForTopicMapping:v18 query:v7 error:a2];
      v21 = [v20 allKeys];

      if (!v21)
      {
        v55 = pp_default_log_handle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *v84 = 0;
          _os_log_impl(&dword_23224A000, v55, OS_LOG_TYPE_DEFAULT, "PPMaintenance: unable to fetch ranked items from topic store.", v84, 2u);
        }

LABEL_48:
        v7 = v64;
        goto LABEL_49;
      }

      v66 = v21;
      v72 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v21];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = v9;
      v22 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
      v23 = v74;
      if (v22)
      {
        v24 = v22;
        v75 = *v81;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v81 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v80 + 1) + 8 * i);
            if ((v5[2](v5) & 1) == 0)
            {
              v54 = pp_default_log_handle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *v84 = 0;
                _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic engagements.", v84, 2u);
              }

              v13 = v62;
              v9 = v63;
              v55 = v66;
              goto LABEL_48;
            }

            v27 = [v26 mappingId];
            v28 = [v27 isEqual:v23];

            if (v28)
            {
              v29 = [v26 feedbackItems];
              v30 = [v29 firstObject];

              v31 = [v30 itemString];
              if (v31)
              {
                v32 = v31;
                v33 = [v30 itemString];
                v34 = [v72 containsObject:v33];

                if (v34)
                {
                  if ([v30 itemFeedbackType] == 2 || objc_msgSend(v30, "itemFeedbackType") == 1)
                  {
                    v70 = 0;
                    v35 = 0;
                    v36 = 1;
                  }

                  else
                  {
                    v37 = [v30 itemFeedbackType];
                    v36 = 0;
                    v70 = v37 == 5;
                    v35 = v37 != 5;
                  }

                  context = objc_autoreleasePoolPush();
                  v90[0] = @"rank";
                  v38 = MEMORY[0x277CCABB0];
                  v69 = [v30 itemString];
                  v68 = [v38 numberWithUnsignedInteger:{-[NSObject indexOfObject:](v66, "indexOfObject:", v69)}];
                  v91[0] = v68;
                  v90[1] = @"domain";
                  v39 = [PPMetricsUtils stringifyDomain:0];
                  v91[1] = v39;
                  v90[2] = @"wasEngaged";
                  v40 = [MEMORY[0x277CCABB0] numberWithBool:v36];
                  v91[2] = v40;
                  v90[3] = @"wasRejected";
                  v41 = [MEMORY[0x277CCABB0] numberWithBool:v35];
                  v91[3] = v41;
                  v90[4] = @"wasOffered";
                  v42 = [MEMORY[0x277CCABB0] numberWithBool:v70];
                  v90[5] = @"mappingId";
                  v91[4] = v42;
                  v91[5] = v74;
                  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:6];

                  objc_autoreleasePoolPop(context);
                  [v67 addObject:v43];

                  v5 = v65;
                }
              }

              v23 = v74;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v44 = v67;
      v45 = [v44 countByEnumeratingWithState:&v76 objects:v89 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v77;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v77 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v76 + 1) + 8 * j);
            v50 = objc_autoreleasePoolPush();
            v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.EngagedToday", @"com.apple.proactive.PersonalizationPortrait"];
            [PPMetricsDispatcher logPayloadForEvent:v51 payload:v49 inBackground:1];

            objc_autoreleasePoolPop(v50);
          }

          v46 = [v44 countByEnumeratingWithState:&v76 objects:v89 count:16];
        }

        while (v46);
      }

      v13 = v62;
      v17 = v61 + 1;
      a2 = v58;
      v7 = v64;
      v5 = v65;
      v9 = v63;
      v15 = 0x27896F000;
      v16 = v60;
    }

    while (v61 + 1 != v59);
    v14 = [v62 countByEnumeratingWithState:&v85 objects:buf count:16];
    v16 = v60;
    v52 = 1;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v56 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = objc_opt_self();
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily location engagement statistics.", buf, 2u);
  }

  v8 = objc_opt_new();
  [v8 setLimit:+[PPMaintenance _kValue]()];
  v9 = +[PPLocalLocationStore defaultStore];
  v10 = [v9 rankedLocationsWithQuery:v8 clientProcessName:0 error:a2];

  if (v10)
  {
    if (v5[2](v5))
    {
      v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_301];
      v12 = +[PPMaintenance _logEngagementMetricsForDomain:feedback:count:shouldContinue:](v6, 2, v11, [v10 count], v5);
    }

    else
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "PPMaintenance: deferring location engagement.", v14, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = objc_opt_self();
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily named entity engagement statistics.", buf, 2u);
  }

  v8 = objc_opt_new();
  [v8 setLimit:+[PPMaintenance _kValue]()];
  v9 = +[PPLocalNamedEntityStore defaultStore];
  v10 = [v9 rankedNamedEntitiesWithQuery:v8 error:a2];

  if (v10)
  {
    if (v5[2](v5))
    {
      v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_298];
      v12 = +[PPMaintenance _logEngagementMetricsForDomain:feedback:count:shouldContinue:](v6, 1, v11, [v10 count], v5);
    }

    else
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "PPMaintenance: deferring entity engagement.", v14, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (uint64_t)_kValue
{
  objc_opt_self();
  if (_kValue__pasOnceToken193 != -1)
  {
    dispatch_once(&_kValue__pasOnceToken193, &__block_literal_global_236_17219);
  }

  return [_kValue__pasExprOnceResult unsignedIntegerValue];
}

+ (uint64_t)_logEngagementMetricsForDomain:(void *)a3 feedback:(int)a4 count:(void *)a5 shouldContinue:
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  objc_opt_self();
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v44 = a2;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily engagement statistics for domain %d", buf, 8u);
  }

  if (v9[2](v9))
  {
    v11 = +[PPMaintenance _kValue];
    if (v11 > 4)
    {
      v14 = v11 / 5;
      v15 = objc_opt_new();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __78__PPMaintenance__logEngagementMetricsForDomain_feedback_count_shouldContinue___block_invoke;
      v35[3] = &unk_278975ED0;
      v16 = v9;
      v38 = v16;
      v41 = a2;
      v39 = v14;
      v36 = v8;
      v40 = a4;
      v12 = v15;
      v37 = v12;
      [v36 enumerateObjectsUsingBlock:v35];
      v17 = v9[2](v16);
      v13 = v17;
      if (v17)
      {
        v27 = a2;
        v28 = v17;
        v29 = v8;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v12;
        v18 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v31 + 1) + 8 * i);
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.EngagedToday", @"com.apple.proactive.PersonalizationPortrait"];
              [PPMetricsDispatcher logPayloadForEvent:v23 payload:v22 inBackground:1];
            }

            v19 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
          }

          while (v19);
        }

        v24 = pp_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v44 = v27;
          _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily engagement statistics for domain %d.", buf, 8u);
        }

        v8 = v29;
        v13 = v28;
      }

      else
      {
        v24 = pp_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v44 = a2;
          _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement before ratio.", buf, 8u);
        }
      }
    }

    else
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v44 = a2;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPMaintenance: no items found in domain %d", buf, 8u);
      }

      v13 = 1;
    }
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v44 = a2;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement after decayed counts.", buf, 8u);
    }

    v13 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v13;
}

void __78__PPMaintenance__logEngagementMetricsForDomain_feedback_count_shouldContinue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v50 = a3;
    v57 = a3 / *(a1 + 56);
    if ([*(a1 + 32) count] < v57)
    {
      v57 = [*(a1 + 32) count] - 1;
    }

    v8 = *(a1 + 64);
    v51 = a1;
    v52 = v7;
    v56 = *(a1 + 60);
    v54 = v7;
    objc_opt_self();
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784278, &unk_284784290, &unk_2847842A8, &unk_2847842C0, 0}];
    objc_autoreleasePoolPop(v9);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v10;
    v58 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v58)
    {
      v55 = *v62;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v61 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 unsignedIntegerValue];
          v60 = v13;
          if (v8 > 2)
          {
            if (v8 == 3)
            {
              [v54 rejectedExplicitly];
              goto LABEL_21;
            }

            if (v8 == 4)
            {
              [v54 rejectedImplicitly];
              goto LABEL_21;
            }
          }

          else
          {
            if (v8 == 1)
            {
              [v54 engagedExplicitly];
              goto LABEL_21;
            }

            if (v8 == 2)
            {
              [v54 engagedImplicitly];
LABEL_21:
              v17 = v15;
              goto LABEL_22;
            }
          }

          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v70 = v14;
            v71 = 1024;
            v72 = v8;
            _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: attempted to log engagement metrics with unexpected feedback type %u and portrait domain %u", buf, 0xEu);
          }

          v17 = -1.0;
LABEL_22:
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.FeedbackAtK", @"com.apple.proactive.PersonalizationPortrait"];
          context = objc_autoreleasePoolPush();
          v67[0] = @"k";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:+[PPMaintenance _kValue]()];
          v68[0] = v19;
          v67[1] = @"evaluatedCount";
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v56];
          v68[1] = v20;
          v67[2] = @"bucket";
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v57];
          v68[2] = v21;
          v67[3] = @"domain";
          v22 = [PPMetricsUtils stringifyDomain:v8];
          v68[3] = v22;
          v67[4] = @"feedbackType";
          v23 = [MEMORY[0x277D3A3C0] stringForItemFeedbackType:v14];
          v68[4] = v23;
          v67[5] = @"rate";
          v24 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          v68[5] = v24;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:6];
          v26 = v25 = v8;

          objc_autoreleasePoolPop(context);
          [PPMetricsDispatcher logPayloadForEvent:v18 payload:v26 inBackground:1];

          v8 = v25;
          objc_autoreleasePoolPop(v60);
        }

        v58 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v58);
    }

    v27 = [v54 latestDate];
    [v27 timeIntervalSinceNow];
    v29 = v28;

    v7 = v52;
    if (v29 >= -86400.0)
    {
      [v54 engagedExplicitly];
      v31 = v30;
      [v54 engagedImplicitly];
      v33 = v31 + v32;
      if (v31 + v32 <= 0.0)
      {
        [v54 rejectedExplicitly];
        v39 = v38;
        [v54 rejectedImplicitly];
        v34 = v39 + v40 > 0.0;
        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      v41 = *(v51 + 40);
      v42 = objc_autoreleasePoolPush();
      v65[0] = @"rank";
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
      v66[0] = v43;
      v65[1] = @"domain";
      v44 = [PPMetricsUtils stringifyDomain:*(v51 + 64)];
      v66[1] = v44;
      v65[2] = @"wasEngaged";
      v45 = [MEMORY[0x277CCABB0] numberWithBool:v33 > 0.0];
      v66[2] = v45;
      v65[3] = @"wasRejected";
      v46 = [MEMORY[0x277CCABB0] numberWithBool:v34];
      v66[3] = v46;
      v65[4] = @"wasOffered";
      v47 = [MEMORY[0x277CCABB0] numberWithBool:v35];
      v66[4] = v47;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:5];

      objc_autoreleasePoolPop(v42);
      [v41 addObject:v48];
    }
  }

  else
  {
    v36 = pp_default_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 64);
      *v73 = 67109120;
      v74 = v37;
      _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement in loop.", v73, 8u);
    }

    *a4 = 1;
  }

  v49 = *MEMORY[0x277D85DE8];
}

id __79__PPMaintenance__logNamedEntityEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 storage];
  v5 = [v2 item];

  v6 = [v5 clusterIdentifier];
  v7 = [v4 decayedFeedbackCountsForClusterIdentifier:v6];

  return v7;
}

void __24__PPMaintenance__kValue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[PPConfiguration sharedInstance];
  v2 = [v1 engagementKValues];

  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v2, "count"))}];
  }

  else
  {
    v3 = &unk_284784260;
  }

  v4 = _kValue__pasExprOnceResult;
  _kValue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

id __76__PPMaintenance__logLocationEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PPLocalLocationStore defaultStore];
  v4 = [v3 storage];
  v5 = [v2 location];

  v6 = [v5 clusterIdentifier];
  v7 = [v4 decayedFeedbackCountsForClusterIdentifier:v6];

  return v7;
}

id __73__PPMaintenance__logTopicEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mappingId];
  v3 = [v2 _pas_stringBackedByUTF8CString];

  return v3;
}

void __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v13 = objc_opt_new();
  [v13 setSchemaVersion:*(a1 + 48)];
  [v13 setTableName:v8];

  v9 = +[PPTrialWrapper sharedInstance];
  v10 = [v9 concatenatedTreatmentNames];
  [v13 setActiveTreatments:v10];

  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  v12 = [v7 integerValue];

  [v11 trackScalarForMessage:v13 updateCount:v12];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v13 = objc_opt_new();
  [v13 setSchemaVersion:*(a1 + 48)];
  [v13 setTableName:v8];

  v9 = +[PPTrialWrapper sharedInstance];
  v10 = [v9 concatenatedTreatmentNames];
  [v13 setActiveTreatments:v10];

  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  v12 = [v7 integerValue];

  [v11 trackScalarForMessage:v13 updateCount:v12];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __37__PPMaintenance__registerRTCSendLogs__block_invoke()
{
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v0 = pp_maintenance_signpost_handle();
  v1 = os_signpost_id_generate(v0);

  v2 = pp_maintenance_signpost_handle();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "RTCSendLogs", "", buf, 2u);
  }

  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPMaintenance running sendRTCLogs", v10, 2u);
  }

  v5 = +[PPEventMetricsLogger defaultLogger];
  [v5 sendRTCLogsWithCompletion:&__block_literal_global_181_17278];

  v6 = pp_maintenance_signpost_handle();
  v7 = v6;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v7, OS_SIGNPOST_INTERVAL_END, v1, "RTCSendLogs", " enableTelemetry=YES ", v8, 2u);
  }

  PPPostNotification(kPPMaintenanceJobCompletedNotification);
}

void __37__PPMaintenance__registerRTCSendLogs__block_invoke_178(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPMaintenance failed to send RTCLogs: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)singletonWarmupQueue
{
  objc_opt_self();
  if (singletonWarmupQueue__pasOnceToken7 != -1)
  {
    dispatch_once(&singletonWarmupQueue__pasOnceToken7, &__block_literal_global_17295);
  }

  v0 = singletonWarmupQueue__pasExprOnceResult;

  return v0;
}

void __40__PPMaintenance__registerContactsImport__block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerContactsImport__block_invoke_3;
  aBlock[3] = &unk_278975D70;
  v24 = &v25;
  v4 = v3;
  v23 = v4;
  v5 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__PPMaintenance__registerContactsImport__block_invoke_4;
  v20[3] = &unk_278975D98;
  v6 = v5;
  v21 = v6;
  v7 = _Block_copy(v20);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ContactsImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v26 + 24);
    *buf = 67109120;
    v30 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ContactsImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v26 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v26 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:630 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "PPContactsImporter: deferring";
LABEL_17:
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }
  }

  else
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "PPContactsImporter: import complete.";
      goto LABEL_17;
    }
  }

  _Block_object_dispose(&v25, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PPMaintenance__registerContactsImport__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerContactsImport__block_invoke_4(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: beginning import", buf, 2u);
  }

  v3 = +[PPContactsImporter defaultInstance];
  v4 = v3;
  if (v3)
  {
    [v3 importContactsDataWithShouldContinueBlock:*(a1 + 32)];
  }

  else
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: failed to create importer.", v6, 2u);
    }
  }
}

void __37__PPMaintenance_singletonWarmupQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.singletonWarmupQueue" qosClass:9];
  v2 = singletonWarmupQueue__pasExprOnceResult;
  singletonWarmupQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __40__PPMaintenance__registerEventKitImport__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerEventKitImport__block_invoke_3;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__PPMaintenance__registerEventKitImport__block_invoke_4;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EventKitImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "EventKitImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:525 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: EventKitImport: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PPMaintenance__registerEventKitImport__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerEventKitImport__block_invoke_4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v2 = +[PPLocalNamedEntityStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v3 = +[PPLocalLocationStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v4 = +[PPLocalEventStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v6 = +[PPEventKitImporter defaultInstance];
    v5 = [v6 importEventDataWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __40__PPMaintenance__registerEventKitImport__block_invoke()
{
  v0 = +[PPEventKitImporter defaultInstance];
  [v0 deleteAndReimportAllData];
}

uint64_t __41__PPMaintenance__registerHealthKitImport__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getHKHealthStoreClass_softClass;
  v9 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getHKHealthStoreClass_block_invoke;
    v5[3] = &unk_2789792D0;
    v5[4] = &v6;
    __getHKHealthStoreClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  result = [v2 isHealthDataAvailable];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __41__PPMaintenance__registerHealthKitImport__block_invoke_138(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PPMaintenance__registerHealthKitImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__PPMaintenance__registerHealthKitImport__block_invoke_3;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HealthKitImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "HealthKitImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:579 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PPMaintenance__registerHealthKitImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __41__PPMaintenance__registerHealthKitImport__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: beginning import", buf, 2u);
  }

  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPHealthKitImporter alloc] initWithDatabase:v3];
    [(PPHealthKitImporter *)v4 importHealthKitDataWithShouldContinueBlock:*(a1 + 32)];
  }

  else
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23224A000, &v4->super, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: failed to create database, giving up.", v5, 2u);
    }
  }
}

void __36__PPMaintenance__registerMapsImport__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PPMaintenance__registerMapsImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v20 = &v21;
  v4 = v3;
  v19 = v4;
  v5 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v6 = pp_maintenance_signpost_handle();
  v7 = os_signpost_id_generate(v6);

  v8 = pp_maintenance_signpost_handle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MapsImport", "", buf, 2u);
  }

  v10 = v5;
  [PPMapsSupport importMapsDataWithShouldContinueBlock:v10];
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v22 + 24);
    *buf = 67109120;
    v26 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v7, "MapsImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v22 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  if (*(v22 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:473 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: MapsImport: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PPMaintenance__registerMapsImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __43__PPMaintenance__registerCoreRoutineImport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PPMaintenance__registerCoreRoutineImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__PPMaintenance__registerCoreRoutineImport__block_invoke_3;
  v18[3] = &unk_278975DE0;
  v6 = v5;
  v19 = v6;
  v20 = &v24;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CoreRoutineImport", "", v17, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "CoreRoutineImport", " enableTelemetry=YES ", v17, 2u);
  }

  if (*(v25 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:437 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPMaintenance: CoreRoutineImport: deferring", v17, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __43__PPMaintenance__registerCoreRoutineImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __43__PPMaintenance__registerCoreRoutineImport__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = [PPRoutineSupport importCoreRoutineDataWithError:&v6 shouldContinueBlock:*(a1 + 32)];
  v3 = v6;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPMaintenance: CoreRoutineImport: importCoreRoutineDataWithError failed: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: CoreRoutineImport: completed successfully.", buf, 2u);
    }

LABEL_7:
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end