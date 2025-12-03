@interface SiriCoreConnectionMetrics
- (id)getConnectionMetricsDescription;
- (void)_setConnectionMetricsFromNSPControlConnection:(id)connection withCompletion:(id)completion;
- (void)_setConnectionMetricsTCPInfo:(id)info;
- (void)setConnectionMetricsForIDS:(double)s messageDelay:(double)delay openErrorCode:(unint64_t)code;
- (void)setConnectionMetricsFromNWConnectionForDirect:(id)direct isMPTCP:(BOOL)p attemptedEndpoints:(id)endpoints withCompletion:(id)completion;
- (void)setConnectionMetricsFromNWConnectionForPOP:(id)p withCompletion:(id)completion;
- (void)setConnectionMetricsFromStream:(id)stream isPop:(BOOL)pop withCompletion:(id)completion;
- (void)setConnectionMetricsFromStreamForDirect:(id)direct withCompletion:(id)completion;
- (void)setConnectionMetricsFromStreamForPOP:(id)p withCompletion:(id)completion;
- (void)setTCPInfoMetricsByInterfaceName:(id)name;
@end

@implementation SiriCoreConnectionMetrics

- (id)getConnectionMetricsDescription
{
  v3 = MEMORY[0x277CCACA8];
  connectionMethod = [(SiriCoreConnectionMetrics *)self connectionMethod];
  connectionEdgeID = [(SiriCoreConnectionMetrics *)self connectionEdgeID];
  tcpInfoMetricsByInterfaceName = [(SiriCoreConnectionMetrics *)self tcpInfoMetricsByInterfaceName];
  v7 = [v3 stringWithFormat:@"ConnectionMethod: %@ on Edge: %@ TCP_INFO: %@", connectionMethod, connectionEdgeID, tcpInfoMetricsByInterfaceName];

  return v7;
}

- (void)setConnectionMetricsForIDS:(double)s messageDelay:(double)delay openErrorCode:(unint64_t)code
{
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
  [(SiriCoreConnectionMetrics *)self setIdsLastMessageDelay:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:s];
  [(SiriCoreConnectionMetrics *)self setIdsLastSocketDelay:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
  [(SiriCoreConnectionMetrics *)self setIdsLastSocketOpenError:v10];
}

- (void)setConnectionMetricsFromNWConnectionForPOP:(id)p withCompletion:(id)completion
{
  v6 = MEMORY[0x277D2CA50];
  completionCopy = completion;
  pCopy = p;
  v9 = [[v6 alloc] initFromNWConnection:pCopy];

  [(SiriCoreConnectionMetrics *)self _setConnectionMetricsFromNSPControlConnection:v9 withCompletion:completionCopy];
}

- (void)setConnectionMetricsFromNWConnectionForDirect:(id)direct isMPTCP:(BOOL)p attemptedEndpoints:(id)endpoints withCompletion:(id)completion
{
  pCopy = p;
  v53 = *MEMORY[0x277D85DE8];
  directCopy = direct;
  endpointsCopy = endpoints;
  completionCopy = completion;
  v13 = nw_connection_copy_tcp_info();
  v14 = v13;
  if (v13 && MEMORY[0x26D5E61D0](v13) == MEMORY[0x277D86468] && xpc_dictionary_get_count(v14))
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __117__SiriCoreConnectionMetrics_setConnectionMetricsFromNWConnectionForDirect_isMPTCP_attemptedEndpoints_withCompletion___block_invoke;
    applier[3] = &unk_279BD5A18;
    v49 = v15;
    v16 = v15;
    xpc_dictionary_apply(v14, applier);
    [(SiriCoreConnectionMetrics *)self _setConnectionMetricsTCPInfo:v16];
  }

  if (!pCopy)
  {
    [(SiriCoreConnectionMetrics *)self setSubflowCount:0];
    [(SiriCoreConnectionMetrics *)self setConnectedSubflowCount:0];
    [(SiriCoreConnectionMetrics *)self setPrimarySubflowInterfaceName:0];
    [(SiriCoreConnectionMetrics *)self setSubflowSwitchCounts:0];
    if (!directCopy)
    {
      goto LABEL_46;
    }

LABEL_14:
    v26 = nw_connection_copy_connected_remote_endpoint();
    if (v26)
    {
      description = nw_endpoint_get_description();
      if (description)
      {
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:description];
        if (v28)
        {
          [(SiriCoreConnectionMetrics *)self setConnectionEdgeID:v28];
        }

        goto LABEL_29;
      }

      v33 = @"addressUnavailable";
    }

    else
    {
      if ([endpointsCopy count])
      {
        v45 = v14;
        v29 = [endpointsCopy count];
        v30 = objc_alloc_init(MEMORY[0x277CCAB68]);
        if (v29)
        {
          for (i = 0; i != v29; ++i)
          {
            if (i)
            {
              [v30 appendString:{@", "}];
            }

            v32 = [endpointsCopy objectAtIndexedSubscript:i];
            [v30 appendString:v32];
          }
        }

        [(SiriCoreConnectionMetrics *)self setConnectionEdgeID:v30];

        v14 = v45;
LABEL_29:
        *v50 = 0;
        v51 = 0;
        v52 = 0;
        if (!nw_connection_fillout_tcp_statistics())
        {
LABEL_45:

          goto LABEL_46;
        }

        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v50];
        [(SiriCoreConnectionMetrics *)self setDnsResolutionTime:v34];

        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&v50[4]];
        [(SiriCoreConnectionMetrics *)self setConnectionStartTimeToDNSResolutionTimeMsec:v35];

        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v51];
        [(SiriCoreConnectionMetrics *)self setConnectionEstablishmentTimeMsec:v36];

        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v51)];
        [(SiriCoreConnectionMetrics *)self setConnectionStartTimeToConnectionEstablishmentTimeMsec:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52];
        [(SiriCoreConnectionMetrics *)self setTlsHandshakeTimeMsec:v38];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v52)];
        [(SiriCoreConnectionMetrics *)self setConnectionStartTimeToTLSHandshakeTimeMsec:v39];

        v40 = MEMORY[0x26D5E5AF0]();
        v41 = nw_connection_copy_protocol_metadata(directCopy, v40);

        negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(v41);
        if (negotiated_tls_protocol_version > 769)
        {
          switch(negotiated_tls_protocol_version)
          {
            case 770:
              v43 = @"TLS11";
              goto LABEL_44;
            case 771:
              v43 = @"TLS12";
              goto LABEL_44;
            case 772:
              v43 = @"TLS13";
              goto LABEL_44;
          }
        }

        else
        {
          switch(negotiated_tls_protocol_version)
          {
            case 0:
              v43 = @"Unknown";
              goto LABEL_44;
            case 768:
              v43 = @"SSL30";
              goto LABEL_44;
            case 769:
              v43 = @"TLS10";
LABEL_44:
              [(SiriCoreConnectionMetrics *)self setTlsVersion:v43];

              goto LABEL_45;
          }
        }

        v43 = @"TLSOther";
        goto LABEL_44;
      }

      v33 = @"peerUnavailable";
    }

    [(SiriCoreConnectionMetrics *)self setConnectionEdgeID:v33];
    goto LABEL_29;
  }

  subflow_count = nw_connection_multipath_get_subflow_count();
  v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:subflow_count];
  [(SiriCoreConnectionMetrics *)self setSubflowCount:v18];

  v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:subflow_count];
  [(SiriCoreConnectionMetrics *)self setConnectedSubflowCount:v19];

  primary_subflow_interface_index = nw_connection_multipath_get_primary_subflow_interface_index();
  if (if_indextoname(primary_subflow_interface_index, v50))
  {
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v50];
    [(SiriCoreConnectionMetrics *)self setPrimarySubflowInterfaceName:v21];
  }

  v22 = nw_connection_multipath_copy_subflow_counts();
  v23 = v22;
  if (v22 && MEMORY[0x26D5E61D0](v22) == MEMORY[0x277D86468])
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __117__SiriCoreConnectionMetrics_setConnectionMetricsFromNWConnectionForDirect_isMPTCP_attemptedEndpoints_withCompletion___block_invoke_2;
    v46[3] = &unk_279BD5A18;
    v47 = v24;
    v25 = v24;
    xpc_dictionary_apply(v23, v46);
    [(SiriCoreConnectionMetrics *)self setSubflowSwitchCounts:v25];
  }

  if (directCopy)
  {
    goto LABEL_14;
  }

LABEL_46:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __117__SiriCoreConnectionMetrics_setConnectionMetricsFromNWConnectionForDirect_isMPTCP_attemptedEndpoints_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  bytes_ptr = xpc_data_get_bytes_ptr(v5);
  if (bytes_ptr)
  {
    v7 = bytes_ptr;
    if (xpc_data_get_length(v5) == 424 && MEMORY[0x26D5E61D0](v5) == MEMORY[0x277D86458])
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a2];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:424];
      [*(a1 + 32) setObject:v9 forKey:v8];
    }
  }

  return 1;
}

uint64_t __117__SiriCoreConnectionMetrics_setConnectionMetricsFromNWConnectionForDirect_isMPTCP_attemptedEndpoints_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, xpc_object_t xuint)
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(xuint)];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

- (void)_setConnectionMetricsFromNSPControlConnection:(id)connection withCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  completionCopy = completion;
  v8 = completionCopy;
  if (connectionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__SiriCoreConnectionMetrics__setConnectionMetricsFromNSPControlConnection_withCompletion___block_invoke;
    v11[3] = &unk_279BD59F0;
    v11[4] = self;
    v12 = completionCopy;
    [connectionCopy fetchConnectionInfoWithCompletionHandler:v11];
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    v9 = *MEMORY[0x277CEF0E0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[SiriCoreConnectionMetrics _setConnectionMetricsFromNSPControlConnection:withCompletion:]";
      _os_log_error_impl(&dword_2669D1000, v9, OS_LOG_TYPE_ERROR, "%s NSP Control Connection was nil. Stream did not use NSP.", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __90__SiriCoreConnectionMetrics__setConnectionMetricsFromNSPControlConnection_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v33 = 136315138;
    v34 = "[SiriCoreConnectionMetrics _setConnectionMetricsFromNSPControlConnection:withCompletion:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_INFO, "%s ", &v33, 0xCu);
  }

  v5 = [v3 TCPInfo];
  [*(a1 + 32) _setConnectionMetricsTCPInfo:v5];
  v6 = [v3 isMultipath];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v3, "multipathSubflowCount")}];
    [v7 setSubflowCount:v8];

    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v3, "multipathConnectedSubflowCount")}];
    [v9 setConnectedSubflowCount:v10];

    if (if_indextoname([v3 multipathPrimarySubflowInterfaceIndex], &v33))
    {
      v11 = *(a1 + 32);
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v33];
      [v11 setPrimarySubflowInterfaceName:v12];
    }

    v13 = [v3 multipathSubflowSwitchCounts];
    if (v13)
    {
      [*(a1 + 32) setSubflowSwitchCounts:v13];
    }
  }

  else
  {
    [*(a1 + 32) setSubflowCount:0];
    [*(a1 + 32) setConnectedSubflowCount:0];
    [*(a1 + 32) setPrimarySubflowInterfaceName:0];
    [*(a1 + 32) setSubflowSwitchCounts:0];
  }

  v14 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"Tuscany"];
  v15 = [v3 pathType];
  v16 = @"_DirectTCP";
  if (v6)
  {
    v16 = @"_DirectMPTCP";
    v17 = @"_UnknownMPTCP";
  }

  else
  {
    v17 = @"_UnknownTCP";
  }

  v18 = @"_TCP";
  if (v6)
  {
    v18 = @"_MPTCP";
  }

  if (v15 == 1)
  {
    v17 = v18;
  }

  if (v15 == 2)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  [v14 appendString:v19];
  [*(a1 + 32) setConnectionMethod:v14];
  v20 = [v3 edgeAddress];
  if (v20)
  {
    [*(a1 + 32) setConnectionEdgeID:v20];
  }

  v21 = [v3 edgeType];
  if (v21 > 3)
  {
    v22 = @"Unavailable";
  }

  else
  {
    v22 = off_279BD5A38[v21];
  }

  [*(a1 + 32) setConnectionEdgeType:v22];
  if ([v3 fallbackReason])
  {
    v23 = *(a1 + 32);
    v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v3, "fallbackReason")}];
    [v23 setConnectionFallbackReason:v24];
  }

  [v3 connectionDelay];
  if (v25 != 0.0)
  {
    v26 = *(a1 + 32);
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v26 setConnectionDelay:v27];
  }

  [v3 firstTxByteDelay];
  if (v28 != 0.0)
  {
    v29 = *(a1 + 32);
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v29 setFirstTxByteDelay:v30];
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_setConnectionMetricsTCPInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy count];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __58__SiriCoreConnectionMetrics__setConnectionMetricsTCPInfo___block_invoke;
    v14 = &unk_279BD59C8;
    v15 = v7;
    v16 = v8;
    v9 = v8;
    v10 = v7;
    [infoCopy enumerateKeysAndObjectsUsingBlock:&v11];
    [(SiriCoreConnectionMetrics *)self setTCPInfoMetricsByInterfaceName:v10, v11, v12, v13, v14];
    [(SiriCoreConnectionMetrics *)self setFlowNetworkInterfaceType:v9];
  }

  else
  {
    [(SiriCoreConnectionMetrics *)self setTCPInfoMetricsByInterfaceName:0];
  }
}

void __58__SiriCoreConnectionMetrics__setConnectionMetricsTCPInfo___block_invoke(uint64_t a1, void *a2, id a3)
{
  v6 = a3;
  v7 = a2;
  v9 = SiriCoreConnectionTCPInfoMetricsCreate(v7, [a3 bytes]);
  [*(a1 + 32) setObject:v9 forKey:v7];
  v8 = SiriCoreConnectionTechnologyGetDescription([SiriCoreNetworkManager connectionTypeForInterface:v7]);
  [*(a1 + 40) setObject:v8 forKey:v7];
}

- (void)setTCPInfoMetricsByInterfaceName:(id)name
{
  v4 = [name copy];
  tcpInfoMetricsByInterfaceName = self->_tcpInfoMetricsByInterfaceName;
  self->_tcpInfoMetricsByInterfaceName = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setConnectionMetricsFromStreamForPOP:(id)p withCompletion:(id)completion
{
  v6 = MEMORY[0x277D2CA50];
  completionCopy = completion;
  pCopy = p;
  v9 = [[v6 alloc] initFromStream:pCopy];

  [(SiriCoreConnectionMetrics *)self _setConnectionMetricsFromNSPControlConnection:v9 withCompletion:completionCopy];
}

- (void)setConnectionMetricsFromStreamForDirect:(id)direct withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  directCopy = direct;
  completionCopy = completion;
  v8 = [directCopy propertyForKey:*MEMORY[0x277CBACB8]];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v9];
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v10];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__SiriCoreConnectionMetrics_setConnectionMetricsFromStreamForDirect_withCompletion___block_invoke;
    v26[3] = &unk_279BD59C8;
    v27 = v11;
    v28 = v12;
    v13 = v12;
    v14 = v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v26];
    [(SiriCoreConnectionMetrics *)self setTCPInfoMetricsByInterfaceName:v14];
    [(SiriCoreConnectionMetrics *)self setFlowNetworkInterfaceType:v13];
  }

  else
  {
    [(SiriCoreConnectionMetrics *)self setTCPInfoMetricsByInterfaceName:0];
  }

  v15 = [directCopy propertyForKey:*MEMORY[0x277CBADC8]];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    v17 = [directCopy propertyForKey:*MEMORY[0x277CBAE30]];
    [(SiriCoreConnectionMetrics *)self setSubflowCount:v17];

    v18 = [directCopy propertyForKey:*MEMORY[0x277CBAE20]];
    [(SiriCoreConnectionMetrics *)self setConnectedSubflowCount:v18];

    v19 = [directCopy propertyForKey:*MEMORY[0x277CBAE28]];
    [(SiriCoreConnectionMetrics *)self setPrimarySubflowInterfaceName:v19];

    v20 = [directCopy propertyForKey:*MEMORY[0x277CBAE38]];
    [(SiriCoreConnectionMetrics *)self setSubflowSwitchCounts:v20];
  }

  else
  {
    [(SiriCoreConnectionMetrics *)self setSubflowCount:0];
    [(SiriCoreConnectionMetrics *)self setConnectedSubflowCount:0];
    [(SiriCoreConnectionMetrics *)self setPrimarySubflowInterfaceName:0];
    [(SiriCoreConnectionMetrics *)self setSubflowSwitchCounts:0];
  }

  v21 = [directCopy propertyForKey:@"__kCFStreamPropertyPeerAddress"];
  v22 = v21;
  if (v21)
  {
    if (!getnameinfo([v21 bytes], objc_msgSend(v21, "length"), v29, 0x100u, 0, 0, 2))
    {
      v25 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
      if (v25)
      {
        [(SiriCoreConnectionMetrics *)self setConnectionEdgeID:v25];
      }

      if (completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v23 = @"addressUnavailable";
  }

  else
  {
    v23 = @"peerUnavailable";
  }

  [(SiriCoreConnectionMetrics *)self setConnectionEdgeID:v23];
  if (completionCopy)
  {
LABEL_12:
    completionCopy[2](completionCopy);
  }

LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

void __84__SiriCoreConnectionMetrics_setConnectionMetricsFromStreamForDirect_withCompletion___block_invoke(uint64_t a1, void *a2, id a3)
{
  v6 = a3;
  v7 = a2;
  v9 = SiriCoreConnectionTCPInfoMetricsCreate(v7, [a3 bytes]);
  [*(a1 + 32) setObject:v9 forKey:v7];
  v8 = SiriCoreConnectionTechnologyGetDescription([SiriCoreNetworkManager connectionTypeForInterface:v7]);
  [*(a1 + 40) setObject:v8 forKey:v7];
}

- (void)setConnectionMetricsFromStream:(id)stream isPop:(BOOL)pop withCompletion:(id)completion
{
  if (pop)
  {
    [(SiriCoreConnectionMetrics *)self setConnectionMetricsFromStreamForPOP:stream withCompletion:completion];
  }

  else
  {
    [(SiriCoreConnectionMetrics *)self setConnectionMetricsFromStreamForDirect:stream withCompletion:completion];
  }
}

@end