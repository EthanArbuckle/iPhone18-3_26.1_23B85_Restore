@interface PSSystemGraphClientInterface
- (PSExecutionSession)executionSession;
- (PSSystemGraphClientInterface)initWithSession:(id)a3;
- (PSTransitionManager)transitionManager;
- (id)fetchContextsForSessionNames:(id)a3;
- (id)fetchContextsForSessionsProvidingKeys:(id)a3;
- (unint64_t)requestResources:(id)a3;
- (void)addResourceStreamsForResourceKeys:(id)a3 toContext:(id)a4;
- (void)addResourceStreamsForSessionName:(id)a3 toContext:(id)a4;
- (void)dealloc;
- (void)deregister;
- (void)deregisterFromResourceAvailabilityUpdates:(id)a3;
- (void)didReceiveContextForSessionProvidingKeys:(id)a3;
- (void)didReceiveResourceAvailabilityUpdates:(id)a3;
- (void)didReceiveResponseForResourceRequest:(id)a3;
- (void)enteringSleep;
- (void)exitingSleep;
- (void)extractGraphState:(id)a3 toState:(pssh_graph_state_s *)a4 isRunning:(BOOL)a5;
- (void)failedToProcessPauseRequests:(id)a3 reason:(unint64_t)a4;
- (void)failedToProcessSetupRequests:(id)a3 reason:(unint64_t)a4;
- (void)pauseRequestsAreComplete:(id)a3;
- (void)publishResourceStreamsForKeys:(id)a3 fromContext:(id)a4 withDevice:(id)a5;
- (void)registerForResourceAvailabilityUpdates:(id)a3 context:(id)a4;
- (void)requestDPTailspinWithReason:(id)a3;
- (void)requestTransitionWithAddedKeys:(id)a3 removedKeys:(id)a4;
- (void)resourceAvailabilityHasChangedTo:(id)a3;
- (void)resourceRequestWithStridesCompleted:(id)a3;
- (void)resourceRequestsFailed:(id)a3 reason:(unint64_t)a4;
- (void)resourcesAreStopped:(id)a3 reason:(unint64_t)a4;
- (void)resourcesNoLongerWantedFailed:(id)a3 reason:(unint64_t)a4;
- (void)resourcesNoLongerWantedProcessed:(id)a3;
- (void)serverRequestToPauseResources:(id)a3;
- (void)serverRequestToSetupResources:(id)a3;
- (void)serverRequestedCurrentGraphs;
- (void)serverRequestedGraphResubmission;
- (void)serverRequestedReplayResources;
- (void)serverRequestedResourcesWithStrides:(id)a3;
- (void)setupRequestsAreComplete:(id)a3;
- (void)startSystemReplay;
- (void)stopSystemReplay;
- (void)systemReplayEnding;
- (void)systemReplayStarting;
- (void)updateGraphStateWithAdded:(id)a3 removed:(id)a4 getLivenessNode:(id)a5;
@end

@implementation PSSystemGraphClientInterface

- (PSSystemGraphClientInterface)initWithSession:(id)a3
{
  [(PSSystemGraphClientInterface *)self setExecutionSession:a3];
  v12.receiver = self;
  v12.super_class = PSSystemGraphClientInterface;
  v4 = [(PSSystemGraphClientInterface *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D3E808]);
    v6 = [(PSSystemGraphClientInterface *)v4 executionSession];
    v7 = [v6 name];
    v8 = [v5 initWithSessionName:v7 delegate:v4 options:2];
    [(PSSystemGraphClientInterface *)v4 setSystemGraph:v8];

    v9 = [(PSSystemGraphClientInterface *)v4 systemGraph];
    [v9 registerClient];

    v10 = ps_util_create_serial_dispatch_queue("com.apple.polaris.systemgraph-tx");
    [(PSSystemGraphClientInterface *)v4 setBlockingCallsQueue:v10];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  ps_util_release_dispatch_queue(v3);

  v4.receiver = self;
  v4.super_class = PSSystemGraphClientInterface;
  [(PSSystemGraphClientInterface *)&v4 dealloc];
}

- (void)deregister
{
  v3 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v3 deregisterClient];

  [(PSSystemGraphClientInterface *)self setSystemGraph:0];
}

- (void)publishResourceStreamsForKeys:(id)a3 fromContext:(id)a4 withDevice:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v7 resourceStreamForKey:*(*(&v66 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v11);
  }

  v46 = v8;

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v9;
  v51 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v51)
  {
    v49 = *v63;
    v50 = v7;
    v48 = v15;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * j);
        v18 = [v7 resourceStreamForKey:v17];
        v19 = [v18 supportedStrides];
        if ([v19 count])
        {
          v53 = v17;
          v55 = v18;
          v56 = j;
          v20 = [MEMORY[0x277CBEB18] array];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v54 = v19;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v59;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v59 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v72[0] = *(*(&v58 + 1) + 8 * k);
                v26 = MEMORY[0x277CCABB0];
                v27 = [v21 objectForKeyedSubscript:?];
                v28 = [v26 numberWithUnsignedInt:{objc_msgSend(v27, "offset")}];
                v72[1] = v28;
                v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
                [v20 addObject:v29];
              }

              v23 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
            }

            while (v23);
          }

          v30 = MEMORY[0x277D3E818];
          v52 = [v55 defaultStride];
          v31 = [v52 unsignedIntValue];
          v32 = [v55 supportsSetupResume];
          v33 = [v55 baseMSGSyncID];
          v34 = [v30 optionsWithDefaultStride:v31 supportedStrides:v20 setupSupported:v32 baseMSGSyncID:v33];
          v35 = v48;
          v17 = v53;
          [v48 setObject:v34 forKeyedSubscript:v53];

          v18 = v55;
          j = v56;
          v19 = v54;
        }

        else
        {
          [MEMORY[0x277D3E818] optionsWithoutStrides];
          v20 = v35 = v15;
          [v35 setObject:v20 forKeyedSubscript:v17];
        }

        v36 = [v18 supportsSetupResume];
        v37 = [v35 objectForKeyedSubscript:v17];
        [v37 setSetupResumeSupported:v36];

        v38 = [v18 baseMSGSyncID];
        v39 = [v35 objectForKeyedSubscript:v17];
        [v39 setBaseMSGSyncID:v38];

        v7 = v50;
        v15 = v35;
      }

      v51 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v51);
  }

  if (![v15 count])
  {

    v15 = 0;
  }

  v57 = 0;
  v40 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v57];
  v41 = v57;
  if (v41)
  {
    v42 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v71 = v41;
      _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_ERROR, "encoded streams error:%@", buf, 0xCu);
    }
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x277D3E810]);
    [v42 setKeys:obj];
    [v42 setEncodedStreams:v40];
    [v42 setKeysWithOptions:v15];
    v43 = [(PSSystemGraphClientInterface *)self systemGraph];
    [v43 publishContext:v42];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)requestTransitionWithAddedKeys:(id)a3 removedKeys:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count] || objc_msgSend(v6, "count"))
  {
    v7 = objc_alloc_init(MEMORY[0x277D3E820]);
    [v7 setResourcesWanted:v8];
    [v7 setResourcesNoLongerWanted:v6];
    [(PSSystemGraphClientInterface *)self requestResources:v7];
  }
}

- (void)addResourceStreamsForSessionName:(id)a3 toContext:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 setWithObject:v8];
  v12 = [(PSSystemGraphClientInterface *)self fetchContextsForSessionNames:v9];

  v10 = [v12 objectForKeyedSubscript:v8];
  v11 = [v10 encodedStreams];
  [v7 addEncodedResourceStreams:v11 forExecutionSession:v8];
}

- (void)addResourceStreamsForResourceKeys:(id)a3 toContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PSSystemGraphClientInterface *)self fetchContextsForSessionsProvidingKeys:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [v13 encodedStreams];
        [v6 addEncodedResourceStreams:v14 forExecutionSession:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resourceRequestWithStridesCompleted:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 resourceRequestCompletedWithStrides:v4];
}

- (void)enteringSleep
{
  v2 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v2 enteringSleep];
}

- (void)exitingSleep
{
  v2 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v2 exitingSleep];
}

- (void)resourcesAreStopped:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v6 resourcesAreStopped:v5];
}

- (void)resourceRequestsFailed:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v6 resourceRequestsFailed:v5];
}

- (void)resourcesNoLongerWantedProcessed:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 resourcesNoLongerWantedProcessed:v4];
}

- (void)resourcesNoLongerWantedFailed:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v6 resourcesNoLongerWantedFailed:v5];
}

- (void)serverRequestToSetupResources:(id)a3
{
  v4 = a3;
  v6 = [(PSSystemGraphClientInterface *)self transitionManager];
  v5 = [v4 resourcesWantedWithStrides];

  [v6 deliverSetupResourcesRequest:v5];
}

- (void)setupRequestsAreComplete:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 setupRequestsAreComplete:v4];
}

- (void)failedToProcessSetupRequests:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v6 failedToProcessSetupRequests:v5];
}

- (void)serverRequestToPauseResources:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self transitionManager];
  [v5 deliverPauseResourcesRequest:v4];
}

- (void)pauseRequestsAreComplete:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 pauseRequestsAreComplete:v4];
}

- (void)failedToProcessPauseRequests:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v6 failedToProcessPauseRequests:v5];
}

- (void)requestDPTailspinWithReason:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 requestDPTailspinWithReason:v4];
}

- (void)didReceiveContextForSessionProvidingKeys:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self requestState];
  [v5 markCompleted:v4];
}

- (void)didReceiveResponseForResourceRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self requestState];
  v6 = [v4 resourcesWanted];
  [v5 markCompleted:v6];

  v7 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v4 resourcesWantedWithStrides];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) resourceKey];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [(PSSystemGraphClientInterface *)self requestState];
  [v14 markCompleted:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)serverRequestedResourcesWithStrides:(id)a3
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v6 = [v4 resourcesNoLongerWantedWithStrides];
  v7 = [v6 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v79;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v79 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v78 + 1) + 8 * i) resourceKey];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v8);
  }

  v12 = [v5 count];
  v13 = [v4 resourcesNoLongerWantedWithStrides];
  if (v12 != [v13 count])
  {
    [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:];
  }

  v60 = v4;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v75;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v75 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v74 + 1) + 8 * j);
        WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
        v21 = [WeakRetained compiler];
        [v21 withWriterForKey:v19 perform:&__block_literal_global_21];
      }

      v16 = [v14 countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v16);
  }

  v22 = [(PSSystemGraphClientInterface *)self transitionManager];
  v23 = v60;
  v24 = [v60 resourcesWantedWithStrides];
  v25 = [v22 deliverResourceRequest:v24 removing:v14];

  if (v25)
  {
    goto LABEL_43;
  }

  v26 = [MEMORY[0x277CBEB58] set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v27 = [v60 resourcesWantedWithStrides];
  v28 = [v27 countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v71;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v71 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v70 + 1) + 8 * k) resourceKey];
        [v26 addObject:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v29);
  }

  [v60 setResourcesWanted:v26];
  [v60 setResourcesNoLongerWanted:v14];
  [v60 setResourcesWantedWithStrides:0];
  [v60 setResourcesNoLongerWantedWithStrides:0];
  v33 = malloc_type_calloc(1uLL, 0x8010uLL, 0x1000040C9B25D23uLL);
  if (v33)
  {
    v34 = v33;
    v35 = [v60 resourcesWanted];
    *v34 = [v35 count];

    v36 = [v60 resourcesNoLongerWanted];
    v59 = v34;
    v34[1] = [v36 count];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v37 = [v60 resourcesWanted];
    v38 = [v37 countByEnumeratingWithState:&v65 objects:v83 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = 0;
      v41 = *v66;
      do
      {
        v42 = 0;
        v43 = &v59[32 * v40 + 2];
        v40 += v39;
        do
        {
          if (*v66 != v41)
          {
            objc_enumerationMutation(v37);
          }

          strlcpy(v43, [*(*(&v65 + 1) + 8 * v42++) UTF8String], 0x100uLL);
          v43 += 256;
        }

        while (v39 != v42);
        v39 = [v37 countByEnumeratingWithState:&v65 objects:v83 count:16];
      }

      while (v39);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v44 = [v60 resourcesNoLongerWanted];
    v45 = [v44 countByEnumeratingWithState:&v61 objects:v82 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = 0;
      v48 = *v62;
      do
      {
        v49 = 0;
        v50 = &v59[32 * v47 + 2050];
        v47 += v46;
        do
        {
          if (*v62 != v48)
          {
            objc_enumerationMutation(v44);
          }

          strlcpy(v50, [*(*(&v61 + 1) + 8 * v49++) UTF8String], 0x100uLL);
          v50 += 256;
        }

        while (v46 != v49);
        v46 = [v44 countByEnumeratingWithState:&v61 objects:v82 count:16];
      }

      while (v46);
    }

    v51 = [(PSSystemGraphClientInterface *)self transitionManager];

    if (v51)
    {
      v52 = [(PSSystemGraphClientInterface *)self transitionManager];
      [v52 callTransitionCallback:1 unretainedContext:v59 freeAfterUse:1];

      v23 = v60;
      v53 = [v60 resourcesNoLongerWanted];
      v54 = [v53 count];

      if (v54)
      {
        v55 = [(PSSystemGraphClientInterface *)self executionSession];
        v56 = [v60 resourcesNoLongerWanted];
        [v55 resourcesNoLongerWantedProcessed:v56];
      }

LABEL_43:
      v57 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:?];
  }

  v58 = [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:?];
  __68__PSSystemGraphClientInterface_serverRequestedResourcesWithStrides___block_invoke(v58);
}

void __68__PSSystemGraphClientInterface_serverRequestedResourcesWithStrides___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F860](v2);
  }
}

- (void)serverRequestedCurrentGraphs
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(PSSystemGraphClientInterface *)self executionSession];
  v4 = [v3 dashboard];

  v5 = [v4 getRunningGraphs];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) JSONObject];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v23[0] = @"lastTransitionCompletionTimestamp";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "lastTransitionCompletionTimestamp")}];
  v24[0] = v13;
  v23[1] = @"completedTransitionsCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "completedTransitionsCount")}];
  v23[2] = @"graphs";
  v24[1] = v14;
  v24[2] = v6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:2 error:0];
  v17 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v17 publishCurrentGraphs:v16];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)systemReplayStarting
{
  v2 = [(PSSystemGraphClientInterface *)self transitionManager];
  [v2 deliverSystemReplayStartNotification];
}

- (void)systemReplayEnding
{
  v2 = [(PSSystemGraphClientInterface *)self transitionManager];
  [v2 deliverSystemReplayStopNotification];
}

- (void)serverRequestedGraphResubmission
{
  v2 = [(PSSystemGraphClientInterface *)self transitionManager];
  [v2 deliverGraphResubmissionRequest];
}

- (void)serverRequestedReplayResources
{
  v2 = [(PSSystemGraphClientInterface *)self transitionManager];
  [v2 deliverReplayResourceRequest];
}

- (unint64_t)requestResources:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSSystemGraphClientInterface_requestResources___block_invoke;
  block[3] = &unk_279A48D18;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_async_and_wait(v5, block);

  v7 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v7;
}

void __49__PSSystemGraphClientInterface_requestResources___block_invoke(uint64_t a1)
{
  v2 = [PSSGRequestState alloc];
  v3 = PSSGRequestTypeResources;
  v4 = [*(a1 + 40) resourcesWanted];
  v5 = [(PSSGRequestState *)v2 initWithRequestType:v3 requestedKeys:v4];
  [*(a1 + 32) setRequestState:v5];

  v6 = [*(a1 + 32) systemGraph];
  LOBYTE(v3) = [v6 requestResourcesWithStrides:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)fetchContextsForSessionNames:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PSSystemGraphClientInterface_fetchContextsForSessionNames___block_invoke;
  block[3] = &unk_279A48D40;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_async_and_wait(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__PSSystemGraphClientInterface_fetchContextsForSessionNames___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) systemGraph];
  v2 = [v5 fetchContextsForSessionNames:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)fetchContextsForSessionsProvidingKeys:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PSSystemGraphClientInterface_fetchContextsForSessionsProvidingKeys___block_invoke;
  block[3] = &unk_279A48D18;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_async_and_wait(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __70__PSSystemGraphClientInterface_fetchContextsForSessionsProvidingKeys___block_invoke(uint64_t a1)
{
  v2 = [PSSGRequestState alloc];
  v3 = [(PSSGRequestState *)v2 initWithRequestType:PSSGRequestTypeContext requestedKeys:*(a1 + 40)];
  [*(a1 + 32) setRequestState:v3];

  v7 = [*(a1 + 32) systemGraph];
  v4 = [v7 fetchContextsForSessionsProvidingKeys:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)extractGraphState:(id)a3 toState:(pssh_graph_state_s *)a4 isRunning:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 name];
  [v9 UTF8String];
  __strlcpy_chk();

  v10 = [(PSSystemGraphClientInterface *)self systemGraph];
  v11 = [v10 sessionName];
  [v11 UTF8String];
  __strlcpy_chk();

  v12 = getpid();
  a4->var3 = v12;
  snprintf(a4->var2, 0x80uLL, "%d-%s-%p", v12, a4->var1, v8);
  a4->var4 = v5;
  if (v5)
  {
    a4->var5 = [v8 frequency];
    a4->var6 = [v8 resolvedDeadline];
    a4->var7 = [v8 resolvedThreadPoolSize];
    a4->var8[0] = [v8 criticalityCPU];
    a4->var8[1] = [v8 criticalityGPU];
    a4->var8[2] = [v8 criticalityANE];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [v8 tasks];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      var9 = a4->var9;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v22 + 1) + 8 * i) computeAgent];
          if (v19 >= 4)
          {
            [PSSystemGraphClientInterface extractGraphState:? toState:? isRunning:?];
          }

          ++var9[v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateGraphStateWithAdded:(id)a3 removed:(id)a4 getLivenessNode:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = [v9 count];
  v13 = v12 + v11;
  if (v12 + v11)
  {
    v34 = malloc_type_calloc(v12 + v11, 0x178uLL, 0x1000040A31A6D41uLL);
    if (!v34)
    {
      [PSSystemGraphClientInterface updateGraphStateWithAdded:buf removed:? getLivenessNode:?];
    }

    v31 = v13;
    v32 = v9;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v40;
      do
      {
        v19 = 0;
        v20 = &v34[376 * v17];
        v17 += v16;
        do
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v39 + 1) + 8 * v19);
          [(PSSystemGraphClientInterface *)self extractGraphState:v21 toState:v20 isRunning:1, v31];
          *(v20 + 93) = v10[2](v10, v21);
          ++v19;
          v20 += 376;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v32;
    v23 = v32;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        v27 = 0;
        v28 = &v34[376 * v17];
        v17 += v25;
        do
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(PSSystemGraphClientInterface *)self extractGraphState:*(*(&v35 + 1) + 8 * v27++) toState:v28 isRunning:0, v31];
          v28 += 376;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v25);
    }

    v22 = [(PSSystemGraphClientInterface *)self systemGraph];
    v29 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v34 length:376 * v31 freeWhenDone:1];
    [v22 updateGraphs:v29];

    v8 = v33;
  }

  else
  {
    v22 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_INFO, "No graph state to update", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startSystemReplay
{
  v2 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v2 notifySystemReplayStarting];
}

- (void)stopSystemReplay
{
  v2 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v2 notifySystemReplayStopping];
}

- (void)resourceAvailabilityHasChangedTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "availability", v16)}];
        v13 = [v11 key];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v14 resourceAvailabilityHasChangedTo:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerForResourceAvailabilityUpdates:(id)a3 context:(id)a4
{
  objc_storeStrong(&self->_contextToUpdate, a4);
  v6 = a3;
  v7 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v7 requestResourceAvailabilityUpdates:v6];
}

- (void)deregisterFromResourceAvailabilityUpdates:(id)a3
{
  v4 = a3;
  v5 = [(PSSystemGraphClientInterface *)self systemGraph];
  [v5 stopResourceAvailabilityUpdates:v4];
}

- (void)didReceiveResourceAvailabilityUpdates:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = self;
  [(PSContext *)self->_contextToUpdate updateResourceAvailability:v4];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [v13 unsignedIntValue];

        if (v14 == 1)
        {
          v15 = v5;
          goto LABEL_10;
        }

        if (!v14)
        {
          v15 = v6;
LABEL_10:
          [v15 addObject:v12];
          continue;
        }

        v16 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [v12 UTF8String];
          *buf = 136315394;
          v27 = "[PSSystemGraphClientInterface didReceiveResourceAvailabilityUpdates:]";
          v28 = 2080;
          v29 = v17;
          _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_ERROR, "(%s) Unknown resouce availability state for resource %s", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v18 = [(PSSystemGraphClientInterface *)v21 transitionManager];
    [v18 deliverDynamicResourcesAvailableNotification:v5];
  }

  if ([v6 count])
  {
    v19 = [(PSSystemGraphClientInterface *)v21 transitionManager];
    [v19 deliverDynamicResourcesNoLongerAvailableNotification:v6];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (PSExecutionSession)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (uint64_t)serverRequestedResourcesWithStrides:(char *)a1 .cold.2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "callback was not registered for execution session");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d callback was not registered for execution session", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:v16];
}

- (uint64_t)serverRequestedResourcesWithStrides:(char *)a1 .cold.3(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSSystemGraphClientInterface extractGraphState:v16 toState:? isRunning:?];
}

- (uint64_t)extractGraphState:(char *)a1 toState:isRunning:.cold.1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown compute agent");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown compute agent", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSSystemGraphClientInterface updateGraphStateWithAdded:v16 removed:? getLivenessNode:?];
}

- (void)updateGraphStateWithAdded:(char *)a1 removed:getLivenessNode:.cold.1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "No memory for sending graph state to system graph");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d No memory for sending graph state to system graph", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  [PSGSTManager initSharedTrigger:v16 threadPoolID:? pid:?];
}

@end