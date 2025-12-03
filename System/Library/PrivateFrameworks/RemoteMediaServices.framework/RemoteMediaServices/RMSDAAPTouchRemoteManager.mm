@interface RMSDAAPTouchRemoteManager
- (CGPoint)_locationForDirection:(int64_t)direction repeatCount:(int)count;
- (RMSDAAPTouchRemoteManager)initWithRequestManager:(id)manager;
- (RMSDAAPTouchRemoteManagerDelegate)delegate;
- (unsigned)_timeForDirection:(int64_t)direction repeatCount:(int)count;
- (void)_createSocket;
- (void)_parsePortInfoItems:(id)items;
- (void)_requestPortInfo;
- (void)_requestPromptUpdate:(id)update;
- (void)initiateControlWithCompletionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command;
- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(int)count;
- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(int)count;
- (void)touchRemoteSocketDidDisconnect:(id)disconnect;
@end

@implementation RMSDAAPTouchRemoteManager

- (RMSDAAPTouchRemoteManager)initWithRequestManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = RMSDAAPTouchRemoteManager;
  v6 = [(RMSDAAPTouchRemoteManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestManager, manager);
    *&v7->_touchDistanceMin = 0x439B333342480000;
    *&v7->_touchTimeMin = 0x3200000001;
    CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
    v7->_shouldWriteTimestampsForPPT = CFPreferencesGetAppBooleanValue(@"WritePPTTimestamps", @"com.apple.RemoteMediaServices", 0) != 0;
  }

  return v7;
}

- (void)initiateControlWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!self->_portSecret)
  {
    do
    {
      v5 = arc4random();
      self->_portSecret = v5;
    }

    while (!v5);
  }

  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    portSecret = self->_portSecret;
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = portSecret;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "Touch remote port secret is [%d]", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__RMSDAAPTouchRemoteManager_initiateControlWithCompletionHandler___block_invoke;
  v9[3] = &unk_279B092B0;
  objc_copyWeak(&v11, &buf);
  v8 = handlerCopy;
  v10 = v8;
  [(RMSDAAPTouchRemoteManager *)self _requestPromptUpdate:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
}

uint64_t __66__RMSDAAPTouchRemoteManager_initiateControlWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _createSocket];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(int)count
{
  v4 = *&count;
  [(RMSTouchRemoteSocket *)self->_socket sendTouchCode:256 timeInMilliseconds:0 location:160.0, 228.5];
  [(RMSDAAPTouchRemoteManager *)self _locationForDirection:direction repeatCount:v4];
  [(RMSTouchRemoteSocket *)self->_socket sendTouchCode:257 timeInMilliseconds:[(RMSDAAPTouchRemoteManager *)self _timeForDirection:direction repeatCount:v4] location:v7, v8];
  if (self->_shouldWriteTimestampsForPPT)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v10 = RMSLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "PPT Timestamps enabled, writing timestamp to file", buf, 2u);
    }

    if (sendTouchMoveWithDirection_repeatCount__onceToken != -1)
    {
      [RMSDAAPTouchRemoteManager sendTouchMoveWithDirection:repeatCount:];
    }

    v11 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__RMSDAAPTouchRemoteManager_sendTouchMoveWithDirection_repeatCount___block_invoke_2;
    block[3] = &unk_279B088E8;
    v14 = date;
    v12 = date;
    dispatch_async(v11, block);
  }
}

uint64_t __68__RMSDAAPTouchRemoteManager_sendTouchMoveWithDirection_repeatCount___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sendTouchMoveWithDirection_repeatCount__timestampFormatter;
  sendTouchMoveWithDirection_repeatCount__timestampFormatter = v0;

  v2 = sendTouchMoveWithDirection_repeatCount__timestampFormatter;

  return [v2 setDateFormat:@"MMMdd H:mm:ss.SSS"];
}

void __68__RMSDAAPTouchRemoteManager_sendTouchMoveWithDirection_repeatCount___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [sendTouchMoveWithDirection_repeatCount__timestampFormatter stringFromDate:*(a1 + 32)];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/NanoRemotePPT-%@", v1];
  [v1 writeToFile:v2 atomically:0 encoding:4 error:0];
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v5 = v1;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "Wrote timestamp: %@", buf, 0xCu);
  }
}

- (void)sendTouchEndWithDirection:(int64_t)direction repeatCount:(int)count
{
  v4 = *&count;
  [RMSDAAPTouchRemoteManager _locationForDirection:"_locationForDirection:repeatCount:" repeatCount:?];
  v8 = v7;
  v10 = v9;
  v11 = [(RMSDAAPTouchRemoteManager *)self _timeForDirection:direction repeatCount:v4];
  v12 = v10 + 15.0;
  v13 = v10 + -15.0;
  if (direction != 2)
  {
    v13 = v10;
  }

  if (direction != 3)
  {
    v12 = v13;
  }

  v14 = v8 + 15.0;
  if (direction != 1)
  {
    v14 = v8;
  }

  if (!direction)
  {
    v14 = v8 + -15.0;
  }

  if (direction > 1)
  {
    v14 = v8;
  }

  else
  {
    v12 = v10;
  }

  v15 = v11 + 40;
  socket = self->_socket;

  [(RMSTouchRemoteSocket *)socket sendTouchCode:258 timeInMilliseconds:v15 location:v14, v12];
}

- (void)sendNavigationCommand:(int64_t)command
{
  if ((command - 1) > 2)
  {
    v5 = @"menu";
  }

  else
  {
    v5 = off_279B092F8[command - 1];
  }

  v6 = [(RMSDAAPRequestManager *)self->_requestManager requestControlCommand:v5 text:0 promptRevision:self->_controlPromptRevision completionHandler:0, v3, v4];
}

- (void)touchRemoteSocketDidDisconnect:(id)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained touchRemoteManagerDidDisconnect:self];
}

- (void)_createSocket
{
  hostName = [(RMSDAAPRequestManager *)self->_requestManager hostName];
  v3 = [[RMSTouchRemoteSocket alloc] initWithHost:hostName port:self->_port encryptionKey:self->_encryptionKey];
  socket = self->_socket;
  self->_socket = v3;

  [(RMSTouchRemoteSocket *)self->_socket setDelegate:self];
  [(RMSTouchRemoteSocket *)self->_socket connect];
}

- (void)_requestPromptUpdate:(id)update
{
  v13[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  requestManager = self->_requestManager;
  v12 = @"prompt-id";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_controlPromptRevision];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__RMSDAAPTouchRemoteManager__requestPromptUpdate___block_invoke;
  v10[3] = &unk_279B092D8;
  v10[4] = self;
  v11 = updateCopy;
  v8 = updateCopy;
  v9 = [(RMSDAAPRequestManager *)requestManager requestWithPath:@"controlpromptupdate" method:@"GET" postData:0 queryArgs:v7 completionHandler:v10];
}

void __50__RMSDAAPTouchRemoteManager__requestPromptUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = [RMSDAAPParser objectWithData:?];
    v4 = [v3 objectForKeyedSubscript:@"itemID"];
    *(*(a1 + 32) + 24) = [v4 integerValue];

    v5 = [v3 objectForKeyedSubscript:@"items"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"name"];
          if ([v11 isEqualToString:@"kKeybMsgKey_MessageType"])
          {
            v14 = [v10 objectForKeyedSubscript:@"value"];
            v15 = [v14 integerValue];

            v12 = v15 == 5;
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:buf count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_15:

    v16 = RMSLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_261E98000, v16, OS_LOG_TYPE_DEFAULT, "Control prompt items: %@", buf, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v12)
    {
      [v17 _parsePortInfoItems:v5];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [v17 _requestPortInfo];
      [*(a1 + 32) _requestPromptUpdate:*(a1 + 40)];
    }
  }

  else
  {
    v13 = *(*(a1 + 40) + 16);

    v13();
  }
}

- (void)_parsePortInfoItems:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = items;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    p_encryptionKey = &self->_encryptionKey;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:{@"name", p_encryptionKey}];
        v10 = [v8 objectForKeyedSubscript:@"value"];
        p_port = &self->_port;
        if (([v9 isEqualToString:@"kKeybMsgKey_String"] & 1) != 0 || (p_port = p_encryptionKey, objc_msgSend(v9, "isEqualToString:", @"kKeybMsgKey_SubText")))
        {
          *p_port = self->_portSecret ^ [v10 intValue];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v12 = RMSLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    port = self->_port;
    encryptionKey = self->_encryptionKey;
    *buf = 67109376;
    v22 = port;
    v23 = 1024;
    v24 = encryptionKey;
    _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "Touch remote port info: [%d / %d]", buf, 0xEu);
  }
}

- (void)_requestPortInfo
{
  v3 = MEMORY[0x277CCACA8];
  portSecret = self->_portSecret;
  pairingGUID = [(RMSDAAPRequestManager *)self->_requestManager pairingGUID];
  v7 = [v3 stringWithFormat:@"%d, %@", portSecret, pairingGUID];

  v6 = [(RMSDAAPRequestManager *)self->_requestManager requestControlCommand:@"DRPortInfoRequest" text:v7 promptRevision:self->_controlPromptRevision completionHandler:0];
}

- (unsigned)_timeForDirection:(int64_t)direction repeatCount:(int)count
{
  v4 = count * 6.0;
  v5 = self->_touchTimeMax - (v4 * v4);
  if (v5 <= self->_touchTimeMin)
  {
    return self->_touchTimeMin;
  }

  return v5;
}

- (CGPoint)_locationForDirection:(int64_t)direction repeatCount:(int)count
{
  v4 = 12.0;
  if (count == 2)
  {
    v4 = 16.0;
  }

  if (count > 2)
  {
    v4 = 23.0;
  }

  v5 = fminf(self->_touchDistanceMax, (v4 * count) + self->_touchDistanceMin);
  v6 = 0.0;
  if (direction > 1)
  {
    if (direction == 2)
    {
      v9 = 228.0 - v5;
    }

    else
    {
      v7 = 0.0;
      if (direction != 3)
      {
        goto LABEL_16;
      }

      v9 = v5 + 228.0;
    }

    v6 = v9;
    v7 = 160.0;
    goto LABEL_16;
  }

  if (!direction)
  {
    v8 = 160.0 - v5;
    goto LABEL_13;
  }

  v7 = 0.0;
  if (direction == 1)
  {
    v8 = v5 + 160.0;
LABEL_13:
    v7 = v8 + 0.5;
    v6 = 228.0;
  }

LABEL_16:
  result.y = v6;
  result.x = v7;
  return result;
}

- (RMSDAAPTouchRemoteManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end