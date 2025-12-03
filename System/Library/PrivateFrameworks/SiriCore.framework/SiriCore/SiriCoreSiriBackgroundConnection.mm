@interface SiriCoreSiriBackgroundConnection
- (BOOL)_consumeAceDataWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)_consumeAceHeaderWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)_consumeHTTPHeaderWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)_shouldTrySameConnectionMethodForMethod:(int64_t)method error:(id)error;
- (BOOL)_tryParsingHTTPHeaderData:(id)data partialMessage:(__CFHTTPMessage *)message statusCode:(int64_t *)code bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)_tryReadingHTTPHeaderData:(id)data withMessage:(__CFHTTPMessage *)message bytesRead:(unint64_t *)read error:(id *)error;
- (BOOL)_tryReadingParsedDataFromBytes:(const void *)bytes length:(unint64_t)length packet:(id *)packet object:(id *)object bytesParsed:(unint64_t *)parsed error:(id *)error;
- (BOOL)_usingFlorence;
- (BOOL)_usingPOPOnPeer;
- (Class)_providerClass;
- (SiriCoreSiriBackgroundConnection)initWithQueue:(id)queue;
- (SiriCoreSiriBackgroundConnectionDelegate)delegate;
- (id)_bestErrorBetweenError:(id)error peerError:(id)peerError;
- (id)_connectionMethodDescription;
- (id)_headerDataForURL:(id)l aceHost:(id)host languageCode:(id)code syncAssistantId:(id)id;
- (id)_httpHeaderData;
- (id)_tryReadingAceHeaderFromData:(id)data bytesParsed:(unint64_t *)parsed error:(id *)error;
- (int64_t)_checkForProgressOnReadingData;
- (int64_t)_checkPings;
- (int64_t)_nextConnectionMethod;
- (int64_t)_normalizeSNR:(int64_t)r;
- (void)_aceHeaderTimeoutFired:(id)fired afterTimeout:(double)timeout;
- (void)_bufferGeneralData:(id)data;
- (void)_cancelOutstandingBarriers;
- (void)_cancelSecondaryConnection;
- (void)_closeConnectionAndPrepareForReconnect:(BOOL)reconnect;
- (void)_connectionHasBytesAvailable:(id)available;
- (void)_didEncounterError:(id)error;
- (void)_fallBackToNextConnectionMethod:(int64_t)method fromError:(id)error afterDelay:(double)delay;
- (void)_fallBackToNextConnectionMethodWithError:(id)error orElse:(id)else;
- (void)_forceTriggerRetry;
- (void)_getCellularMetrics:(id)metrics;
- (void)_getWifiMetrics:(id)metrics;
- (void)_handleAceEnd;
- (void)_handleAceNop;
- (void)_handleAceObject:(id)object;
- (void)_handlePacket:(id *)packet;
- (void)_initializeBufferedGeneralOutputDataWithInitialPayload:(BOOL)payload;
- (void)_networkProviderDidOpen;
- (void)_pingTimerFired;
- (void)_resumePingTimer;
- (void)_scheduleAceHeaderTimeoutTimerWithInterval:(double)interval;
- (void)_sendGeneralData:(id)data;
- (void)_setNetworkProvider:(id)provider;
- (void)_setupReadHandlerOnProvider;
- (void)_startNetworkProviderWithInfo:(id)info;
- (void)_startSecondaryConnection;
- (void)_startWithConnectionInfo:(id)info proposedFallbackMethod:(int64_t)method allowFallbackToNewMethod:(BOOL)newMethod;
- (void)_tryToWriteBufferedOutputData;
- (void)barrier:(id)barrier;
- (void)cancel;
- (void)connectionProvider:(id)provider receivedError:(id)error;
- (void)connectionProvider:(id)provider receivedIntermediateError:(id)error;
- (void)connectionProvider:(id)provider receivedViabilityChangeNotification:(BOOL)notification;
- (void)connectionProviderReceivedBetterRouteNotification:(id)notification;
- (void)dealloc;
- (void)getConnectionMetrics:(id)metrics withCompletion:(id)completion;
- (void)sendCommand:(id)command moreComing:(BOOL)coming errorHandler:(id)handler;
- (void)sendCommands:(id)commands errorHandler:(id)handler;
- (void)setSendPings:(BOOL)pings;
- (void)updateActiveBackgroundConnectionWithSecondary;
@end

@implementation SiriCoreSiriBackgroundConnection

- (SiriCoreSiriBackgroundConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getConnectionMetrics:(id)metrics withCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  completionCopy = completion;
  isCanceled = self->_isCanceled;
  if (isCanceled || self->_dispatchedSnapshotMetrics)
  {
    v9 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      dispatchedSnapshotMetrics = self->_dispatchedSnapshotMetrics;
      *buf = 136315650;
      v60 = "[SiriCoreSiriBackgroundConnection getConnectionMetrics:withCompletion:]";
      v61 = 1024;
      v62 = isCanceled;
      v63 = 1024;
      v64 = dispatchedSnapshotMetrics;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s isCanceled %d dispatched %d", buf, 0x18u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    ++self->_metricsCount;
    v11 = objc_alloc_init(SiriCoreConnectionMetrics);
    [(SiriCoreConnectionMetrics *)v11 setConnectionMethodHistory:metricsCopy];
    currentOpenTime = self->_currentOpenTime;
    firstStartTime = self->_firstStartTime;
    if (currentOpenTime > firstStartTime)
    {
      firstStartTime = [MEMORY[0x277CCABB0] numberWithDouble:currentOpenTime - firstStartTime];
      [(SiriCoreConnectionMetrics *)v11 setTimeUntilOpen:firstStartTime];

      firstStartTime = self->_firstStartTime;
    }

    firstByteReadTime = self->_firstByteReadTime;
    if (firstByteReadTime > firstStartTime)
    {
      firstStartTime2 = [MEMORY[0x277CCABB0] numberWithDouble:firstByteReadTime - firstStartTime];
      [(SiriCoreConnectionMetrics *)v11 setTimeUntilFirstByteRead:firstStartTime2];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startCount];
    [(SiriCoreConnectionMetrics *)v11 setAttemptCount:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_metricsCount];
    [(SiriCoreConnectionMetrics *)v11 setMetricsCount:v18];

    pingInfo = self->_pingInfo;
    if (pingInfo)
    {
      numberOfUnacknowledgedPings = [(SiriCorePingInfo *)pingInfo numberOfUnacknowledgedPings];
      pingAcknowledgedCount = [(SiriCorePingInfo *)self->_pingInfo pingAcknowledgedCount];
      v22 = MEMORY[0x277CCABB0];
      [(SiriCorePingInfo *)self->_pingInfo avgPingTime];
      v23 = [v22 numberWithDouble:?];
      [(SiriCoreConnectionMetrics *)v11 setMeanPing:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithInteger:pingAcknowledgedCount + numberOfUnacknowledgedPings];
      [(SiriCoreConnectionMetrics *)v11 setPingCount:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfUnacknowledgedPings];
      [(SiriCoreConnectionMetrics *)v11 setUnacknowledgedPingCount:v25];
    }

    else
    {
      [(SiriCoreConnectionMetrics *)v11 setMeanPing:&unk_287838228];
      [(SiriCoreConnectionMetrics *)v11 setPingCount:&unk_287838228];
      [(SiriCoreConnectionMetrics *)v11 setUnacknowledgedPingCount:&unk_287838228];
    }

    _connectionMethodDescription = [(SiriCoreSiriBackgroundConnection *)self _connectionMethodDescription];
    [(SiriCoreConnectionMetrics *)v11 setConnectionMethod:_connectionMethodDescription];

    connectionProvider = self->_connectionProvider;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [(SiriCoreConnectionMetrics *)v11 setProviderStyle:v29];

    connectionPolicy = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicy];
    v31 = connectionPolicy;
    if (connectionPolicy)
    {
      policyId = [connectionPolicy policyId];
      [(SiriCoreConnectionMetrics *)v11 setPolicyId:policyId];
    }

    v33 = dispatch_group_create();
    metricsQueue = self->_metricsQueue;
    if (!metricsQueue)
    {
      v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v36 = dispatch_queue_attr_make_with_qos_class(v35, QOS_CLASS_DEFAULT, 0);

      v37 = dispatch_queue_create(0, v36);
      v38 = self->_metricsQueue;
      self->_metricsQueue = v37;

      metricsQueue = self->_metricsQueue;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke;
    block[3] = &unk_279BD6540;
    block[4] = self;
    v39 = v11;
    v58 = v39;
    dispatch_group_async(v33, metricsQueue, block);
    v40 = self->_metricsQueue;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke_2;
    v55[3] = &unk_279BD6540;
    v55[4] = self;
    v41 = v39;
    v56 = v41;
    dispatch_group_async(v33, v40, v55);
    v42 = self->_connectionProvider;
    if (v42)
    {
      v43 = v42;
      dispatch_group_enter(v33);
      v44 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v60 = "[SiriCoreSiriBackgroundConnection getConnectionMetrics:withCompletion:]";
        _os_log_debug_impl(&dword_2669D1000, v44, OS_LOG_TYPE_DEBUG, "%s Asking for metrics from stream provider", buf, 0xCu);
      }

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke_250;
      v52[3] = &unk_279BD6540;
      v53 = v43;
      v54 = v33;
      v45 = v43;
      [(SiriCoreConnectionProvider *)v45 updateConnectionMetrics:v41 completion:v52];
    }

    queue = self->_queue;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke_251;
    v49[3] = &unk_279BD65D8;
    v49[4] = self;
    v50 = v41;
    v51 = completionCopy;
    v47 = v41;
    dispatch_group_notify(v33, queue, v49);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke_250(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriCoreSiriBackgroundConnection getConnectionMetrics:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&dword_2669D1000, v2, OS_LOG_TYPE_DEBUG, "%s Got metrics from stream provider %@", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __72__SiriCoreSiriBackgroundConnection_getConnectionMetrics_withCompletion___block_invoke_251(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1[4] + 360) = 1;
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SiriCoreSiriBackgroundConnection getConnectionMetrics:withCompletion:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Giving metrics back", &v6, 0xCu);
  }

  v3 = a1[5];
  result = (*(a1[6] + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_connectionMethodDescription
{
  connectionMethod = self->_connectionMethod;
  if (connectionMethod == 2)
  {
    v6 = self->_connectionInfo;
    connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)v6 connectionPolicyRoute];
    type = [connectionPolicyRoute type];
    v9 = [type isEqualToString:*MEMORY[0x277D47CB8]];

    if (v9)
    {
      v4 = @"Florence";
    }

    else
    {
      isMultipath = [(SiriCoreConnectionProvider *)self->_connectionProvider isMultipath];
      connectionPolicy = [(SiriCoreSiriConnectionInfo *)v6 connectionPolicy];
      if (connectionPolicy && (v12 = connectionPolicy, v13 = [(SiriCoreSiriConnectionInfo *)v6 imposePolicyBan], v12, v13))
      {
        v14 = @"TCP_PolicyBanned";
        if (isMultipath)
        {
          v14 = @"MPTCP_PolicyBanned";
        }

        v4 = v14;
      }

      else if (isMultipath)
      {
        v4 = @"MPTCP";
      }

      else
      {
        v4 = @"TCP";
      }
    }
  }

  else
  {
    v3 = @"TCP";
    if (connectionMethod == 3)
    {
      v3 = @"Peer";
    }

    if (connectionMethod == 4)
    {
      v4 = @"Tuscany";
    }

    else
    {
      v4 = v3;
    }
  }

  return v4;
}

- (void)_handleAceEnd
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0A8];
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SiriCoreSiriBackgroundConnection _handleAceEnd]";
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_INFO, "%s Connection got ace end. Terminating connection", &v8, 0xCu);
  }

  if ([(SiriCoreSiriBackgroundConnection *)self _hasBufferedDataOrOutstandingPings])
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[SiriCoreSiriBackgroundConnection _handleAceEnd]";
      _os_log_error_impl(&dword_2669D1000, v5, OS_LOG_TYPE_ERROR, "%s Ace end is unexpected, return error", &v8, 0xCu);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:8 userInfo:0];
    [(SiriCoreSiriBackgroundConnection *)self _didEncounterError:v6];
  }

  [(SiriCoreSiriBackgroundConnection *)self cancel];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleAceObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    encodedClassName = [objectCopy encodedClassName];
    v10 = 136315394;
    v11 = "[SiriCoreSiriBackgroundConnection _handleAceObject:]";
    v12 = 2112;
    v13 = encodedClassName;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s Connection got AceObject: %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriBackgroundConnection:self didReceiveAceObject:objectCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAceNop
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[SiriCoreSiriBackgroundConnection _handleAceNop]";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_INFO, "%s Connection got nop", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handlePacket:(id *)packet
{
  var0 = packet->var0;
  if (var0 > 2)
  {
    if (var0 == 3)
    {
      [(SiriCoreSiriBackgroundConnection *)self _handleAcePong:packet->var1];
    }

    else if (var0 == 4)
    {
      [(SiriCoreSiriBackgroundConnection *)self _handleAceEnd];
    }
  }

  else if (var0 == 1)
  {
    [(SiriCoreSiriBackgroundConnection *)self _handleAceNop];
  }

  else if (var0 == 2)
  {
    [(SiriCoreSiriBackgroundConnection *)self _handleAcePing:packet->var1];
  }
}

- (BOOL)_tryReadingParsedDataFromBytes:(const void *)bytes length:(unint64_t)length packet:(id *)packet object:(id *)object bytesParsed:(unint64_t *)parsed error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  [SiriCoreAceSerialization tryParsingPacketWithBytes:bytes length:length rawPacket:&v31 object:&v29 bytesRead:&v30 error:&v28];
  v12 = v29;
  v13 = v28;
  if (!v13)
  {
    if (v12)
    {
      v21 = 0;
    }

    else
    {
      v21 = v31.var0 == 0;
    }

    if (v21)
    {
      v22 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[SiriCoreSiriBackgroundConnection _tryReadingParsedDataFromBytes:length:packet:object:bytesParsed:error:]";
        _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_INFO, "%s No error parsing packet but we didn't get anything!", buf, 0xCu);
      }
    }

LABEL_14:
    v14 = 0;
    if (!packet)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = v13;
  domain = [v13 domain];
  if ([domain isEqualToString:@"SiriCoreAceSerializationErrorDomain"])
  {
    code = [v14 code];

    if (!code)
    {
      userInfo = [v14 userInfo];
      v18 = [userInfo objectForKey:@"SiriCoreAceSerializationErrorUserInfoBytesNeeded"];
      v19 = [userInfo objectForKey:@"SiriCoreAceSerializationErrorUserInfoBytesAvailable"];
      v20 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v33 = "[SiriCoreSiriBackgroundConnection _tryReadingParsedDataFromBytes:length:packet:object:bytesParsed:error:]";
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        _os_log_impl(&dword_2669D1000, v20, OS_LOG_TYPE_INFO, "%s Need more data to read packet. Needed: %@ Have: %@", buf, 0x20u);
      }

      v30 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v23 = *MEMORY[0x277CEF0A8];
  if (!os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
  {
    if (!packet)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *buf = 136315394;
  v33 = "[SiriCoreSiriBackgroundConnection _tryReadingParsedDataFromBytes:length:packet:object:bytesParsed:error:]";
  v34 = 2114;
  v35 = v14;
  _os_log_error_impl(&dword_2669D1000, v23, OS_LOG_TYPE_ERROR, "%s Error parsing packet data %{public}@", buf, 0x16u);
  if (packet)
  {
LABEL_19:
    *packet = v31;
  }

LABEL_20:
  if (object)
  {
    v24 = v12;
    *object = v12;
  }

  if (parsed)
  {
    *parsed = v30;
  }

  if (error)
  {
    v25 = v14;
    *error = v14;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

- (id)_tryReadingAceHeaderFromData:(id)data bytesParsed:(unint64_t *)parsed error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v19 = 0;
  v20 = 0;
  [SiriCoreAceSerialization tryParsingAceHeaderData:data compressionType:&v21 bytesRead:&v20 error:&v19];
  v7 = v19;
  v8 = v7;
  if (v7)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:@"SiriCoreAceSerializationErrorDomain"])
    {
      code = [v8 code];

      if (!code)
      {
        v11 = *MEMORY[0x277CEF0A8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v23 = "[SiriCoreSiriBackgroundConnection _tryReadingAceHeaderFromData:bytesParsed:error:]";
          _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Need more data to read ace header.", buf, 0xCu);
        }

        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SiriCoreSiriBackgroundConnection _tryReadingAceHeaderFromData:bytesParsed:error:]";
      v24 = 2114;
      v25 = v8;
      _os_log_error_impl(&dword_2669D1000, v15, OS_LOG_TYPE_ERROR, "%s Error reading ace header %{public}@", buf, 0x16u);
    }

LABEL_14:
    v14 = 0;
    if (!parsed)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = off_279BD52A8;
  if (v21 != 1)
  {
    v12 = off_279BD5398;
  }

  v13 = *v12;
  v14 = objc_alloc_init(objc_opt_class());
  if (parsed)
  {
LABEL_15:
    *parsed = v20;
  }

LABEL_16:
  if (error)
  {
    v16 = v8;
    *error = v8;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_tryParsingHTTPHeaderData:(id)data partialMessage:(__CFHTTPMessage *)message statusCode:(int64_t *)code bytesRead:(unint64_t *)read error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = [dataCopy length];
  bytes = [dataCopy bytes];

  if (!CFHTTPMessageAppendBytes(message, bytes, v12))
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:1 userInfo:0];
    v12 = 0;
    goto LABEL_10;
  }

  if (!CFHTTPMessageIsHeaderComplete(message))
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionInternalErrorDomain" code:0 userInfo:0];
LABEL_10:
    ResponseStatusCode = 0;
    if (!code)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = CFHTTPMessageCopyBody(message);
  if (v14)
  {
    v15 = v14;
    Length = CFDataGetLength(v14);
    v17 = v12 - Length;
    if (v12 <= Length)
    {
      v24 = Length;
      v25 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
      {
        v26 = 136315650;
        v27 = "[SiriCoreSiriBackgroundConnection _tryParsingHTTPHeaderData:partialMessage:statusCode:bytesRead:error:]";
        v28 = 2050;
        v29 = v24;
        v30 = 2050;
        v31 = v12;
        _os_log_error_impl(&dword_2669D1000, v25, OS_LOG_TYPE_ERROR, "%s Something has gone terribly wrong. bytesRead: %{public}lld bodyLength: %{public}tu", &v26, 0x20u);
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:15 userInfo:0];
      v17 = 0;
    }

    else
    {
      v18 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        v26 = 136315394;
        v27 = "[SiriCoreSiriBackgroundConnection _tryParsingHTTPHeaderData:partialMessage:statusCode:bytesRead:error:]";
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, "%s Header is complete bytes read %tu", &v26, 0x16u);
      }

      v19 = 0;
    }

    CFRelease(v15);
    v12 = v17;
  }

  else
  {
    v19 = 0;
  }

  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(message);
  if (code)
  {
LABEL_11:
    *code = ResponseStatusCode;
  }

LABEL_12:
  if (read)
  {
    *read = v12;
  }

  if (error)
  {
    v21 = v19;
    *error = v19;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19 == 0;
}

- (BOOL)_tryReadingHTTPHeaderData:(id)data withMessage:(__CFHTTPMessage *)message bytesRead:(unint64_t *)read error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  [(SiriCoreSiriBackgroundConnection *)self _tryParsingHTTPHeaderData:data partialMessage:message statusCode:&v22 bytesRead:read error:&v21];
  v8 = v21;
  v9 = v8;
  if (v8 || v22 == 200)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:@"SiriCoreSiriConnectionInternalErrorDomain"])
    {
      code = [v9 code];

      if (!code)
      {

        v9 = 0;
        if (!error)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    if (v9 && (v17 = *MEMORY[0x277CEF0A8], os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315394;
      v24 = "[SiriCoreSiriBackgroundConnection _tryReadingHTTPHeaderData:withMessage:bytesRead:error:]";
      v25 = 2114;
      v26 = v9;
      _os_log_error_impl(&dword_2669D1000, v17, OS_LOG_TYPE_ERROR, "%s Error reading HTTP Header %{public}@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_20;
      }
    }

    else if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    v18 = v9;
    *error = v9;
    goto LABEL_20;
  }

  v10 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:?];
  v11 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = "[SiriCoreSiriBackgroundConnection _tryReadingHTTPHeaderData:withMessage:bytesRead:error:]";
    v25 = 2050;
    v26 = v22;
    v27 = 2114;
    v28 = v10;
    _os_log_error_impl(&dword_2669D1000, v11, OS_LOG_TYPE_ERROR, "%s HTTP status code %{public}ld: %{public}@", buf, 0x20u);
  }

  v12 = CFHTTPMessageCopyHeaderFieldValue(self->_httpResponseHeader, @"Location");
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  [dictionary setObject:v14 forKey:@"SiriCoreSiriConnectionHTTPErrorStatusCodeKey"];

  if (v10)
  {
    [dictionary setObject:v10 forKey:*MEMORY[0x277CCA450]];
  }

  if (v12)
  {
    [dictionary setObject:v12 forKey:@"SiriCoreSiriConnectionHTTPRedirectValueKey"];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:0 userInfo:dictionary];

  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

- (void)_setupReadHandlerOnProvider
{
  kdebug_trace();
  v3 = self->_connectionProvider;
  connectionProvider = self->_connectionProvider;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SiriCoreSiriBackgroundConnection__setupReadHandlerOnProvider__block_invoke;
  v6[3] = &unk_279BD5B88;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [(SiriCoreConnectionProvider *)connectionProvider readData:v6];
}

void __63__SiriCoreSiriBackgroundConnection__setupReadHandlerOnProvider__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  v7 = *(a1 + 40);
  if (*(a1 + 32) == v7[3])
  {
    v8 = *MEMORY[0x277CEF0A8];
    if (!v5 || v6)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
        v14 = 2112;
        size = v6;
        _os_log_error_impl(&dword_2669D1000, v8, OS_LOG_TYPE_ERROR, "%s Error reading data with error %@", buf, 0x16u);
        v7 = *(a1 + 40);
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __63__SiriCoreSiriBackgroundConnection__setupReadHandlerOnProvider__block_invoke_218;
      v10[3] = &unk_279BD6540;
      v10[4] = v7;
      v11 = v6;
      [v7 _fallBackToNextConnectionMethodWithError:v11 orElse:v10];
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
        v14 = 2048;
        size = dispatch_data_get_size(v5);
        _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_DEFAULT, "%s read %lu bytes", buf, 0x16u);
        v7 = *(a1 + 40);
      }

      [v7 _connectionHasBytesAvailable:v5];
      [*(a1 + 40) _setupReadHandlerOnProvider];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __63__SiriCoreSiriBackgroundConnection__setupReadHandlerOnProvider__block_invoke_218(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) _hasBufferedDataOrOutstandingPings])
  {
    v5 = [*(a1 + 40) domain];
    if ([v5 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"])
    {
      v6 = [*(a1 + 40) code];

      if (v6 == 25)
      {
        v7 = *MEMORY[0x277CEF0A8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
        {
          *v13 = 136315138;
          *&v13[4] = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
          v8 = "%s Read Error - NWConnectionReadFailure";
LABEL_19:
          _os_log_error_impl(&dword_2669D1000, v7, OS_LOG_TYPE_ERROR, v8, v13, 0xCu);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

    v9 = *(a1 + 40);
    v7 = *MEMORY[0x277CEF0A8];
    v10 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v10)
      {
        *v13 = 136315394;
        *&v13[4] = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
        *&v13[12] = 2112;
        *&v13[14] = v9;
        _os_log_error_impl(&dword_2669D1000, v7, OS_LOG_TYPE_ERROR, "%s Read Error - error %@", v13, 0x16u);
        v9 = *(a1 + 40);
      }

      v3 = *(a1 + 32);
      v4 = v9;
      goto LABEL_14;
    }

    if (v10)
    {
      *v13 = 136315138;
      *&v13[4] = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
      v8 = "%s Read Error - cancel";
      goto LABEL_19;
    }

LABEL_16:
    result = [*(a1 + 32) cancel];
    goto LABEL_17;
  }

  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
  {
    *v13 = 136315138;
    *&v13[4] = "[SiriCoreSiriBackgroundConnection _setupReadHandlerOnProvider]_block_invoke";
    _os_log_error_impl(&dword_2669D1000, v2, OS_LOG_TYPE_ERROR, "%s Read Error - mid request", v13, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
LABEL_14:
  result = [v3 _didEncounterError:v4];
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendCommands:(id)commands errorHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  handlerCopy = handler;
  v8 = [commandsCopy count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = commandsCopy;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        --v8;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __62__SiriCoreSiriBackgroundConnection_sendCommands_errorHandler___block_invoke;
        v17[3] = &unk_279BD6478;
        v14 = handlerCopy;
        v17[4] = v13;
        v18 = v14;
        [(SiriCoreSiriBackgroundConnection *)self sendCommand:v13 moreComing:v8 != 0 errorHandler:v17];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __62__SiriCoreSiriBackgroundConnection_sendCommands_errorHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32), a2);
  }

  return result;
}

- (void)sendCommand:(id)command moreComing:(BOOL)coming errorHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  handlerCopy = handler;
  v10 = MEMORY[0x277CEF0A8];
  v11 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 136315394;
    v33 = "[SiriCoreSiriBackgroundConnection sendCommand:moreComing:errorHandler:]";
    v34 = 2112;
    v35 = objc_opt_class();
    v13 = v35;
    _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_INFO, "%s Sending ACE Object, %@", buf, 0x16u);
  }

  v31 = 0;
  v14 = [commandCopy siriCore_serializedAceDataError:&v31];
  v15 = v31;
  if (!v15 && v14)
  {
    p_bufferedUncompressedData = &self->_bufferedUncompressedData;
    bufferedUncompressedData = self->_bufferedUncompressedData;
    if (bufferedUncompressedData)
    {
      concat = dispatch_data_create_concat(bufferedUncompressedData, v14);

      if (concat)
      {
        objc_storeStrong(&self->_bufferedUncompressedData, MEMORY[0x277D85CC8]);
        v15 = 0;
        v14 = concat;
        if (!coming)
        {
          goto LABEL_14;
        }

LABEL_10:
        v19 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          size = dispatch_data_get_size(v14);
          *buf = 136315394;
          v33 = "[SiriCoreSiriBackgroundConnection sendCommand:moreComing:errorHandler:]";
          v34 = 2048;
          v35 = size;
          _os_log_debug_impl(&dword_2669D1000, v19, OS_LOG_TYPE_DEBUG, "%s Buffering ACE Object of size %lu", buf, 0x16u);
        }

        v20 = v14;
        v21 = *p_bufferedUncompressedData;
        *p_bufferedUncompressedData = v20;
        goto LABEL_22;
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:27 userInfo:0];
      v14 = 0;
      if (coming)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 0;
      if (coming)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    outputCompressor = self->_outputCompressor;
    v30 = v15;
    v21 = [(SiriCoreDataCompressor *)outputCompressor compressedDataForData:v14 error:&v30];
    v23 = v30;

    v24 = *v10;
    if (v23 || !v21)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v27 = dispatch_data_get_size(v14);
        *buf = 136315394;
        v33 = "[SiriCoreSiriBackgroundConnection sendCommand:moreComing:errorHandler:]";
        v34 = 2048;
        v35 = v27;
        _os_log_error_impl(&dword_2669D1000, v24, OS_LOG_TYPE_ERROR, "%s error in compressing data of size %lu", buf, 0x16u);
      }

      v15 = v23;
    }

    else
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v28 = dispatch_data_get_size(v21);
        v29 = dispatch_data_get_size(v14);
        *buf = 136315650;
        v33 = "[SiriCoreSiriBackgroundConnection sendCommand:moreComing:errorHandler:]";
        v34 = 2048;
        v35 = v28;
        v36 = 2048;
        v37 = v29;
        _os_log_debug_impl(&dword_2669D1000, v24, OS_LOG_TYPE_DEBUG, "%s compression ratio is %lu/%lu", buf, 0x20u);
      }

      [(SiriCoreSiriBackgroundConnection *)self _sendGeneralData:v21];
      v15 = 0;
    }

LABEL_22:
  }

  if (v15)
  {
    handlerCopy[2](handlerCopy, v15);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_sendGeneralData:(id)data
{
  [(SiriCoreSiriBackgroundConnection *)self _bufferGeneralData:data];

  [(SiriCoreSiriBackgroundConnection *)self _tryToWriteBufferedOutputData];
}

- (void)_bufferGeneralData:(id)data
{
  concat = dispatch_data_create_concat(self->_bufferedGeneralOutputData, data);
  bufferedGeneralOutputData = self->_bufferedGeneralOutputData;
  self->_bufferedGeneralOutputData = concat;

  MEMORY[0x2821F96F8]();
}

- (void)_tryToWriteBufferedOutputData
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_isCanceled && self->_isOpened)
  {
    bufferedProviderHeaderOutputData = self->_bufferedProviderHeaderOutputData;
    if (bufferedProviderHeaderOutputData)
    {
      p_bufferedGeneralOutputData = &self->_bufferedGeneralOutputData;
      if (dispatch_data_get_size(self->_bufferedProviderHeaderOutputData))
      {
        v5 = bufferedProviderHeaderOutputData;
LABEL_10:
        size = dispatch_data_get_size(v5);
        if (size)
        {
          v9 = size;
          kdebug_trace();
          connectionProvider = self->_connectionProvider;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __65__SiriCoreSiriBackgroundConnection__tryToWriteBufferedOutputData__block_invoke;
          v16[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
          v16[4] = v9;
          [(SiriCoreConnectionProvider *)connectionProvider writeData:v5 completion:v16];
          v11 = v5;
          if (v5 != self->_bufferedProviderHeaderOutputData)
          {
            safetyNetBuffer = self->_safetyNetBuffer;
            if (safetyNetBuffer)
            {
              concat = dispatch_data_create_concat(safetyNetBuffer, v5);
              v14 = self->_safetyNetBuffer;
              self->_safetyNetBuffer = concat;
            }

            v11 = self->_bufferedProviderHeaderOutputData;
          }

          if (v5 == v11)
          {
            p_bufferedGeneralOutputData = &self->_bufferedProviderHeaderOutputData;
LABEL_20:
            objc_storeStrong(p_bufferedGeneralOutputData, MEMORY[0x277D85CC8]);
            goto LABEL_21;
          }

          if (v5 == *p_bufferedGeneralOutputData)
          {
            goto LABEL_20;
          }
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      p_bufferedGeneralOutputData = &self->_bufferedGeneralOutputData;
    }

    v5 = *p_bufferedGeneralOutputData;
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v6 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v7 = self->_connectionProvider;
    *buf = 136315394;
    v18 = "[SiriCoreSiriBackgroundConnection _tryToWriteBufferedOutputData]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s %@ is not open. buffering data", buf, 0x16u);
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
}

void __65__SiriCoreSiriBackgroundConnection__tryToWriteBufferedOutputData__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  kdebug_trace();
  v4 = *MEMORY[0x277CEF0A8];
  v5 = *MEMORY[0x277CEF0A8];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[SiriCoreSiriBackgroundConnection _tryToWriteBufferedOutputData]_block_invoke";
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[SiriCoreSiriBackgroundConnection _tryToWriteBufferedOutputData]_block_invoke";
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_DEFAULT, "%s Wrote: %lu", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_headerDataForURL:(id)l aceHost:(id)host languageCode:(id)code syncAssistantId:(id)id
{
  v62 = *MEMORY[0x277D85DE8];
  lCopy = l;
  hostCopy = host;
  codeCopy = code;
  value = id;
  Request = CFHTTPMessageCreateRequest(0, @"ACE", lCopy, *MEMORY[0x277CBACF8]);
  v51 = lCopy;
  host = [(__CFURL *)lCopy host];
  CFHTTPMessageSetHeaderFieldValue(Request, @"Host", host);
  v14 = SiriCoreUserAgentStringCreate(self->_productTypePrefix);
  CFHTTPMessageSetHeaderFieldValue(Request, @"User-Agent", v14);
  if (hostCopy)
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"X-Ace-Host", hostCopy);
  }

  if (codeCopy)
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"Accept-Language", codeCopy);
  }

  v48 = codeCopy;
  CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", @"2000000000");
  v15 = SiriCoreUUIDStringCreate();
  CFHTTPMessageSetHeaderFieldValue(Request, @"X-Client-Connection-Id", v15);
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v57 = @"X-Client-Connection-Id";
  v58 = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  [mEMORY[0x277CEF158] logEventWithType:914 context:v17];

  if (self->_siriConnectionUsesPeerManagedSync)
  {
    peerType = self->_peerType;
    if (peerType)
    {
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-Linked-Siri-Type", peerType);
    }

    peerVersion = self->_peerVersion;
    if (peerVersion)
    {
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-Linked-Siri-Version", peerVersion);
    }
  }

  if (AFIsInternalInstall())
  {
    if (self->_deviceIsInWalkaboutExperimentGroup)
    {
      CFHTTPMessageSetHeaderFieldValue(Request, @"X-Walkabout-Device", @"true");
    }

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    configOverrides = [mEMORY[0x277CEF368] configOverrides];

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __91__SiriCoreSiriBackgroundConnection__headerDataForURL_aceHost_languageCode_syncAssistantId___block_invoke;
    v54[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v54[4] = Request;
    [configOverrides enumerateKeysAndObjectsUsingBlock:v54];
  }

  featureFlags = [MEMORY[0x277CEF2A8] featureFlags];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __91__SiriCoreSiriBackgroundConnection__headerDataForURL_aceHost_languageCode_syncAssistantId___block_invoke_2;
  v53[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  v53[4] = Request;
  [featureFlags enumerateKeysAndObjectsUsingBlock:v53];
  if ([(SiriCoreSiriConnectionInfo *)self->_connectionInfo isForceOnDeviceOnlyDictationEnabled])
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"X-OnDevice-Only-Dictation-Forced", @"true");
  }

  if (AFIsInternalInstall() && _AFPreferencesShowAllDialogVariantsEnabled())
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"X-Show-Dialog-Variants", @"true");
  }

  CFHTTPMessageSetHeaderFieldValue(Request, @"X-Sync-Owner-Assistant-ID", value);
  v23 = CFHTTPMessageCopyAllHeaderFields(Request);
  v24 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SiriCoreSiriBackgroundConnection _headerDataForURL:aceHost:languageCode:syncAssistantId:]";
    *&buf[12] = 2112;
    *&buf[14] = v23;
    _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_INFO, "%s Connection Header: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained(&self->_delegate);
    [v27 siriBackgroundConnection:self willStartConnectionWithHTTPHeader:v23];
  }

  v28 = AFDeviceRegionCode();
  if (v28)
  {
    CFHTTPMessageSetHeaderFieldValue(Request, @"X-Device-Region-Code", v28);
  }

  v29 = CFHTTPMessageCopySerializedMessage(Request);
  CFRelease(Request);
  if (v29)
  {
    CFRetain(v29);
    BytePtr = CFDataGetBytePtr(v29);
    Length = CFDataGetLength(v29);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __SiriCoreDispatchDataCreateFromImmutableCFData_block_invoke;
    v60 = &__block_descriptor_40_e5_v8__0l;
    v61 = v29;
    v32 = dispatch_data_create(BytePtr, Length, 0, buf);
    CFRelease(v29);
  }

  else
  {
    v32 = 0;
  }

  if (AFIsInternalInstall())
  {
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    v34 = host;
    if (!host)
    {
      v34 = &stru_28782DDB0;
    }

    v55[0] = @"host";
    v55[1] = @"userAgent";
    if (v14)
    {
      v35 = v14;
    }

    else
    {
      v35 = &stru_28782DDB0;
    }

    v56[0] = v34;
    v56[1] = v35;
    if (hostCopy)
    {
      v36 = hostCopy;
    }

    else
    {
      v36 = &stru_28782DDB0;
    }

    v56[2] = v36;
    v55[2] = @"aceHost";
    v55[3] = @"url";
    absoluteString = [(__CFURL *)lCopy absoluteString];
    v38 = absoluteString;
    if (absoluteString)
    {
      v39 = absoluteString;
    }

    else
    {
      v39 = &stru_28782DDB0;
    }

    v56[3] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
    [mEMORY[0x277CEF158]2 logEventWithType:922 context:v40];

    v41 = objc_alloc_init(MEMORY[0x277D58C18]);
    v42 = v41;
    if (v14)
    {
      v43 = [(__CFString *)v14 copy];
      [v42 setUserAgent:v43];

      if (hostCopy)
      {
LABEL_42:
        v44 = [(__CFString *)hostCopy copy];
        [v42 setAceHost:v44];

LABEL_45:
        v45 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
        [v45 logSessionConnectionHttpHeaderCreated:v42];

        goto LABEL_46;
      }
    }

    else
    {
      [v41 setUserAgent:&stru_28782DDB0];
      if (hostCopy)
      {
        goto LABEL_42;
      }
    }

    [v42 setAceHost:&stru_28782DDB0];
    goto LABEL_45;
  }

LABEL_46:

  v46 = *MEMORY[0x277D85DE8];

  return v32;
}

void __91__SiriCoreSiriBackgroundConnection__headerDataForURL_aceHost_languageCode_syncAssistantId___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  headerField = a2;
  v5 = a3;
  if (AFIsInternalInstall() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ([(__CFString *)headerField hasPrefix:*MEMORY[0x277CEF000]]& 1) == 0)
  {
    CFHTTPMessageSetHeaderFieldValue(*(a1 + 32), headerField, v5);
  }
}

- (void)_networkProviderDidOpen
{
  v19 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = MEMORY[0x277CEF0A8];
  v5 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[SiriCoreSiriBackgroundConnection _networkProviderDidOpen]";
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s ", &v17, 0xCu);
  }

  if (self->_isOpened)
  {
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[SiriCoreSiriBackgroundConnection _networkProviderDidOpen]";
      _os_log_impl(&dword_2669D1000, v6, OS_LOG_TYPE_INFO, "%s Received open callback when we're already open?", &v17, 0xCu);
    }
  }

  else
  {
    self->_isOpened = 1;
    self->_primaryConnectionViable = 1;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    self->_currentOpenTime = v8;

    [(SiriCoreSiriBackgroundConnection *)self _resumePingTimer];
    connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
    routeId = [connectionPolicyRoute routeId];

    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    [processInfo2 systemUptime];
    v13 = v12 - self->_currentStartTime;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _connectionType = [(SiriCoreSiriBackgroundConnection *)self _connectionType];
    [WeakRetained siriBackgroundConnection:self didOpenWithConnectionType:_connectionType routeId:routeId delay:v13];
  }

  [(SiriCoreSiriBackgroundConnection *)self _tryToWriteBufferedOutputData];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_connectionHasBytesAvailable:(id)available
{
  v58 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  size = dispatch_data_get_size(availableCopy);
  v7 = MEMORY[0x277CEF0A8];
  if (size)
  {
    safetyNetBuffer = self->_safetyNetBuffer;
    if (safetyNetBuffer)
    {
      self->_safetyNetBuffer = 0;

      processInfo = [MEMORY[0x277CCAC38] processInfo];
      [processInfo systemUptime];
      self->_firstByteReadTime = v10;

      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      [mEMORY[0x277CEF158] logEventWithType:915 contextProvider:0];
    }

    inputDecompressor = self->_inputDecompressor;
    if (inputDecompressor)
    {
      v53 = 0;
      v13 = [(SiriCoreDataDecompressor *)inputDecompressor decompressedDataForData:availableCopy error:&v53];
      v14 = v53;
    }

    else
    {
      v13 = availableCopy;
      v14 = 0;
    }

    p_bufferedInputData = &self->_bufferedInputData;
    bufferedInputData = self->_bufferedInputData;
    if (bufferedInputData)
    {
      if (!v13)
      {
        goto LABEL_16;
      }

      concat = dispatch_data_create_concat(bufferedInputData, v13);
    }

    else
    {
      concat = v13;
    }

    v19 = *p_bufferedInputData;
    *p_bufferedInputData = concat;

    bufferedInputData = *p_bufferedInputData;
LABEL_16:
    subrange = bufferedInputData;
    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      if (subrange)
      {
        v22 = dispatch_data_get_size(subrange);
      }

      else
      {
        v22 = 0;
      }

      *buf = 136315394;
      v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
      v56 = 2048;
      v57 = v22;
      _os_log_impl(&dword_2669D1000, v21, OS_LOG_TYPE_INFO, "%s workingData is %lu bytes", buf, 0x16u);
    }

    if (v14)
    {
      goto LABEL_22;
    }

    if (![(SiriCoreSiriBackgroundConnection *)self _hasReadHTTPHeader])
    {
      v51 = 0;
      v52 = 0;
      [(SiriCoreSiriBackgroundConnection *)self _consumeHTTPHeaderWithData:subrange bytesRead:&v52 error:&v51];
      v14 = v51;
      v24 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
        v56 = 2048;
        v57 = v52;
        _os_log_impl(&dword_2669D1000, v24, OS_LOG_TYPE_INFO, "%s Consumed %tu bytes", buf, 0x16u);
      }

      v25 = v52;
      v26 = subrange;
      v27 = v26;
      if (v26)
      {
        v28 = dispatch_data_get_size(v26);
        if (v28 <= v25)
        {
          subrange = MEMORY[0x277D85CC8];
          v29 = MEMORY[0x277D85CC8];
        }

        else
        {
          subrange = dispatch_data_create_subrange(v27, v25, v28 - v25);
        }
      }

      else
      {
        subrange = 0;
      }

      if (v14)
      {
        goto LABEL_22;
      }
    }

    if (![(SiriCoreSiriBackgroundConnection *)self _hasReadACEHeader])
    {
      v52 = 0;
      v50 = 0;
      [(SiriCoreSiriBackgroundConnection *)self _consumeAceHeaderWithData:subrange bytesRead:&v52 error:&v50];
      v14 = v50;
      v35 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
        v56 = 2048;
        v57 = v52;
        _os_log_impl(&dword_2669D1000, v35, OS_LOG_TYPE_INFO, "%s Consumed %tu bytes", buf, 0x16u);
      }

      v36 = v52;
      v37 = subrange;
      v38 = v37;
      if (v37)
      {
        v39 = dispatch_data_get_size(v37);
        if (v39 <= v36)
        {
          v40 = MEMORY[0x277D85CC8];
          v41 = MEMORY[0x277D85CC8];
        }

        else
        {
          v40 = dispatch_data_create_subrange(v38, v36, v39 - v36);
        }
      }

      else
      {
        v40 = 0;
      }

      if (v14)
      {
        subrange = v40;
LABEL_22:
        objc_storeStrong(&self->_bufferedInputData, subrange);
        if (v14)
        {
          [(SiriCoreSiriBackgroundConnection *)self _didEncounterError:v14];
        }

        goto LABEL_25;
      }

      v42 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        if (v40)
        {
          v43 = dispatch_data_get_size(v40);
        }

        else
        {
          v43 = 0;
        }

        *buf = 136315394;
        v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
        v56 = 2048;
        v57 = v43;
        _os_log_impl(&dword_2669D1000, v42, OS_LOG_TYPE_INFO, "%s Still have %lu bytes after ace header, decompressing", buf, 0x16u);
      }

      v45 = self->_inputDecompressor;
      if (v45)
      {
        v49 = 0;
        subrange = [(SiriCoreDataDecompressor *)v45 decompressedDataForData:v40 error:&v49];
        v14 = v49;

        v46 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
        {
          if (subrange)
          {
            v47 = dispatch_data_get_size(subrange);
          }

          else
          {
            v47 = 0;
          }

          *buf = 136315394;
          v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
          v56 = 2048;
          v57 = v47;
          _os_log_impl(&dword_2669D1000, v46, OS_LOG_TYPE_INFO, "%s Decompressed %lu bytes", buf, 0x16u);
        }

        if (v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        subrange = v40;
      }
    }

    if ([(SiriCoreSiriBackgroundConnection *)self _hasReadACEHeader])
    {
      v52 = 0;
      v48 = 0;
      [(SiriCoreSiriBackgroundConnection *)self _consumeAceDataWithData:subrange bytesRead:&v52 error:&v48];
      v14 = v48;
      v30 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
        v56 = 2048;
        v57 = v52;
        _os_log_impl(&dword_2669D1000, v30, OS_LOG_TYPE_INFO, "%s Consumed %tu bytes", buf, 0x16u);
      }

      v31 = v52;
      v32 = subrange;
      v33 = v32;
      if (v32)
      {
        v34 = dispatch_data_get_size(v32);
        if (v34 <= v31)
        {
          subrange = MEMORY[0x277D85CC8];
          v44 = MEMORY[0x277D85CC8];
        }

        else
        {
          subrange = dispatch_data_create_subrange(v33, v31, v34 - v31);
        }
      }

      else
      {
        subrange = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_22;
  }

  v15 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v55 = "[SiriCoreSiriBackgroundConnection _connectionHasBytesAvailable:]";
    _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s NWConnection said it had bytes available, but we couldn't read anything", buf, 0xCu);
  }

LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_consumeAceDataWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error
{
  v43[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v41 = 0;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v12 = v11;

  v33 = bytes;
  if (!v8)
  {
    v22 = 0;
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v32 = dataCopy;
  v13 = *MEMORY[0x277D47C78];
  v37 = *MEMORY[0x277D47C80];
  v36 = *MEMORY[0x277D48AF0];
  while (1)
  {
    v39 = 0;
    v40 = 0;
    v38 = 0;
    [(SiriCoreSiriBackgroundConnection *)self _tryReadingParsedDataFromBytes:bytes length:v8 packet:&v40 object:&v39 bytesParsed:&v41 error:&v38, v32];
    v14 = v39;
    v15 = v38;
    v16 = v41;
    if (v15 || v41 == 0)
    {
      break;
    }

    if (v8 >= v41)
    {
      v18 = v8 - v41;
    }

    else
    {
      v18 = 0;
    }

    if (v8 >= v41)
    {
      v19 = v41;
    }

    else
    {
      v19 = 0;
    }

    if (v14)
    {
      encodedClassName = [v14 encodedClassName];
      if (([encodedClassName isEqual:v13] & 1) != 0 || (objc_msgSend(encodedClassName, "isEqual:", v37) & 1) != 0 || objc_msgSend(encodedClassName, "isEqual:", v36))
      {
        [v9 addObject:encodedClassName];
      }

      [(SiriCoreSiriBackgroundConnection *)self _handleAceObject:v14];
    }

    else
    {
      [(SiriCoreSiriBackgroundConnection *)self _handlePacket:&v40];
    }

    bytes += v19;

    v21 = v8 > v16;
    v8 = v18;
    if (!v21)
    {
      v22 = 0;
      goto LABEL_25;
    }
  }

  v22 = v15;

LABEL_25:
  dataCopy = v32;
  if (v9)
  {
LABEL_26:
    if ([v9 count])
    {
      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      v42[0] = @"aceCommands";
      array = [v9 array];
      v43[0] = array;
      v42[1] = @"bytes";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
      v43[1] = v25;
      v42[2] = @"waitTime";
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v12 - self->_receivedDataTime];
      v43[2] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
      v28 = v27 = dataCopy;
      [mEMORY[0x277CEF158] logEventWithType:1018 context:v28];

      dataCopy = v27;
    }
  }

LABEL_28:
  self->_receivedDataTime = v12;
  if (read)
  {
    *read = bytes - v33;
  }

  if (error)
  {
    v29 = v22;
    *error = v22;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v22 == 0;
}

- (BOOL)_consumeAceHeaderWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = MEMORY[0x277CEF0A8];
  v10 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    if (dataCopy)
    {
      size = dispatch_data_get_size(dataCopy);
    }

    else
    {
      size = 0;
    }

    *buf = 136315394;
    v23 = "[SiriCoreSiriBackgroundConnection _consumeAceHeaderWithData:bytesRead:error:]";
    v24 = 2048;
    v25 = size;
    _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s Still need Ace Header, trying to parse it with %lu bytes", buf, 0x16u);
  }

  v20 = 0;
  v21 = 0;
  v12 = [(SiriCoreSiriBackgroundConnection *)self _tryReadingAceHeaderFromData:dataCopy bytesParsed:&v21 error:&v20];
  v13 = v20;
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v21 == 0;
  }

  if (!v14 && v12 != 0)
  {
    v16 = *v9;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SiriCoreSiriBackgroundConnection _consumeAceHeaderWithData:bytesRead:error:]";
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_INFO, "%s Ace Header is complete, using compressor %@", buf, 0x16u);
    }

    objc_storeStrong(&self->_inputDecompressor, v12);
  }

  if (read)
  {
    *read = v21;
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (BOOL)_consumeHTTPHeaderWithData:(id)data bytesRead:(unint64_t *)read error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!self->_httpResponseHeader)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SiriCoreSiriBackgroundConnection.m" lineNumber:1388 description:@"We shouldn't be trying to handle http header if we're not expecting it"];
  }

  v10 = MEMORY[0x277CEF0A8];
  v11 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[SiriCoreSiriBackgroundConnection _consumeHTTPHeaderWithData:bytesRead:error:]";
    _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Still need HTTP Header, trying to parse it", buf, 0xCu);
  }

  v21 = 0;
  v22 = 0;
  v12 = [(SiriCoreSiriBackgroundConnection *)self _tryReadingHTTPHeaderData:dataCopy withMessage:self->_httpResponseHeader bytesRead:&v22 error:&v21];
  v13 = v21;
  if (v12)
  {
    v14 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      httpResponseHeader = self->_httpResponseHeader;
      *buf = 136315394;
      v24 = "[SiriCoreSiriBackgroundConnection _consumeHTTPHeaderWithData:bytesRead:error:]";
      v25 = 2112;
      v26 = httpResponseHeader;
      _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_INFO, "%s HTTP header is complete %@", buf, 0x16u);
    }

    CFRelease(self->_httpResponseHeader);
    self->_httpResponseHeader = 0;
  }

  if (read)
  {
    v16 = v22;
    if (v13)
    {
      v16 = 0;
    }

    *read = v16;
  }

  if (error)
  {
    v17 = v13;
    *error = v13;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (void)connectionProviderReceivedBetterRouteNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (self->_connectionProvider == notificationCopy)
  {
    self->_betterPathAvailable = 1;
    if (!self->_primaryConnectionViable)
    {
      v5 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[SiriCoreSiriBackgroundConnection connectionProviderReceivedBetterRouteNotification:]";
        _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Starting secondary connection", &v7, 0xCu);
      }

      [(SiriCoreSiriBackgroundConnection *)self _startSecondaryConnection];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)connectionProvider:(id)provider receivedViabilityChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if (self->_connectionProvider == providerCopy)
  {
    if (self->_primaryConnectionViable == notificationCopy)
    {
      if (!notificationCopy)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:32 userInfo:0];
        [(SiriCoreSiriBackgroundConnection *)self _didEncounterError:v7];

        goto LABEL_11;
      }

LABEL_10:
      [(SiriCoreSiriBackgroundConnection *)self _cancelSecondaryConnection];
      goto LABEL_11;
    }

    v8 = MEMORY[0x277CEF0A8];
    v9 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v10 = @"not viable";
      if (notificationCopy)
      {
        v10 = @"viable";
      }

      v13 = 136315394;
      v14 = "[SiriCoreSiriBackgroundConnection connectionProvider:receivedViabilityChangeNotification:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s viability changed %@", &v13, 0x16u);
    }

    self->_primaryConnectionViable = notificationCopy;
    if (notificationCopy)
    {
      goto LABEL_10;
    }

    if (self->_betterPathAvailable)
    {
      [(SiriCoreSiriBackgroundConnection *)self _startSecondaryConnection];
    }

    else
    {
      v12 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[SiriCoreSiriBackgroundConnection connectionProvider:receivedViabilityChangeNotification:]";
        _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_INFO, "%s wait for better route event", &v13, 0xCu);
      }
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)connectionProvider:(id)provider receivedIntermediateError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__SiriCoreSiriBackgroundConnection_connectionProvider_receivedIntermediateError___block_invoke;
  v8[3] = &unk_279BD6540;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __81__SiriCoreSiriBackgroundConnection_connectionProvider_receivedIntermediateError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v3 siriBackgroundConnection:*(a1 + 32) didEncounterIntermediateError:*(a1 + 40)];
  }
}

- (void)connectionProvider:(id)provider receivedError:(id)error
{
  providerCopy = provider;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SiriCoreSiriBackgroundConnection_connectionProvider_receivedError___block_invoke;
  block[3] = &unk_279BD5E20;
  v12 = providerCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = providerCopy;
  dispatch_async(queue, block);
}

void __69__SiriCoreSiriBackgroundConnection_connectionProvider_receivedError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) != *(*(a1 + 40) + 24))
  {
LABEL_13:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = [*(a1 + 48) domain];
  if (![v2 isEqualToString:@"SiriCoreSiriConnectionErrorDomain"] || objc_msgSend(*(a1 + 48), "code") != 4 || (AFDeviceSupportsSiriUOD() & 1) == 0)
  {

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));

  if (!WeakRetained)
  {
LABEL_10:
    v8 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      *buf = 136315394;
      v17 = "[SiriCoreSiriBackgroundConnection connectionProvider:receivedError:]_block_invoke";
      v18 = 2114;
      v19 = v12;
      _os_log_error_impl(&dword_2669D1000, v8, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SiriCoreSiriBackgroundConnection_connectionProvider_receivedError___block_invoke_132;
    v14[3] = &unk_279BD6540;
    v14[4] = v10;
    v15 = v9;
    [v10 _fallBackToNextConnectionMethodWithError:v15 orElse:v14];

    goto LABEL_13;
  }

  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [v5 analysisInfo];
  [v13 siriBackgroundConnection:v5 didEncounterError:v4 analysisInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __69__SiriCoreSiriBackgroundConnection_connectionProvider_receivedError___block_invoke_132(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _hasBufferedDataOrOutstandingPings])
  {
    v2 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[SiriCoreSiriBackgroundConnection connectionProvider:receivedError:]_block_invoke";
      _os_log_error_impl(&dword_2669D1000, v2, OS_LOG_TYPE_ERROR, "%s Error Occurred mid request", &v5, 0xCu);
    }

    [*(a1 + 32) _didEncounterError:*(a1 + 40)];
  }

  result = [*(a1 + 32) cancel];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_cancelOutstandingBarriers
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_outstandingBarriers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_outstandingBarriers objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        v9 = v8;
        if (v8)
        {
          (*(v8 + 16))(v8, 0);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_outstandingBarriers removeAllObjects];
  outstandingBarriers = self->_outstandingBarriers;
  self->_outstandingBarriers = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)barrier:(id)barrier
{
  barrierCopy = barrier;
  if (!self->_outstandingBarriers)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outstandingBarriers = self->_outstandingBarriers;
    self->_outstandingBarriers = v5;
  }

  currentBarrierIndex = self->_currentBarrierIndex;
  v14 = 0;
  [(SiriCoreSiriBackgroundConnection *)self _sendAcePingWithId:currentBarrierIndex error:&v14];
  v8 = v14;
  if (v8)
  {
    barrierCopy[2](barrierCopy, 0);
  }

  else
  {
    v9 = self->_outstandingBarriers;
    v10 = MEMORY[0x26D5E5DB0](barrierCopy);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_currentBarrierIndex];
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v11];

    v12 = self->_currentBarrierIndex;
    if (v12 == -1)
    {
      v13 = -100000;
    }

    else
    {
      v13 = v12 + 1;
    }

    self->_currentBarrierIndex = v13;
  }
}

- (int64_t)_checkPings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[SiriCoreSiriBackgroundConnection _checkPings]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  currentPingIndex = self->_currentPingIndex;
  if (currentPingIndex + 1 <= 0xFFFE795F)
  {
    v5 = currentPingIndex + 1;
  }

  else
  {
    v5 = 0;
  }

  self->_currentPingIndex = v5;
  [SiriCoreSiriBackgroundConnection _sendAcePingWithId:"_sendAcePingWithId:error:" error:?];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:1005 context:0];

  pingInfo = self->_pingInfo;
  if (!pingInfo)
  {
    v8 = objc_alloc_init(SiriCorePingInfo);
    v9 = self->_pingInfo;
    self->_pingInfo = v8;

    pingInfo = self->_pingInfo;
  }

  [(SiriCorePingInfo *)pingInfo markPingSentWithIndex:self->_currentPingIndex];
  numberOfUnacknowledgedPings = [(SiriCorePingInfo *)self->_pingInfo numberOfUnacknowledgedPings];
  v11 = numberOfUnacknowledgedPings > 2;
  if (numberOfUnacknowledgedPings == 3)
  {
    v11 = 3;
  }

  if (numberOfUnacknowledgedPings == 7)
  {
    v11 |= 4uLL;
  }

  if (numberOfUnacknowledgedPings <= 0xB)
  {
    result = v11;
  }

  else
  {
    result = v11 | 8;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_checkForProgressOnReadingData
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0A8];
  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[SiriCoreSiriBackgroundConnection _checkForProgressOnReadingData]";
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_INFO, "%s ", &v24, 0xCu);
  }

  lastInputDataPointer = self->_lastInputDataPointer;
  bufferedInputData = self->_bufferedInputData;
  if (lastInputDataPointer != bufferedInputData)
  {
    v7 = 0;
    self->_lastInputLength = 0;
    self->_lastInputDataPointer = bufferedInputData;
    v8 = 168;
    goto LABEL_13;
  }

  if (lastInputDataPointer)
  {
    size = dispatch_data_get_size(bufferedInputData);
    v7 = size;
    if (size && size == self->_lastInputLength)
    {
      v10 = self->_inputLengthUnchangedCounter + 1;
      self->_inputLengthUnchangedCounter = v10;
      v11 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v24 = 136315394;
        v25 = "[SiriCoreSiriBackgroundConnection _checkForProgressOnReadingData]";
        v26 = 2048;
        v27 = v10;
        _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s Incremented Input Unchanged Counter to %lu", &v24, 0x16u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  self->_inputLengthUnchangedCounter = 0;
LABEL_12:
  v8 = 152;
LABEL_13:
  *(&self->super.isa + v8) = v7;
  lastOutputDataPointer = self->_lastOutputDataPointer;
  bufferedGeneralOutputData = self->_bufferedGeneralOutputData;
  if (lastOutputDataPointer != bufferedGeneralOutputData)
  {
    v14 = 0;
    outputLengthUnchangedCounter = 0;
    self->_lastOutputLength = 0;
    self->_lastOutputDataPointer = bufferedGeneralOutputData;
    v16 = 192;
    goto LABEL_23;
  }

  if (lastOutputDataPointer)
  {
    v17 = dispatch_data_get_size(bufferedGeneralOutputData);
    v14 = v17;
    if (v17 && v17 == self->_lastOutputLength)
    {
      outputLengthUnchangedCounter = self->_outputLengthUnchangedCounter + 1;
      self->_outputLengthUnchangedCounter = outputLengthUnchangedCounter;
      v18 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v24 = 136315394;
        v25 = "[SiriCoreSiriBackgroundConnection _checkForProgressOnReadingData]";
        v26 = 2048;
        v27 = outputLengthUnchangedCounter;
        _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, "%s Incremented Output Unchanged Counter to %lu", &v24, 0x16u);
        outputLengthUnchangedCounter = self->_outputLengthUnchangedCounter;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v14 = 0;
  }

  outputLengthUnchangedCounter = 0;
  self->_outputLengthUnchangedCounter = 0;
LABEL_22:
  v16 = 176;
LABEL_23:
  *(&self->super.isa + v16) = v14;
  inputLengthUnchangedCounter = self->_inputLengthUnchangedCounter;
  v20 = 12;
  if (outputLengthUnchangedCounter + inputLengthUnchangedCounter > 2)
  {
    v20 = 13;
  }

  if (outputLengthUnchangedCounter > 9 || inputLengthUnchangedCounter > 9)
  {
    result = v20;
  }

  else
  {
    result = outputLengthUnchangedCounter + inputLengthUnchangedCounter > 2;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_pingTimerFired
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[SiriCoreSiriBackgroundConnection _pingTimerFired]";
    _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  bufferedInputData = self->_bufferedInputData;
  if (bufferedInputData && dispatch_data_get_size(bufferedInputData) || (bufferedGeneralOutputData = self->_bufferedGeneralOutputData) != 0 && dispatch_data_get_size(bufferedGeneralOutputData))
  {
    _checkForProgressOnReadingData = [(SiriCoreSiriBackgroundConnection *)self _checkForProgressOnReadingData];
  }

  else
  {
    _checkForProgressOnReadingData = [(SiriCoreSiriBackgroundConnection *)self _checkPings];
  }

  v7 = _checkForProgressOnReadingData;
  if ((_checkForProgressOnReadingData & 2) == 0)
  {
    if ((_checkForProgressOnReadingData & 4) != 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v9 = 0;
    v10 = 0;
    v11 = (v7 >> 3) & 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  shouldFallbackQuickly = [(SiriCoreConnectionProvider *)self->_connectionProvider shouldFallbackQuickly];
  if ((v7 & 4) == 0 && (shouldFallbackQuickly & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (![(SiriCoreSiriBackgroundConnection *)self _usingPeer])
  {
    if ([(SiriCoreSiriBackgroundConnection *)self _usingPOP]|| [(SiriCoreSiriBackgroundConnection *)self _usingFlorence])
    {
      v12 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v44 = "[SiriCoreSiriBackgroundConnection _pingTimerFired]";
        _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_INFO, "%s Ping timeout while using POP or Florence method", buf, 0xCu);
      }

      v39 = @"SiriCoreSiriConnectionShouldSkipTuscanyOnNextAttemptKey";
      v40 = MEMORY[0x277CBEC38];
      v10 = 1;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      LODWORD(v11) = 1;
      if ((v7 & 1) == 0)
      {
LABEL_35:
        if (!v11)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      LODWORD(v11) = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_29:
    if ([(SiriCoreSiriBackgroundConnection *)self _usingPOP]&& ![(SiriCoreSiriBackgroundConnection *)self _usingPeer]|| ![(SiriCoreSiriBackgroundConnection *)self _tcpInfoIndicatesPoorLinkQuality])
    {
      goto LABEL_35;
    }

    pingInfo = self->_pingInfo;
    if (pingInfo)
    {
      numberOfUnacknowledgedPings = [(SiriCorePingInfo *)pingInfo numberOfUnacknowledgedPings];
      v16 = self->_pingInfo;
      if (v16)
      {
        v17 = [(SiriCorePingInfo *)v16 pingAcknowledgedCount]+ numberOfUnacknowledgedPings;
        goto LABEL_49;
      }
    }

    else
    {
      numberOfUnacknowledgedPings = 0;
    }

    v17 = 0;
LABEL_49:
    v37[0] = @"pingCount";
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    v37[1] = @"unacknowledgedPingCount";
    v38[0] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfUnacknowledgedPings];
    v38[1] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    if (self->_pingInfo)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:34 userInfo:v29];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SiriCoreSiriBackgroundConnection__pingTimerFired__block_invoke;
    block[3] = &unk_279BD6540;
    block[4] = self;
    v36 = v30;
    v32 = v30;
    dispatch_async(queue, block);

    v9 = v28;
    if ((v11 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  if ([(SiriCoreSiriBackgroundConnection *)self _wifiOrCellularMayBeBetterThanCurrentStream])
  {
    v41 = @"SiriCoreSiriConnectionShouldSkipIDSOnNextAttemptKey";
    v42 = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v10 = 0;
LABEL_36:
    v18 = MEMORY[0x277CEF0A8];
    v19 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[SiriCoreSiriBackgroundConnection _pingTimerFired]";
      _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s Ping timeout", buf, 0xCu);
    }

    if ([(SiriCoreSiriBackgroundConnection *)self _hasReadHTTPHeader])
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = 6;
    }

    else
    {
      v22 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v44 = "[SiriCoreSiriBackgroundConnection _pingTimerFired]";
        _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_INFO, "%s Overriding ping error since we haven't read our ace header yet.", buf, 0xCu);
      }

      v20 = MEMORY[0x277CCA9B8];
      if (v10)
      {
        v21 = 14;
      }

      else
      {
        v21 = 5;
      }
    }

    v23 = [v20 errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:v21 userInfo:v9];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __51__SiriCoreSiriBackgroundConnection__pingTimerFired__block_invoke_129;
    v33[3] = &unk_279BD6540;
    v33[4] = self;
    v34 = v23;
    v24 = v23;
    [(SiriCoreSiriBackgroundConnection *)self _fallBackToNextConnectionMethodWithError:v24 orElse:v33];

    goto LABEL_46;
  }

  v13 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[SiriCoreSiriBackgroundConnection _pingTimerFired]";
    _os_log_impl(&dword_2669D1000, v13, OS_LOG_TYPE_INFO, "%s Ignoring Ping timeout since wifi isn't available to fall back to.", buf, 0xCu);
  }

  v9 = 0;
LABEL_46:

  v25 = *MEMORY[0x277D85DE8];
}

void __51__SiriCoreSiriBackgroundConnection__pingTimerFired__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v3 siriBackgroundConnection:*(a1 + 32) didEncounterIntermediateError:*(a1 + 40)];
  }
}

uint64_t __51__SiriCoreSiriBackgroundConnection__pingTimerFired__block_invoke_129(uint64_t a1)
{
  [MEMORY[0x277CEF148] logPingTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _didEncounterError:v3];
}

- (void)_resumePingTimer
{
  if (self->_pingTimerSource)
  {
    pingInfo = self->_pingInfo;
    self->_pingInfo = 0;

    pingTimerSource = self->_pingTimerSource;

    dispatch_resume(pingTimerSource);
  }
}

- (void)setSendPings:(BOOL)pings
{
  v17 = *MEMORY[0x277D85DE8];
  pingTimerSource = self->_pingTimerSource;
  if (pings)
  {
    if (pingTimerSource)
    {
      self->_dispatchedSnapshotMetrics = 0;
    }

    else
    {
      v7 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[SiriCoreSiriBackgroundConnection setSendPings:]";
        _os_log_impl(&dword_2669D1000, v7, OS_LOG_TYPE_INFO, "%s Start sending pings", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      queue = self->_queue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __49__SiriCoreSiriBackgroundConnection_setSendPings___block_invoke;
      handler[3] = &unk_279BD5B20;
      objc_copyWeak(&v14, buf);
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
      v10 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v9, v10, 0x3B9ACA00uLL, 0);
      dispatch_source_set_event_handler(v9, handler);
      v11 = self->_pingTimerSource;
      self->_pingTimerSource = v9;

      if (self->_isOpened)
      {
        [(SiriCoreSiriBackgroundConnection *)self _resumePingTimer];
        self->_dispatchedSnapshotMetrics = 0;
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else if (pingTimerSource)
  {
    v5 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[SiriCoreSiriBackgroundConnection setSendPings:]";
      _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Stop sending pings", buf, 0xCu);
      pingTimerSource = self->_pingTimerSource;
    }

    dispatch_source_cancel(pingTimerSource);
    if (!self->_isOpened)
    {
      dispatch_resume(self->_pingTimerSource);
    }

    v6 = self->_pingTimerSource;
    self->_pingTimerSource = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__SiriCoreSiriBackgroundConnection_setSendPings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pingTimerFired];
}

- (void)_aceHeaderTimeoutFired:(id)fired afterTimeout:(double)timeout
{
  v29 = *MEMORY[0x277D85DE8];
  aceHeaderTimerSource = self->_aceHeaderTimerSource;
  if (aceHeaderTimerSource == fired)
  {
    self->_aceHeaderTimerSource = 0;

    ++self->_aceHeaderTimerFireCount;
    if (![(SiriCoreSiriBackgroundConnection *)self _hasReadACEHeader])
    {
      v7 = MEMORY[0x277CEF0A8];
      if (self->_isOpened && self->_aceHeaderTimerFireCount <= 1)
      {
        if ([(SiriCoreSiriBackgroundConnection *)self _usingPOP])
        {
          v8 = *v7;
          v9 = 1;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v28 = "[SiriCoreSiriBackgroundConnection _aceHeaderTimeoutFired:afterTimeout:]";
            v10 = "%s ACE Header timeout while using POP Connection Method";
LABEL_21:
            _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
            goto LABEL_22;
          }

          goto LABEL_22;
        }

        if ([(SiriCoreSiriBackgroundConnection *)self _usingFlorence])
        {
          v8 = *v7;
          v9 = 1;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v28 = "[SiriCoreSiriBackgroundConnection _aceHeaderTimeoutFired:afterTimeout:]";
            v10 = "%s ACE Header timeout while using Florence";
            goto LABEL_21;
          }

LABEL_22:
          WeakRetained = 0;
          goto LABEL_10;
        }

        if (![(SiriCoreSiriBackgroundConnection *)self _usingPeer]|| ![(SiriCoreSiriBackgroundConnection *)self _wifiOrCellularMayBeBetterThanCurrentStream])
        {
          v18 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v28 = "[SiriCoreSiriBackgroundConnection _aceHeaderTimeoutFired:afterTimeout:]";
            _os_log_impl(&dword_2669D1000, v18, OS_LOG_TYPE_INFO, "%s Rescheduling aceheader timeout since wifi isn't available or bt link is ok", buf, 0xCu);
          }

          [(SiriCoreSiriBackgroundConnection *)self _scheduleAceHeaderTimeoutTimerWithInterval:30.0 - timeout];
          if (self->_isOpened)
          {
            v19 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v28 = "[SiriCoreSiriBackgroundConnection _aceHeaderTimeoutFired:afterTimeout:]";
              _os_log_impl(&dword_2669D1000, v19, OS_LOG_TYPE_INFO, "%s Ace Header Timeout. Intermediate error", buf, 0xCu);
            }

            v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:5 userInfo:0];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);

            if (!WeakRetained)
            {
              goto LABEL_16;
            }

            v20 = objc_loadWeakRetained(&self->_delegate);
            [v20 siriBackgroundConnection:self didEncounterIntermediateError:v16];
          }

          else
          {
            v16 = 0;
          }

          WeakRetained = 0;
LABEL_16:

          goto LABEL_17;
        }

        v25 = @"SiriCoreSiriConnectionShouldSkipIDSOnNextAttemptKey";
        v26 = MEMORY[0x277CBEC38];
        WeakRetained = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      }

      else
      {
        WeakRetained = 0;
      }

      v9 = 0;
LABEL_10:
      v12 = *v7;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v28 = "[SiriCoreSiriBackgroundConnection _aceHeaderTimeoutFired:afterTimeout:]";
        _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_INFO, "%s Ace Header Timeout. Error", buf, 0xCu);
      }

      if (v9)
      {
        v23 = @"SiriCoreSiriConnectionShouldSkipTuscanyOnNextAttemptKey";
        v24 = MEMORY[0x277CBEC38];
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

        v14 = 14;
        WeakRetained = v13;
      }

      else
      {
        v14 = 5;
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:v14 userInfo:WeakRetained];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __72__SiriCoreSiriBackgroundConnection__aceHeaderTimeoutFired_afterTimeout___block_invoke;
      v21[3] = &unk_279BD6540;
      v21[4] = self;
      v16 = v15;
      v22 = v16;
      [(SiriCoreSiriBackgroundConnection *)self _fallBackToNextConnectionMethodWithError:v16 orElse:v21];

      goto LABEL_16;
    }
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleAceHeaderTimeoutTimerWithInterval:(double)interval
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SiriCoreSiriBackgroundConnection _scheduleAceHeaderTimeoutTimerWithInterval:]";
    v19 = 1024;
    intervalCopy = interval;
    _os_log_impl(&dword_2669D1000, v5, OS_LOG_TYPE_INFO, "%s Scheduling Ace Header timeout for %d seconds", buf, 0x12u);
  }

  aceHeaderTimerSource = self->_aceHeaderTimerSource;
  if (aceHeaderTimerSource)
  {
    dispatch_source_cancel(aceHeaderTimerSource);
    v7 = self->_aceHeaderTimerSource;
    self->_aceHeaderTimerSource = 0;
  }

  if (interval > 0.0)
  {
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v9 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v8, v9, (interval * 1000000000.0), 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __79__SiriCoreSiriBackgroundConnection__scheduleAceHeaderTimeoutTimerWithInterval___block_invoke;
    handler[3] = &unk_279BD5AF8;
    v10 = v8;
    v15 = v10;
    objc_copyWeak(v16, buf);
    v16[1] = *&interval;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(v10);
    v11 = self->_aceHeaderTimerSource;
    self->_aceHeaderTimerSource = v10;
    v12 = v10;

    objc_destroyWeak(v16);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __79__SiriCoreSiriBackgroundConnection__scheduleAceHeaderTimeoutTimerWithInterval___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _aceHeaderTimeoutFired:*(a1 + 32) afterTimeout:*(a1 + 48)];
}

- (void)_getWifiMetrics:(id)metrics
{
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  metricsCopy = metrics;
  v5 = objc_alloc_init(SiriCoreWiFiManagerClient);
  v13 = 0;
  v14 = 0;
  [(SiriCoreWiFiManagerClient *)v5 hasAssociatedNetworkWithRSSI:&v18 andSNR:&v17 andCCA:&v16 andPhyMode:&v14 andChannelInfo:&v13 isCaptive:&v15];
  v6 = v14;
  v7 = v13;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  [metricsCopy setRssi:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
  [metricsCopy setCca:v9];

  [metricsCopy setWifiPhyMode:v6];
  [metricsCopy setWifiChannelInfo:v7];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  [metricsCopy setIsCaptive:v10];

  v11 = [(SiriCoreSiriBackgroundConnection *)self _normalizeSNR:v17];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [metricsCopy setSnr:v12];
}

- (int64_t)_normalizeSNR:(int64_t)r
{
  v3 = 40;
  if ((r - 25) < 0xF)
  {
    v3 = 25;
  }

  if ((r - 15) >= 0xA)
  {
    v4 = v3;
  }

  else
  {
    v4 = 15;
  }

  if ((r - 10) >= 5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 10;
  }

  if (r >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)_getCellularMetrics:(id)metrics
{
  v8 = 0;
  v9 = 0;
  v7 = &unk_287838210;
  metricsCopy = metrics;
  [SiriCoreNetworkManager getCarrierName:&v9 signalStrength:&v8 subscriptionCount:&v7];
  v4 = v9;
  v5 = v8;
  v6 = v7;
  [metricsCopy setCarrierName:v4];
  [metricsCopy setSignalStrengthBars:v5];
  [metricsCopy setSimSubscriptions:v6];
}

- (void)_fallBackToNextConnectionMethodWithError:(id)error orElse:(id)else
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  elseCopy = else;
  v8 = MEMORY[0x277CEF0A8];
  v9 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315394;
    v32 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethodWithError:orElse:]";
    v33 = 2112;
    v34 = errorCopy;
    _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v31, 0x16u);
  }

  _nextConnectionMethod = [(SiriCoreSiriBackgroundConnection *)self _nextConnectionMethod];
  v11 = 0.0;
  if (_nextConnectionMethod)
  {
    NextSupported = _nextConnectionMethod;
    goto LABEL_5;
  }

  if (self->_connectionMethod != 2 || !self->_usesProxyConnection)
  {
    goto LABEL_24;
  }

  if ([(SiriCoreSiriConnectionInfo *)self->_connectionInfo useWiFiHint])
  {
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315394;
      v32 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethodWithError:orElse:]";
      v33 = 2112;
      v34 = errorCopy;
      _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_DEFAULT, "%s Resetting connection method on error (%@) while trying peer", &v31, 0x16u);
    }

    connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
    type = [connectionPolicyRoute type];
    NextSupported = _SiriCoreSiriConnectionMethodGetNextSupported(0, type, self->_usesProxyConnection);

    [(SiriCoreSiriConnectionInfo *)self->_connectionInfo setUseWiFiHint:0];
    goto LABEL_5;
  }

  if (!AFHasCellularData() || ![errorCopy siriCore_isNetworkDownError])
  {
LABEL_24:
    p_safetyNetBuffer = &self->_safetyNetBuffer;
    goto LABEL_25;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v21 = v20 - self->_firstStartTime;

  v22 = *v8;
  v23 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v21 > 30.0)
  {
    if (v23)
    {
      v31 = 136315138;
      v32 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethodWithError:orElse:]";
      _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_DEFAULT, "%s Ran out of time waiting for network to become available", &v31, 0xCu);
    }

    goto LABEL_24;
  }

  if (v23)
  {
    v31 = 136315394;
    v32 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethodWithError:orElse:]";
    v33 = 2112;
    v34 = errorCopy;
    _os_log_impl(&dword_2669D1000, v22, OS_LOG_TYPE_DEFAULT, "%s Resetting connection method on error (%@) while waiting for cellular", &v31, 0x16u);
  }

  connectionPolicyRoute2 = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
  type2 = [connectionPolicyRoute2 type];
  NextSupported = _SiriCoreSiriConnectionMethodGetNextSupported(0, type2, self->_usesProxyConnection);

  v11 = 1.0;
LABEL_5:
  p_safetyNetBuffer = &self->_safetyNetBuffer;
  if (self->_safetyNetBuffer && NextSupported && [(SiriCoreSiriBackgroundConnection *)self _canFallBackFromError:errorCopy])
  {
    [(SiriCoreSiriBackgroundConnection *)self _fallBackToNextConnectionMethod:NextSupported fromError:errorCopy afterDelay:v11];
    if (errorCopy)
    {
      v14 = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo url];
      if (v14)
      {
        v15 = *MEMORY[0x277CEF048];
        if (os_log_type_enabled(*MEMORY[0x277CEF048], OS_LOG_TYPE_ERROR))
        {
          v28 = v15;
          absoluteString = [v14 absoluteString];
          uTF8String = [absoluteString UTF8String];
          v31 = 136315138;
          v32 = uTF8String;
          _os_log_error_impl(&dword_2669D1000, v28, OS_LOG_TYPE_ERROR, "%s", &v31, 0xCu);
        }
      }
    }

    goto LABEL_27;
  }

LABEL_25:
  v24 = *p_safetyNetBuffer;
  *p_safetyNetBuffer = 0;

  if (elseCopy)
  {
    elseCopy[2](elseCopy);
  }

LABEL_27:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_fallBackToNextConnectionMethod:(int64_t)method fromError:(id)error afterDelay:(double)delay
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9 = MEMORY[0x277CEF0A8];
  v10 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v24 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethod:fromError:afterDelay:]";
    v25 = 2112;
    delayCopy = *&errorCopy;
    _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_connectionMethod];
  v12 = [(NSMutableDictionary *)self->_errorsForConnectionMethods objectForKey:v11];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SiriCoreSiriBackgroundConnection *)self _shouldTrySameConnectionMethodForMethod:self->_connectionMethod error:errorCopy];
  }

  if (!self->_errorsForConnectionMethods)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    errorsForConnectionMethods = self->_errorsForConnectionMethods;
    self->_errorsForConnectionMethods = v14;
  }

  if (errorCopy)
  {
    v16 = objc_alloc_init(SiriCoreErrorInfo);
    [(SiriCoreErrorInfo *)v16 setError:errorCopy];
    [(SiriCoreErrorInfo *)v16 setIsPeerConnectionError:[(SiriCoreConnectionProvider *)self->_connectionProvider isPeerConnectionError:errorCopy]];
    [(SiriCoreErrorInfo *)v16 setIsPeerNotNearbyError:[(SiriCoreConnectionProvider *)self->_connectionProvider isPeerNotNearbyError:errorCopy]];
    [(NSMutableDictionary *)self->_errorsForConnectionMethods setObject:v16 forKey:v11];
  }

  [(SiriCoreSiriBackgroundConnection *)self _closeConnectionAndPrepareForReconnect:1];
  if (delay <= 0.0)
  {
    [(SiriCoreSiriBackgroundConnection *)self _startWithConnectionInfo:self->_connectionInfo proposedFallbackMethod:method allowFallbackToNewMethod:!v13];
  }

  else
  {
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethod:fromError:afterDelay:]";
      v25 = 2048;
      delayCopy = delay;
      _os_log_impl(&dword_2669D1000, v17, OS_LOG_TYPE_DEFAULT, "%s Delaying fallback for %lfs", buf, 0x16u);
    }

    v18 = dispatch_time(0, (delay * 1000000000.0));
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SiriCoreSiriBackgroundConnection__fallBackToNextConnectionMethod_fromError_afterDelay___block_invoke;
    block[3] = &unk_279BD5AD0;
    block[4] = self;
    block[5] = method;
    v22 = v13;
    dispatch_after(v18, queue, block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __89__SiriCoreSiriBackgroundConnection__fallBackToNextConnectionMethod_fromError_afterDelay___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriCoreSiriBackgroundConnection _fallBackToNextConnectionMethod:fromError:afterDelay:]_block_invoke";
    _os_log_impl(&dword_2669D1000, v2, OS_LOG_TYPE_DEFAULT, "%s Beginning fallback now", &v5, 0xCu);
  }

  result = [*(a1 + 32) _startWithConnectionInfo:*(*(a1 + 32) + 32) proposedFallbackMethod:*(a1 + 40) allowFallbackToNewMethod:(*(a1 + 48) & 1) == 0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldTrySameConnectionMethodForMethod:(int64_t)method error:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = errorCopy;
  }

  v10 = v9;

  domain = [v10 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA5B8]] & 1) == 0 && !objc_msgSend(domain, "isEqualToString:", *MEMORY[0x277CD9248]))
  {
    goto LABEL_17;
  }

  code = [v10 code];
  v14 = code == 9 || code == 57;
  if (method == 3 && code != 9 && code != 57)
  {
    if (code == 54)
    {
      v14 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v14 = 0;
  }

LABEL_18:

  return v14;
}

- (id)_bestErrorBetweenError:(id)error peerError:(id)peerError
{
  errorCopy = error;
  peerErrorCopy = peerError;
  v7 = errorCopy;
  v8 = v7;
  if (peerErrorCopy)
  {
    userInfo = [peerErrorCopy userInfo];
    v10 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = peerErrorCopy;
    }

    v8 = v11;
  }

  return v8;
}

- (void)_didEncounterError:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!self->_hasReportedError)
  {
    v5 = [(NSMutableDictionary *)self->_errorsForConnectionMethods objectForKey:&unk_2878381F8];
    v6 = v5;
    if (!v5)
    {
      goto LABEL_11;
    }

    if ([v5 isPeerNotNearbyError] && AFHasCellularData())
    {
      v7 = errorCopy;
    }

    else
    {
      isPeerConnectionError = [v6 isPeerConnectionError];
      v9 = MEMORY[0x277CEF2A0];
      error = [v6 error];
      v11 = [(SiriCoreSiriBackgroundConnection *)self _bestErrorBetweenError:errorCopy peerError:error];
      if (isPeerConnectionError)
      {
        v12 = @"Couldn't reach companion for peer connection";
        v13 = v9;
        v14 = 1000;
      }

      else
      {
        v12 = @"Companion couldn't reach Siri";
        v13 = v9;
        v14 = 1001;
      }

      v7 = [v13 errorWithCode:v14 description:v12 underlyingError:v11];
    }

    [(objc_class *)self->_peerProviderClass getMetricsContext:&__block_literal_global_567];
    if (!v7)
    {
LABEL_11:
      v7 = errorCopy;
    }

    v15 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      error2 = [v6 error];
      v26 = 136316162;
      v27 = "[SiriCoreSiriBackgroundConnection _didEncounterError:]";
      v28 = 2112;
      selfCopy = self;
      v30 = 2112;
      v31 = errorCopy;
      v32 = 2112;
      v33 = error2;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_INFO, "%s connection (%@) error=(%@)\npeerError=(%@)\nfinalError=(%@)", &v26, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    analysisInfo = [(SiriCoreSiriBackgroundConnection *)self analysisInfo];
    [WeakRetained siriBackgroundConnection:self didEncounterError:v7 analysisInfo:analysisInfo];

    v20 = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo url];
    if (v20)
    {
      v21 = *MEMORY[0x277CEF048];
      if (os_log_type_enabled(*MEMORY[0x277CEF048], OS_LOG_TYPE_ERROR))
      {
        v23 = v21;
        absoluteString = [v20 absoluteString];
        uTF8String = [absoluteString UTF8String];
        v26 = 136315138;
        v27 = uTF8String;
        _os_log_error_impl(&dword_2669D1000, v23, OS_LOG_TYPE_ERROR, "%s", &v26, 0xCu);
      }
    }

    self->_hasReportedError = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__SiriCoreSiriBackgroundConnection__didEncounterError___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v3 logEventWithType:1004 context:v2 contextNoCopy:1];

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v2 objectForKey:@"connected_bt_devices"];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 objectForKey:@"connected_bt_devices"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = v2;
      v8 = [v2 objectForKey:@"connected_bt_devices"];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v15 = objc_alloc_init(MEMORY[0x277D58B70]);
              v16 = [v14 objectForKey:@"index"];
              if (v16)
              {
                v17 = [v14 objectForKey:@"index"];
                [v15 setIndex:v17];
              }

              else
              {
                [v15 setIndex:0];
              }

              v18 = [v14 objectForKey:@"RSSI"];
              if (v18)
              {
                v19 = [v14 objectForKey:@"RSSI"];
                [v19 doubleValue];
                [v15 setRssi:?];
              }

              else
              {
                [v15 setRssi:0.0];
              }

              [v36 addObject:v15];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v10);
      }

      v2 = v35;
    }
  }

  v20 = objc_alloc_init(MEMORY[0x277D58C00]);
  [v20 setConnectedBtDevices:v36];
  v21 = [v2 objectForKey:@"cloud_connected"];
  if (v21)
  {
    v22 = [v2 objectForKey:@"cloud_connected"];
    [v20 setIsCloudConnected:{objc_msgSend(v22, "BOOLValue")}];
  }

  else
  {
    [v20 setIsCloudConnected:0];
  }

  v23 = [v2 objectForKey:@"connected"];
  if (v23)
  {
    v24 = [v2 objectForKey:@"connected"];
    [v20 setIsConnected:{objc_msgSend(v24, "BOOLValue")}];
  }

  else
  {
    [v20 setIsConnected:0];
  }

  v25 = [v2 objectForKey:@"has_device"];
  if (v25)
  {
    v26 = [v2 objectForKey:@"has_device"];
    [v20 setHasDevice:{objc_msgSend(v26, "BOOLValue")}];
  }

  else
  {
    [v20 setHasDevice:0];
  }

  v27 = [v2 objectForKey:@"last_nearby_status_change"];
  if (v27)
  {
    v28 = [v2 objectForKey:@"last_nearby_status_change"];
    [v28 doubleValue];
    [v20 setTimeSinceLastNearbyChangeInSeconds:?];
  }

  else
  {
    [v20 setTimeSinceLastNearbyChangeInSeconds:0.0];
  }

  v29 = [v2 objectForKey:@"nearby"];
  if (v29)
  {
    v30 = [v2 objectForKey:@"nearby"];
    [v20 setIsNearby:{objc_msgSend(v30, "BOOLValue")}];
  }

  else
  {
    [v20 setIsNearby:0];
  }

  v31 = [v2 objectForKey:@"preferring_bt_classic"];
  if (v31)
  {
    v32 = [v2 objectForKey:@"preferring_bt_classic"];
    [v20 setIsPreferringBtClassic:{objc_msgSend(v32, "BOOLValue")}];
  }

  else
  {
    [v20 setIsPreferringBtClassic:0];
  }

  v33 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v33 logPeerConnectionFailed:v20];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_closeConnectionAndPrepareForReconnect:(BOOL)reconnect
{
  [(SiriCoreConnectionProvider *)self->_connectionProvider close];
  connectionProvider = self->_connectionProvider;
  self->_connectionProvider = 0;

  bufferedInputData = self->_bufferedInputData;
  self->_bufferedInputData = 0;

  inputDecompressor = self->_inputDecompressor;
  self->_inputDecompressor = 0;

  if (!reconnect)
  {
    bufferedGeneralOutputData = self->_bufferedGeneralOutputData;
    self->_bufferedGeneralOutputData = 0;

    outputCompressor = self->_outputCompressor;
    self->_outputCompressor = 0;

    bufferedUncompressedData = self->_bufferedUncompressedData;
    self->_bufferedUncompressedData = 0;

    [(SiriCoreSiriBackgroundConnection *)self _cancelOutstandingBarriers];
  }

  httpResponseHeader = self->_httpResponseHeader;
  if (httpResponseHeader)
  {
    CFRelease(httpResponseHeader);
    self->_httpResponseHeader = 0;
  }

  aceHeaderTimerSource = self->_aceHeaderTimerSource;
  if (aceHeaderTimerSource)
  {
    dispatch_source_cancel(aceHeaderTimerSource);
    v13 = self->_aceHeaderTimerSource;
    self->_aceHeaderTimerSource = 0;
  }

  pingTimerSource = self->_pingTimerSource;
  if (pingTimerSource)
  {
    dispatch_source_cancel(pingTimerSource);
    if (!self->_isOpened)
    {
      dispatch_resume(self->_pingTimerSource);
    }

    v15 = self->_pingTimerSource;
    self->_pingTimerSource = 0;
  }

  *&self->_isOpened = 0;
  self->_hasReportedError = 0;

  kdebug_trace();
}

- (void)_initializeBufferedGeneralOutputDataWithInitialPayload:(BOOL)payload
{
  v21 = *MEMORY[0x277D85DE8];
  bufferedGeneralOutputData = self->_bufferedGeneralOutputData;
  p_bufferedGeneralOutputData = &self->_bufferedGeneralOutputData;
  if (!bufferedGeneralOutputData)
  {
    objc_storeStrong(p_bufferedGeneralOutputData, MEMORY[0x277D85CC8]);
    if (payload)
    {
      v7 = objc_alloc_init(SiriCoreZlibDataCompressor);
      outputCompressor = self->_outputCompressor;
      self->_outputCompressor = &v7->super;
    }

    else
    {
      v9 = MEMORY[0x277CEF0A8];
      v10 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "[SiriCoreSiriBackgroundConnection _initializeBufferedGeneralOutputDataWithInitialPayload:]";
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s Sending HTTP Header", &v19, 0xCu);
      }

      _httpHeaderData = [(SiriCoreSiriBackgroundConnection *)self _httpHeaderData];
      [(SiriCoreSiriBackgroundConnection *)self _bufferGeneralData:_httpHeaderData];

      v12 = objc_alloc_init(SiriCoreZlibDataCompressor);
      v13 = self->_outputCompressor;
      self->_outputCompressor = &v12->super;

      v14 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "[SiriCoreSiriBackgroundConnection _initializeBufferedGeneralOutputDataWithInitialPayload:]";
        _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_INFO, "%s Sending ACE Header", &v19, 0xCu);
      }

      _aceHeaderData = [(SiriCoreSiriBackgroundConnection *)self _aceHeaderData];
      [(SiriCoreSiriBackgroundConnection *)self _bufferGeneralData:_aceHeaderData];
    }
  }

  bufferedUncompressedData = self->_bufferedUncompressedData;
  p_bufferedUncompressedData = &self->_bufferedUncompressedData;
  if (!bufferedUncompressedData)
  {
    objc_storeStrong(p_bufferedUncompressedData, MEMORY[0x277D85CC8]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_httpHeaderData
{
  siriConnectionUsesPeerManagedSync = self->_siriConnectionUsesPeerManagedSync;
  v4 = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo url];
  aceHost = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo aceHost];
  languageCode = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo languageCode];
  connectionInfo = self->_connectionInfo;
  if (siriConnectionUsesPeerManagedSync)
  {
    [(SiriCoreSiriConnectionInfo *)connectionInfo peerAssistantIdentifier];
  }

  else
  {
    [(SiriCoreSiriConnectionInfo *)connectionInfo assistantIdentifier];
  }
  v8 = ;
  v9 = [(SiriCoreSiriBackgroundConnection *)self _headerDataForURL:v4 aceHost:aceHost languageCode:languageCode syncAssistantId:v8];

  return v9;
}

- (void)_forceTriggerRetry
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:32 userInfo:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained siriBackgroundConnection:self didEncounterError:v4 analysisInfo:0];
}

- (void)_cancelSecondaryConnection
{
  v9 = *MEMORY[0x277D85DE8];
  secondaryConnectionProvider = self->_secondaryConnectionProvider;
  if (secondaryConnectionProvider)
  {
    v4 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[SiriCoreSiriBackgroundConnection _cancelSecondaryConnection]";
      _os_log_debug_impl(&dword_2669D1000, v4, OS_LOG_TYPE_DEBUG, "%s Canceling secondary connection", &v7, 0xCu);
      secondaryConnectionProvider = self->_secondaryConnectionProvider;
    }

    [(SiriCoreConnectionProvider *)secondaryConnectionProvider close];
    v5 = self->_secondaryConnectionProvider;
    self->_secondaryConnectionProvider = 0;

    self->_secondaryConnectionOpenState = 0;
    self->_betterPathAvailable = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startSecondaryConnection
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_secondaryConnectionOpenState)
  {
    v3 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[SiriCoreSiriBackgroundConnection _startSecondaryConnection]";
      _os_log_impl(&dword_2669D1000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting secondary connection.", buf, 0xCu);
    }

    self->_secondaryConnectionOpenState = 1;
    v4 = self->_connectionInfo;
    v5 = [(SiriCoreSiriConnectionInfo *)v4 url];
    v6 = [[SiriCoreNWConnection alloc] initWithQueue:self->_queue];
    connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)v4 connectionPolicyRoute];
    [(SiriCoreNWConnection *)v6 setPolicyRoute:connectionPolicyRoute];

    connectionPolicy = [(SiriCoreSiriConnectionInfo *)v4 connectionPolicy];
    [(SiriCoreNWConnection *)v6 setProviderConnectionPolicy:connectionPolicy];

    [(SiriCoreNWConnection *)v6 setPrefersWWAN:[(SiriCoreSiriConnectionInfo *)v4 prefersWWAN]];
    [(SiriCoreNWConnection *)v6 setConnectByPOPMethod:0];
    [(SiriCoreNWConnection *)v6 setDelegate:self];
    objc_storeStrong(&self->_secondaryConnectionProvider, v6);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (AFIsInternalInstall())
    {
      v30[0] = v10;
      v29[0] = @"provider";
      v29[1] = @"id";
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
      v30[1] = v11;
      v29[2] = @"connectionId";
      connectionId = [(SiriCoreSiriConnectionInfo *)v4 connectionId];
      v13 = connectionId;
      if (connectionId)
      {
        v14 = connectionId;
      }

      else
      {
        v14 = &stru_28782DDB0;
      }

      v30[2] = v14;
      v29[3] = @"url";
      v15 = [(SiriCoreSiriConnectionInfo *)v4 url];
      absoluteString = [v15 absoluteString];
      v17 = absoluteString;
      if (absoluteString)
      {
        v18 = absoluteString;
      }

      else
      {
        v18 = &stru_28782DDB0;
      }

      v30[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    }

    else
    {
      v27[0] = @"provider";
      v27[1] = @"id";
      v28[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
      v28[1] = v11;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    }

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:1009 context:v19];

    secondaryConnectionProvider = self->_secondaryConnectionProvider;
    connectionId2 = [(SiriCoreSiriConnectionInfo *)v4 connectionId];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__SiriCoreSiriBackgroundConnection__startSecondaryConnection__block_invoke;
    v25[3] = &unk_279BD5A88;
    v25[4] = self;
    v26 = v19;
    v23 = v19;
    [(SiriCoreConnectionProvider *)secondaryConnectionProvider openConnectionForURL:v5 withConnectionId:connectionId2 initialPayload:0 completion:v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __61__SiriCoreSiriBackgroundConnection__startSecondaryConnection__block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  kdebug_trace();
  v4 = *(*(a1 + 32) + 336);
  v5 = [MEMORY[0x277CEF158] sharedAnalytics];
  v22[0] = *(a1 + 40);
  v6 = AFAnalyticsContextCreateWithError();
  v22[1] = v6;
  v20 = @"primaryIsViable";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v21 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v10 = AFAnalyticsContextsMerge();
  [v5 logEventWithType:1010 context:v10];

  if (v4 == 1)
  {
    v11 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"ignored with no errors.";
      if (v3)
      {
        v12 = v3;
      }

      v16 = 136315394;
      v17 = "[SiriCoreSiriBackgroundConnection _startSecondaryConnection]_block_invoke";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_DEFAULT, "%s Secondary open completion %@", &v16, 0x16u);
    }

    [*(a1 + 32) _cancelSecondaryConnection];
  }

  else if (v3)
  {
    [*(a1 + 32) _cancelSecondaryConnection];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:3 userInfo:0];
    [*(a1 + 32) _didEncounterError:v13];
  }

  else
  {
    v14 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[SiriCoreSiriBackgroundConnection _startSecondaryConnection]_block_invoke";
      _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_DEFAULT, "%s Secondary connection opened and waiting.", &v16, 0xCu);
    }

    *(*(a1 + 32) + 344) = 2;
    [*(a1 + 32) _forceTriggerRetry];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveBackgroundConnectionWithSecondary
{
  v14 = *MEMORY[0x277D85DE8];
  [(SiriCoreSiriBackgroundConnection *)self _closeConnectionAndPrepareForReconnect:0];
  objc_storeStrong(&self->_connectionProvider, self->_secondaryConnectionProvider);
  secondaryConnectionProvider = self->_secondaryConnectionProvider;
  self->_secondaryConnectionProvider = 0;

  connectionProvider = self->_connectionProvider;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v7 setConnectionProvider:v6];

  v8 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[SiriCoreSiriBackgroundConnection updateActiveBackgroundConnectionWithSecondary]";
    _os_log_impl(&dword_2669D1000, v8, OS_LOG_TYPE_INFO, "%s secondary provider opened", &v12, 0xCu);
  }

  shouldFallbackQuickly = [(SiriCoreConnectionProvider *)self->_connectionProvider shouldFallbackQuickly];
  v10 = 7.0;
  if (shouldFallbackQuickly)
  {
    v10 = 5.0;
  }

  [(SiriCoreSiriBackgroundConnection *)self _scheduleAceHeaderTimeoutTimerWithInterval:v10];
  [(SiriCoreSiriBackgroundConnection *)self _updateBuffersForInitialPayload:0 bufferedLength:0 forceReconnect:[(SiriCoreSiriConnectionInfo *)self->_connectionInfo forceReconnect]];
  self->_httpResponseHeader = CFHTTPMessageCreateEmpty(0, 0);
  [(SiriCoreSiriBackgroundConnection *)self _setupReadHandlerOnProvider];
  [(SiriCoreSiriBackgroundConnection *)self _networkProviderDidOpen];
  self->_secondaryConnectionOpenState = 0;
  *&self->_primaryConnectionViable = 1;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  if (!self->_isCanceled)
  {
    [(SiriCoreSiriBackgroundConnection *)self _closeConnection];
    self->_isCanceled = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_storeWeak(&self->_delegate, 0);
    [WeakRetained siriBackgroundConnectionDidClose:self];
  }
}

- (void)_startNetworkProviderWithInfo:(id)info
{
  v51[4] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = [infoCopy url];
  kdebug_trace();
  v47 = 0;
  v6 = -[SiriCoreSiriBackgroundConnection _getInitialPayloadWithBufferedLength:forceReconnect:](self, "_getInitialPayloadWithBufferedLength:forceReconnect:", &v47, [infoCopy forceReconnect]);
  v7 = self->_connectionProvider;
  v8 = self->_connectionInfo;
  _usingPOP = [(SiriCoreSiriBackgroundConnection *)self _usingPOP];
  connectionProvider = self->_connectionProvider;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v37 = v12;
  if (AFIsInternalInstall())
  {
    v51[0] = v12;
    v50[0] = @"provider";
    v50[1] = @"id";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
    v51[1] = v13;
    v50[2] = @"connectionId";
    connectionId = [(SiriCoreSiriConnectionInfo *)v8 connectionId];
    v15 = connectionId;
    if (connectionId)
    {
      v16 = connectionId;
    }

    else
    {
      v16 = &stru_28782DDB0;
    }

    v51[2] = v16;
    v50[3] = @"url";
    [(SiriCoreSiriConnectionInfo *)v8 url];
    v17 = v36 = v5;
    absoluteString = [v17 absoluteString];
    v34 = infoCopy;
    v19 = _usingPOP;
    v20 = v7;
    v21 = v6;
    v22 = absoluteString;
    if (absoluteString)
    {
      v23 = absoluteString;
    }

    else
    {
      v23 = &stru_28782DDB0;
    }

    v51[3] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:{4, v34}];

    v6 = v21;
    v7 = v20;
    _usingPOP = v19;
    infoCopy = v35;

    v5 = v36;
  }

  else
  {
    v48[0] = @"provider";
    v48[1] = @"id";
    v49[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
    v49[1] = v13;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  }

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:1007 context:v24];

  v26 = self->_connectionProvider;
  connectionId2 = [(SiriCoreSiriConnectionInfo *)v8 connectionId];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __66__SiriCoreSiriBackgroundConnection__startNetworkProviderWithInfo___block_invoke;
  v38[3] = &unk_279BD5A60;
  v39 = v7;
  selfCopy = self;
  v46 = _usingPOP;
  v41 = v24;
  v42 = v8;
  v44 = infoCopy;
  v45 = v47;
  v43 = v6;
  v28 = infoCopy;
  v29 = v6;
  v30 = v8;
  v31 = v24;
  v32 = v7;
  [(SiriCoreConnectionProvider *)v26 openConnectionForURL:v5 withConnectionId:connectionId2 initialPayload:v29 completion:v38];

  v33 = *MEMORY[0x277D85DE8];
}

void __66__SiriCoreSiriBackgroundConnection__startNetworkProviderWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  kdebug_trace();
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  v6 = [MEMORY[0x277CEF158] sharedAnalytics];
  v27[0] = *(a1 + 48);
  v7 = AFAnalyticsContextCreateWithError();
  v27[1] = v7;
  v25 = @"stale";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v4 != v5];
  v26 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v27[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v11 = AFAnalyticsContextsMerge();
  [v6 logEventWithType:1008 context:v11];

  if (v4 == v5)
  {
    v13 = *MEMORY[0x277CEF0A8];
    v14 = os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v14)
      {
        *buf = 136315394;
        v22 = "[SiriCoreSiriBackgroundConnection _startNetworkProviderWithInfo:]_block_invoke";
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_2669D1000, v13, OS_LOG_TYPE_INFO, "%s provider open error: %@", buf, 0x16u);
      }

      v15 = *(a1 + 40);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__SiriCoreSiriBackgroundConnection__startNetworkProviderWithInfo___block_invoke_68;
      v19[3] = &unk_279BD6540;
      v19[4] = v15;
      v20 = v3;
      [v15 _fallBackToNextConnectionMethodWithError:v20 orElse:v19];
    }

    else
    {
      if (v14)
      {
        *buf = 136315138;
        v22 = "[SiriCoreSiriBackgroundConnection _startNetworkProviderWithInfo:]_block_invoke_2";
        _os_log_impl(&dword_2669D1000, v13, OS_LOG_TYPE_INFO, "%s provider opened", buf, 0xCu);
      }

      v16 = [*(a1 + 32) shouldFallbackQuickly];
      v17 = 5.0;
      if ((v16 & 1) == 0)
      {
        v17 = 7.0;
        if (*(a1 + 88) == 1)
        {
          [*(a1 + 56) timeout];
        }
      }

      [*(a1 + 40) _scheduleAceHeaderTimeoutTimerWithInterval:v17];
      [*(a1 + 40) _updateBuffersForInitialPayload:*(a1 + 64) bufferedLength:*(a1 + 80) forceReconnect:{objc_msgSend(*(a1 + 72), "forceReconnect")}];
      *(*(a1 + 40) + 88) = CFHTTPMessageCreateEmpty(0, 0);
      [*(a1 + 40) _setupReadHandlerOnProvider];
      [*(a1 + 40) _networkProviderDidOpen];
    }
  }

  else
  {
    v12 = *MEMORY[0x277CEF0A8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[SiriCoreSiriBackgroundConnection _startNetworkProviderWithInfo:]_block_invoke";
      _os_log_impl(&dword_2669D1000, v12, OS_LOG_TYPE_DEFAULT, "%s Ignoring open completion for stale connection", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (Class)_providerClass
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(SiriCoreSiriBackgroundConnection *)self _usingPeer])
  {
    peerProviderClass = self->_peerProviderClass;
    if (peerProviderClass)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (![(SiriCoreSiriConnectionInfo *)self->_connectionInfo requiresURLSession])
  {
    if (!AFIsInternalInstall() || (AFIsNano() & 1) != 0)
    {
LABEL_20:
      peerProviderClass = objc_opt_class();
      goto LABEL_21;
    }

    v5 = _AFPreferencesNetworkStackOverride();
    if ([v5 isEqualToString:@"NWConnection"])
    {
      v6 = off_279BD52C0;
    }

    else
    {
      if (![v5 isEqualToString:@"NetworkSessionProvider"])
      {
        peerProviderClass = 0;
        goto LABEL_19;
      }

      v6 = off_279BD52F8;
    }

    v7 = *v6;
    peerProviderClass = objc_opt_class();
    if (peerProviderClass)
    {
      v8 = *MEMORY[0x277CEF0A8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = NSStringFromClass(peerProviderClass);
        v13 = 136315394;
        v14 = "[SiriCoreSiriBackgroundConnection _providerClass]";
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_DEFAULT, "%s Forcing network provider to %@ due to preferences", &v13, 0x16u);
      }
    }

LABEL_19:

    if (peerProviderClass)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SiriCoreSiriBackgroundConnection _providerClass]";
    _os_log_impl(&dword_2669D1000, v4, OS_LOG_TYPE_DEFAULT, "%s Forcing provider to URL Session due to connection info", &v13, 0xCu);
  }

  peerProviderClass = objc_opt_class();
  if (!peerProviderClass)
  {
    goto LABEL_20;
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];

  return peerProviderClass;
}

- (void)_setNetworkProvider:(id)provider
{
  objc_storeStrong(&self->_connectionProvider, provider);
  providerCopy = provider;
  connectionProvider = self->_connectionProvider;
  v7 = objc_opt_class();
  v9 = NSStringFromClass(v7);
  v8 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];

  [v8 setConnectionProvider:v9];
}

- (void)_startWithConnectionInfo:(id)info proposedFallbackMethod:(int64_t)method allowFallbackToNewMethod:(BOOL)newMethod
{
  newMethodCopy = newMethod;
  v63 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (self->_connectionProvider)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SiriCoreSiriBackgroundConnection.m" lineNumber:268 description:@"Can't start a connection twice"];
  }

  v11 = MEMORY[0x277CEF0A8];
  v12 = *MEMORY[0x277CEF0A8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A8], OS_LOG_TYPE_DEFAULT))
  {
    if (method > 3)
    {
      v13 = @"POP";
    }

    else
    {
      v13 = off_279BD5BC8[method];
    }

    *v60 = 136315906;
    *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
    *&v60[12] = 2112;
    *&v60[14] = infoCopy;
    *&v60[22] = 2112;
    v61 = v13;
    *v62 = 1024;
    *&v62[2] = newMethodCopy;
    v14 = v12;
    _os_log_impl(&dword_2669D1000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ %@ %d", v60, 0x26u);
  }

  connectionMethod = self->_connectionMethod;
  objc_storeStrong(&self->_connectionInfo, info);
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  self->_currentStartTime = v17;

  if (self->_firstStartTime <= 0.0)
  {
    self->_firstStartTime = self->_currentStartTime;
  }

  self->_currentOpenTime = 0.0;
  ++self->_startCount;
  if (!connectionMethod)
  {
    if (([infoCopy useWiFiHint] & 1) == 0)
    {
LABEL_19:
      method = [(SiriCoreSiriBackgroundConnection *)self _nextConnectionMethod:*v60];
      goto LABEL_20;
    }

    method = 2;
LABEL_20:
    self->_connectionMethod = method;
    goto LABEL_24;
  }

  if (newMethodCopy)
  {
    if (!method)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v18 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    v19 = self->_connectionMethod;
    if (v19 > 3)
    {
      v20 = @"POP";
    }

    else
    {
      v20 = off_279BD5BC8[v19];
    }

    *v60 = 136315394;
    *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
    *&v60[12] = 2112;
    *&v60[14] = v20;
    v21 = v18;
    _os_log_impl(&dword_2669D1000, v21, OS_LOG_TYPE_INFO, "%s Fallback not allowed for this attempt, sticking with %@", v60, 0x16u);
  }

  method = self->_connectionMethod;
LABEL_24:
  if (method == 3 && [infoCopy skipPeer])
  {
    skipPeerErrorReason = [infoCopy skipPeerErrorReason];
    if (!skipPeerErrorReason)
    {
      skipPeerErrorReason = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SiriCoreSiriConnectionErrorDomain" code:12 userInfo:0];
    }

    if (!self->_errorsForConnectionMethods)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      errorsForConnectionMethods = self->_errorsForConnectionMethods;
      self->_errorsForConnectionMethods = v23;
    }

    v25 = objc_alloc_init(SiriCoreErrorInfo);
    [(SiriCoreErrorInfo *)v25 setError:skipPeerErrorReason];
    [(SiriCoreErrorInfo *)v25 setIsPeerConnectionError:[(SiriCoreConnectionProvider *)self->_connectionProvider isPeerConnectionError:skipPeerErrorReason]];
    [(SiriCoreErrorInfo *)v25 setIsPeerNotNearbyError:[(SiriCoreConnectionProvider *)self->_connectionProvider isPeerNotNearbyError:skipPeerErrorReason]];
    [(NSMutableDictionary *)self->_errorsForConnectionMethods setObject:v25 forKey:&unk_2878381F8];
    self->_connectionMethod = [(SiriCoreSiriBackgroundConnection *)self _nextConnectionMethod];
  }

  v26 = *v11;
  v27 = os_log_type_enabled(*v11, OS_LOG_TYPE_INFO);
  if (connectionMethod)
  {
    if (v27)
    {
      v28 = self->_connectionMethod;
      if (v28 > 3)
      {
        v29 = @"POP";
      }

      else
      {
        v29 = off_279BD5BC8[v28];
      }

      safetyNetBuffer = self->_safetyNetBuffer;
      if (safetyNetBuffer)
      {
        size = dispatch_data_get_size(safetyNetBuffer);
      }

      else
      {
        size = 0;
      }

      bufferedGeneralOutputData = self->_bufferedGeneralOutputData;
      if (bufferedGeneralOutputData)
      {
        bufferedGeneralOutputData = dispatch_data_get_size(bufferedGeneralOutputData);
      }

      *v60 = 136315906;
      *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
      *&v60[12] = 2112;
      *&v60[14] = v29;
      *&v60[22] = 2048;
      v61 = size;
      *v62 = 2048;
      *&v62[2] = bufferedGeneralOutputData;
      v35 = v26;
      _os_log_impl(&dword_2669D1000, v35, OS_LOG_TYPE_INFO, "%s falling back to %@ connection method; safety net has %lu bytes, output buffer has %lu bytes", v60, 0x2Au);
    }

    v36 = self->_bufferedGeneralOutputData;
    if (v36)
    {
      if (dispatch_data_get_size(self->_bufferedGeneralOutputData))
      {
        v37 = self->_safetyNetBuffer;
        if (v37)
        {
          concat = dispatch_data_create_concat(v37, v36);
          v39 = self->_safetyNetBuffer;
          self->_safetyNetBuffer = concat;
        }
      }
    }

    v40 = self->_safetyNetBuffer;
    if (v40)
    {
      if (dispatch_data_get_size(self->_safetyNetBuffer))
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    objc_storeStrong(&self->_bufferedGeneralOutputData, v41);
  }

  else if (v27)
  {
    v30 = self->_connectionMethod;
    if (v30 > 3)
    {
      v31 = @"POP";
    }

    else
    {
      v31 = off_279BD5BC8[v30];
    }

    *v60 = 136315394;
    *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
    *&v60[12] = 2112;
    *&v60[14] = v31;
    v42 = v26;
    _os_log_impl(&dword_2669D1000, v42, OS_LOG_TYPE_INFO, "%s using %@ connection method", v60, 0x16u);
  }

  objc_storeStrong(&self->_safetyNetBuffer, MEMORY[0x277D85CC8]);
  _providerClass = [(SiriCoreSiriBackgroundConnection *)self _providerClass];
  v44 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *v60 = 136315394;
    *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
    *&v60[12] = 2112;
    *&v60[14] = _providerClass;
    _os_log_impl(&dword_2669D1000, v44, OS_LOG_TYPE_INFO, "%s Using Provider: %@", v60, 0x16u);
  }

  v45 = [[_providerClass alloc] initWithQueue:self->_queue];
  connectionPolicyRoute = [infoCopy connectionPolicyRoute];
  [v45 setPolicyRoute:connectionPolicyRoute];

  if (!connectionMethod)
  {
    connectionPolicy = [infoCopy connectionPolicy];
    [v45 setProviderConnectionPolicy:connectionPolicy];
  }

  [v45 setPrefersWWAN:{objc_msgSend(infoCopy, "prefersWWAN", *v60, *&v60[8])}];
  if (([infoCopy useWiFiHint] & 1) == 0 && (AFIsNano() & 1) == 0)
  {
    v48 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *v60 = 136315138;
      *&v60[4] = "[SiriCoreSiriBackgroundConnection _startWithConnectionInfo:proposedFallbackMethod:allowFallbackToNewMethod:]";
      _os_log_impl(&dword_2669D1000, v48, OS_LOG_TYPE_INFO, "%s Setting scope to Cellular", v60, 0xCu);
    }

    [v45 setPrefersWWAN:1];
  }

  if ([(SiriCoreSiriBackgroundConnection *)self _usingPOP])
  {
    v49 = AFIsNano() ^ 1;
  }

  else
  {
    v49 = 0;
  }

  [v45 setConnectByPOPMethod:v49];
  [v45 setDelegate:self];
  connectionProvider = self->_connectionProvider;
  self->_connectionProvider = v45;
  v51 = v45;

  v52 = self->_connectionProvider;
  v53 = objc_opt_class();
  v54 = NSStringFromClass(v53);
  v55 = +[SiriCoreNetworkingAnalytics sharedSiriCoreNetworkingAnalytics];
  [v55 setConnectionProvider:v54];

  delegate = [(SiriCoreSiriBackgroundConnection *)self delegate];
  connectionType = [(SiriCoreConnectionProvider *)self->_connectionProvider connectionType];

  [delegate siriBackgroundConnection:self willStartWithConnectionType:connectionType];
  [(SiriCoreSiriBackgroundConnection *)self _startNetworkProviderWithInfo:infoCopy];

  v58 = *MEMORY[0x277D85DE8];
}

- (int64_t)_nextConnectionMethod
{
  connectionMethod = self->_connectionMethod;
  connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
  type = [connectionPolicyRoute type];
  NextSupported = _SiriCoreSiriConnectionMethodGetNextSupported(connectionMethod, type, self->_usesProxyConnection);

  return NextSupported;
}

- (BOOL)_usingPOPOnPeer
{
  if (self->_connectionMethod != 3)
  {
    return 0;
  }

  connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
  type = [connectionPolicyRoute type];
  v4 = [type isEqualToString:*MEMORY[0x277D47CC8]];

  return v4;
}

- (BOOL)_usingFlorence
{
  if (self->_connectionMethod != 2)
  {
    return 0;
  }

  connectionPolicyRoute = [(SiriCoreSiriConnectionInfo *)self->_connectionInfo connectionPolicyRoute];
  type = [connectionPolicyRoute type];
  v4 = [type isEqualToString:*MEMORY[0x277D47CB8]];

  return v4;
}

- (void)dealloc
{
  [(SiriCoreSiriBackgroundConnection *)self _closeConnection];
  [(SiriCoreSiriBackgroundConnection *)self stopHeartBeat];
  v3.receiver = self;
  v3.super_class = SiriCoreSiriBackgroundConnection;
  [(SiriCoreSiriBackgroundConnection *)&v3 dealloc];
}

- (SiriCoreSiriBackgroundConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SiriCoreSiriBackgroundConnection;
  v6 = [(SiriCoreSiriBackgroundConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    objc_storeStrong(&v7->_bufferedProviderHeaderOutputData, MEMORY[0x277D85CC8]);
    v7->_currentPingIndex = 0;
    v7->_currentBarrierIndex = -100000;
    [(SiriCoreSiriBackgroundConnection *)v7 startHeartBeat];
  }

  return v7;
}

@end