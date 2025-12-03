@interface PSSGClient
- (BOOL)requestResourcesWithStrides:(id)strides;
- (PSSGDelegate)delegate;
- (id)fetchContextsForSessionNames:(id)names;
- (id)fetchContextsForSessionsProvidingKeys:(id)keys;
- (id)fetchCurrentGraphsForAllSessions;
- (id)requestAllGraphs:(id)graphs;
- (id)requestProcessMonitorEventLog;
- (id)requestProcessMonitorStats;
- (id)requestSystemActionStatsStats;
- (void)deregisterClient;
- (void)didReceiveContextForSession:(id)session;
- (void)enteringSleep;
- (void)exitingSleep;
- (void)failedToProcessPauseRequests:(id)requests;
- (void)failedToProcessSetupRequests:(id)requests;
- (void)handleCompletedCurrentGraphsRequestMessage:(id)message;
- (void)handleDeRegisterClientAck;
- (void)handlePauseResourcesMessage:(id)message;
- (void)handlePublishAllGraphs:(id)graphs;
- (void)handlePublishCurrentGraphsMessage:(id)message;
- (void)handlePublishResourceKeysAndStridesMessage:(id)message;
- (void)handlePublishResourceStreamsMessage:(id)message;
- (void)handleRegisterClientAck;
- (void)handleReportProcessMonitorEventLog:(id)log;
- (void)handleReportProcessMonitorStats:(id)stats;
- (void)handleReportSystemActionStats:(id)stats;
- (void)handleRequestCurrentGraphsMessage:(id)message;
- (void)handleRequestGraphResubmission:(id)resubmission;
- (void)handleRequestReplayResources:(id)resources;
- (void)handleResourceAvailabilityUpdates:(id)updates;
- (void)handleResourceRequestWithStridesCompletedMessage:(id)message;
- (void)handleResourceRequestWithStridesMessage:(id)message;
- (void)handleResourceRequestsFailedMessage:(id)message;
- (void)handleSetupResourcesMessage:(id)message;
- (void)handleSystemReplayEnding:(id)ending;
- (void)handleSystemReplayStarting:(id)starting;
- (void)notifySystemReplayStarting;
- (void)notifySystemReplayStopping;
- (void)pauseRequestsAreComplete:(id)complete;
- (void)publishContext:(id)context;
- (void)publishCurrentGraphs:(id)graphs;
- (void)registerClient;
- (void)requestDPTailspinWithReason:(id)reason;
- (void)requestResourceAvailabilityUpdates:(id)updates;
- (void)resetInternalState;
- (void)resourceAvailabilityHasChangedTo:(id)to;
- (void)resourceRequestCompletedWithStrides:(id)strides;
- (void)resourceRequestsFailed:(id)failed;
- (void)resourcesAreStopped:(id)stopped;
- (void)resourcesNoLongerWantedFailed:(id)failed;
- (void)resourcesNoLongerWantedProcessed:(id)processed;
- (void)setPublished:(BOOL)published;
- (void)setRegistered:(BOOL)registered;
- (void)setReplaying:(BOOL)replaying;
- (void)setupRequestsAreComplete:(id)complete;
- (void)stopResourceAvailabilityUpdates:(id)updates;
- (void)updateGraphs:(id)graphs;
- (void)updateSystemHealth:(id)health;
@end

@implementation PSSGClient

- (void)publishContext:(id)context
{
  contextCopy = context;
  comms = [(PSSGClient *)self comms];
  keysWithOptions = [contextCopy keysWithOptions];
  sessionName = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessagePublishResourceKeysAndStrides messageWithKeysAndStrides:keysWithOptions sender:sessionName];
  [comms sendMessage:v8];

  comms2 = [(PSSGClient *)self comms];
  encodedStreams = [contextCopy encodedStreams];

  sessionName2 = [(PSSGClient *)self sessionName];
  v12 = [PSSGMessagePublishResourceStreams messageWithStreams:encodedStreams sender:sessionName2];
  [comms2 sendMessage:v12];

  [(PSSGClient *)self setPublished:1];
}

- (void)registerClient
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  [comms registerForClient:self];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)deregisterClient
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  [comms deregisterForClient:self];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)handleRegisterClientAck
{
  [(PSSGClient *)self setRegistered:1];
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleDeRegisterClientAck
{
  [(PSSGClient *)self setStatus:0];
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)resetInternalState
{
  v3 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setSessionsPendingContexts:v3];

  v4 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setResourceKeysPendingContexts:v4];

  v5 = [MEMORY[0x277CBEB58] set];
  [(PSSGClient *)self setResourceKeysPendingProduction:v5];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PSSGClient *)self setContextMap:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(PSSGClient *)self setGraphsBySession:dictionary2];

  v8 = dispatch_semaphore_create(0);
  [(PSSGClient *)self setCompletionSemaphore:v8];
}

- (id)fetchContextsForSessionNames:(id)names
{
  namesCopy = names;
  [(PSSGClient *)self resetInternalState];
  sessionsPendingContexts = [(PSSGClient *)self sessionsPendingContexts];
  [sessionsPendingContexts unionSet:namesCopy];

  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessageRequestContextForSessions messageWithSessionNames:namesCopy sender:sessionName];

  [comms sendMessage:v8];
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self contextMap];
}

- (id)fetchContextsForSessionsProvidingKeys:(id)keys
{
  keysCopy = keys;
  [(PSSGClient *)self resetInternalState];
  resourceKeysPendingContexts = [(PSSGClient *)self resourceKeysPendingContexts];
  [resourceKeysPendingContexts unionSet:keysCopy];

  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v8 = [PSSGMessageRequestContextForResourceKeys messageWithResourceKeys:keysCopy sender:sessionName];

  [comms sendMessage:v8];
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self contextMap];
}

- (BOOL)requestResourcesWithStrides:(id)strides
{
  v42 = *MEMORY[0x277D85DE8];
  stridesCopy = strides;
  [(PSSGClient *)self resetInternalState];
  resourceKeysPendingProduction = [(PSSGClient *)self resourceKeysPendingProduction];
  resourcesWanted = [stridesCopy resourcesWanted];
  [resourceKeysPendingProduction unionSet:resourcesWanted];

  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v9 = [PSSGMessageRequestResourcesWithStrides messageWithResourceRequest:stridesCopy sender:sessionName];
  [comms sendMessage:v9];

  resourceKeysPendingProduction2 = [(PSSGClient *)self resourceKeysPendingProduction];
  v11 = [resourceKeysPendingProduction2 count];

  if (v11)
  {
    completionSemaphore = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  resourceKeysPendingProduction3 = [(PSSGClient *)self resourceKeysPendingProduction];
  v14 = [resourceKeysPendingProduction3 count];

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
    v35 = stridesCopy;
    resourcesWantedWithStrides = [stridesCopy resourcesWantedWithStrides];
    v17 = [resourcesWantedWithStrides countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(resourcesWantedWithStrides);
          }

          v21 = *(*(&v37 + 1) + 8 * v20);
          selfCopy = self;
          resourceKeysPendingProduction4 = [(PSSGClient *)self resourceKeysPendingProduction];
          resourceKey = [v21 resourceKey];
          v25 = [resourceKeysPendingProduction4 containsObject:resourceKey];

          if ((v25 & 1) == 0)
          {
            resourceKey2 = [v21 resourceKey];
            [v36 addObject:resourceKey2];

            [v15 addObject:v21];
          }

          ++v20;
          self = selfCopy;
        }

        while (v18 != v20);
        v18 = [resourcesWantedWithStrides countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    [(PSSGResourceRequest *)v33 setResourcesNoLongerWanted:v36];
    [(PSSGResourceRequest *)v33 setResourcesNoLongerWantedWithStrides:v15];
    comms2 = [(PSSGClient *)self comms];
    sessionName2 = [(PSSGClient *)self sessionName];
    v29 = [PSSGMessageRequestResourcesWithStrides messageWithResourceRequest:v33 sender:sessionName2];
    [comms2 sendMessage:v29];

    resourceKeysPendingProduction5 = [(PSSGClient *)self resourceKeysPendingProduction];
    [resourceKeysPendingProduction5 removeAllObjects];

    v14 = v34;
    stridesCopy = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (void)resourceRequestCompletedWithStrides:(id)strides
{
  stridesCopy = strides;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageCompletedResourceRequestWithStrides messageWithResourceRequest:stridesCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)enteringSleep
{
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageEnteringSleep messageWithSessionName:sessionName];
  [comms sendMessage:v4];
}

- (void)exitingSleep
{
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageExitingSleep messageWithSessionName:sessionName];
  [comms sendMessage:v4];
}

- (void)resourcesAreStopped:(id)stopped
{
  stoppedCopy = stopped;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageStoppedResources messageWithResourceKeys:stoppedCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)resourceRequestsFailed:(id)failed
{
  failedCopy = failed;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourceRequestsFailed messageWithResourceRequest:failedCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)resourcesNoLongerWantedProcessed:(id)processed
{
  processedCopy = processed;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourcesNoLongerWantedProcessed messageWithResourceKeys:processedCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)resourcesNoLongerWantedFailed:(id)failed
{
  failedCopy = failed;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageResourcesNoLongerWantedFailed messageWithResourceKeys:failedCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)setupRequestsAreComplete:(id)complete
{
  completeCopy = complete;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetupResourcesCompleted messageWithResourceRequest:completeCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)failedToProcessSetupRequests:(id)requests
{
  requestsCopy = requests;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetupResourcesFailed messageWithResourceKeys:requestsCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)pauseRequestsAreComplete:(id)complete
{
  completeCopy = complete;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePauseResourcesCompleted messageWithResourceKeys:completeCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)failedToProcessPauseRequests:(id)requests
{
  requestsCopy = requests;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePauseResourcesFailed messageWithResourceKeys:requestsCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)updateGraphs:(id)graphs
{
  graphsCopy = graphs;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSHUpdateGraphs messageWithGraphData:graphsCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (id)requestAllGraphs:(id)graphs
{
  graphsCopy = graphs;
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v7 = [PSSGMessageSHRequestAllGraphs messageWithFilter:graphsCopy sender:sessionName];

  [comms sendMessage:v7];
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self allGraphs];
}

- (id)requestProcessMonitorStats
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestProcessMonitorStats messageWithSessionName:sessionName];
  [comms sendMessage:v5];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self processMonitorStats];
}

- (id)requestSystemActionStatsStats
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestSystemActionStats messageWithSessionName:sessionName];
  [comms sendMessage:v5];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self systemActionStats];
}

- (id)requestProcessMonitorEventLog
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageSHRequestProcessMonitorEventLog messageWithSessionName:sessionName];
  [comms sendMessage:v5];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  return [(PSSGClient *)self processMonitorEventLog];
}

- (void)notifySystemReplayStarting
{
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageSystemReplayStarting messageWithSessionName:sessionName];
  [comms sendMessage:v4];
}

- (void)notifySystemReplayStopping
{
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v4 = [PSSGMessageSystemReplayEnding messageWithSessionName:sessionName];
  [comms sendMessage:v4];
}

- (void)updateSystemHealth:(id)health
{
  healthCopy = health;
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSHTriggerHealthUpdate messageWithHealthData:healthCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)handlePublishResourceKeysAndStridesMessage:(id)message
{
  messageCopy = message;
  v12 = objc_alloc_init(PSSGContext);
  resourceOptions = [messageCopy resourceOptions];
  [(PSSGContext *)v12 setKeysWithOptions:resourceOptions];

  v6 = MEMORY[0x277CBEB98];
  resourceOptions2 = [messageCopy resourceOptions];
  allKeys = [resourceOptions2 allKeys];
  v9 = [v6 setWithArray:allKeys];
  [(PSSGContext *)v12 setKeys:v9];

  contextMap = [(PSSGClient *)self contextMap];
  sender = [messageCopy sender];

  [contextMap setObject:v12 forKeyedSubscript:sender];
}

- (void)handlePublishResourceStreamsMessage:(id)message
{
  messageCopy = message;
  contextMap = [(PSSGClient *)self contextMap];
  sender = [messageCopy sender];
  v6 = [contextMap objectForKeyedSubscript:sender];

  if (!v6)
  {
    [(PSSGClient *)&v10 handlePublishResourceStreamsMessage:messageCopy];
  }

  encodedStreams = [messageCopy encodedStreams];
  [v6 setEncodedStreams:encodedStreams];

  sender2 = [messageCopy sender];
  [(PSSGClient *)self didReceiveContextForSession:sender2];
}

- (void)didReceiveContextForSession:(id)session
{
  sessionCopy = session;
  contextMap = [(PSSGClient *)self contextMap];
  v5 = [contextMap objectForKeyedSubscript:sessionCopy];

  resourceKeysPendingContexts = [(PSSGClient *)self resourceKeysPendingContexts];
  v7 = [resourceKeysPendingContexts count];

  if (v7)
  {
    keys = [v5 keys];
    delegate2 = [keys mutableCopy];

    resourceKeysPendingContexts2 = [(PSSGClient *)self resourceKeysPendingContexts];
    [delegate2 intersectSet:resourceKeysPendingContexts2];

    resourceKeysPendingContexts3 = [(PSSGClient *)self resourceKeysPendingContexts];
    [resourceKeysPendingContexts3 minusSet:delegate2];

    delegate = [(PSSGClient *)self delegate];
    [delegate didReceiveContextForSessionProvidingKeys:delegate2];
  }

  else
  {
    delegate2 = [(PSSGClient *)self delegate];
    [delegate2 didReceiveContextForSessionName:sessionCopy];
  }

  sessionsPendingContexts = [(PSSGClient *)self sessionsPendingContexts];
  [sessionsPendingContexts removeObject:sessionCopy];

  sessionsPendingContexts2 = [(PSSGClient *)self sessionsPendingContexts];
  if ([sessionsPendingContexts2 count])
  {
    goto LABEL_5;
  }

  resourceKeysPendingContexts4 = [(PSSGClient *)self resourceKeysPendingContexts];
  v16 = [resourceKeysPendingContexts4 count];

  if (!v16)
  {
    sessionsPendingContexts2 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_signal(sessionsPendingContexts2);
LABEL_5:
  }
}

- (void)handleResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  delegate = [(PSSGClient *)self delegate];
  getResourceAvailabilityMap = [updatesCopy getResourceAvailabilityMap];

  [delegate didReceiveResourceAvailabilityUpdates:getResourceAvailabilityMap];
}

- (void)handleResourceRequestWithStridesCompletedMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  delegate = [(PSSGClient *)self delegate];
  request = [messageCopy request];
  [delegate didReceiveResponseForResourceRequest:request];

  v7 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  request2 = [messageCopy request];
  resourcesWantedWithStrides = [request2 resourcesWantedWithStrides];

  v10 = [resourcesWantedWithStrides countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(resourcesWantedWithStrides);
        }

        resourceKey = [*(*(&v20 + 1) + 8 * v13) resourceKey];
        [v7 addObject:resourceKey];

        ++v13;
      }

      while (v11 != v13);
      v11 = [resourcesWantedWithStrides countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  resourceKeysPendingProduction = [(PSSGClient *)self resourceKeysPendingProduction];
  [resourceKeysPendingProduction minusSet:v7];

  resourceKeysPendingProduction2 = [(PSSGClient *)self resourceKeysPendingProduction];
  v17 = [resourceKeysPendingProduction2 count];

  if (!v17)
  {
    completionSemaphore = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_signal(completionSemaphore);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleResourceRequestsFailedMessage:(id)message
{
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleResourceRequestWithStridesMessage:(id)message
{
  messageCopy = message;
  delegate = [(PSSGClient *)self delegate];
  request = [messageCopy request];

  [delegate serverRequestedResourcesWithStrides:request];
}

- (void)handlePublishAllGraphs:(id)graphs
{
  v4 = MEMORY[0x277CBEA90];
  allGraphs = [graphs allGraphs];
  v6 = [v4 dataWithData:allGraphs];
  [(PSSGClient *)self setAllGraphs:v6];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleReportProcessMonitorStats:(id)stats
{
  v4 = MEMORY[0x277CBEA90];
  stats = [stats stats];
  v6 = [v4 dataWithData:stats];
  [(PSSGClient *)self setProcessMonitorStats:v6];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleReportSystemActionStats:(id)stats
{
  v4 = MEMORY[0x277CBEA90];
  stats = [stats stats];
  v6 = [v4 dataWithData:stats];
  [(PSSGClient *)self setSystemActionStats:v6];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleReportProcessMonitorEventLog:(id)log
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [log log];
  v6 = [v4 dataWithData:v5];
  [(PSSGClient *)self setProcessMonitorEventLog:v6];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)publishCurrentGraphs:(id)graphs
{
  graphsCopy = graphs;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessagePublishCurrentGraphs messageWithGraphs:graphsCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (id)fetchCurrentGraphsForAllSessions
{
  [(PSSGClient *)self resetInternalState];
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v5 = [PSSGMessageRequestCurrentGraphsForAllSessions messageWithSessionName:sessionName];
  [comms sendMessage:v5];

  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  v7 = dispatch_time(0, 1000000000);
  v8 = dispatch_semaphore_wait(completionSemaphore, v7);

  if (v8)
  {
    comms2 = [(PSSGClient *)self comms];
    sessionName2 = [(PSSGClient *)self sessionName];
    v11 = [PSSGMessageFlushCurrentGraphsForAllSessions messageWithSessionName:sessionName2];
    [comms2 sendMessage:v11];

    completionSemaphore2 = [(PSSGClient *)self completionSemaphore];
    dispatch_semaphore_wait(completionSemaphore2, 0xFFFFFFFFFFFFFFFFLL);
  }

  return [(PSSGClient *)self graphsBySession];
}

- (void)handlePublishCurrentGraphsMessage:(id)message
{
  messageCopy = message;
  encodedGraphs = [messageCopy encodedGraphs];
  graphsBySession = [(PSSGClient *)self graphsBySession];
  sender = [messageCopy sender];

  [graphsBySession setObject:encodedGraphs forKeyedSubscript:sender];
}

- (void)handleRequestCurrentGraphsMessage:(id)message
{
  delegate = [(PSSGClient *)self delegate];
  [delegate serverRequestedCurrentGraphs];
}

- (void)handleCompletedCurrentGraphsRequestMessage:(id)message
{
  completionSemaphore = [(PSSGClient *)self completionSemaphore];
  dispatch_semaphore_signal(completionSemaphore);
}

- (void)handleSystemReplayStarting:(id)starting
{
  [(PSSGClient *)self setReplaying:1];
  delegate = [(PSSGClient *)self delegate];
  [delegate systemReplayStarting];
}

- (void)handleSystemReplayEnding:(id)ending
{
  [(PSSGClient *)self setReplaying:0];
  delegate = [(PSSGClient *)self delegate];
  [delegate systemReplayEnding];
}

- (void)handleRequestGraphResubmission:(id)resubmission
{
  delegate = [(PSSGClient *)self delegate];
  [delegate serverRequestedGraphResubmission];
}

- (void)handleRequestReplayResources:(id)resources
{
  delegate = [(PSSGClient *)self delegate];
  [delegate serverRequestedReplayResources];
}

- (void)handleSetupResourcesMessage:(id)message
{
  messageCopy = message;
  delegate = [(PSSGClient *)self delegate];
  request = [messageCopy request];

  [delegate serverRequestToSetupResources:request];
}

- (void)handlePauseResourcesMessage:(id)message
{
  messageCopy = message;
  delegate = [(PSSGClient *)self delegate];
  getKeys = [messageCopy getKeys];

  [delegate serverRequestToPauseResources:getKeys];
}

- (void)setRegistered:(BOOL)registered
{
  v4 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFELL | registered;

  [(PSSGClient *)self setStatus:v4];
}

- (void)setPublished:(BOOL)published
{
  publishedCopy = published;
  v5 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!publishedCopy)
  {
    v6 = 0;
  }

  [(PSSGClient *)self setStatus:v5 | v6];
}

- (void)setReplaying:(BOOL)replaying
{
  replayingCopy = replaying;
  v5 = [(PSSGClient *)self status]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!replayingCopy)
  {
    v6 = 0;
  }

  [(PSSGClient *)self setStatus:v5 | v6];
}

- (void)requestDPTailspinWithReason:(id)reason
{
  reasonCopy = reason;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageRequestDPTailspin messageWithSessionName:sessionName reason:reasonCopy];

  [comms sendMessage:v6];
}

- (void)resourceAvailabilityHasChangedTo:(id)to
{
  toCopy = to;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageSetResourceAvailability messageWithKeysAndResourceAvailability:toCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)requestResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageRequestResourceAvailabilityUpdates messageWithResourceKeys:updatesCopy sender:sessionName];

  [comms sendMessage:v6];
}

- (void)stopResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  comms = [(PSSGClient *)self comms];
  sessionName = [(PSSGClient *)self sessionName];
  v6 = [PSSGMessageStopResourceAvailabilityUpdates messageWithResourceKeys:updatesCopy sender:sessionName];

  [comms sendMessage:v6];
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