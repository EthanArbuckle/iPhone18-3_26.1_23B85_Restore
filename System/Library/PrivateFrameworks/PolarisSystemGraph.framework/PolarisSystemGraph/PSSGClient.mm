@interface PSSGClient
- (BOOL)requestResourcesWithStrides:(id)a3;
- (PSSGDelegate)delegate;
- (id)fetchContextsForSessionNames:(id)a3;
- (id)fetchContextsForSessionsProvidingKeys:(id)a3;
- (id)fetchCurrentGraphsForAllSessions;
- (id)requestAllGraphs:(id)a3;
- (id)requestProcessMonitorEventLog;
- (id)requestProcessMonitorStats;
- (id)requestSystemActionStatsStats;
- (void)deregisterClient;
- (void)didReceiveContextForSession:(id)a3;
- (void)enteringSleep;
- (void)exitingSleep;
- (void)failedToProcessPauseRequests:(id)a3;
- (void)failedToProcessSetupRequests:(id)a3;
- (void)handleCompletedCurrentGraphsRequestMessage:(id)a3;
- (void)handleDeRegisterClientAck;
- (void)handlePauseResourcesMessage:(id)a3;
- (void)handlePublishAllGraphs:(id)a3;
- (void)handlePublishCurrentGraphsMessage:(id)a3;
- (void)handlePublishResourceKeysAndStridesMessage:(id)a3;
- (void)handlePublishResourceStreamsMessage:(id)a3;
- (void)handleRegisterClientAck;
- (void)handleReportProcessMonitorEventLog:(id)a3;
- (void)handleReportProcessMonitorStats:(id)a3;
- (void)handleReportSystemActionStats:(id)a3;
- (void)handleRequestCurrentGraphsMessage:(id)a3;
- (void)handleRequestGraphResubmission:(id)a3;
- (void)handleRequestReplayResources:(id)a3;
- (void)handleResourceAvailabilityUpdates:(id)a3;
- (void)handleResourceRequestWithStridesCompletedMessage:(id)a3;
- (void)handleResourceRequestWithStridesMessage:(id)a3;
- (void)handleResourceRequestsFailedMessage:(id)a3;
- (void)handleSetupResourcesMessage:(id)a3;
- (void)handleSystemReplayEnding:(id)a3;
- (void)handleSystemReplayStarting:(id)a3;
- (void)notifySystemReplayStarting;
- (void)notifySystemReplayStopping;
- (void)pauseRequestsAreComplete:(id)a3;
- (void)publishContext:(id)a3;
- (void)publishCurrentGraphs:(id)a3;
- (void)registerClient;
- (void)requestDPTailspinWithReason:(id)a3;
- (void)requestResourceAvailabilityUpdates:(id)a3;
- (void)resetInternalState;
- (void)resourceAvailabilityHasChangedTo:(id)a3;
- (void)resourceRequestCompletedWithStrides:(id)a3;
- (void)resourceRequestsFailed:(id)a3;
- (void)resourcesAreStopped:(id)a3;
- (void)resourcesNoLongerWantedFailed:(id)a3;
- (void)resourcesNoLongerWantedProcessed:(id)a3;
- (void)setPublished:(BOOL)a3;
- (void)setRegistered:(BOOL)a3;
- (void)setReplaying:(BOOL)a3;
- (void)setupRequestsAreComplete:(id)a3;
- (void)stopResourceAvailabilityUpdates:(id)a3;
- (void)updateGraphs:(id)a3;
- (void)updateSystemHealth:(id)a3;
@end

@implementation PSSGClient

- (void)publishContext:(id)a3
{
  v4 = a3;
  v5 = [(PSSGClient *)self comms];
  v6 = [v4 keysWithOptions];
  v7 = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessagePublishResourceKeysAndStrides messageWithKeysAndStrides:v6 sender:v7];
  [v5 sendMessage:v8];

  v9 = [(PSSGClient *)self comms];
  v10 = [v4 encodedStreams];

  v11 = [(PSSGClient *)self sessionName];
  v12 = [PSSGMessagePublishResourceStreams messageWithStreams:v10 sender:v11];
  [v9 sendMessage:v12];

  [(PSSGClient *)self setPublished:1];
}

- (void)registerClient
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  [v3 registerForClient:self];

  v4 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)deregisterClient
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  [v3 deregisterForClient:self];

  v4 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)handleRegisterClientAck
{
  [(PSSGClient *)self setRegistered:1];
  v3 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v3);
}

- (void)handleDeRegisterClientAck
{
  [(PSSGClient *)self setStatus:0];
  v3 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v3);
}

- (void)resetInternalState
{
  v3 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setSessionsPendingContexts:v3];

  v4 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setResourceKeysPendingContexts:v4];

  v5 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setResourceKeysPendingProduction:v5];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  [(PSSGClient *)self setContextMap:v6];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [(PSSGClient *)self setGraphsBySession:v7];

  v8 = dispatch_semaphore_create(0);
  [(PSSGClient *)self setCompletionSemaphore:v8];
}

- (id)fetchContextsForSessionNames:(id)a3
{
  v4 = a3;
  [(PSSGClient *)self resetInternalState];
  v5 = [(PSSGClient *)self sessionsPendingContexts];
  [v5 unionSet:v4];

  v6 = [(PSSGClient *)self comms];
  v7 = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessageRequestContextForSessions messageWithSessionNames:v4 sender:v7];

  [v6 sendMessage:v8];
  v9 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self contextMap];
}

- (id)fetchContextsForSessionsProvidingKeys:(id)a3
{
  v4 = a3;
  [(PSSGClient *)self resetInternalState];
  v5 = [(PSSGClient *)self resourceKeysPendingContexts];
  [v5 unionSet:v4];

  v6 = [(PSSGClient *)self comms];
  v7 = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessageRequestContextForResourceKeys messageWithResourceKeys:v4 sender:v7];

  [v6 sendMessage:v8];
  v9 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self contextMap];
}

- (BOOL)requestResourcesWithStrides:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PSSGClient *)self resetInternalState];
  v5 = [(PSSGClient *)self resourceKeysPendingProduction];
  v6 = [v4 resourcesWanted];
  [v5 unionSet:v6];

  v7 = [(PSSGClient *)self comms];
  v8 = [(PSSGClient *)self sessionName];
  v9 = [PSSGMessageRequestResourcesWithStrides messageWithResourceRequest:v4 sender:v8];
  [v7 sendMessage:v9];

  v10 = [(PSSGClient *)self resourceKeysPendingProduction];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = [(PSSGClient *)self resourceKeysPendingProduction];
  v14 = [v13 count];

  if (v14)
  {
    v34 = v14;
    v33 = objc_alloc_init(PSSGResourceRequest);
    v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v4;
    v16 = [v4 resourcesWantedWithStrides];
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        v20 = 0;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v37 + 1) + 8 * v20);
          v22 = self;
          v23 = [(PSSGClient *)self resourceKeysPendingProduction];
          v24 = [v21 resourceKey];
          v25 = [v23 containsObject:v24];

          if ((v25 & 1) == 0)
          {
            v26 = [v21 resourceKey];
            [v36 addObject:v26];

            [v15 addObject:v21];
          }

          ++v20;
          self = v22;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    [(PSSGResourceRequest *)v33 setResourcesNoLongerWanted:v36];
    [(PSSGResourceRequest *)v33 setResourcesNoLongerWantedWithStrides:v15];
    v27 = [(PSSGClient *)self comms];
    v28 = [(PSSGClient *)self sessionName];
    v29 = [PSSGMessageRequestResourcesWithStrides messageWithResourceRequest:v33 sender:v28];
    [v27 sendMessage:v29];

    v30 = [(PSSGClient *)self resourceKeysPendingProduction];
    [v30 removeAllObjects];

    v14 = v34;
    v4 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (void)resourceRequestCompletedWithStrides:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageCompletedResourceRequestWithStrides messageWithResourceRequest:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)enteringSleep
{
  v5 = [(PSSGClient *)self comms];
  v3 = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageEnteringSleep messageWithSessionName:v3];
  [v5 sendMessage:v4];
}

- (void)exitingSleep
{
  v5 = [(PSSGClient *)self comms];
  v3 = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageExitingSleep messageWithSessionName:v3];
  [v5 sendMessage:v4];
}

- (void)resourcesAreStopped:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageStoppedResources messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)resourceRequestsFailed:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourceRequestsFailed messageWithResourceRequest:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)resourcesNoLongerWantedProcessed:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourcesNoLongerWantedProcessed messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)resourcesNoLongerWantedFailed:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourcesNoLongerWantedFailed messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)setupRequestsAreComplete:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetupResourcesCompleted messageWithResourceRequest:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)failedToProcessSetupRequests:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetupResourcesFailed messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)pauseRequestsAreComplete:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePauseResourcesCompleted messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)failedToProcessPauseRequests:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePauseResourcesFailed messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)updateGraphs:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSHUpdateGraphs messageWithGraphData:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (id)requestAllGraphs:(id)a3
{
  v4 = a3;
  [(PSSGClient *)self resetInternalState];
  v5 = [(PSSGClient *)self comms];
  v6 = [(PSSGClient *)self sessionName];
  v7 = [PSSGMessageSHRequestAllGraphs messageWithFilter:v4 sender:v6];

  [v5 sendMessage:v7];
  v8 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self allGraphs];
}

- (id)requestProcessMonitorStats
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  v4 = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestProcessMonitorStats messageWithSessionName:v4];
  [v3 sendMessage:v5];

  v6 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self processMonitorStats];
}

- (id)requestSystemActionStatsStats
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  v4 = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestSystemActionStats messageWithSessionName:v4];
  [v3 sendMessage:v5];

  v6 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self systemActionStats];
}

- (id)requestProcessMonitorEventLog
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  v4 = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestProcessMonitorEventLog messageWithSessionName:v4];
  [v3 sendMessage:v5];

  v6 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self processMonitorEventLog];
}

- (void)notifySystemReplayStarting
{
  v5 = [(PSSGClient *)self comms];
  v3 = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageSystemReplayStarting messageWithSessionName:v3];
  [v5 sendMessage:v4];
}

- (void)notifySystemReplayStopping
{
  v5 = [(PSSGClient *)self comms];
  v3 = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageSystemReplayEnding messageWithSessionName:v3];
  [v5 sendMessage:v4];
}

- (void)updateSystemHealth:(id)a3
{
  v4 = a3;
  [(PSSGClient *)self resetInternalState];
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSHTriggerHealthUpdate messageWithHealthData:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)handlePublishResourceKeysAndStridesMessage:(id)a3
{
  v4 = a3;
  v12 = objc_alloc_init(PSSGContext);
  v5 = [v4 resourceOptions];
  [(PSSGContext *)v12 setKeysWithOptions:v5];

  v6 = MEMORY[0x277CBEB98];
  v7 = [v4 resourceOptions];
  v8 = [v7 allKeys];
  v9 = [v6 setWithArray:v8];
  [(PSSGContext *)v12 setKeys:v9];

  v10 = [(PSSGClient *)self contextMap];
  v11 = [v4 sender];

  [v10 setObject:v12 forKeyedSubscript:v11];
}

- (void)handlePublishResourceStreamsMessage:(id)a3
{
  v9 = a3;
  v4 = [(PSSGClient *)self contextMap];
  v5 = [v9 sender];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    [(PSSGClient *)&v10 handlePublishResourceStreamsMessage:v9];
  }

  v7 = [v9 encodedStreams];
  [v6 setEncodedStreams:v7];

  v8 = [v9 sender];
  [(PSSGClient *)self didReceiveContextForSession:v8];
}

- (void)didReceiveContextForSession:(id)a3
{
  v17 = a3;
  v4 = [(PSSGClient *)self contextMap];
  v5 = [v4 objectForKeyedSubscript:v17];

  v6 = [(PSSGClient *)self resourceKeysPendingContexts];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 keys];
    v9 = [v8 mutableCopy];

    v10 = [(PSSGClient *)self resourceKeysPendingContexts];
    [v9 intersectSet:v10];

    v11 = [(PSSGClient *)self resourceKeysPendingContexts];
    [v11 minusSet:v9];

    v12 = [(PSSGClient *)self delegate];
    [v12 didReceiveContextForSessionProvidingKeys:v9];
  }

  else
  {
    v9 = [(PSSGClient *)self delegate];
    [v9 didReceiveContextForSessionName:v17];
  }

  v13 = [(PSSGClient *)self sessionsPendingContexts];
  [v13 removeObject:v17];

  v14 = [(PSSGClient *)self sessionsPendingContexts];
  if ([v14 count])
  {
    goto LABEL_5;
  }

  v15 = [(PSSGClient *)self resourceKeysPendingContexts];
  v16 = [v15 count];

  if (!v16)
  {
    v14 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_signal(v14);
LABEL_5:
  }
}

- (void)handleResourceAvailabilityUpdates:(id)a3
{
  v4 = a3;
  v6 = [(PSSGClient *)self delegate];
  v5 = [v4 getResourceAvailabilityMap];

  [v6 didReceiveResourceAvailabilityUpdates:v5];
}

- (void)handleResourceRequestWithStridesCompletedMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSSGClient *)self delegate];
  v6 = [v4 request];
  [v5 didReceiveResponseForResourceRequest:v6];

  v7 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v4 request];
  v9 = [v8 resourcesWantedWithStrides];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v20 + 1) + 8 * v13) resourceKey];
        [v7 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [(PSSGClient *)self resourceKeysPendingProduction];
  [v15 minusSet:v7];

  v16 = [(PSSGClient *)self resourceKeysPendingProduction];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_signal(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleResourceRequestsFailedMessage:(id)a3
{
  v3 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v3);
}

- (void)handleResourceRequestWithStridesMessage:(id)a3
{
  v4 = a3;
  v6 = [(PSSGClient *)self delegate];
  v5 = [v4 request];

  [v6 serverRequestedResourcesWithStrides:v5];
}

- (void)handlePublishAllGraphs:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 allGraphs];
  v6 = [v4 dataWithData:v5];
  [(PSSGClient *)self setAllGraphs:v6];

  v7 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)handleReportProcessMonitorStats:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 stats];
  v6 = [v4 dataWithData:v5];
  [(PSSGClient *)self setProcessMonitorStats:v6];

  v7 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)handleReportSystemActionStats:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 stats];
  v6 = [v4 dataWithData:v5];
  [(PSSGClient *)self setSystemActionStats:v6];

  v7 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)handleReportProcessMonitorEventLog:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 log];
  v6 = [v4 dataWithData:v5];
  [(PSSGClient *)self setProcessMonitorEventLog:v6];

  v7 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v7);
}

- (void)publishCurrentGraphs:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePublishCurrentGraphs messageWithGraphs:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (id)fetchCurrentGraphsForAllSessions
{
  [(PSSGClient *)self resetInternalState];
  v3 = [(PSSGClient *)self comms];
  v4 = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageRequestCurrentGraphsForAllSessions messageWithSessionName:v4];
  [v3 sendMessage:v5];

  v6 = [(PSSGClient *)self completionSemaphore];
  v7 = dispatch_time(0, 1000000000);
  v8 = dispatch_semaphore_wait(v6, v7);

  if (v8)
  {
    v9 = [(PSSGClient *)self comms];
    v10 = [(PSSGClient *)self sessionName];
    v11 = [PSSGMessageFlushCurrentGraphsForAllSessions messageWithSessionName:v10];
    [v9 sendMessage:v11];

    v12 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  return [(PSSGClient *)self graphsBySession];
}

- (void)handlePublishCurrentGraphsMessage:(id)a3
{
  v4 = a3;
  v7 = [v4 encodedGraphs];
  v5 = [(PSSGClient *)self graphsBySession];
  v6 = [v4 sender];

  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)handleRequestCurrentGraphsMessage:(id)a3
{
  v3 = [(PSSGClient *)self delegate];
  [v3 serverRequestedCurrentGraphs];
}

- (void)handleCompletedCurrentGraphsRequestMessage:(id)a3
{
  v3 = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(v3);
}

- (void)handleSystemReplayStarting:(id)a3
{
  [(PSSGClient *)self setReplaying:1];
  v4 = [(PSSGClient *)self delegate];
  [v4 systemReplayStarting];
}

- (void)handleSystemReplayEnding:(id)a3
{
  [(PSSGClient *)self setReplaying:0];
  v4 = [(PSSGClient *)self delegate];
  [v4 systemReplayEnding];
}

- (void)handleRequestGraphResubmission:(id)a3
{
  v3 = [(PSSGClient *)self delegate];
  [v3 serverRequestedGraphResubmission];
}

- (void)handleRequestReplayResources:(id)a3
{
  v3 = [(PSSGClient *)self delegate];
  [v3 serverRequestedReplayResources];
}

- (void)handleSetupResourcesMessage:(id)a3
{
  v4 = a3;
  v6 = [(PSSGClient *)self delegate];
  v5 = [v4 request];

  [v6 serverRequestToSetupResources:v5];
}

- (void)handlePauseResourcesMessage:(id)a3
{
  v4 = a3;
  v6 = [(PSSGClient *)self delegate];
  v5 = [v4 getKeys];

  [v6 serverRequestToPauseResources:v5];
}

- (void)setRegistered:(BOOL)a3
{
  v4 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(PSSGClient *)self setStatus:v4];
}

- (void)setPublished:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(PSSGClient *)self setStatus:v5 | v6];
}

- (void)setReplaying:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!v3)
  {
    v6 = 0;
  }

  [(PSSGClient *)self setStatus:v5 | v6];
}

- (void)requestDPTailspinWithReason:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageRequestDPTailspin messageWithSessionName:v5 reason:v4];

  [v7 sendMessage:v6];
}

- (void)resourceAvailabilityHasChangedTo:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetResourceAvailability messageWithKeysAndResourceAvailability:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)requestResourceAvailabilityUpdates:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageRequestResourceAvailabilityUpdates messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (void)stopResourceAvailabilityUpdates:(id)a3
{
  v4 = a3;
  v7 = [(PSSGClient *)self comms];
  v5 = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageStopResourceAvailabilityUpdates messageWithResourceKeys:v4 sender:v5];

  [v7 sendMessage:v6];
}

- (PSSGDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handlePublishResourceStreamsMessage:(char *)a1 .cold.1(char **a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 sender];
  asprintf(a1, "Internal Polaris error: Received streams from %s before keys", [v4 UTF8String]);

  v5 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = [a2 sender];
    *buf = 136315650;
    v13 = "[PSSGClient handlePublishResourceStreamsMessage:]";
    v14 = 1024;
    v15 = 381;
    v16 = 2080;
    v17 = [v6 UTF8String];
    _os_log_impl(&dword_25ECD8000, v5, OS_LOG_TYPE_FAULT, "%s:%d Internal Polaris error: Received streams from %s before keys", buf, 0x1Cu);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    v9 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[PSSGClient handlePublishResourceStreamsMessage:]";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_25ECD8000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = *a1;
  v11 = abort_with_reason();
  [(PSSGMessageBase *)v11 serialize];
}

@end