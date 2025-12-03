@interface NWActivityHelper
- (BOOL)_uploadNWActivityDatabaseStats;
- (BOOL)shouldSendMetricStream;
- (NWActivityHelper)init;
- (NWActivityHelper)initWithQueue:(id)queue;
- (id)_NWActivityFragmentSpace;
- (id)_createDictionarySupermetricForActivity:(id)activity withContext:(id)context;
- (id)_createSupermetricFromFragments:(id)fragments forMetricUUID:(id)d;
- (id)_fetchActivitiesWithPredicate:(id)predicate batch:(BOOL)batch;
- (id)_fetchChildrenForUUID:(id)d fromContext:(id)context withError:(id *)error;
- (id)_fetchFragmentsForUUID:(id)d fromContext:(id)context withError:(id *)error;
- (id)_fetchMetricsForUUID:(id)d;
- (id)_findNWActivityMetricsForUploading;
- (id)_getNWActivitySummaryReport:(id)report;
- (id)_statsForNWActivityFragmentTypes;
- (id)analyticsWorkspace;
- (void)_deleteAllFragmentsMatchingPredicate:(id)predicate;
- (void)_deleteNWActivityFragment:(id)fragment fromContext:(id)context;
- (void)_deleteOldMetrics;
- (void)_fetchMetricsForActivity:(id)activity maxChildDepth:(unsigned __int8)depth destinationArray:(id)array;
- (void)_garbageCollectNWActivityMetrics;
- (void)_uploadCompleteNWActivityMetrics;
- (void)cleanOutNWActivityMetrics;
- (void)purgeOldNWActivityMetrics;
- (void)retrieveNWActivityMetricsForActivity:(id)activity completion:(id)completion;
- (void)sendReportToMetricStream:(id)stream;
- (void)startNWActivitySuperMetricProcessing;
@end

@implementation NWActivityHelper

- (NWActivityHelper)init
{
  v7.receiver = self;
  v7.super_class = NWActivityHelper;
  v2 = [(NWActivityHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.NWActivityHelper", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_sync(*(v2 + 1), &__block_literal_global_16);
  }

  return v2;
}

- (NWActivityHelper)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v11.receiver = self;
    v11.super_class = NWActivityHelper;
    v6 = [(NWActivityHelper *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, queue);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = activityLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "initWithQueue: queue is required", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)analyticsWorkspace
{
  workspace = self->_workspace;
  if (!workspace)
  {
    v4 = MEMORY[0x277D6B500];
    v5 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v5 symptomEvaluatorDatabaseContainerPath];
    v7 = [v4 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

    v8 = [v7 copy];
    v9 = self->_workspace;
    self->_workspace = v8;

    workspace = self->_workspace;
  }

  return workspace;
}

- (id)_NWActivityFragmentSpace
{
  nwfspace = self->_nwfspace;
  if (!nwfspace)
  {
    v4 = objc_alloc(MEMORY[0x277D6B540]);
    analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
    entityName = [MEMORY[0x277D6B528] entityName];
    v7 = [v4 initWithWorkspace:analyticsWorkspace entityName:entityName withCache:0];
    v8 = self->_nwfspace;
    self->_nwfspace = v7;

    nwfspace = self->_nwfspace;
  }

  return nwfspace;
}

- (void)startNWActivitySuperMetricProcessing
{
  v3 = activityLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "startNWActivitySuperMetricProcessing", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NWActivityHelper_startNWActivitySuperMetricProcessing__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v5 = activityLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Finished NWActivitySuperMetricProcessing", buf, 2u);
  }
}

uint64_t __56__NWActivityHelper_startNWActivitySuperMetricProcessing__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Posting NWActivity DB stats to CA", buf, 2u);
  }

  if (([*(a1 + 32) _uploadNWActivityDatabaseStats] & 1) == 0)
  {
    v3 = activityLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Error posting NWActivity database stats to CA", v7, 2u);
    }
  }

  v4 = activityLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Processing NWActivities...", v6, 2u);
  }

  [*(a1 + 32) _uploadCompleteNWActivityMetrics];
  return [*(a1 + 32) _garbageCollectNWActivityMetrics];
}

- (BOOL)_uploadNWActivityDatabaseStats
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  v2 = AnalyticsSendEventLazy();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
  return v2;
}

id __50__NWActivityHelper__uploadNWActivityDatabaseStats__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _statsForNWActivityFragmentTypes];
  }

  else
  {
    v4 = activityLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "NWActivityHelper instance no longer exists, skipping upload", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)_statsForNWActivityFragmentTypes
{
  v23 = *MEMORY[0x277D85DE8];
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    mainObjectContext = activityLogHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_ERROR, "Failed to fetch context when uploading NWActivity DB stats to CA, skipping upload", buf, 2u);
    }

    goto LABEL_10;
  }

  v5 = objc_alloc_init(MEMORY[0x277D6B510]);
  v6 = countOfKeyDescriptor();
  [v5 addGroupByProperty:@"type"];
  [v5 addAggregateProperty:v6];
  _NWActivityFragmentSpace = [(NWActivityHelper *)self _NWActivityFragmentSpace];
  LOBYTE(v15) = 0;
  v8 = [_NWActivityFragmentSpace fetchEntityDictionariesWithProperties:&unk_2847EEBF8 fetchRequestProperties:v5 predicate:0 sortDescriptors:0 limit:0 offset:0 includeObjectID:v15];

  if (!v8)
  {
    v12 = activityLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch NWActivity database stats", buf, 2u);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if ([v8 count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__NWActivityHelper__statsForNWActivityFragmentTypes__block_invoke;
    v16[3] = &unk_27898CB30;
    v18 = buf;
    v10 = v9;
    v17 = v10;
    [v8 enumerateObjectsUsingBlock:v16];
    self->_numberOfFragmentsInDB = *(v20 + 3);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v10 setObject:v11 forKeyedSubscript:@"numberOfFragments"];

    _Block_object_dispose(buf, 8);
  }

  else
  {

    v10 = &unk_2847EF4F8;
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __52__NWActivityHelper__statsForNWActivityFragmentTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"count"];
  v5 = v4;
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v4 unsignedLongValue];
    v6 = [v3 objectForKeyedSubscript:@"type"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntValue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "unsignedLongValue")}];
      if (v8 >= 7)
      {
        if (v8 == 7)
        {
          v10 = @"clientMetricCount";
        }

        else
        {
          v10 = @"unknown";
        }
      }

      else
      {
        v10 = off_27898CBC8[v8];
      }

      [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
    }

    else
    {
      v11 = activityLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Error while unpacking type from result dictionary", v12, 2u);
      }
    }
  }

  else
  {
    v7 = activityLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error while unpacking count from result dictionary", buf, 2u);
    }
  }
}

- (void)cleanOutNWActivityMetrics
{
  v3 = activityLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "cleanOutNWActivityMetrics", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWActivityHelper_cleanOutNWActivityMetrics__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_sync(queue, block);
  v5 = activityLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Finished cleanOutNWActivityMetrics", buf, 2u);
  }
}

uint64_t __45__NWActivityHelper_cleanOutNWActivityMetrics__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up NWActivities...", v4, 2u);
  }

  return [*(a1 + 32) _deleteAllMetrics];
}

- (void)purgeOldNWActivityMetrics
{
  v3 = activityLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "purgeOldNWActivityMetrics", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NWActivityHelper_purgeOldNWActivityMetrics__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__NWActivityHelper_purgeOldNWActivityMetrics__block_invoke(uint64_t a1)
{
  v2 = activityLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up old NWActivities...", buf, 2u);
  }

  +[AnalyticsLaunchpad leaveBreadcrumbForDestroyPersistentStore];
  [*(a1 + 32) _deleteOldMetrics];
  +[AnalyticsLaunchpad clearDestroyPersistentStoreBreadcrumb];
  v3 = activityLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Finished purgeOldNWActivityMetrics", v4, 2u);
  }
}

- (void)retrieveNWActivityMetricsForActivity:(id)activity completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v8 = completionCopy;
  if (activityCopy && completionCopy)
  {
    v9 = activityLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = activityCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Retrieving metrics for activity %@", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NWActivityHelper_retrieveNWActivityMetricsForActivity_completion___block_invoke;
    block[3] = &unk_27898C710;
    block[4] = self;
    v13 = activityCopy;
    v14 = v8;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__NWActivityHelper_retrieveNWActivityMetricsForActivity_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _fetchMetricsForUUID:*(a1 + 40)];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = activityLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Calling completion with results %@", &v11, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = activityLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Calling completion with error", &v11, 2u);
    }

    v7 = *(a1 + 48);
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    (*(v7 + 16))(v7, 0, v9);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createDictionarySupermetricForActivity:(id)activity withContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  contextCopy = context;
  if (!activityCopy)
  {
    v9 = activityLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "activity is required";
LABEL_18:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    }

LABEL_19:
    dictionaryRepresentation = 0;
    goto LABEL_30;
  }

  v8 = activityLogHandle();
  v9 = v8;
  if (!contextCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "context is required";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35[0] = activityCopy;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Fetching metrics for activity %@", buf, 0xCu);
  }

  v33 = 0;
  v10 = [(NWActivityHelper *)self _fetchFragmentsForUUID:activityCopy fromContext:contextCopy withError:&v33];
  v11 = v33;
  v12 = v11;
  if (v10)
  {
    v27 = [(NWActivityHelper *)self _createSupermetricFromFragments:v10 forMetricUUID:activityCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v13);
          }

          [(NWActivityHelper *)self _deleteNWActivityFragment:*(*(&v29 + 1) + 8 * i) fromContext:contextCopy, v27];
        }

        v16 += v15;
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v21 = activityLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      LODWORD(v35[0]) = v16;
      WORD2(v35[0]) = 2112;
      *(v35 + 6) = activityCopy;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "Deleted %u fragments for activity %@", buf, 0x12u);
    }

    v28 = v12;
    v22 = [contextCopy save:&v28];
    v9 = v28;

    if ((v22 & 1) == 0)
    {
      v23 = activityLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35[0] = v9;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Failed to delete the metric, error: %@", buf, 0xCu);
      }
    }

    v24 = v27;
    dictionaryRepresentation = [v27 dictionaryRepresentation];
  }

  else
  {
    dictionaryRepresentation = 0;
    v9 = v11;
  }

LABEL_30:
  v25 = *MEMORY[0x277D85DE8];

  return dictionaryRepresentation;
}

- (void)_fetchMetricsForActivity:(id)activity maxChildDepth:(unsigned __int8)depth destinationArray:(id)array
{
  depthCopy = depth;
  v47 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  arrayCopy = array;
  v10 = arrayCopy;
  if (!activityCopy || !arrayCopy)
  {
    v29 = activityLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "activity and destinationArray are required";
      v31 = v29;
      v32 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_23255B000, v31, v32, v30, buf, 2u);
    }

LABEL_30:

    goto LABEL_36;
  }

  if (!depthCopy)
  {
    v29 = activityLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v30 = "Exceeded maximum depth for child activity hierarchy, stopping";
      v31 = v29;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v11 = objc_autoreleasePoolPush();
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    v33 = activityLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Failed to get context when uploading complete metrics, stopping", buf, 2u);
    }

    goto LABEL_35;
  }

  v14 = [(NWActivityHelper *)self _createDictionarySupermetricForActivity:activityCopy withContext:mainObjectContext];
  if (v14)
  {
    [v10 addObject:v14];
  }

  v41 = 0;
  v15 = [(NWActivityHelper *)self _fetchChildrenForUUID:activityCopy fromContext:mainObjectContext withError:&v41];
  if (!v15)
  {

LABEL_35:
    objc_autoreleasePoolPop(v11);
    goto LABEL_36;
  }

  v16 = v15;
  v36 = v10;
  [mainObjectContext reset];

  objc_autoreleasePoolPop(v11);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v38;
    v22 = depthCopy - 1;
    *&v19 = 138412546;
    v35 = v19;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v25 = [v24 isEqual:{activityCopy, v35}];
        v26 = activityLogHandle();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
        if (v25)
        {
          if (v27)
          {
            *buf = 138412290;
            v43 = activityCopy;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Skipping metric for child identical to activity %@", buf, 0xCu);
          }
        }

        else
        {
          if (v27)
          {
            *buf = v35;
            v43 = v24;
            v44 = 2112;
            v45 = activityCopy;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Fetching metric for child %@ of activity %@", buf, 0x16u);
          }

          [(NWActivityHelper *)self _fetchMetricsForActivity:v24 maxChildDepth:v22 destinationArray:v36];
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v20);
  }

  v28 = activityLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = activityCopy;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Finished with activity %@", buf, 0xCu);
  }

  v10 = v36;
LABEL_36:

  v34 = *MEMORY[0x277D85DE8];
}

- (id)_fetchMetricsForUUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = activityLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Fetching metrics for activity %@", &v11, 0xCu);
  }

  if (dCopy)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivityHelper *)self _fetchMetricsForActivity:dCopy maxChildDepth:30 destinationArray:v7];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v8 = activityLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "UUID is required", &v11, 2u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_deleteOldMetrics
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v4];
  [(NWActivityHelper *)self _deleteAllFragmentsMatchingPredicate:v3];
}

- (void)_deleteAllFragmentsMatchingPredicate:(id)predicate
{
  v40 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v26 = objc_autoreleasePoolPush();
  v4 = activityLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = predicateCopy;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "_deleteAllFragmentsMatchingPredicate %@ for NWActivityMetrics", buf, 0xCu);
  }

  v27 = 0;
  v5 = 0;
  while (1)
  {
    v30 = v5;
    context = objc_autoreleasePoolPush();
    v6 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:predicateCopy batch:1];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v8 = activityLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v7 count];
        *buf = 134217984;
        v39 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Found %lu activities to delete: ", buf, 0xCu);
      }

      analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
      mainObjectContext = [analyticsWorkspace mainObjectContext];

      if (mainObjectContext)
      {
        v28 = [v7 count];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = v7;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v13)
        {
          v14 = *v34;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v34 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v33 + 1) + 8 * i);
              v17 = activityLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v39 = v16;
                _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Deleting activity %@", buf, 0xCu);
              }

              [(NWActivityHelper *)self _deleteNWActivityFragment:v16 fromContext:mainObjectContext];
            }

            v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v13);
        }

        v32 = 0;
        v18 = [mainObjectContext save:&v32];
        v19 = v32;
        if ((v18 & 1) == 0)
        {
          v20 = activityLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v19;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Failed to delete metrics, error: %@", buf, 0xCu);
          }
        }

        [mainObjectContext reset];
        v21 = activityLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v39 = v28;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "Deleted %ld metrics in current pass", buf, 0xCu);
        }

        v27 += v28;
        if (v19)
        {
          v22 = activityLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v19;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Encountered error when saving context after deletion: %@", buf, 0xCu);
          }

          v7 = 0;
          v23 = 3;
        }

        else
        {
          v7 = 0;
          v23 = 0;
        }
      }

      else
      {
        v19 = activityLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch context when deleting metrics, stopping...", buf, 2u);
        }

        v23 = 1;
      }
    }

    else
    {
      mainObjectContext = activityLogHandle();
      if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_INFO, "Did not find any more activities, stopping...", buf, 2u);
      }

      v23 = 3;
    }

    objc_autoreleasePoolPop(context);
    if (v23)
    {
      break;
    }

    v5 = v30 + 1;
    if (v30 == 9999999)
    {
      goto LABEL_40;
    }
  }

  if (v23 != 3)
  {
    goto LABEL_43;
  }

LABEL_40:
  v24 = activityLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v27;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Deleted %ld total metrics", buf, 0xCu);
  }

LABEL_43:
  objc_autoreleasePoolPop(v26);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_deleteNWActivityFragment:(id)fragment fromContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  contextCopy = context;
  v7 = contextCopy;
  if (fragmentCopy && contextCopy)
  {
    metricData = [fragmentCopy metricData];
    fragment = [metricData fragment];
    v10 = [fragment count];

    if (v10 >= 2)
    {
      v11 = activityLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        metricData2 = [fragmentCopy metricData];
        fragment2 = [metricData2 fragment];
        v16 = 134217984;
        v17 = [fragment2 count];
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Severing NWActivityFragment relationship with metricData as relationship count is %ld", &v16, 0xCu);
      }

      [fragmentCopy setMetricData:0];
    }

    [v7 deleteObject:fragmentCopy];
  }

  else
  {
    v14 = activityLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Cannot delete fragment if fragment or context is nil, ignoring", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_garbageCollectNWActivityMetrics
{
  v3 = activityLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Performing garbage collection for expired NWActivityMetrics", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-864000.0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v4];
  [(NWActivityHelper *)self _deleteAllFragmentsMatchingPredicate:v5];
}

- (id)_fetchActivitiesWithPredicate:(id)predicate batch:(BOOL)batch
{
  batchCopy = batch;
  v28 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  if (!mainObjectContext)
  {
    mainObjectContext = activityLogHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = predicateCopy;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_ERROR, "Failed to fetch context when fetching metrics, skipping predicate %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v9 = MEMORY[0x277CBE428];
  entityName = [MEMORY[0x277D6B528] entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  if (!v11)
  {
    v17 = activityLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      entityName2 = [MEMORY[0x277D6B528] entityName];
      *buf = 138412290;
      v23 = entityName2;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to create fetch request for entity name: %@", buf, 0xCu);
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  if (predicateCopy)
  {
    [v11 setPredicate:predicateCopy];
  }

  if (batchCopy)
  {
    [v11 setFetchLimit:100];
  }

  v21 = 0;
  v12 = [mainObjectContext executeFetchRequest:v11 error:&v21];
  v13 = v21;
  if (!v12)
  {
    v14 = activityLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = predicateCopy;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch activity entries from the database for predicate %@. Error: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  if (![v12 count])
  {
    v15 = activityLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = predicateCopy;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Did not find any activity metrics in the database for predicate %@", buf, 0xCu);
    }
  }

  if (v13)
  {
    v16 = activityLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = predicateCopy;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Should not have a valid activity list: %@ and an error: %@ for predicate: %@", buf, 0x20u);
    }
  }

  mainObjectContext = v13;
LABEL_26:

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_findNWActivityMetricsForUploading
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (nw_activity_has_global_investigation_identifier())
  {
    v4 = activityLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Investigation ID is set, processing all activities", buf, 2u);
    }

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %@", &unk_2847EF728];
    v6 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v5 batch:0];

    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %@ AND date < %@", &unk_2847EF740, v7];
    v10 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v9 batch:0];

    if (v10)
    {
      [v3 addObjectsFromArray:v10];
    }

    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v8];
    v12 = [(NWActivityHelper *)self _fetchActivitiesWithPredicate:v11 batch:0];

    if (v12)
    {
      [v3 addObjectsFromArray:v12];
    }

    v6 = activityLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v16 = [v3 count];
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Found %lu metrics to upload:\n%@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_fetchFragmentsForUUID:(id)d fromContext:(id)context withError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v9 = contextCopy;
  v10 = 0;
  if (dCopy && contextCopy && error)
  {
    v11 = MEMORY[0x277CBE428];
    entityName = [MEMORY[0x277D6B528] entityName];
    v13 = [v11 fetchRequestWithEntityName:entityName];

    [v13 setRelationshipKeyPathsForPrefetching:&unk_2847EEC10];
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
    [v13 setPredicate:dCopy];

    v10 = [v9 executeFetchRequest:v13 error:error];

    if (v10)
    {
      if ([v10 count])
      {
        if (!*error)
        {
          goto LABEL_17;
        }

        v15 = activityLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *error;
          *buf = 138412546;
          v23 = v10;
          v24 = 2112;
          v25 = v16;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Should never have a valid fragments list (%@) and an error: %@", buf, 0x16u);
        }
      }

      else
      {
        v19 = activityLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = dCopy;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Activity %@ has no corresponding fragments", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = activityLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        *buf = 138412546;
        v23 = dCopy;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to get all the metrics with UUID %@. Error: %@", buf, 0x16u);
      }
    }

    v10 = 0;
  }

LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_fetchChildrenForUUID:(id)d fromContext:(id)context withError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v9 = contextCopy;
  allObjects = 0;
  if (dCopy && contextCopy && error)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = MEMORY[0x277CBE428];
    entityName = [MEMORY[0x277D6B528] entityName];
    v14 = [v12 fetchRequestWithEntityName:entityName];

    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentUUID == %@", dCopy];
    [v14 setPredicate:dCopy];

    v32 = 0;
    v16 = [v9 executeFetchRequest:v14 error:&v32];
    v17 = v32;

    if (v16)
    {
      if ([v16 count])
      {
        if (!v17)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v16 = v16;
          v20 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v20)
          {
            v21 = *v29;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v29 != v21)
                {
                  objc_enumerationMutation(v16);
                }

                uuid = [*(*(&v28 + 1) + 8 * i) uuid];
                [v19 addObject:uuid];
              }

              v20 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
            }

            while (v20);
          }

          allObjects = [v19 allObjects];
          v24 = activityLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v35 = dCopy;
            v36 = 2112;
            v37 = allObjects;
            _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Activity %@ has child UUIDs: %@", buf, 0x16u);
          }

          v17 = 0;
          goto LABEL_26;
        }

        v18 = activityLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v35 = v16;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Should never have a valid child fragments list (%@) and an error: %@", buf, 0x16u);
        }
      }

      else
      {
        v18 = activityLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = dCopy;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Activity %@ has no corresponding child fragments", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = activityLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = dCopy;
        v36 = 2112;
        v37 = v17;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Failed to get all the child metrics with UUID %@. Error: %@", buf, 0x16u);
      }
    }

    allObjects = 0;
LABEL_26:

    objc_autoreleasePoolPop(v11);
    v25 = v17;
    *error = v17;
  }

  v26 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)_createSupermetricFromFragments:(id)fragments forMetricUUID:(id)d
{
  v78 = *MEMORY[0x277D85DE8];
  fragmentsCopy = fragments;
  dCopy = d;
  v62 = fragmentsCopy;
  if (!fragmentsCopy)
  {
    v66 = 0;
    goto LABEL_133;
  }

  v61 = dCopy;
  v66 = objc_alloc_init(NWActivitySuperMetric);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = fragmentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v8)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_130;
  }

  v64 = 0;
  v65 = 0;
  v63 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v70;
  *&v9 = 138412546;
  v60 = v9;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v70 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v69 + 1) + 8 * i);
      type = [v14 type];
      integerValue = [type integerValue];

      v17 = activityLogHandle();
      v18 = v17;
      if (integerValue > 4)
      {
        if (integerValue > 6)
        {
          if (integerValue != 7)
          {
            if (integerValue == 8)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found Terminus fragment", buf, 2u);
              }

              data3 = activityLogHandle();
              if (os_log_type_enabled(data3, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, data3, OS_LOG_TYPE_INFO, "Unexpected terminus fragment type on this platform. Skipping.", buf, 2u);
              }

              goto LABEL_51;
            }

            goto LABEL_77;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found client metric fragment", buf, 2u);
          }

          if (v64 >= [NWActivitySuperMetric limitForFragmentType:7])
          {
            v51 = activityLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData = [v14 metricData];
          data = [metricData data];

          v46 = activityLogHandle();
          v26 = v46;
          if (data)
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "got data for a client metric fragment", buf, 2u);
            }

            v67 = 0;
            v47 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v67];
            v26 = v67;
            if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              clientFragments = [(NWActivitySuperMetric *)v66 clientFragments];
              [clientFragments addObject:v47];

              LODWORD(v64) = v64 + 1;
            }

            else
            {
              v56 = activityLogHandle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v74 = v26;
                _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_ERROR, "Failed to decode client fragment, skipping (error %@)", buf, 0xCu);
              }
            }
          }

          else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Client metric data is nil, skipping", buf, 2u);
          }

LABEL_123:

          goto LABEL_124;
        }

        if (integerValue != 5)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found Cellular fragment", buf, 2u);
          }

          if (v63 >= [NWActivitySuperMetric limitForFragmentType:6])
          {
            v51 = activityLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData2 = [v14 metricData];
          data = [metricData2 data];

          v25 = activityLogHandle();
          v26 = v25;
          if (data)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "got data for a Cellular fragment", buf, 2u);
            }

            v68 = 0;
            v27 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v68];
            v26 = v68;
            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              cellularFragments = [(NWActivitySuperMetric *)v66 cellularFragments];
              [cellularFragments addObject:v27];

              ++v63;
            }

            else
            {
              v55 = activityLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v74 = v26;
                _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "Failed to decode cellular fragment, skipping (error %@)", buf, 0xCu);
              }
            }
          }

          else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "Cellular metric data is nil, skipping", buf, 2u);
          }

          goto LABEL_123;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found Wi-Fi fragment", buf, 2u);
        }

        if (HIDWORD(v65) >= [NWActivitySuperMetric limitForFragmentType:5])
        {
          v51 = activityLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
          }

          goto LABEL_94;
        }

        metricData3 = [v14 metricData];
        data2 = [metricData3 data];

        if (data2)
        {
          v38 = activityLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "got data for a Wi-Fi fragment", buf, 2u);
          }

          v39 = [objc_alloc(MEMORY[0x277D7B950]) initWithPBCodableData:data2];
          if (v39)
          {
            wifiFragments = [(NWActivitySuperMetric *)v66 wifiFragments];
            [wifiFragments addObject:v39];

            ++HIDWORD(v65);
          }

          else
          {
            v52 = activityLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "failed to recreate Wi-Fi fragment, dropping", buf, 2u);
            }
          }
        }

LABEL_113:

        goto LABEL_124;
      }

      if (integerValue > 2)
      {
        if (integerValue == 3)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found CFNetwork fragment", buf, 2u);
          }

          if (v65 >= [NWActivitySuperMetric limitForFragmentType:3])
          {
            v51 = activityLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

            goto LABEL_94;
          }

          metricData4 = [v14 metricData];
          data2 = [metricData4 data];

          if (data2)
          {
            v42 = activityLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, "got data for a CFNetwork fragment", buf, 2u);
            }

            v43 = [objc_alloc(MEMORY[0x277CBABD8]) initWithJSONData:data2];
            if (v43)
            {
              taskMetrics = [(NWActivitySuperMetric *)v66 taskMetrics];
              [taskMetrics addObject:v43];

              LODWORD(v65) = v65 + 1;
            }

            else
            {
              v53 = activityLogHandle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "failed to recreate CFNetwork fragment, dropping", buf, 2u);
              }
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found libnetcore fragment", buf, 2u);
          }

          if (HIDWORD(v64) >= [NWActivitySuperMetric limitForFragmentType:4])
          {
            v51 = activityLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEBUG, "Exceeded fragment limit, skipping", buf, 2u);
            }

LABEL_94:

            ++v10;
            continue;
          }

          metricData5 = [v14 metricData];
          data2 = [metricData5 data];

          if (data2)
          {
            v31 = activityLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "got data for a libnetcore fragment", buf, 2u);
            }

            v32 = [objc_alloc(MEMORY[0x277CD91C0]) initWithJSONData:data2];
            if (v32)
            {
              connectionReports = [(NWActivitySuperMetric *)v66 connectionReports];
              [connectionReports addObject:v32];

              ++HIDWORD(v64);
            }

            else
            {
              v54 = activityLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_ERROR, "failed to recreate libnetcore fragment, dropping", buf, 2u);
              }
            }
          }
        }

        goto LABEL_113;
      }

      if (integerValue == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found activity fragment", buf, 2u);
        }

        metricData6 = [v14 metricData];
        data3 = [metricData6 data];

        if (data3)
        {
          v35 = activityLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "got data for an activity fragment", buf, 2u);
          }

          v36 = [objc_alloc(MEMORY[0x277CD91B0]) initWithJSONData:data3];
          [(NWActivitySuperMetric *)v66 setActivity:v36];
        }

        goto LABEL_51;
      }

      if (integerValue == 2)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Found activity epilogue fragment", buf, 2u);
        }

        metricData7 = [v14 metricData];
        data3 = [metricData7 data];

        if (data3)
        {
          v21 = activityLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "got data for an activity epilogue fragment", buf, 2u);
          }

          v22 = [objc_alloc(MEMORY[0x277CD91A8]) initWithJSONData:data3];
          [(NWActivitySuperMetric *)v66 setActivityEpilogue:v22];
        }

LABEL_51:

LABEL_124:
        ++v11;
        continue;
      }

LABEL_77:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        type2 = [v14 type];
        integerValue2 = [type2 integerValue];
        *buf = 134217984;
        *v74 = integerValue2;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "unknown fragment type: %ld", buf, 0xCu);
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v69 objects:v77 count:16];
  }

  while (v8);
LABEL_130:

  v57 = activityLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *v74 = v11;
    *&v74[4] = 2112;
    *&v74[6] = v61;
    v75 = 1024;
    v76 = v10;
    _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_INFO, "Processed %u fragments for activity %@, skipped %u fragments", buf, 0x18u);
  }

  dCopy = v61;
LABEL_133:

  v58 = *MEMORY[0x277D85DE8];
  return v66;
}

- (id)_getNWActivitySummaryReport:(id)report
{
  reportCopy = report;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryIsCharging"];
  [v4 setObject:v5 forKeyedSubscript:@"aBatteryIsCharging"];

  v6 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularLqm"];
  [v4 setObject:v6 forKeyedSubscript:@"aCellularLQM"];

  v7 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBand"];
  [v4 setObject:v7 forKeyedSubscript:@"aCellularNrBand"];

  v8 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularRadioTechnology"];
  [v4 setObject:v8 forKeyedSubscript:@"aCellularRAT"];

  v9 = [reportCopy objectForKeyedSubscript:@"connectionReportsCount"];
  if ([v9 intValue] <= 0)
  {
  }

  else
  {
    v10 = [reportCopy objectForKeyedSubscript:@"connectionReports"];
    v11 = [v10 count];

    if (v11)
    {
      v106 = 0;
      v107 = &v106;
      v108 = 0x3032000000;
      v109 = __Block_byref_object_copy__6;
      v110 = __Block_byref_object_dispose__6;
      v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v100 = 0;
      v101 = &v100;
      v102 = 0x3032000000;
      v103 = __Block_byref_object_copy__6;
      v104 = __Block_byref_object_dispose__6;
      v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = [reportCopy objectForKeyedSubscript:@"connectionReports"];
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke;
      v99[3] = &unk_27898CB58;
      v99[4] = &v106;
      v99[5] = &v100;
      [v12 enumerateObjectsUsingBlock:v99];

      v13 = [v107[5] valueForKeyPath:@"@avg.intValue"];
      [v4 setObject:v13 forKeyedSubscript:@"srtt"];

      v14 = [v107[5] valueForKeyPath:@"@min.intValue"];
      [v4 setObject:v14 forKeyedSubscript:@"srttMin"];

      v15 = [v107[5] valueForKeyPath:@"@max.intValue"];
      [v4 setObject:v15 forKeyedSubscript:@"srttMax"];

      v16 = [v101[5] valueForKeyPath:@"@sum.intValue"];
      [v4 setObject:v16 forKeyedSubscript:@"numStalls"];

      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(&v106, 8);
    }
  }

  v17 = [reportCopy objectForKeyedSubscript:@"a_activityDomain"];
  [v4 setObject:v17 forKeyedSubscript:@"activityDomain"];

  v18 = [reportCopy objectForKeyedSubscript:@"a_activityLabel"];
  [v4 setObject:v18 forKeyedSubscript:@"activityLabel"];

  v19 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_deviceOrientation"];
  [v4 setObject:v19 forKeyedSubscript:@"aDeviceOrientation"];

  v20 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_deviceScreenOn"];
  [v4 setObject:v20 forKeyedSubscript:@"aDeviceScreenOn"];

  v21 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiIsApplePersonalHotspot"];
  [v4 setObject:v21 forKeyedSubscript:@"aIsApplePersonalHotspot"];

  v22 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularSliceActive"];
  [v4 setObject:v22 forKeyedSubscript:@"aIsCellularSlice"];

  v23 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBandInfo"];
  [v4 setObject:v23 forKeyedSubscript:@"cellularBandInfo"];

  v24 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBandwidth"];
  [v4 setObject:v24 forKeyedSubscript:@"cellularBandwidth"];

  v25 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularBars"];
  [v4 setObject:v25 forKeyedSubscript:@"cellularBars"];

  v26 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularDualSimStatus"];
  [v4 setObject:v26 forKeyedSubscript:@"cellularDualSimStatus"];

  v27 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularLqm"];
  [v4 setObject:v27 forKeyedSubscript:@"cellularLQMValue"];

  v28 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_motionState"];
  [v4 setObject:v28 forKeyedSubscript:@"aMotionState"];

  v29 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_thermalPressure"];
  [v4 setObject:v29 forKeyedSubscript:@"aThermalPressure"];

  v30 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiLqm"];
  [v4 setObject:v30 forKeyedSubscript:@"aWifiLQM"];

  v31 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiLqm"];
  [v4 setObject:v31 forKeyedSubscript:@"eWifiLQM"];

  v32 = [reportCopy objectForKeyedSubscript:@"a_l2Report_wifiRadioTechnology"];
  [v4 setObject:v32 forKeyedSubscript:@"aWifiTechnology"];

  v33 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularOutranksWifi"];
  [v4 setObject:v33 forKeyedSubscript:@"aCellularOutrank"];

  v34 = [reportCopy objectForKeyedSubscript:@"a_l2Report_cellularOutrankPrimaryReason"];
  [v4 setObject:v34 forKeyedSubscript:@"aCellularOutrankPrimaryReason"];

  v35 = [reportCopy objectForKeyedSubscript:@"taskMetricsCount"];
  if ([v35 intValue] <= 0)
  {
  }

  else
  {
    v36 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
    v37 = [v36 count];

    if (v37)
    {
      v106 = 0;
      v107 = &v106;
      v108 = 0x2020000000;
      v109 = 0;
      v100 = 0;
      v101 = &v100;
      v102 = 0x2020000000;
      v103 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v98 = 0;
      v38 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_2;
      v94[3] = &unk_27898CBA8;
      v94[4] = &v106;
      v94[5] = &v100;
      v94[6] = &v95;
      [v38 enumerateObjectsUsingBlock:v94];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v107[3]];
      [v4 setObject:v39 forKeyedSubscript:@"bytesDl"];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v101[3]];
      [v4 setObject:v40 forKeyedSubscript:@"bytesUl"];

      v41 = [reportCopy objectForKeyedSubscript:@"taskMetrics"];
      v42 = [v41 objectAtIndexedSubscript:0];
      v43 = [v42 objectForKeyedSubscript:@"error"];
      [v4 setObject:v43 forKeyedSubscript:@"error"];

      v44 = [MEMORY[0x277CCABB0] numberWithBool:*(v96 + 24)];
      [v4 setObject:v44 forKeyedSubscript:@"isBackground"];

      v45 = v107[3];
      if (v45)
      {
        if (v45 >= 0x3E9)
        {
          if (v45 >= 0x2711)
          {
            if (v45 >= 0x186A1)
            {
              if (v45 >= 0xF4241)
              {
                if (v45 >= 0x2DC6C1)
                {
                  if (v45 >= 0x4C4B41)
                  {
                    if (v45 >= 0x989681)
                    {
                      v46 = &unk_2847EF7D0;
                    }

                    else
                    {
                      v46 = &unk_2847EF7B8;
                    }
                  }

                  else
                  {
                    v46 = &unk_2847EF7A0;
                  }
                }

                else
                {
                  v46 = &unk_2847EF788;
                }
              }

              else
              {
                v46 = &unk_2847EF770;
              }
            }

            else
            {
              v46 = &unk_2847EF758;
            }
          }

          else
          {
            v46 = &unk_2847EF740;
          }
        }

        else
        {
          v46 = &unk_2847EF728;
        }
      }

      else
      {
        v46 = &unk_2847EF710;
      }

      [v4 setObject:v46 forKeyedSubscript:@"dlBytesBins"];
      v47 = v101[3];
      if (v47)
      {
        if (v47 >= 0x3E9)
        {
          if (v47 >= 0x2711)
          {
            if (v47 >= 0x186A1)
            {
              if (v47 >= 0xF4241)
              {
                if (v47 >= 0x2DC6C1)
                {
                  if (v47 >= 0x4C4B41)
                  {
                    if (v47 >= 0x989681)
                    {
                      v48 = &unk_2847EF7D0;
                    }

                    else
                    {
                      v48 = &unk_2847EF7B8;
                    }
                  }

                  else
                  {
                    v48 = &unk_2847EF7A0;
                  }
                }

                else
                {
                  v48 = &unk_2847EF788;
                }
              }

              else
              {
                v48 = &unk_2847EF770;
              }
            }

            else
            {
              v48 = &unk_2847EF758;
            }
          }

          else
          {
            v48 = &unk_2847EF740;
          }
        }

        else
        {
          v48 = &unk_2847EF728;
        }
      }

      else
      {
        v48 = &unk_2847EF710;
      }

      [v4 setObject:v48 forKeyedSubscript:@"ulBytesBins"];
      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(&v106, 8);
    }
  }

  [v4 setObject:&unk_2847EF710 forKeyedSubscript:@"cellIfBytesDl"];
  [v4 setObject:&unk_2847EF710 forKeyedSubscript:@"cellIfBytesUl"];
  v49 = [reportCopy objectForKeyedSubscript:@"e_completionReason"];
  [v4 setObject:v49 forKeyedSubscript:@"completionReason"];

  v50 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_devicePluggedIn"];
  [v4 setObject:v50 forKeyedSubscript:@"eBatteryIsCharging"];

  v51 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularLqm"];
  [v4 setObject:v51 forKeyedSubscript:@"eCellularLQM"];

  v52 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularBand"];
  [v4 setObject:v52 forKeyedSubscript:@"eCellularNrBand"];

  v53 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularRadioTechnology"];
  [v4 setObject:v53 forKeyedSubscript:@"eCellularRAT"];

  v54 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularMcc"];
  [v4 setObject:v54 forKeyedSubscript:@"MCC"];

  v55 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularMnc"];
  [v4 setObject:v55 forKeyedSubscript:@"MNC"];

  v56 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_deviceOrientation"];
  [v4 setObject:v56 forKeyedSubscript:@"eDeviceOrientation"];

  v57 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_deviceScreenOn"];
  [v4 setObject:v57 forKeyedSubscript:@"eDeviceScreenOn"];

  v58 = [reportCopy objectForKeyedSubscript:@"e_activity_bundleID"];
  [v4 setObject:v58 forKeyedSubscript:@"effectiveBundleID"];

  v59 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiIsApplePersonalHotspot"];
  [v4 setObject:v59 forKeyedSubscript:@"eIsApplePersonalHotspot"];

  v60 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularSliceActive"];
  [v4 setObject:v60 forKeyedSubscript:@"eIsCellularSlice"];

  v61 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_motionState"];
  [v4 setObject:v61 forKeyedSubscript:@"eMotionState"];

  v62 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_thermalPressure"];
  [v4 setObject:v62 forKeyedSubscript:@"eThermalPressure"];

  v63 = [reportCopy objectForKeyedSubscript:@"e_l2Report_wifiRadioTechnology"];
  [v4 setObject:v63 forKeyedSubscript:@"eWifiTechnology"];

  v64 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularOutranksWifi"];
  [v4 setObject:v64 forKeyedSubscript:@"eCellularOutrank"];

  v65 = [reportCopy objectForKeyedSubscript:@"e_l2Report_cellularOutrankPrimaryReason"];
  [v4 setObject:v65 forKeyedSubscript:@"eCellularOutrankPrimaryReason"];

  v66 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryAbsoluteCapacity"];
  [v66 doubleValue];
  v68 = v67;

  v69 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryAbsoluteCapacity"];
  [v69 doubleValue];
  v71 = v70;

  v72 = [reportCopy objectForKeyedSubscript:@"a_deviceReport_batteryVoltage"];
  [v72 doubleValue];
  v74 = v73;

  v75 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryVoltage"];
  [v75 doubleValue];
  v77 = v76;

  v78 = [reportCopy objectForKeyedSubscript:@"e_durationMsecs"];
  [v78 doubleValue];
  v80 = v79;

  v81 = v80 / 1000.0;
  if (v80 <= 0.0)
  {
    [v4 setObject:&unk_2847EFE10 forKeyedSubscript:@"powerConsumed"];
  }

  else
  {
    v82 = [MEMORY[0x277CCABB0] numberWithDouble:(v68 * v74 - v71 * v77) * 3.6 / v80];
    [v4 setObject:v82 forKeyedSubscript:@"powerConsumed"];
  }

  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
  [v4 setObject:v83 forKeyedSubscript:@"durationInMs"];

  if (v81 <= 10.0)
  {
    v85 = MEMORY[0x277CCABB0];
    v86 = ceil(v81 + v81);
  }

  else
  {
    if (v81 <= 17.0)
    {
      v85 = MEMORY[0x277CCABB0];
      v87 = v81 + -10.0;
      v88 = 20.0;
    }

    else if (v81 <= 25.0)
    {
      v85 = MEMORY[0x277CCABB0];
      v87 = ceil((v81 + -17.0) * 0.5);
      v88 = 27.0;
    }

    else
    {
      if (v81 > 60.0)
      {
        if (v81 <= 120.0)
        {
          v84 = &unk_2847EF7E8;
        }

        else if (v81 <= 240.0)
        {
          v84 = &unk_2847EF800;
        }

        else if (v81 <= 300.0)
        {
          v84 = &unk_2847EF818;
        }

        else if (v81 <= 600.0)
        {
          v84 = &unk_2847EF830;
        }

        else if (v81 > 1800.0)
        {
          v84 = &unk_2847EF860;
        }

        else
        {
          v84 = &unk_2847EF848;
        }

        [v4 setObject:v84 forKeyedSubscript:@"durationInSecondsBins"];
        goto LABEL_63;
      }

      v85 = MEMORY[0x277CCABB0];
      v87 = ceil((v81 + -25.0) / 5.0);
      v88 = 31.0;
    }

    v86 = v87 + v88;
  }

  v89 = [v85 numberWithDouble:v86];
  [v4 setObject:v89 forKeyedSubscript:@"durationInSecondsBins"];

LABEL_63:
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__6;
  v110 = __Block_byref_object_dispose__6;
  v111 = 0;
  v90 = [reportCopy objectForKeyedSubscript:@"e_deviceReport_batteryAccumulator_durations"];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_455;
  v93[3] = &unk_27898C758;
  v93[4] = &v106;
  [v90 enumerateObjectsUsingBlock:v93];

  [v4 setObject:v107[5] forKeyedSubscript:@"sdmState"];
  v91 = [reportCopy objectForKeyedSubscript:@"e_l2Report_activeRadio"];
  [v4 setObject:v91 forKeyedSubscript:@"activeRadio"];

  _Block_object_dispose(&v106, 8);

  return v4;
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectForKeyedSubscript:@"smoothedRTT"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  v4 = [v5 objectForKeyedSubscript:@"dataStallCount"];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"transactionMetrics"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_3;
  v7[3] = &unk_27898CB80;
  v8 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) == 1)
  {
    *(v5 + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"background"];
    *(*(*(a1 + 48) + 8) + 24) = [v6 BOOLValue];
  }
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"totalBytesRead"];
  *(*(*(a1 + 32) + 8) + 24) += [v4 longValue];

  v5 = [v3 objectForKeyedSubscript:@"totalBytesWritten"];

  *(*(*(a1 + 40) + 8) + 24) += [v5 longValue];
}

void __48__NWActivityHelper__getNWActivitySummaryReport___block_invoke_455(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v6 = [v18 objectForKeyedSubscript:@"name"];
  v7 = [v6 isEqualToString:@"cellDataStatus"];

  v8 = v18;
  if (v7)
  {
    v9 = [v18 objectForKeyedSubscript:@"durations"];
    v10 = @"5GOn";
    v11 = [v9 objectForKeyedSubscript:@"5GOn"];

    if (v11 || ([v18 objectForKeyedSubscript:@"durations"], v12 = objc_claimAutoreleasedReturnValue(), v10 = @"5GAuto", objc_msgSend(v12, "objectForKeyedSubscript:", @"5GAuto"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
    }

    else
    {
      v16 = [v18 objectForKeyedSubscript:@"durations"];
      v10 = @"LTE";
      v17 = [v16 objectForKeyedSubscript:@"LTE"];

      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      if (!v17)
      {
        *(v14 + 40) = @"NA";
        goto LABEL_6;
      }
    }

    *(v14 + 40) = v10;
LABEL_6:

    *a4 = 1;
    v8 = v18;
  }
}

- (void)_uploadCompleteNWActivityMetrics
{
  v70 = *MEMORY[0x277D85DE8];
  _findNWActivityMetricsForUploading = [(NWActivityHelper *)self _findNWActivityMetricsForUploading];
  v4 = _findNWActivityMetricsForUploading;
  if (_findNWActivityMetricsForUploading && [_findNWActivityMetricsForUploading count])
  {
    v5 = activityLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v69 = [v4 count];
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Found %ld metrics to upload", buf, 0xCu);
    }

    analyticsWorkspace = [(NWActivityHelper *)self analyticsWorkspace];
    mainObjectContext = [analyticsWorkspace mainObjectContext];

    if (mainObjectContext)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = v4;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v62;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v62 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v61 + 1) + 8 * i);
            uuid = [v14 uuid];

            if (uuid)
            {
              uuid2 = [v14 uuid];
              [v8 addObject:uuid2];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v11);
      }

      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v17 = v8;
      v49 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v49)
      {
        v18 = 0;
        v48 = *v58;
        v46 = v17;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v58 != v48)
            {
              objc_enumerationMutation(v17);
            }

            v20 = *(*(&v57 + 1) + 8 * j);
            v21 = objc_autoreleasePoolPush();
            v22 = activityLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v69 = v20;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Processing activity %@", buf, 0xCu);
            }

            v56 = v18;
            v23 = [(NWActivityHelper *)self _fetchFragmentsForUUID:v20 fromContext:mainObjectContext withError:&v56];
            v24 = v56;

            if (v23)
            {
              v50 = v21;
              v25 = [(NWActivityHelper *)self _createSupermetricFromFragments:v23 forMetricUUID:v20];
              if (v25)
              {
                [NWActivityAlgosScore processNWActivitySuperMetric:v25];
                v47 = v25;
                dictionaryRepresentation = [v25 dictionaryRepresentation];
                v27 = activityLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v69 = dictionaryRepresentation;
                  _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Generated report: \n%@", buf, 0xCu);
                }

                [(NWActivityHelper *)self sendReportToMetricStream:dictionaryRepresentation];
                if (nw_activity_should_report_to_destination())
                {
                  v28 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "Sending supermetric report to destination two", buf, 2u);
                  }

                  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [NWActivitySuperMetric flattenObject:dictionaryRepresentation intoDictionary:v29 atPath:&stru_2847966D8];
                  AnalyticsSendEvent();
                }

                if (nw_activity_should_report_to_destination())
                {
                  v30 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "Sending supermetric report to destination three", buf, 2u);
                  }

                  v31 = _CFXPCCreateXPCObjectFromCFObject();
                  v32 = metricsLogHandle;
                  if (v31)
                  {
                    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v69 = v31;
                      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "Generated supermetric report for STAnalytics: %@", buf, 0xCu);
                    }

                    SecTrustReportNetworkingAnalytics();
                  }

                  else if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Failed to generate report for STAnalytics", buf, 2u);
                  }
                }

                v33 = metricsLogHandle;
                if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "Checking libnetcore for destination four", buf, 2u);
                }

                if (nw_activity_should_report_to_destination())
                {
                  v34 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Sending NWActivity summary report to destination four", buf, 2u);
                  }

                  v35 = [(NWActivityHelper *)self _getNWActivitySummaryReport:dictionaryRepresentation];
                  v36 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v69 = v35;
                    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "Generated NWActivity summary report: %@", buf, 0xCu);
                  }

                  AnalyticsSendEvent();
                }

                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v37 = v23;
                v38 = [v37 countByEnumeratingWithState:&v52 objects:v65 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v53;
                  do
                  {
                    for (k = 0; k != v39; ++k)
                    {
                      if (*v53 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      [(NWActivityHelper *)self _deleteNWActivityFragment:*(*(&v52 + 1) + 8 * k) fromContext:mainObjectContext];
                    }

                    v39 = [v37 countByEnumeratingWithState:&v52 objects:v65 count:16];
                  }

                  while (v39);
                }

                v51 = v24;
                v42 = [mainObjectContext save:&v51];
                v18 = v51;

                if ((v42 & 1) == 0)
                {
                  v43 = activityLogHandle();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v69 = v18;
                    _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Failed to delete the metric, error: %@", buf, 0xCu);
                  }
                }

                v17 = v46;
                v25 = v47;
              }

              else
              {
                v18 = v24;
              }

              v21 = v50;
            }

            else
            {
              v18 = v24;
            }

            objc_autoreleasePoolPop(v21);
          }

          v49 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v49);
      }

      v4 = v45;
    }

    else
    {
      v17 = activityLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to get context when uploading complete metrics, stopping", buf, 2u);
      }
    }
  }

  else
  {
    mainObjectContext = activityLogHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, mainObjectContext, OS_LOG_TYPE_DEFAULT, "Did not find any metrics to upload", buf, 2u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)sendReportToMetricStream:(id)stream
{
  v13 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (streamCopy)
  {
    if (![MEMORY[0x277CCAAA0] isValidJSONObject:streamCopy])
    {
      v6 = activityLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Report is not valid JSON, dropping", buf, 2u);
      }

      goto LABEL_16;
    }

    v10 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:streamCopy options:0 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v7 = activityLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Failed to create JSON data from metric, dropping: %@", buf, 0xCu);
      }
    }

    else
    {
      if (![(NWActivityHelper *)self shouldSendMetricStream])
      {
        v6 = 0;
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
      v8 = metricstreamLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v6 = 0;
    }

    goto LABEL_15;
  }

LABEL_17:

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSendMetricStream
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    has_global_investigation_identifier = nw_activity_has_global_investigation_identifier();
  }

  else
  {
    has_global_investigation_identifier = 0;
  }

  return has_global_investigation_identifier;
}

@end