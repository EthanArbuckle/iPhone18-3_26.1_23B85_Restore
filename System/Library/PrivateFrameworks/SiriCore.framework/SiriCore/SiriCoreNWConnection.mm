@interface SiriCoreNWConnection
- (BOOL)providerStatsIndicatePoorLinkQuality;
- (SiriCoreNWConnection)initWithQueue:(id)queue;
- (id)_getAttemptedEndpoints;
- (id)_setParametersForHost:(const char *)host useTLS:(BOOL)s initialPayload:(id)payload;
- (id)analysisInfo;
- (id)connectionType;
- (id)delegate;
- (void)_addCorrespondingMetricsFromConnection:(id)connection inState:(int)state;
- (void)_cancelConnectionUnviableTimer;
- (void)_cancelOpenTimer;
- (void)_cancelSlowOpenTimer;
- (void)_cancelStaleConnectionTimer;
- (void)_closeWithError:(id)error;
- (void)_configureConnection:(id)connection;
- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion;
- (void)_invokeOpenCompletionWithError:(id)error;
- (void)_receivedBetterRouteNotification:(BOOL)notification;
- (void)_setupOpenSlowTimer;
- (void)_setupOpenTimer;
- (void)_setupStaleConnectionTimer;
- (void)_startConnectionUnviableTimer;
- (void)close;
- (void)dealloc;
- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion;
- (void)readData:(id)data;
- (void)setKeepAlive:(double)alive withInterval:(double)interval withCount:(unint64_t)count;
- (void)setPolicyRoute:(id)route;
- (void)setProviderConnectionPolicy:(id)policy;
- (void)updateConnectionMetrics:(id)metrics completion:(id)completion;
- (void)writeData:(id)data completion:(id)completion;
@end

@implementation SiriCoreNWConnection

- (void)_addCorrespondingMetricsFromConnection:(id)connection inState:(int)state
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if ((state - 1) >= 2)
  {
    if (state == 3)
    {
      v14 = mach_absolute_time();
      queue = self->_queue;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __71__SiriCoreNWConnection__addCorrespondingMetricsFromConnection_inState___block_invoke;
      v48[3] = &unk_279BD6678;
      v49 = v7;
      v50 = v14;
      nw_connection_access_establishment_report(v49, queue, v48);
    }
  }

  else
  {
    v8 = nw_connection_copy_current_path(connectionCopy);
    if (v8)
    {
      v9 = SiriCoreGetConnectionNetworkPathReport(v7, v8);
      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      [mEMORY[0x277CEF158] logEventWithType:1016 context:v9];

      if (v9)
      {
        v11 = objc_alloc_init(MEMORY[0x277D58BE0]);
        v12 = [v9 objectForKey:@"connectionPreparingPathHasDNS"];
        if (v12)
        {
          v13 = [v9 objectForKey:@"connectionPreparingPathHasDNS"];
          [v11 setHasDNS:{objc_msgSend(v13, "BOOLValue")}];
        }

        else
        {
          [v11 setHasDNS:0];
        }

        v16 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
        [v16 logNetworkConnectionStatePreparationSnapshotCaptured:v11];

        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v18 = [v9 objectForKey:@"connectionPreparingPathGateways"];
        if (v18)
        {
          v19 = v18;
          v20 = [v9 objectForKey:@"connectionPreparingPathGateways"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v22 = [v9 objectForKey:@"connectionPreparingPathGateways"];
            v23 = [SiriCoreNetworkingAnalytics endpointsFromArray:v22];
            v24 = [v23 mutableCopy];

            v17 = v24;
          }
        }

        v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v26 = [v9 objectForKey:@"connectionPreparingPathInterfaces"];
        if (v26)
        {
          v27 = v26;
          v28 = [v9 objectForKey:@"connectionPreparingPathInterfaces"];
          objc_opt_class();
          v29 = objc_opt_isKindOfClass();

          v30 = 0x279BD5000uLL;
          if (v29)
          {
            v31 = [v9 objectForKey:@"connectionPreparingPathInterfaces"];
            v32 = [SiriCoreNetworkingAnalytics pathInterfacesFromArray:v31];
            v33 = [v32 mutableCopy];

            v25 = v33;
          }
        }

        else
        {
          v30 = 0x279BD5000uLL;
        }

        v34 = objc_alloc_init(MEMORY[0x277D58B88]);
        v35 = [v9 objectForKey:@"connectionPreparingPathIsExpensive"];
        if (v35)
        {
          v36 = [v9 objectForKey:@"connectionPreparingPathIsExpensive"];
          [v34 setIsExpensive:{objc_msgSend(v36, "BOOLValue")}];
        }

        else
        {
          [v34 setIsExpensive:0];
        }

        [v34 setPathGateways:v17];
        v37 = [v9 objectForKey:@"connectionInfo"];
        if (v37)
        {
          v38 = [v9 objectForKey:@"connectionInfo"];
          [v34 setConnectionInfo:v38];
        }

        else
        {
          [v34 setConnectionInfo:&stru_28782DDB0];
        }

        v39 = [v9 objectForKey:@"connectionPreparingPathHasIpv6"];
        if (v39)
        {
          v40 = [v9 objectForKey:@"connectionPreparingPathHasIpv6"];
          [v34 setHasIpv6:{objc_msgSend(v40, "BOOLValue")}];
        }

        else
        {
          [v34 setHasIpv6:0];
        }

        v41 = [v9 objectForKey:@"connectionPreparingPathHasIpv4"];
        if (v41)
        {
          v42 = [v9 objectForKey:@"connectionPreparingPathHasIpv4"];
          [v34 setHasIpv4:{objc_msgSend(v42, "BOOLValue")}];
        }

        else
        {
          [v34 setHasIpv4:0];
        }

        v43 = [v9 objectForKey:@"connectionPreparingPathIsConstrained"];
        if (v43)
        {
          v44 = [v9 objectForKey:@"connectionPreparingPathIsConstrained"];
          [v34 setIsConstrained:{objc_msgSend(v44, "BOOLValue")}];
        }

        else
        {
          [v34 setIsConstrained:0];
        }

        [v34 setPathInterfaces:v25];
        v45 = [v9 objectForKey:@"connectionPreparingPathStatus"];
        if (v45)
        {
          v46 = [v9 objectForKey:@"connectionPreparingPathStatus"];
          [v34 setStatus:{+[SiriCoreNetworkingAnalytics pathStatusFromNumber:](SiriCoreNetworkingAnalytics, "pathStatusFromNumber:", v46)}];

          v30 = 0x279BD5000;
        }

        else
        {
          [v34 setStatus:0];
        }

        sharedSiriCoreNetworkingAnalytics = [*(v30 + 768) sharedSiriCoreNetworkingAnalytics];
        [sharedSiriCoreNetworkingAnalytics logDebugNetworkConnectionStatePreparationSnapshotCaptured:v34];
      }
    }
  }
}

void __71__SiriCoreNWConnection__addCorrespondingMetricsFromConnection_inState___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v42 = SiriCoreGetConnectionReadyReport(*(a1 + 32), a2);
    v3 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v3 logEventWithType:1017 machAbsoluteTime:*(a1 + 40) context:v42];

    v4 = v42;
    if (v42)
    {
      v5 = objc_alloc_init(MEMORY[0x277D58BE8]);
      v6 = [v42 objectForKey:@"connectionInfo"];
      if (v6)
      {
        v7 = [v42 objectForKey:@"connectionInfo"];
        [v5 setConnectionInfo:v7];
      }

      else
      {
        [v5 setConnectionInfo:&stru_28782DDB0];
      }

      v8 = [v42 objectForKey:@"connectionEstablishmentPreviousAttemptCount"];
      if (v8)
      {
        v9 = [v42 objectForKey:@"connectionEstablishmentPreviousAttemptCount"];
        [v9 doubleValue];
        [v5 setConnectionEstablishmentPreviousAttemptCount:v10];
      }

      else
      {
        [v5 setConnectionEstablishmentPreviousAttemptCount:0];
      }

      v11 = [v42 objectForKey:@"connectionEstablishmentAttemptDelay"];
      if (v11)
      {
        v12 = [v42 objectForKey:@"connectionEstablishmentAttemptDelay"];
        [v12 doubleValue];
        [v5 setConnectionEstablishmentAttemptDelay:v13];
      }

      else
      {
        [v5 setConnectionEstablishmentAttemptDelay:0];
      }

      v14 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
      [v14 logNetworkConnectionStateReadySnapshotCaptured:v5];

      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = [v42 objectForKey:@"connectionEstablishmentResolution"];
      if (v16)
      {
        v17 = [v42 objectForKey:@"connectionEstablishmentResolution"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v19 = [v42 objectForKey:@"connectionEstablishmentResolution"];
          v20 = [SiriCoreNetworkingAnalytics establishmentResolutionFromArray:v19];
          v21 = [v20 mutableCopy];

          v15 = v21;
        }
      }

      v22 = objc_alloc_init(MEMORY[0x277D58C08]);
      v23 = [v42 objectForKey:@"connectionEstablishmentProxyConfiguration"];
      if (v23)
      {
        v24 = v23;
        v25 = [v42 objectForKey:@"connectionEstablishmentProxyConfiguration"];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if (v26)
        {
          v27 = [v42 objectForKey:@"connectionEstablishmentProxyConfiguration"];
          v28 = [SiriCoreNetworkingAnalytics proxyConfigurationFromDictionary:v27];

          v22 = v28;
        }
      }

      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v30 = [v42 objectForKey:@"connectionEstablishmentProtocols"];
      if (v30)
      {
        v31 = v30;
        v32 = [v42 objectForKey:@"connectionEstablishmentProtocols"];
        objc_opt_class();
        v33 = objc_opt_isKindOfClass();

        if (v33)
        {
          v34 = [v42 objectForKey:@"connectionEstablishmentProtocols"];
          v35 = [SiriCoreNetworkingAnalytics handShakeProtocolFromArray:v34];
          v36 = [v35 mutableCopy];

          v29 = v36;
        }
      }

      v37 = objc_alloc_init(MEMORY[0x277D58B90]);
      [v37 setResolutions:v15];
      [v37 setProxyConfiguration:v22];
      v38 = [v42 objectForKey:@"connectionEstablishmentDuration"];
      if (v38)
      {
        v39 = [v42 objectForKey:@"connectionEstablishmentDuration"];
        [v39 doubleValue];
        [v37 setDurationInMs:v40];
      }

      else
      {
        [v37 setDurationInMs:0];
      }

      [v37 setConnectionEstablishmentProtocols:v29];
      v41 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
      [v41 logDebugNetworkConnectionStateReadySnapshotCaptured:v37];

      v4 = v42;
    }
  }
}

- (id)_getAttemptedEndpoints
{
  v21 = *MEMORY[0x277D85DE8];
  attemptedEndpoints = self->_attemptedEndpoints;
  if (attemptedEndpoints)
  {
    v4 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[SiriCoreNWConnection _getAttemptedEndpoints]";
      v19 = 2112;
      v20 = attemptedEndpoints;
      _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_INFO, "%s cached %@", &v17, 0x16u);
      attemptedEndpoints = self->_attemptedEndpoints;
    }

    v5 = attemptedEndpoints;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = self->_connection;
    if (v6 && !self->_isCanceled)
    {
      v7 = nw_connection_copy_attempted_endpoint_array();
      if (v7)
      {
        count = nw_array_get_count();
        if (count)
        {
          v9 = count;
          for (i = 0; i != v9; ++i)
          {
            v11 = nw_array_get_object_at_index();
            description = nw_endpoint_get_description();
            if (description)
            {
              v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:description];
              if (v13)
              {
                [(NSArray *)v5 addObject:v13];
              }
            }
          }
        }
      }
    }

    v14 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[SiriCoreNWConnection _getAttemptedEndpoints]";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_INFO, "%s %@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)providerStatsIndicatePoorLinkQuality
{
  v17 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (connection)
  {
    v3 = connection;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = nw_connection_copy_tcp_info();
    v5 = v4;
    if (v4 && MEMORY[0x26D5E61D0](v4) == MEMORY[0x277D86468])
    {
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __60__SiriCoreNWConnection_providerStatsIndicatePoorLinkQuality__block_invoke;
      applier[3] = &unk_279BD6650;
      applier[4] = &v11;
      xpc_dictionary_apply(v5, applier);
    }

    if (v12[3])
    {
      v6 = 0;
    }

    else
    {
      v7 = *MEMORY[0x277CEF0A8];
      v6 = 1;
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[SiriCoreNWConnection providerStatsIndicatePoorLinkQuality]";
        _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_INFO, "%s Connection has poor quality.", buf, 0xCu);
        v6 = *(v12 + 24) ^ 1;
      }
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t __60__SiriCoreNWConnection_providerStatsIndicatePoorLinkQuality__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  bytes_ptr = xpc_data_get_bytes_ptr(v5);
  if (bytes_ptr)
  {
    v7 = bytes_ptr;
    if (xpc_data_get_length(v5) == 424 && MEMORY[0x26D5E61D0](v5) == MEMORY[0x277D86458])
    {
      v8 = MEMORY[0x277CEF0A8];
      if ((*v7 & 0xFE) == 4 && *(v7 + 92) <= 0x100uLL)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v9 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
        {
          v19 = 136315394;
          v20 = "[SiriCoreNWConnection providerStatsIndicatePoorLinkQuality]_block_invoke";
          v21 = 2080;
          *v22 = a2;
          _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s Treating %s as ok quality", &v19, 0x16u);
        }
      }

      v10 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v12 = *(v7 + 5);
        v11 = *(v7 + 6);
        v13 = *(v7 + 7);
        v14 = *(v7 + 16);
        v15 = *(v7 + 92);
        v16 = *(v7 + 284);
        v19 = 136316930;
        v20 = "[SiriCoreNWConnection providerStatsIndicatePoorLinkQuality]_block_invoke";
        v21 = 1024;
        *v22 = v11;
        *&v22[4] = 1024;
        *&v22[6] = v12;
        v23 = 1024;
        v24 = v13;
        v25 = 1024;
        v26 = v14;
        v27 = 2048;
        v28 = v15;
        v29 = 2048;
        v30 = v16;
        v31 = 2080;
        v32 = a2;
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s TCP srtt: %d rttcur:%d rttvar:%d sbbytes:%d txunacked:%lld txretransmitpackets:%lld for if=%s", &v19, 0x42u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_setParametersForHost:(const char *)host useTLS:(BOOL)s initialPayload:(id)payload
{
  sCopy = s;
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (AFIsInternalInstall() && (AFIsNano() & 1) == 0)
  {
    _AFPreferencesShouldUseTFO();
  }

  v8 = self->_policy;
  v9 = v8;
  if (v8)
  {
    enableTcpFastOpen = [(SAConnectionPolicy *)v8 enableTcpFastOpen];
    [enableTcpFastOpen BOOLValue];

    disableMPTCP = [(SAConnectionPolicy *)v9 disableMPTCP];
    bOOLValue = [disableMPTCP BOOLValue];

    enableOptimisticDNS = [(SAConnectionPolicy *)v9 enableOptimisticDNS];
    bOOLValue2 = [enableOptimisticDNS BOOLValue];
  }

  else
  {
    bOOLValue = 0;
    bOOLValue2 = 1;
  }

  v14 = MEMORY[0x26D5E5DB0](*MEMORY[0x277CD9238]);
  if (sCopy && !self->_connectByPOPEnabled)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__SiriCoreNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke;
    v30[3] = &unk_279BD6600;
    v31 = 1;
    v30[4] = self;
    v15 = MEMORY[0x26D5E5DB0](v30);

    v14 = v15;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__SiriCoreNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke_2;
  v29[3] = &unk_279BD6628;
  v29[4] = self;
  v16 = MEMORY[0x26D5E5DB0](v29);
  secure_tcp = nw_parameters_create_secure_tcp(v14, v16);
  if (sCopy && !self->_connectByPOPEnabled)
  {
    v18 = strlen(host);
    v19 = xpc_data_create(host, v18);
    nw_parameters_set_tls_session_id();
  }

  v20 = +[SiriCoreNWContext sharedInstance];
  nwContext = [v20 nwContext];

  nw_parameters_set_context();
  nw_parameters_set_data_mode();
  AFIsHorseman();
  nw_parameters_set_traffic_class();
  if ((AFIsHorseman() | bOOLValue))
  {
    if (self->_prefersWWAN)
    {
      nw_parameters_set_required_interface_type(secure_tcp, nw_interface_type_cellular);
    }
  }

  else
  {
    nw_parameters_set_multipath_service(secure_tcp, nw_multipath_service_interactive);
  }

  nw_parameters_set_indefinite();
  nw_parameters_set_tfo();
  if (self->_connectByPOPEnabled)
  {
    v22 = self->_connectionId;
    NetworkServiceProxyEnableInParameters();
    NetworkServiceProxySetServiceNameInParameters();
  }

  if (payloadCopy)
  {
    nw_parameters_set_initial_data_payload();
  }

  if (bOOLValue2)
  {
    v23 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SiriCoreNWConnection _setParametersForHost:useTLS:initialPayload:]";
      _os_log_impl(&dword_2669D1000, v23, OS_LOG_TYPE_INFO, "%s optimisticDNS", buf, 0xCu);
    }

    nw_parameters_set_expired_dns_behavior(secure_tcp, nw_parameters_expired_dns_behavior_allow);
  }

  *buf = 0u;
  v33 = 0u;
  task_info_outCnt = 8;
  if (!task_info(*MEMORY[0x277D85F48], 0xFu, buf, &task_info_outCnt))
  {
    nw_parameters_set_source_application();
  }

  v24 = *MEMORY[0x277D85DE8];

  return secure_tcp;
}

void __68__SiriCoreNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke(uint64_t a1, id a2)
{
  options = a2;
  sec_protocol_options_set_tls_tickets_enabled(options, *(a1 + 40));
  v3 = *(*(a1 + 32) + 72);
  if (v3)
  {
    v4 = [v3 enableTLS13];

    if (v4)
    {
      sec_protocol_options_set_max_tls_protocol_version(options, tls_protocol_version_TLSv13);
      sec_protocol_options_set_tls_resumption_enabled(options, 1);
      sec_protocol_options_set_tls_false_start_enabled(options, 1);
      sec_protocol_options_add_tls_application_protocol(options, "http/1.1");
    }
  }
}

void __68__SiriCoreNWConnection__setParametersForHost_useTLS_initialPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  MEMORY[0x26D5E5B40]();
  v3 = *(a1 + 32);
  if (*(v3 + 200) != 0.0 || *(v3 + 192) != 0.0 || *(v3 + 216))
  {
    MEMORY[0x26D5E5B00](v8, 1);
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    if (v4 != 0.0)
    {
      MEMORY[0x26D5E5B30](v8, v4);
      v3 = *(a1 + 32);
    }

    v5 = *(v3 + 192);
    if (v5 != 0.0)
    {
      MEMORY[0x26D5E5B20](v8, v5);
      v3 = *(a1 + 32);
    }

    if (*(v3 + 216))
    {
      MEMORY[0x26D5E5B10](v8);
      v3 = *(a1 + 32);
    }
  }

  v6 = *(v3 + 208);
  v7 = v8;
  if (v6 != 0.0)
  {
    MEMORY[0x26D5E5B50](v8, v6);
    v7 = v8;
  }
}

- (void)setKeepAlive:(double)alive withInterval:(double)interval withCount:(unint64_t)count
{
  self->_keepaliveIdleTime = alive;
  self->_keepaliveIntervalTime = interval;
  self->_keepaliveUnackedCount = count;
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SiriCoreNWConnection_close__block_invoke;
  block[3] = &unk_279BD6518;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_receivedBetterRouteNotification:(BOOL)notification
{
  if (notification)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained connectionProviderReceivedBetterRouteNotification:self];
  }
}

- (void)_closeWithError:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!self->_isCanceled)
  {
    v5 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v41 = "[SiriCoreNWConnection _closeWithError:]";
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    resolvedHost = self->_resolvedHost;
    self->_resolvedHost = 0;

    self->_isReady = 0;
    self->_isViable = 1;
    self->_isCanceled = 1;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __40__SiriCoreNWConnection__closeWithError___block_invoke;
    v38[3] = &unk_279BD6540;
    v38[4] = self;
    v39 = errorCopy;
    v7 = MEMORY[0x26D5E5DB0](v38);
    v8 = v7;
    connection = self->_connection;
    if (connection)
    {
      v10 = connection;
      v11 = self->_connection;
      self->_connection = 0;

      v29 = self->_content_context;
      content_context = self->_content_context;
      self->_content_context = 0;

      if (!self->_attemptedEndpoints)
      {
        _getAttemptedEndpoints = [(SiriCoreNWConnection *)self _getAttemptedEndpoints];
        attemptedEndpoints = self->_attemptedEndpoints;
        self->_attemptedEndpoints = _getAttemptedEndpoints;
      }

      v15 = dispatch_group_create();
      dispatch_group_enter(v15);
      v16 = objc_alloc_init(SiriCoreConnectionMetrics);
      connectByPOPEnabled = self->_connectByPOPEnabled;
      isMPTCP = self->_isMPTCP;
      v19 = self->_attemptedEndpoints;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __40__SiriCoreNWConnection__closeWithError___block_invoke_2;
      v36[3] = &unk_279BD6518;
      v20 = v15;
      v37 = v20;
      [(SiriCoreConnectionMetrics *)v16 setConnectionMetricsFromConnection:v10 isPop:connectByPOPEnabled isMPTCP:isMPTCP attemptedEndpoints:v19 completion:v36];
      metrics = self->_metrics;
      self->_metrics = v16;
      v22 = v16;

      dispatch_group_enter(v20);
      v23 = +[SiriCoreNetworkActivityTracing sharedNetworkActivityTracing];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __40__SiriCoreNWConnection__closeWithError___block_invoke_3;
      v34[3] = &unk_279BD6518;
      v35 = v20;
      v24 = v20;
      [v23 networkActivityRemoveNWConnection:v10 completion:v34];

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__SiriCoreNWConnection__closeWithError___block_invoke_4;
      block[3] = &unk_279BD65D8;
      v31 = v10;
      v32 = v29;
      v33 = v8;
      v26 = v29;
      v27 = v10;
      dispatch_group_notify(v24, queue, block);
    }

    else
    {
      (*(v7 + 16))(v7);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __40__SiriCoreNWConnection__closeWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelStaleConnectionTimer];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 112))
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:17 userInfo:0];
      v2 = *(a1 + 32);
      v3 = *(a1 + 40);
    }

    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    [v2 _invokeOpenCompletionWithError:v6];
    goto LABEL_12;
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v4 connectionProvider:*(a1 + 32) receivedError:*(a1 + 40)];
LABEL_12:
    }
  }

  v7 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v7 setIsConnectionActive:0];

  v8 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v8 setNetIdAvailable:0];
}

uint64_t __40__SiriCoreNWConnection__closeWithError___block_invoke_4(uint64_t a1)
{
  nw_connection_send(*(a1 + 32), 0, *(a1 + 40), 1, &__block_literal_global_3312);
  v2 = *(a1 + 32);
  nw_connection_set_read_close_handler();
  v3 = *(a1 + 32);
  nw_connection_set_write_close_handler();
  nw_connection_cancel(*(a1 + 32));
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __40__SiriCoreNWConnection__closeWithError___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    error_code = nw_error_get_error_code(v2);
    if (nw_error_get_error_domain(v3) != nw_error_domain_posix || error_code != 57)
    {
      v5 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[SiriCoreNWConnection _closeWithError:]_block_invoke_5";
        v9 = 2112;
        v10 = v3;
        _os_log_error_impl(&dword_2669D1000, v5, OS_LOG_TYPE_ERROR, "%s close error is %@", &v7, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateConnectionMetrics:(id)metrics completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  completionCopy = completion;
  _getAttemptedEndpoints = [(SiriCoreNWConnection *)self _getAttemptedEndpoints];
  v9 = self->_metrics;
  v10 = v9;
  connection = self->_connection;
  if (connection)
  {
    [metricsCopy setConnectionMetricsFromConnection:connection isPop:self->_connectByPOPEnabled isMPTCP:self->_isMPTCP attemptedEndpoints:_getAttemptedEndpoints completion:completionCopy];
  }

  else
  {
    if (v9)
    {
      tcpInfoMetricsByInterfaceName = [(SiriCoreConnectionMetrics *)v9 tcpInfoMetricsByInterfaceName];
      v13 = [tcpInfoMetricsByInterfaceName copy];
      [metricsCopy setTCPInfoMetricsByInterfaceName:v13];

      flowNetworkInterfaceType = [(SiriCoreConnectionMetrics *)v10 flowNetworkInterfaceType];
      v15 = [flowNetworkInterfaceType copy];
      [metricsCopy setFlowNetworkInterfaceType:v15];

      subflowCount = [(SiriCoreConnectionMetrics *)v10 subflowCount];
      [metricsCopy setSubflowCount:subflowCount];

      connectedSubflowCount = [(SiriCoreConnectionMetrics *)v10 connectedSubflowCount];
      [metricsCopy setConnectedSubflowCount:connectedSubflowCount];

      primarySubflowInterfaceName = [(SiriCoreConnectionMetrics *)v10 primarySubflowInterfaceName];
      [metricsCopy setPrimarySubflowInterfaceName:primarySubflowInterfaceName];

      subflowSwitchCounts = [(SiriCoreConnectionMetrics *)v10 subflowSwitchCounts];
      [metricsCopy setSubflowSwitchCounts:subflowSwitchCounts];

      dnsResolutionTime = [(SiriCoreConnectionMetrics *)v10 dnsResolutionTime];
      [metricsCopy setDnsResolutionTime:dnsResolutionTime];

      connectionStartTimeToDNSResolutionTimeMsec = [(SiriCoreConnectionMetrics *)v10 connectionStartTimeToDNSResolutionTimeMsec];
      [metricsCopy setConnectionStartTimeToDNSResolutionTimeMsec:connectionStartTimeToDNSResolutionTimeMsec];

      connectionEstablishmentTimeMsec = [(SiriCoreConnectionMetrics *)v10 connectionEstablishmentTimeMsec];
      [metricsCopy setConnectionEstablishmentTimeMsec:connectionEstablishmentTimeMsec];

      connectionStartTimeToConnectionEstablishmentTimeMsec = [(SiriCoreConnectionMetrics *)v10 connectionStartTimeToConnectionEstablishmentTimeMsec];
      [metricsCopy setConnectionStartTimeToConnectionEstablishmentTimeMsec:connectionStartTimeToConnectionEstablishmentTimeMsec];

      tlsHandshakeTimeMsec = [(SiriCoreConnectionMetrics *)v10 tlsHandshakeTimeMsec];
      [metricsCopy setTlsHandshakeTimeMsec:tlsHandshakeTimeMsec];

      connectionStartTimeToTLSHandshakeTimeMsec = [(SiriCoreConnectionMetrics *)v10 connectionStartTimeToTLSHandshakeTimeMsec];
      [metricsCopy setConnectionStartTimeToTLSHandshakeTimeMsec:connectionStartTimeToTLSHandshakeTimeMsec];
    }

    else
    {
      connectionStartTimeToTLSHandshakeTimeMsec = [(NSURL *)self->_url absoluteString];
      v26 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[SiriCoreNWConnection updateConnectionMetrics:completion:]";
        _os_log_impl(&dword_2669D1000, v26, OS_LOG_TYPE_INFO, "%s Reporting missing metrics to ABC", buf, 0xCu);
      }

      v27 = +[SiriCoreSymptomsReporter sharedInstance];
      if (connectionStartTimeToTLSHandshakeTimeMsec)
      {
        v31 = @"url";
        v32 = connectionStartTimeToTLSHandshakeTimeMsec;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      }

      else
      {
        v28 = 0;
      }

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [v27 reportIssueForType:@"connection_metrics" subType:@"no_nwconnection" context:v28 processIdentifier:objc_msgSend(processInfo walkboutStatus:{"processIdentifier"), 0}];

      if (connectionStartTimeToTLSHandshakeTimeMsec)
      {
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)analysisInfo
{
  v3 = self->_connection;
  v4 = [SiriCoreAceConnectionAnalysisInfo alloc];
  url = self->_url;
  interfaceIndex = self->_interfaceIndex;
  v7 = [(SiriCoreNWConnection *)self _sendBufferBytesRemaining:v3];
  prefersWWAN = self->_prefersWWAN;
  connectionType = [(SiriCoreNWConnection *)self connectionType];
  policyId = [(SAConnectionPolicy *)self->_policy policyId];
  v11 = [(SiriCoreAceConnectionAnalysisInfo *)v4 initWithConnectionURL:url interfaceIndex:interfaceIndex sendBufferSize:v7 wwanPreferred:prefersWWAN connectionType:connectionType policyId:policyId];

  return v11;
}

- (id)connectionType
{
  v36 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (!connection)
  {
    v12 = [SiriCoreConnectionType alloc];
    technology = 0;
LABEL_13:
    v17 = [(SiriCoreConnectionType *)v12 initWithTechnology:technology];
    goto LABEL_14;
  }

  if (self->_connectionType)
  {
LABEL_12:
    v16 = [SiriCoreConnectionType alloc];
    technology = [(SiriCoreConnectionType *)self->_connectionType technology];
    v12 = v16;
    goto LABEL_13;
  }

  v4 = connection;
  isMPTCP = self->_isMPTCP;
  v6 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithBool:isMPTCP];
    v32 = 136315394;
    v33 = "[SiriCoreNWConnection connectionType]";
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s Connection is MPTCP %@", &v32, 0x16u);
  }

  if (isMPTCP)
  {
    v10 = [SiriCoreConnectionType alloc];
    v11 = 3000;
LABEL_10:
    v14 = [(SiriCoreConnectionType *)v10 initWithTechnology:v11];
    connectionType = self->_connectionType;
    self->_connectionType = v14;
LABEL_11:

    goto LABEL_12;
  }

  if (self->_connectByPOPEnabled)
  {
    v10 = [SiriCoreConnectionType alloc];
    v11 = 3003;
    goto LABEL_10;
  }

  v20 = nw_connection_copy_connected_path();
  if (v20)
  {
    connectionType = v20;
    v21 = nw_path_copy_interface();
    if (v21)
    {
      v22 = v21;
      name = nw_interface_get_name(v21);
      if (name)
      {
        LODWORD(name) = nw_interface_get_index(v22);
      }

      self->_interfaceIndex = name;
      v24 = MEMORY[0x26D5E5AE0](connectionType, 2);
      v25 = MEMORY[0x26D5E5AE0](connectionType, 1);
      v26 = MEMORY[0x26D5E5AE0](connectionType, 3);
      if (v24)
      {
        v27 = [SiriCoreNetworkManager connectionTypeForInterfaceName:0 isCellular:1];
      }

      else
      {
        v28 = v26;
        v29 = [SiriCoreConnectionType alloc];
        if (v25)
        {
          v30 = 1000;
        }

        else if (v28)
        {
          v30 = 3006;
        }

        else
        {
          v30 = 0;
        }

        v27 = [(SiriCoreConnectionType *)v29 initWithTechnology:v30];
      }

      v31 = self->_connectionType;
      self->_connectionType = v27;

      goto LABEL_11;
    }

    v17 = [[SiriCoreConnectionType alloc] initWithTechnology:0];
  }

  else
  {
    v17 = [[SiriCoreConnectionType alloc] initWithTechnology:0];
  }

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = completionCopy;
  connection = self->_connection;
  if (connection && !self->_isCanceled)
  {
    if (dataCopy && dispatch_data_get_size(dataCopy))
    {
      ++self->_readWriteCounter;
      content_context = self->_content_context;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__SiriCoreNWConnection_writeData_completion___block_invoke;
      v12[3] = &unk_279BD6590;
      v12[4] = self;
      v13 = v8;
      nw_connection_send(connection, dataCopy, content_context, 0, v12);
    }

    else if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else if (completionCopy)
  {
    v10 = 0;
    if (!connection && !self->_isCanceled)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:29 userInfo:0];
    }

    (v8)[2](v8, v10);
  }
}

void __45__SiriCoreNWConnection_writeData_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && (*(*(a1 + 32) + 83) & 1) == 0)
  {
    v5 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[SiriCoreNWConnection writeData:completion:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_2669D1000, v5, OS_LOG_TYPE_ERROR, "%s write error is %@", buf, 0x16u);
    }

    v6 = nw_error_copy_cf_error(v3);
    v7 = v6;
    v8 = MEMORY[0x277CCA9B8];
    if (v6)
    {
      v12 = *MEMORY[0x277CCA7E8];
      v13 = v6;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v4 = [v8 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:26 userInfo:v9];
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:26 userInfo:0];
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)readData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  connection = self->_connection;
  isCanceled = self->_isCanceled;
  if (!connection)
  {
    if (!self->_isCanceled)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:25 userInfo:0];
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
LABEL_7:
    (v5)[2](v5, 0, v8);

    goto LABEL_8;
  }

  if (self->_isCanceled)
  {
    goto LABEL_5;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__SiriCoreNWConnection_readData___block_invoke;
  v9[3] = &unk_279BD6568;
  v9[4] = self;
  v10 = dataCopy;
  nw_connection_receive(connection, 0, 0xFFFFFFFF, v9);

LABEL_8:
}

void __33__SiriCoreNWConnection_readData___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  ++*(*(a1 + 32) + 144);
  if ((!v8 || v10) && (*(*(a1 + 32) + 83) & 1) == 0)
  {
    v13 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[SiriCoreNWConnection readData:]_block_invoke";
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_2669D1000, v13, OS_LOG_TYPE_ERROR, "%s read error is %@", buf, 0x16u);
      if (v11)
      {
LABEL_7:
        v14 = nw_error_copy_cf_error(v11);
        v15 = MEMORY[0x277CCA9B8];
        if (v14)
        {
          v16 = v14;
          v19 = *MEMORY[0x277CCA7E8];
          v20 = v14;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v12 = [v15 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:25 userInfo:v17];

LABEL_12:
          goto LABEL_13;
        }

LABEL_11:
        v12 = [v15 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:25 userInfo:0];
        v16 = 0;
        goto LABEL_12;
      }
    }

    else if (v11)
    {
      goto LABEL_7;
    }

    v15 = MEMORY[0x277CCA9B8];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_13:
  (*(*(a1 + 40) + 16))();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cancelSlowOpenTimer
{
  openSlowTimer = self->_openSlowTimer;
  if (openSlowTimer)
  {
    dispatch_source_cancel(openSlowTimer);
    v4 = self->_openSlowTimer;
    self->_openSlowTimer = 0;
  }
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

- (void)_setupOpenSlowTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  v4 = dispatch_time(0, 6000000000);
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SiriCoreNWConnection__setupOpenSlowTimer__block_invoke;
  v8[3] = &unk_279BD6540;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_source_set_event_handler(v5, v8);
  dispatch_resume(v5);
  openSlowTimer = self->_openSlowTimer;
  self->_openSlowTimer = v5;
  v7 = v5;
}

void __43__SiriCoreNWConnection__setupOpenSlowTimer__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SiriCoreNWConnection _setupOpenSlowTimer]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Open slow timer firing", buf, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v3 = *(a1 + 40);
  if (*(a1 + 32) == *(v3 + 120))
  {
    v4 = *(v3 + 128);
    *(v3 + 128) = 0;
  }

  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = v5;
  v7 = *(*(a1 + 40) + 232);
  if (v7)
  {
    v14 = *MEMORY[0x277CCA7E8];
    v15 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v6 initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:33 userInfo:v8];
  }

  else
  {
    v9 = [v5 initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:33 userInfo:0];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained((*(a1 + 40) + 16));
    [v12 connectionProvider:*(a1 + 40) receivedIntermediateError:v9];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setupOpenTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  if (AFIsNano())
  {
    v4 = 6000000000;
  }

  else
  {
    v4 = 15000000000;
  }

  v5 = dispatch_time(0, v4);
  dispatch_source_set_timer(v3, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SiriCoreNWConnection__setupOpenTimer__block_invoke;
  v9[3] = &unk_279BD6540;
  v6 = v3;
  v10 = v6;
  selfCopy = self;
  dispatch_source_set_event_handler(v6, v9);
  dispatch_resume(v6);
  openTimer = self->_openTimer;
  self->_openTimer = v6;
  v8 = v6;
}

void __39__SiriCoreNWConnection__setupOpenTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SiriCoreNWConnection _setupOpenTimer]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Open timer firing", buf, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 120);
  if (*(a1 + 32) == v4)
  {
    *(v3 + 120) = 0;
  }

  v5 = objc_alloc(MEMORY[0x277CCA9B8]);
  v6 = v5;
  v7 = *(*(a1 + 40) + 232);
  if (v7)
  {
    v13 = *MEMORY[0x277CCA7E8];
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [v6 initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:4 userInfo:v8];
  }

  else
  {
    v9 = [v5 initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:4 userInfo:0];
  }

  if (AFDeviceSupportsSiriUOD() && (v10 = objc_loadWeakRetained((*(a1 + 40) + 16)), v10, v10))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained connectionProvider:*(a1 + 40) receivedError:v9];
  }

  else
  {
    [*(a1 + 40) _closeWithError:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_configureConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_connection, connection);
  objc_storeStrong(&self->_content_context, *MEMORY[0x277CD9220]);
  v6 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v6 resetSequenceNumber];

  v7 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v7 setIsConnectionActive:1];

  v8 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  orchestratorRequestId = [v8 orchestratorRequestId];

  if (!orchestratorRequestId)
  {
    v10 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
    [v10 resetNetId];

    v11 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
    [v11 setNetIdAvailable:1];
  }

  v12 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v12 logRequestLinkBetweenOrchestratorAndNetworkComponent];

  nw_connection_set_queue(connectionCopy, self->_queue);
  location[1] = MEMORY[0x277D85DD0];
  location[2] = 3221225472;
  location[3] = __45__SiriCoreNWConnection__configureConnection___block_invoke;
  location[4] = &unk_279BD64C8;
  v13 = connectionCopy;
  v23 = v13;
  selfCopy = self;
  MEMORY[0x26D5E5760]();
  objc_initWeak(location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __45__SiriCoreNWConnection__configureConnection___block_invoke_27;
  handler[3] = &unk_279BD64F0;
  v14 = v13;
  v20 = v14;
  objc_copyWeak(&v21, location);
  nw_connection_set_viability_changed_handler(v14, handler);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__SiriCoreNWConnection__configureConnection___block_invoke_50;
  v16[3] = &unk_279BD64F0;
  v15 = v14;
  v17 = v15;
  objc_copyWeak(&v18, location);
  nw_connection_set_better_path_available_handler(v15, v16);
  nw_connection_set_read_close_handler();
  nw_connection_set_write_close_handler();
  nw_connection_start(v15);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);
}

void __45__SiriCoreNWConnection__configureConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && (v7 = nw_error_copy_cf_error(v5)) != 0)
  {
    v8 = v7;
    v9 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = v9;
      *buf = 136315906;
      v36 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
      v37 = 1024;
      v38 = a2;
      v39 = 2112;
      v40 = v8;
      v41 = 2048;
      id = nw_connection_get_id();
      _os_log_error_impl(&dword_2669D1000, v28, OS_LOG_TYPE_ERROR, "%s state: %d error: %@ for connection: %llu", buf, 0x26u);
    }

    v10 = 0;
  }

  else
  {
    v11 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      *buf = 136315650;
      v36 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
      v37 = 1024;
      v38 = a2;
      v39 = 2048;
      v40 = nw_connection_get_id();
      _os_log_impl(&dword_2669D1000, v13, OS_LOG_TYPE_DEFAULT, "%s state: %d for connection: %llu", buf, 0x1Cu);
    }

    v8 = 0;
    v10 = 1;
  }

  objc_storeStrong((*(a1 + 40) + 232), v8);
  v14 = *(a1 + 40);
  if ((*(v14 + 83) & 1) == 0 && *(a1 + 32) == *(v14 + 40))
  {
    if (a2 > 2)
    {
      if ((a2 - 4) >= 2)
      {
        if (a2 == 3)
        {
          *(*(a1 + 40) + 82) = nw_connection_uses_multipath();
          [*(a1 + 40) _setupStaleConnectionTimer];
          [*(a1 + 40) _invokeOpenCompletionWithError:0];
        }

        goto LABEL_25;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        if (v10)
        {
          goto LABEL_25;
        }

        v23 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA7E8];
        v34 = v8;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v17 = v23;
        v18 = 36;
      }

      else
      {
        if (a2 != 2 || (v10 & 1) != 0)
        {
          goto LABEL_25;
        }

        v15 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA7E8];
        v32 = v8;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v17 = v15;
        v18 = 35;
      }

      v20 = [v17 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:v18 userInfo:v16];

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = objc_loadWeakRetained((*(a1 + 40) + 16));
        [v26 connectionProvider:*(a1 + 40) receivedIntermediateError:v20];
      }

LABEL_24:

LABEL_25:
      [*(a1 + 40) _addCorrespondingMetricsFromConnection:*(a1 + 32) inState:a2];
      goto LABEL_26;
    }

    v19 = MEMORY[0x277CCA9B8];
    if (v10)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:16 userInfo:0];
    }

    else
    {
      v29 = *MEMORY[0x277CCA7E8];
      v30 = v8;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [v19 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:16 userInfo:v21];
    }

    [*(a1 + 40) _closeWithError:v20];
    goto LABEL_24;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
}

void __45__SiriCoreNWConnection__configureConnection___block_invoke_27(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    *buf = 136315650;
    v28 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
    v29 = 1024;
    v30 = a2;
    v31 = 2048;
    id = nw_connection_get_id();
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s viability is %d for connection:%llu", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    mach_absolute_time();
    v8 = WeakRetained[20];
    AFMachAbsoluteTimeGetTimeInterval();
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = WeakRetained[5];
    if (v12)
    {
      if (v12 == *(a1 + 32))
      {
        v13 = nw_connection_copy_connected_path();
        if (v13)
        {
          v14 = v13;
          v25[0] = @"other";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:{MEMORY[0x26D5E5AE0](v13, 0)}];
          v26[0] = v15;
          v25[1] = @"wifi";
          v16 = [MEMORY[0x277CCABB0] numberWithBool:{MEMORY[0x26D5E5AE0](v14, 1)}];
          v26[1] = v16;
          v25[2] = @"cellular";
          v17 = [MEMORY[0x277CCABB0] numberWithBool:{MEMORY[0x26D5E5AE0](v14, 2)}];
          v26[2] = v17;
          v25[3] = @"wired";
          v18 = [MEMORY[0x277CCABB0] numberWithBool:{MEMORY[0x26D5E5AE0](v14, 3)}];
          v26[3] = v18;
          v25[4] = @"loopback";
          v19 = [MEMORY[0x277CCABB0] numberWithBool:{MEMORY[0x26D5E5AE0](v14, 4)}];
          v26[4] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

          [v11 setValue:v20 forKey:@"interface_type"];
        }
      }
    }

    if (a2)
    {
      if (WeakRetained[19])
      {
        [WeakRetained _cancelConnectionUnviableTimer];
      }

      v21 = 1015;
    }

    else
    {
      if (v10 >= 2.0)
      {
        [WeakRetained _startConnectionUnviableTimer];
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:3 userInfo:0];
        [WeakRetained _closeWithError:v22];
      }

      v21 = 1014;
    }

    v23 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v23 logEventWithType:v21 context:v11];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __45__SiriCoreNWConnection__configureConnection___block_invoke_50(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v5 = @"available";
    }

    else
    {
      v5 = @"not available";
    }

    v6 = *(a1 + 32);
    v7 = v4;
    v10 = 136315650;
    v11 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    id = nw_connection_get_id();
    _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_INFO, "%s better path is %@ for %llu", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    WeakRetained[20] = mach_absolute_time();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SiriCoreNWConnection__configureConnection___block_invoke_57(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
    _os_log_debug_impl(&dword_2669D1000, v2, OS_LOG_TYPE_DEBUG, "%s read closed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _closeWithError:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __45__SiriCoreNWConnection__configureConnection___block_invoke_58(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[SiriCoreNWConnection _configureConnection:]_block_invoke";
    _os_log_debug_impl(&dword_2669D1000, v2, OS_LOG_TYPE_DEBUG, "%s write closed", &v5, 0xCu);
  }

  result = [*(a1 + 32) _closeWithError:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)openConnectionForURL:(id)l withConnectionId:(id)id initialPayload:(id)payload completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  route = self->_route;
  payloadCopy = payload;
  idCopy = id;
  cname = [(SAConnectionPolicyRoute *)route cname];
  host = cname;
  if (!cname)
  {
    host = [lCopy host];
  }

  v17 = [host copy];
  resolvedHost = self->_resolvedHost;
  self->_resolvedHost = v17;

  if (!cname)
  {
  }

  v19 = [lCopy copy];
  url = self->_url;
  self->_url = v19;

  v21 = [idCopy copy];
  connectionId = self->_connectionId;
  self->_connectionId = v21;

  self->_isEstablishing = 1;
  [(SiriCoreNWConnection *)self _setupOpenTimer];
  [(SiriCoreNWConnection *)self _setupOpenSlowTimer];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__SiriCoreNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke;
  v27[3] = &unk_279BD6478;
  v27[4] = self;
  v28 = completionCopy;
  v23 = completionCopy;
  v24 = MEMORY[0x26D5E5DB0](v27);
  openCompletion = self->_openCompletion;
  self->_openCompletion = v24;

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__SiriCoreNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke_2;
  v26[3] = &unk_279BD64A0;
  v26[4] = self;
  [(SiriCoreNWConnection *)self _getNWConnectionWithInitialData:payloadCopy completion:v26];
}

void __88__SiriCoreNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _cancelOpenTimer];
  [*(a1 + 32) _cancelSlowOpenTimer];
  *(*(a1 + 32) + 84) = 0;
  *(*(a1 + 32) + 85) = v4 == 0;
  (*(*(a1 + 40) + 16))();
}

void __88__SiriCoreNWConnection_openConnectionForURL_withConnectionId_initialPayload_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:31 userInfo:0];
    }

    [*(a1 + 32) _closeWithError:v6];
  }
}

- (void)_getNWConnectionWithInitialData:(id)data completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  kdebug_trace();
  v8 = self->_resolvedHost;
  port = [(NSURL *)self->_url port];
  stringValue = [port stringValue];

  scheme = [(NSURL *)self->_url scheme];
  self->_usingTLS = [scheme caseInsensitiveCompare:@"https"] == 0;

  if (!stringValue)
  {
    if (self->_usingTLS)
    {
      stringValue = @"443";
    }

    else
    {
      stringValue = @"80";
    }
  }

  uTF8String = [(NSString *)v8 UTF8String];
  host = nw_endpoint_create_host(uTF8String, [(__CFString *)stringValue UTF8String]);
  v14 = MEMORY[0x277CEF0A8];
  if (!host)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:22 userInfo:0];
    v23 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[SiriCoreNWConnection _getNWConnectionWithInitialData:completion:]";
      _os_log_error_impl(&dword_2669D1000, v23, OS_LOG_TYPE_ERROR, "%s Failed to create endpoint", buf, 0xCu);
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    else if (!v22)
    {
      goto LABEL_6;
    }

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

LABEL_6:
  mptcpFallbackPort = [(SAConnectionPolicy *)self->_policy mptcpFallbackPort];
  if (mptcpFallbackPort)
  {
    v16 = mptcpFallbackPort;
    [(SAConnectionPolicy *)self->_policy mptcpFallbackPort];
    v17 = v8;
    v18 = completionCopy;
    v20 = v19 = dataCopy;
    integerValue = [v20 integerValue];

    dataCopy = v19;
    completionCopy = v18;
    v8 = v17;
    v14 = MEMORY[0x277CEF0A8];

    if (!integerValue)
    {
      goto LABEL_16;
    }
  }

  else
  {
    integerValue = 5228;
  }

  v24 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v31 = "[SiriCoreNWConnection _getNWConnectionWithInitialData:completion:]";
    v32 = 1024;
    v33 = integerValue;
    _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_INFO, "%s mptcp_alternate_port = %d", buf, 0x12u);
  }

  nw_endpoint_set_alternate_port();
LABEL_16:
  v25 = [(SiriCoreNWConnection *)self _setParametersForHost:uTF8String useTLS:self->_usingTLS initialPayload:dataCopy];
  v26 = nw_connection_create(host, v25);
  v27 = +[SiriCoreNetworkActivityTracing sharedNetworkActivityTracing];
  [v27 networkActivityAddNWConnection:v26];

  if (!v26)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:23 userInfo:0];
    v28 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[SiriCoreNWConnection _getNWConnectionWithInitialData:completion:]";
      _os_log_impl(&dword_2669D1000, v28, OS_LOG_TYPE_INFO, "%s Failed to create connection", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v22 = 0;
LABEL_21:
  completionCopy[2](completionCopy, v26, v22);

  v29 = *MEMORY[0x277D85DE8];
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
  handler[2] = __50__SiriCoreNWConnection__setupStaleConnectionTimer__block_invoke;
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

void __50__SiriCoreNWConnection__setupStaleConnectionTimer__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0A8];
  v3 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(*(a1 + 32) + 144);
    v14 = 136315650;
    v15 = "[SiriCoreNWConnection _setupStaleConnectionTimer]_block_invoke";
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_INFO, "%s Checking stale connection. Last counter value %tu current %tu", &v14, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(*(a1 + 32) + 144);
  if (*(v6 + 24) == v7)
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[SiriCoreNWConnection _setupStaleConnectionTimer]_block_invoke";
      _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s Connection is stale!", &v14, 0xCu);
    }

    dispatch_source_cancel(*(a1 + 40));
    v9 = *(a1 + 32);
    v10 = *(v9 + 136);
    if (*(a1 + 40) == v10)
    {
      *(v9 + 136) = 0;
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

- (void)_cancelConnectionUnviableTimer
{
  connectionUnviableTimer = self->_connectionUnviableTimer;
  if (connectionUnviableTimer)
  {
    dispatch_source_cancel(connectionUnviableTimer);
    v4 = self->_connectionUnviableTimer;
    self->_connectionUnviableTimer = 0;
  }
}

- (void)_startConnectionUnviableTimer
{
  if (self->_connection)
  {
    [(SiriCoreNWConnection *)self _cancelConnectionUnviableTimer];
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v4 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x77359400uLL);
    connection = self->_connection;
    id = nw_connection_get_id();
    objc_initWeak(&location, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__SiriCoreNWConnection__startConnectionUnviableTimer__block_invoke;
    handler[3] = &unk_279BD6428;
    objc_copyWeak(v9, &location);
    v9[1] = id;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_resume(v3);
    connectionUnviableTimer = self->_connectionUnviableTimer;
    self->_connectionUnviableTimer = v3;

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __53__SiriCoreNWConnection__startConnectionUnviableTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelConnectionUnviableTimer];

  id = objc_loadWeakRetained((a1 + 32));
  v4 = id;
  if (id)
  {
    id = *(id + 40);
    if (id)
    {
      v5 = *(a1 + 40);
      v8 = v4;
      id = nw_connection_get_id();
      v4 = v8;
      if (v5 == id)
      {
        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:3 userInfo:0];
        [v8 _closeWithError:v6];

        v4 = v8;
      }
    }

    v4[20] = 0;
  }

  return MEMORY[0x2821F96F8](id, v4);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setProviderConnectionPolicy:(id)policy
{
  v4 = [policy copy];
  policy = self->_policy;
  self->_policy = v4;

  MEMORY[0x2821F96F8](v4, policy);
}

- (void)setPolicyRoute:(id)route
{
  v4 = [route copy];
  route = self->_route;
  self->_route = v4;

  MEMORY[0x2821F96F8](v4, route);
}

- (void)_invokeOpenCompletionWithError:(id)error
{
  openCompletion = self->_openCompletion;
  if (openCompletion)
  {
    errorCopy = error;
    v7 = MEMORY[0x26D5E5DB0](openCompletion);
    v6 = self->_openCompletion;
    self->_openCompletion = 0;

    v7[2](v7, errorCopy);
  }
}

- (void)dealloc
{
  [(SiriCoreNWConnection *)self _cancelOpenTimer];
  [(SiriCoreNWConnection *)self _cancelSlowOpenTimer];
  [(SiriCoreNWConnection *)self _cancelStaleConnectionTimer];
  [(SiriCoreNWConnection *)self _cancelConnectionUnviableTimer];
  [(SiriCoreNWConnection *)self _closeWithError:0];
  v3.receiver = self;
  v3.super_class = SiriCoreNWConnection;
  [(SiriCoreNWConnection *)&v3 dealloc];
}

- (SiriCoreNWConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SiriCoreNWConnection;
  v6 = [(SiriCoreNWConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_isViable = 1;
  }

  return v7;
}

@end