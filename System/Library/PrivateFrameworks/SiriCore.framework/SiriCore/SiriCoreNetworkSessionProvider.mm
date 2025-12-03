@interface SiriCoreNetworkSessionProvider
- (BOOL)providerStatsIndicatePoorLinkQuality;
- (SiriCoreNetworkSessionProvider)initWithQueue:(id)queue;
- (id)analysisInfo;
- (id)connectionType;
- (id)delegate;
- (void)URLSession:(id)session betterRouteDiscoveredForStreamTask:(id)task;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session streamTask:(id)task didBecomeInputStream:(id)stream outputStream:(id)outputStream;
- (void)_cancelOpenTimer;
- (void)_cancelStaleConnectionTimer;
- (void)_closeWithError:(id)error;
- (void)_invokeOpenCompletionWithError:(id)error;
- (void)_setupOpenTimer;
- (void)_setupStaleConnectionTimer;
- (void)_streamDidBecomeUnviable;
- (void)close;
- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion;
- (void)readData:(id)data;
- (void)setPolicyRoute:(id)route;
- (void)setProviderConnectionPolicy:(id)policy;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)writeData:(id)data completion:(id)completion;
@end

@implementation SiriCoreNetworkSessionProvider

- (void)writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  if (self->_outputStream)
  {
    ++self->_readWriteCounter;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SiriCoreNetworkSessionProvider_writeData_completion___block_invoke;
    v10[3] = &unk_279BD59A0;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_data_apply(dataCopy, v10);
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:11 userInfo:0];
  v9 = v12[5];
  v12[5] = v8;

  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy, v12[5]);
  }

LABEL_6:
  _Block_object_dispose(&v11, 8);
}

BOOL __55__SiriCoreNetworkSessionProvider_writeData_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(*(a1 + 32) + 10400) write:a4 maxLength:a5];
  if (v6 < 0)
  {
    v7 = [*(*(a1 + 32) + 10400) streamError];
    v8 = v7;
    if (!v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:26 userInfo:0];
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    if (!v7)
    {
    }
  }

  return v6 >= 0;
}

- (void)readData:(id)data
{
  dataCopy = data;
  readGroup = self->_readGroup;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SiriCoreNetworkSessionProvider_readData___block_invoke;
  v8[3] = &unk_279BD6148;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_group_notify(readGroup, queue, v8);
}

void __43__SiriCoreNetworkSessionProvider_readData___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 10424);
  v2 = *(a1 + 32);
  v3 = *(v2 + 10376);
  if (v3)
  {
    v4 = [v3 read:v2 + 136 maxLength:10240];
    v5 = *(a1 + 32);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v9 = dispatch_data_create((v5 + 136), v4, 0, 0);
      dispatch_group_enter(*(*(a1 + 32) + 10384));
      v6 = v9;
      v7 = 0;
      *(*(a1 + 32) + 10392) = 1;
      goto LABEL_7;
    }

    v8 = [*(v5 + 10376) streamError];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:11 userInfo:0];
  }

  v7 = v8;
  v6 = 0;
LABEL_7:
  v10 = v6;
  (*(*(a1 + 40) + 16))();
}

- (void)setProviderConnectionPolicy:(id)policy
{
  v4 = [policy copy];
  policy = self->_policy;
  self->_policy = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPolicyRoute:(id)route
{
  v4 = [route copy];
  route = self->_route;
  self->_route = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_closeWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CEF0A8];
  v6 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SiriCoreNetworkSessionProvider _closeWithError:]";
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s ", &v23, 0xCu);
  }

  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  urlSession = self->_urlSession;
  self->_urlSession = 0;

  [(NSOperationQueue *)self->_opQueue cancelAllOperations];
  opQueue = self->_opQueue;
  self->_opQueue = 0;

  inputStream = self->_inputStream;
  if (inputStream)
  {
    [(NSInputStream *)inputStream close];
    v10 = self->_inputStream;
    self->_inputStream = 0;
  }

  else
  {
    [(NSURLSessionStreamTask *)self->_streamTask closeRead];
  }

  if (self->_waitingOnReadGroup)
  {
    dispatch_group_leave(self->_readGroup);
    self->_waitingOnReadGroup = 0;
  }

  outputStream = self->_outputStream;
  if (outputStream)
  {
    [(NSOutputStream *)outputStream close];
    v12 = self->_outputStream;
    self->_outputStream = 0;
  }

  else
  {
    [(NSURLSessionStreamTask *)self->_streamTask closeWrite];
  }

  streamTask = self->_streamTask;
  self->_streamTask = 0;

  [(SiriCoreNetworkSessionProvider *)self _cancelOpenTimer];
  [(SiriCoreNetworkSessionProvider *)self _cancelStaleConnectionTimer];
  if (self->_completion_block)
  {
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "[SiriCoreNetworkSessionProvider _closeWithError:]";
      _os_log_error_impl(&dword_2669D1000, v14, OS_LOG_TYPE_ERROR, "%s Invoking open completion on close", &v23, 0xCu);
      if (errorCopy)
      {
        goto LABEL_15;
      }
    }

    else if (errorCopy)
    {
LABEL_15:
      [(SiriCoreNetworkSessionProvider *)self _invokeOpenCompletionWithError:errorCopy];
      goto LABEL_16;
    }

    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:17 userInfo:0];
    goto LABEL_15;
  }

LABEL_16:
  v15 = self->_urlSession;
  self->_urlSession = 0;

  self->_interfaceIndex = 0;
  interfaceName = self->_interfaceName;
  self->_interfaceName = 0;

  self->_isCanceled = 1;
  resolvedHost = self->_resolvedHost;
  self->_resolvedHost = 0;

  url = self->_url;
  self->_url = 0;

  connectionId = self->_connectionId;
  self->_connectionId = 0;

  connectionType = self->_connectionType;
  self->_connectionType = 0;

  route = self->_route;
  self->_route = 0;

  v22 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SiriCoreNetworkSessionProvider_close__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)providerStatsIndicatePoorLinkQuality
{
  v18 = *MEMORY[0x277D85DE8];
  outputStream = self->_outputStream;
  if (outputStream)
  {
    v3 = outputStream;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [(NSOutputStream *)v3 propertyForKey:*MEMORY[0x277CBACB8]];
    if ([v4 count])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __70__SiriCoreNetworkSessionProvider_providerStatsIndicatePoorLinkQuality__block_invoke;
      v9[3] = &unk_279BD5978;
      v9[4] = &v10;
      [v4 enumerateKeysAndObjectsUsingBlock:v9];
    }

    if (v11[3])
    {
      v5 = 1;
    }

    else
    {
      v6 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[SiriCoreNetworkSessionProvider providerStatsIndicatePoorLinkQuality]";
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s %@ has poor quality.", buf, 0x16u);
        v5 = *(v11 + 24);
      }

      else
      {
        v5 = 0;
      }
    }

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void __70__SiriCoreNetworkSessionProvider_providerStatsIndicatePoorLinkQuality__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 bytes];
  v7 = v6;
  v8 = MEMORY[0x277CEF0A8];
  if ((*v6 & 0xFE) == 4 && *(v6 + 92) <= 0x100uLL)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[SiriCoreNetworkSessionProvider providerStatsIndicatePoorLinkQuality]_block_invoke";
      v20 = 2112;
      *v21 = v5;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s Treating %@ as ok quality", &v18, 0x16u);
    }
  }

  v10 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    v12 = *(v7 + 20);
    v11 = *(v7 + 24);
    v13 = *(v7 + 28);
    v14 = *(v7 + 64);
    v15 = *(v7 + 92);
    v16 = *(v7 + 284);
    v18 = 136316930;
    v19 = "[SiriCoreNetworkSessionProvider providerStatsIndicatePoorLinkQuality]_block_invoke";
    v20 = 1024;
    *v21 = v11;
    *&v21[4] = 1024;
    *&v21[6] = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 1024;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    v28 = 2048;
    v29 = v16;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s TCP srtt: %d rttcur:%d rttvar:%d sbbytes:%d txunacked:%lld txretransmitpackets:%lld for if=%@", &v18, 0x42u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)analysisInfo
{
  v3 = [SiriCoreAceConnectionAnalysisInfo alloc];
  url = self->_url;
  interfaceIndex = self->_interfaceIndex;
  prefersWWAN = self->_prefersWWAN;
  connectionType = [(SiriCoreNetworkSessionProvider *)self connectionType];
  policyId = [(SAConnectionPolicy *)self->_policy policyId];
  v9 = [(SiriCoreAceConnectionAnalysisInfo *)v3 initWithConnectionURL:url interfaceIndex:interfaceIndex sendBufferSize:&unk_2878381E0 wwanPreferred:prefersWWAN connectionType:connectionType policyId:policyId];

  return v9;
}

- (id)connectionType
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_urlSession)
  {
    v15 = [[SiriCoreConnectionType alloc] initWithTechnology:0];
    goto LABEL_23;
  }

  connectionType = self->_connectionType;
  if (!connectionType)
  {
    v4 = self->_outputStream;
    isMPTCP = self->_isMPTCP;
    v6 = [(NSOutputStream *)v4 propertyForKey:*MEMORY[0x277CBADC0]];
    bOOLValue = [v6 BOOLValue];

    v8 = MEMORY[0x277CEF0A8];
    v9 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithBool:isMPTCP];
      v13 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v27 = 136315650;
      v28 = "[SiriCoreNetworkSessionProvider connectionType]";
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Connection is MPTCP %@ isCellular %@", &v27, 0x20u);
    }

    if (isMPTCP)
    {
      v14 = [[SiriCoreConnectionType alloc] initWithTechnology:3000];
    }

    else
    {
      v16 = [(NSOutputStream *)v4 propertyForKey:*MEMORY[0x277CBAE18]];
      interfaceName = self->_interfaceName;
      self->_interfaceName = v16;

      v18 = self->_interfaceName;
      v19 = *v8;
      v20 = os_log_type_enabled(*v8, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (v20)
        {
          v27 = 136315394;
          v28 = "[SiriCoreNetworkSessionProvider connectionType]";
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s Interface name is %@.", &v27, 0x16u);
          v18 = self->_interfaceName;
        }

        self->_interfaceIndex = if_nametoindex([(NSString *)v18 UTF8String]);
      }

      else
      {
        if (v20)
        {
          v27 = 136315138;
          v28 = "[SiriCoreNetworkSessionProvider connectionType]";
          _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s No interface name found.", &v27, 0xCu);
        }

        if (self->_connectByPOPEnabled)
        {
          v21 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
          {
            v27 = 136315138;
            v28 = "[SiriCoreNetworkSessionProvider connectionType]";
            _os_log_impl(&dword_2669D1000, v21, OS_LOG_TYPE_INFO, "%s Possible POP connection.", &v27, 0xCu);
          }

          v22 = [[SiriCoreConnectionType alloc] initWithTechnology:3003];
          v23 = self->_connectionType;
          self->_connectionType = v22;
        }
      }

      if (self->_connectionType)
      {
        goto LABEL_21;
      }

      v14 = [SiriCoreNetworkManager connectionTypeForInterfaceName:self->_interfaceName isCellular:bOOLValue];
    }

    v24 = self->_connectionType;
    self->_connectionType = v14;

LABEL_21:
    connectionType = self->_connectionType;
  }

  v15 = connectionType;
LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion
{
  v100 = *MEMORY[0x277D85DE8];
  lCopy = l;
  idCopy = id;
  payloadCopy = payload;
  completionCopy = completion;
  kdebug_trace();
  if (self->_completion_block)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:18 userInfo:0];
    [(SiriCoreNetworkSessionProvider *)self _invokeOpenCompletionWithError:v12];
  }

  [(SiriCoreNetworkSessionProvider *)self _setupOpenTimer];
  v13 = self->_route;
  prefersWWAN = self->_prefersWWAN;
  v14 = [(SiriCoreNetworkSessionProvider *)lCopy copy];
  url = self->_url;
  self->_url = v14;

  v16 = [(SiriCoreNetworkSessionProvider *)idCopy copy];
  connectionId = self->_connectionId;
  self->_connectionId = v16;

  self->_isCanceled = 0;
  v18 = v13;
  host = [(SiriCoreNetworkSessionProvider *)lCopy host];
  resolver = [(SAConnectionPolicyRoute *)v18 resolver];
  cname = [(SAConnectionPolicyRoute *)v18 cname];
  v22 = cname;
  if (cname)
  {
    v23 = cname;
  }

  else
  {
    v23 = host;
  }

  v24 = v23;

  if (resolver)
  {
    type = [(SAConnectionPolicyRoute *)v18 type];
    v26 = [type isEqualToString:*MEMORY[0x277D47CB8]];

    if (v26)
    {
      host2 = [(SAConnectionPolicyRoute *)v18 host];
      v28 = host2;
      if (host2)
      {
        v29 = host2;
      }

      else
      {
        v29 = host;
      }

      v30 = v29;

      v24 = v30;
    }
  }

  if (!v24 && ([MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:10 userInfo:0], (v31 = objc_claimAutoreleasedReturnValue()) != 0) || self->_isCanceled && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"SiriCoreSiriConnectionErrorDomain", 11, 0), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v36 = v31;
    v37 = completionCopy;
LABEL_70:
    (v37)[2](v37, v36);

    goto LABEL_71;
  }

  connectByPOPEnabled = self->_connectByPOPEnabled;
  port = [(SiriCoreNetworkSessionProvider *)lCopy port];
  scheme = [(SiriCoreNetworkSessionProvider *)lCopy scheme];
  v33 = [scheme caseInsensitiveCompare:@"https"];
  policy = self->_policy;
  if (policy)
  {
    enableTcpFastOpen = [(SAConnectionPolicy *)policy enableTcpFastOpen];
    HIDWORD(v74) = [enableTcpFastOpen BOOLValue];
  }

  else if (AFIsInternalInstall() && (AFIsNano() & 1) == 0)
  {
    HIDWORD(v74) = _AFPreferencesShouldUseTFO();
  }

  else
  {
    HIDWORD(v74) = 0;
  }

  v80 = idCopy;
  if (port)
  {
    intValue = [port intValue];
  }

  else
  {
    if (v33)
    {
      v38 = 80;
    }

    else
    {
      v38 = 443;
    }

    intValue = v38;
  }

  LODWORD(v74) = v33 == 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = *MEMORY[0x277CEF0A8];
  v77 = v33;
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v41 = v33 == 0;
    v42 = dictionary;
    v43 = port;
    v44 = MEMORY[0x277CCABB0];
    v45 = v40;
    v46 = [v44 numberWithBool:v41];
    v47 = [MEMORY[0x277CCABB0] numberWithBool:prefersWWAN];
    *buf = 136316418;
    v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
    v94 = 2112;
    selfCopy = lCopy;
    v96 = 2112;
    v97 = v24;
    v98 = 1024;
    *v99 = intValue;
    *&v99[4] = 2112;
    *&v99[6] = v46;
    *&v99[14] = 2112;
    *&v99[16] = v47;
    _os_log_impl(&dword_2669D1000, v45, OS_LOG_TYPE_INFO, "%s Connecting to %@ (resolved host = %@, port = %u, secure = %@, WWAN preferred %@)", buf, 0x3Au);

    port = v43;
    dictionary = v42;
    v33 = v77;
  }

  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setAllowsCellularAccess:1];
  [defaultSessionConfiguration setNetworkServiceType:4];
  v49 = *MEMORY[0x277CBED28];
  [dictionary setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CBACD8]];
  [dictionary setObject:v49 forKey:*MEMORY[0x277CBADB8]];
  if (prefersWWAN)
  {
    v50 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
      _os_log_impl(&dword_2669D1000, v50, OS_LOG_TYPE_INFO, "%s Preferring WWAN", buf, 0xCu);
    }

    [defaultSessionConfiguration set_CTDataConnectionServiceType:*MEMORY[0x277CC39E0]];
  }

  else if ((AFIsHorseman() & 1) == 0)
  {
    mptcp = [(SAConnectionPolicyRoute *)v18 mptcp];
    v52 = mptcp;
    if (mptcp)
    {
      bOOLValue = [mptcp BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [defaultSessionConfiguration set_allowsMultipathTCP:bOOLValue];
    [defaultSessionConfiguration setMultipathServiceType:2];
  }

  if (connectByPOPEnabled)
  {
    v54 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
      _os_log_impl(&dword_2669D1000, v54, OS_LOG_TYPE_INFO, "%s Did not enable TLS. Using POP Connection method.", buf, 0xCu);
    }

    [defaultSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"ace.siri.apple.com"];
  }

  else if (v33)
  {
    v55 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
      v94 = 2112;
      selfCopy = lCopy;
      _os_log_impl(&dword_2669D1000, v55, OS_LOG_TYPE_INFO, "%s Connecting to insecure ace server: %@", buf, 0x16u);
    }
  }

  else
  {
    v90 = *MEMORY[0x277CBACD0];
    v91 = v49;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    [dictionary setObject:v56 forKey:*MEMORY[0x277CBAE68]];
    [defaultSessionConfiguration set_allowsTLSSessionTickets:1];
    if (v76)
    {
      [defaultSessionConfiguration set_allowsTCPFastOpen:1];
    }
  }

  [defaultSessionConfiguration set_socketStreamProperties:dictionary];
  [defaultSessionConfiguration set_allowTCPIOConnectionStreamTask:1];
  v57 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v58 = v57;
    _socketStreamProperties = [defaultSessionConfiguration _socketStreamProperties];
    *buf = 136315394;
    v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
    v94 = 2112;
    selfCopy = _socketStreamProperties;
    _os_log_impl(&dword_2669D1000, v58, OS_LOG_TYPE_INFO, "%s stream properties %@", buf, 0x16u);
  }

  v60 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:self->_opQueue];
  v61 = v60;
  if (v24 && ([v60 streamTaskWithHostName:v24 port:intValue], v62 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&self->_resolvedHost, v24), v62))
  {
    v83 = port;
    v63 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
      v64 = @"No TFO";
      v94 = 2112;
      selfCopy = self;
      if ((v75 & v76) != 0)
      {
        v64 = @"Enabling TFO";
      }

      v96 = 2112;
      v97 = v62;
      v98 = 2112;
      *v99 = v24;
      *&v99[8] = 2112;
      *&v99[10] = v64;
      _os_log_impl(&dword_2669D1000, v63, OS_LOG_TYPE_INFO, "%s self %@, task: %@ host:%@ %@", buf, 0x34u);
    }

    v65 = self->_openTimer;
    self->_isEstablishing = 1;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __98__SiriCoreNetworkSessionProvider_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke;
    v86[3] = &unk_279BD5950;
    v66 = v65;
    v87 = v66;
    selfCopy2 = self;
    v89 = completionCopy;
    v67 = MEMORY[0x26D5E5DB0](v86);
    completion_block = self->_completion_block;
    self->_completion_block = v67;

    [(NSURLSessionStreamTask *)v62 set_initialDataPayload:payloadCopy];
    if (connectByPOPEnabled)
    {
      if (v80)
      {
        NetworkServiceProxySetServiceNameForConnection();
      }

      v69 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
        v94 = 2112;
        selfCopy = v80;
        _os_log_impl(&dword_2669D1000, v69, OS_LOG_TYPE_INFO, "%s Setting NSPServiceName to %@", buf, 0x16u);
      }
    }

    else if (!v77)
    {
      [(NSURLSessionStreamTask *)v62 startSecureConnection];
    }

    [(NSURLSessionStreamTask *)v62 resume];
    [(NSURLSessionStreamTask *)v62 captureStreams];
    [v61 finishTasksAndInvalidate];
    streamTask = self->_streamTask;
    self->_streamTask = v62;
    v72 = v62;

    objc_storeStrong(&self->_urlSession, v61);
    v36 = 0;
    port = v83;
  }

  else
  {
    v70 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v93 = "[SiriCoreNetworkSessionProvider openConnectionForURL:withConnectionId:initialPayload:completion:]";
      v94 = 2112;
      selfCopy = v24;
      _os_log_impl(&dword_2669D1000, v70, OS_LOG_TYPE_INFO, "%s Failed to create task for host:%@", buf, 0x16u);
    }

    [(SiriCoreNetworkSessionProvider *)self _cancelOpenTimer];
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:13 userInfo:0];
    [v61 invalidateAndCancel];
  }

  idCopy = v80;
  v37 = completionCopy;
  if (v36)
  {
    goto LABEL_70;
  }

LABEL_71:

  v73 = *MEMORY[0x277D85DE8];
}

void __98__SiriCoreNetworkSessionProvider_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  dispatch_source_cancel(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 10408);
  if (v4 == *(a1 + 32))
  {
    *(v3 + 10408) = 0;

    v3 = *(a1 + 40);
  }

  *(v3 + 73) = 0;
  *(*(a1 + 40) + 74) = v5 == 0;
  (*(*(a1 + 48) + 16))();
}

- (void)_cancelOpenTimer
{
  openTimer = self->_openTimer;
  if (openTimer)
  {
    dispatch_source_cancel(openTimer);
    v4 = self->_openTimer;
    self->_openTimer = 0;
  }
}

- (void)_setupOpenTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SiriCoreNetworkSessionProvider__setupOpenTimer__block_invoke;
  v8[3] = &unk_279BD6540;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_source_set_event_handler(v5, v8);
  dispatch_resume(v5);
  openTimer = self->_openTimer;
  self->_openTimer = v5;
  v7 = v5;
}

void __49__SiriCoreNetworkSessionProvider__setupOpenTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriCoreNetworkSessionProvider _setupOpenTimer]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Open timer firing", &v9, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 10408);
  if (*(a1 + 32) == v4)
  {
    *(v3 + 10408) = 0;
  }

  v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:4 userInfo:0];
  if (AFDeviceSupportsSiriUOD() && (v6 = objc_loadWeakRetained((*(a1 + 40) + 8)), v6, v6))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    [WeakRetained connectionProvider:*(a1 + 40) receivedError:v5];
  }

  else
  {
    [*(a1 + 40) _closeWithError:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cancelStaleConnectionTimer
{
  staleConnectionTimer = self->_staleConnectionTimer;
  if (staleConnectionTimer)
  {
    dispatch_source_cancel(staleConnectionTimer);
    v4 = self->_staleConnectionTimer;
    self->_staleConnectionTimer = 0;
  }
}

- (void)_setupStaleConnectionTimer
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  readWriteCounter = self->_readWriteCounter;
  self->_readWriteCounter = readWriteCounter + 1;
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  staleConnectionInterval = self->_staleConnectionInterval;
  if (staleConnectionInterval == 0.0)
  {
    v5 = 180000000000;
  }

  else
  {
    v5 = (staleConnectionInterval * 1000000000.0);
  }

  v6 = dispatch_time(0, v5);
  dispatch_source_set_timer(v3, v6, v5, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__SiriCoreNetworkSessionProvider__setupStaleConnectionTimer__block_invoke;
  handler[3] = &unk_279BD6450;
  v12 = v13;
  handler[4] = self;
  v7 = v3;
  v11 = v7;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(v7);
  staleConnectionTimer = self->_staleConnectionTimer;
  self->_staleConnectionTimer = v7;
  v9 = v7;

  _Block_object_dispose(v13, 8);
}

void __60__SiriCoreNetworkSessionProvider__setupStaleConnectionTimer__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0A8];
  v3 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(*(a1 + 32) + 10424);
    v14 = 136315650;
    v15 = "[SiriCoreNetworkSessionProvider _setupStaleConnectionTimer]_block_invoke";
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_INFO, "%s Checking stale connection. Last counter value %tu current %tu", &v14, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(*(a1 + 32) + 10424);
  if (*(v6 + 24) == v7)
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[SiriCoreNetworkSessionProvider _setupStaleConnectionTimer]_block_invoke";
      _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s Connection is stale!", &v14, 0xCu);
    }

    dispatch_source_cancel(*(a1 + 40));
    v9 = *(a1 + 32);
    v10 = *(v9 + 10416);
    if (*(a1 + 40) == v10)
    {
      *(v9 + 10416) = 0;
    }

    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:30 userInfo:0];
    v12 = [*(a1 + 32) delegate];
    [v12 connectionProvider:*(a1 + 32) receivedError:v11];
  }

  else
  {
    *(v6 + 24) = v7;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_streamDidBecomeUnviable
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SiriCoreNetworkSessionProvider _streamDidBecomeUnviable]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:3 userInfo:0];
  delegate = [(SiriCoreNetworkSessionProvider *)self delegate];
  [delegate connectionProvider:self receivedError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session streamTask:(id)task didBecomeInputStream:(id)stream outputStream:(id)outputStream
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  urlSession = self->_urlSession;
  if (urlSession == sessionCopy)
  {
    self->_urlSession = 0;

    queue = self->_queue;
    if (queue)
    {
      dispatch_assert_queue_V2(queue);
    }

    if (streamCopy && outputStreamCopy)
    {
      [streamCopy setDelegate:self];
      [outputStreamCopy setDelegate:self];
      [streamCopy open];
      [outputStreamCopy open];
      streamError = [streamCopy streamError];
      if (!streamError)
      {
        streamError = [outputStreamCopy streamError];
        if (!streamError)
        {
          if (self->_queue || ([MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:20 userInfo:0], (streamError = objc_claimAutoreleasedReturnValue()) == 0))
          {
            objc_storeStrong(&self->_inputStream, stream);
            objc_storeStrong(&self->_outputStream, outputStream);
            MEMORY[0x26D5E5010](self->_inputStream, self->_queue);
            MEMORY[0x26D5E5060](self->_outputStream, self->_queue);
            objc_initWeak(&location, self);
            v21 = MEMORY[0x277D85DD0];
            v22 = 3221225472;
            v23 = __90__SiriCoreNetworkSessionProvider_URLSession_streamTask_didBecomeInputStream_outputStream___block_invoke;
            v24 = &unk_279BD5928;
            objc_copyWeak(&v25, &location);
            CFWriteStreamSetProperty(outputStreamCopy, *MEMORY[0x277CBAC88], &v21);
            v18 = [outputStreamCopy propertyForKey:{*MEMORY[0x277CBADC8], v21, v22, v23, v24}];
            self->_isMPTCP = [v18 BOOLValue];

            v19 = *MEMORY[0x277CEF0A8];
            if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v28 = "[SiriCoreNetworkSessionProvider URLSession:streamTask:didBecomeInputStream:outputStream:]";
              _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s Connection became InputStreamOutputStream", buf, 0xCu);
            }

            objc_destroyWeak(&v25);
            objc_destroyWeak(&location);
            [(SiriCoreNetworkSessionProvider *)self _cancelOpenTimer];
            goto LABEL_17;
          }
        }
      }

      [streamCopy close];
      [outputStreamCopy close];
      [(SiriCoreNetworkSessionProvider *)self _cancelOpenTimer];
    }

    else
    {
      streamError = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:16 userInfo:0];
      [(SiriCoreNetworkSessionProvider *)self _cancelOpenTimer];
      if (!streamError)
      {
LABEL_17:
        [(SiriCoreNetworkSessionProvider *)self _setupStaleConnectionTimer];
        streamError = 0;
      }
    }

    [(SiriCoreNetworkSessionProvider *)self _invokeOpenCompletionWithError:streamError];

    goto LABEL_19;
  }

  v15 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v28 = "[SiriCoreNetworkSessionProvider URLSession:streamTask:didBecomeInputStream:outputStream:]";
    v29 = 2112;
    v30 = sessionCopy;
    v31 = 2112;
    v32 = urlSession;
    _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Ignoring session callback from session %@ current session %@", buf, 0x20u);
  }

LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
}

void __90__SiriCoreNetworkSessionProvider_URLSession_streamTask_didBecomeInputStream_outputStream___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[SiriCoreNetworkSessionProvider URLSession:streamTask:didBecomeInputStream:outputStream:]_block_invoke";
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Connection viability changed %d", &v8, 0x12u);
  }

  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _streamDidBecomeUnviable];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = MEMORY[0x277CEF0A8];
  v9 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[SiriCoreNetworkSessionProvider URLSession:didBecomeInvalidWithError:]";
    v15 = 2112;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  urlSession = self->_urlSession;
  if (urlSession == sessionCopy)
  {
    self->_urlSession = 0;

    [(SiriCoreNetworkSessionProvider *)self _invokeOpenCompletionWithError:errorCopy];
  }

  else
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "[SiriCoreNetworkSessionProvider URLSession:didBecomeInvalidWithError:]";
      v15 = 2112;
      v16 = sessionCopy;
      v17 = 2112;
      v18 = urlSession;
      _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Ignoring session callback from session %@ current session %@", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session betterRouteDiscoveredForStreamTask:(id)task
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SiriCoreNetworkSessionProvider URLSession:betterRouteDiscoveredForStreamTask:]";
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_INFO, "%s NSURLSession better route available. Not supported.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v20 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SiriCoreNetworkSessionProvider stream:handleEvent:]";
    v16 = 2112;
    v17 = streamCopy;
    v18 = 2048;
    eventCopy = event;
    _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %lu", &v14, 0x20u);
  }

  if (self->_inputStream == streamCopy)
  {
    if (event == 16 || event == 8)
    {
      streamError = [(NSInputStream *)streamCopy streamError];
      v9 = streamError;
      if (streamError)
      {
        v10 = streamError;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:8 userInfo:0];
      }

      v11 = v10;

      [(SiriCoreNetworkSessionProvider *)self _closeWithError:v11];
      delegate = [(SiriCoreNetworkSessionProvider *)self delegate];
      [delegate connectionProvider:self receivedError:v11];
    }

    else if (event == 2 && self->_waitingOnReadGroup)
    {
      dispatch_group_leave(self->_readGroup);
      self->_waitingOnReadGroup = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invokeOpenCompletionWithError:(id)error
{
  completion_block = self->_completion_block;
  if (completion_block)
  {
    errorCopy = error;
    v7 = MEMORY[0x26D5E5DB0](completion_block);
    v6 = self->_completion_block;
    self->_completion_block = 0;

    v7[2](v7, errorCopy);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SiriCoreNetworkSessionProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = SiriCoreNetworkSessionProvider;
  v6 = [(SiriCoreNetworkSessionProvider *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v8 = *(v6 + 11);
    *(v6 + 11) = v7;

    [*(v6 + 11) setUnderlyingQueue:queueCopy];
    [*(v6 + 11) setMaxConcurrentOperationCount:1];
    objc_storeStrong(v6 + 16, queue);
    v9 = dispatch_group_create();
    v10 = *(v6 + 1298);
    *(v6 + 1298) = v9;

    dispatch_group_enter(*(v6 + 1298));
    *(v6 + 10392) = 1;
  }

  return v6;
}

@end