@interface PPConnectionsPredictionStore
+ (id)defaultStore;
- (PPConnectionsPredictionStore)init;
- (PPConnectionsPredictionStore)initWithParameters:(id)a3 pasteboardSource:(id)a4 calendarSource:(id)a5 duetSource:(id)a6 namedEntitySource:(id)a7 fiaSource:(id)a8 metricsTracker:(id)a9;
- (id)cutoffNamedEntityTime;
- (id)recentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 timeout:(unint64_t)a7 error:(id *)a8;
- (void)_asyncFillLocationData:(NSObject *)a3 group:(void *)a4 source:(uint64_t)a5 consumer:(void *)a6 criteria:(void *)a7 earliestDate:(void *)a8 latestDate:(uint64_t)a9 limit:(void *)a10 explanationSet:;
@end

@implementation PPConnectionsPredictionStore

- (id)cutoffNamedEntityTime
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    [a1[1] namedEntitySourceLookBackSeconds];
    a1 = [v2 dateWithTimeIntervalSinceNow:-v3];
    v1 = vars8;
  }

  return a1;
}

- (id)recentLocationsForConsumer:(unint64_t)a3 criteria:(id)a4 limit:(unint64_t)a5 explanationSet:(id)a6 timeout:(unint64_t)a7 error:(id *)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  context = objc_autoreleasePoolPush();
  v15 = pp_connections_log_handle();
  v16 = a7 / 1000000000.0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    *&buf[4] = a3;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2048;
    v48 = a5;
    LOWORD(v49) = 2048;
    *(&v49 + 2) = a7 / 1000000000.0;
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore: recentLocationsForConsumer: c:%tu cr:%@ l:%tu t:%f", buf, 0x2Au);
  }

  v17 = objc_alloc(MEMORY[0x277D425F8]);
  v18 = objc_opt_new();
  v19 = [v17 initWithGuardedData:v18];

  v20 = dispatch_group_create();
  duetSource = self->_duetSource;
  v22 = MEMORY[0x277CBEAA8];
  [(PPConnectionsParameters *)self->_parameters userActivityExpirySeconds];
  v24 = [v22 dateWithTimeIntervalSinceNow:-v23];
  [(PPConnectionsPredictionStore *)self _asyncFillLocationData:v19 group:v20 source:duetSource consumer:a3 criteria:v13 earliestDate:v24 latestDate:0 limit:a5 explanationSet:v14];

  calendarSource = self->_calendarSource;
  v26 = MEMORY[0x277CBEAA8];
  [(PPConnectionsParameters *)self->_parameters calendarEventLocationLookaheadTimeSeconds];
  v27 = [v26 dateWithTimeIntervalSinceNow:?];
  [(PPConnectionsPredictionStore *)self _asyncFillLocationData:v19 group:v20 source:calendarSource consumer:a3 criteria:v13 earliestDate:0 latestDate:v27 limit:a5 explanationSet:v14];

  namedEntitySource = self->_namedEntitySource;
  v29 = [(PPConnectionsPredictionStore *)&self->super.isa cutoffNamedEntityTime];
  [(PPConnectionsPredictionStore *)self _asyncFillLocationData:v19 group:v20 source:namedEntitySource consumer:a3 criteria:v13 earliestDate:v29 latestDate:0 limit:a5 explanationSet:v14];

  fiaSource = self->_fiaSource;
  v31 = [(PPConnectionsPredictionStore *)&self->super.isa cutoffNamedEntityTime];
  [(PPConnectionsPredictionStore *)self _asyncFillLocationData:v19 group:v20 source:fiaSource consumer:a3 criteria:v13 earliestDate:v31 latestDate:0 limit:a5 explanationSet:v14];

  pasteboardSource = self->_pasteboardSource;
  v33 = MEMORY[0x277CBEAA8];
  [(PPConnectionsParameters *)self->_parameters pasteboardItemExpirySeconds];
  v35 = [v33 dateWithTimeIntervalSinceNow:-v34];
  [(PPConnectionsPredictionStore *)self _asyncFillLocationData:v19 group:v20 source:pasteboardSource consumer:a3 criteria:v13 earliestDate:v35 latestDate:0 limit:a5 explanationSet:v14];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v48 = __Block_byref_object_copy__8842;
  *&v49 = __Block_byref_object_dispose__8843;
  *(&v49 + 1) = 0;
  if ([MEMORY[0x277D425A0] waitForGroup:v20 timeoutSeconds:v16] == 1)
  {
    v36 = pp_connections_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore recentLocationsForConsumer timed out before all sources responded.", v45, 2u);
    }
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __103__PPConnectionsPredictionStore_recentLocationsForConsumer_criteria_limit_explanationSet_timeout_error___block_invoke;
  v44[3] = &unk_278974008;
  v44[4] = buf;
  v44[5] = a3;
  v44[6] = a5;
  [v19 runWithLockAcquired:v44];
  v37 = [*(*&buf[8] + 40) _pas_mappedArrayWithTransform:&__block_literal_global_34];
  v38 = [v37 _pas_componentsJoinedByString:{@", "}];

  v39 = pp_connections_log_handle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v45 = 138412290;
    v46 = v38;
    _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore: recentLocationsForConsumer: returning items from: %@", v45, 0xCu);
  }

  v40 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(context);
  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)_asyncFillLocationData:(NSObject *)a3 group:(void *)a4 source:(uint64_t)a5 consumer:(void *)a6 criteria:(void *)a7 earliestDate:(void *)a8 latestDate:(uint64_t)a9 limit:(void *)a10 explanationSet:
{
  v17 = a2;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  if (a1)
  {
    v23 = *(a1 + 64);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __131__PPConnectionsPredictionStore__asyncFillLocationData_group_source_consumer_criteria_earliestDate_latestDate_limit_explanationSet___block_invoke;
    v24[3] = &unk_278973FE0;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v31 = a9;
    v32 = a5;
    v29 = v22;
    v30 = v17;
    dispatch_group_async(a3, v23, v24);
  }
}

void __103__PPConnectionsPredictionStore_recentLocationsForConsumer_criteria_limit_explanationSet_timeout_error___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_connections_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3[1] count];
    v14 = 134217984;
    v15 = v5;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore: recentLocationsForConsumer: %tu items total.", &v14, 0xCu);
  }

  [v3[1] sortUsingComparator:&__block_literal_global_8853];
  if (a1[5] == 2)
  {
    [v3[1] sortUsingComparator:&__block_literal_global_31_8854];
  }

  v6 = v3[1];
  v7 = a1[6];
  v8 = [v6 count];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v6 subarrayWithRange:{0, v9}];
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __103__PPConnectionsPredictionStore_recentLocationsForConsumer_criteria_limit_explanationSet_timeout_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 source];
  if ([v6 isEqualToString:@"foundinapps"])
  {
    v7 = [v5 source];
    v8 = [v7 isEqualToString:@"namedentity"];

    if (v8)
    {
      v9 = -1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = [v5 source];
  if ([v10 isEqualToString:@"foundinapps"])
  {
    v11 = [v4 source];
    v12 = [v11 isEqualToString:@"namedentity"];

    v9 = v12 & 1;
  }

  else
  {

    v9 = 0;
  }

LABEL_8:

  return v9;
}

uint64_t __103__PPConnectionsPredictionStore_recentLocationsForConsumer_criteria_limit_explanationSet_timeout_error___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 source];
  v6 = [v5 isEqualToString:@"pasteboard"];

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v8 = [v4 source];
    v9 = [v8 isEqualToString:@"pasteboard"];

    v7 = v9;
  }

  return v7;
}

void __131__PPConnectionsPredictionStore__asyncFillLocationData_group_source_consumer_criteria_earliestDate_latestDate_limit_explanationSet___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = pp_connections_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_connections_signpost_handle();
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v29 = v7;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPConnectionsPredictionStore.recentLocationsForConsumer", "%@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) locationItemsWithCriteria:*(a1 + 40) earliest:*(a1 + 48) latest:*(a1 + 56) limit:*(a1 + 80) consumer:*(a1 + 88) explanationSet:*(a1 + 64)];
  v9 = pp_connections_log_handle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [*(a1 + 32) identifier];
      v12 = [v8 count];
      *buf = 138412546;
      v29 = v11;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore: %@: %tu items", buf, 0x16u);
    }

    v13 = *(a1 + 72);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __131__PPConnectionsPredictionStore__asyncFillLocationData_group_source_consumer_criteria_earliestDate_latestDate_limit_explanationSet___block_invoke_23;
    v24[3] = &unk_278973FB8;
    v25 = v8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 88);
    v26 = v14;
    v27 = v15;
    [v13 runWithLockAcquired:v24];
    v16 = pp_connections_signpost_handle();
    v17 = v16;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v29 = v18;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v17, OS_SIGNPOST_INTERVAL_END, v3, "PPConnectionsPredictionStore.recentLocationsForConsumer", "%@", buf, 0xCu);
    }

    v19 = v25;
  }

  else
  {
    if (v10)
    {
      v20 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v29 = v20;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPConnectionsPredictionStore: %@: returned nil", buf, 0xCu);
    }

    v21 = pp_connections_signpost_handle();
    v19 = v21;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v22 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v29 = v22;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_END, v3, "PPConnectionsPredictionStore.recentLocationsForConsumer", "%@", buf, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __131__PPConnectionsPredictionStore__asyncFillLocationData_group_source_consumer_criteria_earliestDate_latestDate_limit_explanationSet___block_invoke_23(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v35 = *MEMORY[0x277D3A650];
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        v9 = [v8 originatingBundleID];
        v10 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
        v11 = [v10 containsObject:v9];

        if (v11)
        {
          v12 = pp_connections_log_handle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 40) identifier];
            *buf = 138412290;
            v42 = v13;
            v14 = v12;
            v15 = "PPConnectionsPredictionStore: rejecting location from %@ due to user settings.";
            goto LABEL_14;
          }

          goto LABEL_18;
        }

        v16 = *(a1 + 48);
        if (v16 == 4 || v16 == 2)
        {
          v17 = [v8 originatingBundleID];
          v18 = [v17 isEqualToString:v35];

          if (v18)
          {
            v12 = pp_connections_log_handle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = [*(a1 + 40) identifier];
              *buf = 138412290;
              v42 = v13;
              v14 = v12;
              v15 = "PPConnectionsPredictionStore: rejecting location from %@ since its from Maps and Maps is the consumer.";
LABEL_14:
              _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
            }

LABEL_18:

            goto LABEL_19;
          }
        }

        v19 = [v8 value];
        if (v19)
        {
          v20 = v19;
          v21 = v3[2];
          v22 = [v8 value];
          LOBYTE(v21) = [v21 containsObject:v22];

          if ((v21 & 1) == 0)
          {
            v27 = v3;
            v32 = pp_connections_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [*(a1 + 40) identifier];
              *buf = 138412290;
              v42 = v30;
              v31 = "PPConnectionsPredictionStore: using location from %@";
              goto LABEL_30;
            }

LABEL_31:

            v3 = v27;
            [v27[1] addObject:v8];
            goto LABEL_32;
          }
        }

        v12 = [v8 value];
        if (v12)
        {
          goto LABEL_18;
        }

        v23 = [v8 mapItemURL];
        if (v23)
        {
          v24 = v23;
          v25 = v3[2];
          v26 = [v8 mapItemURL];
          [v26 absoluteString];
          v28 = v27 = v3;
          LOBYTE(v25) = [v25 containsObject:v28];

          v3 = v27;
          if ((v25 & 1) == 0)
          {
            v32 = pp_connections_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [*(a1 + 40) identifier];
              *buf = 138412290;
              v42 = v30;
              v31 = "PPConnectionsPredictionStore: using location with mapItemURL from %@";
LABEL_30:
              _os_log_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
            }

            goto LABEL_31;
          }
        }

LABEL_19:
        ++v7;
      }

      while (v5 != v7);
      v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      v5 = v29;
    }

    while (v29);
  }

LABEL_32:

  v34 = *MEMORY[0x277D85DE8];
}

- (PPConnectionsPredictionStore)initWithParameters:(id)a3 pasteboardSource:(id)a4 calendarSource:(id)a5 duetSource:(id)a6 namedEntitySource:(id)a7 fiaSource:(id)a8 metricsTracker:(id)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = PPConnectionsPredictionStore;
  v18 = [(PPConnectionsPredictionStore *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_parameters, a3);
    objc_storeStrong(&v19->_pasteboardSource, a4);
    objc_storeStrong(&v19->_calendarSource, a5);
    objc_storeStrong(&v19->_duetSource, a6);
    objc_storeStrong(&v19->_namedEntitySource, a7);
    objc_storeStrong(&v19->_fiaSource, a8);
    objc_storeStrong(&v19->_metricsTracker, a9);
    v20 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPConnectionsPredictionStore.prediction" qosClass:25];
    predictionQueue = v19->_predictionQueue;
    v19->_predictionQueue = v20;
  }

  return v19;
}

- (PPConnectionsPredictionStore)init
{
  v3 = +[PPConnectionsParameters sharedInstance];
  v4 = +[PPConnectionsPasteboardSource sharedInstance];
  v5 = +[PPConnectionsCalendarSource sharedInstance];
  v6 = +[PPConnectionsDuetSource sharedInstance];
  v7 = +[PPConnectionsNamedEntitySource sharedInstance];
  v8 = +[PPConnectionsFoundInAppsSource sharedInstance];
  v9 = +[PPConnectionsMetricsTracker sharedInstance];
  v10 = v9;
  v11 = 0;
  if (v3 && v4 && v5 && v6 && v7 && v8 && v9)
  {
    self = [(PPConnectionsPredictionStore *)self initWithParameters:v3 pasteboardSource:v4 calendarSource:v5 duetSource:v6 namedEntitySource:v7 fiaSource:v8 metricsTracker:v9];
    v11 = self;
  }

  return v11;
}

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_8888);
  if (!defaultStore_instance_8889)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_8889;
    defaultStore_instance_8889 = v2;

    if (!defaultStore_instance_8889)
    {
      v4 = pp_connections_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPConnectionsPredictionStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance_8889;
  pthread_mutex_unlock(&defaultStore_lock_8888);

  return v5;
}

@end