@interface MPTCPHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (MPTCPHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (void)_performUpdate;
- (void)_setMPTCPAdvisoryCell:(int)cell;
- (void)_setMPTCPAdvisoryWiFi:(int64_t)fi;
- (void)dealloc;
- (void)handleSrcEvent;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)rnfWiFiEvent:(id)event withInfo:(id)info;
- (void)sendReply:(id)reply;
- (void)setupSockFD;
@end

@implementation MPTCPHandler

- (MPTCPHandler)init
{
  v21.receiver = self;
  v21.super_class = MPTCPHandler;
  v2 = [(MPTCPHandler *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(MPTCPHandler *)v2 setSockfd:0xFFFFFFFFLL];
    [(MPTCPHandler *)v3 setSocksrc:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    *&v3->_kernelWifiAdvice = 0x200000002;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __20__MPTCPHandler_init__block_invoke;
    v19[3] = &unk_27898A690;
    v5 = v3;
    v20 = v5;
    v6 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v19];
    relayReadyObserver = v5->relayReadyObserver;
    v5->relayReadyObserver = v6;

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __20__MPTCPHandler_init__block_invoke_4;
    v17 = &unk_27898A690;
    v8 = v5;
    v18 = v8;
    v9 = [defaultCenter addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:&v14];
    rnfWiFiObserver = v8->rnfWiFiObserver;
    v8->rnfWiFiObserver = v9;

    v11 = [CellOutrankHandler sharedInstance:v14];
    outrankRelay = v8->_outrankRelay;
    v8->_outrankRelay = v11;

    [(CellOutrankHandler *)v8->_outrankRelay addObserver:v8 forKeyPath:@"cellOutranksWiFi" options:7 context:0];
  }

  return v3;
}

void __20__MPTCPHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 48)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__MPTCPHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __20__MPTCPHandler_init__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    [v5 addObserver:? forKeyPath:? options:? context:?];
  }

  else
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v14 = 134217984;
      v15 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "MPTCP: failed to procure state relays %p", &v14, 0xCu);
    }
  }

  v8 = [NetworkStateRelay getStateRelayFor:3];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  if (!*(*(a1 + 32) + 32))
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "MPTCP: failed to procure state relay for WiFi %p", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __20__MPTCPHandler_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __20__MPTCPHandler_init__block_invoke_2_5;
  v5[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __20__MPTCPHandler_init__block_invoke_2_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 rnfWiFiEvent:@"fallbackRecommendation" withInfo:v2];
}

- (void)dealloc
{
  cellRelay = self->cellRelay;
  if (cellRelay)
  {
    [(NetworkStateRelay *)cellRelay removeObserver:self forKeyPath:@"advisory"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = defaultCenter;
  if (self->relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  [v5 removeObserver:self->rnfWiFiObserver];
  if (([(MPTCPHandler *)self sockfd]& 0x80000000) == 0)
  {
    close([(MPTCPHandler *)self sockfd]);
    socksrc = [(MPTCPHandler *)self socksrc];

    if (socksrc)
    {
      socksrc2 = [(MPTCPHandler *)self socksrc];
      dispatch_source_cancel(socksrc2);

      [(MPTCPHandler *)self setSocksrc:0];
    }
  }

  [(CellOutrankHandler *)self->_outrankRelay removeObserver:self forKeyPath:@"cellOutranksWiFi"];
  outrankRelay = self->_outrankRelay;
  self->_outrankRelay = 0;

  v9.receiver = self;
  v9.super_class = MPTCPHandler;
  [(MPTCPHandler *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MPTCPHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898A328;
  v13 = objectCopy;
  v14 = pathCopy;
  selfCopy = self;
  v10 = pathCopy;
  v11 = objectCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MPTCPHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if ([a1[5] isEqualToString:@"advisory"])
  {
    if ([v2 functionalInterfaceType] == 5)
    {
      [a1[6] _setMPTCPAdvisoryCell:{objc_msgSend(*(a1[6] + 3), "advisory")}];
      v3 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1[6] + 3);
        v5 = v3;
        v25 = 67109120;
        *v26 = [v4 advisory];
        v6 = "MPTCP: Advising Cell, advice = %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_DEFAULT;
        v9 = 8;
LABEL_16:
        _os_log_impl(&dword_23255B000, v7, v8, v6, &v25, v9);
      }
    }

    else
    {
      v17 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v5 = v17;
        v18 = [v2 functionalInterfaceType];
        v19 = a1[6];
        v25 = 67109376;
        *v26 = v18;
        *&v26[4] = 2048;
        *&v26[6] = v19;
        v6 = "MPTCP: unrecognized interface type %hhu for %p";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 18;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = [a1[5] isEqualToString:@"cellOutranksWiFi"];
    v11 = rnfLogHandle;
    if (v10)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1[6] + 5);
        v13 = v11;
        v14 = [v12 cellOutranksWiFi];
        v15 = "NO";
        if (v14)
        {
          v15 = "YES";
        }

        v25 = 136315138;
        *v26 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "MPTCP: Advising 5G cell prefer over WiFi: %s", &v25, 0xCu);
      }

      if ([*(a1[6] + 5) cellOutranksWiFi])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [a1[6] _setMPTCPAdvisoryWiFi:v16];
    }

    else if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[5];
      v21 = v20;
      v5 = v11;
      v22 = [v20 UTF8String];
      v23 = a1[6];
      v25 = 136315394;
      *v26 = v22;
      *&v26[8] = 2048;
      *&v26[10] = v23;
      v6 = "MPTCP: unrecognized key change %s for %p";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
      goto LABEL_16;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)rnfWiFiEvent:(id)event withInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([event isEqualToString:@"fallbackRecommendation"])
  {
    v7 = [infoCopy objectForKeyedSubscript:@"detail"];
    integerValue = [v7 integerValue];

    self->_rnfAdvice = integerValue;
    [(MPTCPHandler *)self _setMPTCPAdvisoryWiFi:integerValue];
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = integerValue;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "MPTCP: Advising WiFi from RNF, advice = %ld", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendReply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (([(MPTCPHandler *)self sockfd]& 0x80000000) == 0)
  {
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0xFFFFLL;
    [replyCopy getUUIDBytes:v15 + 4];
    HIDWORD(v16) = [(NetworkStateRelay *)self->wifiRelay lastReportedRxSignalStrength];
    v5 = send([(MPTCPHandler *)self sockfd], v15, 0x18uLL, 0);
    if (v5 != 24)
    {
      v6 = v5;
      v7 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = *__error();
        v11 = 134218240;
        v12 = v6;
        v13 = 1024;
        v14 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "MPTCP: sendReply failed with ret %ld, errno %d\n", &v11, 0x12u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleSrcEvent
{
  v23 = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "MPTCP: handleSrcEvent enter", buf, 2u);
  }

  if (recv([(MPTCPHandler *)self sockfd], v21, 0x18uLL, 0) == 24)
  {
    *&v4 = 67109634;
    v11 = v4;
    do
    {
      if (LODWORD(v21[0]) == 1)
      {
        v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v21 + 4];
        v6 = HIDWORD(v22);
        if (HIDWORD(v22) >= 3)
        {
          v9 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v16 = HIDWORD(v22);
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "MPTCP: Received unexpected priority: %u", buf, 8u);
          }
        }

        else
        {
          v7 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v11;
            v16 = HIDWORD(v22);
            v17 = 2048;
            v18 = v6;
            v19 = 2112;
            v20 = v5;
            _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "MPTCP: handling event for prio %d state %ld on uuid %@", buf, 0x1Cu);
          }

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __30__MPTCPHandler_handleSrcEvent__block_invoke;
          v12[3] = &unk_27898BD20;
          v14 = v6;
          v12[4] = self;
          v13 = v5;
          [FlowAnalyticsEngine identifierForUUID:v13 replyQueue:MEMORY[0x277D85CD0] reply:v12];
        }
      }

      else
      {
        v8 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v16 = v21[0];
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "MPTCP: received unknown event %d", buf, 8u);
        }
      }
    }

    while (recv([(MPTCPHandler *)self sockfd], v21, 0x18uLL, 0) == 24);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __30__MPTCPHandler_handleSrcEvent__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "MPTCP: identifierForUUID error: %@", buf, 0xCu);
    }
  }

  else
  {
    v21 = v7;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
    v22 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __30__MPTCPHandler_handleSrcEvent__block_invoke_19;
    v17[3] = &unk_27898BCF8;
    v13 = v7;
    v14 = a1[4];
    v15 = a1[5];
    v18 = v13;
    v19 = v14;
    v20 = v15;
    [CellFallbackHandler canUseApps:v12 replyQueue:MEMORY[0x277D85CD0] reply:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __30__MPTCPHandler_handleSrcEvent__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = rnfLogHandle;
  if (v15)
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "MPTCP: returning: error %@", &v24, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v11 objectForKeyedSubscript:v17];
      v20 = [v12 objectForKeyedSubscript:*(a1 + 32)];
      v24 = 138412802;
      v25 = v17;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "MPTCP: App %@ can use? %@ reason %@", &v24, 0x20u);
    }

    v21 = [v11 objectForKeyedSubscript:*(a1 + 32)];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      [*(a1 + 40) sendReply:*(a1 + 48)];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setupSockFD
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(MPTCPHandler *)self sockfd]< 0)
  {
    [(MPTCPHandler *)self setSockfd:network_config_open_kernel_network_advisory_socket()];
    if ([(MPTCPHandler *)self sockfd]< 0)
    {
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        socksrc5 = v11;
        v12 = *__error();
        *buf = 67109120;
        v19 = v12;
        _os_log_impl(&dword_23255B000, socksrc5, OS_LOG_TYPE_ERROR, "MPTCP: could not allocate kernel network advisory socket - error: %d", buf, 8u);
        goto LABEL_9;
      }
    }

    else
    {
      socksrc = [(MPTCPHandler *)self socksrc];

      if (socksrc)
      {
        socksrc2 = [(MPTCPHandler *)self socksrc];
        dispatch_source_cancel(socksrc2);

        [(MPTCPHandler *)self setSocksrc:0];
      }

      sockfd = [(MPTCPHandler *)self sockfd];
      v6 = MEMORY[0x277D85CD0];
      v7 = dispatch_source_create(MEMORY[0x277D85D28], sockfd, 0, MEMORY[0x277D85CD0]);
      [(MPTCPHandler *)self setSocksrc:v7];

      socksrc3 = [(MPTCPHandler *)self socksrc];

      if (socksrc3)
      {
        socksrc4 = [(MPTCPHandler *)self socksrc];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __27__MPTCPHandler_setupSockFD__block_invoke;
        handler[3] = &unk_27898A0C8;
        handler[4] = self;
        dispatch_source_set_event_handler(socksrc4, handler);

        socksrc5 = [(MPTCPHandler *)self socksrc];
        dispatch_resume(socksrc5);
LABEL_9:

        goto LABEL_13;
      }

      v13 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = *__error();
        *buf = 67109120;
        v19 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "MPTCP: dispatch_source_create failed for advisory socket - error: %d", buf, 8u);
      }

      close([(MPTCPHandler *)self sockfd]);
      [(MPTCPHandler *)self setSockfd:0xFFFFFFFFLL];
    }
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_performUpdate
{
  v20 = *MEMORY[0x277D85DE8];
  [(MPTCPHandler *)self setupSockFD];
  v13 = 0;
  kernelCellAdvice = self->_kernelCellAdvice;
  LOBYTE(v13) = self->_kernelWifiAdvice;
  BYTE1(v13) = kernelCellAdvice;
  if ([(MPTCPHandler *)self sockfd]< 0)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 67109120;
      sockfd = [(MPTCPHandler *)self sockfd];
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "MPTCP: cannot perform update, sockfd %d", buf, 8u);
    }
  }

  else
  {
    v4 = send([(MPTCPHandler *)self sockfd], &v13, 4uLL, 0);
    if (v4 != 4)
    {
      v5 = v4;
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        sockfd2 = [(MPTCPHandler *)self sockfd];
        v9 = *__error();
        *buf = 67109632;
        sockfd = sockfd2;
        v16 = 2048;
        v17 = v5;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "MPTCP: failure to send advisory, fd %d, return value %zd, error %d", buf, 0x18u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setMPTCPAdvisoryWiFi:(int64_t)fi
{
  v9 = *MEMORY[0x277D85DE8];
  rnfAdvice = self->_rnfAdvice;
  if (rnfAdvice <= fi)
  {
    rnfAdvice = fi;
  }

  if (rnfAdvice == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (rnfAdvice != 1);
  }

  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "MPTCP: wifi advice now set to %d", v8, 8u);
  }

  if (self->_kernelWifiAdvice != v5)
  {
    self->_kernelWifiAdvice = v5;
    [(MPTCPHandler *)self _performUpdate];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setMPTCPAdvisoryCell:(int)cell
{
  v8 = *MEMORY[0x277D85DE8];
  if ((cell - 3) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_232816A40[cell - 3];
  }

  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "MPTCP: cell advice now set to %d", v7, 8u);
  }

  if (self->_kernelCellAdvice != v4)
  {
    self->_kernelCellAdvice = v4;
    [(MPTCPHandler *)self _performUpdate];
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MPTCPHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_12 != -1)
  {
    dispatch_once(&sharedInstance_pred_12, block);
  }

  v2 = sharedInstance_sharedInstance_12;

  return v2;
}

void __30__MPTCPHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_12;
  sharedInstance_sharedInstance_12 = v1;

  v3 = sharedInstance_sharedInstance_12;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[MPTCPHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end