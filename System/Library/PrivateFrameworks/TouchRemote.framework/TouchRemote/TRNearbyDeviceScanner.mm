@interface TRNearbyDeviceScanner
- (TRNearbyDeviceScanner)init;
- (TRNearbyDeviceScannerDelegate)delegate;
- (void)_deviceFound:(id)found;
- (void)_handleActivationWithError:(id)error;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)openSession:(id)session withCompletion:(id)completion;
- (void)startScanningForDevicesWithService:(unint64_t)service;
- (void)stopScanning;
@end

@implementation TRNearbyDeviceScanner

- (TRNearbyDeviceScanner)init
{
  v6.receiver = self;
  v6.super_class = TRNearbyDeviceScanner;
  v2 = [(TRNearbyDeviceScanner *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TRNearbyDeviceScanner.scannerQ", 0);
    scannerQ = v2->_scannerQ;
    v2->_scannerQ = v3;

    v2->_state = 1;
  }

  return v2;
}

- (void)startScanningForDevicesWithService:(unint64_t)service
{
  v15 = *MEMORY[0x277D85DE8];
  delegate = [(TRNearbyDeviceScanner *)self delegate];

  if (!delegate)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"TRNearbyDeviceScanner requires a delegate." userInfo:0];
    objc_exception_throw(v9);
  }

  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[TRNearbyDeviceScanner startScanningForDevicesWithService:]";
      v13 = 2048;
      serviceCopy = service;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Start scanning for devices with service: %lu.", buf, 0x16u);
    }
  }

  scannerQ = self->_scannerQ;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke;
  v10[3] = &unk_279DCEB80;
  v10[4] = self;
  v10[5] = service;
  dispatch_async(scannerQ, v10);
  v8 = *MEMORY[0x277D85DE8];
}

void __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[2] == 1)
  {
    v2[2] = 2;
    [*(a1 + 32) setRequestedService:*(a1 + 40)];
    v3 = objc_alloc_init(MEMORY[0x277D54C68]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = dispatch_queue_create("com.apple.TRNearbyDeviceScanner.deviceDiscoveryQ", 0);
    [*(*(a1 + 32) + 24) setDispatchQueue:v6];

    [*(*(a1 + 32) + 24) setChangeFlags:2];
    if ([*(a1 + 32) requestedService] == 1)
    {
      [*(*(a1 + 32) + 24) setDiscoveryFlags:16];
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke_14;
    v22[3] = &unk_279DCF4B0;
    v22[4] = *(a1 + 32);
    v7 = MEMORY[0x27438C490](v22);
    [*(*(a1 + 32) + 24) setDeviceFoundHandler:v7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke_2;
    v21[3] = &unk_279DCF4D8;
    v21[4] = *(a1 + 32);
    v8 = MEMORY[0x27438C490](v21);
    [*(*(a1 + 32) + 24) setDeviceChangedHandler:v8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke_3;
    v20[3] = &unk_279DCEBF8;
    v20[4] = *(a1 + 32);
    v9 = MEMORY[0x27438C490](v20);
    [*(*(a1 + 32) + 24) setInvalidationHandler:v9];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke_4;
    v19[3] = &unk_279DCEBF8;
    v19[4] = *(a1 + 32);
    v10 = MEMORY[0x27438C490](v19);
    [*(*(a1 + 32) + 24) setInterruptionHandler:v10];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__TRNearbyDeviceScanner_startScanningForDevicesWithService___block_invoke_5;
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
      v26 = "[TRNearbyDeviceScanner startScanningForDevicesWithService:]_block_invoke";
      _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to start scanning. Scanner is not stopped.", buf, 0xCu);
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
    v24[0] = @"Failed to start scanning.";
    v24[1] = @"Scanner is not stopped.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9400 userInfo:v7];
    v9 = [*(a1 + 32) delegate];
    [v9 nearbyDeviceScanner:*(a1 + 32) didFailToStartScanningWithError:v8];
LABEL_11:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning
{
  scannerQ = self->_scannerQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TRNearbyDeviceScanner_stopScanning__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(scannerQ, block);
}

void __37__TRNearbyDeviceScanner_stopScanning__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3 == 3)
  {
    if (_TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[TRNearbyDeviceScanner stopScanning]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Stopping scanner.", buf, 0xCu);
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
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[TRNearbyDeviceScanner stopScanning]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Scanner stopped.", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v5 = [v2 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 nearbyDeviceScannerDidStopScanning:*(a1 + 32)];
LABEL_20:
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v9 = TRLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v19 = "[TRNearbyDeviceScanner stopScanning]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed to stop scanner. Advertiser is not started.", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v10 = [v2 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = *MEMORY[0x277CCA470];
      v16[0] = *MEMORY[0x277CCA450];
      v16[1] = v12;
      v17[0] = @"Failed to stop scanning.";
      v17[1] = @"Scanner is not started.";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9301 userInfo:v7];
      v14 = [*(a1 + 32) delegate];
      [v14 nearbyDeviceScanner:*(a1 + 32) didFailToStopScanningWithError:v13];

      goto LABEL_20;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivationWithError:(id)error
{
  errorCopy = error;
  scannerQ = self->_scannerQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TRNearbyDeviceScanner__handleActivationWithError___block_invoke;
  v7[3] = &unk_279DCEC20;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_sync(scannerQ, v7);
}

void __52__TRNearbyDeviceScanner__handleActivationWithError___block_invoke(uint64_t a1)
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
      [v9 nearbyDeviceScanner:*(a1 + 40) didFailToStartScanningWithError:*(a1 + 32)];
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
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "SFDeviceDiscovery activation completed <%@>", &v15, 0xCu);
      }
    }

    *(*(a1 + 40) + 16) = 3;
    v12 = [*(a1 + 40) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v9 = [*(a1 + 40) delegate];
      [v9 nearbyDeviceScannerDidStartScanning:*(a1 + 40)];
      goto LABEL_14;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleInvalidation
{
  scannerQ = self->_scannerQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRNearbyDeviceScanner__handleInvalidation__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(scannerQ, block);
}

void __44__TRNearbyDeviceScanner__handleInvalidation__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 nearbyDeviceScannerDidStopScanning:*(a1 + 32)];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v7 = TRLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[TRNearbyDeviceScanner _handleInvalidation]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Device discovery invalidated", buf, 0xCu);
      }
    }

    v8 = *MEMORY[0x277D85DE8];
  }
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
      v6 = "[TRNearbyDeviceScanner _handleInterruption]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Device discovery interrupted", &v5, 0xCu);
    }
  }

  [(TRNearbyDeviceScanner *)self _handleInvalidation];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_deviceFound:(id)found
{
  v15 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  if ([foundCopy distance] == 10)
  {
    if (-[TRNearbyDeviceScanner requestedService](self, "requestedService") != 1 || ([foundCopy needsSetup] & 1) != 0)
    {
      v5 = [[TRNearbyDevice alloc] initWithRepresentedDevice:foundCopy supportedService:[(TRNearbyDeviceScanner *)self requestedService]];
      delegate = [(TRNearbyDeviceScanner *)self delegate];
      [delegate nearbyDeviceScanner:self didDiscoverDevice:v5];

      goto LABEL_11;
    }

    if (_TRLogEnabled != 1)
    {
      goto LABEL_11;
    }

    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [foundCopy identifier];
      v11 = 136315394;
      v12 = "[TRNearbyDeviceScanner _deviceFound:]";
      v13 = 2112;
      v14 = identifier;
      v9 = "%s Device (%@) rejected. Does not support setup.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if ([foundCopy distance] == 20 && _TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [foundCopy identifier];
      v11 = 136315394;
      v12 = "[TRNearbyDeviceScanner _deviceFound:]";
      v13 = 2112;
      v14 = identifier;
      v9 = "%s Device (%@) rejected. Not at tap distance.";
LABEL_9:
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x16u);
    }

LABEL_10:
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)openSession:(id)session withCompletion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v7 = objc_alloc_init(TRClientConnection);
  nearbyDevice = [sessionCopy nearbyDevice];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__TRNearbyDeviceScanner_openSession_withCompletion___block_invoke;
  v12[3] = &unk_279DCF500;
  v14 = v7;
  v15 = completionCopy;
  v13 = sessionCopy;
  v9 = v7;
  v10 = sessionCopy;
  v11 = completionCopy;
  [(TRClientConnection *)v9 connectToNearbyDevice:nearbyDevice withCompletion:v12];
}

void __52__TRNearbyDeviceScanner_openSession_withCompletion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(a1 + 32) setConnection:*(a1 + 40)];
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__TRNearbyDeviceScanner_openSession_withCompletion___block_invoke_2;
    v6[3] = &unk_279DCF368;
    v7 = v3;
    v8 = *(a1 + 48);
    [v7 sendHeartbeatWithResponseHandler:v6];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __52__TRNearbyDeviceScanner_openSession_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) startHeartbeat];
  }

  (*(*(a1 + 40) + 16))();
}

- (TRNearbyDeviceScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end