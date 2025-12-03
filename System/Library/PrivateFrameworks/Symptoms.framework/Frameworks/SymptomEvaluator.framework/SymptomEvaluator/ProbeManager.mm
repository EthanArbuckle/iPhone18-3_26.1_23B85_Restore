@interface ProbeManager
- (ProbeManager)initWithQueue:(id)queue;
- (id)probeCallbackFunctions;
- (void)awdlPeerPollProbe:(id)probe serviceAdded:(id)added;
- (void)awdlPeerPollProbe:(id)probe serviceRemoved:(id)removed;
- (void)awdlPeerPollProbe:(id)probe serviceUpdated:(id)updated;
- (void)awdlPeerPollProbeIsComplete:(id)complete;
- (void)bonjourProbeComplete:(id)complete status:(unsigned int)status;
- (void)bonjourServiceAdded:(id)added isUpdatedService:(BOOL)service;
- (void)bonjourServiceRemoved:(id)removed;
- (void)cancelAllProbes;
- (void)dealloc;
- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error;
- (void)icmpPingProbe:(id)probe echoResponseReceived:(id)received success:(BOOL)success;
- (void)startAWDLPeerPollingWithDiagSession:(id)session services:(id)services count:(id)count interval:(id)interval;
- (void)startAirDropBonjourScan:(id)scan duration:(id)duration;
- (void)startGetNetworkInfo:(id)info;
- (void)startICMPPingForDiagSession:(id)session hostName:(id)name ipAddress:(id)address interface:(id)interface pingCount:(id)count interPingInterval:(id)interval burstCount:(id)burstCount interBurstInterval:(id)self0 timeout:(id)self1;
- (void)startTCPDumpForDiagSession:(id)session duration:(id)duration;
- (void)startTestHTTPForDiagSession:(id)session url:(id)url timeout:(id)timeout interfaceName:(id)name userAgent:(id)agent;
- (void)startTestTCPConnectionForDiagSession:(id)session url:(id)url host:(id)host port:(id)port interfaceName:(id)name timeout:(id)timeout;
- (void)stopTCPDump;
@end

@implementation ProbeManager

- (ProbeManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = ProbeManager;
  v6 = [(ProbeManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    probes = v7->_probes;
    v7->_probes = dictionary;
  }

  return v7;
}

- (void)dealloc
{
  [(ProbeManager *)self cancelAllProbes];
  v3.receiver = self;
  v3.super_class = ProbeManager;
  [(ProbeManager *)&v3 dealloc];
}

- (id)probeCallbackFunctions
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"startTestHTTPForDiagSession:url:timeout:interfaceName:userAgent:" forKey:@"StartTestHTTP"];
  [dictionary setObject:@"startTCPDumpForDiagSession:duration:" forKey:@"StartTCPDump"];
  [dictionary setObject:@"stopTCPDump" forKey:@"StopTCPDump"];
  [dictionary setObject:@"startGetNetworkInfo:" forKey:@"StartGetNetworkInfo"];
  [dictionary setObject:@"startAirDropBonjourScan:duration:" forKey:@"StartAirDropBonjourScan"];
  [dictionary setObject:@"startICMPPingForDiagSession:hostName:ipAddress:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:" forKey:@"StartICMPPing"];
  [dictionary setObject:@"startAWDLPeerPollingWithDiagSession:services:count:interval:" forKey:@"StartAWDLPeerPollProbe"];
  [dictionary setObject:@"startTestTCPConnectionForDiagSession:url:host:port:interfaceName:timeout:" forKey:@"StartTCPConnCheck"];

  return dictionary;
}

- (void)cancelAllProbes
{
  v21 = *MEMORY[0x277D85DE8];
  probes = [(ProbeManager *)self probes];
  v4 = [probes count];

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    probes2 = [(ProbeManager *)self probes];
    v6 = [probes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(probes2);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          probes3 = [(ProbeManager *)self probes];
          v12 = [probes3 objectForKey:v10];

          if ([v12 status] == 1 || objc_msgSend(v12, "status") == -1)
          {
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __31__ProbeManager_cancelAllProbes__block_invoke;
            v14[3] = &unk_27898F0A0;
            v15 = v12;
            [v15 cancelTest:v14];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [probes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_probes removeAllObjects];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __31__ProbeManager_cancelAllProbes__block_invoke(uint64_t result, int a2)
{
  if (a2 == 4)
  {
    return [*(result + 32) removeProbeOutputFiles];
  }

  return result;
}

- (void)startTestTCPConnectionForDiagSession:(id)session url:(id)url host:(id)host port:(id)port interfaceName:(id)name timeout:(id)timeout
{
  sessionCopy = session;
  urlCopy = url;
  hostCopy = host;
  portCopy = port;
  nameCopy = name;
  timeoutCopy = timeout;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke;
  block[3] = &unk_27898F6C0;
  block[4] = self;
  v28 = portCopy;
  v29 = hostCopy;
  v30 = urlCopy;
  v31 = sessionCopy;
  v32 = timeoutCopy;
  v33 = nameCopy;
  v21 = nameCopy;
  v22 = timeoutCopy;
  v23 = sessionCopy;
  v24 = urlCopy;
  v25 = hostCopy;
  v26 = portCopy;
  dispatch_async(queue, block);
}

void __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke(id *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__15;
  v55 = __Block_byref_object_dispose__15;
  v2 = [TCPConnectionProbe alloc];
  v3 = [a1[4] queue];
  v56 = [(TestProbe *)v2 initWithQueue:v3];

  v4 = [a1[5] unsignedIntegerValue];
  v5 = a1[6];
  if ([v5 length] && (v4 - 0x10000) > 0xFFFFFFFFFFFF0000 || !objc_msgSend(a1[7], "length"))
  {
    v8 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a1[7]];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 host];

      v9 = [v7 port];
      v4 = [v9 unsignedIntegerValue];

      if (!v4)
      {
        v10 = [v7 scheme];
        v11 = [v10 isEqualToString:@"http"];

        if (v11)
        {
          v4 = 80;
        }

        else
        {
          v42 = [v7 scheme];
          v43 = [v42 isEqualToString:@"https"];

          if (v43)
          {
            v4 = 443;
          }

          else
          {
            v44 = debuggabilityLogHandle;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = [v7 scheme];
              *buf = 138412290;
              v58 = v45;
              _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Unable to infer target port for scheme %@.", buf, 0xCu);
            }

            v4 = 0;
          }
        }
      }
    }

    else
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = a1[7];
        *buf = 138412290;
        v58 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Failed to parse %@ into a valid URL.", buf, 0xCu);
      }

      v8 = v5;
    }
  }

  if ([v8 length] && (v4 - 1) <= 0xFFFE)
  {
    [v52[5] setDiagSessionUUID:a1[8]];
    v14 = v52[5];
    v15 = *(a1[4] + 3);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 setObject:v14 forKeyedSubscript:v17];

    v18 = v52[5];
    [a1[9] doubleValue];
    v20 = v19;
    v21 = a1[10];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke_96;
    v46[3] = &unk_27898F698;
    v46[4] = a1[4];
    v49 = &v51;
    v22 = v8;
    v47 = v22;
    v50 = v4;
    v48 = a1[10];
    [v18 testConection:v22 port:v4 timeout:v21 interfaceName:v46 reply:v20];
    v23 = *(a1[4] + 2);
    if (objc_opt_respondsToSelector())
    {
      v24 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
      v25 = [v52[5] diagSessionUUID];
      v26 = [v25 length];

      if (v26)
      {
        v27 = [v52[5] diagSessionUUID];
        [v24 setObject:v27 forKeyedSubscript:@"kNDFProbeSessionUUID"];
      }

      v28 = MEMORY[0x277CBEB38];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v30 = [v28 dictionaryWithObjectsAndKeys:{v22, @"host", v29, @"port", 0}];

      if ([a1[10] length])
      {
        [v30 setObject:a1[10] forKeyedSubscript:@"interfaceName"];
      }

      [v24 setObject:v30 forKeyedSubscript:@"kNDFProbeContext"];
      v31 = [a1[4] delegate];
      [v31 probeStatusUpdate:v24];
    }
  }

  else
  {
    v32 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v33 = a1[10];
      *buf = 138412802;
      v58 = v8;
      v59 = 2048;
      v60 = v4;
      v61 = 2112;
      v62 = v33;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Invalid parameter to probe. (host:%@ port:%ld interface:%@)", buf, 0x20u);
    }

    v34 = *(a1[4] + 2);
    if (objc_opt_respondsToSelector())
    {
      v35 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", &unk_2847EFCF8, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
      if ([a1[8] length])
      {
        [v35 setObject:a1[8] forKeyedSubscript:@"kNDFProbeSessionUUID"];
      }

      v36 = [MEMORY[0x277CBEB38] dictionary];
      v37 = v36;
      if (v8)
      {
        [v36 setObject:v8 forKeyedSubscript:@"host"];
      }

      v38 = a1[10];
      if (v38)
      {
        [v37 setObject:v38 forKeyedSubscript:@"interfaceName"];
      }

      if (v4)
      {
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
        [v37 setObject:v39 forKeyedSubscript:@"port"];
      }

      [v35 setObject:v37 forKeyedSubscript:@"kNDFProbeContext"];
      v40 = [a1[4] delegate];
      [v40 probeStatusUpdate:v35];
    }
  }

  _Block_object_dispose(&v51, 8);
  v41 = *MEMORY[0x277D85DE8];
}

void __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke_96(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) status];
    v10 = MEMORY[0x277CBEB38];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v10 dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", v11, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];

    v13 = [*(*(*(a1 + 56) + 8) + 40) diagSessionUUID];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [*(*(*(a1 + 56) + 8) + 40) diagSessionUUID];
      [v12 setObject:v15 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v16 = MEMORY[0x277CBEB38];
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v20 = [v16 dictionaryWithObjectsAndKeys:{v17, @"host", v18, @"port", v19, @"duration", 0}];

    if ([*(a1 + 48) length])
    {
      [v20 setObject:*(a1 + 48) forKeyedSubscript:@"interfaceName"];
    }

    if ((a4 - 1) > 5)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = off_27898F7D0[a4 - 1];
    }

    [v20 setObject:v21 forKeyedSubscript:@"tcpResult"];
    [v12 setObject:v20 forKeyedSubscript:@"kNDFProbeContext"];
    v22 = [*(a1 + 32) delegate];
    [v22 probeStatusUpdate:v12];
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:@"TCPConnectionProbe"];
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;
}

- (void)startTestHTTPForDiagSession:(id)session url:(id)url timeout:(id)timeout interfaceName:(id)name userAgent:(id)agent
{
  sessionCopy = session;
  urlCopy = url;
  timeoutCopy = timeout;
  nameCopy = name;
  agentCopy = agent;
  queue = [(ProbeManager *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke;
  v23[3] = &unk_27898F710;
  v23[4] = self;
  v24 = sessionCopy;
  v25 = urlCopy;
  v26 = timeoutCopy;
  v27 = nameCopy;
  v28 = agentCopy;
  v18 = agentCopy;
  v19 = nameCopy;
  v20 = timeoutCopy;
  v21 = urlCopy;
  v22 = sessionCopy;
  dispatch_async(queue, v23);
}

void __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke(uint64_t a1)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__15;
  v34 = __Block_byref_object_dispose__15;
  v2 = [TestHTTPProbe alloc];
  v3 = [*(a1 + 32) queue];
  v35 = [(TestHTTPProbe *)v2 initWithQueue:v3];

  [v31[5] setDiagSessionUUID:*(a1 + 40)];
  v4 = v31[5];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [*(*(a1 + 32) + 24) setObject:v31[5] forKeyedSubscript:v6];
  v7 = v31[5];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(a1 + 48)];
  [*(a1 + 56) doubleValue];
  v10 = v9;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke_2;
  v23 = &unk_27898F6E8;
  v13 = *(a1 + 40);
  v24 = *(a1 + 32);
  v25 = v13;
  v26 = *(a1 + 48);
  v27 = *(a1 + 64);
  v14 = v6;
  v28 = v14;
  v29 = &v30;
  [v7 testURL:v8 timeout:v11 interfaceName:v12 userAgent:&v20 reply:v10];

  v15 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TestHTTPProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0, v20, v21, v22, v23, v24, v25, v26, v27}];
    v17 = v16;
    v18 = *(a1 + 40);
    if (v18)
    {
      [v16 setObject:v18 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v19 = [*(a1 + 32) delegate];
    [v19 probeStatusUpdate:v17];
  }

  _Block_object_dispose(&v30, 8);
}

void __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (v6)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = MEMORY[0x277CBEB38];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v10 dictionaryWithObjectsAndKeys:{@"TestHTTPProbe", @"kNDFProbeName", v11, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];

    v13 = *(a1 + 40);
    if (v13)
    {
      [v12 setObject:v13 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v14 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*(a1 + 48), @"url", *(a1 + 56), @"interfaceName", 0}];
    v15 = v14;
    if (v6)
    {
      v16 = @"error";
      v17 = v6;
    }

    else
    {
      v16 = @"response";
      v17 = v21;
    }

    [v14 setObject:v17 forKeyedSubscript:v16];
    [v12 setObject:v15 forKeyedSubscript:@"kNDFProbeContext"];
    v18 = [*(a1 + 32) delegate];
    [v18 probeStatusUpdate:v12];
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 64)];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

- (void)startTCPDumpForDiagSession:(id)session duration:(id)duration
{
  sessionCopy = session;
  durationCopy = duration;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v12 = sessionCopy;
  v13 = durationCopy;
  v9 = durationCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke(uint64_t a1)
{
  v2 = [TCPDumpProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(TCPDumpProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v6];
  [*(a1 + 48) doubleValue];
  v8 = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_2;
  v12[3] = &unk_27898F738;
  v12[4] = *(a1 + 32);
  v13 = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_3;
  v10[3] = &unk_27898F738;
  v10[4] = *(a1 + 32);
  v11 = v13;
  v9 = v13;
  [(TCPDumpProbe *)v9 startTCPDumpWithDuration:@"/var/networkd/Library/Logs/Debuggability/" destinationPath:v12 tcpDumpStarted:v10 tcpDumpCompleted:v8];
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ((a2 - 3) <= 2)
    {
      v6 = [*(a1 + 32) probes];
      v7 = *(a1 + 40);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 removeObjectForKey:v9];
    }

    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = MEMORY[0x277CBEAC0];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      v14 = [*(a1 + 40) diagSessionUUID];
      v16 = [v12 dictionaryWithObjectsAndKeys:{@"TCPDumpProbe", @"kNDFProbeName", v13, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", v14, @"kNDFProbeSessionUUID", 0}];

      v15 = [*(a1 + 32) delegate];
      [v15 probeStatusUpdate:v16];
    }
  }
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_3(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_4;
  block[3] = &unk_27898A7A8;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_4(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [TestProbe testProbeStatusString:v3];
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "tcpDumpComplete status is %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [*(a1 + 40) probeOutputFilePaths];
    v10 = [*(a1 + 40) diagSessionUUID];
    [v8 probeOutputFilePaths:v9 forDiagSessionUUID:v10];
  }

  v11 = [*(a1 + 32) delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = MEMORY[0x277CBEAC0];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    v15 = [*(a1 + 40) diagSessionUUID];
    v16 = [v13 dictionaryWithObjectsAndKeys:{@"TCPDumpProbe", @"kNDFProbeName", v14, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", v15, @"kNDFProbeSessionUUID", 0}];

    v17 = [*(a1 + 32) delegate];
    [v17 probeStatusUpdate:v16];
  }

  v18 = [*(a1 + 32) probes];
  v19 = *(a1 + 40);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v18 removeObjectForKey:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopTCPDump
{
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "Stopping (not cancelling) a TCP Dump", v8, 2u);
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  probes = [(ProbeManager *)self probes];
  v7 = [probes objectForKey:v5];

  [v7 stopTest];
}

- (void)startGetNetworkInfo:(id)info
{
  infoCopy = info;
  queue = [(ProbeManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ProbeManager_startGetNetworkInfo___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __36__ProbeManager_startGetNetworkInfo___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__15;
  v26 = __Block_byref_object_dispose__15;
  v27 = 0;
  v2 = [GetNetworkInfoProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(GetNetworkInfoProbe *)v2 initWithQueue:v3];
  v5 = v23[5];
  v23[5] = v4;

  [v23[5] setDiagSessionUUID:*(a1 + 40)];
  v6 = v23[5];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [*(*(a1 + 32) + 24) setObject:v23[5] forKeyedSubscript:v8];
  v9 = v23[5];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__ProbeManager_startGetNetworkInfo___block_invoke_2;
  v19[3] = &unk_27898F760;
  v10 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v10;
  v21 = &v22;
  if (([v9 startNetDiagnosticsTask:v19] & 1) == 0)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Could not start the Get Network Info", buf, 2u);
    }

    v12 = [*(a1 + 32) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"GetNetworkInfoProbe", @"kNDFProbeName", &unk_2847EFCF8, @"Networking", @"kNDFProbeCLIPSModule", @"kNDFProbeStatus", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
      v15 = [*(a1 + 32) delegate];
      [v15 probeStatusUpdate:v14];
    }

    [v23[5] disconnectFromNetDiagnostics];
    if ([v8 length])
    {
      v16 = [*(a1 + 32) probes];
      [v16 removeObjectForKey:v8];
    }

    v17 = v23[5];
    v23[5] = 0;
  }

  _Block_object_dispose(&v22, 8);
}

void __36__ProbeManager_startGetNetworkInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v8 = [v6 dictionaryWithObjectsAndKeys:{@"GetNetworkInfoProbe", @"kNDFProbeName", v7, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];

    v9 = [*(a1 + 32) delegate];
    [v9 probeStatusUpdate:v8];
  }

  if ((a2 - 2) < 2 || a2 == 5)
  {
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      v13 = [*(*(*(a1 + 48) + 8) + 40) probeOutputFilePaths];
      [v12 probeOutputFilePaths:v13 forDiagSessionUUID:*(a1 + 40)];
    }
  }

  else
  {
    if (a2 != 4)
    {
      return;
    }

    [*(*(*(a1 + 48) + 8) + 40) removeProbeOutputFiles];
  }

  [*(*(*(a1 + 48) + 8) + 40) disconnectFromNetDiagnostics];
  v14 = [*(a1 + 32) probes];
  v15 = *(*(*(a1 + 48) + 8) + 40);
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v14 removeObjectForKey:v17];

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

- (void)startAirDropBonjourScan:(id)scan duration:(id)duration
{
  scanCopy = scan;
  durationCopy = duration;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ProbeManager_startAirDropBonjourScan_duration___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v12 = scanCopy;
  v13 = durationCopy;
  v9 = durationCopy;
  v10 = scanCopy;
  dispatch_async(queue, block);
}

void __49__ProbeManager_startAirDropBonjourScan_duration___block_invoke(uint64_t a1)
{
  v2 = [AirDropBonjourProbe alloc];
  v3 = [*(a1 + 32) queue];
  v10 = [(BonjourProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v10 setDiagSessionUUID:*(a1 + 40)];
  [(BonjourProbe *)v10 setDelegate:*(a1 + 32)];
  v4 = *(*(a1 + 32) + 24);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v10 forKeyedSubscript:v6];

  -[AirDropBonjourProbe startAirDropScanWithDuration:](v10, "startAirDropScanWithDuration:", [*(a1 + 48) integerValue]);
  v7 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AirDropBonjourScanProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
    v9 = [*(a1 + 32) delegate];
    [v9 probeStatusUpdate:v8];
  }
}

- (void)bonjourServiceAdded:(id)added isUpdatedService:(BOOL)service
{
  v6 = [added copy];
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ProbeManager_bonjourServiceAdded_isUpdatedService___block_invoke;
  block[3] = &unk_27898BE18;
  serviceCopy = service;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __53__ProbeManager_bonjourServiceAdded_isUpdatedService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 16);
  if (v2 == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 16);

      return [v6 serviceUpdated:v5 type:1];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 16);

      return [v8 serviceAdded:v7 type:1];
    }
  }

  return result;
}

- (void)bonjourServiceRemoved:(id)removed
{
  v4 = [removed copy];
  queue = [(ProbeManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ProbeManager_bonjourServiceRemoved___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __38__ProbeManager_bonjourServiceRemoved___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    return [v5 serviceRemoved:v4 type:1];
  }

  return result;
}

- (void)bonjourProbeComplete:(id)complete status:(unsigned int)status
{
  completeCopy = complete;
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ProbeManager_bonjourProbeComplete_status___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(queue, v8);
}

void __44__ProbeManager_bonjourProbeComplete_status___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 40) allDiscoveredServices];
    v4 = [v3 count];

    v5 = MEMORY[0x277CBEAC0];
    v16 = @"discoveredCount";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v17[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = [*(a1 + 40) diagSessionUUID];
    v9 = [v5 dictionaryWithObjectsAndKeys:{@"AirDropBonjourScanProbe", @"kNDFProbeName", &unk_2847EFD10, @"kNDFProbeStatus", v7, @"kNDFProbeContext", @"Networking", @"kNDFProbeCLIPSModule", v8, @"kNDFProbeSessionUUID", 0}];

    v10 = [*(a1 + 32) delegate];
    [v10 probeStatusUpdate:v9];
  }

  v11 = [*(a1 + 32) probes];
  v12 = *(a1 + 40);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v11 removeObjectForKey:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startICMPPingForDiagSession:(id)session hostName:(id)name ipAddress:(id)address interface:(id)interface pingCount:(id)count interPingInterval:(id)interval burstCount:(id)burstCount interBurstInterval:(id)self0 timeout:(id)self1
{
  sessionCopy = session;
  nameCopy = name;
  addressCopy = address;
  interfaceCopy = interface;
  countCopy = count;
  intervalCopy = interval;
  burstCountCopy = burstCount;
  burstIntervalCopy = burstInterval;
  timeoutCopy = timeout;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __139__ProbeManager_startICMPPingForDiagSession_hostName_ipAddress_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout___block_invoke;
  block[3] = &unk_27898F788;
  block[4] = self;
  v37 = sessionCopy;
  v38 = nameCopy;
  v39 = addressCopy;
  v40 = interfaceCopy;
  v41 = countCopy;
  v42 = intervalCopy;
  v43 = burstCountCopy;
  v44 = burstIntervalCopy;
  v45 = timeoutCopy;
  v35 = timeoutCopy;
  v34 = burstIntervalCopy;
  v25 = burstCountCopy;
  v26 = intervalCopy;
  v27 = countCopy;
  v28 = interfaceCopy;
  v29 = addressCopy;
  v30 = nameCopy;
  v31 = sessionCopy;
  dispatch_async(queue, block);
}

void __139__ProbeManager_startICMPPingForDiagSession_hostName_ipAddress_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [ICMPPingProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(ICMPPingProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  [(ICMPPingProbe *)v4 setDelegate:*(a1 + 32)];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [*(a1 + 48) length];
  v9 = 48;
  if (!v8)
  {
    v9 = 56;
  }

  v10 = [v5 stringWithFormat:@"%@.%@", v7, *(a1 + v9)];

  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v10];
  v11 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v13 = v12;
    v14 = *(a1 + 40);
    if (v14)
    {
      [v12 setObject:v14 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      v19 = @"hostName";
      v20[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v13 setObject:v16 forKeyedSubscript:@"kNDFProbeContext"];
    }

    v17 = [*(a1 + 32) delegate];
    [v17 probeStatusUpdate:v13];
  }

  -[ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:](v4, "startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:", *(a1 + 56), *(a1 + 48), [*(a1 + 64) unsignedIntValue], objc_msgSend(*(a1 + 72), "integerValue"), objc_msgSend(*(a1 + 88), "integerValue"), 0, objc_msgSend(*(a1 + 80), "integerValue"), objc_msgSend(*(a1 + 96), "integerValue"), objc_msgSend(*(a1 + 104), "integerValue"));

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startAWDLPeerPollingWithDiagSession:(id)session services:(id)services count:(id)count interval:(id)interval
{
  sessionCopy = session;
  servicesCopy = services;
  countCopy = count;
  intervalCopy = interval;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ProbeManager_startAWDLPeerPollingWithDiagSession_services_count_interval___block_invoke;
  block[3] = &unk_27898C108;
  block[4] = self;
  v20 = sessionCopy;
  v21 = servicesCopy;
  v22 = countCopy;
  v23 = intervalCopy;
  v15 = intervalCopy;
  v16 = countCopy;
  v17 = servicesCopy;
  v18 = sessionCopy;
  dispatch_async(queue, block);
}

void __76__ProbeManager_startAWDLPeerPollingWithDiagSession_services_count_interval___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [AWDLPeerProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(AWDLPeerProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  [(AWDLPeerProbe *)v4 setDelegate:*(a1 + 32)];
  v5 = *(*(a1 + 32) + 24);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setObject:v4 forKeyedSubscript:v7];

  v8 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AWDLPeerPollProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
    v10 = [*(a1 + 32) delegate];
    [v10 probeStatusUpdate:v9];
  }

  v11 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    *buf = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "About to start the AWDL Peer Polling for services:%@ count:%@ interval:%@", buf, 0x20u);
  }

  -[AWDLPeerProbe startAWDLPeerPollingForServices:withCount:interval:](v4, "startAWDLPeerPollingForServices:withCount:interval:", *(a1 + 48), [*(a1 + 56) unsignedIntegerValue], objc_msgSend(*(a1 + 64), "unsignedIntegerValue"));

  v15 = *MEMORY[0x277D85DE8];
}

- (void)awdlPeerPollProbe:(id)probe serviceAdded:(id)added
{
  v5 = [added copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ProbeManager_awdlPeerPollProbe_serviceAdded___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __47__ProbeManager_awdlPeerPollProbe_serviceAdded___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) delegate];
    [v3 serviceAdded:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbe:(id)probe serviceUpdated:(id)updated
{
  v5 = [updated copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ProbeManager_awdlPeerPollProbe_serviceUpdated___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __49__ProbeManager_awdlPeerPollProbe_serviceUpdated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) delegate];
    [v3 serviceUpdated:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbe:(id)probe serviceRemoved:(id)removed
{
  v5 = [removed copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ProbeManager_awdlPeerPollProbe_serviceRemoved___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __49__ProbeManager_awdlPeerPollProbe_serviceRemoved___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) delegate];
    [v3 serviceRemoved:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbeIsComplete:(id)complete
{
  v19[1] = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    peerList = [completeCopy peerList];
    v7 = [peerList count];

    v8 = MEMORY[0x277CBEAC0];
    v18 = @"discoveredCount";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v19[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    diagSessionUUID = [completeCopy diagSessionUUID];
    v12 = [v8 dictionaryWithObjectsAndKeys:{@"AWDLPeerPollProbe", @"kNDFProbeName", &unk_2847EFD10, @"kNDFProbeStatus", v10, @"kNDFProbeContext", @"Networking", @"kNDFProbeCLIPSModule", diagSessionUUID, @"kNDFProbeSessionUUID", 0}];

    delegate = [(ProbeManager *)self delegate];
    [delegate probeStatusUpdate:v12];
  }

  if (completeCopy)
  {
    probes = [(ProbeManager *)self probes];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [probes removeObjectForKey:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error
{
  probeCopy = probe;
  queue = [(ProbeManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ProbeManager_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke;
  v12[3] = &unk_27898F7B0;
  v13 = probeCopy;
  selfCopy = self;
  countCopy = count;
  iterationsCopy = iterations;
  v11 = probeCopy;
  dispatch_async(queue, v12);
}

void __76__ProbeManager_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hostName];
  v3 = [*(v1 + 32) ipAddress];
  if ([v2 length])
  {
    v4 = *(*(v1 + 40) + 32);
    v5 = [*(v1 + 32) hostName];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (*(v1 + 48) != v7)
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 48);
      *buf = 134218240;
      v54 = v7;
      v55 = 2048;
      v56 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "echo reply details count doesn't match successes (%lu/%lu)", buf, 0x16u);
    }
  }

  v10 = [*(v1 + 32) status];
  v11 = *(*(v1 + 40) + 16);
  if (objc_opt_respondsToSelector())
  {
    v46 = v3;
    v47 = v2;
    v12 = &unk_2847EFCF8;
    if (v10 == 2)
    {
      v12 = &unk_2847EFD10;
    }

    v13 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", v12, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v14 = [*(v1 + 32) diagSessionUUID];

    if (v14)
    {
      v15 = [*(v1 + 32) diagSessionUUID];
      [v13 setObject:v15 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v43 = v13;
    v16 = [MEMORY[0x277CBEB18] array];
    if (*(v1 + 56))
    {
      v17 = 0;
      do
      {
        [v16 addObject:&unk_2847EFD28];
        ++v17;
      }

      while (v17 < *(v1 + 56));
    }

    v44 = v6;
    v45 = v1;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v48 + 1) + 8 * i);
          v24 = [v23 objectForKeyedSubscript:@"sequence"];
          v25 = [v24 unsignedIntegerValue];

          if (v25 < [v16 count])
          {
            v26 = MEMORY[0x277CCABB0];
            v27 = [v23 objectForKeyedSubscript:@"duration_ms"];
            v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "unsignedIntegerValue")}];
            [v16 setObject:v28 atIndexedSubscript:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v20);
    }

    v29 = [MEMORY[0x277CBEB38] dictionaryWithObject:v16 forKey:@"pingTime_ms"];
    v1 = v45;
    v30 = [*(v45 + 32) hostName];

    if (v30)
    {
      v31 = [*(v45 + 32) hostName];
      [v29 setObject:v31 forKeyedSubscript:@"hostName"];
    }

    [v43 setObject:v29 forKeyedSubscript:@"kNDFProbeContext"];
    v32 = [*(v45 + 40) delegate];
    [v32 probeStatusUpdate:v43];

    v3 = v46;
    v2 = v47;
    v6 = v44;
  }

  v33 = *(*(v1 + 40) + 32);
  v34 = [*(v1 + 32) hostName];
  [v33 removeObjectForKey:v34];

  v35 = MEMORY[0x277CCACA8];
  v36 = *(v1 + 32);
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  if ([v2 length])
  {
    v39 = v2;
  }

  else
  {
    v39 = v3;
  }

  v40 = [v35 stringWithFormat:@"%@.%@", v38, v39];

  v41 = [*(v1 + 40) probes];
  [v41 removeObjectForKey:v40];

  v42 = *MEMORY[0x277D85DE8];
}

- (void)icmpPingProbe:(id)probe echoResponseReceived:(id)received success:(BOOL)success
{
  probeCopy = probe;
  receivedCopy = received;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ProbeManager_icmpPingProbe_echoResponseReceived_success___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v13 = probeCopy;
  v14 = receivedCopy;
  v10 = receivedCopy;
  v11 = probeCopy;
  dispatch_async(queue, block);
}

void __59__ProbeManager_icmpPingProbe_echoResponseReceived_success___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = [*(a1 + 40) hostName];
  v7 = [v2 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = *(*(a1 + 32) + 32);
    v9 = [*(a1 + 40) hostName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  [v7 addObject:*(a1 + 48)];
  v10 = *(*(a1 + 32) + 16);
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v12 = [*(a1 + 40) diagSessionUUID];

    if (v12)
    {
      v13 = [*(a1 + 40) diagSessionUUID];
      [v11 setObject:v13 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    [*(a1 + 40) percentComplete];
    v15 = v14;
    v16 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "percentComplete is %.1f", buf, 0xCu);
    }

    v18 = MEMORY[0x277CBEB38];
    *&v17 = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v20 = [v18 dictionaryWithObject:v19 forKey:@"percentComplete"];

    if (v7)
    {
      v21 = [*(a1 + 40) hostName];
      [v20 setObject:v21 forKeyedSubscript:@"hostName"];
    }

    [v11 setObject:v20 forKeyedSubscript:@"kNDFProbeContext"];
    v22 = [*(a1 + 32) delegate];
    [v22 probeStatusUpdate:v11];
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end