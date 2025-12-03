@interface RTTRemoteCall
- (BOOL)_rapportDevice:(id)device matchesID:(id)d orAlternateID:(id)iD;
- (RTTRemoteCall)initWithCall:(id)call;
- (id)newRapportClientWithDestinationDevice:(id)device;
- (id)rapportClientForDevice:(id)device;
- (id)responseForRequest:(id)request options:(id)options;
- (void)addDevice:(id)device;
- (void)callDidReceiveText:(id)text forUtterance:(id)utterance;
- (void)removeDevice:(id)device;
- (void)resetRapportClientForDevice:(id)device invalidate:(BOOL)invalidate;
- (void)sendCallIDChallengeToDevice:(id)device;
- (void)sendCallIDChallengeToDeviceId:(id)id orAlternateId:(id)alternateId;
- (void)sendString:(id)string;
- (void)start;
- (void)stop;
- (void)updateCallWithRemoteFailure;
@end

@implementation RTTRemoteCall

- (RTTRemoteCall)initWithCall:(id)call
{
  v14.receiver = self;
  v14.super_class = RTTRemoteCall;
  v3 = [(RTTCall *)&v14 initWithCall:call];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    devices = v3->_devices;
    v3->_devices = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("rtt_relay_queue", v6);
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v7;

    v9 = [(RTTRemoteCall *)v3 newRapportClientWithDestinationDevice:0];
    discoveryClient = v3->_discoveryClient;
    v3->_discoveryClient = v9;

    v11 = objc_opt_new();
    messagingClients = v3->_messagingClients;
    v3->_messagingClients = v11;
  }

  return v3;
}

- (void)start
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Starting call: %@", buf, 0xCu);
  }

  call = [(RTTCall *)self call];
  isHostedOnCurrentDevice = [call isHostedOnCurrentDevice];

  if (isHostedOnCurrentDevice)
  {
    v9.receiver = self;
    v9.super_class = RTTRemoteCall;
    [(RTTCall *)&v9 start];
  }

  if (!self->_discoveryClient)
  {
    v6 = [(RTTRemoteCall *)self newRapportClientWithDestinationDevice:0];
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  call = [(RTTCall *)self call];
  isHostedOnCurrentDevice = [call isHostedOnCurrentDevice];

  if (isHostedOnCurrentDevice)
  {
    v11.receiver = self;
    v11.super_class = RTTRemoteCall;
    [(RTTCall *)&v11 stop];
  }

  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Stopping call: %@", buf, 0xCu);
  }

  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  allValues = [(NSMutableDictionary *)self->_messagingClients allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_580];

  v8 = objc_opt_new();
  messagingClients = self->_messagingClients;
  self->_messagingClients = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCallWithRemoteFailure
{
  delegate = [(RTTCall *)self delegate];
  [delegate ttyCall:self setVisible:1 serviceUpdate:RTTServiceUpdateTypeRemoteInterrupt];
}

- (void)sendString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = stringCopy;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Send string for remote call: %@", buf, 0xCu);
  }

  call = [(RTTCall *)self call];
  isHostedOnCurrentDevice = [call isHostedOnCurrentDevice];

  if (isHostedOnCurrentDevice)
  {
    v14.receiver = self;
    v14.super_class = RTTRemoteCall;
    [(RTTCall *)&v14 sendString:stringCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__RTTRemoteCall_sendString___block_invoke;
    block[3] = &unk_279AE7DF8;
    objc_copyWeak(&v13, buf);
    v11 = stringCopy;
    selfCopy = self;
    dispatch_async(connectionQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __28__RTTRemoteCall_sendString___block_invoke(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = +[RTTTelephonyUtilities sharedUtilityProvider];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained call];
  v5 = [v2 contactPathForCall:v4];

  v6 = [RTTUtterance utteranceWithContactPath:v5 andText:a1[4]];
  v7 = objc_loadWeakRetained(a1 + 6);
  v8 = [v7 conversation];
  [v8 addUtterance:v6];

  v9 = +[RTTDatabaseManager sharedManager];
  v10 = objc_loadWeakRetained(a1 + 6);
  v11 = [v10 conversation];
  [v9 saveConversation:v11];

  v12 = AXLogRTT();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_loadWeakRetained(a1 + 6);
    v14 = [v13 conversation];
    *buf = 138412546;
    v31 = v14;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_261754000, v12, OS_LOG_TYPE_INFO, "saving convo and utterance: %@/%@", buf, 0x16u);
  }

  if ([a1[4] length])
  {
    v15 = objc_loadWeakRetained(a1 + 6);
    v16 = [v15 pairedCallDevice];
    v17 = [v15 rapportClientForDevice:v16];

    v18 = [MEMORY[0x277CBEB38] dictionary];
    v28[0] = @"RTTActiveCallKey";
    v19 = [a1[5] call];
    v20 = [v19 callUUID];
    v28[1] = @"com.apple.accessibility.RTT";
    v29[0] = v20;
    v21 = IDSCopyLocalDeviceUniqueID();
    v29[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v18 setObject:v22 forKey:@"RTTActiveCallResponseKey"];

    [v18 setObject:a1[4] forKey:@"RTTSendKey"];
    v23 = AXLogRTT();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = a1[4];
      *buf = 138412546;
      v31 = v24;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_261754000, v23, OS_LOG_TYPE_INFO, "Sending text %@ - %@", buf, 0x16u);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __28__RTTRemoteCall_sendString___block_invoke_595;
    v27[3] = &unk_279AE7DD0;
    v27[4] = a1[5];
    [v17 sendRequestID:@"com.apple.accessibility.RTT" request:v18 options:MEMORY[0x277CBEC10] responseHandler:v27];
  }

  else
  {
    v17 = AXLogRTT();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = a1[4];
      *buf = 138412290;
      v31 = v25;
      _os_log_impl(&dword_261754000, v17, OS_LOG_TYPE_INFO, "Not sending %@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __28__RTTRemoteCall_sendString___block_invoke_595(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Sent text response %@ = %@", &v10, 0x16u);
  }

  if (v7)
  {
    [*(a1 + 32) updateCallWithRemoteFailure];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)callDidReceiveText:(id)text forUtterance:(id)utterance
{
  v31[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  utteranceCopy = utterance;
  call = [(RTTCall *)self call];
  if (([call isEndpointOnCurrentDevice] & 1) != 0 || !objc_msgSend(textCopy, "length"))
  {
  }

  else
  {
    v9 = [utteranceCopy length];

    if (v9)
    {
      v10 = AXLogRTT();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = textCopy;
        _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Sending remote device received text %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v30[0] = @"RTTActiveCallKey";
      call2 = [(RTTCall *)self call];
      callUUID = [call2 callUUID];
      v31[0] = callUUID;
      v30[1] = @"com.apple.accessibility.RTT";
      v14 = IDSCopyLocalDeviceUniqueID();
      v31[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
      [dictionary setObject:v15 forKey:@"RTTActiveCallResponseKey"];

      v28[0] = @"RTTTextKey";
      v28[1] = @"RTTUtteranceKey";
      v29[0] = textCopy;
      v29[1] = utteranceCopy;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      [dictionary setObject:v16 forKey:@"RTTReceiveKey"];

      v17 = objc_loadWeakRetained(buf);
      pairedCallDevice = [v17 pairedCallDevice];
      v19 = [v17 rapportClientForDevice:pairedCallDevice];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __49__RTTRemoteCall_callDidReceiveText_forUtterance___block_invoke;
      v23[3] = &unk_279AE7DD0;
      v23[4] = self;
      [v19 sendRequestID:@"com.apple.accessibility.RTT" request:dictionary options:MEMORY[0x277CBEC10] responseHandler:v23];

      objc_destroyWeak(buf);
      goto LABEL_11;
    }
  }

  v20 = AXLogRTT();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v25 = textCopy;
    v26 = 2112;
    v27 = utteranceCopy;
    _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_INFO, "Not sending remote device received text %@, %@", buf, 0x16u);
  }

LABEL_11:
  v22.receiver = self;
  v22.super_class = RTTRemoteCall;
  [(RTTCall *)&v22 callDidReceiveText:textCopy forUtterance:utteranceCopy];

  v21 = *MEMORY[0x277D85DE8];
}

void __49__RTTRemoteCall_callDidReceiveText_forUtterance___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Received text response %@ = %@", buf, 0x16u);
  }

  v11 = [v7 objectForKey:@"RTTError"];
  if ([v11 isEqualToString:@"ActionRepair"])
  {
    v12 = *(*(a1 + 32) + 128);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__RTTRemoteCall_callDidReceiveText_forUtterance___block_invoke_612;
    v16[3] = &unk_279AE7760;
    v13 = v8;
    v14 = *(a1 + 32);
    v17 = v13;
    v18 = v14;
    dispatch_async(v12, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__RTTRemoteCall_callDidReceiveText_forUtterance___block_invoke_612(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"senderID"];
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 40) + 120);
    *buf = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Received request from %@ to re-pair with known devices: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 120);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__RTTRemoteCall_callDidReceiveText_forUtterance___block_invoke_616;
  v8[3] = &unk_279AE7E20;
  v8[4] = v5;
  [v6 enumerateObjectsUsingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetRapportClientForDevice:(id)device invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = deviceCopy;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Invalidate Rapport client for device %@ and setup again", &v16, 0xCu);
  }

  if (deviceCopy)
  {
    if (invalidateCopy)
    {
      messagingClients = self->_messagingClients;
      identifier = [deviceCopy identifier];
      v10 = [(NSMutableDictionary *)messagingClients objectForKey:identifier];
      [v10 invalidate];
    }

    v11 = self->_messagingClients;
    discoveryClient = [(RTTRemoteCall *)self newRapportClientWithDestinationDevice:deviceCopy];
    identifier2 = [deviceCopy identifier];
    [(NSMutableDictionary *)v11 setObject:discoveryClient forKey:identifier2];
  }

  else
  {
    if (invalidateCopy)
    {
      [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
    }

    v14 = [(RTTRemoteCall *)self newRapportClientWithDestinationDevice:0];
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)rapportClientForDevice:(id)device
{
  if (device)
  {
    messagingClients = self->_messagingClients;
    identifier = [device identifier];
    v5 = [(NSMutableDictionary *)messagingClients objectForKey:identifier];
  }

  else
  {
    v5 = self->_discoveryClient;
  }

  return v5;
}

- (id)newRapportClientWithDestinationDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_alloc_init(MEMORY[0x277D44160]);
  [v5 setDispatchQueue:self->_connectionQueue];
  [v5 setControlFlags:{objc_msgSend(v5, "controlFlags") | 0x20001000ALL}];
  [v5 setDestinationDevice:deviceCopy];
  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = deviceCopy;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Creating rapport client for destination device %@", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke;
  v22[3] = &unk_279AE7738;
  v7 = deviceCopy;
  v23 = v7;
  [v5 setInvalidationHandler:v22];
  if (!v7)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_625;
    v21[3] = &unk_279AE7E48;
    v21[4] = self;
    [v5 setDeviceFoundHandler:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_2;
    v20[3] = &unk_279AE7E48;
    v20[4] = self;
    [v5 setDeviceLostHandler:v20];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_3;
  v18[3] = &unk_279AE7E70;
  v18[4] = self;
  v8 = v7;
  v19 = v8;
  [v5 registerRequestID:@"com.apple.accessibility.RTT" options:MEMORY[0x277CBEC10] handler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_628;
  v16[3] = &unk_279AE7738;
  v9 = v8;
  v17 = v9;
  [v5 setInterruptionHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_629;
  v13[3] = &unk_279AE7E98;
  v14 = v9;
  selfCopy = self;
  v10 = v9;
  [v5 activateWithCompletion:v13];

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

void __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277D12B60] isInternalInstall];
    if (v4)
    {
      v5 = [MEMORY[0x277CCACC8] callStackSymbols];
    }

    else
    {
      v5 = &stru_2873FC590;
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Companion link for device %@ was invalidated: %@", &v7, 0x16u);
    if (v4)
    {
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_625(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addDevice:v4];
  [*(a1 + 32) sendCallIDChallengeToDevice:v4];
}

void __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = 134218498;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Client for device %@ handling request %@", &v15, 0x20u);
  }

  v13 = [*(a1 + 32) responseForRequest:v7 options:v9];

  (*(v8 + 2))(v8, v13, 0, 0);
  v14 = *MEMORY[0x277D85DE8];
}

void __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_628(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Companion link for device %@ was interrupted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__RTTRemoteCall_newRapportClientWithDestinationDevice___block_invoke_629(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogRTT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Link failed to activate for device %@: %@", &v9, 0x16u);
    }

    [*(a1 + 40) resetRapportClientForDevice:*(a1 + 32) invalidate:1];
  }

  else
  {
    if (v5)
    {
      v7 = [*(a1 + 40) rapportClientForDevice:*(a1 + 32)];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Companion link is active: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendCallIDChallengeToDevice:(id)device
{
  v18[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [deviceCopy identifier];
  [dictionary setObject:identifier forKey:@"RTTActiveCallKey"];

  v17[0] = @"RTTActiveCallKey";
  call = [(RTTCall *)self call];
  callUUID = [call callUUID];
  v17[1] = @"com.apple.accessibility.RTT";
  v18[0] = callUUID;
  v9 = IDSCopyLocalDeviceUniqueID();
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [dictionary setObject:v10 forKey:@"RTTActiveCallResponseKey"];

  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = dictionary;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Sending challenge request %@", buf, 0xCu);
  }

  v12 = [(RTTRemoteCall *)self rapportClientForDevice:deviceCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__RTTRemoteCall_sendCallIDChallengeToDevice___block_invoke;
  v14[3] = &unk_279AE7DD0;
  v14[4] = self;
  [v12 sendRequestID:@"com.apple.accessibility.RTT" request:dictionary options:MEMORY[0x277CBEC10] responseHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __45__RTTRemoteCall_sendCallIDChallengeToDevice___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Call challenge response %@ - %@", &v13, 0x16u);
  }

  v11 = [*(a1 + 32) responseForRequest:v7 options:v8];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendCallIDChallengeToDeviceId:(id)id orAlternateId:(id)alternateId
{
  idCopy = id;
  alternateIdCopy = alternateId;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTTRemoteCall_sendCallIDChallengeToDeviceId_orAlternateId___block_invoke;
  block[3] = &unk_279AE7D88;
  block[4] = self;
  v12 = idCopy;
  v13 = alternateIdCopy;
  v9 = alternateIdCopy;
  v10 = idCopy;
  dispatch_async(connectionQueue, block);
}

void __61__RTTRemoteCall_sendCallIDChallengeToDeviceId_orAlternateId___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 120);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__RTTRemoteCall_sendCallIDChallengeToDeviceId_orAlternateId___block_invoke_2;
  v16[3] = &unk_279AE7EC0;
  v16[4] = v3;
  v17 = v2;
  v18 = *(a1 + 48);
  v5 = [v4 indexOfObjectPassingTest:v16];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = AXLogRTT();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = *(*(a1 + 32) + 120);
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Sending pairing challenge to all known devices since id (%@ / %@) could not be matched to a known device: %@", buf, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__RTTRemoteCall_sendCallIDChallengeToDeviceId_orAlternateId___block_invoke_632;
    v15[3] = &unk_279AE7E20;
    v15[4] = v10;
    [v11 enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v12 = [*(*(a1 + 32) + 120) objectAtIndex:v5];
    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_261754000, v13, OS_LOG_TYPE_INFO, "Sending pairing challenge to %@", buf, 0xCu);
    }

    [*(a1 + 32) sendCallIDChallengeToDevice:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = deviceCopy;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Found device %@", buf, 0xCu);
    }

    devices = self->_devices;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __27__RTTRemoteCall_addDevice___block_invoke;
    v12[3] = &unk_279AE7EE8;
    v7 = deviceCopy;
    v13 = v7;
    [(NSMutableArray *)devices ax_removeObjectsFromArrayUsingBlock:v12];
    [(NSMutableArray *)self->_devices addObject:v7];
    v8 = [(RTTRemoteCall *)self newRapportClientWithDestinationDevice:v7];
    messagingClients = self->_messagingClients;
    identifier = [v7 identifier];
    [(NSMutableDictionary *)messagingClients setObject:v8 forKey:identifier];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __27__RTTRemoteCall_addDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)removeDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (deviceCopy)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = deviceCopy;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Lost device %@", &v12, 0xCu);
    }

    [(NSMutableArray *)self->_devices removeObject:deviceCopy];
    messagingClients = self->_messagingClients;
    identifier = [deviceCopy identifier];
    v8 = [(NSMutableDictionary *)messagingClients objectForKey:identifier];
    [v8 invalidate];

    v9 = self->_messagingClients;
    identifier2 = [deviceCopy identifier];
    [(NSMutableDictionary *)v9 removeObjectForKey:identifier2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)responseForRequest:(id)request options:(id)options
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = requestCopy;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Received request %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  call = [(RTTCall *)self call];
  status = [call status];

  v12 = [requestCopy objectForKey:@"RTTActiveCallResponseKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:@"RTTActiveCallKey"];
    call2 = [(RTTCall *)self call];
    callUUID = [call2 callUUID];
    v16 = [v13 isEqualToString:callUUID];

    if ((v16 & 1) == 0)
    {
      v17 = AXLogRTT();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(RTTRemoteCall *)self responseForRequest:v13 options:v17];
      }

      delegate = [(RTTCall *)self delegate];
      v19 = [delegate responseFromCallWithID:v13 forRequest:requestCopy options:optionsCopy];

      if (v19)
      {

        goto LABEL_15;
      }
    }
  }

  if ((status - 3) > 0xFFFFFFFD)
  {
    v22 = [optionsCopy objectForKey:@"senderID"];
    v23 = [optionsCopy safeStringForKey:@"senderIDS"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__RTTRemoteCall_responseForRequest_options___block_invoke;
    v29[3] = &unk_279AE7F38;
    v29[4] = self;
    v24 = dictionary;
    v30 = v24;
    v31 = v22;
    v32 = v23;
    v25 = v23;
    v26 = v22;
    [requestCopy enumerateKeysAndObjectsUsingBlock:v29];
    v19 = v24;
  }

  else
  {
    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      call3 = [(RTTCall *)self call];
      *buf = 138412546;
      v34 = call3;
      v35 = 1024;
      v36 = status;
      _os_log_impl(&dword_261754000, v20, OS_LOG_TYPE_INFO, "Call not yet connected. Ignoring request for call %@ in status %d", buf, 0x12u);
    }

    v19 = dictionary;
  }

LABEL_15:

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

void __44__RTTRemoteCall_responseForRequest_options___block_invoke(id *a1, void *a2, void *a3)
{
  v89[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![v5 isEqualToString:@"RTTActiveCallKey"])
  {
    if ([v5 isEqualToString:@"RTTActiveCallResponseKey"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      v8 = [v6 objectForKey:@"RTTActiveCallKey"];
      v9 = [v6 objectForKey:@"com.apple.accessibility.RTT"];
      v10 = AXLogRTT();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v81 = v8;
        v82 = 2112;
        v83 = v9;
        _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Active call response for call: %@ from client: %@", buf, 0x16u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_55;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_55;
      }

      v11 = [a1[4] call];
      v12 = [v11 callUUID];
      v13 = [v12 isEqualToString:v8];

      if (!v13)
      {
        goto LABEL_55;
      }

      v14 = AXLogRTT();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "Active call response matched current call", buf, 2u);
      }

      v15 = [a1[4] pairedCallDevice];
      if (!v15 || (v16 = v15, v17 = a1[4], [v17 pairedCallDevice], v18 = objc_claimAutoreleasedReturnValue(), LODWORD(v17) = objc_msgSend(v17, "_rapportDevice:matchesID:orAlternateID:", v18, v9, a1[7]), v18, v16, !v17))
      {
        v72 = a1[4];
        v73 = *(v72 + 16);
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __44__RTTRemoteCall_responseForRequest_options___block_invoke_638;
        v75[3] = &unk_279AE7D88;
        v75[4] = v72;
        v76 = v9;
        v77 = a1[7];
        dispatch_async(v73, v75);

        goto LABEL_55;
      }

      v19 = AXLogRTT();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_40:

LABEL_55:
LABEL_56:

        goto LABEL_57;
      }

      v20 = [a1[4] pairedCallDevice];
      v21 = a1[7];
      *buf = 138412802;
      v81 = v20;
      v82 = 2112;
      v83 = v9;
      v84 = 2112;
      v85 = v21;
      _os_log_impl(&dword_261754000, v19, OS_LOG_TYPE_INFO, "Existing paired device %@ matches ID %@ (%@)", buf, 0x20u);
    }

    else
    {
      if (![v5 isEqualToString:@"RTTSendKey"])
      {
        if (![v5 isEqualToString:@"RTTReceiveKey"])
        {
          goto LABEL_57;
        }

        v60 = [a1[4] call];
        v61 = [v60 isEndpointOnCurrentDevice];

        if ((v61 & 1) == 0)
        {
          v71 = AXLogRTT();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_261754000, v71, OS_LOG_TYPE_INFO, "Received character on non-endpoint device. Replying with re-pair request", buf, 2u);
          }

          [a1[5] setObject:@"ActionRepair" forKey:@"RTTError"];
          goto LABEL_57;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_57;
        }

        v8 = [v6 objectForKey:@"RTTTextKey"];
        v9 = [v6 objectForKey:@"RTTUtteranceKey"];
        v62 = [a1[4] conversation];
        v63 = [v62 appendStringFromOtherContactPath:v8];

        [a1[4] callDidReceiveText:v8 forUtterance:v9];
        goto LABEL_55;
      }

      v52 = [a1[4] pairedCallDevice];
      if (!v52 || (v53 = v52, v54 = a1[4], [v54 pairedCallDevice], v55 = objc_claimAutoreleasedReturnValue(), LOBYTE(v54) = objc_msgSend(v54, "_rapportDevice:matchesID:orAlternateID:", v55, a1[6], a1[7]), v55, v53, (v54 & 1) == 0))
      {
        v64 = AXLogRTT();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = [a1[4] pairedCallDevice];
          v66 = [v65 identifier];
          v67 = [a1[4] pairedCallDevice];
          v68 = [v67 idsDeviceIdentifier];
          v69 = a1[6];
          v70 = a1[7];
          *buf = 138413058;
          v81 = v66;
          v82 = 2112;
          v83 = v68;
          v84 = 2112;
          v85 = v69;
          v86 = 2112;
          v87 = v70;
          _os_log_impl(&dword_261754000, v64, OS_LOG_TYPE_INFO, "[RTTRemoteCallSendKey] Sender didn't match. Paired device id: %@, idsID: %@, senderID: %@, senderIDS: %@", buf, 0x2Au);
        }

        v46 = a1[4];
        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_57;
      }

      v8 = v6;
      [a1[4] sendString:v8];
      v56 = AXLogRTT();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v81 = v8;
        _os_log_impl(&dword_261754000, v56, OS_LOG_TYPE_INFO, "Getting remote call send job: %@", buf, 0xCu);
      }

      v9 = [a1[4] delegate];
      v57 = a1[4];
      v19 = [v57 conversation];
      v20 = [v19 lastUtteranceForMe:1];
      v58 = [v20 text];
      [v9 ttyCall:v57 didSendRemoteString:v8 forUtterance:v58];
    }

    goto LABEL_40;
  }

  v7 = [a1[4] call];
  if ([v7 isEndpointOnCurrentDevice])
  {

    goto LABEL_18;
  }

  v22 = [a1[4] call];
  v23 = [v22 isHostedOnCurrentDevice];

  if ((v23 & 1) == 0)
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v59 = [a1[4] call];
      *buf = 138412290;
      v81 = v59;
      _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Request received on non-endpoint and non-host device. Ignoring request for call %@", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_18:
  v24 = [a1[4] call];
  v25 = [v24 callUUID];
  v26 = [v25 length];

  if (v26)
  {
    v88[0] = @"RTTActiveCallKey";
    v27 = a1[5];
    v28 = [a1[4] call];
    v29 = [v28 callUUID];
    v88[1] = @"com.apple.accessibility.RTT";
    v89[0] = v29;
    v89[1] = v6;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
    [v27 setObject:v30 forKey:@"RTTActiveCallResponseKey"];
  }

  v31 = AXLogRTT();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [a1[4] pairedCallDevice];
    v33 = [a1[4] call];
    *buf = 138412546;
    v81 = v32;
    v82 = 2112;
    v83 = v33;
    _os_log_impl(&dword_261754000, v31, OS_LOG_TYPE_INFO, "Active call request with paired call device: %@ for call: %@", buf, 0x16u);
  }

  v34 = [a1[4] pairedCallDevice];
  if (!v34 || (v35 = v34, v36 = a1[4], [v36 pairedCallDevice], v37 = objc_claimAutoreleasedReturnValue(), LOBYTE(v36) = objc_msgSend(v36, "_rapportDevice:matchesID:orAlternateID:", v37, a1[6], a1[7]), v37, v35, (v36 & 1) == 0))
  {
    v38 = AXLogRTT();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = [a1[4] pairedCallDevice];
      v40 = [v39 identifier];
      v41 = [a1[4] pairedCallDevice];
      v42 = [v41 idsDeviceIdentifier];
      v43 = a1[6];
      v44 = a1[7];
      *buf = 138413058;
      v81 = v40;
      v82 = 2112;
      v83 = v42;
      v84 = 2112;
      v85 = v43;
      v86 = 2112;
      v87 = v44;
      _os_log_impl(&dword_261754000, v38, OS_LOG_TYPE_INFO, "[RTTRemoteCallActiveCallRequestKey] Paired device is nil or sender didn't match. Paired device id: %@, idsID: %@, senderID: %@, senderIDS: %@", buf, 0x2Au);
    }

    v45 = [*(a1[4] + 18) objectForKey:a1[6]];

    v46 = a1[4];
    if (!v45)
    {
      v47 = [v46[17] activeDevices];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __44__RTTRemoteCall_responseForRequest_options___block_invoke_636;
      v78[3] = &unk_279AE7F10;
      v79 = a1[6];
      v48 = [v47 ax_firstObjectUsingBlock:v78];

      v49 = AXLogRTT();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = a1[6];
        *buf = 138412546;
        v81 = v48;
        v82 = 2112;
        v83 = v50;
        _os_log_impl(&dword_261754000, v49, OS_LOG_TYPE_INFO, "Found device %@ for identifier %@", buf, 0x16u);
      }

      if (v48)
      {
        v51 = [a1[4] newRapportClientWithDestinationDevice:v48];
        [*(a1[4] + 18) setObject:v51 forKey:a1[6]];
        [a1[4] sendCallIDChallengeToDeviceId:a1[6] orAlternateId:a1[7]];
      }

      goto LABEL_57;
    }

LABEL_50:
    [v46 sendCallIDChallengeToDeviceId:a1[6] orAlternateId:a1[7]];
  }

LABEL_57:

  v74 = *MEMORY[0x277D85DE8];
}

uint64_t __44__RTTRemoteCall_responseForRequest_options___block_invoke_636(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __44__RTTRemoteCall_responseForRequest_options___block_invoke_638(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 120);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__RTTRemoteCall_responseForRequest_options___block_invoke_2;
  v11[3] = &unk_279AE7EC0;
  v11[4] = v3;
  v12 = v2;
  v13 = *(a1 + 48);
  v5 = [v4 indexOfObjectPassingTest:v11];
  v6 = AXLogRTT();
  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__RTTRemoteCall_responseForRequest_options___block_invoke_638_cold_1(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Found paired device", v10, 2u);
    }

    v8 = *(a1 + 32);
    v9 = [v8[15] objectAtIndex:v5];
    [v8 setPairedCallDevice:v9];

    v7 = [*(a1 + 32) delegate];
    [v7 ttyCall:*(a1 + 32) setVisible:0 serviceUpdate:RTTServiceUpdateTypeRemoteInterrupt];
  }
}

- (BOOL)_rapportDevice:(id)device matchesID:(id)d orAlternateID:(id)iD
{
  deviceCopy = device;
  dCopy = d;
  iDCopy = iD;
  identifier = [deviceCopy identifier];
  if ([dCopy isEqualToString:identifier])
  {
    v11 = 1;
  }

  else
  {
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    if ([dCopy isEqualToString:idsDeviceIdentifier])
    {
      v11 = 1;
    }

    else
    {
      identifier2 = [deviceCopy identifier];
      if ([iDCopy isEqualToString:identifier2])
      {
        v11 = 1;
      }

      else
      {
        idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
        v11 = [iDCopy isEqualToString:idsDeviceIdentifier2];
      }
    }
  }

  return v11;
}

- (void)responseForRequest:(NSObject *)a3 options:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 call];
  v6 = [v5 callUUID];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_261754000, a3, OS_LOG_TYPE_ERROR, "RTTCall for %@ got request for %@. Asking delegate to help get this request to the right place.", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end