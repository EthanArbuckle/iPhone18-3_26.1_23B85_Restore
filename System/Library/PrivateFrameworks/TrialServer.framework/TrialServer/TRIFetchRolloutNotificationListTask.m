@interface TRIFetchRolloutNotificationListTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttribution:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)tags;
- (NSString)description;
- (TRIFetchRolloutNotificationListTask)initWithCoder:(id)a3;
- (TRIFetchRolloutNotificationListTask)initWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttribution:(id)a5;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)a3;
- (void)_addMetric:(id)a3;
- (void)_processRolloutArtifact:(id)a3 context:(id)a4 taskQueue:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIFetchRolloutNotificationListTask

- (NSArray)tags
{
  v3 = objc_opt_new();
  [TRITaskUtils addAttribution:self->_taskAttribution toTaskTags:v3];

  return v3;
}

+ (id)taskWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttribution:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TRIFetchRolloutNotificationListTask alloc] initWithStartingFetchDateOverride:v9 namespaceNames:v8 taskAttribution:v7];

  return v10;
}

- (TRIFetchRolloutNotificationListTask)initWithStartingFetchDateOverride:(id)a3 namespaceNames:(id)a4 taskAttribution:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TRIFetchRolloutNotificationListTask;
  v12 = [(TRIFetchRolloutNotificationListTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startingFetchDateOverride, a3);
    objc_storeStrong(&v13->_namespaceNames, a4);
    objc_storeStrong(&v13->_taskAttribution, a5);
    v14 = objc_opt_new();
    nextTasks = v13->_nextTasks;
    v13->_nextTasks = v14;
  }

  return v13;
}

- (void)_processRolloutArtifact:(id)a3 context:(id)a4 taskQueue:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 rollout];
  if ([v9 hasRampId])
  {
    v10 = [v7 rollout];
    v11 = [v10 rampId];
    v12 = TRIValidateRampId();
  }

  else
  {
    v12 = 0;
  }

  v13 = [TRIRolloutRecord alloc];
  v14 = [v7 deployment];
  v15 = [v7 namespaceNames];
  v16 = [(TRIRolloutRecord *)v13 initWithDeployment:v14 rampId:v12 activeFactorPackSetId:0 activeTargetingRuleIndex:0 targetedFactorPackSetId:0 targetedTargetingRuleIndex:0 status:0 namespaces:v15 artifact:v7];

  v17 = [v8 rolloutDatabase];

  v18 = [v17 addNewRolloutWithRecord:v16];
  if (v18)
  {
    v19 = [v7 deployment];
    v20 = [TRIRolloutTargetingTask taskWithRolloutDeployment:v19 includeDependencies:0 taskAttribution:self->_taskAttribution triggerEvent:0];
    [(TRIFetchRolloutNotificationListTask *)self _addNextTask:v20];
  }

  else
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 deployment];
      v23 = [v22 shortDesc];
      *buf = 138543362;
      v26 = v23;
      _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "Skipping RolloutNotification for rollout %{public}@ which is already present in the database.", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v47 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v44 = os_transaction_create();
  v8 = [v6 keyValueStore];
  v9 = [TRIFetchDateManager managerWithKeyValueStore:v8];

  v10 = [v6 namespaceDatabase];
  v11 = [v6 paths];
  v12 = [v11 namespaceDescriptorsDefaultDir];
  v48 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v10 defaultDescriptorDirectoryPath:v12];

  v13 = [(TRITaskAttributing *)v7->_taskAttribution triCloudKitContainer];
  v14 = [(TRITaskAttributing *)v7->_taskAttribution teamIdentifier];
  v15 = [(TRITaskAttributing *)v7->_taskAttribution applicationBundleIdentifier];
  v46 = [TRICKNativeArtifactProvider providerForContainer:v13 teamId:v14 bundleId:v15 dateProvider:v9 namespaceDescriptorProvider:v48 serverContext:v6];

  v16 = [(TRITaskAttributing *)v7->_taskAttribution networkOptions];
  if ([v16 allowsCellularAccess])
  {
    v17 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(v16, "allowsCellularAccess")}];
    [(TRIFetchRolloutNotificationListTask *)v7 _addMetric:v17];
  }

  if (![v16 discretionaryBehavior])
  {
    goto LABEL_6;
  }

  v18 = [(TRIBaseTask *)v7 stateProvider];
  v19 = [v18 activeActivityGrantingCapability:{objc_msgSend(v16, "requiredCapability")}];

  if (v19)
  {
    [v16 setActivity:v19];

LABEL_6:
    v20 = dispatch_semaphore_create(0);
    v45 = [[TRIFetchOptions alloc] initWithDownloadOptions:v16 cacheDeleteAvailableSpaceClass:&unk_287FC4D38];
    *v76 = 0;
    v77 = v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__51;
    v80 = __Block_byref_object_dispose__51;
    v81 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__51;
    v70 = __Block_byref_object_dispose__51;
    v71 = 0;
    v21 = TRILogCategory_Server();
    v22 = os_signpost_id_generate(v21);

    v23 = TRILogCategory_Server();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26F567000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "FetchRolloutNotificationsDateAscending", &unk_26F6F4845, buf, 2u);
    }

    v43 = v9;
    *buf = 0;
    v63 = buf;
    v64 = 0x2020000000;
    v65 = 0;
    startingFetchDateOverride = v7->_startingFetchDateOverride;
    namespaceNames = v7->_namespaceNames;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __69__TRIFetchRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke;
    v54[3] = &unk_279DE4928;
    v59 = &v66;
    v60 = v76;
    v58 = &v72;
    v54[4] = v7;
    v27 = v6;
    v55 = v27;
    v56 = v47;
    v61 = buf;
    v28 = v20;
    v57 = v28;
    [v46 fetchRolloutNotificationsDateAscendingWithOptions:v45 lastFetchDateOverride:startingFetchDateOverride namespaceNames:namespaceNames completion:v54];
    dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
    v29 = TRILogCategory_Server();
    v30 = v29;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v53 = 0;
      _os_signpost_emit_with_name_impl(&dword_26F567000, v30, OS_SIGNPOST_INTERVAL_END, v22, "FetchRolloutNotificationsDateAscending", &unk_26F6F4845, v53, 2u);
    }

    if (v67[5])
    {
      v7->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
      v31 = TRIFetchErrorParseToMetrics(v67[5]);
      if ([v31 count])
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v49 objects:v82 count:16];
        if (v33)
        {
          v34 = *v50;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v50 != v34)
              {
                objc_enumerationMutation(v32);
              }

              [(TRIFetchRolloutNotificationListTask *)v7 _addMetric:*(*(&v49 + 1) + 8 * i), v43];
            }

            v33 = [v32 countByEnumeratingWithState:&v49 objects:v82 count:16];
          }

          while (v33);
        }

        v9 = v43;
      }
    }

    v36 = *(v73 + 6);
    if (v36 == 2)
    {
      v37 = [v27 xpcActivityManager];
      [v37 postponeCellularActivity];

      v36 = *(v73 + 6);
    }

    v38 = [(NSMutableArray *)v7->_nextTasks copy];
    v39 = [TRITaskRunResult resultWithRunStatus:v36 reportResultToServer:1 nextTasks:v38 earliestRetryDate:*(v77 + 5)];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v66, 8);

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(v76, 8);

    goto LABEL_29;
  }

  v40 = TRILogCategory_Server();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *v76 = 0;
    _os_log_impl(&dword_26F567000, v40, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", v76, 2u);
  }

  v28 = [(NSMutableArray *)v7->_nextTasks copy];
  v39 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v28 earliestRetryDate:0];
LABEL_29:

  objc_sync_exit(v7);
  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

void __69__TRIFetchRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    v12 = *(*(a1 + 64) + 8);
    goto LABEL_3;
  }

  if (a2 == 2)
  {
    v12 = *(*(a1 + 64) + 8);
    if (v10)
    {
      *(v12 + 24) = 1;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
      goto LABEL_7;
    }

LABEL_3:
    *(v12 + 24) = 3;
LABEL_7:
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
LABEL_8:
    dispatch_semaphore_signal(*(a1 + 56));
    goto LABEL_9;
  }

  if (v9)
  {
    [*(a1 + 32) _processRolloutArtifact:v9 context:*(a1 + 40) taskQueue:*(a1 + 48)];
    ++*(*(*(a1 + 88) + 8) + 24);
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      if (!*(*(*(a1 + 88) + 8) + 24))
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Fetch status success but 0 results fetched.", &v17, 2u);
        }
      }

      *(*(*(a1 + 64) + 8) + 24) = 2;
    }

    goto LABEL_8;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(*(a1 + 88) + 8) + 24);
    v17 = 134217984;
    v18 = v16;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Fetched %ld results, with more results pending.", &v17, 0xCu);
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TRIFetchRolloutNotificationListTask;
  if ([(TRIBaseTask *)&v18 isEqual:v4])
  {
    v5 = v4;
    v6 = self->_startingFetchDateOverride;
    v7 = v5[6];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {

        goto LABEL_23;
      }

      v11 = [(NSDate *)v6 isEqualToDate:v7];

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if ([(TRITaskAttributing *)self->_taskAttribution isEqual:v5[8]])
    {
      v12 = self->_namespaceNames;
      v13 = v5[7];
      v14 = v13;
      if (v12 == v13)
      {

LABEL_22:
        v10 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
      }

      else
      {
        v16 = [(NSSet *)v12 isEqualToSet:v13];

        if (v16)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRIFetchRolloutNotificationListTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  startingFetchDateOverride = self->_startingFetchDateOverride;
  if (startingFetchDateOverride)
  {
    v5 = [(NSDate *)startingFetchDateOverride hash];
  }

  else
  {
    v5 = 0;
  }

  namespaceNames = self->_namespaceNames;
  if (namespaceNames)
  {
    namespaceNames = [(NSSet *)namespaceNames hash];
  }

  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * (namespaceNames + 1369 * v3 + 37 * v5);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  startingFetchDateOverride = self->_startingFetchDateOverride;
  return [v3 stringWithFormat:@"<%@:%@, %@>", v4, startingFetchDateOverride, self->_namespaceNames];
}

- (void)_addMetric:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  metrics = v4->_metrics;
  if (!metrics)
  {
    v6 = objc_opt_new();
    v7 = v4->_metrics;
    v4->_metrics = v6;

    metrics = v4->_metrics;
  }

  [(NSMutableArray *)metrics addObject:v8];
  objc_sync_exit(v4);
}

- (void)_addDimension:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  dimensions = v4->_dimensions;
  if (!dimensions)
  {
    v6 = objc_opt_new();
    v7 = v4->_dimensions;
    v4->_dimensions = v6;

    dimensions = v4->_dimensions;
  }

  [(NSMutableArray *)dimensions addObject:v8];
  objc_sync_exit(v4);
}

- (id)metrics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_metrics copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)dimensions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_dimensions copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v4];

  if (self->_startingFetchDateOverride)
  {
    v5 = [objc_alloc(MEMORY[0x277D73B88]) initWithDate:self->_startingFetchDateOverride];
    [v3 setEarliestTimestamp:v5];
  }

  if ([(NSSet *)self->_namespaceNames count])
  {
    v6 = [(NSSet *)self->_namespaceNames allObjects];
    v7 = [v6 mutableCopy];
    [v3 setNamespacesArray:v7];
  }

  [v3 setRetryCount:{-[TRIFetchRolloutNotificationListTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIFetchRolloutNotificationListTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFetchRolloutNotificationListTask.m" lineNumber:317 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v4 = [(TRIPBMessage *)TRIFetchRolloutNotificationListPersistedTask parseFromData:a3 error:&v19];
  v5 = v19;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIFetchRolloutNotificationListPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v21 = v18;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: taskAttribution", buf, 0xCu);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_23;
  }

  v6 = [v4 taskAttribution];
  v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v6];

  if (v7)
  {
    if ([v4 hasEarliestTimestamp])
    {
      v8 = [v4 earliestTimestamp];
      v9 = [v8 date];
    }

    else
    {
      v9 = 0;
    }

    if ([v4 namespacesArray_Count])
    {
      v11 = objc_alloc(MEMORY[0x277CBEB98]);
      v12 = [v4 namespacesArray];
      v13 = [v11 initWithArray:v12];
    }

    else
    {
      v13 = 0;
    }

    v10 = [[a1 alloc] initWithStartingFetchDateOverride:v9 namespaceNames:v13 taskAttribution:v7];
    if ([v4 hasRetryCount])
    {
      v14 = [v4 retryCount];
    }

    else
    {
      v14 = 0;
    }

    [v10 setRetryCount:v14];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v10 = 0;
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)requiredCapabilities
{
  v3 = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  v4 = [v3 requiredCapability];

  if ([(TRIFetchRolloutNotificationListTask *)self retryCount])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

- (TRIFetchRolloutNotificationListTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIFetchRolloutNotificationListTask;
  v5 = [(TRIFetchRolloutNotificationListTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFetchRolloutNotificationListTask.m" lineNumber:360 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIFetchRolloutNotificationListTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end