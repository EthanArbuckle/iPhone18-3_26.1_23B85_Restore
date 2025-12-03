@interface SiriNWConnection
- (SiriNWConnection)initWithQueueAndCompletion:(id)completion reason:(id)reason callback:(id)callback;
- (id)_getAttemptedEndpoints;
- (id)_setParametersForHost:(const char *)host useTLS:(BOOL)s initialPayload:(id)payload;
- (void)_cancelOpenTimer;
- (void)_closeWithError:(id)error;
- (void)_configureConnection:(id)connection;
- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion;
- (void)_invokeOpenCompletionWithError:(id)error;
- (void)_setupOpenTimer;
- (void)close;
- (void)dealloc;
- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion;
- (void)runSiriProbeWithDepth:(int64_t)depth trafficClass:(unsigned int)class;
@end

@implementation SiriNWConnection

- (SiriNWConnection)initWithQueueAndCompletion:(id)completion reason:(id)reason callback:(id)callback
{
  completionCopy = completion;
  reasonCopy = reason;
  objc_storeStrong(&self->_queue, completion);
  callbackCopy = callback;
  objc_storeStrong(&self->_reason, reason);
  v12 = MEMORY[0x23839E400](callbackCopy);

  wfcompletion = self->_wfcompletion;
  self->_wfcompletion = v12;

  v14 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v14 setDateFormat:@"yyyy-MM-dd"];
  v15 = [v14 dateFromString:@"2025-12-30"];
  dateToDisable = self->_dateToDisable;
  self->_dateToDisable = v15;

  if ([reasonCopy containsString:@"expireddate"])
  {
    v17 = [v14 dateFromString:@"2024-01-30"];
    v18 = self->_dateToDisable;
    self->_dateToDisable = v17;
  }

  return self;
}

- (void)dealloc
{
  [(SiriNWConnection *)self _closeWithError:0];
  v3.receiver = self;
  v3.super_class = SiriNWConnection;
  [(SiriNWConnection *)&v3 dealloc];
}

- (void)runSiriProbeWithDepth:(int64_t)depth trafficClass:(unsigned int)class
{
  v27[1] = *MEMORY[0x277D85DE8];
  self->_network_traffic_class = class;
  if (depth == 2)
  {
    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"https://guzzoni.apple.com:443/ace"];
    url = self->_url;
    self->_url = v12;
    v10 = 10;
  }

  else if (depth == 1)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:@"https://guzzoni.apple.com:443/"];
    url = self->_url;
    self->_url = v11;
    v10 = 9;
  }

  else
  {
    if (depth)
    {
      goto LABEL_10;
    }

    v6 = [MEMORY[0x277CBEBC0] URLWithString:@"http://guzzoni.apple.com:443/"];
    v7 = self->_url;
    self->_url = v6;

    if (![(NSString *)self->_reason containsString:@"badport"])
    {
      v10 = 8;
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CBEBC0] URLWithString:@"http://guzzoni.apple.com:80/"];
    url = self->_url;
    self->_url = v8;
    v10 = 8;
  }

LABEL_9:
  self->_probeLabel = v10;
LABEL_10:
  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceDate:self->_dateToDisable];
  dateToDisable = self->_dateToDisable;
  if (v15 <= 0.0)
  {
    NSLog(&cfstr_SProbingOkToRu.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]", self->_dateToDisable, v13);
    NSLog(&cfstr_SStartingNwcon.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]", self->_network_traffic_class, depth);
    v23 = self->_url;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__SiriNWConnection_runSiriProbeWithDepth_trafficClass___block_invoke;
    v25[3] = &unk_2789C73D0;
    v25[4] = self;
    [(SiriNWConnection *)self openConnectionForURL:v23 withConnectionId:0 initialPayload:0 completion:v25];
  }

  else
  {
    NSLog(&cfstr_SProbingHasBee.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]", self->_dateToDisable, v13);
    v16 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [mainBundle localizedStringForKey:@"Past Siri Probe Functional Date" value:&stru_28487EF20 table:0];
    v27[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v20 = [v16 errorWithDomain:@"com.apple.wifi.policy" code:1 userInfo:v19];

    if (self->_wfcompletion)
    {
      v21 = MEMORY[0x23839E400]();
      wfcompletion = self->_wfcompletion;
      self->_wfcompletion = 0;

      (v21)[2](v21, 0, v20);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __55__SiriNWConnection_runSiriProbeWithDepth_trafficClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    NSLog(&cfstr_SOpenconnectio.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]_block_invoke", v3);
  }

  else
  {
    NSLog(&cfstr_SOpenconnectio_0.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]_block_invoke");
  }

  if (*(*(a1 + 32) + 72))
  {
    v4 = MEMORY[0x23839E400]();
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = 0;

    (v4)[2](v4, v7 == 0, v7);
  }

  NSLog(&cfstr_SOpenconnectio_1.isa, "[SiriNWConnection runSiriProbeWithDepth:trafficClass:]_block_invoke");
  [*(a1 + 32) _closeWithError:v7];
}

- (void)_invokeOpenCompletionWithError:(id)error
{
  openCompletion = self->_openCompletion;
  if (openCompletion)
  {
    errorCopy = error;
    v7 = MEMORY[0x23839E400](openCompletion);
    v6 = self->_openCompletion;
    self->_openCompletion = 0;

    v7[2](v7, errorCopy);
  }
}

- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = self->_resolvedHost;
  port = [(NSURL *)self->_url port];
  stringValue = [port stringValue];

  scheme = [(NSURL *)self->_url scheme];
  self->_usingTLS = [scheme caseInsensitiveCompare:@"https"] == 0;

  if (!stringValue)
  {
    NSLog(&cfstr_SFailedToFindP.isa, "[SiriNWConnection _getNWConnectionWithInitialData:completion:]", self->_url);
    if (self->_usingTLS)
    {
      stringValue = @"443";
    }

    else
    {
      stringValue = @"80";
    }
  }

  uTF8String = [(NSString *)v7 UTF8String];
  host = nw_endpoint_create_host(uTF8String, [(__CFString *)stringValue UTF8String]);
  if (host || ([MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifi.policy.siri" code:22 userInfo:0], v16 = objc_claimAutoreleasedReturnValue(), NSLog(&cfstr_SFailedToCreat_4.isa, "-[SiriNWConnection _getNWConnectionWithInitialData:completion:]", v16), !v16))
  {
    v13 = [(SiriNWConnection *)self _setParametersForHost:uTF8String useTLS:self->_usingTLS initialPayload:dataCopy];
    v14 = nw_connection_create(host, v13);
    v15 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    [v15 networkActivityAddNWConnection:v14 toActivityWithLabel:self->_probeLabel];

    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifi.policy.siri" code:23 userInfo:0];
      NSLog(&cfstr_SFailedToCreat_5.isa, "[SiriNWConnection _getNWConnectionWithInitialData:completion:]", v16);
    }
  }

  else
  {
    v14 = 0;
  }

  completionCopy[2](completionCopy, v14, v16);
}

- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  idCopy = id;
  lCopy = l;
  host = [lCopy host];
  v15 = [host copy];
  resolvedHost = self->_resolvedHost;
  self->_resolvedHost = v15;

  v17 = [lCopy copy];
  url = self->_url;
  self->_url = v17;

  v19 = [idCopy copy];
  connectionId = self->_connectionId;
  self->_connectionId = v19;

  self->_isEstablishing = 1;
  [(SiriNWConnection *)self _setupOpenTimer];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__SiriNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke;
  v25[3] = &unk_2789C7940;
  v25[4] = self;
  v26 = completionCopy;
  v21 = completionCopy;
  v22 = MEMORY[0x23839E400](v25);
  openCompletion = self->_openCompletion;
  self->_openCompletion = v22;

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__SiriNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke_2;
  v24[3] = &unk_2789C7968;
  v24[4] = self;
  [(SiriNWConnection *)self _getNWConnectionWithInitialData:payloadCopy completion:v24];
}

void __84__SiriNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _cancelOpenTimer];
  *(*(a1 + 32) + 81) = 0;
  *(*(a1 + 32) + 82) = v4 == 0;
  (*(*(a1 + 40) + 16))();
}

void __84__SiriNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v7)
  {
    [*(a1 + 32) _configureConnection:v7];
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifi.policy.siri" code:31 userInfo:0];
    }

    [*(a1 + 32) _closeWithError:v6];
  }
}

- (void)_configureConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_connection, connection);
  objc_storeStrong(&self->_content_context, *MEMORY[0x277CD9220]);
  nw_connection_set_queue(connectionCopy, self->_queue);
  v6 = connectionCopy;
  MEMORY[0x23839DF90]();
  nw_connection_set_read_close_handler();
  nw_connection_set_write_close_handler();
  nw_connection_start(v6);
}

void __41__SiriNWConnection__configureConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v7 = nw_error_copy_cf_error(v5);
  if (!v7)
  {
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  id = *(a1 + 32);
  if (id)
  {
    id = nw_connection_get_id();
  }

  NSLog(&cfstr_SStateDErrorFo.isa, "[SiriNWConnection _configureConnection:]_block_invoke", a2, v7, id);
  v9 = 0;
LABEL_8:
  objc_storeStrong((*(a1 + 40) + 168), v7);
  v10 = *(a1 + 40);
  v11 = *(v10 + 80);
  if ((v11 & 1) == 0 && *(a1 + 32) == *(v10 + 40))
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v16 = nw_connection_get_id();
          NSLog(&cfstr_SStateNwConnec_1.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v16);
          [*(a1 + 40) _invokeOpenCompletionWithError:0];
          break;
        case 4:
          v21 = nw_connection_get_id();
          NSLog(&cfstr_SStateNwConnec_3.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v21);
          break;
        case 5:
          v13 = nw_connection_get_id();
          NSLog(&cfstr_SStateNwConnec_4.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v13);
          v14 = MEMORY[0x277CCA9B8];
          if (v9)
          {
            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifi.policy.siri" code:16 userInfo:0];
          }

          else
          {
            v22 = *MEMORY[0x277CCA7E8];
            v23[0] = v7;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
            v15 = [v14 errorWithDomain:@"com.apple.wifi.policy.siri" code:16 userInfo:v17];
          }

          [*(a1 + 40) _closeWithError:v15];

          break;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        v20 = nw_connection_get_id();
        NSLog(&cfstr_SStateNwConnec.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v20);
      }

      else if (a2 == 2)
      {
        v18 = nw_connection_get_id();
        NSLog(&cfstr_SStateNwConnec_0.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v18);
      }
    }

    else
    {
      v19 = nw_connection_get_id();
      NSLog(&cfstr_SStateNwConnec_2.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v19);
    }
  }

  else
  {
    NSLog(&cfstr_SGotNwConnecti.isa, "[SiriNWConnection _configureConnection:]_block_invoke", v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SiriNWConnection__configureConnection___block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_SReadClosed.isa, "[SiriNWConnection _configureConnection:]_block_invoke_2");
  v2 = *(a1 + 32);

  return [v2 _closeWithError:0];
}

uint64_t __41__SiriNWConnection__configureConnection___block_invoke_3(uint64_t a1)
{
  NSLog(&cfstr_SWriteClosed.isa, "[SiriNWConnection _configureConnection:]_block_invoke_3");
  v2 = *(a1 + 32);

  return [v2 _closeWithError:0];
}

- (void)_setupOpenTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SiriNWConnection__setupOpenTimer__block_invoke;
  v8[3] = &unk_2789C6608;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_source_set_event_handler(v5, v8);
  dispatch_resume(v5);
  openTimer = self->_openTimer;
  self->_openTimer = v5;
  v7 = v5;
}

void __35__SiriNWConnection__setupOpenTimer__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_SOpenTimerFiri.isa, "[SiriNWConnection _setupOpenTimer]_block_invoke");
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(v2 + 120);
  if (*(a1 + 32) == v3)
  {
    *(v2 + 120) = 0;
  }

  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = v4;
  v6 = *(*(a1 + 40) + 168);
  if (v6)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v5 initWithDomain:@"com.apple.wifi.policy.siri" code:4 userInfo:v7];
  }

  else
  {
    v8 = [v4 initWithDomain:@"com.apple.wifi.policy.siri" code:4 userInfo:0];
  }

  [*(a1 + 40) _closeWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
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

- (void)_closeWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_isCanceled)
  {
    NSLog(&cfstr_SIsAlredyCance.isa, "[SiriNWConnection _closeWithError:]");
  }

  else
  {
    if (errorCopy)
    {
      NSLog(&cfstr_SClosingWithEr.isa, "[SiriNWConnection _closeWithError:]", errorCopy);
    }

    else
    {
      NSLog(&cfstr_SClosing.isa, "[SiriNWConnection _closeWithError:]");
    }

    resolvedHost = self->_resolvedHost;
    self->_resolvedHost = 0;

    self->_isReady = 0;
    self->_isCanceled = 1;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __36__SiriNWConnection__closeWithError___block_invoke;
    v29[3] = &unk_2789C6608;
    v29[4] = self;
    v30 = v5;
    v7 = MEMORY[0x23839E400](v29);
    v8 = v7;
    connection = self->_connection;
    if (connection)
    {
      v10 = connection;
      v11 = self->_connection;
      self->_connection = 0;

      v12 = self->_content_context;
      content_context = self->_content_context;
      self->_content_context = 0;

      if (!self->_attemptedEndpoints)
      {
        _getAttemptedEndpoints = [(SiriNWConnection *)self _getAttemptedEndpoints];
        attemptedEndpoints = self->_attemptedEndpoints;
        self->_attemptedEndpoints = _getAttemptedEndpoints;
      }

      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v17 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
      probeLabel = self->_probeLabel;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __36__SiriNWConnection__closeWithError___block_invoke_2;
      v27[3] = &unk_2789C6630;
      v28 = v16;
      v19 = v16;
      [v17 networkActivityRemoveNWConnection:v10 fromActivityWithLabel:probeLabel completion:v27];

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__SiriNWConnection__closeWithError___block_invoke_3;
      block[3] = &unk_2789C7470;
      v24 = v10;
      v25 = v12;
      v26 = v8;
      v21 = v12;
      v22 = v10;
      dispatch_group_notify(v19, queue, block);
    }

    else
    {
      (*(v7 + 16))(v7);
    }
  }
}

void __36__SiriNWConnection__closeWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[14])
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.wifi.policy.siri" code:17 userInfo:0];
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    v6 = v4;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    [v2 _invokeOpenCompletionWithError:v5];
  }
}

uint64_t __36__SiriNWConnection__closeWithError___block_invoke_3(uint64_t a1)
{
  nw_connection_send(*(a1 + 32), 0, *(a1 + 40), 1, &__block_literal_global_7);
  v2 = *(a1 + 32);
  nw_connection_set_read_close_handler();
  v3 = *(a1 + 32);
  nw_connection_set_write_close_handler();
  nw_connection_cancel(*(a1 + 32));
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __36__SiriNWConnection__closeWithError___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    error = v2;
    error_code = nw_error_get_error_code(v2);
    v4 = nw_error_get_error_domain(error) == nw_error_domain_posix;
    v2 = error;
    if (!v4 || error_code != 57)
    {
      NSLog(&cfstr_SCloseErrorIs.isa, "[SiriNWConnection _closeWithError:]_block_invoke_4", error);
      v2 = error;
    }
  }
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SiriNWConnection_close__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_setParametersForHost:(const char *)host useTLS:(BOOL)s initialPayload:(id)payload
{
  sCopy = s;
  payloadCopy = payload;
  v9 = MEMORY[0x23839E400](*MEMORY[0x277CD9238]);
  if (sCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__SiriNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke;
    v20[3] = &__block_descriptor_33_e42_v16__0__NSObject_OS_nw_protocol_options__8l;
    v21 = 1;
    v10 = MEMORY[0x23839E400](v20);

    v9 = v10;
  }

  secure_tcp = nw_parameters_create_secure_tcp(v9, &__block_literal_global_218);
  if (sCopy)
  {
    v12 = strlen(host);
    v13 = xpc_data_create(host, v12);
    nw_parameters_set_tls_session_id();
  }

  v14 = nw_context_create();
  nw_context_set_scheduling_mode();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_privacy_level();
  nw_context_set_isolate_protocol_cache();
  nw_parameters_set_context();
  nw_parameters_set_data_mode();
  NSLog(&cfstr_SNetworkTraffi.isa, "[SiriNWConnection _setParametersForHost:useTLS:initialPayload:]", self->_network_traffic_class);
  network_traffic_class = self->_network_traffic_class;
  nw_parameters_set_traffic_class();
  nw_parameters_set_indefinite();
  nw_parameters_set_tfo();
  if (payloadCopy)
  {
    nw_parameters_set_initial_data_payload();
  }

  NSLog(&cfstr_SOptimisticdns.isa, "[SiriNWConnection _setParametersForHost:useTLS:initialPayload:]");
  nw_parameters_set_expired_dns_behavior(secure_tcp, nw_parameters_expired_dns_behavior_allow);
  *task_info_out = 0u;
  v19 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
    NSLog(&cfstr_SFailedToGetTa.isa, "[SiriNWConnection _setParametersForHost:useTLS:initialPayload:]");
  }

  else
  {
    nw_parameters_set_source_application();
  }

  return secure_tcp;
}

void __64__SiriNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  sec_protocol_options_set_tls_tickets_enabled(v3, *(a1 + 32));
}

- (id)_getAttemptedEndpoints
{
  attemptedEndpoints = self->_attemptedEndpoints;
  if (attemptedEndpoints)
  {
    NSLog(&cfstr_SCached.isa, a2, "[SiriNWConnection _getAttemptedEndpoints]", attemptedEndpoints);
    v4 = self->_attemptedEndpoints;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_connection;
    if (v5 && !self->_isCanceled)
    {
      v6 = nw_connection_copy_attempted_endpoint_array();
      if (v6)
      {
        count = nw_array_get_count();
        if (count)
        {
          v8 = count;
          for (i = 0; i != v8; ++i)
          {
            v10 = nw_array_get_object_at_index();
            description = nw_endpoint_get_description();
            if (description)
            {
              v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:description];
              if (v12)
              {
                [(NSArray *)v4 addObject:v12];
              }
            }
          }
        }
      }
    }

    NSLog(&cfstr_S.isa, "[SiriNWConnection _getAttemptedEndpoints]", v4);
  }

  return v4;
}

@end