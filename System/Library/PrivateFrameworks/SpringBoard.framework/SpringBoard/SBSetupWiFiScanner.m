@interface SBSetupWiFiScanner
- (void)_thread_callCompletionHandlerWithGuessedCountries:(id)a3;
- (void)_thread_cancelScanning;
- (void)_thread_closeWifiConnection;
- (void)_thread_wifiScanComplete:(__CFArray *)a3 error:(BOOL)a4;
- (void)_wifiScanningThread;
- (void)beginScanningWithCompletionHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation SBSetupWiFiScanner

- (void)dealloc
{
  [(SBSetupWiFiScanner *)self _thread_closeWifiConnection];
  v3.receiver = self;
  v3.super_class = SBSetupWiFiScanner;
  [(SBSetupWiFiScanner *)&v3 dealloc];
}

- (void)beginScanningWithCompletionHandler:(id)a3
{
  [(SBSetupWiFiScanner *)self _setCompletionHandler:a3];
  v4 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__wifiScanningThread object:0];
  [v4 setName:@"com.apple.SpringBoard.BuddyWiFiScanning"];
  [v4 setQualityOfService:17];
  [(SBSetupWiFiScanner *)self _setScanningThread:v4];
  [v4 start];
}

- (void)_wifiScanningThread
{
  Current = CFRunLoopGetCurrent();
  v4 = *MEMORY[0x277CBECE8];
  v5 = WiFiManagerClientCreate();
  self->_wifiManager = v5;
  if (!v5)
  {
LABEL_11:

    [(SBSetupWiFiScanner *)self _thread_callCompletionHandlerWithGuessedCountries:0];
    return;
  }

  v6 = *MEMORY[0x277CBF058];
  WiFiManagerClientScheduleWithRunLoop();
  v7 = WiFiManagerClientCopyDevices();
  if (v7)
  {
    v8 = v7;
    if ((CFArrayGetCount(v7) & 0x8000000000000000) == 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == WiFiDeviceClientGetTypeID())
        {
          self->_wifiDevice = CFRetain(v10);
        }
      }
    }

    CFRelease(v8);
  }

  if (!self->_wifiDevice || (v12 = CFDictionaryCreate(v4, 0, 0, 0, 0, 0), v13 = WiFiDeviceClientScanAsync(), CFRelease(v12), v13))
  {
    [(SBSetupWiFiScanner *)self _thread_closeWifiConnection];
    goto LABEL_11;
  }

  [(SBSetupWiFiScanner *)self _setState:1];
  v14 = CFAbsoluteTimeGetCurrent();
  v15 = CFRunLoopTimerCreate(v4, v14 + 1000000.0, 1.79769313e308, 0, 0, SetupWiFiScanTimerCallback, 0);
  CFRunLoopAddTimer(Current, v15, v6);
  while ([(SBSetupWiFiScanner *)self _state]!= 2)
  {
    CFRunLoopRunInMode(v6, 1.79769313e308, 1u);
  }

  CFRunLoopTimerInvalidate(v15);

  CFRelease(v15);
}

- (void)_thread_wifiScanComplete:(__CFArray *)a3 error:(BOOL)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = [(SBSetupWiFiScanner *)self _state];
  if (a3 && v7 != 2)
  {
    if (a4)
    {
      [(SBSetupWiFiScanner *)self _thread_callCompletionHandlerWithGuessedCountries:0];
LABEL_41:
      [(SBSetupWiFiScanner *)self _setState:2];
      [(SBSetupWiFiScanner *)self _thread_closeWifiConnection];
      return;
    }

    v8 = objc_autoreleasePoolPush();
    Count = CFArrayGetCount(a3);
    if (Count < 1)
    {
      [(SBSetupWiFiScanner *)self _thread_callCompletionHandlerWithGuessedCountries:0];
LABEL_40:
      objc_autoreleasePoolPop(v8);
      goto LABEL_41;
    }

    v10 = Count;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277CCA940]);
    v13 = 0;
    v45 = 3;
    do
    {
      CFArrayGetValueAtIndex(a3, v13);
      if (WiFiNetworkGet11dCountryCodeFromIe())
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v46 length:2 encoding:1];
        [v11 addObject:v14];
      }

      ++v13;
    }

    while (v10 != v13);
    v32 = v8;
    v15 = v11;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v12 addObject:*(*(&v41 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v17);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v21)
    {
      v22 = 0;
      v23 = *v38;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [v20 countForObject:*(*(&v37 + 1) + 8 * j)];
          if (v25 > v22)
          {
            v22 = v25;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v21);

      if (!v22)
      {
        v21 = 0;
        goto LABEL_39;
      }

      v21 = [MEMORY[0x277CBEB18] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = v20;
      v27 = [v26 countByEnumeratingWithState:&v33 objects:v47 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v34;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v34 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v33 + 1) + 8 * k);
            if ([v26 countForObject:v31] == v22)
            {
              [v21 addObject:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v33 objects:v47 count:16];
        }

        while (v28);
      }
    }

LABEL_39:
    v8 = v32;
    [(SBSetupWiFiScanner *)self _thread_callCompletionHandlerWithGuessedCountries:v21];

    goto LABEL_40;
  }
}

- (void)_thread_closeWifiConnection
{
  if (self->_wifiManager)
  {
    CFRunLoopGetCurrent();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  if (self->_wifiDevice)
  {
    if ([(SBSetupWiFiScanner *)self _state]== 1)
    {
      [(SBSetupWiFiScanner *)self _setState:2];
      WiFiDeviceClientScanCancel();
    }

    CFRelease(self->_wifiDevice);
    self->_wifiDevice = 0;
  }
}

- (void)_thread_callCompletionHandlerWithGuessedCountries:(id)a3
{
  v6 = a3;
  v4 = [(SBSetupWiFiScanner *)self _completionHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
    [(SBSetupWiFiScanner *)self _setCompletionHandler:0];
  }
}

- (void)cancel
{
  v3 = [(SBSetupWiFiScanner *)self _scanningThread];
  if (v3)
  {
    v4 = v3;
    [v3 cancel];
    [(SBSetupWiFiScanner *)self performSelector:sel__thread_cancelScanning onThread:v4 withObject:0 waitUntilDone:0];
    v3 = v4;
  }
}

- (void)_thread_cancelScanning
{
  [(SBSetupWiFiScanner *)self _thread_closeWifiConnection];

  [(SBSetupWiFiScanner *)self _setState:2];
}

@end