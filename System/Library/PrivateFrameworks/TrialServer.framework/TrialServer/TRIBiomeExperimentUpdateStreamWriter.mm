@interface TRIBiomeExperimentUpdateStreamWriter
+ (void)clearExperimentUpdatesStream;
+ (void)deleteObsoleteEventsFromExperimentsUpdateStream;
+ (void)writeExperimentUpdateWithRecord:(id)record withExperimentStateIsActive:(BOOL)active withUserId:(id)id;
@end

@implementation TRIBiomeExperimentUpdateStreamWriter

+ (void)writeExperimentUpdateWithRecord:(id)record withExperimentStateIsActive:(BOOL)active withUserId:(id)id
{
  activeCopy = active;
  v44 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  idCopy = id;
  experimentDeployment = [recordCopy experimentDeployment];

  if (!experimentDeployment)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIBiomeExperimentUpdateStreamWriter.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"record.experimentDeployment"}];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  namespaces = [recordCopy namespaces];
  v13 = [namespaces countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(namespaces);
        }

        name = [*(*(&v39 + 1) + 8 * i) name];
        [v11 addObject:name];
      }

      v14 = [namespaces countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }

  v18 = [objc_alloc(MEMORY[0x277CF16A0]) initWithNamespaceName:v11];
  v19 = objc_alloc(MEMORY[0x277CF1698]);
  if (activeCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  experimentDeployment2 = [recordCopy experimentDeployment];
  experimentId = [experimentDeployment2 experimentId];
  v23 = recordCopy;
  v24 = MEMORY[0x277CCABB0];
  v37 = v23;
  experimentDeployment3 = [v23 experimentDeployment];
  v26 = [v24 numberWithInt:{objc_msgSend(experimentDeployment3, "deploymentId")}];
  stringValue = [v26 stringValue];
  treatmentId = [v23 treatmentId];
  v29 = [v19 initWithNamespaceNames:v18 experimentStatus:v20 userId:idCopy experimentId:experimentId deploymentId:stringValue treatmentId:treatmentId];

  v30 = BiomeLibrary();
  trial = [v30 Trial];
  experiment = [trial Experiment];
  namespaceUpdates = [experiment NamespaceUpdates];

  source = [namespaceUpdates source];
  [source sendEvent:v29];

  v35 = *MEMORY[0x277D85DE8];
}

+ (void)clearExperimentUpdatesStream
{
  v2 = BiomeLibrary();
  trial = [v2 Trial];
  experiment = [trial Experiment];
  namespaceUpdates = [experiment NamespaceUpdates];

  pruner = [namespaceUpdates pruner];
  [pruner deleteWithPolicy:@"opt-out-security-updates" eventsPassingTest:&__block_literal_global_44];
}

+ (void)deleteObsoleteEventsFromExperimentsUpdateStream
{
  v36 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x277CF1A88]) initWithUseCase:@"NamespaceUpdates"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-2592000.0];

  [v4 timeIntervalSince1970];
  v28 = v2;
  v6 = [v2 executeQuery:{@"SELECT * FROM Trial.Experiment.NamespaceUpdates WHERE experimentStatus=2 AND eventTimestamp < '%f'", v5}];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v6 next])
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v6 row];
      v10 = [v6 row];

      if (v10)
      {
        v11 = [v9 objectForKey:@"experimentId"];
        v12 = [v9 objectForKey:@"deploymentId"];
        v13 = v12;
        if (v11 && v12)
        {
          v14 = [objc_alloc(MEMORY[0x277D736C0]) initWithExperimentId:v11 deploymentId:{objc_msgSend(v12, "intValue")}];
          [v7 addObject:v14];
        }
      }

      objc_autoreleasePoolPop(v8);
    }

    while (([v6 next] & 1) != 0);
  }

  error = [v6 error];

  if (error)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      error2 = [v6 error];
      localizedDescription = [error2 localizedDescription];
      *buf = 138412290;
      v35 = localizedDescription;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Error querying Obsolete Biome Events: %@", buf, 0xCu);
    }
  }

  v17 = BiomeLibrary();
  trial = [v17 Trial];
  experiment = [trial Experiment];
  namespaceUpdates = [experiment NamespaceUpdates];

  pruner = [namespaceUpdates pruner];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__TRIBiomeExperimentUpdateStreamWriter_deleteObsoleteEventsFromExperimentsUpdateStream__block_invoke;
  v30[3] = &unk_279DE5190;
  v32 = a2;
  selfCopy = self;
  v31 = v7;
  v22 = v7;
  [pruner deleteWithPolicy:@"delete-obsolete-events" eventsPassingTest:v30];

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __87__TRIBiomeExperimentUpdateStreamWriter_deleteObsoleteEventsFromExperimentsUpdateStream__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 eventBody], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 eventBody];
    v8 = [v7 experimentId];

    if (!v8)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"TRIBiomeExperimentUpdateStreamWriter.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];
    }

    v9 = MEMORY[0x277D736C0];
    v10 = [v4 eventBody];
    v11 = [v10 deploymentId];
    v12 = [v9 deploymentWithExperimentId:v8 deploymentId:{objc_msgSend(v11, "intValue")}];

    v13 = [*(a1 + 32) containsObject:v12];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end