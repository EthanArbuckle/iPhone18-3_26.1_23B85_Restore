@interface WFScanManager
- (WFScanManager)init;
- (WFScanManager)initWithScanProxy:(id)proxy delegate:(id)delegate;
- (WFScanManagerDelegate)delegate;
- (double)setTwentyPercentSkew:(double)skew;
- (id)_knownHiddenNetworkNames;
- (id)hotspotHelperForScanRecord:(id)record;
- (int64_t)state;
- (void)_cancelQueuedScan;
- (void)_checkForNoNetworksFound;
- (void)_processNextScan;
- (void)_queueScan;
- (void)_removeQueuedScans;
- (void)_resetNoNetworksFoundCounters;
- (void)_scan;
- (void)_scanningDidFinishWithError:(id)error;
- (void)_scanningWillStart;
- (void)_startHotspotPluginScan;
- (void)_stopNetworkPluginScan;
- (void)_updatePartialScanResults:(id)results;
- (void)pause;
- (void)resume;
- (void)setScanInterval:(double)interval;
- (void)setState:(int64_t)state;
- (void)start;
- (void)stop;
@end

@implementation WFScanManager

- (WFScanManager)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFScanManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)start
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      state = [(WFScanManager *)self state];
      if (state > 3)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_279EBE378[state];
      }

      v18 = 138412290;
      v19 = v7;
      _os_log_impl(&dword_273ECD000, v5, v4, "starting scan manager (current state='%@')", &v18, 0xCu);
    }
  }

  scanProxy = [(WFScanManager *)self scanProxy];
  isScanningAllowed = [scanProxy isScanningAllowed];

  if (isScanningAllowed)
  {
    if ([(WFScanManager *)self state])
    {
      v10 = WFLogForCategory(6uLL);
      v11 = OSLogForWFLogLevel(2uLL);
      if (WFCurrentLogLevel() >= 2 && v10)
      {
        v12 = v10;
        if (os_log_type_enabled(v12, v11))
        {
          state2 = [(WFScanManager *)self state];
          if (state2 > 3)
          {
            v14 = 0;
          }

          else
          {
            v14 = off_279EBE378[state2];
          }

          v18 = 138412290;
          v19 = v14;
          _os_log_impl(&dword_273ECD000, v12, v11, "scanning is already started (state='%@').", &v18, 0xCu);
        }
      }
    }

    else
    {
      [(WFScanManager *)self setState:1];
      self->_numberOfScansPerformed = 0;
      [(WFScanManager *)self _scan];
      [(WFScanManager *)self _startHotspotPluginScan];
    }
  }

  else
  {
    v15 = WFLogForCategory(6uLL);
    v16 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v15 && os_log_type_enabled(v15, v16))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_273ECD000, v15, v16, "interface is powered OFF, pausing scan state.", &v18, 2u);
    }

    [(WFScanManager *)self setState:3];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v16 = *MEMORY[0x277D85DE8];
  state = [(WFScanManager *)self state];
  v4 = WFLogForCategory(6uLL);
  if (state)
  {
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, v5))
      {
        state2 = [(WFScanManager *)self state];
        if (state2 > 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = off_279EBE378[state2];
        }

        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_273ECD000, v6, v5, "stopping scan manager (current state='%@')", &v14, 0xCu);
      }
    }

    [(WFScanManager *)self setState:0];
    [(WFScanManager *)self setNetworks:0];
    [(WFScanManager *)self _removeQueuedScans];
    [(WFScanManager *)self _cancelQueuedScan];
    [(WFScanManager *)self _stopNetworkPluginScan];
    self->_numberOfScansPerformed = 0;
  }

  else
  {
    v9 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v4)
    {
      v10 = v4;
      if (os_log_type_enabled(v10, v9))
      {
        state3 = [(WFScanManager *)self state];
        if (state3 > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_279EBE378[state3];
        }

        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_273ECD000, v10, v9, "unable to stop scan manager, already paused (current state='%@')", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v17 = *MEMORY[0x277D85DE8];
  state = [(WFScanManager *)self state];
  v4 = WFLogForCategory(6uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (state == 3)
  {
    if (v7)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v5))
      {
        state2 = [(WFScanManager *)self state];
        if (state2 > 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_279EBE378[state2];
        }

        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_273ECD000, v8, v5, "unable to pause scan manager, already paused (current state='%@')", &v15, 0xCu);
      }
    }
  }

  else
  {
    if (v7)
    {
      v11 = v4;
      if (os_log_type_enabled(v11, v5))
      {
        state3 = [(WFScanManager *)self state];
        if (state3 > 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = off_279EBE378[state3];
        }

        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_273ECD000, v11, v5, "pausing scan manager (current state='%@')", &v15, 0xCu);
      }
    }

    [(WFScanManager *)self setState:3];
    [(WFScanManager *)self setNetworks:0];
    [(WFScanManager *)self _removeQueuedScans];
    [(WFScanManager *)self _cancelQueuedScan];
    [(WFScanManager *)self _stopNetworkPluginScan];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v20 = *MEMORY[0x277D85DE8];
  _canResumeScanning = [(WFScanManager *)self _canResumeScanning];
  v4 = WFLogForCategory(6uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!_canResumeScanning)
  {
    if (v7)
    {
      v11 = v4;
      if (os_log_type_enabled(v11, v5))
      {
        state = [(WFScanManager *)self state];
        if (state > 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = off_279EBE378[state];
        }

        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_273ECD000, v11, v5, "unable to resume scan manager, already resumed (current state='%@')", &v18, 0xCu);
      }
    }

    goto LABEL_28;
  }

  if (v7)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v5))
    {
      state2 = [(WFScanManager *)self state];
      if (state2 > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_279EBE378[state2];
      }

      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_273ECD000, v8, v5, "resuming scan manager (current state='%@')", &v18, 0xCu);
    }
  }

  scanProxy = [(WFScanManager *)self scanProxy];
  isScanningAllowed = [scanProxy isScanningAllowed];

  if (!isScanningAllowed)
  {
    v4 = WFLogForCategory(6uLL);
    v16 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v16))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_273ECD000, v4, v16, "can't resume scanning, power is off.", &v18, 2u);
    }

LABEL_28:

    goto LABEL_29;
  }

  [(WFScanManager *)self setState:1];
  [(WFScanManager *)self _scan];
  [(WFScanManager *)self _startHotspotPluginScan];
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)setScanInterval:(double)interval
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_scanInterval != interval)
  {
    v5 = WFLogForCategory(6uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
    {
      scanInterval = self->_scanInterval;
      v9 = 134218240;
      v10 = scanInterval;
      v11 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_273ECD000, v5, v6, "scan interval changed from %f to %f", &v9, 0x16u);
    }

    self->_scanInterval = interval;
    if ([(WFScanManager *)self state]== 1)
    {
      [(WFScanManager *)self _cancelQueuedScan];
      [(WFScanManager *)self _queueScan];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WFScanManager *)self state]!= state)
  {
    state = [(WFScanManager *)self state];
    internalQueue = self->_internalQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26__WFScanManager_setState___block_invoke;
    v13[3] = &unk_279EBCFB8;
    v13[4] = self;
    v13[5] = state;
    dispatch_barrier_async(internalQueue, v13);
    v7 = WFLogForCategory(6uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
    {
      if (state > 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_279EBE378[state];
      }

      if (state > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_279EBE378[state];
      }

      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_273ECD000, v7, v8, "scan manager state changed from %@ to %@", buf, 0x16u);
    }

    delegate = [(WFScanManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scanManager:self stateDidChange:state];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__WFScanManager_state__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)setTwentyPercentSkew:(double)skew
{
  v3 = skew - skew * 0.1;
  v4 = skew * 0.1 + skew;
  v5 = arc4random();
  return v3 + (v5 + ((v5 / 0x7FFFFFFF) | ((v5 / 0x7FFFFFFF) << 31))) / 2147483650.0 * (v4 - v3);
}

- (void)_queueScan
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([(WFScanManager *)self state]== 1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3042000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__6;
    objc_initWeak(v20, self);
    if (self->_singleScanBlock)
    {
      v12 = WFLogForCategory(6uLL);
      v13 = OSLogForWFLogLevel(2uLL);
      if (WFCurrentLogLevel() >= 2 && v12 && os_log_type_enabled(v12, v13))
      {
        *v15 = 0;
        _os_log_impl(&dword_273ECD000, v12, v13, "Won't dispatch another scan 'timer'(dispatch_after now) as there's already one waiting to execute", v15, 2u);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__WFScanManager__queueScan__block_invoke;
      block[3] = &unk_279EBCD88;
      block[4] = &buf;
      v3 = dispatch_block_create(0, block);
      [(WFScanManager *)self setSingleScanBlock:v3];

      [(WFScanManager *)self setTwentyPercentSkew:self->_scanInterval];
      v5 = dispatch_time(0, (v4 * 1000000000.0));
      dispatch_after(v5, self->_scanDispatchQueue, self->_singleScanBlock);
    }

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v20);
  }

  else
  {
    v6 = WFLogForCategory(6uLL);
    v7 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        state = [(WFScanManager *)self state];
        if (state > 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_279EBE378[state];
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_273ECD000, v8, v7, "can't queue scan, scanning state is not Idle, it's %@", &buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __27__WFScanManager__queueScan__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained _scan];
}

- (void)_cancelQueuedScan
{
  scanDispatchQueue = self->_scanDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFScanManager__cancelQueuedScan__block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(scanDispatchQueue, block);
}

void __34__WFScanManager__cancelQueuedScan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) singleScanBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) singleScanBlock];
    dispatch_block_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setSingleScanBlock:0];
  }
}

- (void)_scan
{
  scanProxy = [(WFScanManager *)self scanProxy];
  isScanningAllowed = [scanProxy isScanningAllowed];

  if (isScanningAllowed)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(WFScanManager *)self setNetworks:v5];

    [(WFScanManager *)self _scanningWillStart];
    scanDispatchQueue = self->_scanDispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__WFScanManager__scan__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(scanDispatchQueue, block);
  }

  else
  {
    v7 = WFLogForCategory(6uLL);
    v8 = OSLogForWFLogLevel(2uLL);
    if (WFCurrentLogLevel() >= 2 && v7 && os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v7, v8, "stopping scan, power is OFF", buf, 2u);
    }
  }
}

void __22__WFScanManager__scan__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) scanProxy];
  v3 = [v2 scannableChannels];

  if (v3)
  {
    v47 = v3;
    v4 = WFSplitChannelsBetweenBands(v3);
    v44 = a1;
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    if (v6 >= 4)
    {
      *(v5 + 112) = 0;
      v7 = WFLogForCategory(6uLL);
      v8 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v7, v8, "resetting scan count for low priority", buf, 2u);
      }
    }

    v9 = v6 - 1;
    v10 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v61 count:16];
    v45 = v11;
    if (v12)
    {
      v13 = v12;
      v14 = *v53;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = [WFScanRequest scanRequestForChannels:v16];
          [v17 setIncludeBSSList:1];
          [v17 setLowPriorityScan:v9 < 3];
          v18 = WFLogForCategory(6uLL);
          if (v17)
          {
            v19 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() >= 4 && v18 && os_log_type_enabled(v18, v19))
            {
              *buf = 138412290;
              v57 = v17;
              _os_log_impl(&dword_273ECD000, v18, v19, "created scan request: %@", buf, 0xCu);
            }

            [v10 addObject:v17];
          }

          else
          {
            v20 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v20))
            {
              *buf = 138543362;
              v57 = v16;
              _os_log_impl(&dword_273ECD000, v18, v20, "Unable to create scan request from channels %{public}@", buf, 0xCu);
            }

            v11 = v45;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v13);
    }

    v21 = [*(v44 + 32) _knownHiddenNetworkNames];
    v22 = v21;
    v46 = v10;
    if (v21)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = [v21 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        do
        {
          v26 = v22;
          for (j = 0; j != v24; ++j)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v26);
            }

            v28 = *(*(&v48 + 1) + 8 * j);
            v29 = [WFScanRequest scanRequestForSSID:v28 channels:v47];
            [v29 setIncludeBSSList:1];
            [v29 setLowPriorityScan:v9 < 3];
            v30 = WFLogForCategory(6uLL);
            if (v29)
            {
              v31 = OSLogForWFLogLevel(4uLL);
              if (WFCurrentLogLevel() >= 4 && v30 && os_log_type_enabled(v30, v31))
              {
                *buf = 138412290;
                v57 = v28;
                _os_log_impl(&dword_273ECD000, v30, v31, "created directed scan for %@", buf, 0xCu);
              }

              [v46 addObject:v29];
            }

            else
            {
              v32 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v32))
              {
                *buf = 138412546;
                v57 = v28;
                v58 = 2114;
                v59 = v47;
                _os_log_impl(&dword_273ECD000, v30, v32, "Unable to create scan request for ssid %@ from channels %{public}@", buf, 0x16u);
              }
            }
          }

          v22 = v26;
          v24 = [v26 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v24);
      }
    }

    else
    {
      v37 = WFLogForCategory(6uLL);
      v38 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v37 && os_log_type_enabled(v37, v38))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v37, v38, "no hidden networks to scan", buf, 2u);
      }
    }

    v39 = WFLogForCategory(6uLL);
    v40 = OSLogForWFLogLevel(1uLL);
    v3 = v47;
    if (WFCurrentLogLevel() && v39)
    {
      v41 = v39;
      if (os_log_type_enabled(v41, v40))
      {
        v42 = [v46 count];
        *buf = 134217984;
        v57 = v42;
        _os_log_impl(&dword_273ECD000, v41, v40, "queuing scans: %lu", buf, 0xCu);
      }
    }

    [*(v44 + 32) setScanQueue:v46];
    [*(v44 + 32) _processNextScan];

    v36 = v45;
  }

  else
  {
    v33 = WFLogForCategory(6uLL);
    v34 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v33 && os_log_type_enabled(v33, v34))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v33, v34, "device scan channels are nil", buf, 2u);
    }

    v35 = *(a1 + 32);
    v36 = [MEMORY[0x277CCA9B8] scanErrorWithReason:4];
    [v35 _scanningDidFinishWithError:v36];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_processNextScan
{
  v31 = *MEMORY[0x277D85DE8];
  scanQueue = [(WFScanManager *)self scanQueue];
  if ([scanQueue count])
  {
    _isScanning = [(WFScanManager *)self _isScanning];

    if (_isScanning)
    {
      scanQueue2 = [(WFScanManager *)self scanQueue];
      firstObject = [scanQueue2 firstObject];

      v7 = WFLogForCategory(6uLL);
      v8 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = firstObject;
        _os_log_impl(&dword_273ECD000, v7, v8, "{SCAN+} starting scan: %@", &buf, 0xCu);
      }

      delegate = [(WFScanManager *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [(WFScanManager *)self delegate];
        [delegate2 scanManager:self willStartScanRequest:firstObject];
      }

      if ([(WFScanManager *)self supportsUnfilteredScanning]&& self->_doUnFilteredScanning)
      {
        v12 = WFLogForCategory(6uLL);
        v13 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_273ECD000, v12, v13, "removing scan filter", &buf, 2u);
        }

        [firstObject setApplyRssiThresholdFilter:0];
      }

      date = [MEMORY[0x277CBEAA8] date];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x2020000000;
      ssid = [firstObject ssid];
      v16 = ssid != 0;

      v30 = v16;
      objc_initWeak(&location, self);
      scanProxy = [(WFScanManager *)self scanProxy];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __33__WFScanManager__processNextScan__block_invoke;
      v22[3] = &unk_279EBE310;
      objc_copyWeak(&v26, &location);
      v18 = date;
      v23 = v18;
      v19 = firstObject;
      v24 = v19;
      p_buf = &buf;
      [scanProxy performScanWithRequest:v19 reply:v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);

      v20 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
  }

  v21 = *MEMORY[0x277D85DE8];

  [(WFScanManager *)self _scanningDidFinishWithError:0];
}

void __33__WFScanManager__processNextScan__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained scanDispatchQueue];

    if (v9)
    {
      v10 = [v8 scanDispatchQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __33__WFScanManager__processNextScan__block_invoke_2;
      v11[3] = &unk_279EBE2E8;
      v12 = *(a1 + 32);
      v13 = v5;
      v14 = *(a1 + 40);
      v15 = v6;
      v16 = v8;
      v17 = *(a1 + 48);
      dispatch_async(v10, v11);
    }
  }
}

void __33__WFScanManager__processNextScan__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = -v2;
  v4 = *(a1 + 40);
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v4)
  {
    if (v8 && os_log_type_enabled(v5, v6))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v33 = 134218498;
      v34 = v3;
      v35 = 2112;
      *v36 = v9;
      *&v36[8] = 2112;
      *&v36[10] = v10;
      _os_log_impl(&dword_273ECD000, v5, v6, "{SCAN-} %f sec, scan error %@ for request: %@", &v33, 0x20u);
    }
  }

  else if (v8)
  {
    v11 = v5;
    if (os_log_type_enabled(v11, v6))
    {
      v12 = [*(a1 + 56) count];
      v13 = *(a1 + 48);
      v33 = 134218498;
      v34 = v3;
      v35 = 1024;
      *v36 = v12;
      *&v36[4] = 2112;
      *&v36[6] = v13;
      _os_log_impl(&dword_273ECD000, v11, v6, "{SCAN-} %f sec, networks found %d for request: %@", &v33, 0x1Cu);
    }
  }

  v14 = [*(a1 + 64) scanQueue];
  v15 = [v14 containsObject:*(a1 + 48)];

  if ((v15 & 1) == 0)
  {
    v20 = WFLogForCategory(6uLL);
    v21 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v20 && os_log_type_enabled(v20, v21))
    {
      v22 = *(a1 + 48);
      v33 = 138412290;
      v34 = v22;
      _os_log_impl(&dword_273ECD000, v20, v21, "scan request='%@' was cancelled, disregarding result", &v33, 0xCu);
    }

    goto LABEL_39;
  }

  v16 = *(a1 + 40);
  if (v16 && [v16 code])
  {
    v17 = WFLogForCategory(6uLL);
    v18 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v17 && os_log_type_enabled(v17, v18))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_273ECD000, v17, v18, "deferring scans until device is available", &v33, 2u);
    }

    [*(a1 + 64) _removeQueuedScans];
    [*(a1 + 64) _scanningDidFinishWithError:*(a1 + 40)];
  }

  if ([*(a1 + 64) _isScanning])
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1 && ![*(a1 + 56) count])
    {
      v29 = WFLogForCategory(6uLL);
      v30 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v29)
      {
        v31 = v29;
        if (os_log_type_enabled(v31, v30))
        {
          [*(a1 + 48) ssid];
          v32 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v33 = 138412290;
          v34 = v32;
          _os_log_impl(&dword_273ECD000, v31, v30, "no result for hidden network %@", &v33, 0xCu);
        }
      }
    }

    else
    {
      [*(a1 + 64) _updatePartialScanResults:*(a1 + 56)];
    }

    v19 = [*(a1 + 64) scanQueue];
    [v19 removeObject:*(a1 + 48)];

    [*(a1 + 64) _processNextScan];
  }

  else
  {
    v23 = WFLogForCategory(6uLL);
    v24 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v23 && os_log_type_enabled(v23, v24))
    {
      v25 = *(a1 + 48);
      v33 = 138412290;
      v34 = v25;
      _os_log_impl(&dword_273ECD000, v23, v24, "discarding results from: %@, this request was cancelled.", &v33, 0xCu);
    }
  }

  v26 = [*(a1 + 64) delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v20 = [*(a1 + 64) delegate];
    [v20 scanManager:*(a1 + 64) didFinishScanRequest:*(a1 + 48) results:*(a1 + 56) error:*(a1 + 40) timeElapsed:v3];
LABEL_39:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updatePartialScanResults:(id)results
{
  v48 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  networks = [(WFScanManager *)self networks];

  if (networks)
  {
    networks2 = [(WFScanManager *)self networks];
    v7 = [networks2 mutableCopy];

    [v7 intersectSet:resultsCopy];
    if ([v7 count])
    {
      v8 = WFLogForCategory(6uLL);
      v9 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v8)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [v7 count];
          logStringWithScanRecords = [v7 logStringWithScanRecords];
          *buf = 67109378;
          v45 = v11;
          v46 = 2112;
          v47 = logStringWithScanRecords;
          _os_log_impl(&dword_273ECD000, v10, v9, "found duplicate (%d networks): %@", buf, 0x12u);
        }
      }
    }

    v13 = [resultsCopy mutableCopy];
    networks3 = [(WFScanManager *)self networks];
    [v13 minusSet:networks3];

    if (v13)
    {
      v15 = WFLogForCategory(6uLL);
      v16 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v15)
      {
        v17 = v15;
        if (os_log_type_enabled(v17, v16))
        {
          v18 = [v13 count];
          logStringWithScanRecords2 = [v13 logStringWithScanRecords];
          *buf = 67109378;
          v45 = v18;
          v46 = 2112;
          v47 = logStringWithScanRecords2;
          _os_log_impl(&dword_273ECD000, v17, v16, "found new networks (%d networks): %@", buf, 0x12u);
        }
      }
    }
  }

  networks4 = [(WFScanManager *)self networks];
  [networks4 compareAndUpdateDuplicateScanRecords:resultsCopy];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  networks5 = [(WFScanManager *)self networks];
  v22 = [networks5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(networks5);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        v27 = [(WFScanManager *)self hotspotHelperForScanRecord:v26];
        v28 = v27;
        if (v27)
        {
          label = [v27 label];
          [v26 setHotspotPluginLabel:label];
        }
      }

      v23 = [networks5 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v23);
  }

  networks6 = [(WFScanManager *)self networks];
  v31 = [networks6 mutableCopy];

  [v31 intersectSet:resultsCopy];
  v32 = WFLogForCategory(6uLL);
  v33 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v32)
  {
    v34 = v32;
    if (os_log_type_enabled(v34, v33))
    {
      v35 = [v31 count];
      logStringWithScanRecords3 = [v31 logStringWithScanRecords];
      *buf = 67109378;
      v45 = v35;
      v46 = 2112;
      v47 = logStringWithScanRecords3;
      _os_log_impl(&dword_273ECD000, v34, v33, "partial scan results (%d networks): %@", buf, 0x12u);
    }
  }

  delegate = [(WFScanManager *)self delegate];
  [delegate scanManager:self updatedPartialResults:v31];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_scanningWillStart
{
  v3 = WFLogForCategory(6uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v3, v4, "scanning will start", v6, 2u);
  }

  [(WFScanManager *)self setState:2];
  delegate = [(WFScanManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scanManagerScanningWillStart:self];
  }
}

- (void)_scanningDidFinishWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      state = [(WFScanManager *)self state];
      if (state > 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_279EBE378[state];
      }

      networks = [(WFScanManager *)self networks];
      *buf = 138412802;
      v21 = v9;
      v22 = 2048;
      v23 = [networks count];
      v24 = 1024;
      supportsUnfilteredScanning = [(WFScanManager *)self supportsUnfilteredScanning];
      _os_log_impl(&dword_273ECD000, v7, v6, "scanning did finish (current state='%@'), results=%lu, supportsUnfilteredScanning=%u", buf, 0x1Cu);
    }
  }

  ++self->_numberOfScansPerformed;
  if ([(WFScanManager *)self supportsUnfilteredScanning])
  {
    if (errorCopy)
    {
      [(WFScanManager *)self _resetNoNetworksFoundCounters];
    }

    else
    {
      [(WFScanManager *)self _checkForNoNetworksFound];
    }
  }

  delegate = [(WFScanManager *)self delegate];
  networks2 = [(WFScanManager *)self networks];
  [delegate scanManagerScanningDidFinish:self withResults:networks2 error:errorCopy];

  networks3 = [(WFScanManager *)self networks];
  if (networks3)
  {
    v14 = networks3;
    hotspotPluginNetworks = [(WFScanManager *)self hotspotPluginNetworks];

    if (hotspotPluginNetworks)
    {
      if (objc_opt_respondsToSelector())
      {
        hotspotPluginNetworks2 = [(WFScanManager *)self hotspotPluginNetworks];
        [delegate scanManager:self didFindHotspotHelperNetworks:hotspotPluginNetworks2];
      }
    }
  }

  if ([(WFScanManager *)self state]!= 3 && [(WFScanManager *)self state])
  {
    [(WFScanManager *)self setState:1];
    singleScanBlock = self->_singleScanBlock;
    self->_singleScanBlock = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WFScanManager__scanningDidFinishWithError___block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_checkForNoNetworksFound
{
  networks = [(WFScanManager *)self networks];
  v4 = [networks count];

  if (v4)
  {

    [(WFScanManager *)self _resetNoNetworksFoundCounters];
  }

  else
  {
    if (self->_doUnFilteredScanning)
    {
      v5 = self->_consecutiveZeroUnFilteredScanResults + 1;
      self->_consecutiveZeroUnFilteredScanResults = v5;
      if (v5 < 2)
      {
        return;
      }
    }

    else
    {
      ++self->_consecutiveZeroFilteredScanResults;
      self->_doUnFilteredScanning = 1;
    }

    scanProxy = [(WFScanManager *)self scanProxy];
    [scanProxy initiateNoNetworksSoftError];
  }
}

- (void)_resetNoNetworksFoundCounters
{
  self->_doUnFilteredScanning = 0;
  self->_consecutiveZeroFilteredScanResults = 0;
  self->_consecutiveZeroUnFilteredScanResults = 0;
}

- (void)_startHotspotPluginScan
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(WFScanManager *)self supportsHotspotHelper])
  {
    v3 = WFLogForCategory(6uLL);
    v5 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v5))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "hotspot helper is not supported", buf, 2u);
    }

    goto LABEL_7;
  }

  if ([(WFScanManager *)self hotspotHelperScanning])
  {
    v3 = WFLogForCategory(6uLL);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "hotspot helper is already scanning", buf, 2u);
    }

LABEL_7:

    goto LABEL_25;
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v13, buf);
  v7 = CNScanListFilterStart();

  v8 = WFLogForCategory(6uLL);
  v9 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v8 && os_log_type_enabled(v8, v9))
  {
    *v15 = 67109120;
    v16 = v7;
    _os_log_impl(&dword_273ECD000, v8, v9, "starting hotspot helper scanning success=%d", v15, 8u);
  }

  if (v7)
  {
    [(WFScanManager *)self setHotspotHelperScanning:1];
  }

  else
  {
    v10 = WFLogForCategory(6uLL);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      *v15 = 0;
      _os_log_impl(&dword_273ECD000, v10, v11, "unable to register for CN scan list filtering", v15, 2u);
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
}

void __40__WFScanManager__startHotspotPluginScan__block_invoke(uint64_t a1, WFHotspotHelperNetwork *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = [MEMORY[0x277CBEB58] set];
  v5 = WFLogForCategory(6uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 138412546;
    v38 = a2;
    v39 = 2112;
    v40 = a3;
    _os_log_impl(&dword_273ECD000, v5, v6, "CN Callback(%@): %@", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v30 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = CNNetworkGetSSIDString();
        v12 = CNNetworkGetPassword();
        v13 = CNNetworkGetPluginBundleID();
        v14 = CNNetworkCopyPluginNames();
        if (v14)
        {
          v15 = v14;
          v16 = MEMORY[0x277CCAB68];
          v17 = [v14 objectAtIndex:0];
          v18 = [v16 stringWithString:v17];

          if ([v15 count] >= 2)
          {
            v19 = 2;
            v20 = 1;
            do
            {
              v21 = [v15 objectAtIndex:v20];
              [v18 appendFormat:@", %@", v21];

              v20 = v19;
            }

            while ([v15 count] > v19++);
          }

          CFRelease(v15);
        }

        else
        {
          v18 = 0;
        }

        v23 = [[WFHotspotHelperNetwork alloc] initWithSSID:v11 bundleIdentifier:v13 password:v12 label:v18];
        [v31 addObject:v23];
        v24 = WFLogForCategory(6uLL);
        v25 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v24 && os_log_type_enabled(v24, v25))
        {
          *buf = 138412290;
          v38 = v23;
          _os_log_impl(&dword_273ECD000, v24, v25, "found hotspot helper network=%@", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHotspotPluginNetworks:v31];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_stopNetworkPluginScan
{
  if ([(WFScanManager *)self supportsHotspotHelper])
  {
    hotspotHelperScanning = [(WFScanManager *)self hotspotHelperScanning];
    v4 = WFLogForCategory(6uLL);
    if (hotspotHelperScanning)
    {
      v5 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v4 && os_log_type_enabled(v4, v5))
      {
        *v7 = 0;
        _os_log_impl(&dword_273ECD000, v4, v5, "stopping hotspot helper scanning", v7, 2u);
      }

      CNScanListFilterStop();
      [(WFScanManager *)self setHotspotHelperScanning:0];
    }

    else
    {
      v6 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v6))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v4, v6, "hotspot helper is not scanning", buf, 2u);
      }
    }
  }
}

- (id)hotspotHelperForScanRecord:(id)record
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  hotspotPluginNetworks = [(WFScanManager *)self hotspotPluginNetworks];
  if (hotspotPluginNetworks)
  {
    hotspotPluginNetworks2 = [(WFScanManager *)self hotspotPluginNetworks];
    v7 = [hotspotPluginNetworks2 count];

    if (v7)
    {
      hotspotPluginNetworks3 = [(WFScanManager *)self hotspotPluginNetworks];
      v9 = MEMORY[0x277CCAC30];
      ssid = [recordCopy ssid];
      v11 = [v9 predicateWithFormat:@"ssid == %@", ssid];
      v12 = [hotspotPluginNetworks3 filteredSetUsingPredicate:v11];

      if ([v12 count])
      {
        allObjects = [v12 allObjects];
        hotspotPluginNetworks = [allObjects firstObject];

        v14 = WFLogForCategory(6uLL);
        v15 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v14)
        {
          v16 = v14;
          if (os_log_type_enabled(v16, v15))
          {
            ssid2 = [recordCopy ssid];
            *buf = 138412546;
            v21 = ssid2;
            v22 = 2112;
            v23 = hotspotPluginNetworks;
            _os_log_impl(&dword_273ECD000, v16, v15, "found hotspot network for %@ (helper %@)", buf, 0x16u);
          }
        }
      }

      else
      {
        hotspotPluginNetworks = 0;
      }
    }

    else
    {
      hotspotPluginNetworks = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return hotspotPluginNetworks;
}

- (id)_knownHiddenNetworkNames
{
  delegate = [(WFScanManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFScanManager *)self delegate];
    v6 = [delegate2 scanManagerKnownHiddenNetworkNames:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeQueuedScans
{
  objc_initWeak(&location, self);
  scanDispatchQueue = self->_scanDispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__WFScanManager__removeQueuedScans__block_invoke;
  v4[3] = &unk_279EBCEA0;
  objc_copyWeak(&v5, &location);
  dispatch_async(scanDispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __35__WFScanManager__removeQueuedScans__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WFLogForCategory(6uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      v5 = [WeakRetained scanQueue];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_273ECD000, v4, v3, "removing scan queue contents: %@", &v8, 0xCu);
    }
  }

  v6 = [WeakRetained scanQueue];
  [v6 removeAllObjects];

  v7 = *MEMORY[0x277D85DE8];
}

- (WFScanManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WFScanManager)initWithScanProxy:(id)proxy delegate:(id)delegate
{
  v38 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  delegateCopy = delegate;
  [proxyCopy scanInterval];
  if (v9 < 1.0)
  {
    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v27 || !os_log_type_enabled(v27, v28))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_11();
    v34 = 8;
    goto LABEL_24;
  }

  [proxyCopy scanInterval];
  self->_scanInterval = v10;
  if (!delegateCopy)
  {
LABEL_26:
    p_super = &self->super;
    self = 0;
    goto LABEL_15;
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  self->_state = 0;
  if (!proxyCopy)
  {
    v27 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v27 || !os_log_type_enabled(v27, v35))
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_11();
    v34 = 12;
LABEL_24:
    _os_log_impl(v29, v30, v31, v32, v33, v34);
LABEL_25:

    goto LABEL_26;
  }

  objc_storeStrong(&self->_scanProxy, proxy);
  v11 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
  internalQueue = self->_internalQueue;
  self->_internalQueue = v11;

  if (!self->_internalQueue)
  {
    goto LABEL_26;
  }

  v13 = dispatch_queue_create("com.apple.wifikit.scanmanager", 0);
  scanDispatchQueue = self->_scanDispatchQueue;
  self->_scanDispatchQueue = v13;

  if (!self->_scanDispatchQueue)
  {
    goto LABEL_26;
  }

  self->_doUnFilteredScanning = 0;
  self->_consecutiveZeroFilteredScanResults = 0;
  self->_consecutiveZeroUnFilteredScanResults = 0;
  v15 = objc_opt_respondsToSelector();
  v16 = 0;
  if (v15)
  {
    v16 = [delegateCopy scanManagerShouldSupportUnfilteredScanning:self];
  }

  self->_supportsUnfilteredScanning = v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = [delegateCopy scanManagerShouldSupportHotspotHelper:self];
  }

  else
  {
    v17 = 0;
  }

  self->_supportsHotspotHelper = v17;
  self->_hotspotHelperScanning = 0;
  p_super = WFLogForCategory(6uLL);
  v19 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && p_super && os_log_type_enabled(p_super, v19))
  {
    supportsUnfilteredScanning = self->_supportsUnfilteredScanning;
    supportsHotspotHelper = self->_supportsHotspotHelper;
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v20, v21, v22, v23, v24, 0xEu);
  }

LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
  return self;
}

@end