@interface W5Client
+ (id)sharedClient;
- (BOOL)registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration error:(id *)error;
- (BOOL)setDebugConfiguration:(id)configuration peer:(id)peer error:(id *)error;
- (BOOL)startMonitoringFaultEventsForPeer:(id)peer eventHandler:(id)handler error:(id *)error;
- (BOOL)stopMonitoringFaultEventsForPeer:(id)peer error:(id *)error;
- (BOOL)submitFaultEvent:(id)event error:(id *)error;
- (BOOL)unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration error:(id *)error;
- (W5Client)init;
- (id)__collectBusyFallbackLogsWithReason:(id)reason compress:(BOOL)compress;
- (id)__collectJetsamFallbackLogsWithReason:(id)reason compress:(BOOL)compress;
- (id)__mostRecentInDirectories:(id)directories include:(id)include exclude:(id)exclude maxAge:(double)age;
- (id)collectLogs:(id)logs configuration:(id)configuration update:(id)update receipts:(id *)receipts error:(id *)error;
- (id)collectLogs:(id)logs configuration:(id)configuration update:(id)update reply:(id)reply;
- (id)collectLogsDiagnosticMode:(id)mode update:(id)update receipts:(id *)receipts error:(id *)error;
- (id)collectLogsDiagnosticMode:(id)mode update:(id)update reply:(id)reply;
- (id)faultEventCacheForPeer:(id)peer error:(id *)error;
- (id)localPeer;
- (id)queryDebugConfigurationForPeer:(id)peer error:(id *)error;
- (id)queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply;
- (id)queryStatusForPeer:(id)peer error:(id *)error;
- (id)runDiagnostics:(id)diagnostics configuration:(id)configuration update:(id)update error:(id *)error;
- (id)runDiagnostics:(id)diagnostics configuration:(id)configuration update:(id)update reply:(id)reply;
- (id)runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration reply:(id)reply;
- (id)runWiFiPerformanceLoggingWithConfiguration:(id)configuration error:(id *)error;
- (id)runWiFiPerformanceLoggingWithConfiguration:(id)configuration reply:(id)reply;
- (id)runWiFiSnifferOnChannel:(id)channel duration:(double)duration peer:(id)peer error:(id *)error;
- (id)runWiFiSnifferOnChannel:(id)channel duration:(double)duration peer:(id)peer reply:(id)reply;
- (id)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer reply:(id)reply;
- (id)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer snifferErrors:(id *)errors error:(id *)error;
- (id)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer error:(id *)error;
- (id)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer reply:(id)reply;
- (id)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply;
- (id)startPeerDiscoveryWithConfiguration:(id)configuration reply:(id)reply;
- (id)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply;
- (void)__cancelAllRequestsAndReply:(id)reply;
- (void)__cancelRequestWithUUID:(id)d reply:(id)reply;
- (void)__log:(id)__log timestamp:(BOOL)timestamp reply:(id)reply;
- (void)__logsCollectedWithTemporaryURL:(id)l outputURL:(id)rL keepParent:(BOOL)parent compress:(BOOL)compress reply:(id)reply;
- (void)__purgeFilesInDirectory:(id)directory matching:(id)matching maxAge:(unint64_t)age maxCount:(unint64_t)count;
- (void)__queryLocalPeerAndReply:(id)reply;
- (void)__startMonitoringEvents:(id)events reply:(id)reply;
- (void)__stopMonitoringEvents:(id)events reply:(id)reply;
- (void)associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply;
- (void)cancelAllRequests;
- (void)cancelRequestWithUUID:(id)d;
- (void)cancelRequestWithUUID:(id)d peer:(id)peer type:(int64_t)type reply:(id)reply;
- (void)dealloc;
- (void)listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply;
- (void)queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply;
- (void)queryDebugConfigurationForPeer:(id)peer reply:(id)reply;
- (void)queryRegisteredDiagnosticsPeersWithReply:(id)reply;
- (void)queryStatusForPeer:(id)peer reply:(id)reply;
- (void)receivedEvent:(id)event;
- (void)receivedPeerDiscoveryEvent:(id)event;
- (void)requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply;
- (void)setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply;
- (void)setEventCallback:(id)callback;
- (void)startMonitoringEvents:(id)events;
- (void)startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply;
- (void)stopMonitoringEvents:(id)events;
- (void)stopPeerDiscoveryWithUUID:(id)d;
@end

@implementation W5Client

+ (id)sharedClient
{
  if (qword_280D9E7E0 != -1)
  {
    dispatch_once(&qword_280D9E7E0, &__block_literal_global_2);
  }

  return _MergedGlobals_2;
}

W5Client *__24__W5Client_sharedClient__block_invoke()
{
  result = objc_alloc_init(W5Client);
  _MergedGlobals_2 = result;
  return result;
}

- (W5Client)init
{
  v16.receiver = self;
  v16.super_class = W5Client;
  v2 = [(W5Client *)&v16 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.wifivelocity.client.%@", objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78], "UUID"), "UUIDString")), "UTF8String"];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  v2->_queue = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  dispatch_queue_set_specific(v5, &v2->_queue, 1, 0);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2->_mutableEventIDs = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2->_mutableUUIDs = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2->_mutableFaultEventMonitoringPeers = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2->_mutableEventCallbackMap = v9;
  if (v9 && (v10 = objc_alloc_init(MEMORY[0x277CBEB38]), (v2->_mutablePeerEventCallbackMap = v10) != 0) && (v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.wifivelocityd" options:4096], (v2->_conn = v11) != 0))
  {
    [(NSXPCConnection *)v2->_conn setRemoteObjectInterface:W5XPCRequestDelegateInterface()];
    [(NSXPCConnection *)v2->_conn setExportedInterface:W5XPCEventDelegateInterface()];
    dispatch_set_context(v2->_queue, v2);
    queue = v2->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __16__W5Client_init__block_invoke;
    v15[3] = &unk_279ECE1E0;
    v15[4] = queue;
    [(NSXPCConnection *)v2->_conn setInterruptionHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __16__W5Client_init__block_invoke_13;
    v14[3] = &unk_279ECE1E0;
    v14[4] = queue;
    [(NSXPCConnection *)v2->_conn setInvalidationHandler:v14];
    [(NSXPCConnection *)v2->_conn resume];
  }

  else
  {
LABEL_11:

    return 0;
  }

  return v2;
}

void __16__W5Client_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __16__W5Client_init__block_invoke_2;
  block[3] = &unk_279ECE1E0;
  block[4] = v1;
  dispatch_async(v1, block);
}

void __16__W5Client_init__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315650;
    v21 = "[W5Client init]_block_invoke_2";
    v22 = 2080;
    v23 = "W5Client.m";
    v24 = 1024;
    v25 = 94;
    LODWORD(v14) = 28;
    v13 = &v20;
    _os_log_send_and_compose_impl();
  }

  context = dispatch_get_context(*(a1 + 32));
  if (context)
  {
    v5 = context;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v6 - *(v5 + 3) >= 10.0)
    {
      *(v5 + 3) = v6;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = *(v5 + 8);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v5 startMonitoringFaultEventsForPeer:*(*(&v15 + 1) + 8 * i) eventHandler:objc_msgSend(*(v5 + 6) error:{"objectForKeyedSubscript:", objc_msgSend(v5, "__eventCallbackSignatureForEventID:peer:", 38, *(*(&v15 + 1) + 8 * i), v13, v14)), 0}];
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      if ([*(v5 + 4) count])
      {
        [v5 __startMonitoringEvents:objc_msgSend(*(v5 + 4) reply:{"copy"), 0}];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
}

void __16__W5Client_init__block_invoke_2_14()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v0);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_conn setInvalidationHandler:0];
  [(NSXPCConnection *)self->_conn setInterruptionHandler:0];
  [(NSXPCConnection *)self->_conn invalidate];

  queue = self->_queue;
  if (queue)
  {
    label = dispatch_queue_get_label(0);
    v5 = dispatch_queue_get_label(queue);
    if (label && v5 && !strcmp(label, v5))
    {
      block[10] = MEMORY[0x277D85DD0];
      block[11] = 3221225472;
      block[12] = __19__W5Client_dealloc__block_invoke;
      block[13] = &unk_279ECE1E0;
      block[14] = self;
      block[5] = MEMORY[0x277D85DD0];
      block[6] = 3221225472;
      block[7] = __19__W5Client_dealloc__block_invoke_2;
      block[8] = &unk_279ECE1E0;
      block[9] = self;
      dispatch_set_context(queue, 0);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __19__W5Client_dealloc__block_invoke_3;
      block[3] = &unk_279ECE1E0;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }

  v6 = self->_queue;
  if (v6)
  {
    dispatch_release(v6);
  }

  v7.receiver = self;
  v7.super_class = W5Client;
  [(W5Client *)&v7 dealloc];
}

void __19__W5Client_dealloc__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  dispatch_set_context(*(*(a1 + 32) + 16), 0);
  objc_autoreleasePoolPop(v2);
}

- (void)setEventCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_eventCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__W5Client_setEventCallback___block_invoke;
    v6[3] = &unk_279ECE208;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

void __29__W5Client_setEventCallback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  *(*(a1 + 32) + 72) = [*(a1 + 40) copy];

  objc_autoreleasePoolPop(v2);
}

- (void)__startMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[4] = events;
  block[5] = self;
  block[6] = reply;
  dispatch_async(queue, block);
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count] && !objc_msgSend(*(*(a1 + 40) + 32), "count") && !objc_msgSend(*(*(a1 + 40) + 40), "count"))
  {
    [*(*(a1 + 40) + 8) setExportedObject:?];
  }

  [*(*(a1 + 40) + 32) addObjectsFromArray:*(a1 + 32)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(v4 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_2;
  v12[3] = &unk_279ECE230;
  v6 = *(a1 + 32);
  v12[4] = v4;
  v12[5] = v6;
  v12[6] = v3;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_5;
  v9[3] = &unk_279ECE230;
  v8 = *(a1 + 32);
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = *(a1 + 48);
  [v7 startMonitoringEvents:v8.i64[0] reply:v9];
  objc_autoreleasePoolPop(v2);
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_2(int8x16_t *a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 16);
  v5[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_3;
  v5[3] = &unk_279ECE348;
  v6 = v2;
  v4 = a1[3].i64[0];
  v7 = a2;
  v8 = v4;
  dispatch_async(v3, v5);
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 40) + 32) removeObjectIdenticalTo:*(*(&v12 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (![*(*(a1 + 40) + 32) count] && !objc_msgSend(*(*(a1 + 40) + 40), "count"))
  {
    [*(*(a1 + 40) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_4;
  v10[3] = &unk_279ECE208;
  v11 = *(a1 + 48);
  dispatch_async(global_queue, v10);
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_5(int8x16_t *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 16);
  v4[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_6;
  v4[3] = &unk_279ECE348;
  v4[4] = a2;
  v5 = v2;
  v6 = a1[3].i64[0];
  dispatch_async(v3, v4);
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_6(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = a1[5];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1[6] + 32) removeObjectIdenticalTo:*(*(&v16 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v5);
    }

    if (![*(a1[6] + 32) count] && !objc_msgSend(*(a1[6] + 40), "count"))
    {
      [*(a1[6] + 8) setExportedObject:0];
    }

    OSLog = W5GetOSLog();
    v9 = os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT);
    v10 = a1[4];
    if (v9)
    {
      v11 = a1[5];
      v20 = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v10;
      _os_log_send_and_compose_impl();
      v10 = a1[4];
    }
  }

  else
  {
    v10 = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__W5Client___startMonitoringEvents_reply___block_invoke_20;
  block[3] = &unk_279ECE208;
  v13 = a1[7];
  block[4] = v10;
  block[5] = v13;
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x277D85DE8];
}

void __42__W5Client___startMonitoringEvents_reply___block_invoke_20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)startMonitoringEvents:(id)events
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__W5Client_startMonitoringEvents___block_invoke;
  v8[3] = &unk_279ECE258;
  v8[4] = v5;
  [(W5Client *)self __startMonitoringEvents:events reply:v8];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v10 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)__stopMonitoringEvents:(id)events reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[5] = events;
  block[6] = reply;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__W5Client___stopMonitoringEvents_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke_2;
  v7[3] = &unk_279ECE280;
  v7[4] = *(a1 + 48);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke_4;
  v5[3] = &unk_279ECE230;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 stopMonitoringEvents:v6 reply:v5];
  objc_autoreleasePoolPop(v2);
}

void __41__W5Client___stopMonitoringEvents_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __41__W5Client___stopMonitoringEvents_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __41__W5Client___stopMonitoringEvents_reply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke_5;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __41__W5Client___stopMonitoringEvents_reply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 32) removeObjectsInArray:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__W5Client___stopMonitoringEvents_reply___block_invoke_6;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __41__W5Client___stopMonitoringEvents_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)stopMonitoringEvents:(id)events
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__W5Client_stopMonitoringEvents___block_invoke;
  v8[3] = &unk_279ECE258;
  v8[4] = v5;
  [(W5Client *)self __stopMonitoringEvents:events reply:v8];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v10 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)__queryLocalPeerAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__W5Client___queryLocalPeerAndReply___block_invoke;
  v4[3] = &unk_279ECE208;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

void __37__W5Client___queryLocalPeerAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__W5Client___queryLocalPeerAndReply___block_invoke_2;
  v6[3] = &unk_279ECE280;
  v6[4] = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__W5Client___queryLocalPeerAndReply___block_invoke_4;
  v5[3] = &unk_279ECE2D0;
  v5[4] = *(a1 + 40);
  [v4 queryLocalPeerAndReply:v5];
  objc_autoreleasePoolPop(v2);
}

void __37__W5Client___queryLocalPeerAndReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__W5Client___queryLocalPeerAndReply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __37__W5Client___queryLocalPeerAndReply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __37__W5Client___queryLocalPeerAndReply___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__W5Client___queryLocalPeerAndReply___block_invoke_5;
  block[3] = &unk_279ECE2A8;
  v7 = *(a1 + 32);
  block[5] = a3;
  block[6] = v7;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __37__W5Client___queryLocalPeerAndReply___block_invoke_5(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)localPeer
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __21__W5Client_localPeer__block_invoke;
  v9[3] = &unk_279ECE2F8;
  v9[4] = v3;
  v9[5] = &v10;
  [(W5Client *)self __queryLocalPeerAndReply:v9];
  v4 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v3, v4) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v17 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v5 = v11[5];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

intptr_t __21__W5Client_localPeer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = [a3 copy];
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)queryStatusForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[5] = peer;
  block[6] = reply;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 32) count] && !objc_msgSend(*(a1[4] + 40), "count"))
  {
    [*(a1[4] + 8) setExportedObject:?];
  }

  v3 = a1[4];
  v4 = *(v3 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_2;
  v10[3] = &unk_279ECE320;
  v5 = a1[6];
  v10[4] = v3;
  v10[5] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_5;
  v9[3] = &unk_279ECE370;
  v7 = a1[5];
  v8 = a1[6];
  v9[4] = a1[4];
  v9[5] = v8;
  [v6 queryStatusForPeer:v7 reply:v9];
  objc_autoreleasePoolPop(v2);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_3;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v5 = *(a1 + 40);
  v6[4] = v3;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = v5;
  dispatch_async(v4, v6);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__W5Client_queryStatusForPeer_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __37__W5Client_queryStatusForPeer_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)queryStatusForPeer:(id)peer error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__W5Client_queryStatusForPeer_error___block_invoke;
  v15[3] = &unk_279ECE398;
  v15[6] = &v16;
  v15[7] = &v20;
  v15[8] = &v26;
  v15[4] = self;
  v15[5] = v7;
  [(W5Client *)self queryStatusForPeer:peer reply:v15];
  v8 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v7, v8) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v33 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  objc_sync_enter(self);
  if (*(v17 + 24) == 1)
  {
    v9 = v21[5];
    v10 = v27[5];
  }

  else
  {
    *(v17 + 24) = 1;
  }

  objc_sync_exit(self);
  if (error)
  {
    v11 = v21[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v27[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

intptr_t __37__W5Client_queryStatusForPeer_error___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a1[4];
  objc_sync_enter(v6);
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[7] + 8) + 40) = [a2 copy];
    *(*(a1[8] + 8) + 40) = [a3 copy];
    *(*(a1[6] + 8) + 24) = 1;
  }

  objc_sync_exit(v6);
  v7 = a1[5];

  return dispatch_semaphore_signal(v7);
}

- (void)queryDatabaseForPeer:(id)peer fetch:(id)fetch reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke;
  v6[3] = &unk_279ECE348;
  v6[4] = fetch;
  v6[5] = self;
  v6[6] = peer;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

void __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setResultType:2];
  v3 = *(*(a1 + 40) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_2;
  v8[3] = &unk_279ECE280;
  v8[4] = *(a1 + 56);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_4;
  v7[3] = &unk_279ECE3C0;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 56);
  [v4 queryDatabaseForPeer:v6 fetch:v5 reply:v7];
  objc_autoreleasePoolPop(v2);
}

void __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_5;
  block[3] = &unk_279ECE2A8;
  v7 = *(a1 + 32);
  block[5] = a3;
  block[6] = v7;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __45__W5Client_queryDatabaseForPeer_fetch_reply___block_invoke_5(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)requestFileFromPeer:(id)peer remoteFilePath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke;
  v6[3] = &unk_279ECE348;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = path;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 40) count] && !objc_msgSend(*(a1[4] + 32), "count"))
  {
    [*(a1[4] + 8) setExportedObject:?];
  }

  v3 = a1[4];
  v4 = *(v3 + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_2;
  v11[3] = &unk_279ECE320;
  v5 = a1[7];
  v11[4] = v3;
  v11[5] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v7 = a1[5];
  v8 = a1[6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_5;
  v10[3] = &unk_279ECE610;
  v9 = a1[7];
  v10[4] = a1[4];
  v10[5] = v9;
  [v6 requestFileFromPeer:v7 remoteFilePath:v8 reply:v10];
  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_3;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v5 = *(a1 + 40);
  v6[4] = v3;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = v5;
  dispatch_async(v4, v6);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_requestFileFromPeer_remoteFilePath_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)listFilesFromPeer:(id)peer remoteDirPath:(id)path reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke;
  v6[3] = &unk_279ECE348;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = path;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 40) count] && !objc_msgSend(*(a1[4] + 32), "count"))
  {
    [*(a1[4] + 8) setExportedObject:?];
  }

  v3 = a1[4];
  v4 = *(v3 + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_2;
  v11[3] = &unk_279ECE320;
  v5 = a1[7];
  v11[4] = v3;
  v11[5] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v7 = a1[5];
  v8 = a1[6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_5;
  v10[3] = &unk_279ECE3E8;
  v9 = a1[7];
  v10[4] = a1[4];
  v10[5] = v9;
  [v6 listFilesFromPeer:v7 remoteDirPath:v8 reply:v10];
  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_3;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v5 = *(a1 + 40);
  v6[4] = v3;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = v5;
  dispatch_async(v4, v6);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_listFilesFromPeer_remoteDirPath_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)queryDebugConfigurationForPeer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[5] = peer;
  block[6] = reply;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[4] + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_2;
  v7[3] = &unk_279ECE280;
  v7[4] = a1[6];
  v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_4;
  v6[3] = &unk_279ECE410;
  v5 = a1[5];
  v6[4] = a1[6];
  [v4 queryDebugConfigurationForPeer:v5 reply:v6];
  objc_autoreleasePoolPop(v2);
}

void __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_5;
  block[3] = &unk_279ECE2A8;
  v7 = *(a1 + 32);
  block[5] = a3;
  block[6] = v7;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __49__W5Client_queryDebugConfigurationForPeer_reply___block_invoke_5(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)queryDebugConfigurationForPeer:(id)peer error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__W5Client_queryDebugConfigurationForPeer_error___block_invoke;
  v15[3] = &unk_279ECE438;
  v15[5] = &v16;
  v15[6] = &v22;
  v15[4] = v7;
  [(W5Client *)self queryDebugConfigurationForPeer:peer reply:v15];
  v8 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v7, v8) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v29 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v9 = v17[5];
  v10 = v23[5];
  if (error)
  {
    v11 = v17[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

intptr_t __49__W5Client_queryDebugConfigurationForPeer_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (void)setDebugConfiguration:(id)configuration peer:(id)peer reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__W5Client_setDebugConfiguration_peer_reply___block_invoke;
  v6[3] = &unk_279ECE348;
  v6[4] = self;
  v6[5] = configuration;
  v6[6] = peer;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

void __45__W5Client_setDebugConfiguration_peer_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[4] + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_2;
  v8[3] = &unk_279ECE280;
  v8[4] = a1[7];
  v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
  v5 = a1[5];
  v6 = a1[6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_4;
  v7[3] = &unk_279ECE280;
  v7[4] = a1[7];
  [v4 setDebugConfiguration:v5 peer:v6 reply:v7];
  objc_autoreleasePoolPop(v2);
}

void __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_5;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __45__W5Client_setDebugConfiguration_peer_reply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)setDebugConfiguration:(id)configuration peer:(id)peer error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__W5Client_setDebugConfiguration_peer_error___block_invoke;
  v17[3] = &unk_279ECE460;
  v17[4] = v9;
  v17[5] = &v18;
  [(W5Client *)self setDebugConfiguration:configuration peer:peer reply:v17];
  v10 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v9, v10) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v25 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v11 = v19[5];
  v12 = v19;
  v13 = v19[5];
  if (error && v13)
  {
    *error = v13;
    v13 = v12[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

intptr_t __45__W5Client_setDebugConfiguration_peer_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (id)runDiagnostics:(id)diagnostics configuration:(id)configuration update:(id)update reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke;
  v14[3] = &unk_279ECE6B0;
  v14[4] = self;
  v14[5] = uUID;
  v14[8] = update;
  v14[9] = reply;
  v14[6] = configuration;
  v14[7] = diagnostics;
  dispatch_async(queue, v14);
  return uUID;
}

void __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  if (v4)
  {
    [*(*(a1 + 32) + 48) setObject:v4 forKeyedSubscript:{objc_msgSend(*(a1 + 40), "UUIDString")}];
    if (![*(a1 + 48) objectForKeyedSubscript:@"IncludeEvents"])
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = [v5 mutableCopy];
      }

      else
      {
        v6 = [MEMORY[0x277CBEB38] dictionary];
      }

      v7 = v6;
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IncludeEvents"];
      v3 = [v7 copy];
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 32) + 8);
  v11[1] = 3221225472;
  v11[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_2;
  v11[3] = &unk_279ECE230;
  v12 = v8;
  v13 = *(a1 + 72);
  v10 = [v9 remoteObjectProxyWithErrorHandler:v11];
  [v10 runDiagnostics:*(a1 + 56) configuration:v3 uuid:MEMORY[0x277D85DD0] reply:{3221225472, __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_5, &unk_279ECE488, *(a1 + 32), *(a1 + 40), *(a1 + 72)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_6;
  block[3] = &unk_279ECE7C0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __54__W5Client_runDiagnostics_configuration_update_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)runDiagnostics:(id)diagnostics configuration:(id)configuration update:(id)update error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v11 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__W5Client_runDiagnostics_configuration_update_error___block_invoke;
  v19[3] = &unk_279ECE4B0;
  v19[5] = &v20;
  v19[6] = &v26;
  v19[4] = v11;
  [(W5Client *)self runDiagnostics:diagnostics configuration:configuration update:update reply:v19];
  v12 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v33 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v13 = v21[5];
  v14 = v27[5];
  if (error)
  {
    v15 = v21[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v27[5];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

intptr_t __54__W5Client_runDiagnostics_configuration_update_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)runDiagnosticsForPeer:(id)peer diagnostics:(id)diagnostics configuration:(id)configuration reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke;
  v14[3] = &unk_279ECE4D8;
  v14[4] = self;
  v14[5] = uUID;
  v14[6] = peer;
  v14[7] = diagnostics;
  v14[8] = configuration;
  v14[9] = reply;
  dispatch_async(queue, v14);
  return uUID;
}

void __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_2;
  v6[3] = &unk_279ECE230;
  v7 = v3;
  v8 = *(a1 + 72);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 runDiagnosticsForPeer:*(a1 + 48) diagnostics:*(a1 + 56) configuration:*(a1 + 64) uuid:MEMORY[0x277D85DD0] reply:{3221225472, __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_5, &unk_279ECE488, *(a1 + 32), *(a1 + 40), *(a1 + 72)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_6;
  block[3] = &unk_279ECE7C0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __66__W5Client_runDiagnosticsForPeer_diagnostics_configuration_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)registerRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke;
  block[3] = &unk_279ECE1E0;
  block[4] = self;
  dispatch_async(queue, block);
  conn = self->_conn;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_2;
  v19[3] = &unk_279ECE500;
  v19[4] = &v21;
  v11 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_3;
  v18[3] = &unk_279ECE500;
  v18[4] = &v21;
  [v11 registerRemoteDiagnosticEventsForPeer:peer configuration:configuration reply:v18];
  v12 = v22[5];
  v13 = v22[5];
  if (v13)
  {
    v14 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_4;
    v17[3] = &unk_279ECE1E0;
    v17[4] = self;
    dispatch_async(v14, v17);
    v13 = v22[5];
    if (error)
    {
      *error = v13;
    }
  }

  v15 = v13 == 0;
  _Block_object_dispose(&v21, 8);
  return v15;
}

void __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __70__W5Client_registerRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)unregisterRemoteDiagnosticEventsForPeer:(id)peer configuration:(id)configuration error:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke;
  block[3] = &unk_279ECE1E0;
  block[4] = self;
  dispatch_async(queue, block);
  conn = self->_conn;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_2;
  v19[3] = &unk_279ECE500;
  v19[4] = &v21;
  v11 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_3;
  v18[3] = &unk_279ECE500;
  v18[4] = &v21;
  [v11 unregisterRemoteDiagnosticEventsForPeer:peer configuration:configuration reply:v18];
  v12 = v22[5];
  v13 = v22[5];
  if (v13)
  {
    v14 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_4;
    v17[3] = &unk_279ECE1E0;
    v17[4] = self;
    dispatch_async(v14, v17);
    v13 = v22[5];
    if (error)
    {
      *error = v13;
    }
  }

  v15 = v13 == 0;
  _Block_object_dispose(&v21, 8);
  return v15;
}

void __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __72__W5Client_unregisterRemoteDiagnosticEventsForPeer_configuration_error___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)queryRegisteredDiagnosticsPeersWithReply:(id)reply
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke;
  v4[3] = &unk_279ECE208;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

void __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_2;
  v6[3] = &unk_279ECE280;
  v6[4] = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_4;
  v5[3] = &unk_279ECE3C0;
  v5[4] = *(a1 + 40);
  [v4 queryRegisteredDiagnosticsPeersWithReply:v5];
  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_5;
  block[3] = &unk_279ECE2A8;
  v7 = *(a1 + 32);
  block[5] = a3;
  block[6] = v7;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __53__W5Client_queryRegisteredDiagnosticsPeersWithReply___block_invoke_5(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)startDiagnosticsModeWithConfiguration:(id)configuration reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke;
  v10[3] = &unk_279ECE348;
  v10[4] = self;
  v10[5] = uUID;
  v10[6] = configuration;
  v10[7] = reply;
  dispatch_async(queue, v10);
  return uUID;
}

void __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 32) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v10[1] = 3221225472;
  v10[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_2;
  v10[3] = &unk_279ECE230;
  v11 = v3;
  v12 = *(a1 + 56);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_5;
  v7[3] = &unk_279ECE528;
  v8 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v5 startDiagnosticsModeWithConfiguration:v6 reply:v7];
  objc_autoreleasePoolPop(v2);
}

__n128 __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_6;
  block[3] = &unk_279ECE7C0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __56__W5Client_startDiagnosticsModeWithConfiguration_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)stopDiagnosticsModeWithUUID:(id)d info:(id)info reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke;
  block[3] = &unk_279ECE7C0;
  block[4] = self;
  block[5] = uUID;
  block[7] = info;
  block[8] = reply;
  block[6] = d;
  dispatch_async(queue, block);
  return d;
}

void __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 32) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v11[1] = 3221225472;
  v11[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_2;
  v11[3] = &unk_279ECE230;
  v12 = v3;
  v13 = *(a1 + 64);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_5;
  v8[3] = &unk_279ECE230;
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  [v5 stopDiagnosticsModeWithUUID:v6 info:v7 reply:v8];
  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_7;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_stopDiagnosticsModeWithUUID_info_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (id)queryDiagnosticsModeForPeer:(id)peer info:(id)info reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke;
  block[3] = &unk_279ECE7C0;
  block[4] = self;
  block[5] = uUID;
  block[7] = info;
  block[8] = reply;
  block[6] = peer;
  dispatch_async(queue, block);
  return uUID;
}

void __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 32) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v11[1] = 3221225472;
  v11[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_2;
  v11[3] = &unk_279ECE230;
  v12 = v3;
  v13 = *(a1 + 64);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_5;
  v8[3] = &unk_279ECE488;
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  [v5 queryDiagnosticsModeForPeer:v6 info:v7 reply:v8];
  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_6;
  block[3] = &unk_279ECE7C0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_queryDiagnosticsModeForPeer_info_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)__purgeFilesInDirectory:(id)directory matching:(id)matching maxAge:(unint64_t)age maxCount:(unint64_t)count
{
  v47 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    ageCopy = age;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        v20 = v19;
        if (!matching || [matching numberOfMatchesInString:v18 options:0 range:{0, objc_msgSend(v18, "length")}])
        {
          v21 = [directory stringByAppendingPathComponent:v18];
          if (v11 - v20 <= ageCopy)
          {
            [dictionary setObject:v21 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v20)}];
          }

          else
          {
            [array addObject:v21];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v14);
  }

  v22 = [objc_msgSend(dictionary "allKeys")];
  [v22 sortUsingComparator:&__block_literal_global_34];
  if ([v22 count] > count && objc_msgSend(v22, "count") != count)
  {
    v23 = 0;
    do
    {
      [array addObject:{objc_msgSend(dictionary, "objectForKeyedSubscript:", objc_msgSend(v22, "objectAtIndexedSubscript:", v23++))}];
    }

    while (v23 < [v22 count] - count);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [array countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(array);
        }

        v28 = *(*(&v35 + 1) + 8 * j);
        OSLog = W5GetOSLog();
        if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 138543362;
          v44 = v28;
          LODWORD(v32) = 12;
          v31 = &v43;
          _os_log_send_and_compose_impl();
        }

        [objc_msgSend(MEMORY[0x277CCAA00] defaultManager];
      }

      v25 = [array countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v25);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)__mostRecentInDirectories:(id)directories include:(id)include exclude:(id)exclude maxAge:(double)age
{
  v50 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = [MEMORY[0x277CBEB58] set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = directories;
  v35 = [directories countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v35)
  {
    v34 = *v45;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v12;
        v13 = *(*(&v44 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        v14 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v41;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v41 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v40 + 1) + 8 * i);
              v20 = objc_autoreleasePoolPush();
              v21 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
              [objc_msgSend(v21 "fileCreationDate")];
              v23 = v22;
              [objc_msgSend(v21 "fileModificationDate")];
              v25 = v24;
              v26 = v11 - v23;
              v27 = v11 - v25;
              v28 = v11 - v23 > age && v27 > age;
              if (!v28 && (!include || [include numberOfMatchesInString:v19 options:0 range:{0, objc_msgSend(v19, "length", v26, v27)}]) && (!exclude || !objc_msgSend(exclude, "numberOfMatchesInString:options:range:", v19, 0, 0, objc_msgSend(v19, "length", v26, v27))) && (objc_msgSend(v39, "containsObject:", v19, v26, v27) & 1) == 0)
              {
                if (v23 <= v25)
                {
                  v29 = v25;
                }

                else
                {
                  v29 = v23;
                }

                [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v29), objc_msgSend(v13, "stringByAppendingPathComponent:", v19)}];
                [v39 addObject:v19];
              }

              objc_autoreleasePoolPop(v20);
            }

            v16 = [v14 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v16);
        }

        objc_autoreleasePoolPop(context);
        v12 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v35);
  }

  [array addObjectsFromArray:{objc_msgSend(dictionary, "keysSortedByValueUsingComparator:", &__block_literal_global_36)}];
  result = [array copy];
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)__collectJetsamFallbackLogsWithReason:(id)reason compress:(BOOL)compress
{
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH.mm.ss.SSS"];
  v8 = [v7 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];
  if (!reason)
  {
    reason = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.WiFiVelocity", "localizedStringForKey:value:table:", @"kW5LocWiFiDiagnosticsName", @"WiFiDiagnostics", 0}];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", reason, v8];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"com.apple.wifivelocity", "stringByAppendingPathComponent:", v9)}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if ([defaultManager createDirectoryAtPath:objc_msgSend(v10 withIntermediateDirectories:"path") attributes:1 error:{0, 0}])
  {
    [defaultManager createFileAtPath:objc_msgSend(objc_msgSend(v10 contents:"path") attributes:{"stringByAppendingPathComponent:", @"__CRASH__", objc_msgSend(@"This file was generated because the XPC call to collect WiFi diagnostics/logs was interrupted or invalidated (most likely jetsam'd). When we detect this condition, we will collect basic WiFi logs inline and try to capture the corresponding crash report for wifivelocityd.", "dataUsingEncoding:", 4), 0}];
    -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:@"/Library/Logs/wifi.log"], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", @"wifi.log"), "URLByAppendingPathExtension:", @"tgz"), 0);
    v13 = [(W5Client *)self __mostRecentInDirectories:&unk_288342270 include:0 exclude:0 maxAge:86400.0];
    for (i = 0; ; ++i)
    {
      v15 = [v13 count] > 5 ? 6 : objc_msgSend(v13, "count");
      if (i >= v15)
      {
        break;
      }

      v16 = [v13 objectAtIndexedSubscript:i];
      -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:v16], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", objc_msgSend(v16, "lastPathComponent")), "URLByAppendingPathExtension:", @"tgz"), 0);
    }

    v17 = [(W5Client *)self __mostRecentInDirectories:&unk_288342288 include:0 exclude:0 maxAge:86400.0];
    for (j = 0; ; ++j)
    {
      v19 = [v17 count] > 5 ? 6 : objc_msgSend(v17, "count");
      if (j >= v19)
      {
        break;
      }

      v20 = [v17 objectAtIndexedSubscript:j];
      -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:v20], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", objc_msgSend(v20, "lastPathComponent")), "URLByAppendingPathExtension:", @"tgz"), 0);
    }

    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"LEGACY_com.apple.wifi-networks.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi-private-mac-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi-private-mac-networks.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/com.apple.wifi.known-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi.known-networks.plist", 0}];
    v21 = -[W5Client __mostRecentInDirectories:include:exclude:maxAge:](self, "__mostRecentInDirectories:include:exclude:maxAge:", &unk_2883422A0, [MEMORY[0x277CCAC68] regularExpressionWithPattern:objc_msgSend(MEMORY[0x277CCAC68] options:"escapedPatternForString:" error:{@"wifivelocityd", 0, 0}], 0, 86400.0);
    for (k = 0; ; ++k)
    {
      v23 = [v21 count] > 2 ? 3 : objc_msgSend(v21, "count");
      if (k >= v23)
      {
        break;
      }

      v24 = [v21 objectAtIndexedSubscript:k];
      [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{v24), objc_msgSend(v10, "URLByAppendingPathComponent:", objc_msgSend(v24, "lastPathComponent")), 0}];
    }

    if (compress)
    {
      v25 = [v10 URLByAppendingPathExtension:@"tgz"];
      [(W5Client *)self __tarballWithSource:v10 destination:v25 error:0];
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v10 = v25;
    }

    v26 = dispatch_time(0, 120000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__W5Client___collectJetsamFallbackLogsWithReason_compress___block_invoke;
    block[3] = &unk_279ECE1E0;
    block[4] = v10;
    dispatch_after(v26, global_queue, block);
    v12 = v10;
  }

  [(W5Client *)self __purgeFilesInDirectory:[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"com.apple.wifivelocity"] matching:0 maxAge:28800 maxCount:10];
  return v12;
}

void __59__W5Client___collectJetsamFallbackLogsWithReason_compress___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) path];
    v8[0] = 67109378;
    v8[1] = 120;
    v9 = 2114;
    v10 = v4;
    LODWORD(v7) = 18;
    v6 = v8;
    _os_log_send_and_compose_impl();
  }

  [objc_msgSend(MEMORY[0x277CCAA00] defaultManager];
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

- (id)__collectBusyFallbackLogsWithReason:(id)reason compress:(BOOL)compress
{
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH.mm.ss.SSS"];
  v8 = [v7 stringFromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];
  if (!reason)
  {
    reason = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.WiFiVelocity", "localizedStringForKey:value:table:", @"kW5LocWiFiDiagnosticsName", @"WiFiDiagnostics", 0}];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", reason, v8];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", @"com.apple.wifivelocity", "stringByAppendingPathComponent:", v9)}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if ([defaultManager createDirectoryAtPath:objc_msgSend(v10 withIntermediateDirectories:"path") attributes:1 error:{0, 0}])
  {
    [defaultManager createFileAtPath:objc_msgSend(objc_msgSend(v10 contents:"path") attributes:{"stringByAppendingPathComponent:", @"__BUSY__", objc_msgSend(@"This file was generated because a log collection request is already in progress. When we detect this condition, we will attempt to collect basic WiFi logs inline.", "dataUsingEncoding:", 4), 0}];
    -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:@"/Library/Logs/wifi.log"], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", @"wifi.log"), "URLByAppendingPathExtension:", @"tgz"), 0);
    v13 = [(W5Client *)self __mostRecentInDirectories:&unk_2883422B8 include:0 exclude:0 maxAge:86400.0];
    for (i = 0; ; ++i)
    {
      v15 = [v13 count] > 5 ? 6 : objc_msgSend(v13, "count");
      if (i >= v15)
      {
        break;
      }

      v16 = [v13 objectAtIndexedSubscript:i];
      -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:v16], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", objc_msgSend(v16, "lastPathComponent")), "URLByAppendingPathExtension:", @"tgz"), 0);
    }

    v17 = [(W5Client *)self __mostRecentInDirectories:&unk_2883422D0 include:0 exclude:0 maxAge:86400.0];
    for (j = 0; ; ++j)
    {
      v19 = [v17 count] > 5 ? 6 : objc_msgSend(v17, "count");
      if (j >= v19)
      {
        break;
      }

      v20 = [v17 objectAtIndexedSubscript:j];
      -[W5Client __tarballWithSource:destination:error:](self, "__tarballWithSource:destination:error:", [MEMORY[0x277CBEBC0] fileURLWithPath:v20], objc_msgSend(objc_msgSend(v10, "URLByAppendingPathComponent:", objc_msgSend(v20, "lastPathComponent")), "URLByAppendingPathExtension:", @"tgz"), 0);
    }

    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"LEGACY_com.apple.wifi-networks.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/SystemConfiguration/com.apple.wifi-private-mac-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi-private-mac-networks.plist", 0}];
    [defaultManager copyItemAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toURL:"fileURLWithPath:" error:{@"/Library/Preferences/com.apple.wifi.known-networks.plist", objc_msgSend(v10, "URLByAppendingPathComponent:", @"com.apple.wifi.known-networks.plist", 0}];
    if (compress)
    {
      v21 = [v10 URLByAppendingPathExtension:@"tgz"];
      [(W5Client *)self __tarballWithSource:v10 destination:v21 error:0];
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v10 = v21;
    }

    v22 = dispatch_time(0, 120000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__W5Client___collectBusyFallbackLogsWithReason_compress___block_invoke;
    block[3] = &unk_279ECE1E0;
    block[4] = v10;
    dispatch_after(v22, global_queue, block);
    v12 = v10;
  }

  [(W5Client *)self __purgeFilesInDirectory:[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"com.apple.wifivelocity"] matching:0 maxAge:28800 maxCount:10];
  return v12;
}

void __57__W5Client___collectBusyFallbackLogsWithReason_compress___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) path];
    v8[0] = 67109378;
    v8[1] = 120;
    v9 = 2114;
    v10 = v4;
    LODWORD(v7) = 18;
    v6 = v8;
    _os_log_send_and_compose_impl();
  }

  [objc_msgSend(MEMORY[0x277CCAA00] defaultManager];
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)__logsCollectedWithTemporaryURL:(id)l outputURL:(id)rL keepParent:(BOOL)parent compress:(BOOL)compress reply:(id)reply
{
  compressCopy = compress;
  v51 = *MEMORY[0x277D85DE8];
  v41 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  if (([defaultManager fileExistsAtPath:objc_msgSend(rL isDirectory:{"path"), &v40}] & 1) == 0)
  {
    [defaultManager createDirectoryAtURL:rL withIntermediateDirectories:1 attributes:0 error:&v41];
    if (![defaultManager fileExistsAtPath:objc_msgSend(rL isDirectory:{"path"), &v40}])
    {
      if (!reply)
      {
        goto LABEL_32;
      }

      v25 = v41;
      goto LABEL_22;
    }
  }

  if (v40 != 1)
  {
    if (!reply)
    {
      goto LABEL_32;
    }

    v24 = *MEMORY[0x277CCA5B8];
    v42 = *MEMORY[0x277CCA470];
    v43 = @"ENOENT";
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:v24 code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v43, &v42, 1)}];
LABEL_22:
    (*(reply + 2))(reply, v25, 0);
    goto LABEL_32;
  }

  if (parent || compressCopy)
  {
    rL = [rL URLByAppendingPathComponent:{objc_msgSend(l, "lastPathComponent")}];
    v15 = [defaultManager copyItemAtURL:l toURL:rL error:&v41];
    if (v41)
    {
      OSLog = W5GetOSLog();
      if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
      {
        path = [l path];
        path2 = [rL path];
        v45 = 138543874;
        v46 = path;
        v47 = 2114;
        v48 = path2;
        v49 = 2114;
        v50 = v41;
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [defaultManager contentsOfDirectoryAtPath:objc_msgSend(l error:{"path"), &v41}];
    v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      replyCopy = reply;
      v15 = 0;
      v16 = *v37;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          rLCopy = rL;
          v20 = [defaultManager copyItemAtURL:objc_msgSend(l toURL:"URLByAppendingPathComponent:" error:{v18, v31, v32), objc_msgSend(rL, "URLByAppendingPathComponent:", v18), &v41}];
          if (v41)
          {
            v21 = W5GetOSLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [objc_msgSend(l URLByAppendingPathComponent:{v18), "path"}];
              v22 = [objc_msgSend(rLCopy URLByAppendingPathComponent:{v18), "path"}];
              v45 = 138543874;
              v46 = v33;
              v47 = 2114;
              v48 = v22;
              v49 = 2114;
              v50 = v41;
              LODWORD(v32) = 32;
              v31 = &v45;
              _os_log_send_and_compose_impl();
            }
          }

          v15 |= v20;
          ++v17;
          rL = rLCopy;
        }

        while (v14 != v17);
        v23 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        v14 = v23;
      }

      while (v23);
      reply = replyCopy;
    }

    else
    {
      v15 = 0;
    }
  }

  if (reply)
  {
    if (v15)
    {
      rLCopy2 = rL;
    }

    else
    {
      rLCopy2 = 0;
    }

    (*(reply + 2))(reply, v41, rLCopy2);
  }

LABEL_32:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)collectLogs:(id)logs configuration:(id)configuration update:(id)update reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136316418;
    v18 = "[W5Client collectLogs:configuration:update:reply:]";
    v19 = 2080;
    v20 = "W5Client.m";
    v21 = 1024;
    v22 = 1525;
    v23 = 2114;
    v24 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    v25 = 1024;
    v26 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    v27 = 2114;
    v28 = [objc_msgSend(uUID "UUIDString")];
    _os_log_send_and_compose_impl();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke;
  block[3] = &unk_279ECE6B0;
  block[4] = self;
  block[5] = uUID;
  block[6] = configuration;
  block[7] = logs;
  block[8] = update;
  block[9] = reply;
  dispatch_async(queue, block);
  v14 = *MEMORY[0x277D85DE8];
  return uUID;
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v3 = [*(a1 + 48) objectForKeyedSubscript:@"OutputDirectory"];
  v4 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"KeepParent", "BOOLValue"}];
  v5 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"Compress", "BOOLValue"}];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  v9 = [*(a1 + 56) count] == 1 && objc_msgSend(objc_msgSend(*(a1 + 56), "firstObject"), "itemID") == 54;
  v10 = [*(a1 + 56) count] == 1 && objc_msgSend(objc_msgSend(*(a1 + 56), "firstObject"), "itemID") == 60;
  v11 = [*(a1 + 56) count] == 1 && objc_msgSend(objc_msgSend(*(a1 + 56), "firstObject"), "itemID") == 59;
  if ([*(a1 + 56) count] == 1 && (objc_msgSend(objc_msgSend(*(a1 + 56), "firstObject"), "itemID") == 56 || objc_msgSend(objc_msgSend(*(a1 + 56), "firstObject"), "itemID") == 79))
  {
    if ([objc_msgSend(v8 objectForKeyedSubscript:{@"Timeout", "integerValue"}] < 1)
    {
      goto LABEL_25;
    }

    v12 = @"AllowCachedSysdiagnose";
  }

  else
  {
    if (!v10 && !v11 && !v9)
    {
      goto LABEL_25;
    }

    v12 = @"CacheSysdiagnose";
  }

  if (![v8 objectForKeyedSubscript:v12])
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
  }

LABEL_25:
  v13 = *(a1 + 64);
  if (v13)
  {
    [*(*(a1 + 32) + 48) setObject:v13 forKeyedSubscript:{objc_msgSend(*(a1 + 40), "UUIDString")}];
    if (![v8 objectForKeyedSubscript:@"IncludeEvents"])
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IncludeEvents"];
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v14 = *(a1 + 32);
  v15 = *(*(a1 + 32) + 8);
  v25[1] = 3221225472;
  v25[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_2;
  v25[3] = &unk_279ECE5E8;
  v26 = v14;
  v30 = v5;
  v27 = v8;
  v28 = v3;
  v31 = v4;
  v29 = *(a1 + 72);
  v16 = [v15 remoteObjectProxyWithErrorHandler:v25];
  v17 = *(a1 + 56);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_6;
  v19[3] = &unk_279ECE688;
  v19[4] = *(a1 + 32);
  v20 = *(a1 + 40);
  v23 = v5;
  v24 = v4;
  v18 = *(a1 + 72);
  v21 = v3;
  v22 = v18;
  [v16 collectLogs:v17 configuration:v8 uuid:v20 reply:v19];
  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_collectLogs_configuration_update_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_3;
  block[3] = &unk_279ECE5C0;
  v12 = *(a1 + 72);
  v8 = v2;
  v9 = v3;
  v5 = *(a1 + 64);
  v10 = a2;
  v11 = v5;
  dispatch_async(v4, block);
  return result;
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_4;
  v5[3] = &unk_279ECE598;
  v5[4] = *(a1 + 32);
  v8 = *(a1 + 80);
  v7 = v4;
  dispatch_async(global_queue, v5);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __collectJetsamFallbackLogsWithReason:objc_msgSend(*(a1 + 40) compress:{"objectForKeyedSubscript:", @"Reason", *(a1 + 72)}];
  if (v3 && (v4 = *(a1 + 48)) != 0)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 73);
    v8 = *(a1 + 72);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_5;
    v10[3] = &unk_279ECE570;
    v10[4] = *(a1 + 64);
    [v6 __logsCollectedWithTemporaryURL:v5 outputURL:v4 keepParent:v7 compress:v8 reply:v10];
  }

  else
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 56), 0, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __51__W5Client_collectLogs_configuration_update_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, a3);
  }

  return result;
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 16);
  v8 = *(a1 + 32);
  block[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_7;
  block[3] = &unk_279ECE660;
  v9 = a4;
  v10 = a2;
  v14 = *(a1 + 72);
  v11 = v4;
  v6 = *(a1 + 64);
  v12 = a3;
  v13 = v6;
  dispatch_async(v5, block);
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_8;
  v5[3] = &unk_279ECE638;
  v7 = *(a1 + 32);
  v10 = *(a1 + 96);
  v8 = v4;
  v9 = *(a1 + 80);
  dispatch_async(global_queue, v5);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_collectLogs_configuration_update_reply___block_invoke_8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) code] != 16)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [*(a1 + 48) __collectBusyFallbackLogsWithReason:objc_msgSend(*(a1 + 56) compress:{"objectForKeyedSubscript:", @"Reason", *(a1 + 88)}];
  if (v3)
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 89);
      v7 = *(a1 + 88);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __51__W5Client_collectLogs_configuration_update_reply___block_invoke_9;
      v9[3] = &unk_279ECE610;
      v10 = *(a1 + 72);
      [v5 __logsCollectedWithTemporaryURL:v3 outputURL:v4 keepParent:v6 compress:v7 reply:v9];
      goto LABEL_10;
    }
  }

LABEL_8:
  v8 = *(a1 + 80);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 72), v3);
  }

LABEL_10:
  objc_autoreleasePoolPop(v2);
}

uint64_t __51__W5Client_collectLogs_configuration_update_reply___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32), a3);
  }

  return result;
}

- (id)collectLogs:(id)logs configuration:(id)configuration update:(id)update receipts:(id *)receipts error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v13 = dispatch_semaphore_create(0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__W5Client_collectLogs_configuration_update_receipts_error___block_invoke;
  v23[3] = &unk_279ECE6D8;
  v23[6] = &v30;
  v23[7] = &v36;
  v23[4] = v13;
  v23[5] = &v24;
  [(W5Client *)self collectLogs:logs configuration:configuration update:update reply:v23];
  v14 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v13, v14) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v43 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v15 = v25[5];
  v16 = v31[5];
  v17 = v37[5];
  if (error)
  {
    v18 = v25[5];
    if (v18)
    {
      *error = v18;
    }
  }

  if (receipts)
  {
    v19 = v31[5];
    if (v19)
    {
      *receipts = v19;
    }
  }

  v20 = v37[5];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

intptr_t __60__W5Client_collectLogs_configuration_update_receipts_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  *(*(a1[7] + 8) + 40) = [a4 copy];
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

- (id)collectLogsDiagnosticMode:(id)mode update:(id)update reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316418;
    v16 = "[W5Client collectLogsDiagnosticMode:update:reply:]";
    v17 = 2080;
    v18 = "W5Client.m";
    v19 = 1024;
    v20 = 1696;
    v21 = 2114;
    v22 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    v23 = 1024;
    v24 = [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
    v25 = 2114;
    v26 = [objc_msgSend(uUID "UUIDString")];
    _os_log_send_and_compose_impl();
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke;
  block[3] = &unk_279ECE700;
  block[4] = self;
  block[5] = uUID;
  block[6] = mode;
  block[7] = update;
  block[8] = reply;
  dispatch_async(queue, block);
  v12 = *MEMORY[0x277D85DE8];
  return uUID;
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v3 = [*(a1 + 48) objectForKeyedSubscript:@"OutputDirectory"];
  v4 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"KeepParent", "BOOLValue"}];
  v5 = [objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"Compress", "BOOLValue"}];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  v9 = *(a1 + 56);
  if (v9)
  {
    [*(*(a1 + 32) + 48) setObject:v9 forKeyedSubscript:{objc_msgSend(*(a1 + 40), "UUIDString")}];
    if (![v8 objectForKeyedSubscript:@"IncludeEvents"])
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IncludeEvents"];
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v10 = *(a1 + 32);
  v11 = *(*(a1 + 32) + 8);
  v20[1] = 3221225472;
  v20[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_2;
  v20[3] = &unk_279ECE5E8;
  v21 = v10;
  v25 = v5;
  v22 = v8;
  v23 = v3;
  v26 = v4;
  v24 = *(a1 + 64);
  v12 = [v11 remoteObjectProxyWithErrorHandler:v20];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_6;
  v14[3] = &unk_279ECE688;
  v14[4] = *(a1 + 32);
  v15 = *(a1 + 40);
  v18 = v5;
  v19 = v4;
  v13 = *(a1 + 64);
  v16 = v3;
  v17 = v13;
  [v12 collectLogsDiagnosticMode:v8 uuid:v15 reply:v14];
  objc_autoreleasePoolPop(v2);
}

__n128 __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_3;
  block[3] = &unk_279ECE5C0;
  v12 = *(a1 + 72);
  v8 = v2;
  v9 = v3;
  v5 = *(a1 + 64);
  v10 = a2;
  v11 = v5;
  dispatch_async(v4, block);
  return result;
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_4;
  v5[3] = &unk_279ECE598;
  v5[4] = *(a1 + 32);
  v8 = *(a1 + 80);
  v7 = v4;
  dispatch_async(global_queue, v5);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __collectJetsamFallbackLogsWithReason:objc_msgSend(*(a1 + 40) compress:{"objectForKeyedSubscript:", @"Reason", *(a1 + 72)}];
  if (v3 && (v4 = *(a1 + 48)) != 0)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 73);
    v8 = *(a1 + 72);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_5;
    v10[3] = &unk_279ECE570;
    v10[4] = *(a1 + 64);
    [v6 __logsCollectedWithTemporaryURL:v5 outputURL:v4 keepParent:v7 compress:v8 reply:v10];
  }

  else
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 56), 0, 0);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, a3);
  }

  return result;
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 16);
  v8 = *(a1 + 32);
  block[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_7;
  block[3] = &unk_279ECE660;
  v9 = a4;
  v10 = a2;
  v14 = *(a1 + 72);
  v11 = v4;
  v6 = *(a1 + 64);
  v12 = a3;
  v13 = v6;
  dispatch_async(v5, block);
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v5[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_8;
  v5[3] = &unk_279ECE638;
  v7 = *(a1 + 32);
  v10 = *(a1 + 96);
  v8 = v4;
  v9 = *(a1 + 80);
  dispatch_async(global_queue, v5);
  objc_autoreleasePoolPop(v2);
}

void __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_2;
  }

  if ([*(a1 + 40) code] != 16)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = [*(a1 + 48) __collectBusyFallbackLogsWithReason:objc_msgSend(*(a1 + 56) compress:{"objectForKeyedSubscript:", @"Reason", *(a1 + 88)}];
  if (v3)
  {
LABEL_2:
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 89);
      v7 = *(a1 + 88);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_9;
      v9[3] = &unk_279ECE610;
      v10 = *(a1 + 72);
      [v5 __logsCollectedWithTemporaryURL:v3 outputURL:v4 keepParent:v6 compress:v7 reply:v9];
      goto LABEL_10;
    }
  }

LABEL_8:
  v8 = *(a1 + 80);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40), *(a1 + 72), v3);
  }

LABEL_10:
  objc_autoreleasePoolPop(v2);
}

uint64_t __51__W5Client_collectLogsDiagnosticMode_update_reply___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32), a3);
  }

  return result;
}

- (id)collectLogsDiagnosticMode:(id)mode update:(id)update receipts:(id *)receipts error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v11 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__W5Client_collectLogsDiagnosticMode_update_receipts_error___block_invoke;
  v21[3] = &unk_279ECE6D8;
  v21[6] = &v28;
  v21[7] = &v34;
  v21[4] = v11;
  v21[5] = &v22;
  [(W5Client *)self collectLogsDiagnosticMode:mode update:update reply:v21];
  v12 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v41 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v13 = v23[5];
  v14 = v29[5];
  v15 = v35[5];
  if (error)
  {
    v16 = v23[5];
    if (v16)
    {
      *error = v16;
    }
  }

  if (receipts)
  {
    v17 = v29[5];
    if (v17)
    {
      *receipts = v17;
    }
  }

  v18 = v35[5];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

intptr_t __60__W5Client_collectLogsDiagnosticMode_update_receipts_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  *(*(a1[7] + 8) + 40) = [a4 copy];
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

- (id)startPeerDiscoveryWithConfiguration:(id)configuration reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke;
  v10[3] = &unk_279ECE348;
  v10[4] = self;
  v10[5] = uUID;
  v10[6] = configuration;
  v10[7] = reply;
  dispatch_async(queue, v10);
  return uUID;
}

void __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 56) setObject:*(a1 + 56) forKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_2;
  v6[3] = &unk_279ECE230;
  v7 = v3;
  v8 = *(a1 + 56);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 startPeerDiscoveryWithConfiguration:*(a1 + 48) uuid:MEMORY[0x277D85DD0] reply:{3221225472, __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_5, &unk_279ECE230, *(a1 + 32), *(a1 + 40), *(a1 + 56)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  [*(*(a1 + 32) + 56) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v5[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_6;
  v5[3] = &unk_279ECE348;
  v5[4] = a2;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v3, v5);
  return result;
}

void __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 40) removeObject:{objc_msgSend(*(a1 + 48), "UUIDString")}];
    if (![*(*(a1 + 40) + 40) count] && !objc_msgSend(*(*(a1 + 40) + 32), "count"))
    {
      [*(*(a1 + 40) + 8) setExportedObject:0];
    }

    [*(*(a1 + 40) + 56) removeObjectForKey:{objc_msgSend(*(a1 + 48), "UUIDString")}];
    global_queue = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_7;
    v5[3] = &unk_279ECE208;
    v4 = *(a1 + 56);
    v5[4] = *(a1 + 32);
    v5[5] = v4;
    dispatch_async(global_queue, v5);
  }

  objc_autoreleasePoolPop(v2);
}

void __54__W5Client_startPeerDiscoveryWithConfiguration_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)stopPeerDiscoveryWithUUID:(id)d
{
  if (d)
  {
    v5 = [(NSXPCConnection *)self->_conn remoteObjectProxyWithErrorHandler:&__block_literal_global_169];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__W5Client_stopPeerDiscoveryWithUUID___block_invoke_2;
    v6[3] = &unk_279ECE770;
    v6[4] = self;
    v6[5] = d;
    [v5 stopPeerDiscoveryWithUUID:d reply:v6];
  }
}

void __38__W5Client_stopPeerDiscoveryWithUUID___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = __38__W5Client_stopPeerDiscoveryWithUUID___block_invoke_3;
  v3[3] = &unk_279ECE748;
  v4 = v1;
  dispatch_async(v2, v3);
}

void __38__W5Client_stopPeerDiscoveryWithUUID___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 56) removeObjectForKey:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)startNetworkDiscoveryOnPeer:(id)peer configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke;
  v6[3] = &unk_279ECE348;
  v6[4] = self;
  v6[5] = peer;
  v6[6] = configuration;
  v6[7] = reply;
  dispatch_async(queue, v6);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 32) count] && !objc_msgSend(*(a1[4] + 40), "count"))
  {
    [*(a1[4] + 8) setExportedObject:?];
  }

  v3 = a1[4];
  v4 = *(v3 + 8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_2;
  v11[3] = &unk_279ECE320;
  v5 = a1[7];
  v11[4] = v3;
  v11[5] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v11];
  v7 = a1[5];
  v8 = a1[6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_5;
  v10[3] = &unk_279ECE3E8;
  v9 = a1[7];
  v10[4] = a1[4];
  v10[5] = v9;
  [v6 startNetworkDiscoveryOnPeer:v7 configuration:v8 reply:v10];
  objc_autoreleasePoolPop(v2);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_3;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v5 = *(a1 + 40);
  v6[4] = v3;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = v5;
  dispatch_async(v4, v6);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __60__W5Client_startNetworkDiscoveryOnPeer_configuration_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)associateToNetworkOnPeer:(id)peer scanResult:(id)result configuration:(id)configuration reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke;
  block[3] = &unk_279ECE7C0;
  block[7] = configuration;
  block[8] = reply;
  block[4] = self;
  block[5] = peer;
  block[6] = result;
  dispatch_async(queue, block);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 32) count] && !objc_msgSend(*(a1[4] + 40), "count"))
  {
    [*(a1[4] + 8) setExportedObject:?];
  }

  v3 = a1[4];
  v4 = *(v3 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_2;
  v12[3] = &unk_279ECE320;
  v5 = a1[8];
  v12[4] = v3;
  v12[5] = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_5;
  v11[3] = &unk_279ECE320;
  v11[4] = a1[4];
  v11[5] = v10;
  [v6 associateToNetworkOnPeer:v7 scanResult:v8 configuration:v9 reply:v11];
  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_3;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_6;
  block[3] = &unk_279ECE2A8;
  v4 = *(a1 + 40);
  block[5] = a2;
  block[6] = v4;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_7;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 40);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_associateToNetworkOnPeer_scanResult_configuration_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (id)runWiFiSnifferOnChannel:(id)channel duration:(double)duration peer:(id)peer reply:(id)reply
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = channel;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__W5Client_runWiFiSnifferOnChannel_duration_peer_reply___block_invoke;
  v14[3] = &unk_279ECE798;
  v14[4] = channel;
  v14[5] = reply;
  result = [(W5Client *)self runWiFiSnifferOnChannels:v11 duration:peer peer:v14 reply:duration];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __56__W5Client_runWiFiSnifferOnChannel_duration_peer_reply___block_invoke(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v4 = *(result + 40);
  if (a2)
  {
    if (!v4)
    {
      return result;
    }

    v5 = *(v4 + 16);
    v6 = *(result + 40);
    v7 = 0;
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    v9 = result;
    v10 = [a3 objectForKey:*(result + 32)];
    v7 = [a4 objectForKey:*(v9 + 32)];
    v5 = *(v4 + 16);
    v6 = v4;
    a2 = v10;
  }

  return v5(v6, a2, v7);
}

- (id)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke;
  v14[3] = &unk_279ECE838;
  v14[4] = self;
  v14[5] = uUID;
  v14[7] = peer;
  v14[8] = reply;
  *&v14[9] = duration;
  v14[6] = channels;
  dispatch_async(queue, v14);
  return uUID;
}

void __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_2;
  v6[3] = &unk_279ECE230;
  v7 = v3;
  v8 = *(a1 + 64);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 runWiFiSnifferOnChannels:*(a1 + 48) duration:*(a1 + 56) peer:*(a1 + 72) uuid:MEMORY[0x277D85DD0] reply:{3221225472, __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_5, &unk_279ECE810, *(a1 + 32), *(a1 + 40), *(a1 + 64)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0, 0, 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 16);
  block[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_6;
  block[3] = &unk_279ECE7E8;
  v10 = v5;
  v7 = *(a1 + 48);
  v14 = a5;
  v15 = v7;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  dispatch_async(v6, block);
  return result;
}

void __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_7;
  block[3] = &unk_279ECE7C0;
  v8 = *(a1 + 80);
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v4;
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __57__W5Client_runWiFiSnifferOnChannels_duration_peer_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5], a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)runWiFiSnifferOnChannel:(id)channel duration:(double)duration peer:(id)peer error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = channel;
  result = [-[W5Client runWiFiSnifferOnChannels:duration:peer:snifferErrors:error:](self runWiFiSnifferOnChannels:objc_msgSend(MEMORY[0x277CBEA60] duration:"arrayWithObjects:count:" peer:v9 snifferErrors:1) error:{peer, &v8, error, duration), "objectForKey:", channel}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)runWiFiSnifferOnChannels:(id)channels duration:(double)duration peer:(id)peer snifferErrors:(id *)errors error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v12 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__W5Client_runWiFiSnifferOnChannels_duration_peer_snifferErrors_error___block_invoke;
  v21[3] = &unk_279ECE860;
  v21[6] = &v34;
  v21[7] = &v22;
  v21[4] = v12;
  v21[5] = &v28;
  [(W5Client *)self runWiFiSnifferOnChannels:channels duration:peer peer:v21 reply:duration];
  v13 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v12, v13) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v41 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v14 = v29[5];
  v15 = v35[5];
  v16 = v23[5];
  if (error)
  {
    v17 = v29[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v35[5];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

intptr_t __71__W5Client_runWiFiSnifferOnChannels_duration_peer_snifferErrors_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a4 copy];
  *(*(a1[7] + 8) + 40) = [a3 copy];
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

- (id)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke;
  v14[3] = &unk_279ECE838;
  v14[4] = self;
  v14[5] = uUID;
  v14[7] = peer;
  v14[8] = reply;
  *&v14[9] = duration;
  v14[6] = channels;
  dispatch_async(queue, v14);
  return uUID;
}

void __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_2;
  v6[3] = &unk_279ECE230;
  v7 = v3;
  v8 = *(a1 + 64);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 runWiFiSnifferWithTCPDumpOnChannels:*(a1 + 48) duration:*(a1 + 56) peer:*(a1 + 72) uuid:MEMORY[0x277D85DD0] reply:{3221225472, __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_5, &unk_279ECE488, *(a1 + 32), *(a1 + 40), *(a1 + 64)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 16);
  block[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_6;
  block[3] = &unk_279ECE7C0;
  v8 = v3;
  v5 = *(a1 + 48);
  v10 = a3;
  v11 = v5;
  v9 = a2;
  dispatch_async(v4, block);
  return result;
}

void __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_7;
  block[3] = &unk_279ECE2A8;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(global_queue, block);
  objc_autoreleasePoolPop(v2);
}

void __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_reply___block_invoke_7(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)runWiFiSnifferWithTCPDumpOnChannels:(id)channels duration:(double)duration peer:(id)peer error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v11 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_error___block_invoke;
  v19[3] = &unk_279ECE4B0;
  v19[5] = &v20;
  v19[6] = &v26;
  v19[4] = v11;
  [(W5Client *)self runWiFiSnifferWithTCPDumpOnChannels:channels duration:peer peer:v19 reply:duration];
  v12 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v11, v12) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v33 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v13 = v21[5];
  v14 = v27[5];
  if (error)
  {
    v15 = v21[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v27[5];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

intptr_t __68__W5Client_runWiFiSnifferWithTCPDumpOnChannels_duration_peer_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = [a2 copy];
  *(*(a1[6] + 8) + 40) = [a3 copy];
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)runWiFiPerformanceLoggingWithConfiguration:(id)configuration reply:(id)reply
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke;
  v10[3] = &unk_279ECE348;
  v10[4] = self;
  v10[5] = uUID;
  v10[6] = configuration;
  v10[7] = reply;
  dispatch_async(queue, v10);
  return uUID;
}

void __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) addObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if ([*(*(a1 + 32) + 40) count] == 1 && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_2;
  v6[3] = &unk_279ECE230;
  v7 = v3;
  v8 = *(a1 + 56);
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 runWiFiPerformanceLoggingWithConfiguration:*(a1 + 48) uuid:MEMORY[0x277D85DD0] reply:{3221225472, __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_5, &unk_279ECE230, *(a1 + 32), *(a1 + 40), *(a1 + 56)}];
  objc_autoreleasePoolPop(v2);
}

__n128 __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_3;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_4;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

__n128 __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  v6[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_6;
  v6[3] = &unk_279ECE348;
  v7 = v2;
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  dispatch_async(v3, v6);
  return result;
}

void __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeObject:{objc_msgSend(*(a1 + 40), "UUIDString")}];
  if (![*(*(a1 + 32) + 40) count] && !objc_msgSend(*(*(a1 + 32) + 32), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:0];
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_7;
  v4[3] = &unk_279ECE208;
  v5 = *(a1 + 48);
  dispatch_async(global_queue, v4);
  objc_autoreleasePoolPop(v2);
}

void __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_reply___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (id)runWiFiPerformanceLoggingWithConfiguration:(id)configuration error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_error___block_invoke;
  v17[3] = &unk_279ECE460;
  v17[4] = v7;
  v17[5] = &v18;
  v8 = [(W5Client *)self runWiFiPerformanceLoggingWithConfiguration:configuration reply:v17];
  v9 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(v7, v9) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v25 = 0x4082C00000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v10 = v19[5];
  v11 = v8;
  v12 = v19;
  v13 = v19[5];
  if (error && v13)
  {
    *error = v13;
    v13 = v12[5];
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

intptr_t __61__W5Client_runWiFiPerformanceLoggingWithConfiguration_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 copy];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)__cancelRequestWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1[4] + 40) containsObject:{objc_msgSend(a1[5], "UUIDString")}])
  {
    v3 = *(a1[4] + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke_2;
    v9[3] = &unk_279ECE280;
    v9[4] = a1[6];
    v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke_4;
    v8[3] = &unk_279ECE280;
    v5 = a1[5];
    v8[4] = a1[6];
    [v4 cancelRequestWithUUID:v5 reply:v8];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke_6;
    block[3] = &unk_279ECE888;
    block[4] = a1[6];
    dispatch_async(global_queue, block);
  }

  objc_autoreleasePoolPop(v2);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__W5Client___cancelRequestWithUUID_reply___block_invoke_5;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __42__W5Client___cancelRequestWithUUID_reply___block_invoke_6(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *MEMORY[0x277CCA470];
    v6[0] = @"W5ParamErr";
    (*(v3 + 16))(v3, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}]);
  }

  objc_autoreleasePoolPop(v2);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelRequestWithUUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__W5Client_cancelRequestWithUUID___block_invoke;
  v8[3] = &unk_279ECE258;
  v8[4] = v5;
  [(W5Client *)self __cancelRequestWithUUID:d reply:v8];
  v6 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v5, v6) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v10 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)__cancelAllRequestsAndReply:(id)reply
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__W5Client___cancelAllRequestsAndReply___block_invoke;
  v4[3] = &unk_279ECE208;
  v4[4] = self;
  v4[5] = reply;
  dispatch_async(queue, v4);
}

void __40__W5Client___cancelAllRequestsAndReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__W5Client___cancelAllRequestsAndReply___block_invoke_2;
  v6[3] = &unk_279ECE280;
  v6[4] = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__W5Client___cancelAllRequestsAndReply___block_invoke_4;
  v5[3] = &unk_279ECE280;
  v5[4] = *(a1 + 40);
  [v4 cancelAllRequestsAndReply:v5];
  objc_autoreleasePoolPop(v2);
}

void __40__W5Client___cancelAllRequestsAndReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__W5Client___cancelAllRequestsAndReply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __40__W5Client___cancelAllRequestsAndReply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __40__W5Client___cancelAllRequestsAndReply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__W5Client___cancelAllRequestsAndReply___block_invoke_5;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __40__W5Client___cancelAllRequestsAndReply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)cancelAllRequests
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__W5Client_cancelAllRequests__block_invoke;
  v6[3] = &unk_279ECE258;
  v6[4] = v3;
  [(W5Client *)self __cancelAllRequestsAndReply:v6];
  v4 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v3, v4) >= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v8 = 0x4010000000000000;
    _os_log_error_impl(&dword_274216000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelRequestWithUUID:(id)d peer:(id)peer type:(int64_t)type reply:(id)reply
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke;
  block[3] = &unk_279ECE8B0;
  block[4] = self;
  block[5] = d;
  block[6] = peer;
  block[7] = reply;
  block[8] = type;
  dispatch_async(queue, block);
}

void __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[4] + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_2;
  v9[3] = &unk_279ECE280;
  v9[4] = a1[7];
  v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_4;
  v8[3] = &unk_279ECE280;
  v7 = a1[8];
  v8[4] = a1[7];
  [v4 cancelRequestWithUUID:v5 OnPeer:v6 OfType:v7 reply:v8];
  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_5;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __50__W5Client_cancelRequestWithUUID_peer_type_reply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)__log:(id)__log timestamp:(BOOL)timestamp reply:(id)reply
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__W5Client___log_timestamp_reply___block_invoke;
  v6[3] = &unk_279ECE8D8;
  v6[5] = __log;
  v6[6] = reply;
  v6[4] = self;
  timestampCopy = timestamp;
  dispatch_async(queue, v6);
}

void __34__W5Client___log_timestamp_reply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__W5Client___log_timestamp_reply___block_invoke_2;
  v8[3] = &unk_279ECE280;
  v8[4] = *(a1 + 48);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__W5Client___log_timestamp_reply___block_invoke_4;
  v7[3] = &unk_279ECE280;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 48);
  [v4 log:v6 timestamp:v5 reply:v7];
  objc_autoreleasePoolPop(v2);
}

void __34__W5Client___log_timestamp_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__W5Client___log_timestamp_reply___block_invoke_3;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __34__W5Client___log_timestamp_reply___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

void __34__W5Client___log_timestamp_reply___block_invoke_4(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__W5Client___log_timestamp_reply___block_invoke_5;
  v6[3] = &unk_279ECE208;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  dispatch_async(global_queue, v6);
}

void __34__W5Client___log_timestamp_reply___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)startMonitoringFaultEventsForPeer:(id)peer eventHandler:(id)handler error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke;
  block[3] = &unk_279ECE2A8;
  block[4] = self;
  block[5] = peer;
  block[6] = handler;
  dispatch_async(queue, block);
  conn = self->_conn;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_182;
  v18[3] = &unk_279ECE500;
  v18[4] = &v20;
  v10 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_2;
  v17[3] = &unk_279ECE500;
  v17[4] = &v20;
  [v10 startMonitoringFaultEventsForPeer:peer reply:v17];
  v11 = v21[5];
  v12 = v21[5];
  if (v12)
  {
    v13 = self->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_3;
    v16[3] = &unk_279ECE748;
    v16[4] = peer;
    v16[5] = self;
    dispatch_async(v13, v16);
    v12 = v21[5];
    if (error)
    {
      *error = v12;
    }
  }

  v14 = v12 == 0;
  _Block_object_dispose(&v20, 8);
  return v14;
}

void __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (![*(*(a1 + 32) + 32) count] && !objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [*(*(a1 + 32) + 8) setExportedObject:?];
  }

  [*(*(a1 + 32) + 32) addObject:&unk_288342258];
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 64) addObject:?];
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 32) + 48) setObject:*(a1 + 48) forKeyedSubscript:{objc_msgSend(*(a1 + 32), "__eventCallbackSignatureForEventID:peer:", 38, v3)}];

  objc_autoreleasePoolPop(v2);
}

uint64_t __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_182(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __65__W5Client_startMonitoringFaultEventsForPeer_eventHandler_error___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 64) removeObject:?];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 40) + 48) setObject:0 forKeyedSubscript:{objc_msgSend(*(a1 + 40), "__eventCallbackSignatureForEventID:peer:", 38, v3)}];
  [*(*(a1 + 40) + 32) removeObject:&unk_288342258];
  if (![*(*(a1 + 40) + 32) count] && !objc_msgSend(*(*(a1 + 40) + 40), "count"))
  {
    [*(*(a1 + 40) + 8) setExportedObject:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)stopMonitoringFaultEventsForPeer:(id)peer error:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke;
  v17[3] = &unk_279ECE500;
  v17[4] = &v18;
  v8 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke_2;
  v16[3] = &unk_279ECE500;
  v16[4] = &v18;
  [v8 stopMonitoringFaultEventsForPeer:peer reply:v16];
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke_3;
  v15[3] = &unk_279ECE748;
  v15[4] = peer;
  v15[5] = self;
  dispatch_async(queue, v15);
  v10 = v19[5];
  v11 = v19;
  v12 = v19[5];
  if (error && v12)
  {
    *error = v12;
    v12 = v11[5];
  }

  v13 = v12 == 0;
  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __51__W5Client_stopMonitoringFaultEventsForPeer_error___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 64) removeObject:?];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  [*(*(a1 + 40) + 48) setObject:0 forKeyedSubscript:{objc_msgSend(*(a1 + 40), "__eventCallbackSignatureForEventID:peer:", 38, v3)}];
  [*(*(a1 + 40) + 32) removeObject:&unk_288342258];
  if (![*(*(a1 + 40) + 32) count] && !objc_msgSend(*(*(a1 + 40) + 40), "count"))
  {
    [*(*(a1 + 40) + 8) setExportedObject:0];
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)submitFaultEvent:(id)event error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__W5Client_submitFaultEvent_error___block_invoke;
  v14[3] = &unk_279ECE500;
  v14[4] = &v15;
  v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__W5Client_submitFaultEvent_error___block_invoke_2;
  v13[3] = &unk_279ECE500;
  v13[4] = &v15;
  [v7 submitFaultEvent:event reply:v13];
  v8 = v16[5];
  v9 = v16;
  v10 = v16[5];
  if (error && v10)
  {
    *error = v10;
    v10 = v9[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __35__W5Client_submitFaultEvent_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __35__W5Client_submitFaultEvent_error___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)faultEventCacheForPeer:(id)peer error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__W5Client_faultEventCacheForPeer_error___block_invoke;
  v15[3] = &unk_279ECE500;
  v15[4] = &v16;
  v7 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__W5Client_faultEventCacheForPeer_error___block_invoke_2;
  v14[3] = &unk_279ECE900;
  v14[4] = &v16;
  v14[5] = &v22;
  [v7 queryFaultEventCacheForPeer:peer reply:v14];
  v8 = v17[5];
  v9 = v23[5];
  v10 = v17;
  v11 = v17[5];
  if (error && v11)
  {
    *error = v11;
    v11 = v10[5];
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v23[5];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __41__W5Client_faultEventCacheForPeer_error___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t __41__W5Client_faultEventCacheForPeer_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 copy];
  result = [a3 copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)receivedEvent:(id)event
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__W5Client_receivedEvent___block_invoke;
  v4[3] = &unk_279ECE748;
  v4[4] = event;
  v4[5] = self;
  dispatch_async(queue, v4);
}

void __26__W5Client_receivedEvent___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "info"), "objectForKeyedSubscript:", @"UUID", "UUIDString")}];
  if (v3 || (v3 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "__eventCallbackSignatureForEventID:peer:", objc_msgSend(*(a1 + 32), "eventID"), objc_msgSend(*(a1 + 32), "peer"))}]) != 0)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  v4 = *(a1 + 40);
  if (*(v4 + 72) && [*(v4 + 32) containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(*(a1 + 32), "eventID"))}])
  {
    v5 = *(a1 + 32);
    (*(*(*(a1 + 40) + 72) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (void)receivedPeerDiscoveryEvent:(id)event
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__W5Client_receivedPeerDiscoveryEvent___block_invoke;
  v4[3] = &unk_279ECE748;
  v4[4] = event;
  v4[5] = self;
  dispatch_async(queue, v4);
}

void __39__W5Client_receivedPeerDiscoveryEvent___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  OSLog = W5GetOSLog();
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 136315906;
    v10 = "[W5Client receivedPeerDiscoveryEvent:]_block_invoke";
    v11 = 2080;
    v12 = "W5Client.m";
    v13 = 1024;
    v14 = 2612;
    v15 = 2114;
    v16 = v4;
    LODWORD(v8) = 38;
    v7 = &v9;
    _os_log_send_and_compose_impl();
  }

  v5 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "info", v7, v8), "objectForKeyedSubscript:", @"UUID", "UUIDString")}];
  if (v5)
  {
    (*(v5 + 16))(v5, 0, *(a1 + 32));
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

@end