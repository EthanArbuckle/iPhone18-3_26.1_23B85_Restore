@interface PRSharingSession
- (BOOL)trackNewBTPeer:(id)a3 withDviceModel:(id)a4 error:(id *)a5;
- (PRSharingSession)init;
- (PRSharingSession)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (PRSharingSessionDelegate)delegate;
- (void)beacon:(id)a3 didChangeState:(unint64_t)a4;
- (void)beacon:(id)a3 didOutputRangeResults:(id)a4;
- (void)didFailWithError:(id)a3;
- (void)estimator:(id)a3 didEstimateProximity:(int64_t)a4 toPeer:(id)a5;
- (void)invokeDelegateBlock:(id)a3;
- (void)logScores:(id)a3;
- (void)onNewSharingChoiceScores:(id)a3;
- (void)startInitiating;
- (void)startWatchDogWithDuration:(int64_t)a3;
- (void)stopInitiating;
- (void)stopProx;
- (void)watchDogTimedOut;
@end

@implementation PRSharingSession

- (PRSharingSession)init
{
  [(PRSharingSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)watchDogTimedOut
{
  v9 = *MEMORY[0x277D85DE8];
  MachTimeSeconds = PRCommonGetMachTimeSeconds();
  MachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = MachTimeSeconds;
    _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "Watchdog timed out %lf", &v7, 0xCu);
  }

  [(PRSharingChoice *)self->_sharingChoiceEstimator heartbeatTimeout:1 currentMachContTime:MachTimeSeconds useUpdatedScores:MachContinuousTimeSeconds];
  if ([(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
  {
    [(PRSharingSession *)self startWatchDogWithDuration:1000000000];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startWatchDogWithDuration:(int64_t)a3
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PRSharingSession_startWatchDogWithDuration___block_invoke;
  v8[3] = &unk_2788F3C40;
  objc_copyWeak(&v9, &location);
  v5 = dispatch_block_create(0, v8);
  reportWatchdog = self->_reportWatchdog;
  self->_reportWatchdog = v5;

  v7 = dispatch_time(0, a3);
  dispatch_after(v7, self->_delegateQueue, self->_reportWatchdog);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__PRSharingSession_startWatchDogWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchDogTimedOut];
}

- (PRSharingSession)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v33.receiver = self;
  v33.super_class = PRSharingSession;
  v9 = [(PRSharingSession *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v7);
    objc_storeStrong(&v10->_delegateQueue, a4);
    v10->_needToRestart = 0;
    v10->_scoresReported = 0;
    v11 = os_log_create("com.apple.proximity", "PRSharingSession");
    logger = v10->_logger;
    v10->_logger = v11;

    objc_initWeak(&location, v10);
    if (+[PRRangingDevice isSupported])
    {
      v13 = [[PRBeacon alloc] initWithDelegate:v10 queue:v10->_delegateQueue];
      nearbyDaemonSession = v10->_nearbyDaemonSession;
      v10->_nearbyDaemonSession = v13;
    }

    v15 = [[PRSharingChoice alloc] initWithQueue:v10->_delegateQueue];
    sharingChoiceEstimator = v10->_sharingChoiceEstimator;
    v10->_sharingChoiceEstimator = v15;

    [(PRSharingChoice *)v10->_sharingChoiceEstimator setCurrentlyInitiating:0];
    [(PRSharingChoice *)v10->_sharingChoiceEstimator setLogger:v10->_logger];
    v17 = v10->_sharingChoiceEstimator;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke;
    v30[3] = &unk_2788F3C68;
    objc_copyWeak(&v31, &location);
    [(PRSharingChoice *)v17 setNewScoresHandler:v30];
    v18 = [[PRProximityEstimator alloc] initSingleThresholdEstmatorWithDelegate:v10 delegateQueue:v10->_delegateQueue];
    btProxEstimator = v10->_btProxEstimator;
    v10->_btProxEstimator = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedBTPeers = v10->_trackedBTPeers;
    v10->_trackedBTPeers = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackedBTPeersDevice = v10->_trackedBTPeersDevice;
    v10->_trackedBTPeersDevice = v22;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke_2;
    block[3] = &unk_2788F3C40;
    objc_copyWeak(&v29, &location);
    v24 = dispatch_block_create(0, block);
    reportWatchdog = v10->_reportWatchdog;
    v10->_reportWatchdog = v24;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onNewSharingChoiceScores:v3];
}

void __51__PRSharingSession_initWithDelegate_delegateQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained watchDogTimedOut];
}

- (void)startInitiating
{
  [(PRSharingChoice *)self->_sharingChoiceEstimator createEstimators];
  [(PRBeacon *)self->_nearbyDaemonSession startBeaconingWithOptions:0];
  [(PRSharingChoice *)self->_sharingChoiceEstimator setCurrentlyInitiating:1];

  [(PRSharingSession *)self startWatchDogWithDuration:0];
}

- (void)stopInitiating
{
  dispatch_block_cancel(self->_reportWatchdog);
  [(PRBeacon *)self->_nearbyDaemonSession stopBeaconing];
  [(PRSharingChoice *)self->_sharingChoiceEstimator setCurrentlyInitiating:0];
  [(PRSharingSession *)self stopProx];
  self->_scoresReported = 0;
}

- (BOOL)trackNewBTPeer:(id)a3 withDviceModel:(id)a4 error:(id *)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"peerMacAddress"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PRSharingSession.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"deviceModel"}];

LABEL_3:
  if (self->_scoresReported)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      [PRSharingSession trackNewBTPeer:withDviceModel:error:];
    }

    [(PRSharingChoice *)self->_sharingChoiceEstimator reportScoresToClientAlways:1 useUpdatedScoreList:0 currentMachContTime:PRCommonGetMachContinuousTimeSeconds()];
  }

  btProxEstimator = self->_btProxEstimator;
  v13 = [PRSharingSessionHelper NSDataMacToUUID:v9];
  v14 = [(PRProximityEstimator *)btProxEstimator startEstimatingProximityFor:v13 peerDeviceModel:v11 withError:a5];

  if (v14)
  {
    [(NSMutableDictionary *)self->_trackedBTPeers setObject:&unk_2845BCA70 forKeyedSubscript:v9];
    [(NSMutableDictionary *)self->_trackedBTPeersDevice setObject:v11 forKeyedSubscript:v9];
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession trackNewBTPeer:withDviceModel:error:];
    }

    if (a5)
    {
      v15 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Failed to start estimating proximity to peer";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a5 = [v15 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:202 userInfo:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)stopProx
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_230EB5000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
}

- (void)logScores:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    for (i = 0; i < [v4 count]; ++i)
    {
      kdebug_trace();
      v6 = [MEMORY[0x277CCAB68] string];
      [v6 appendFormat:@"New scores: "];
      v7 = [v4 objectAtIndexedSubscript:i];
      v8 = [v7 btAddress];
      [v6 appendFormat:@"mac address: %@, ", v8];

      [v7 score];
      [v6 appendFormat:@"score: %f, ", v9];
      v10 = [v7 angle];
      LOBYTE(v8) = v10 == 0;

      if (v8)
      {
        [v6 appendFormat:@"angle degrees: nil, "];
        [v6 appendFormat:@"angle uncertainty: nil, "];
      }

      else
      {
        v11 = [v7 angle];
        [v11 measurement];
        [v6 appendFormat:@"angle degrees: %f, ", v12];

        v13 = [v7 angle];
        [v13 uncertainty];
        [v6 appendFormat:@"angle uncertainty: %f, ", v14];

        [v7 timestamp];
        [v6 appendFormat:@"#bighead_test mach_abs_time: %f, ", v15];
      }

      v16 = [v7 range];
      v17 = v16 == 0;

      if (v17)
      {
        [v6 appendFormat:@"range meters: nil, "];
        [v6 appendFormat:@"range uncertainty: nil, "];
      }

      else
      {
        v18 = [v7 range];
        [v18 measurement];
        [v6 appendFormat:@"range meters: %f, ", v19];

        v20 = [v7 range];
        [v20 uncertainty];
        [v6 appendFormat:@"range uncertainty: %f, ", v21];
      }

      v22 = +[PRSharingSessionHelper ProxToString:](PRSharingSessionHelper, "ProxToString:", [v7 proximity]);
      [v6 appendFormat:@"prox: %@, ", v22];

      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v6;
        _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      kdebug_trace();
    }
  }

  else
  {
    v24 = self->_logger;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v24, OS_LOG_TYPE_DEFAULT, "New scores: empty list", buf, 2u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)estimator:(id)a3 didEstimateProximity:(int64_t)a4 toPeer:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [PRSharingSessionHelper UUIDToNSDataMac:v7 len:6];
  v9 = [(NSMutableDictionary *)self->_trackedBTPeers objectForKeyedSubscript:v8];

  if (v9)
  {
    v29 = 0.0;
    v30 = 0.0;
    if (PRCommonGetAllTimes(0, &v30, &v29))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      [(NSMutableDictionary *)self->_trackedBTPeers setObject:v10 forKeyedSubscript:v8];

      v11 = [PRSharingSessionHelper reverseNSData:v8];
      [PRSharingSessionHelper UIntToHexString:[PRSharingSessionHelper NSDataToUInt64:v11] len:6];
      v12 = v30;
      v25 = buf;
      *&v26 = v30;
      WORD4(v26) = 0;
      v27 = xmmword_230EED680;
      v28[0] = 1;
      *&v28[4] = [PRSharingSessionHelper ProxToCoarseRange:a4];
      *&v28[24] = 0;
      v28[8] = 0;
      *&v28[16] = 0;
      sharingChoiceEstimator = self->_sharingChoiceEstimator;
      v14 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v25;
      }

      v22 = v26;
      v23 = v27;
      v24[0] = *v28;
      *(v24 + 10) = *&v28[10];
      [(PRSharingChoice *)sharingChoiceEstimator addBluetoothProximityEstimate:&__p currentMachContTime:v29];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = self->_logger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [PRSharingSessionHelper ProxToString:a4];
        v18 = v17;
        v19 = v25.__r_.__value_.__r.__words[0];
        if (v14 >= 0)
        {
          v19 = &v25;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 138412802;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v32 = v12;
        _os_log_impl(&dword_230EB5000, v16, OS_LOG_TYPE_DEFAULT, "PTS: BT Prox estimate of %@ for device %s at time %f", &buf, 0x20u);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession estimator:didEstimateProximity:toPeer:];
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [PRSharingSession estimator:v8 didEstimateProximity:logger toPeer:?];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)beacon:(id)a3 didOutputRangeResults:(id)a4
{
  v5 = a4;
  kdebug_trace();
  [(PRSharingChoice *)self->_sharingChoiceEstimator addRoseSolutions:v5 currentMachContTime:PRCommonGetMachContinuousTimeSeconds()];
  kdebug_trace();
}

- (void)beacon:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 > 1)
  {
    if (a4 != 3)
    {
      if (a4 != 2)
      {
        goto LABEL_28;
      }

      logger = self->_logger;
      v11 = os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT);
      v12 = 0;
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateBeaconing", buf, 2u);
        v12 = 0;
      }

      goto LABEL_27;
    }

    v15 = self->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v15, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateUnavailable", buf, 2u);
    }

    if (![(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
    {
      v7 = 3;
      goto LABEL_28;
    }

    v14 = self->_logger;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:
      v12 = 1;
LABEL_27:
      self->_needToRestart = v12;
      v7 = a4;
      goto LABEL_28;
    }

    *buf = 0;
LABEL_25:
    _os_log_impl(&dword_230EB5000, v14, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Need to restart!", buf, 2u);
    goto LABEL_26;
  }

  if (!a4)
  {
    v13 = self->_logger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v13, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateUnknown", buf, 2u);
    }

    if (![(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
    {
      v7 = 0;
      goto LABEL_28;
    }

    v14 = self->_logger;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    goto LABEL_25;
  }

  if (a4 == 1)
  {
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230EB5000, v8, OS_LOG_TYPE_DEFAULT, "PRSharingSession: PRBeaconStateIdle", buf, 2u);
    }

    if (self->_needToRestart)
    {
      v9 = self->_logger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_230EB5000, v9, OS_LOG_TYPE_DEFAULT, "PRSharingSession: Attempting to restart initiator session", buf, 2u);
      }

      [(PRSharingSession *)self startInitiating];
    }

    v7 = 1;
  }

LABEL_28:
  v16 = [(PRSharingSession *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PRSharingSession_beacon_didChangeState___block_invoke;
    v18[3] = &unk_2788F3C90;
    v18[4] = self;
    v18[5] = v7;
    [(PRSharingSession *)self invokeDelegateBlock:v18];
  }
}

void __42__PRSharingSession_beacon_didChangeState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained session:*(a1 + 32) didChangeProximitySensorState:*(a1 + 40)];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PRSharingSession_didFailWithError___block_invoke;
  v6[3] = &unk_2788F3CB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PRSharingSession *)self invokeDelegateBlock:v6];
}

void __37__PRSharingSession_didFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained session:*(a1 + 32) didFailwithError:*(a1 + 40)];
}

- (void)onNewSharingChoiceScores:(id)a3
{
  v4 = a3;
  [(PRSharingSession *)self logScores:v4];
  if (!self->_scoresReported && [v4 count])
  {
    self->_scoresReported = 1;
  }

  dispatch_block_cancel(self->_reportWatchdog);
  if ([(PRSharingChoice *)self->_sharingChoiceEstimator currentlyInitiating])
  {
    [(PRSharingSession *)self startWatchDogWithDuration:1000000000];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__PRSharingSession_onNewSharingChoiceScores___block_invoke;
  v6[3] = &unk_2788F3CB8;
  v5 = v4;
  v7 = v5;
  v8 = self;
  [(PRSharingSession *)self invokeDelegateBlock:v6];
}

void __45__PRSharingSession_onNewSharingChoiceScores___block_invoke(uint64_t a1)
{
  [*(a1 + 32) count];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 88));
  [WeakRetained session:*(a1 + 40) didEstimateScores:*(a1 + 32)];
}

- (void)invokeDelegateBlock:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v6 = v4;
  if (delegateQueue)
  {
    dispatch_async(delegateQueue, v4);
  }

  else
  {
    v4[2](v4);
  }
}

- (PRSharingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)estimator:(uint64_t)a1 didEstimateProximity:(NSObject *)a2 toPeer:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_230EB5000, a2, OS_LOG_TYPE_ERROR, "PTS: Received Proximity estimation for a device we are not tracking: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end