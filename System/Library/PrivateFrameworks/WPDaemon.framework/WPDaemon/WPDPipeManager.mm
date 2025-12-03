@interface WPDPipeManager
- (BOOL)sendVersionInfo:(id)info;
- (OS_dispatch_queue)queue;
- (WPDPipeManager)initWithServer:(id)server;
- (id)generateStateDumpStrings;
- (id)pipeInfo:(id)info forClient:(id)client;
- (id)pipeManagerState:(int64_t)state;
- (id)streamEvent:(unint64_t)event;
- (int64_t)writeDataToPipe:(id)pipe pipe:(id)a4;
- (void)_signpostBegin;
- (void)_signpostEnd;
- (void)channelHasData:(id)data;
- (void)handleIncomingPipeData:(id)data data:(char *)a4 dataSize:(int64_t)size;
- (void)invalidatePipeInfo:(id)info forPeer:(id)peer;
- (void)receivedAck:(id)ack data:(char *)data dataSize:(int64_t)size;
- (void)receivedConnectStatus:(id)status data:(char *)data dataSize:(int64_t)size;
- (void)receivedError:(id)error data:(char *)data dataSize:(int64_t)size;
- (void)receivedPayload:(id)payload data:(char *)data dataSize:(int64_t)size;
- (void)receivedVersionInfo:(id)info data:(char *)data dataSize:(int64_t)size;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)sendAck:(id)ack errorCode:(unsigned __int8)code;
- (void)sendChannelData:(id)data;
- (void)sendConnectStatus:(id)status connectStatus:(unsigned __int8)connectStatus;
- (void)sendData:(id)data forPeer:(id)peer forClient:(id)client;
- (void)sendErrorResponse:(id)response errorCode:(unsigned __int8)code;
- (void)sendRemainingData:(id)data wpClient:(id)client;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)unregisterEndpoint:(id)endpoint forClient:(id)client;
- (void)update;
@end

@implementation WPDPipeManager

- (WPDPipeManager)initWithServer:(id)server
{
  serverCopy = server;
  v20.receiver = self;
  v20.super_class = WPDPipeManager;
  v5 = [(WPDManager *)&v20 initWithServer:serverCopy Name:@"WPPM"];
  if (v5)
  {
    serverQueue = [serverCopy serverQueue];
    objc_storeWeak(&v5->_queue, serverQueue);

    v7 = objc_alloc(MEMORY[0x277CBE088]);
    serverQueue2 = [serverCopy serverQueue];
    v9 = [v7 initWithDelegate:v5 queue:serverQueue2];
    pipeManager = v5->_pipeManager;
    v5->_pipeManager = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    endpointsDict = v5->_endpointsDict;
    v5->_endpointsDict = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    peerPipesDict = v5->_peerPipesDict;
    v5->_peerPipesDict = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    connectionInitiators = v5->_connectionInitiators;
    v5->_connectionInitiators = dictionary3;

    v17 = [MEMORY[0x277CBEB98] setWithObject:v5->_pipeManager];
    [(WPDManager *)v5 setCbManagers:v17];

    wpdState = [serverCopy wpdState];
    [wpdState registerManager:v5->_pipeManager];

    v5->_wpPipeDataSignPostID = os_signpost_id_make_with_pointer(WiProxLog, v5);
  }

  return v5;
}

- (id)generateStateDumpStrings
{
  v3 = MEMORY[0x277CBEB18];
  v14.receiver = self;
  v14.super_class = WPDPipeManager;
  generateStateDumpStrings = [(WPDManager *)&v14 generateStateDumpStrings];
  v5 = [v3 arrayWithArray:generateStateDumpStrings];

  v6 = MEMORY[0x277CCACA8];
  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  v8 = [v6 stringWithFormat:@"endpointsDict %@\n", endpointsDict];
  [v5 addObject:v8];

  v9 = MEMORY[0x277CCACA8];
  peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
  v11 = [v9 stringWithFormat:@"peerPipesDict %@\n", peerPipesDict];
  [v5 addObject:v11];

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  return v12;
}

- (void)unregisterEndpoint:(id)endpoint forClient:(id)client
{
  v29 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager unregisterEndpoint:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    endpointsDict = [(WPDPipeManager *)self endpointsDict];
    v23 = 138412802;
    v24 = endpointCopy;
    v25 = 2112;
    v26 = clientCopy;
    v27 = 2112;
    v28 = endpointsDict;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPPM: unregisterEndpoint %@ for client %@ endpointsDict %@", &v23, 0x20u);
  }

  if (endpointCopy)
  {
    if (clientCopy)
    {
      endpointsDict2 = [(WPDPipeManager *)self endpointsDict];
      v12 = [endpointsDict2 count];

      if (v12)
      {
        endpointsDict3 = [(WPDPipeManager *)self endpointsDict];
        v14 = [endpointsDict3 objectForKeyedSubscript:endpointCopy];

        if (v14 && ([v14 clientUUID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", clientCopy), v15, v16))
        {
          endpointsDict4 = [(WPDPipeManager *)self endpointsDict];
          [endpointsDict4 removeObjectForKey:endpointCopy];

          [(CBScalablePipeManager *)self->_pipeManager unregisterEndpoint:endpointCopy];
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager unregisterEndpoint:forClient:];
          }

          v18 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 138412546;
            v24 = endpointCopy;
            v25 = 2112;
            v26 = clientCopy;
            _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPPM: unregisterEndpoint: Endpoint %@ already unregisterd for client %@", &v23, 0x16u);
          }
        }

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager unregisterEndpoint:forClient:];
        }

        v19 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          endpointsDict5 = [(WPDPipeManager *)self endpointsDict];
          v23 = 138412290;
          v24 = endpointsDict5;
          _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "WPPM: unregisterEndpoint: Current endpointsDict %@", &v23, 0xCu);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(id)data forPeer:(id)peer forClient:(id)client
{
  v130 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peerCopy = peer;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager sendData:forPeer:forClient:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    v48 = v9;
    v49 = [dataCopy length];
    *buf = 134218754;
    v116 = v49;
    v117 = 2112;
    v118 = dataCopy;
    v119 = 2112;
    v120 = peerCopy;
    v121 = 2112;
    v122 = clientCopy;
    _os_log_debug_impl(&dword_272965000, v48, OS_LOG_TYPE_DEBUG, "WPPM: sendData: size (%lu): %@ to peer %@ for client %@", buf, 0x2Au);
  }

  server = [(WPDManager *)self server];
  v11 = [server getClientForUUID:clientCopy];

  if (v11)
  {
    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__5;
    v111 = __Block_byref_object_dispose__5;
    v112 = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__5;
    v105 = __Block_byref_object_dispose__5;
    v106 = 0;
    endpointsSet = [v11 endpointsSet];
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendData:forPeer:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDPipeManager sendData:forPeer:forClient:];
    }

    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    v66 = [peerPipesDict objectForKeyedSubscript:peerCopy];

    if (v66)
    {
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_428;
      v97[3] = &unk_279E59E20;
      v98 = endpointsSet;
      v99 = &v107;
      v100 = &v101;
      [v66 enumerateObjectsUsingBlock:v97];
    }

    if (v108[5])
    {
      v13 = [dataCopy length];
      if ([v102[5] newProtocol])
      {
        if ([v102[5] pipeDidConnectSent])
        {
          pipeDataTransfer = [v102[5] pipeDataTransfer];
          if (!pipeDataTransfer)
          {
            pipeDataTransfer = [[PipeDataTransfer alloc] initPipeDataTransferForPeer:peerCopy];
            [v102[5] setPipeDataTransfer:pipeDataTransfer];
            if (WPLogInitOnce != -1)
            {
              [WPDPipeManager sendData:forPeer:forClient:];
            }

            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              [WPDPipeManager sendData:forPeer:forClient:];
            }
          }

          v96 = 0;
          [dataCopy getBytes:&v96 length:2];
          [pipeDataTransfer setTxTotalLenToSend:v96];
          v15 = [dataCopy subdataWithRange:{2, v13 - 2}];
          [pipeDataTransfer setTxTotalDataToSend:v15];

          [pipeDataTransfer setTxData:dataCopy];
          [pipeDataTransfer setTxSeqNum:{objc_msgSend(pipeDataTransfer, "generateSequenceNumber")}];
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager sendData:forPeer:forClient:];
          }

          v16 = WiProxLog;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            -[WPDPipeManager sendData:forPeer:forClient:].cold.11(v96, buf, [dataCopy length], v16);
          }

          v17 = [dataCopy length];
          peer2 = &v61;
          v18 = (v17 + 4);
          MEMORY[0x28223BE20]();
          v20 = &v61 - v19;
          bzero(&v61 - v19, v18);
          *v20 = 2;
          *(v20 + 1) = v17 + 3;
          v20[3] = [pipeDataTransfer txSeqNum];
          v21 = dataCopy;
          memcpy(v20 + 4, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
          [pipeDataTransfer setTxDataLeftToSend:v18];
          v22 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:v18];
          v23 = [(WPDPipeManager *)self writeDataToPipe:v22 pipe:v102[5]];

          if (v23 < 1)
          {
            if (WPLogInitOnce != -1)
            {
              [WPDPipeManager sendData:forPeer:forClient:];
            }

            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
            {
              [WPDPipeManager sendData:forPeer:forClient:];
            }

            v50 = MEMORY[0x277CCA9B8];
            v127 = *MEMORY[0x277CCA450];
            v128 = @"sendData failure";
            v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
            v52 = [v50 errorWithDomain:@"WPErrorDomain" code:26 userInfo:v51];

            queue = [(WPDPipeManager *)self queue];
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_447;
            v90[3] = &unk_279E59E48;
            v91 = v11;
            v92 = dataCopy;
            v95 = &v107;
            v54 = peerCopy;
            v93 = v54;
            v24 = v52;
            v94 = v24;
            dispatch_async(queue, v90);

            name = [v108[5] name];
            [(WPDPipeManager *)self invalidatePipeInfo:name forPeer:v54];
          }

          else
          {
            [pipeDataTransfer setTxDataLeftToSend:{objc_msgSend(pipeDataTransfer, "txDataLeftToSend") - v23}];
            if (WPLogInitOnce != -1)
            {
              [WPDPipeManager sendData:forPeer:forClient:];
            }

            v24 = WiProxLog;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              -[WPDPipeManager sendData:forPeer:forClient:].cold.15(v129, [pipeDataTransfer txDataLeftToSend], v24);
            }
          }
        }

        else
        {
          v37 = MEMORY[0x277CCACA8];
          processName = [v11 processName];
          pipeDataTransfer = [v37 stringWithFormat:@"sendData failure: LE pipe client %@ for %@ is not connected", clientCopy, processName];

          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager sendData:forPeer:forClient:];
          }

          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [WPDPipeManager sendData:forPeer:forClient:];
          }

          v39 = MEMORY[0x277CCA9B8];
          v125 = *MEMORY[0x277CCA450];
          v126 = pipeDataTransfer;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v41 = [v39 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v40];

          queue2 = [(WPDPipeManager *)self queue];
          v84[0] = MEMORY[0x277D85DD0];
          v84[1] = 3221225472;
          v84[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_454;
          v84[3] = &unk_279E59E48;
          v85 = v11;
          v86 = dataCopy;
          v89 = &v107;
          v87 = peerCopy;
          v88 = v41;
          v43 = v41;
          dispatch_async(queue2, v84);
        }
      }

      else
      {
        v32 = [(WPDPipeManager *)self writeDataToPipe:dataCopy pipe:v102[5]];
        if (v32 == v13)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager sendData:forPeer:forClient:];
          }

          v33 = WiProxLog;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            peer = [v108[5] peer];
            identifier = [peer identifier];
            *buf = 134218498;
            v116 = v13;
            v117 = 2048;
            v118 = v13;
            v119 = 2112;
            v120 = identifier;
            _os_log_impl(&dword_272965000, v33, OS_LOG_TYPE_DEFAULT, "WPPM: sendData: bytes written %ld (expected %lu) to peer %@", buf, 0x20u);
          }

          queue3 = [(WPDPipeManager *)self queue];
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_462;
          v74[3] = &unk_279E59E70;
          v75 = v11;
          v76 = dataCopy;
          v78 = &v107;
          v77 = peerCopy;
          dispatch_async(queue3, v74);

          pipeDataTransfer = v75;
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager sendData:forPeer:forClient:];
          }

          v44 = WiProxLog;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            peer2 = [v108[5] peer];
            identifier2 = [peer2 identifier];
            output = [v108[5] output];
            streamStatus = [output streamStatus];
            output2 = [v108[5] output];
            streamError = [output2 streamError];
            *buf = 134219010;
            v116 = v32;
            v117 = 2048;
            v118 = v13;
            v119 = 2112;
            v120 = identifier2;
            v121 = 2048;
            v122 = streamStatus;
            v123 = 2112;
            v124 = streamError;
            v60 = streamError;
            _os_log_error_impl(&dword_272965000, v44, OS_LOG_TYPE_ERROR, "WPPM: sendData: bytes written %ld (expected %lu) to peer %@ with status %lu error %@", buf, 0x34u);
          }

          queue4 = [(WPDPipeManager *)self queue];
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_458;
          v79[3] = &unk_279E59E70;
          v80 = v11;
          v81 = dataCopy;
          v83 = &v107;
          v46 = peerCopy;
          v82 = v46;
          dispatch_async(queue4, v79);

          name2 = [v108[5] name];
          [(WPDPipeManager *)self invalidatePipeInfo:name2 forPeer:v46];

          pipeDataTransfer = v80;
        }
      }
    }

    else
    {
      v25 = MEMORY[0x277CCACA8];
      endpointsSet2 = [v11 endpointsSet];
      pipeDataTransfer = [v25 stringWithFormat:@"sendData failure: LE pipe set %@ not found for client %@", endpointsSet2, clientCopy];

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendData:forPeer:forClient:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDPipeManager sendData:forPeer:forClient:];
      }

      v27 = MEMORY[0x277CCA9B8];
      v113 = *MEMORY[0x277CCA450];
      v114 = pipeDataTransfer;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v29 = [v27 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v28];

      queue5 = [(WPDPipeManager *)self queue];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_469;
      v69[3] = &unk_279E59E98;
      v70 = v11;
      v71 = dataCopy;
      v72 = peerCopy;
      v73 = v29;
      v31 = v29;
      dispatch_async(queue5, v69);
    }

    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(&v107, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendData:forPeer:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDPipeManager sendData:forPeer:forClient:];
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_428(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = a1[4];
  v13 = v6;
  v8 = [v6 pipe];
  v9 = [v8 name];
  LODWORD(v7) = [v7 containsObject:v9];

  if (v7)
  {
    v10 = [v13 pipe];
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_447(uint64_t a1)
{
  v5 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v5 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 64) + 8) + 40) name];
  [v2 sentData:v3 toEndpoint:v4 forPeripheral:*(a1 + 48) withError:*(a1 + 56)];
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_454(uint64_t a1)
{
  v5 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v5 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 64) + 8) + 40) name];
  [v2 sentData:v3 toEndpoint:v4 forPeripheral:*(a1 + 48) withError:*(a1 + 56)];
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_458(uint64_t a1)
{
  v8 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v8 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 56) + 8) + 40) name];
  v5 = *(a1 + 48);
  v6 = [*(*(*(a1 + 56) + 8) + 40) output];
  v7 = [v6 streamError];
  [v2 sentData:v3 toEndpoint:v4 forPeripheral:v5 withError:v7];
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_462(uint64_t a1)
{
  v5 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v5 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 56) + 8) + 40) name];
  [v2 sentData:v3 toEndpoint:v4 forPeripheral:*(a1 + 48) withError:0];
}

void __45__WPDPipeManager_sendData_forPeer_forClient___block_invoke_469(uint64_t a1)
{
  v3 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v3 remoteObjectProxy];
  [v2 sentData:*(a1 + 40) toEndpoint:0 forPeripheral:*(a1 + 48) withError:*(a1 + 56)];
}

- (id)pipeInfo:(id)info forClient:(id)client
{
  infoCopy = info;
  clientCopy = client;
  server = [(WPDManager *)self server];
  v9 = [server getClientForUUID:clientCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  if (v9)
  {
    endpointsSet = [v9 endpointsSet];
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager pipeInfo:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDPipeManager sendData:forPeer:forClient:];
    }

    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    v12 = [peerPipesDict objectForKeyedSubscript:infoCopy];

    if (v12)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __37__WPDPipeManager_pipeInfo_forClient___block_invoke_495;
      v16[3] = &unk_279E59EC0;
      v17 = endpointsSet;
      v18 = &v19;
      [v12 enumerateObjectsUsingBlock:v16];
    }

    v13 = v20[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  _Block_object_dispose(&v19, 8);

  return v14;
}

void __37__WPDPipeManager_pipeInfo_forClient___block_invoke_495(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 pipe];
  v9 = [v8 name];
  LODWORD(v7) = [v7 containsObject:v9];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)streamEvent:(unint64_t)event
{
  if (event > 3)
  {
    if (event == 4)
    {
      return @"NSStreamEventHasSpaceAvailable";
    }

    if (event != 8)
    {
      if (event == 16)
      {
        return @"NSStreamEventEndEncountered";
      }

      return @"unknown";
    }

    return @"NSStreamEventErrorOccurred";
  }

  else
  {
    if (!event)
    {
      return @"NSStreamEventNone";
    }

    if (event != 1)
    {
      if (event == 2)
      {
        return @"NSStreamEventHasBytesAvailable";
      }

      return @"unknown";
    }

    return @"NSStreamEventOpenCompleted";
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v86 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__5;
  v78 = __Block_byref_object_dispose__5;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __37__WPDPipeManager_stream_handleEvent___block_invoke;
  v61[3] = &unk_279E59F10;
  v8 = streamCopy;
  v62 = v8;
  v63 = &v70;
  v64 = &v74;
  v65 = &v66;
  [peerPipesDict enumerateKeysAndObjectsUsingBlock:v61];

  v9 = v75[5];
  if (!v9)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager stream:handleEvent:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDPipeManager stream:handleEvent:];
    }

    v18 = 0;
    identifier = 0;
    clientUUID = 0;
    goto LABEL_100;
  }

  pipe = [v9 pipe];
  peer = [pipe peer];
  identifier = [peer identifier];

  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  pipe2 = [v75[5] pipe];
  name = [pipe2 name];
  v15 = [endpointsDict objectForKeyedSubscript:name];
  clientUUID = [v15 clientUUID];

  server = [(WPDManager *)self server];
  v18 = [server getClientForUUID:clientUUID];

  if (event > 3)
  {
    if (event != 4)
    {
      if (event == 8 && ((v71[3] & 1) != 0 || *(v67 + 24) == 1))
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager stream:handleEvent:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager stream:handleEvent:];
        }

        pipe3 = [v75[5] pipe];
        name2 = [pipe3 name];
        pipe4 = [v75[5] pipe];
        peer2 = [pipe4 peer];
        identifier2 = [peer2 identifier];
        [(WPDPipeManager *)self invalidatePipeInfo:name2 forPeer:identifier2];
      }

      goto LABEL_100;
    }

    if (*(v71 + 24) != 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDPipeManager stream:handleEvent:];
      }

      goto LABEL_100;
    }

    if ([v75[5] newProtocol])
    {
      if (([v75[5] versionInfoSent] & 1) == 0)
      {
        [(WPDPipeManager *)self sendVersionInfo:v75[5]];
        goto LABEL_100;
      }

      if ([v75[5] versionInfoReceived])
      {
        if (![v75[5] versionInfoSent] || !objc_msgSend(v75[5], "versionInfoReceived") || (objc_msgSend(v75[5], "pipeDidConnectSent") & 1) != 0)
        {
          [(WPDPipeManager *)self sendRemainingData:v75[5] wpClient:v18];
          goto LABEL_100;
        }

        if (v18)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager stream:handleEvent:];
          }

          v42 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_90;
          }

          *buf = 0;
          v43 = "WPPM: output stream: send pipe connect notification";
          goto LABEL_89;
        }

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager stream:handleEvent:];
        }

        v49 = WiProxLog;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          pipe5 = [v75[5] pipe];
          name3 = [pipe5 name];
          *buf = 138412802;
          v81 = clientUUID;
          v82 = 2112;
          v83 = identifier;
          v84 = 2112;
          v85 = name3;
          _os_log_error_impl(&dword_272965000, v49, OS_LOG_TYPE_ERROR, "WPPM: output stream: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
        }

        pipe6 = [v75[5] pipe];
        name4 = [pipe6 name];
        [(WPDPipeManager *)self invalidatePipeInfo:name4 forPeer:identifier];

LABEL_77:
        v18 = 0;
        goto LABEL_100;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      v36 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_100;
      }

      *buf = 0;
      v29 = "WPPM: output stream: wait to receive version info";
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      v36 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_100;
      }

      *buf = 0;
      v29 = "WPPM: output stream: using old protocol";
    }

    v30 = v36;
    v31 = 2;
    goto LABEL_71;
  }

  if (event == 1)
  {
    if (*(v71 + 24) != 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      v32 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_100;
      }

      v33 = *(v67 + 24);
      *buf = 67109120;
      LODWORD(v81) = v33;
      v29 = "WPPM: handleEvent: input stream opened %d";
      v30 = v32;
      v31 = 8;
LABEL_71:
      _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      goto LABEL_100;
    }

    if (v18)
    {
      if ([v75[5] newProtocol] && (!objc_msgSend(v75[5], "versionInfoSent") || !objc_msgSend(v75[5], "versionInfoReceived")) || (objc_msgSend(v75[5], "pipeDidConnectSent") & 1) != 0)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager stream:handleEvent:];
        }

        v27 = WiProxLog;
        if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_100;
        }

        v28 = v75[5];
        *buf = 138412290;
        v81 = v28;
        v29 = "WPPM: output open: current pipe info: %@";
        v30 = v27;
        v31 = 12;
        goto LABEL_71;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      v42 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_90:
        [v75[5] setPipeDidConnectSent:1];
        [v18 connectedDeviceOverLEPipe:identifier];
        goto LABEL_100;
      }

      *buf = 0;
      v43 = "WPPM: output open: send pipe connect notification";
LABEL_89:
      _os_log_impl(&dword_272965000, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 2u);
      goto LABEL_90;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager stream:handleEvent:];
    }

    v37 = WiProxLog;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      pipe7 = [v75[5] pipe];
      name5 = [pipe7 name];
      *buf = 138412802;
      v81 = clientUUID;
      v82 = 2112;
      v83 = identifier;
      v84 = 2112;
      v85 = name5;
      _os_log_error_impl(&dword_272965000, v37, OS_LOG_TYPE_ERROR, "WPPM: output open: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
    }

    goto LABEL_77;
  }

  if (event != 2)
  {
    goto LABEL_100;
  }

  MEMORY[0x28223BE20]();
  bzero(v54, 0x1000uLL);
  v19 = [v8 read:v54 maxLength:4096];
  if (!v19)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager stream:handleEvent:];
    }

    v34 = WiProxLog;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      streamError = [v8 streamError];
      [(WPDPipeManager *)streamError stream:buf handleEvent:v34];
    }

    goto LABEL_99;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager stream:handleEvent:];
  }

  v20 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v81 = identifier;
    v82 = 2048;
    v83 = v19;
    _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "WPPM: input stream: receivedData from peer %@ of len %ld", buf, 0x16u);
  }

  if (*(v67 + 24) == 1)
  {
    if ([v75[5] newProtocol])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager stream:handleEvent:];
      }

      v21 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "WPPM: input stream: new protocol", buf, 2u);
      }

      [(WPDPipeManager *)self handleIncomingPipeData:v75[5] data:v54 dataSize:v19];
      goto LABEL_100;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager stream:handleEvent:];
    }

    v38 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v38, OS_LOG_TYPE_DEFAULT, "WPPM: input stream: old protocol", buf, 2u);
    }

    if (v18)
    {
      v39 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:v19];
      queue = [(WPDPipeManager *)self queue];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __37__WPDPipeManager_stream_handleEvent___block_invoke_556;
      v56[3] = &unk_279E59E70;
      v57 = v18;
      v58 = v39;
      v60 = &v74;
      v59 = identifier;
      v41 = v39;
      dispatch_async(queue, v56);

      goto LABEL_100;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager stream:handleEvent:];
    }

    v34 = WiProxLog;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      pipe8 = [v75[5] pipe];
      name6 = [pipe8 name];
      *buf = 138412802;
      v81 = clientUUID;
      v82 = 2112;
      v83 = identifier;
      v84 = 2112;
      v85 = name6;
      _os_log_error_impl(&dword_272965000, v34, OS_LOG_TYPE_ERROR, "WPPM: input stream: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
    }

LABEL_99:

    goto LABEL_100;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager stream:handleEvent:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDPipeManager stream:handleEvent:];
  }

LABEL_100:

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v44 = *MEMORY[0x277D85DE8];
}

void __37__WPDPipeManager_stream_handleEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__WPDPipeManager_stream_handleEvent___block_invoke_2;
  v5[3] = &unk_279E59EE8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  [a3 enumerateObjectsUsingBlock:v5];
}

void __37__WPDPipeManager_stream_handleEvent___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v6 = [v13 pipe];
  v7 = [v6 output];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    v9 = 40;
  }

  else
  {
    v10 = [v13 pipe];
    v11 = [v10 input];
    v12 = [v11 isEqual:*(a1 + 32)];

    if (!v12)
    {
      goto LABEL_6;
    }

    v9 = 56;
  }

  *(*(*(a1 + v9) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  *a3 = 1;
LABEL_6:
}

void __37__WPDPipeManager_stream_handleEvent___block_invoke_556(uint64_t a1)
{
  v6 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v6 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(*(*(a1 + 56) + 8) + 40) pipe];
  v5 = [v4 name];
  [v2 receivedData:v3 fromEndpoint:v5 forPeripheral:*(a1 + 48)];
}

- (void)handleIncomingPipeData:(id)data data:(char *)a4 dataSize:(int64_t)size
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = *a4;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager handleIncomingPipeData:data:dataSize:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    pipe = [dataCopy pipe];
    name = [pipe name];
    *v38 = 138412802;
    *&v38[4] = name;
    v39 = 2048;
    sizeCopy = size;
    v41 = 1024;
    v42 = v9;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "WPPM: handleIncomingPipeData: %@ of size: %ld first byte 0x%x", v38, 0x1Cu);
  }

  pipeDataTransfer = [dataCopy pipeDataTransfer];
  if (pipeDataTransfer)
  {
    v15 = pipeDataTransfer;
    pipeDataTransfer2 = [dataCopy pipeDataTransfer];
    rxWaitForMoreData = [pipeDataTransfer2 rxWaitForMoreData];

    if (rxWaitForMoreData)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager handleIncomingPipeData:data:dataSize:];
      }

      v18 = WiProxLog;
      if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *v38 = 0;
      v19 = "WPPM: handleIncomingPipeData: continuation of previous packet";
      v20 = v18;
      v21 = 2;
LABEL_11:
      _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, v19, v38, v21);
LABEL_12:
      selfCopy3 = self;
      v23 = dataCopy;
      v24 = a4;
      sizeCopy2 = size;
LABEL_13:
      [(WPDPipeManager *)selfCopy3 receivedPayload:v23 data:v24 dataSize:sizeCopy2, *v38];
      goto LABEL_44;
    }
  }

  ackData = [dataCopy ackData];
  if (ackData)
  {
    v27 = ackData;
    ackData2 = [dataCopy ackData];
    rxWaitForMoreData2 = [ackData2 rxWaitForMoreData];

    if (rxWaitForMoreData2)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager handleIncomingPipeData:data:dataSize:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "WPPM: handleIncomingPipeData: continuation of previous packet", v38, 2u);
      }

      selfCopy4 = self;
      v32 = dataCopy;
      v33 = a4;
      sizeCopy3 = size;
      goto LABEL_30;
    }
  }

  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      [(WPDPipeManager *)self receivedVersionInfo:dataCopy data:a4 + 1 dataSize:size - 1];
      goto LABEL_44;
    }

    if (v9 == 2)
    {
      sizeCopy2 = size - 1;
      v24 = a4 + 1;
      selfCopy3 = self;
      v23 = dataCopy;
      goto LABEL_13;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        sizeCopy3 = size - 1;
        v33 = a4 + 1;
        selfCopy4 = self;
        v32 = dataCopy;
LABEL_30:
        [(WPDPipeManager *)selfCopy4 receivedAck:v32 data:v33 dataSize:sizeCopy3];
        goto LABEL_44;
      case 4:
        [(WPDPipeManager *)self receivedError:dataCopy data:a4 + 1 dataSize:size - 1];
        goto LABEL_44;
      case 5:
        [(WPDPipeManager *)self receivedConnectStatus:dataCopy data:a4 + 1 dataSize:size - 1];
        goto LABEL_44;
    }
  }

  if ([dataCopy versionInfoSent] && objc_msgSend(dataCopy, "versionInfoReceived"))
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager handleIncomingPipeData:data:dataSize:];
    }

    v35 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *v38 = 67109120;
    *&v38[4] = v9;
    v19 = "WPPM: handleIncomingPipeData: continuation of pervious packet first byte 0x%x";
    v20 = v35;
    v21 = 8;
    goto LABEL_11;
  }

  v36 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:size];
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager handleIncomingPipeData:data:dataSize:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDPipeManager handleIncomingPipeData:data:dataSize:];
  }

LABEL_44:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)receivedVersionInfo:(id)info data:(char *)data dataSize:(int64_t)size
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager receivedVersionInfo:data:dataSize:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v34 = size;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPPM: receivedVersionInfo of len %ld", buf, 0xCu);
  }

  if (size <= 5)
  {
    [(WPDPipeManager *)self sendErrorResponse:infoCopy errorCode:3];
    goto LABEL_30;
  }

  [infoCopy setVersion:data[1]];
  v10 = data[2];
  [infoCopy setSupportedFeatures:(data[4] << 16) | (data[3] << 8) | (data[5] << 24) | v10];
  [infoCopy setVersionInfoReceived:1];
  [infoCopy setUseConnectStatusPDU:v10 & 1];
  pipe = [infoCopy pipe];
  peer = [pipe peer];
  identifier = [peer identifier];

  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  pipe2 = [infoCopy pipe];
  name = [pipe2 name];
  v16 = [endpointsDict objectForKeyedSubscript:name];
  clientUUID = [v16 clientUUID];

  server = [(WPDManager *)self server];
  v19 = [server getClientForUUID:clientUUID];

  if ([infoCopy versionInfoReceived] && objc_msgSend(infoCopy, "versionInfoSent") && (objc_msgSend(infoCopy, "pipeDidConnectSent") & 1) == 0)
  {
    if (!v19)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedVersionInfo:data:dataSize:];
      }

      v24 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        v29 = v24;
        pipe3 = [infoCopy pipe];
        name2 = [pipe3 name];
        *buf = 138412802;
        *v34 = clientUUID;
        *&v34[8] = 2112;
        v35 = identifier;
        v36 = 2112;
        v37 = name2;
        _os_log_error_impl(&dword_272965000, v29, OS_LOG_TYPE_ERROR, "WPPM: receivedVersionInfo: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
      }

      goto LABEL_25;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager receivedVersionInfo:data:dataSize:];
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      useConnectStatusPDU = [infoCopy useConnectStatusPDU];
      connectionInitiator = [infoCopy connectionInitiator];
      *buf = 67109376;
      *v34 = useConnectStatusPDU;
      *&v34[4] = 1024;
      *&v34[6] = connectionInitiator;
      _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "WPPM: receivedVersionInfo: version info exchanged - use conn PDU: %d, initiator: %d", buf, 0xEu);
    }

    if ([infoCopy useConnectStatusPDU])
    {
      if (![infoCopy connectionInitiator])
      {
        goto LABEL_19;
      }

      [(WPDPipeManager *)self sendConnectStatus:infoCopy connectStatus:1];
    }

    [infoCopy setPipeDidConnectSent:1];
    [v19 connectedDeviceOverLEPipe:identifier];
LABEL_19:
    if (size != 6)
    {
      [(WPDPipeManager *)self handleIncomingPipeData:infoCopy data:data + 6 dataSize:size - 6];
    }
  }

LABEL_25:
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager receivedVersionInfo:data:dataSize:];
  }

  v25 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    version = [infoCopy version];
    *buf = 67109376;
    *v34 = version;
    *&v34[4] = 1024;
    *&v34[6] = 1;
    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "WPPM: receivedVersionInfo: remote version %d, local version %d", buf, 0xEu);
  }

LABEL_30:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)receivedPayload:(id)payload data:(char *)data dataSize:(int64_t)size
{
  v120[2] = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager receivedPayload:data:dataSize:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPipeManager receivedPayload:data:dataSize:];
    if (size)
    {
      goto LABEL_5;
    }
  }

  else if (size)
  {
LABEL_5:
    pipe = [payloadCopy pipe];
    peer = [pipe peer];
    identifier = [peer identifier];

    endpointsDict = [(WPDPipeManager *)self endpointsDict];
    pipe2 = [payloadCopy pipe];
    name = [pipe2 name];
    v14 = [endpointsDict objectForKeyedSubscript:name];
    clientUUID = [v14 clientUUID];

    server = [(WPDManager *)self server];
    v17 = [server getClientForUUID:clientUUID];

    pipeDataTransfer = [payloadCopy pipeDataTransfer];
    if ([payloadCopy newProtocol] && (objc_msgSend(payloadCopy, "pipeDidConnectSent") & 1) == 0)
    {
      if (pipeDataTransfer)
      {
        [pipeDataTransfer resetRxTransfer];
      }

      [(WPDPipeManager *)self sendErrorResponse:payloadCopy errorCode:6];
      goto LABEL_85;
    }

    if (!pipeDataTransfer)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: initialize pipe transfer object", buf, 2u);
      }

      pipeDataTransfer = [[PipeDataTransfer alloc] initPipeDataTransferForPeer:identifier];
      [payloadCopy setPipeDataTransfer:pipeDataTransfer];
    }

    data = [MEMORY[0x277CBEB28] data];
    if ([pipeDataTransfer rxFirstPacket])
    {
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:data length:size];
      [pipeDataTransfer setRxData:v20];

      rxData = [pipeDataTransfer rxData];
      v22 = [rxData length];
      rxCurrentDataSize = [pipeDataTransfer rxCurrentDataSize];

      if (v22 > rxCurrentDataSize)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        v24 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager receivedPayload:v24 data:pipeDataTransfer dataSize:?];
        }

        [pipeDataTransfer setRxWaitForMoreData:0];
        rxData2 = [pipeDataTransfer rxData];
        rxCurrentDataSize2 = [pipeDataTransfer rxCurrentDataSize];
        rxData3 = [pipeDataTransfer rxData];
        v28 = [rxData2 subdataWithRange:{rxCurrentDataSize2, objc_msgSend(rxData3, "length") - objc_msgSend(pipeDataTransfer, "rxCurrentDataSize")}];
        [data setData:v28];

        rxData4 = [pipeDataTransfer rxData];
        v30 = [rxData4 subdataWithRange:{0, objc_msgSend(pipeDataTransfer, "rxCurrentDataSize")}];

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        v31 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v31;
          v33 = [v30 length];
          *buf = 134218242;
          *v118 = v33;
          *&v118[8] = 2112;
          *&v118[10] = v30;
          _os_log_impl(&dword_272965000, v32, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: of len (%lu) %@", buf, 0x16u);
        }

        [pipeDataTransfer setRxData:v30];
      }

      rxData5 = [pipeDataTransfer rxData];
LABEL_25:
      rxTotalDataWithLen = [pipeDataTransfer rxTotalDataWithLen];
      rxData6 = [pipeDataTransfer rxData];
      [rxTotalDataWithLen appendData:rxData6];

      rxCurrentReceivedData = [pipeDataTransfer rxCurrentReceivedData];
      [rxCurrentReceivedData appendData:rxData5];

      [pipeDataTransfer setRxCurrentDataSize:{(objc_msgSend(pipeDataTransfer, "rxCurrentDataSize") - objc_msgSend(rxData5, "length"))}];
      v103 = clientUUID;
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      v38 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        [pipeDataTransfer rxCurrentReceivedData];
        selfCopy = self;
        v41 = v17;
        v43 = v42 = rxData5;
        v44 = [v43 length];
        rxCurrentDataSize3 = [pipeDataTransfer rxCurrentDataSize];
        rxTotalDataWithLen2 = [pipeDataTransfer rxTotalDataWithLen];
        v47 = [rxTotalDataWithLen2 length];
        *buf = 134218754;
        *v118 = v44;
        *&v118[8] = 2112;
        *&v118[10] = identifier;
        v119 = 1024;
        LODWORD(v120[0]) = rxCurrentDataSize3;
        WORD2(v120[0]) = 2048;
        *(v120 + 6) = v47;
        _os_log_impl(&dword_272965000, v39, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: length of data received %ld from peer %@, length of data remaining to receive: %d, rxTotalData %ld", buf, 0x26u);

        rxData5 = v42;
        v17 = v41;
        self = selfCopy;
      }

      [(WPDPipeManager *)self _signpostBegin];
      if ([pipeDataTransfer rxCurrentDataSize] || (objc_msgSend(pipeDataTransfer, "rxCurrentReceivedData"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "length"), v50, !v51))
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        clientUUID = v103;
        v48 = WiProxLog;
        v49 = data;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272965000, v48, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: transfer wait", buf, 2u);
        }

        [pipeDataTransfer setRxWaitForMoreData:1];
LABEL_77:
        if ([v49 length])
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager receivedPayload:data:dataSize:];
          }

          v88 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_83;
          }

          v89 = v88;
          v90 = [v49 length];
          *buf = 134218242;
          *v118 = v90;
          *&v118[8] = 2112;
          *&v118[10] = v49;
LABEL_82:
          _os_log_impl(&dword_272965000, v89, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: decode next packet of len (%lu) %@", buf, 0x16u);

LABEL_83:
          -[WPDPipeManager handleIncomingPipeData:data:dataSize:](self, "handleIncomingPipeData:data:dataSize:", payloadCopy, [v49 bytes], objc_msgSend(v49, "length"));
        }

LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      if (v17)
      {
        v52 = MEMORY[0x277CBEA90];
        rxTotalDataWithLen3 = [pipeDataTransfer rxTotalDataWithLen];
        v54 = [v52 dataWithData:rxTotalDataWithLen3];

        queue = [(WPDPipeManager *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__WPDPipeManager_receivedPayload_data_dataSize___block_invoke_629;
        block[3] = &unk_279E59F38;
        v107 = v17;
        v108 = v54;
        v56 = payloadCopy;
        v109 = v56;
        v110 = identifier;
        selfCopy2 = self;
        v57 = v54;
        dispatch_async(queue, block);

        [(WPDPipeManager *)self sendAck:v56 errorCode:0];
        clientUUID = v103;
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        clientUUID = v103;
        v87 = WiProxLog;
        v49 = data;
        if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        v95 = v87;
        pipe3 = [payloadCopy pipe];
        name2 = [pipe3 name];
        *buf = 138412802;
        *v118 = v103;
        *&v118[8] = 2112;
        *&v118[10] = identifier;
        v119 = 2112;
        v120[0] = name2;
        _os_log_error_impl(&dword_272965000, v95, OS_LOG_TYPE_ERROR, "WPPM: receivedPayload: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);

        clientUUID = v103;
        v17 = 0;
      }

      v49 = data;
LABEL_76:
      [pipeDataTransfer resetRxTransfer];
      goto LABEL_77;
    }

    if (size > 2)
    {
      v102 = v17;
      v58 = clientUUID;
      v59 = *data;
      v60 = data[1];
      v61 = data[2];
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      v62 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v118 = v59 | (v60 << 8);
        *&v118[4] = 1024;
        *&v118[6] = v61;
        _os_log_debug_impl(&dword_272965000, v62, OS_LOG_TYPE_DEBUG, "WPPM: receivedPayload: FIRST PACKET len %d, seqNum %d", buf, 0xEu);
      }

      [pipeDataTransfer setRxSeqNum:v61];
      v63 = [MEMORY[0x277CBEA90] dataWithBytes:data + 3 length:size - 3];
      [pipeDataTransfer setRxData:v63];

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      clientUUID = v58;
      v64 = WiProxLog;
      v17 = v102;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDPipeManager receivedPayload:v64 data:pipeDataTransfer dataSize:?];
      }

      if (size < 5)
      {
        rxData5 = 0;
        goto LABEL_25;
      }

      [pipeDataTransfer setRxTotalLenToReceive:*(data + 3)];
      v65 = [MEMORY[0x277CBEA90] dataWithBytes:data + 5 length:size - 5];
      [pipeDataTransfer setRxTotalDataToReceive:v65];

      [pipeDataTransfer setRxCurrentDataSize:{objc_msgSend(pipeDataTransfer, "rxTotalLenToReceive")}];
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      v66 = data;
      v67 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v67;
        rxTotalLenToReceive = [pipeDataTransfer rxTotalLenToReceive];
        rxTotalDataToReceive = [pipeDataTransfer rxTotalDataToReceive];
        *buf = 67109378;
        *v118 = rxTotalLenToReceive;
        v66 = data;
        *&v118[4] = 2112;
        *&v118[6] = rxTotalDataToReceive;
        _os_log_impl(&dword_272965000, v68, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: FIRST PACKET rxTLen %d, rxTData: %@", buf, 0x12u);
      }

      rxTotalDataToReceive2 = [pipeDataTransfer rxTotalDataToReceive];
      rxTotalDataToReceive3 = [pipeDataTransfer rxTotalDataToReceive];
      v72 = [rxTotalDataToReceive3 length];
      rxCurrentDataSize4 = [pipeDataTransfer rxCurrentDataSize];

      if (v72 <= rxCurrentDataSize4)
      {
        [pipeDataTransfer setRxFirstPacket:1];
        rxData5 = rxTotalDataToReceive2;
        goto LABEL_25;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedPayload:data:dataSize:];
      }

      v74 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDPipeManager receivedPayload:v74 data:pipeDataTransfer dataSize:?];
      }

      rxTotalDataToReceive4 = [pipeDataTransfer rxTotalDataToReceive];
      rxTotalLenToReceive2 = [pipeDataTransfer rxTotalLenToReceive];
      rxTotalDataToReceive5 = [pipeDataTransfer rxTotalDataToReceive];
      v78 = [rxTotalDataToReceive4 subdataWithRange:{rxTotalLenToReceive2, objc_msgSend(rxTotalDataToReceive5, "length") - objc_msgSend(pipeDataTransfer, "rxTotalLenToReceive")}];
      [v66 setData:v78];

      if (v102)
      {
        rxData7 = [pipeDataTransfer rxData];
        v80 = [rxData7 subdataWithRange:{0, objc_msgSend(pipeDataTransfer, "rxTotalLenToReceive") + 2}];

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        v81 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v82 = v81;
          v83 = [v80 length];
          *buf = 134218242;
          *v118 = v83;
          *&v118[8] = 2112;
          *&v118[10] = v80;
          _os_log_impl(&dword_272965000, v82, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload: notify didReceive of len (%lu) %@", buf, 0x16u);
        }

        queue2 = [(WPDPipeManager *)self queue];
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __48__WPDPipeManager_receivedPayload_data_dataSize___block_invoke_614;
        v112[3] = &unk_279E59E98;
        v113 = v102;
        v114 = v80;
        v85 = payloadCopy;
        v115 = v85;
        v116 = identifier;
        v86 = v80;
        dispatch_async(queue2, v112);

        [(WPDPipeManager *)self sendAck:v85 errorCode:0];
        rxData5 = rxTotalDataToReceive2;
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        rxData5 = rxTotalDataToReceive2;
        v92 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          v98 = v92;
          pipe4 = [payloadCopy pipe];
          name3 = [pipe4 name];
          *buf = 138412802;
          *v118 = clientUUID;
          *&v118[8] = 2112;
          *&v118[10] = identifier;
          v119 = 2112;
          v120[0] = name3;
          _os_log_error_impl(&dword_272965000, v98, OS_LOG_TYPE_ERROR, "WPPM: receivedPayload: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);

          rxData5 = rxTotalDataToReceive2;
        }
      }

      [pipeDataTransfer resetRxTransfer];
      if ([data length])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedPayload:data:dataSize:];
        }

        v93 = WiProxLog;
        v49 = data;
        if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        v89 = v93;
        v94 = [data length];
        *buf = 134218242;
        *v118 = v94;
        *&v118[8] = 2112;
        *&v118[10] = data;
        goto LABEL_82;
      }
    }

    else
    {
      [(WPDPipeManager *)self sendErrorResponse:payloadCopy errorCode:3];
      rxData5 = 0;
    }

    v49 = data;
    goto LABEL_84;
  }

  [(WPDPipeManager *)self sendErrorResponse:payloadCopy errorCode:3];
LABEL_86:

  v91 = *MEMORY[0x277D85DE8];
}

void __48__WPDPipeManager_receivedPayload_data_dataSize___block_invoke_614(uint64_t a1)
{
  v6 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v6 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pipe];
  v5 = [v4 name];
  [v2 receivedData:v3 fromEndpoint:v5 forPeripheral:*(a1 + 56)];
}

uint64_t __48__WPDPipeManager_receivedPayload_data_dataSize___block_invoke_629(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) xpcConnectionForClient];
  v3 = [v2 remoteObjectProxy];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) pipe];
  v6 = [v5 name];
  [v3 receivedData:v4 fromEndpoint:v6 forPeripheral:*(a1 + 56)];

  if (WPLogInitOnce != -1)
  {
    __48__WPDPipeManager_receivedPayload_data_dataSize___block_invoke_629_cold_1();
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [v8 length];
    v11 = *(a1 + 56);
    v14 = 134218242;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPPM: receivedPayload queue block processed: length of data received %lu from peer %@", &v14, 0x16u);
  }

  result = [*(a1 + 64) _signpostEnd];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)receivedAck:(id)ack data:(char *)data dataSize:(int64_t)size
{
  v86 = *MEMORY[0x277D85DE8];
  ackCopy = ack;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager receivedAck:data:dataSize:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPipeManager receivedAck:data:dataSize:];
  }

  pipeDataTransfer = [ackCopy pipeDataTransfer];
  v10 = pipeDataTransfer;
  if (pipeDataTransfer)
  {
    sizeCopy = size;
    v11 = pipeDataTransfer;
    pipe = [ackCopy pipe];
    peer = [pipe peer];
    identifier = [peer identifier];

    endpointsDict = [(WPDPipeManager *)self endpointsDict];
    [ackCopy pipe];
    v17 = v16 = self;
    name = [v17 name];
    v19 = [endpointsDict objectForKeyedSubscript:name];
    clientUUID = [v19 clientUUID];

    v66 = v16;
    server = [(WPDManager *)v16 server];
    v68 = clientUUID;
    v22 = [server getClientForUUID:clientUUID];

    if (!v22)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedAck:data:dataSize:];
      }

      v27 = identifier;
      v42 = WiProxLog;
      v10 = v11;
      v43 = v68;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        v44 = v42;
        pipe2 = [ackCopy pipe];
        name2 = [pipe2 name];
        *buf = 138412802;
        *v83 = v68;
        *&v83[8] = 2112;
        v84 = v27;
        *v85 = 2112;
        *&v85[2] = name2;
        _os_log_error_impl(&dword_272965000, v44, OS_LOG_TYPE_ERROR, "WPPM: receivedAck: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
      }

      goto LABEL_59;
    }

    if (sizeCopy < 5)
    {
      ackData = [ackCopy ackData];
      v27 = identifier;
      v10 = v11;
      if (!ackData)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedAck:data:dataSize:];
        }

        v47 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272965000, v47, OS_LOG_TYPE_DEFAULT, "WPPM: init ackData object", buf, 2u);
        }

        ackData = [[PipeDataTransfer alloc] initPipeDataTransferForPeer:identifier];
        [ackCopy setAckData:ackData];
      }

      rxCurrentReceivedData = [ackData rxCurrentReceivedData];
      [rxCurrentReceivedData appendBytes:data length:sizeCopy];

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedAck:data:dataSize:];
      }

      v49 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v50 = v49;
        rxCurrentReceivedData2 = [ackData rxCurrentReceivedData];
        *buf = 138412290;
        *v83 = rxCurrentReceivedData2;
        _os_log_impl(&dword_272965000, v50, OS_LOG_TYPE_DEFAULT, "WPPM: Currenlty received ack data: %@", buf, 0xCu);
      }

      rxCurrentReceivedData3 = [ackData rxCurrentReceivedData];
      v53 = [rxCurrentReceivedData3 length];

      if (v53 < 5)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedAck:data:dataSize:];
        }

        v43 = v68;
        v58 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_272965000, v58, OS_LOG_TYPE_DEFAULT, "WPPM: Still have not received full ack packet.", buf, 2u);
        }

        [ackData setRxWaitForMoreData:1];
      }

      else
      {
        rxCurrentReceivedData4 = [ackData rxCurrentReceivedData];
        bytes = [rxCurrentReceivedData4 bytes];
        rxCurrentReceivedData5 = [ackData rxCurrentReceivedData];
        -[WPDPipeManager receivedAck:data:dataSize:](v66, "receivedAck:data:dataSize:", ackCopy, bytes, [rxCurrentReceivedData5 length]);

        v43 = v68;
      }
    }

    else
    {
      v23 = *data;
      v24 = data[1];
      v25 = *(data + 1);
      v65 = data[4];
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager receivedAck:data:dataSize:];
      }

      v26 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109888;
        *v83 = v23;
        *&v83[4] = 1024;
        *&v83[6] = v24;
        LOWORD(v84) = 1024;
        *(&v84 + 2) = v25;
        HIWORD(v84) = 1024;
        *v85 = v65;
        _os_log_debug_impl(&dword_272965000, v26, OS_LOG_TYPE_DEBUG, "WPPM: receivedAck: of len %d, seqNum %d, pLen %d, status %d", buf, 0x1Au);
      }

      v10 = v11;
      if (v24 != [v11 txSeqNum])
      {
        v27 = identifier;
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedAck:data:dataSize:];
        }

        v10 = v11;
        v57 = WiProxLog;
        v43 = v68;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager receivedAck:v57 data:? dataSize:?];
        }

        goto LABEL_59;
      }

      v27 = identifier;
      if (v25 != [v11 txTotalLenToSend])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedAck:data:dataSize:];
        }

        v10 = v11;
        v59 = WiProxLog;
        v43 = v68;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager receivedAck:v59 data:? dataSize:?];
        }

        goto LABEL_59;
      }

      v28 = MEMORY[0x277CBEA90];
      txData = [v11 txData];
      ackData = [v28 dataWithData:txData];

      if (v65)
      {
        v31 = MEMORY[0x277CCA9B8];
        v80 = *MEMORY[0x277CCA450];
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to send data over LE Pipe %d", v65];
        v81 = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v34 = [v31 errorWithDomain:@"WPErrorDomain" code:26 userInfo:v33];

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedAck:data:dataSize:];
        }

        v35 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager receivedAck:v35 data:? dataSize:?];
        }

        queue = [(WPDPipeManager *)v66 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __44__WPDPipeManager_receivedAck_data_dataSize___block_invoke_665;
        block[3] = &unk_279E59F38;
        v70 = v22;
        v71 = ackData;
        v37 = ackCopy;
        v72 = v37;
        v38 = identifier;
        v73 = v38;
        v74 = v34;
        v39 = v34;
        dispatch_async(queue, block);

        pipe3 = [v37 pipe];
        name3 = [pipe3 name];
        [(WPDPipeManager *)v66 invalidatePipeInfo:name3 forPeer:v38];
      }

      else
      {
        queue2 = [(WPDPipeManager *)v66 queue];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __44__WPDPipeManager_receivedAck_data_dataSize___block_invoke_659;
        v75[3] = &unk_279E59E98;
        v76 = v22;
        v77 = ackData;
        v61 = ackCopy;
        v78 = v61;
        v79 = identifier;
        dispatch_async(queue2, v75);

        if (sizeCopy != 5)
        {
          [(WPDPipeManager *)v66 handleIncomingPipeData:v61 data:data + 5 dataSize:sizeCopy - 5];
        }

        v39 = v76;
      }

      v43 = v68;

      [v10 resetTxTransfer];
      ackData2 = [ackCopy ackData];

      if (ackData2)
      {
        ackData3 = [ackCopy ackData];
        [ackData3 resetRxTransfer];
      }
    }

LABEL_59:
    goto LABEL_60;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager receivedAck:data:dataSize:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDPipeManager receivedAck:data:dataSize:];
  }

LABEL_60:

  v64 = *MEMORY[0x277D85DE8];
}

void __44__WPDPipeManager_receivedAck_data_dataSize___block_invoke_659(uint64_t a1)
{
  v6 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v6 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pipe];
  v5 = [v4 name];
  [v2 sentData:v3 toEndpoint:v5 forPeripheral:*(a1 + 56) withError:0];
}

void __44__WPDPipeManager_receivedAck_data_dataSize___block_invoke_665(uint64_t a1)
{
  v6 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v6 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pipe];
  v5 = [v4 name];
  [v2 sentData:v3 toEndpoint:v5 forPeripheral:*(a1 + 56) withError:*(a1 + 64)];
}

- (void)receivedError:(id)error data:(char *)data dataSize:(int64_t)size
{
  v53 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (size >= 2)
  {
    v9 = data[1];
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager receivedError:data:dataSize:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDPipeManager receivedError:v9 data:size dataSize:v10];
    }

    if (v9 == 6)
    {
      pipeDataTransfer = [errorCopy pipeDataTransfer];
      if (pipeDataTransfer)
      {
        v12 = pipeDataTransfer;
        pipe = [errorCopy pipe];
        peer = [pipe peer];
        identifier = [peer identifier];

        endpointsDict = [(WPDPipeManager *)self endpointsDict];
        pipe2 = [errorCopy pipe];
        name = [pipe2 name];
        v19 = [endpointsDict objectForKeyedSubscript:name];
        clientUUID = [v19 clientUUID];

        server = [(WPDManager *)self server];
        v22 = [server getClientForUUID:clientUUID];

        if (v22)
        {
          v23 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA450];
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to send data over LE Pipe %d, remote device is not active", 6];
          v46 = v24;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v26 = [v23 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v25];

          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager receivedError:data:dataSize:];
          }

          v27 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            [WPDPipeManager receivedError:v27 data:? dataSize:?];
          }

          v28 = MEMORY[0x277CBEA90];
          pipeDataTransfer2 = [errorCopy pipeDataTransfer];
          txData = [pipeDataTransfer2 txData];
          v31 = [v28 dataWithData:txData];

          queue = [(WPDPipeManager *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__WPDPipeManager_receivedError_data_dataSize___block_invoke_689;
          block[3] = &unk_279E59E98;
          v41 = v22;
          v42 = v31;
          v43 = errorCopy;
          v44 = v26;
          v33 = v26;
          v34 = v31;
          dispatch_async(queue, block);
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager receivedError:data:dataSize:];
          }

          v35 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            v37 = v35;
            pipe3 = [errorCopy pipe];
            name2 = [pipe3 name];
            *buf = 138412802;
            v48 = clientUUID;
            v49 = 2112;
            v50 = identifier;
            v51 = 2112;
            v52 = name2;
            _os_log_error_impl(&dword_272965000, v37, OS_LOG_TYPE_ERROR, "WPPM: receivedError: Client %@ not found for peer %@ and Endpoint %@", buf, 0x20u);
          }
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager receivedError:data:dataSize:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager receivedError:data:dataSize:];
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __46__WPDPipeManager_receivedError_data_dataSize___block_invoke_689(uint64_t a1)
{
  v9 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v9 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pipe];
  v5 = [v4 name];
  v6 = [*(a1 + 48) pipe];
  v7 = [v6 peer];
  v8 = [v7 identifier];
  [v2 sentData:v3 toEndpoint:v5 forPeripheral:v8 withError:*(a1 + 56)];
}

- (void)receivedConnectStatus:(id)status data:(char *)data dataSize:(int64_t)size
{
  v42 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (size >= 2)
  {
    v9 = data[1];
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager receivedConnectStatus:data:dataSize:];
    }

    v10 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v39 = v9;
      v40 = 2048;
      sizeCopy = size;
      _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "WPPM: receivedConnectStatus: status: %d, dataSize: %ld", buf, 0x12u);
    }

    if (v9)
    {
      if (v9 == 1)
      {
        pipe = [statusCopy pipe];
        peer = [pipe peer];
        identifier = [peer identifier];

        endpointsDict = [(WPDPipeManager *)self endpointsDict];
        pipe2 = [statusCopy pipe];
        name = [pipe2 name];
        v17 = [endpointsDict objectForKeyedSubscript:name];
        clientUUID = [v17 clientUUID];

        server = [(WPDManager *)self server];
        v20 = [server getClientForUUID:clientUUID];

        if (v20)
        {
          [statusCopy setUseConnectStatusPDU:1];
          [statusCopy setPipeDidConnectSent:1];
          [v20 connectedDeviceOverLEPipe:identifier];
        }
      }

      if (size != 2)
      {
        [(WPDPipeManager *)self handleIncomingPipeData:statusCopy data:data + 2 dataSize:size - 2];
      }
    }

    else
    {
      pipe3 = [statusCopy pipe];
      peer2 = [pipe3 peer];
      identifier2 = [peer2 identifier];

      endpointsDict2 = [(WPDPipeManager *)self endpointsDict];
      pipe4 = [statusCopy pipe];
      name2 = [pipe4 name];
      v27 = [endpointsDict2 objectForKeyedSubscript:name2];
      clientUUID2 = [v27 clientUUID];

      server2 = [(WPDManager *)self server];
      v30 = [server2 getClientForUUID:clientUUID2];

      if (v30)
      {
        v31 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote peer %@ disconnected the link", identifier2];
        v37 = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v34 = [v31 errorWithDomain:@"WPErrorDomain" code:7 userInfo:v33];

        [v30 disconnectedDeviceOverLEPipe:identifier2 withError:v34];
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)sendAck:(id)ack errorCode:(unsigned __int8)code
{
  ackCopy = ack;
  pipeDataTransfer = [ackCopy pipeDataTransfer];

  if (pipeDataTransfer)
  {
    pipe = [ackCopy pipe];
    output = [pipe output];

    v23 = 1027;
    pipeDataTransfer2 = [ackCopy pipeDataTransfer];
    rxSeqNum = [pipeDataTransfer2 rxSeqNum];

    pipeDataTransfer3 = [ackCopy pipeDataTransfer];
    rxTotalLenToReceive = [pipeDataTransfer3 rxTotalLenToReceive];

    v25 = rxTotalLenToReceive;
    codeCopy = code;
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v23 length:6];
    v14 = [(WPDPipeManager *)self writeDataToPipe:v13 pipe:ackCopy];

    if (v14 == 6)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendAck:errorCode:];
      }

      v15 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [(WPDPipeManager *)v15 sendAck:v16 errorCode:v17, v18, v19, v20, v21, v22];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendAck:errorCode:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDPipeManager sendAck:errorCode:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendAck:errorCode:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDPipeManager sendAck:errorCode:];
    }
  }
}

- (BOOL)sendVersionInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v10 = 1281;
  v11 = 1;
  v12 = 1;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:7];
  v6 = [(WPDPipeManager *)self writeDataToPipe:v5 pipe:infoCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager sendVersionInfo:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPPM: sendVersionInfo: bytes written %ld (expected 7) data %@", buf, 0x16u);
  }

  if (v6 == 7)
  {
    [infoCopy setVersionInfoSent:1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 == 7;
}

- (void)sendErrorResponse:(id)response errorCode:(unsigned __int8)code
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  pipe = [responseCopy pipe];
  output = [pipe output];

  v16 = 260;
  codeCopy = code;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v16 length:3];
  v10 = [(WPDPipeManager *)self writeDataToPipe:v9 pipe:responseCopy];

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager sendErrorResponse:errorCode:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    streamStatus = [output streamStatus];
    streamError = [output streamError];
    *buf = 134218498;
    v19 = v10;
    v20 = 2048;
    v21 = streamStatus;
    v22 = 2112;
    v23 = streamError;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "WPPM: sendErrorResponse: bytes written %ld (expected 3) with status %ld error %@", buf, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendConnectStatus:(id)status connectStatus:(unsigned __int8)connectStatus
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 261;
  connectStatusCopy = connectStatus;
  v5 = MEMORY[0x277CBEA90];
  statusCopy = status;
  v7 = [v5 dataWithBytes:&v11 length:3];
  v8 = [(WPDPipeManager *)self writeDataToPipe:v7 pipe:statusCopy];

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager sendConnectStatus:connectStatus:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v8;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "WPPM: sendConnectStatus: bytes written %ld (expected 3)", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendRemainingData:(id)data wpClient:(id)client
{
  v49 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  clientCopy = client;
  pipeDataTransfer = [dataCopy pipeDataTransfer];
  v9 = pipeDataTransfer;
  if (pipeDataTransfer)
  {
    if ([pipeDataTransfer txDataLeftToSend])
    {
      txData = [v9 txData];
      v11 = [txData length];

      txDataLeftToSend = [v9 txDataLeftToSend];
      v13 = v11 - txDataLeftToSend;
      txData2 = [v9 txData];
      v15 = [txData2 subdataWithRange:{v11 - txDataLeftToSend, txDataLeftToSend}];

      v36 = v15;
      v16 = [(WPDPipeManager *)self writeDataToPipe:v15 pipe:dataCopy];
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendRemainingData:wpClient:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        *buf = 134218752;
        v42 = v13;
        v43 = 2048;
        v44 = v11;
        v45 = 2048;
        v46 = [v15 length];
        v47 = 2048;
        v48 = v16;
        _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPPM: sendRemainingData: starting at %lu total len %lu len %lu, bytes written %ld", buf, 0x2Au);
      }

      if (v16 < 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager sendRemainingData:wpClient:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager sendRemainingData:wpClient:];
        }

        v24 = MEMORY[0x277CBEA90];
        txData3 = [v9 txData];
        v26 = [v24 dataWithData:txData3];

        queue = [(WPDPipeManager *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__WPDPipeManager_sendRemainingData_wpClient___block_invoke_723;
        block[3] = &unk_279E59A48;
        v38 = clientCopy;
        v39 = v26;
        v28 = dataCopy;
        v40 = v28;
        v29 = v26;
        dispatch_async(queue, block);

        pipe = [v28 pipe];
        name = [pipe name];
        pipe2 = [v28 pipe];
        peer = [pipe2 peer];
        identifier = [peer identifier];
        [(WPDPipeManager *)self invalidatePipeInfo:name forPeer:identifier];
      }

      else
      {
        [v9 setTxDataLeftToSend:{objc_msgSend(v9, "txDataLeftToSend") - v16}];
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager sendRemainingData:wpClient:];
        }

        v19 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          txDataLeftToSend2 = [v9 txDataLeftToSend];
          *buf = 134217984;
          v42 = txDataLeftToSend2;
          _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "WPPM: sendRemainingData: txLeftToSend %lu", buf, 0xCu);
        }
      }

      goto LABEL_27;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendRemainingData:wpClient:];
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "WPPM: sendRemainingData:  All data sent";
      goto LABEL_20;
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendRemainingData:wpClient:];
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "WPPM: sendRemainingData: no pipe data found";
LABEL_20:
      _os_log_impl(&dword_272965000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    }
  }

LABEL_27:

  v35 = *MEMORY[0x277D85DE8];
}

void __45__WPDPipeManager_sendRemainingData_wpClient___block_invoke_723(uint64_t a1)
{
  v12 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v12 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) pipe];
  v5 = [v4 name];
  v6 = [*(a1 + 48) pipe];
  v7 = [v6 peer];
  v8 = [v7 identifier];
  v9 = [*(a1 + 48) pipe];
  v10 = [v9 output];
  v11 = [v10 streamError];
  [v2 sentData:v3 toEndpoint:v5 forPeripheral:v8 withError:v11];
}

- (int64_t)writeDataToPipe:(id)pipe pipe:(id)a4
{
  __n[8] = *MEMORY[0x277D85DE8];
  pipeCopy = pipe;
  v6 = a4;
  pipe = [v6 pipe];
  v8 = [pipeCopy length];
  v9 = 0;
  if (!pipeCopy)
  {
    goto LABEL_36;
  }

  v10 = v8;
  if (!v8)
  {
    goto LABEL_36;
  }

  if (![pipe channel])
  {
    output = [pipe output];
    if ([output streamStatus] == 6)
    {
    }

    else
    {
      output2 = [pipe output];
      streamStatus = [output2 streamStatus];

      if (streamStatus != 7)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager writeDataToPipe:pipe:];
        }

        v26 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          name = [pipe name];
          LODWORD(__n[0]) = 138412290;
          *(__n + 4) = name;
          _os_log_impl(&dword_272965000, v27, OS_LOG_TYPE_DEFAULT, "WPPM: writeDataToPipe: %@ send data over stream", __n, 0xCu);
        }

        output3 = [pipe output];
        v9 = [output3 write:objc_msgSend(pipeCopy maxLength:{"bytes"), v10}];

        if (v9 == v10)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager writeDataToPipe:pipe:];
          }

          v30 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            peer = [pipe peer];
            identifier = [peer identifier];
            LODWORD(__n[0]) = 134218498;
            *(__n + 4) = v10;
            WORD2(__n[1]) = 2048;
            *(&__n[1] + 6) = v10;
            HIWORD(__n[2]) = 2112;
            __n[3] = identifier;
            _os_log_impl(&dword_272965000, v31, OS_LOG_TYPE_DEFAULT, "WPPM: writeDataToPipe: bytes written %ld (expected %lu) to peer %@", __n, 0x20u);
          }

          v9 = v10;
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager writeDataToPipe:pipe:];
          }

          v34 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            loga = v34;
            peer2 = [pipe peer];
            identifier2 = [peer2 identifier];
            output4 = [pipe output];
            v37 = v6;
            streamStatus2 = [output4 streamStatus];
            output5 = [pipe output];
            streamError = [output5 streamError];
            LODWORD(__n[0]) = 134219010;
            *(__n + 4) = v9;
            WORD2(__n[1]) = 2048;
            *(&__n[1] + 6) = v10;
            HIWORD(__n[2]) = 2112;
            __n[3] = identifier2;
            LOWORD(__n[4]) = 2048;
            *(&__n[4] + 2) = streamStatus2;
            v6 = v37;
            WORD1(__n[5]) = 2112;
            *(&__n[5] + 4) = streamError;
            _os_log_impl(&dword_272965000, loga, OS_LOG_TYPE_DEFAULT, "WPPM: writeDataToPipe: bytes written %ld (expected %lu) to peer %@ status %lu with error %@", __n, 0x34u);
          }
        }

        goto LABEL_36;
      }
    }

    v22 = pipe;
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager writeDataToPipe:pipe:];
    }

    v23 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v41 = v23;
      pipe = v22;
      [WPDPipeManager writeDataToPipe:v41 pipe:?];
      v9 = 0;
    }

    else
    {
      v9 = 0;
      pipe = v22;
    }

    goto LABEL_36;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager writeDataToPipe:pipe:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDPipeManager writeDataToPipe:pipe:];
  }

  [pipe channel];
  os_channel_ring_id();
  log = pipe;
  [pipe channel];
  os_channel_tx_ring();
  v9 = 0;
  *&v11 = 67109376;
  v42 = v11;
  v12 = v10;
  while (1)
  {
    memset(__n, 0, 64);
    if (!os_channel_get_next_slot())
    {
      break;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager writeDataToPipe:pipe:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = v42;
      *v47 = WORD1(__n[0]);
      *&v47[4] = 2048;
      *&v47[6] = v12;
      _os_log_debug_impl(&dword_272965000, v13, OS_LOG_TYPE_DEBUG, "WPPM: writeDataToPipe: slot len: %d, remaining %ld", buf, 0x12u);
    }

    v14 = WORD1(__n[0]);
    if (v12 < WORD1(__n[0]))
    {
      v14 = v12;
    }

    WORD1(__n[0]) = v14;
    v15 = __n[2];
    bytes = [pipeCopy bytes];
    memcpy(v15, (bytes + v9), WORD1(__n[0]));
    os_channel_set_slot_properties();
    v17 = WORD1(__n[0]);
    v9 += WORD1(__n[0]);
    if (WORD1(__n[0]))
    {
      v12 = v10 - v9;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager writeDataToPipe:pipe:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *v47 = v17;
      *&v47[8] = 2048;
      *&v47[10] = v9;
      v48 = 2048;
      v49 = v12;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPPM: writeDataToPipe: send data over skywalk written %ld total %ld remaining %ld", buf, 0x20u);
    }

    os_channel_advance_slot();
    if (v10 <= v9)
    {
      goto LABEL_30;
    }
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager writeDataToPipe:pipe:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDPipeManager writeDataToPipe:pipe:];
  }

LABEL_30:
  pipe = log;
  [log channel];
  os_channel_sync();
LABEL_36:

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)pipeManagerState:(int64_t)state
{
  if (state > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_279E59FA8[state];
  }
}

- (void)update
{
  v25 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager update];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 134217984;
    state = [(WPDManager *)self state];
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "WPPM: PipeManager state: %ld", buf, 0xCu);
  }

  if ([(WPDManager *)self state]<= 2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    allKeys = [peerPipesDict allKeys];

    v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          peerPipesDict2 = [(WPDPipeManager *)self peerPipesDict];
          v13 = [peerPipesDict2 objectForKey:v11];

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __24__WPDPipeManager_update__block_invoke_770;
          v17[3] = &unk_279E59F60;
          v17[4] = self;
          [v13 enumerateObjectsUsingBlock:v17];
        }

        v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if ([(WPDManager *)self state]<= 1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager update];
      }

      v14 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "WPPM: scalablePipeManagerDidUpdateState: remove all endpointsDict because bluetooth is not ON.", buf, 2u);
      }

      endpointsDict = [(WPDPipeManager *)self endpointsDict];
      [endpointsDict removeAllObjects];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __24__WPDPipeManager_update__block_invoke_770(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 pipeManager];
  v4 = [v3 pipe];

  [v2 scalablePipeManager:v5 pipeDidDisconnect:v4 error:0];
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager scalablePipeManager:didRegisterEndpoint:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = endpointCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "WPPM: didRegisterEndpoint %@ (error %@)", &v14, 0x16u);
  }

  if (errorCopy)
  {
    endpointsDict = [(WPDPipeManager *)self endpointsDict];
    [endpointsDict removeObjectForKey:endpointCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  v11 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  endpointCopy = endpoint;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager scalablePipeManager:didUnregisterEndpoint:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = endpointCopy;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPPM: didUnregisterEndpoint %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  v73 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  connectCopy = connect;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager scalablePipeManager:pipeDidConnect:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    name = [connectCopy name];
    peer = [connectCopy peer];
    identifier = [peer identifier];
    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    connectionInitiators = [(WPDPipeManager *)self connectionInitiators];
    *buf = 138413058;
    v67 = name;
    v68 = 2112;
    v69 = identifier;
    v70 = 2112;
    *v71 = peerPipesDict;
    *&v71[8] = 2112;
    v72 = connectionInitiators;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPPM: pipeDidConnect: %@ %@ peer dict %@, initiators: %@", buf, 0x2Au);
  }

  name2 = [connectCopy name];
  v15 = [name2 isEqualToString:@"nearby"];

  peer2 = [connectCopy peer];
  identifier2 = [peer2 identifier];

  peerPipesDict2 = [(WPDPipeManager *)self peerPipesDict];
  v19 = [peerPipesDict2 objectForKeyedSubscript:identifier2];

  if (v19)
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_779;
    v62[3] = &unk_279E59F88;
    v63 = connectCopy;
    v64 = identifier2;
    v20 = v19;
    v65 = v20;
    [v20 enumerateObjectsUsingBlock:v62];
  }

  else
  {
    v20 = [MEMORY[0x277CBEB58] set];
  }

  v21 = objc_alloc_init(PipeInfo);
  [(PipeInfo *)v21 setPipe:connectCopy];
  [(PipeInfo *)v21 setNewProtocol:v15 ^ 1u];
  [(PipeInfo *)v21 setLocalVersion:1];
  [(PipeInfo *)v21 setLocalSupportedFeatures:1];
  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  name3 = [connectCopy name];
  v24 = [endpointsDict objectForKeyedSubscript:name3];
  clientUUID = [v24 clientUUID];

  v26 = clientUUID;
  if (clientUUID)
  {
    connectionInitiators2 = [(WPDPipeManager *)self connectionInitiators];
    v28 = [connectionInitiators2 objectForKeyedSubscript:clientUUID];

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager scalablePipeManager:pipeDidConnect:];
    }

    v29 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v67 = v28;
      v68 = 2112;
      v69 = clientUUID;
      _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_DEFAULT, "WPPM: peersSet: %@ for clientUUID: %@", buf, 0x16u);
    }

    if ([v28 containsObject:identifier2])
    {
      [(PipeInfo *)v21 setConnectionInitiator:1];
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager scalablePipeManager:pipeDidConnect:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "WPPM: set connection initiator", buf, 2u);
      }
    }
  }

  if ([connectCopy channel])
  {
    v58 = clientUUID;
    [connectCopy channel];
    fd = os_channel_get_fd();
    queue = [(WPDPipeManager *)self queue];
    v33 = dispatch_source_create(MEMORY[0x277D85D28], fd, 0, queue);
    [(PipeInfo *)v21 setPipeReadSource:v33];

    pipeReadSource = [(PipeInfo *)v21 pipeReadSource];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_789;
    handler[3] = &unk_279E590C8;
    handler[4] = self;
    v35 = connectCopy;
    v61 = v35;
    dispatch_source_set_event_handler(pipeReadSource, handler);

    [v20 addObject:v21];
    peerPipesDict3 = [(WPDPipeManager *)self peerPipesDict];
    [peerPipesDict3 setObject:v20 forKeyedSubscript:identifier2];

    pipeReadSource2 = [(PipeInfo *)v21 pipeReadSource];
    dispatch_resume(pipeReadSource2);

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager scalablePipeManager:pipeDidConnect:];
    }

    v38 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      pipeReadSource3 = [(PipeInfo *)v21 pipeReadSource];
      channel = [v35 channel];
      reliablePipe = [v35 reliablePipe];
      *buf = 134219008;
      v67 = pipeReadSource3;
      v68 = 2048;
      v69 = channel;
      v70 = 1024;
      *v71 = fd;
      *&v71[4] = 1024;
      *&v71[6] = fd;
      LOWORD(v72) = 1024;
      *(&v72 + 2) = reliablePipe;
      _os_log_impl(&dword_272965000, v39, OS_LOG_TYPE_DEFAULT, "WPPM: Created pipe read %p for skywalk channel %p fd 0x%x(%d) isreliable? %d", buf, 0x28u);
    }

    [(WPDPipeManager *)self sendChannelData:v21];

    v26 = v58;
  }

  else
  {
    v43 = voucher_copy();
    [(PipeInfo *)v21 setVoucher:v43];

    input = [connectCopy input];
    [input setDelegate:self];

    output = [connectCopy output];
    [output setDelegate:self];

    input2 = [connectCopy input];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v48 = *MEMORY[0x277CBE640];
    [input2 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    output2 = [connectCopy output];
    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    [output2 scheduleInRunLoop:currentRunLoop2 forMode:v48];

    input3 = [connectCopy input];
    [input3 open];

    output3 = [connectCopy output];
    [output3 open];

    [(PipeInfo *)v21 applyQOSOverride];
    [v20 addObject:v21];
    peerPipesDict4 = [(WPDPipeManager *)self peerPipesDict];
    [peerPipesDict4 setObject:v20 forKeyedSubscript:identifier2];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager scalablePipeManager:pipeDidConnect:];
  }

  v54 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v55 = v54;
    peerPipesDict5 = [(WPDPipeManager *)self peerPipesDict];
    *buf = 138412546;
    v67 = peerPipesDict5;
    v68 = 2112;
    v69 = identifier2;
    _os_log_impl(&dword_272965000, v55, OS_LOG_TYPE_DEFAULT, "WPPM: Pipes after pipeDidConnect %@ to peer %@", buf, 0x16u);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_779(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 pipe];
  v6 = [v5 name];
  v7 = [*(a1 + 32) name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    if (WPLogInitOnce != -1)
    {
      __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_779_cold_1();
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_779_cold_2((a1 + 32), v9, a1);
    }

    *a3 = 1;
  }
}

- (void)sendChannelData:(id)data
{
  dataCopy = data;
  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  pipe = [dataCopy pipe];
  name = [pipe name];
  v8 = [endpointsDict objectForKeyedSubscript:name];
  clientUUID = [v8 clientUUID];

  server = [(WPDManager *)self server];
  v11 = [server getClientForUUID:clientUUID];

  if ([dataCopy newProtocol])
  {
    if (([dataCopy versionInfoSent] & 1) == 0)
    {
      [(WPDPipeManager *)self sendVersionInfo:dataCopy];
      goto LABEL_31;
    }

    if ([dataCopy versionInfoReceived])
    {
      if (![dataCopy versionInfoSent] || !objc_msgSend(dataCopy, "versionInfoReceived") || (objc_msgSend(dataCopy, "pipeDidConnectSent") & 1) != 0 || (objc_msgSend(dataCopy, "useConnectStatusPDU") & 1) != 0)
      {
        [(WPDPipeManager *)self sendRemainingData:dataCopy wpClient:v11];
        goto LABEL_31;
      }

      if (v11)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager sendChannelData:];
        }

        v13 = WiProxLog;
        if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v28 = 0;
        v14 = &v28;
LABEL_19:
        _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "WPPM: sendChannelData: send pipe connect notification", v14, 2u);
LABEL_20:
        [dataCopy setPipeDidConnectSent:{1, v26}];
        pipe2 = [dataCopy pipe];
        peer = [pipe2 peer];
        identifier = [peer identifier];
        [v11 connectedDeviceOverLEPipe:identifier];

        goto LABEL_31;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendChannelData:];
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDPipeManager *)clientUUID sendChannelData:v25, dataCopy];
      }

      goto LABEL_30;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendChannelData:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "WPPM: sendChannelData: wait to receive version info", v29, 2u);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager sendChannelData:];
    }

    v12 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "WPPM: sendChannelData: using old protocol, send didConnect if not sent already", buf, 2u);
    }

    if (([dataCopy pipeDidConnectSent] & 1) == 0)
    {
      if (v11)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager sendChannelData:];
        }

        v13 = WiProxLog;
        if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        LOWORD(v26) = 0;
        v14 = &v26;
        goto LABEL_19;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager sendChannelData:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDPipeManager *)clientUUID sendChannelData:v19, dataCopy];
      }

LABEL_30:
      pipe3 = [dataCopy pipe];
      name2 = [pipe3 name];
      pipe4 = [dataCopy pipe];
      peer2 = [pipe4 peer];
      identifier2 = [peer2 identifier];
      [(WPDPipeManager *)self invalidatePipeInfo:name2 forPeer:identifier2];
    }
  }

LABEL_31:
}

- (void)channelHasData:(id)data
{
  v59 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
  peer = [dataCopy peer];
  identifier = [peer identifier];
  v35 = [peerPipesDict objectForKeyedSubscript:identifier];

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__5;
  v49 = __Block_byref_object_dispose__5;
  v50 = 0;
  if (v35)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __33__WPDPipeManager_channelHasData___block_invoke_815;
    v42[3] = &unk_279E59EC0;
    v7 = dataCopy;
    v43 = v7;
    v44 = &v45;
    [v35 enumerateObjectsUsingBlock:v42];

    if (v46[5])
    {
      [v7 channel];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      os_channel_ring_id();
      os_channel_rx_ring();
      if (os_channel_get_next_slot())
      {
        *&v8 = 138412290;
        v34 = v8;
        do
        {
          ++channelHasData__rxCount;
          v9 = [MEMORY[0x277CBEA90] dataWithBytes:v56 length:{WORD1(v55), v34}];
          if (WPLogInitOnce != -1)
          {
            [WPDPipeManager channelHasData:];
          }

          v10 = WiProxLog;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v25 = [v9 length];
            name = [v7 name];
            *buf = 134218242;
            v52 = v25;
            v53 = 2112;
            v54 = name;
            _os_log_debug_impl(&dword_272965000, v10, OS_LOG_TYPE_DEBUG, "WPPM: channelHasData Received %lu bytes over skywalk %@", buf, 0x16u);
          }

          if ([v46[5] newProtocol])
          {
            v11 = v46[5];
            v12 = v9;
            -[WPDPipeManager handleIncomingPipeData:data:dataSize:](self, "handleIncomingPipeData:data:dataSize:", v11, [v9 bytes], objc_msgSend(v9, "length"));
          }

          else
          {
            endpointsDict = [(WPDPipeManager *)self endpointsDict];
            name2 = [v7 name];
            v15 = [endpointsDict objectForKeyedSubscript:name2];
            clientUUID = [v15 clientUUID];

            peer2 = [v7 peer];
            identifier2 = [peer2 identifier];

            if (clientUUID && identifier2)
            {
              server = [(WPDManager *)self server];
              v20 = [server getClientForUUID:clientUUID];

              if (v20)
              {
                queue = [(WPDPipeManager *)self queue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __33__WPDPipeManager_channelHasData___block_invoke_821;
                block[3] = &unk_279E59E98;
                v38 = v20;
                v39 = v9;
                v40 = v7;
                v41 = identifier2;
                dispatch_async(queue, block);
              }

              else
              {
                if (WPLogInitOnce != -1)
                {
                  [WPDPipeManager channelHasData:];
                }

                v23 = WiProxLog;
                if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = v34;
                  v52 = clientUUID;
                  _os_log_error_impl(&dword_272965000, v23, OS_LOG_TYPE_ERROR, "WPPM: channelHasData failure: client %@ is not found", buf, 0xCu);
                }
              }
            }

            else
            {
              if (WPLogInitOnce != -1)
              {
                [WPDPipeManager channelHasData:];
              }

              v22 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v52 = clientUUID;
                v53 = 2112;
                v54 = identifier2;
                _os_log_error_impl(&dword_272965000, v22, OS_LOG_TYPE_ERROR, "WPPM: channelHasData failure: clientUUID %@ or identfier %@ is invalid", buf, 0x16u);
              }
            }
          }

          next_slot = os_channel_get_next_slot();
        }

        while (next_slot);
      }

      os_channel_advance_slot();
      if (channelHasData__rxCount > 31 || os_channel_available_slot_count() <= 1)
      {
        channelHasData__rxCount = 0;
        os_channel_sync();
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager channelHasData:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        peer3 = [v7 peer];
        identifier3 = [peer3 identifier];
        [(WPDPipeManager *)identifier3 channelHasData:v30, peer3];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager channelHasData:];
    }

    v27 = WiProxLog;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      peer4 = [dataCopy peer];
      identifier4 = [peer4 identifier];
      [(WPDPipeManager *)identifier4 channelHasData:v27, peer4];
    }
  }

  _Block_object_dispose(&v45, 8);

  v33 = *MEMORY[0x277D85DE8];
}

void __33__WPDPipeManager_channelHasData___block_invoke_815(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 pipe];
  v7 = [v6 name];
  v8 = [*(a1 + 32) name];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __33__WPDPipeManager_channelHasData___block_invoke_821(uint64_t a1)
{
  v5 = [*(a1 + 32) xpcConnectionForClient];
  v2 = [v5 remoteObjectProxy];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) name];
  [v2 receivedData:v3 fromEndpoint:v4 forPeripheral:*(a1 + 56)];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDPipeManager scalablePipeManager:pipeDidDisconnect:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    peer = [disconnectCopy peer];
    identifier = [peer identifier];
    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    connectionInitiators = [(WPDPipeManager *)self connectionInitiators];
    v38 = 138413314;
    v39 = identifier;
    v40 = 2112;
    v41 = disconnectCopy;
    v42 = 2112;
    v43 = errorCopy;
    v44 = 2112;
    v45 = peerPipesDict;
    v46 = 2112;
    v47 = connectionInitiators;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "WPPM: pipeDidDisconnect %@ %@ (error %@), pipes %@, set: %@", &v38, 0x34u);
  }

  name = [disconnectCopy name];
  peer2 = [disconnectCopy peer];
  identifier2 = [peer2 identifier];
  [(WPDPipeManager *)self invalidatePipeInfo:name forPeer:identifier2];

  endpointsDict = [(WPDPipeManager *)self endpointsDict];
  name2 = [disconnectCopy name];
  v22 = [endpointsDict objectForKeyedSubscript:name2];
  clientUUID = [v22 clientUUID];

  if (clientUUID)
  {
    connectionInitiators2 = [(WPDPipeManager *)self connectionInitiators];
    v25 = [connectionInitiators2 objectForKeyedSubscript:clientUUID];

    peer3 = [disconnectCopy peer];
    identifier3 = [peer3 identifier];
    v28 = [v25 containsObject:identifier3];

    if (v28)
    {
      peer4 = [disconnectCopy peer];
      identifier4 = [peer4 identifier];
      [v25 removeObject:identifier4];

      connectionInitiators3 = [(WPDPipeManager *)self connectionInitiators];
      [connectionInitiators3 setObject:v25 forKeyedSubscript:clientUUID];
    }

    server = [(WPDManager *)self server];
    v33 = [server getClientForUUID:clientUUID];

    if (v33)
    {
      peer5 = [disconnectCopy peer];
      identifier5 = [peer5 identifier];
      [v33 disconnectedDeviceOverLEPipe:identifier5 withError:errorCopy];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager scalablePipeManager:pipeDidDisconnect:error:];
      }

      v36 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDPipeManager scalablePipeManager:clientUUID pipeDidDisconnect:v36 error:disconnectCopy];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPipeManager scalablePipeManager:pipeDidDisconnect:error:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDPipeManager scalablePipeManager:pipeDidDisconnect:error:];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePipeInfo:(id)info forPeer:(id)peer
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  peerCopy = peer;
  v8 = peerCopy;
  if (infoCopy && peerCopy)
  {
    peerPipesDict = [(WPDPipeManager *)self peerPipesDict];
    v10 = [peerPipesDict objectForKeyedSubscript:v8];

    if (v10)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__5;
      v26 = __Block_byref_object_dispose__5;
      v27 = 0;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __45__WPDPipeManager_invalidatePipeInfo_forPeer___block_invoke_838;
      v19 = &unk_279E59EC0;
      v20 = infoCopy;
      v21 = &v22;
      [v10 enumerateObjectsUsingBlock:&v16];
      if (v23[5])
      {
        [v10 removeObject:{v16, v17, v18, v19}];
        if ([v10 count])
        {
          peerPipesDict2 = [(WPDPipeManager *)self peerPipesDict];
          [peerPipesDict2 setObject:v10 forKeyedSubscript:v8];
        }

        else
        {
          peerPipesDict2 = [(WPDPipeManager *)self peerPipesDict];
          [peerPipesDict2 removeObjectForKey:v8];
        }

        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager invalidatePipeInfo:forPeer:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          peerPipesDict3 = [(WPDPipeManager *)self peerPipesDict];
          *buf = 138412546;
          v29 = peerPipesDict3;
          v30 = 2112;
          v31 = v10;
          _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "WPPM: invalidatePipeInfo: current peer pipes %@, pipeInfoSet: %@", buf, 0x16u);
        }
      }

      else
      {
        if (WPLogInitOnce != -1)
        {
          [WPDPipeManager invalidatePipeInfo:forPeer:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDPipeManager invalidatePipeInfo:forPeer:];
        }
      }

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPipeManager invalidatePipeInfo:forPeer:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [(WPDPipeManager *)v8 invalidatePipeInfo:v12 forPeer:self];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__WPDPipeManager_invalidatePipeInfo_forPeer___block_invoke_838(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 pipe];
  v9 = [v8 name];
  LODWORD(v7) = [v7 isEqualToString:v9];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_signpostBegin
{
  v3 = WiProxLog;
  v4 = v3;
  wpPipeDataSignPostID = self->_wpPipeDataSignPostID;
  if (wpPipeDataSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272965000, v4, OS_SIGNPOST_INTERVAL_BEGIN, wpPipeDataSignPostID, "receivedPayload", &unk_2729D0C55, v6, 2u);
  }
}

- (void)_signpostEnd
{
  v3 = WiProxLog;
  v4 = v3;
  wpPipeDataSignPostID = self->_wpPipeDataSignPostID;
  if (wpPipeDataSignPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_272965000, v4, OS_SIGNPOST_INTERVAL_END, wpPipeDataSignPostID, "receivedPayload", &unk_2729D0C55, v6, 2u);
  }
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

- (void)sendData:forPeer:forClient:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0(&dword_272965000, v0, v1, "WPPM: client endpoints: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendData:forPeer:forClient:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(uint64_t)a3 forPeer:(os_log_t)log forClient:.cold.11(unsigned __int16 a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 2048;
  *(buf + 10) = a3;
  _os_log_debug_impl(&dword_272965000, log, OS_LOG_TYPE_DEBUG, "WPPM: sendData: txTLen %d, txLen %lu", buf, 0x12u);
}

- (void)sendData:forPeer:forClient:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendData:(uint64_t)a1 forPeer:(uint64_t)a2 forClient:(NSObject *)a3 .cold.15(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_12_0(&dword_272965000, a2, a3, "WPPM: sendData: txLeftToSend %lu", a1);
}

- (void)sendData:forPeer:forClient:.cold.19()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stream:handleEvent:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stream:handleEvent:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stream:(os_log_t)log handleEvent:.cold.10(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = 0;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "WPPM: input stream: Failed to read data from pipe with error %ld %@", buf, 0x16u);
}

- (void)stream:handleEvent:.cold.12()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stream:handleEvent:.cold.22()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleIncomingPipeData:data:dataSize:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedPayload:data:dataSize:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0(&dword_272965000, v0, v1, "WPPM: receivedPayload of len %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)receivedPayload:(void *)a1 data:(void *)a2 dataSize:.cold.6(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 rxTotalDataWithLen];
  v5 = [v4 length];
  v6 = [a2 rxData];
  v7 = [v6 length];
  v8 = [a2 rxData];
  v11 = 134218498;
  v12 = v5;
  OUTLINED_FUNCTION_13();
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "WPPM: receivedPayload: FIRST PACKET txTotalDataLen (%lu) rxData (%lu) %@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)receivedPayload:(void *)a1 data:(void *)a2 dataSize:.cold.9(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_9() rxTotalLenToReceive];
  v5 = [a2 rxTotalDataToReceive];
  [v5 length];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)receivedPayload:(void *)a1 data:(void *)a2 dataSize:.cold.14(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_9() rxCurrentDataSize];
  v5 = [a2 rxData];
  [v5 length];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)receivedAck:data:dataSize:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0(&dword_272965000, v0, v1, "WPPM: receivedAck: dataSize %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)receivedAck:(void *)a1 data:dataSize:.cold.8(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_18() txSeqNum];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)receivedAck:(void *)a1 data:dataSize:.cold.10(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_18() txTotalLenToSend];
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)receivedAck:(void *)a1 data:dataSize:.cold.12(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedAck:data:dataSize:.cold.15()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)receivedError:(unsigned __int8)a1 data:(uint64_t)a2 dataSize:(os_log_t)log .cold.2(unsigned __int8 a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "WPPM: receivedError: error: %d, dataSize: %ld", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)receivedError:(void *)a1 data:dataSize:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedError:data:dataSize:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendAck:errorCode:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  v11 = *MEMORY[0x277D85DE8];
  v3 = v2;
  [OUTLINED_FUNCTION_18() streamStatus];
  v4 = [v0 streamError];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendAck:(uint64_t)a3 errorCode:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0(&dword_272965000, a1, a3, "WPPM: sendAck: bytes written %ld (expected 6)", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendAck:errorCode:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRemainingData:wpClient:.cold.3()
{
  OUTLINED_FUNCTION_14_0();
  v9 = *MEMORY[0x277D85DE8];
  v2 = v1;
  [OUTLINED_FUNCTION_18() length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)writeDataToPipe:pipe:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  v8 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = [OUTLINED_FUNCTION_18() name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  v7 = v0;
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "WPPM: writeDataToPipe: %@ send (%lu) data over skywalk", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)writeDataToPipe:pipe:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeDataToPipe:(void *)a1 pipe:.cold.11(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() output];
  [v3 streamStatus];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __53__WPDPipeManager_scalablePipeManager_pipeDidConnect___block_invoke_779_cold_2(uint64_t *a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = [OUTLINED_FUNCTION_18() name];
  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendChannelData:(void *)a3 .cold.4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 pipe];
  v6 = [v5 peer];
  v7 = [v6 identifier];
  v8 = [a3 pipe];
  v9 = [v8 name];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v10, v11, v12, v13, v14, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)channelHasData:(NSObject *)a3 .cold.5(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_12_0(&dword_272965000, a2, a3, "WPPM: channelHasData - no pipeInfo found for peer %@", a2);
}

- (void)channelHasData:(NSObject *)a3 .cold.7(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_12_0(&dword_272965000, a2, a3, "WPPM: channelHasData - no peerPipeSet found for peer %@", a2);
}

- (void)scalablePipeManager:(uint64_t)a1 pipeDidDisconnect:(void *)a2 error:(void *)a3 .cold.3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 name];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:pipeDidDisconnect:error:.cold.5()
{
  OUTLINED_FUNCTION_14_0();
  v11 = *MEMORY[0x277D85DE8];
  v3 = v2;
  [OUTLINED_FUNCTION_18() name];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_9() endpointsDict];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePipeInfo:forPeer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePipeInfo:(void *)a3 forPeer:.cold.5(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 peerPipesDict];
  v8 = 138412546;
  v9 = a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_272965000, v5, OS_LOG_TYPE_ERROR, "WPPM: invalidatePipeInfo: No PipeInfo set found for peer %@ in %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end