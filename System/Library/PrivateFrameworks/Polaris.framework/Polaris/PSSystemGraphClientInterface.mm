@interface PSSystemGraphClientInterface
- (PSExecutionSession)executionSession;
- (PSSystemGraphClientInterface)initWithSession:(id)session;
- (PSTransitionManager)transitionManager;
- (id)fetchContextsForSessionNames:(id)names;
- (id)fetchContextsForSessionsProvidingKeys:(id)keys;
- (unint64_t)requestResources:(id)resources;
- (void)addResourceStreamsForResourceKeys:(id)keys toContext:(id)context;
- (void)addResourceStreamsForSessionName:(id)name toContext:(id)context;
- (void)dealloc;
- (void)deregister;
- (void)deregisterFromResourceAvailabilityUpdates:(id)updates;
- (void)didReceiveContextForSessionProvidingKeys:(id)keys;
- (void)didReceiveResourceAvailabilityUpdates:(id)updates;
- (void)didReceiveResponseForResourceRequest:(id)request;
- (void)enteringSleep;
- (void)exitingSleep;
- (void)extractGraphState:(id)state toState:(pssh_graph_state_s *)toState isRunning:(BOOL)running;
- (void)failedToProcessPauseRequests:(id)requests reason:(unint64_t)reason;
- (void)failedToProcessSetupRequests:(id)requests reason:(unint64_t)reason;
- (void)pauseRequestsAreComplete:(id)complete;
- (void)publishResourceStreamsForKeys:(id)keys fromContext:(id)context withDevice:(id)device;
- (void)registerForResourceAvailabilityUpdates:(id)updates context:(id)context;
- (void)requestDPTailspinWithReason:(id)reason;
- (void)requestTransitionWithAddedKeys:(id)keys removedKeys:(id)removedKeys;
- (void)resourceAvailabilityHasChangedTo:(id)to;
- (void)resourceRequestWithStridesCompleted:(id)completed;
- (void)resourceRequestsFailed:(id)failed reason:(unint64_t)reason;
- (void)resourcesAreStopped:(id)stopped reason:(unint64_t)reason;
- (void)resourcesNoLongerWantedFailed:(id)failed reason:(unint64_t)reason;
- (void)resourcesNoLongerWantedProcessed:(id)processed;
- (void)serverRequestToPauseResources:(id)resources;
- (void)serverRequestToSetupResources:(id)resources;
- (void)serverRequestedCurrentGraphs;
- (void)serverRequestedGraphResubmission;
- (void)serverRequestedReplayResources;
- (void)serverRequestedResourcesWithStrides:(id)strides;
- (void)setupRequestsAreComplete:(id)complete;
- (void)startSystemReplay;
- (void)stopSystemReplay;
- (void)systemReplayEnding;
- (void)systemReplayStarting;
- (void)updateGraphStateWithAdded:(id)added removed:(id)removed getLivenessNode:(id)node;
@end

@implementation PSSystemGraphClientInterface

- (PSSystemGraphClientInterface)initWithSession:(id)session
{
  [(PSSystemGraphClientInterface *)self setExecutionSession:session];
  v12.receiver = self;
  v12.super_class = PSSystemGraphClientInterface;
  v4 = [(PSSystemGraphClientInterface *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D3E808]);
    executionSession = [(PSSystemGraphClientInterface *)v4 executionSession];
    name = [executionSession name];
    v8 = [v5 initWithSessionName:name delegate:v4 options:2];
    [(PSSystemGraphClientInterface *)v4 setSystemGraph:v8];

    systemGraph = [(PSSystemGraphClientInterface *)v4 systemGraph];
    [systemGraph registerClient];

    v10 = ps_util_create_serial_dispatch_queue("com.apple.polaris.systemgraph-tx");
    [(PSSystemGraphClientInterface *)v4 setBlockingCallsQueue:v10];
  }

  return v4;
}

- (void)dealloc
{
  blockingCallsQueue = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  ps_util_release_dispatch_queue(blockingCallsQueue);

  v4.receiver = self;
  v4.super_class = PSSystemGraphClientInterface;
  [(PSSystemGraphClientInterface *)&v4 dealloc];
}

- (void)deregister
{
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph deregisterClient];

  [(PSSystemGraphClientInterface *)self setSystemGraph:0];
}

- (void)publishResourceStreamsForKeys:(id)keys fromContext:(id)context withDevice:(id)device
{
  v76 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = keysCopy;
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

        v14 = [contextCopy resourceStreamForKey:*(*(&v66 + 1) + 8 * i)];
        [array addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v11);
  }

  v46 = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v9;
  v51 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v51)
  {
    v49 = *v63;
    v50 = contextCopy;
    v48 = dictionary;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * j);
        v18 = [contextCopy resourceStreamForKey:v17];
        supportedStrides = [v18 supportedStrides];
        if ([supportedStrides count])
        {
          v53 = v17;
          v55 = v18;
          v56 = j;
          array2 = [MEMORY[0x277CBEB18] array];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v54 = supportedStrides;
          v21 = supportedStrides;
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
                [array2 addObject:v29];
              }

              v23 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
            }

            while (v23);
          }

          v30 = MEMORY[0x277D3E818];
          defaultStride = [v55 defaultStride];
          unsignedIntValue = [defaultStride unsignedIntValue];
          supportsSetupResume = [v55 supportsSetupResume];
          baseMSGSyncID = [v55 baseMSGSyncID];
          v34 = [v30 optionsWithDefaultStride:unsignedIntValue supportedStrides:array2 setupSupported:supportsSetupResume baseMSGSyncID:baseMSGSyncID];
          v35 = v48;
          v17 = v53;
          [v48 setObject:v34 forKeyedSubscript:v53];

          v18 = v55;
          j = v56;
          supportedStrides = v54;
        }

        else
        {
          [MEMORY[0x277D3E818] optionsWithoutStrides];
          array2 = v35 = dictionary;
          [v35 setObject:array2 forKeyedSubscript:v17];
        }

        supportsSetupResume2 = [v18 supportsSetupResume];
        v37 = [v35 objectForKeyedSubscript:v17];
        [v37 setSetupResumeSupported:supportsSetupResume2];

        baseMSGSyncID2 = [v18 baseMSGSyncID];
        v39 = [v35 objectForKeyedSubscript:v17];
        [v39 setBaseMSGSyncID:baseMSGSyncID2];

        contextCopy = v50;
        dictionary = v35;
      }

      v51 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v51);
  }

  if (![dictionary count])
  {

    dictionary = 0;
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
    [v42 setKeysWithOptions:dictionary];
    systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
    [systemGraph publishContext:v42];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)requestTransitionWithAddedKeys:(id)keys removedKeys:(id)removedKeys
{
  keysCopy = keys;
  removedKeysCopy = removedKeys;
  if ([keysCopy count] || objc_msgSend(removedKeysCopy, "count"))
  {
    v7 = objc_alloc_init(MEMORY[0x277D3E820]);
    [v7 setResourcesWanted:keysCopy];
    [v7 setResourcesNoLongerWanted:removedKeysCopy];
    [(PSSystemGraphClientInterface *)self requestResources:v7];
  }
}

- (void)addResourceStreamsForSessionName:(id)name toContext:(id)context
{
  v6 = MEMORY[0x277CBEB98];
  contextCopy = context;
  nameCopy = name;
  v9 = [v6 setWithObject:nameCopy];
  v12 = [(PSSystemGraphClientInterface *)self fetchContextsForSessionNames:v9];

  v10 = [v12 objectForKeyedSubscript:nameCopy];
  encodedStreams = [v10 encodedStreams];
  [contextCopy addEncodedResourceStreams:encodedStreams forExecutionSession:nameCopy];
}

- (void)addResourceStreamsForResourceKeys:(id)keys toContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [(PSSystemGraphClientInterface *)self fetchContextsForSessionsProvidingKeys:keys];
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
        encodedStreams = [v13 encodedStreams];
        [contextCopy addEncodedResourceStreams:encodedStreams forExecutionSession:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resourceRequestWithStridesCompleted:(id)completed
{
  completedCopy = completed;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourceRequestCompletedWithStrides:completedCopy];
}

- (void)enteringSleep
{
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph enteringSleep];
}

- (void)exitingSleep
{
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph exitingSleep];
}

- (void)resourcesAreStopped:(id)stopped reason:(unint64_t)reason
{
  stoppedCopy = stopped;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourcesAreStopped:stoppedCopy];
}

- (void)resourceRequestsFailed:(id)failed reason:(unint64_t)reason
{
  failedCopy = failed;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourceRequestsFailed:failedCopy];
}

- (void)resourcesNoLongerWantedProcessed:(id)processed
{
  processedCopy = processed;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourcesNoLongerWantedProcessed:processedCopy];
}

- (void)resourcesNoLongerWantedFailed:(id)failed reason:(unint64_t)reason
{
  failedCopy = failed;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourcesNoLongerWantedFailed:failedCopy];
}

- (void)serverRequestToSetupResources:(id)resources
{
  resourcesCopy = resources;
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  resourcesWantedWithStrides = [resourcesCopy resourcesWantedWithStrides];

  [transitionManager deliverSetupResourcesRequest:resourcesWantedWithStrides];
}

- (void)setupRequestsAreComplete:(id)complete
{
  completeCopy = complete;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph setupRequestsAreComplete:completeCopy];
}

- (void)failedToProcessSetupRequests:(id)requests reason:(unint64_t)reason
{
  requestsCopy = requests;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph failedToProcessSetupRequests:requestsCopy];
}

- (void)serverRequestToPauseResources:(id)resources
{
  resourcesCopy = resources;
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  [transitionManager deliverPauseResourcesRequest:resourcesCopy];
}

- (void)pauseRequestsAreComplete:(id)complete
{
  completeCopy = complete;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph pauseRequestsAreComplete:completeCopy];
}

- (void)failedToProcessPauseRequests:(id)requests reason:(unint64_t)reason
{
  requestsCopy = requests;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph failedToProcessPauseRequests:requestsCopy];
}

- (void)requestDPTailspinWithReason:(id)reason
{
  reasonCopy = reason;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph requestDPTailspinWithReason:reasonCopy];
}

- (void)didReceiveContextForSessionProvidingKeys:(id)keys
{
  keysCopy = keys;
  requestState = [(PSSystemGraphClientInterface *)self requestState];
  [requestState markCompleted:keysCopy];
}

- (void)didReceiveResponseForResourceRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  requestState = [(PSSystemGraphClientInterface *)self requestState];
  resourcesWanted = [requestCopy resourcesWanted];
  [requestState markCompleted:resourcesWanted];

  v7 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  resourcesWantedWithStrides = [requestCopy resourcesWantedWithStrides];
  v9 = [resourcesWantedWithStrides countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(resourcesWantedWithStrides);
        }

        resourceKey = [*(*(&v16 + 1) + 8 * v12) resourceKey];
        [v7 addObject:resourceKey];

        ++v12;
      }

      while (v10 != v12);
      v10 = [resourcesWantedWithStrides countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  requestState2 = [(PSSystemGraphClientInterface *)self requestState];
  [requestState2 markCompleted:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)serverRequestedResourcesWithStrides:(id)strides
{
  v87 = *MEMORY[0x277D85DE8];
  stridesCopy = strides;
  v5 = [MEMORY[0x277CBEB58] set];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  resourcesNoLongerWantedWithStrides = [stridesCopy resourcesNoLongerWantedWithStrides];
  v7 = [resourcesNoLongerWantedWithStrides countByEnumeratingWithState:&v78 objects:v86 count:16];
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
          objc_enumerationMutation(resourcesNoLongerWantedWithStrides);
        }

        resourceKey = [*(*(&v78 + 1) + 8 * i) resourceKey];
        [v5 addObject:resourceKey];
      }

      v8 = [resourcesNoLongerWantedWithStrides countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v8);
  }

  v12 = [v5 count];
  resourcesNoLongerWantedWithStrides2 = [stridesCopy resourcesNoLongerWantedWithStrides];
  if (v12 != [resourcesNoLongerWantedWithStrides2 count])
  {
    [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:];
  }

  v60 = stridesCopy;

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
        compiler = [WeakRetained compiler];
        [compiler withWriterForKey:v19 perform:&__block_literal_global_21];
      }

      v16 = [v14 countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v16);
  }

  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  v23 = v60;
  resourcesWantedWithStrides = [v60 resourcesWantedWithStrides];
  v25 = [transitionManager deliverResourceRequest:resourcesWantedWithStrides removing:v14];

  if (v25)
  {
    goto LABEL_43;
  }

  v26 = [MEMORY[0x277CBEB58] set];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  resourcesWantedWithStrides2 = [v60 resourcesWantedWithStrides];
  v28 = [resourcesWantedWithStrides2 countByEnumeratingWithState:&v70 objects:v84 count:16];
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
          objc_enumerationMutation(resourcesWantedWithStrides2);
        }

        resourceKey2 = [*(*(&v70 + 1) + 8 * k) resourceKey];
        [v26 addObject:resourceKey2];
      }

      v29 = [resourcesWantedWithStrides2 countByEnumeratingWithState:&v70 objects:v84 count:16];
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
    resourcesWanted = [v60 resourcesWanted];
    *v34 = [resourcesWanted count];

    resourcesNoLongerWanted = [v60 resourcesNoLongerWanted];
    v59 = v34;
    v34[1] = [resourcesNoLongerWanted count];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    resourcesWanted2 = [v60 resourcesWanted];
    v38 = [resourcesWanted2 countByEnumeratingWithState:&v65 objects:v83 count:16];
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
            objc_enumerationMutation(resourcesWanted2);
          }

          strlcpy(v43, [*(*(&v65 + 1) + 8 * v42++) UTF8String], 0x100uLL);
          v43 += 256;
        }

        while (v39 != v42);
        v39 = [resourcesWanted2 countByEnumeratingWithState:&v65 objects:v83 count:16];
      }

      while (v39);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    resourcesNoLongerWanted2 = [v60 resourcesNoLongerWanted];
    v45 = [resourcesNoLongerWanted2 countByEnumeratingWithState:&v61 objects:v82 count:16];
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
            objc_enumerationMutation(resourcesNoLongerWanted2);
          }

          strlcpy(v50, [*(*(&v61 + 1) + 8 * v49++) UTF8String], 0x100uLL);
          v50 += 256;
        }

        while (v46 != v49);
        v46 = [resourcesNoLongerWanted2 countByEnumeratingWithState:&v61 objects:v82 count:16];
      }

      while (v46);
    }

    transitionManager2 = [(PSSystemGraphClientInterface *)self transitionManager];

    if (transitionManager2)
    {
      transitionManager3 = [(PSSystemGraphClientInterface *)self transitionManager];
      [transitionManager3 callTransitionCallback:1 unretainedContext:v59 freeAfterUse:1];

      v23 = v60;
      resourcesNoLongerWanted3 = [v60 resourcesNoLongerWanted];
      v54 = [resourcesNoLongerWanted3 count];

      if (v54)
      {
        executionSession = [(PSSystemGraphClientInterface *)self executionSession];
        resourcesNoLongerWanted4 = [v60 resourcesNoLongerWanted];
        [executionSession resourcesNoLongerWantedProcessed:resourcesNoLongerWanted4];
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
  executionSession = [(PSSystemGraphClientInterface *)self executionSession];
  dashboard = [executionSession dashboard];

  getRunningGraphs = [dashboard getRunningGraphs];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(getRunningGraphs, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = getRunningGraphs;
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

        jSONObject = [*(*(&v19 + 1) + 8 * v11) JSONObject];
        [v6 addObject:jSONObject];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v23[0] = @"lastTransitionCompletionTimestamp";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(dashboard, "lastTransitionCompletionTimestamp")}];
  v24[0] = v13;
  v23[1] = @"completedTransitionsCount";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(dashboard, "completedTransitionsCount")}];
  v23[2] = @"graphs";
  v24[1] = v14;
  v24[2] = v6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:2 error:0];
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph publishCurrentGraphs:v16];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)systemReplayStarting
{
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  [transitionManager deliverSystemReplayStartNotification];
}

- (void)systemReplayEnding
{
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  [transitionManager deliverSystemReplayStopNotification];
}

- (void)serverRequestedGraphResubmission
{
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  [transitionManager deliverGraphResubmissionRequest];
}

- (void)serverRequestedReplayResources
{
  transitionManager = [(PSSystemGraphClientInterface *)self transitionManager];
  [transitionManager deliverReplayResourceRequest];
}

- (unint64_t)requestResources:(id)resources
{
  resourcesCopy = resources;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  blockingCallsQueue = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PSSystemGraphClientInterface_requestResources___block_invoke;
  block[3] = &unk_279A48D18;
  block[4] = self;
  v10 = resourcesCopy;
  v11 = &v12;
  v6 = resourcesCopy;
  dispatch_async_and_wait(blockingCallsQueue, block);

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

- (id)fetchContextsForSessionNames:(id)names
{
  namesCopy = names;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  blockingCallsQueue = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PSSystemGraphClientInterface_fetchContextsForSessionNames___block_invoke;
  block[3] = &unk_279A48D40;
  v10 = namesCopy;
  v11 = &v12;
  block[4] = self;
  v6 = namesCopy;
  dispatch_async_and_wait(blockingCallsQueue, block);

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

- (id)fetchContextsForSessionsProvidingKeys:(id)keys
{
  keysCopy = keys;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  blockingCallsQueue = [(PSSystemGraphClientInterface *)self blockingCallsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PSSystemGraphClientInterface_fetchContextsForSessionsProvidingKeys___block_invoke;
  block[3] = &unk_279A48D18;
  block[4] = self;
  v10 = keysCopy;
  v11 = &v12;
  v6 = keysCopy;
  dispatch_async_and_wait(blockingCallsQueue, block);

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

- (void)extractGraphState:(id)state toState:(pssh_graph_state_s *)toState isRunning:(BOOL)running
{
  runningCopy = running;
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  name = [stateCopy name];
  [name UTF8String];
  __strlcpy_chk();

  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  sessionName = [systemGraph sessionName];
  [sessionName UTF8String];
  __strlcpy_chk();

  v12 = getpid();
  toState->var3 = v12;
  snprintf(toState->var2, 0x80uLL, "%d-%s-%p", v12, toState->var1, stateCopy);
  toState->var4 = runningCopy;
  if (runningCopy)
  {
    toState->var5 = [stateCopy frequency];
    toState->var6 = [stateCopy resolvedDeadline];
    toState->var7 = [stateCopy resolvedThreadPoolSize];
    toState->var8[0] = [stateCopy criticalityCPU];
    toState->var8[1] = [stateCopy criticalityGPU];
    toState->var8[2] = [stateCopy criticalityANE];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    tasks = [stateCopy tasks];
    v14 = [tasks countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      var9 = toState->var9;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(tasks);
          }

          computeAgent = [*(*(&v22 + 1) + 8 * i) computeAgent];
          if (computeAgent >= 4)
          {
            [PSSystemGraphClientInterface extractGraphState:? toState:? isRunning:?];
          }

          ++var9[computeAgent];
        }

        v15 = [tasks countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateGraphStateWithAdded:(id)added removed:(id)removed getLivenessNode:(id)node
{
  v46 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  removedCopy = removed;
  nodeCopy = node;
  v11 = [addedCopy count];
  v12 = [removedCopy count];
  v13 = v12 + v11;
  if (v12 + v11)
  {
    v34 = malloc_type_calloc(v12 + v11, 0x178uLL, 0x1000040A31A6D41uLL);
    if (!v34)
    {
      [PSSystemGraphClientInterface updateGraphStateWithAdded:buf removed:? getLivenessNode:?];
    }

    v31 = v13;
    v32 = removedCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = addedCopy;
    v14 = addedCopy;
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
          *(v20 + 93) = nodeCopy[2](nodeCopy, v21);
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
    removedCopy = v32;
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

    systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
    v29 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v34 length:376 * v31 freeWhenDone:1];
    [systemGraph updateGraphs:v29];

    addedCopy = v33;
  }

  else
  {
    systemGraph = __PLSLogSharedInstance();
    if (os_log_type_enabled(systemGraph, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, systemGraph, OS_LOG_TYPE_INFO, "No graph state to update", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startSystemReplay
{
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph notifySystemReplayStarting];
}

- (void)stopSystemReplay
{
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph notifySystemReplayStopping];
}

- (void)resourceAvailabilityHasChangedTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = toCopy;
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

  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph resourceAvailabilityHasChangedTo:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerForResourceAvailabilityUpdates:(id)updates context:(id)context
{
  objc_storeStrong(&self->_contextToUpdate, context);
  updatesCopy = updates;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph requestResourceAvailabilityUpdates:updatesCopy];
}

- (void)deregisterFromResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  systemGraph = [(PSSystemGraphClientInterface *)self systemGraph];
  [systemGraph stopResourceAvailabilityUpdates:updatesCopy];
}

- (void)didReceiveResourceAvailabilityUpdates:(id)updates
{
  v31 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  selfCopy = self;
  [(PSContext *)self->_contextToUpdate updateResourceAvailability:updatesCopy];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [updatesCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [updatesCopy objectForKeyedSubscript:v12];
        unsignedIntValue = [v13 unsignedIntValue];

        if (unsignedIntValue == 1)
        {
          v15 = v5;
          goto LABEL_10;
        }

        if (!unsignedIntValue)
        {
          v15 = v6;
LABEL_10:
          [v15 addObject:v12];
          continue;
        }

        v16 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          uTF8String = [v12 UTF8String];
          *buf = 136315394;
          v27 = "[PSSystemGraphClientInterface didReceiveResourceAvailabilityUpdates:]";
          v28 = 2080;
          v29 = uTF8String;
          _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_ERROR, "(%s) Unknown resouce availability state for resource %s", buf, 0x16u);
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    transitionManager = [(PSSystemGraphClientInterface *)selfCopy transitionManager];
    [transitionManager deliverDynamicResourcesAvailableNotification:v5];
  }

  if ([v6 count])
  {
    transitionManager2 = [(PSSystemGraphClientInterface *)selfCopy transitionManager];
    [transitionManager2 deliverDynamicResourcesNoLongerAvailableNotification:v6];
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