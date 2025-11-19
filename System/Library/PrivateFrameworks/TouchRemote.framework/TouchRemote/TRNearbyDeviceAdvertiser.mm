@interface TRNearbyDeviceAdvertiser
- (TRNearbyDeviceAdvertiser)init;
- (TRNearbyDeviceAdvertiserDelegate)delegate;
- (void)_handleActivationWithError:(id)a3;
- (void)_handleEventMessage:(id)a3;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_handleNewConnectionFromPeerDevice:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleRequestMessage:(id)a3;
- (void)_requestSessionForMessage:(id)a3 withCallback:(id)a4;
- (void)_respondToRequest:(id)a3 withError:(id)a4;
- (void)pauseAdvertising;
- (void)resumeAdvertising;
- (void)startAdvertisingWithService:(unint64_t)a3;
- (void)stopAdvertising;
@end

@implementation TRNearbyDeviceAdvertiser

- (TRNearbyDeviceAdvertiser)init
{
  v10.receiver = self;
  v10.super_class = TRNearbyDeviceAdvertiser;
  v2 = [(TRNearbyDeviceAdvertiser *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TRNearbyDeviceAdvertiser.advertiserQ", 0);
    advertiserQ = v2->_advertiserQ;
    v2->_advertiserQ = v3;

    v5 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sessionsTable = v2->_sessionsTable;
    v2->_sessionsTable = v5;

    v7 = dispatch_queue_create("com.apple.TRNearbyDeviceAdvertiser.sessionsTableQ", MEMORY[0x277D85CD8]);
    sessionsTableQ = v2->_sessionsTableQ;
    v2->_sessionsTableQ = v7;

    v2->_state = 1;
  }

  return v2;
}

- (void)startAdvertisingWithService:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(TRNearbyDeviceAdvertiser *)self delegate];

  if (!v5)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"TRNearbyDeviceAdvertiser requires a delegate." userInfo:0];
    objc_exception_throw(v9);
  }

  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[TRNearbyDeviceAdvertiser startAdvertisingWithService:]";
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Start advertising with service: %lu.", buf, 0x16u);
    }
  }

  advertiserQ = self->_advertiserQ;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke;
  v10[3] = &unk_279DCEB80;
  v10[4] = self;
  v10[5] = a3;
  dispatch_async(advertiserQ, v10);
  v8 = *MEMORY[0x277D85DE8];
}

void __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[2] == 1)
  {
    v2[2] = 2;
    [*(a1 + 32) setRequestedService:*(a1 + 40)];
    v3 = objc_alloc_init(MEMORY[0x277D54CE0]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = dispatch_queue_create("com.apple.TRNearbyDeviceAdvertiser.serviceQ", 0);
    [*(*(a1 + 32) + 24) setDispatchQueue:v6];

    if (*(a1 + 40) == 1)
    {
      [*(*(a1 + 32) + 24) setNeedsSetup:1];
      [*(*(a1 + 32) + 24) setIdentifier:*MEMORY[0x277D54D78]];
      [*(*(a1 + 32) + 24) setDeviceActionType:1];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke_16;
    v22[3] = &unk_279DCF1D8;
    v22[4] = *(a1 + 32);
    v7 = MEMORY[0x27438C490](v22);
    [*(*(a1 + 32) + 24) setEventMessageHandler:v7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke_2;
    v21[3] = &unk_279DCF200;
    v21[4] = *(a1 + 32);
    v8 = MEMORY[0x27438C490](v21);
    [*(*(a1 + 32) + 24) setRequestMessageHandler:v8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke_3;
    v20[3] = &unk_279DCEBF8;
    v20[4] = *(a1 + 32);
    v9 = MEMORY[0x27438C490](v20);
    [*(*(a1 + 32) + 24) setInvalidationHandler:v9];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke_4;
    v19[3] = &unk_279DCEBF8;
    v19[4] = *(a1 + 32);
    v10 = MEMORY[0x27438C490](v19);
    [*(*(a1 + 32) + 24) setInterruptionHandler:v10];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__TRNearbyDeviceAdvertiser_startAdvertisingWithService___block_invoke_5;
    v18[3] = &unk_279DCF228;
    v18[4] = v11;
    [v12 activateWithCompletion:v18];

    goto LABEL_11;
  }

  if (_TRLogEnabled == 1)
  {
    v13 = TRLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TRNearbyDeviceAdvertiser startAdvertisingWithService:]_block_invoke";
      _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to start advertising. Advertiser is not stopped.", buf, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  v14 = [v2 delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = *MEMORY[0x277CCA470];
    v23[0] = *MEMORY[0x277CCA450];
    v23[1] = v16;
    v24[0] = @"Failed to start advertising.";
    v24[1] = @"Advertiser is not stopped.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9300 userInfo:v7];
    v9 = [*(a1 + 32) delegate];
    [v9 nearbyDeviceAdvertiser:*(a1 + 32) didFailToStartAdvertisingWithError:v8];
LABEL_11:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pauseAdvertising
{
  advertiserQ = self->_advertiserQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRNearbyDeviceAdvertiser_pauseAdvertising__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(advertiserQ, block);
}

void __44__TRNearbyDeviceAdvertiser_pauseAdvertising__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 == 5)
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_18;
    }

    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRNearbyDeviceAdvertiser pauseAdvertising]_block_invoke";
      v6 = "%s Advertiser already paused.";
LABEL_16:
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v3 != 3)
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_18;
    }

    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRNearbyDeviceAdvertiser pauseAdvertising]_block_invoke";
      v6 = "%s Failed to pause advertising. Advertiser is not started.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (_TRLogEnabled == 1)
  {
    v4 = TRLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRNearbyDeviceAdvertiser pauseAdvertising]_block_invoke";
      _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Pausing advertiser.", &v8, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  if ([v2 requestedService] == 1)
  {
    [*(*(a1 + 32) + 24) setDeviceActionType:0];
    [*(*(a1 + 32) + 24) setNeedsSetup:0];
  }

  *(*(a1 + 32) + 16) = 5;
LABEL_18:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)resumeAdvertising
{
  advertiserQ = self->_advertiserQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TRNearbyDeviceAdvertiser_resumeAdvertising__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(advertiserQ, block);
}

void __45__TRNearbyDeviceAdvertiser_resumeAdvertising__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 == 5)
  {
    if (_TRLogEnabled == 1)
    {
      v6 = TRLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[TRNearbyDeviceAdvertiser resumeAdvertising]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Resuming advertiser.", &v8, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    if ([v2 requestedService] == 1)
    {
      [*(*(a1 + 32) + 24) setDeviceActionType:1];
      [*(*(a1 + 32) + 24) setNeedsSetup:1];
    }

    *(*(a1 + 32) + 16) = 3;
  }

  else if (v3 == 3)
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[TRNearbyDeviceAdvertiser resumeAdvertising]_block_invoke";
        v5 = "%s Advertiser already running.";
LABEL_16:
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else if (_TRLogEnabled == 1)
  {
    v4 = TRLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRNearbyDeviceAdvertiser resumeAdvertising]_block_invoke";
      v5 = "%s Failed to resume advertising. Advertiser is not started.";
      goto LABEL_16;
    }

LABEL_17:
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopAdvertising
{
  advertiserQ = self->_advertiserQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TRNearbyDeviceAdvertiser_stopAdvertising__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(advertiserQ, block);
}

void __43__TRNearbyDeviceAdvertiser_stopAdvertising__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 == 5 || v3 == 3)
  {
    if (_TRLogEnabled == 1)
    {
      v5 = TRLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[TRNearbyDeviceAdvertiser stopAdvertising]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Stopping advertiser.", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v2[2] = 4;
    [*(*(a1 + 32) + 24) invalidate];
  }

  else if (v3 == 1)
  {
    if (_TRLogEnabled == 1)
    {
      v6 = TRLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[TRNearbyDeviceAdvertiser stopAdvertising]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Advertiser stopped.", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v7 = [v2 delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [*(a1 + 32) delegate];
      [v9 nearbyDeviceAdvertiserDidStopAdvertising:*(a1 + 32)];
LABEL_24:
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[TRNearbyDeviceAdvertiser stopAdvertising]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to stop advertising. Advertiser is not started.", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v11 = [v2 delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = *MEMORY[0x277CCA470];
      v17[0] = *MEMORY[0x277CCA450];
      v17[1] = v13;
      v18[0] = @"Failed to stop advertising.";
      v18[1] = @"Advertiser is not started.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9301 userInfo:v9];
      v15 = [*(a1 + 32) delegate];
      [v15 nearbyDeviceAdvertiser:*(a1 + 32) didFailToStopAdvertisingWithError:v14];

      goto LABEL_24;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivationWithError:(id)a3
{
  v4 = a3;
  advertiserQ = self->_advertiserQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TRNearbyDeviceAdvertiser__handleActivationWithError___block_invoke;
  v7[3] = &unk_279DCEC20;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(advertiserQ, v7);
}

void __55__TRNearbyDeviceAdvertiser__handleActivationWithError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (_TRLogEnabled == 1)
    {
      v2 = TRLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = *(*(a1 + 40) + 24);
        v15 = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "<%@> activation error %@", &v15, 0x16u);
      }
    }

    *(*(a1 + 40) + 16) = 1;
    v5 = *(a1 + 40);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;

    v7 = [*(a1 + 40) delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [*(a1 + 40) delegate];
      [v9 nearbyDeviceAdvertiser:*(a1 + 40) didFailToStartAdvertisingWithError:*(a1 + 32)];
LABEL_14:
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 40) + 24);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "SFService activation completed <%@>", &v15, 0xCu);
      }
    }

    *(*(a1 + 40) + 16) = 3;
    v12 = [*(a1 + 40) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v9 = [*(a1 + 40) delegate];
      [v9 nearbyDeviceAdvertiserDidStartAdvertising:*(a1 + 40)];
      goto LABEL_14;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleInvalidation
{
  advertiserQ = self->_advertiserQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TRNearbyDeviceAdvertiser__handleInvalidation__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(advertiserQ, block);
}

void __47__TRNearbyDeviceAdvertiser__handleInvalidation__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRNearbyDeviceAdvertiser _handleInvalidation]_block_invoke";
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "%s SFService invalidated", buf, 0xCu);
    }
  }

  *(*(a1 + 32) + 16) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TRNearbyDeviceAdvertiser__handleInvalidation__block_invoke_33;
  block[3] = &unk_279DCEBF8;
  block[4] = v5;
  dispatch_barrier_sync(v6, block);
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 nearbyDeviceAdvertiserDidStopAdvertising:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __47__TRNearbyDeviceAdvertiser__handleInvalidation__block_invoke_33(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) sessionsTable];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 32) sessionsTable];
        v9 = [v8 objectForKey:v7];

        [v9 disconnect];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) sessionsTable];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleInterruption
{
  v7 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TRNearbyDeviceAdvertiser _handleInterruption]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s SFService interrupted", &v5, 0xCu);
    }
  }

  [(TRNearbyDeviceAdvertiser *)self _handleInvalidation];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleEventMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TRNearbyDeviceAdvertiser__handleEventMessage___block_invoke;
  v6[3] = &unk_279DCF250;
  v7 = v4;
  v5 = v4;
  [(TRNearbyDeviceAdvertiser *)self _requestSessionForMessage:v5 withCallback:v6];
}

void __48__TRNearbyDeviceAdvertiser__handleEventMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 connection];
    v8 = [v7 eventMessageHandler];
    v8[2](v8, *(a1 + 32));
  }

  else if (_TRLogEnabled == 1)
  {
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[TRNearbyDeviceAdvertiser _handleEventMessage:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Error fetching session: %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequestMessage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TRNearbyDeviceAdvertiser__handleRequestMessage___block_invoke;
  v6[3] = &unk_279DCF278;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(TRNearbyDeviceAdvertiser *)self _requestSessionForMessage:v5 withCallback:v6];
}

void __50__TRNearbyDeviceAdvertiser__handleRequestMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v8 = [a2 connection];
    v4 = [v8 requestMessageHandler];
    v4[2](v4, *(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v6 _respondToRequest:v7 withError:a3];
  }
}

- (void)_requestSessionForMessage:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 peerDevice];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  sessionsTableQ = self->_sessionsTableQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TRNearbyDeviceAdvertiser__requestSessionForMessage_withCallback___block_invoke;
  block[3] = &unk_279DCF2A0;
  v17 = &v18;
  block[4] = self;
  v10 = v8;
  v16 = v10;
  dispatch_sync(sessionsTableQ, block);
  v11 = v19[5];
  if (!v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__TRNearbyDeviceAdvertiser__requestSessionForMessage_withCallback___block_invoke_2;
    v13[3] = &unk_279DCF2C8;
    v14 = v7;
    [(TRNearbyDeviceAdvertiser *)self _handleNewConnectionFromPeerDevice:v10 withCompletionHandler:v13];
    v12 = v14;
LABEL_6:

    goto LABEL_7;
  }

  if (([v11 isConnected] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9101 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
    goto LABEL_6;
  }

  (*(v7 + 2))(v7, v19[5], 0);
LABEL_7:

  _Block_object_dispose(&v18, 8);
}

void __67__TRNearbyDeviceAdvertiser__requestSessionForMessage_withCallback___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) sessionsTable];
  v2 = [*(a1 + 40) identifier];
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_handleNewConnectionFromPeerDevice:(id)a3 withCompletionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 identifier];
      *buf = 136315394;
      v19 = "[TRNearbyDeviceAdvertiser _handleNewConnectionFromPeerDevice:withCompletionHandler:]";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s New connection request from device: %@", buf, 0x16u);
    }
  }

  v10 = [[TRNearbyDevice alloc] initWithRepresentedDevice:v6 supportedService:[(TRNearbyDeviceAdvertiser *)self requestedService]];
  v11 = [(TRNearbyDeviceAdvertiser *)self delegate];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__TRNearbyDeviceAdvertiser__handleNewConnectionFromPeerDevice_withCompletionHandler___block_invoke;
  v15[3] = &unk_279DCF2F0;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  [v11 nearbyDeviceAdvertiser:self didReceiveConnectionRequestFromDevice:v10 requestHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __85__TRNearbyDeviceAdvertiser__handleNewConnectionFromPeerDevice_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Must provide a valid session object to accept the connection" userInfo:0];
      objc_exception_throw(v14);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__TRNearbyDeviceAdvertiser__handleNewConnectionFromPeerDevice_withCompletionHandler___block_invoke_2;
    block[3] = &unk_279DCED88;
    block[4] = v7;
    v9 = v5;
    v16 = v9;
    v17 = *(a1 + 40);
    dispatch_barrier_async(v8, block);
    v10 = [TRServerConnection alloc];
    v11 = [*(a1 + 32) service];
    v12 = [(TRServerConnection *)v10 initWithService:v11];

    [v9 setConnection:v12];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9100 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __85__TRNearbyDeviceAdvertiser__handleNewConnectionFromPeerDevice_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) sessionsTable];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identifier];
  [v4 setObject:v2 forKey:v3];
}

- (void)_respondToRequest:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(TRErrorResponse);
  [(TRErrorResponse *)v11 setError:v6];

  v8 = [objc_alloc(MEMORY[0x277D54CD8]) initWithRequestMessage:v7];
  v9 = [TRMessageEncoder encodeMessage:v11];
  [v8 setBodyData:v9];

  v10 = [v7 peerDevice];

  [v8 setPeerDevice:v10];
  [(SFService *)self->_service sendResponse:v8];
}

- (TRNearbyDeviceAdvertiserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end