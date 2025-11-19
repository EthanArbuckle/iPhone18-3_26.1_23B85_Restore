@interface PRBeaconRangingSession
- (PRBeaconRangingSession)init;
- (PRBeaconRangingSession)initWithQueue:(id)a3;
- (PRBeaconRangingSessionDelegate)delegate;
- (void)beaconListener:(id)a3 didChangeState:(unint64_t)a4;
- (void)beaconListener:(id)a3 didOutputRangeResults:(id)a4;
- (void)didFailWithError:(id)a3;
- (void)startRangingInternal;
- (void)startRangingWithBeaconsMatchingDescriptor:(id)a3;
- (void)stopRangingInternal;
@end

@implementation PRBeaconRangingSession

- (PRBeaconRangingSession)init
{
  [(PRBeaconRangingSession *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRBeaconRangingSession)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PRBeaconRangingSession;
  v6 = [(PRBeaconRangingSession *)&v12 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.Proximity", "Beacon");
    logger = v6->_logger;
    v6->_logger = v7;

    objc_storeStrong(&v6->_queue, a3);
    v9 = [[PRBeaconListener alloc] initWithDelegate:v6 queue:v6->_queue];
    beaconListener = v6->_beaconListener;
    v6->_beaconListener = v9;

    v6->_beaconListenerState = 0;
  }

  return v6;
}

- (void)startRangingWithBeaconsMatchingDescriptor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_activeDescriptor, a3);
  if (self->_beaconListenerState)
  {
    [(PRBeaconRangingSession *)self startRangingInternal];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:0];
    [WeakRetained beaconRangingSession:self didFailWithError:v6];
  }
}

- (void)startRangingInternal
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_activeDescriptor)
  {
    v3 = [PRRemoteDevice alloc];
    v4 = [(PRBeaconDescriptor *)self->_activeDescriptor UUID];
    v5 = [(PRRemoteDevice *)v3 initWithCompanionUUID:v4];

    beaconListener = self->_beaconListener;
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__PRBeaconRangingSession_startRangingInternal__block_invoke;
    v9[3] = &unk_2788F3AA0;
    v9[4] = self;
    [(PRBeaconListener *)beaconListener pushBeaconAllowlist:v7 completionHandler:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __46__PRBeaconRangingSession_startRangingInternal__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_230EB5000, v6, OS_LOG_TYPE_INFO, "allowlist beacon success: %d, error: %@", v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopRangingInternal
{
  if (self->_activeDescriptor)
  {
    beaconListener = self->_beaconListener;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__PRBeaconRangingSession_stopRangingInternal__block_invoke;
    v5[3] = &unk_2788F3AA0;
    v5[4] = self;
    [(PRBeaconListener *)beaconListener clearBeaconAllowlistWithCompletionHandler:v5];
    activeDescriptor = self->_activeDescriptor;
    self->_activeDescriptor = 0;
  }
}

void __45__PRBeaconRangingSession_stopRangingInternal__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_230EB5000, v6, OS_LOG_TYPE_INFO, "unallowlist beacon success: %d, error: %@", v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    [(PRBeaconRangingSession *)v4 didFailWithError:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained beaconRangingSession:self didFailWithError:v4];
}

- (void)beaconListener:(id)a3 didOutputRangeResults:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [PRBeaconRangingSession beaconListener:v6 didOutputRangeResults:logger];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        [v13 range_m];
        v15 = v14;
        [v13 range_unc_m];
        v17 = [PRRangeMeasurement measurementWithRange:v15 uncertainty:v16];
        if ([v13 az_valid])
        {
          [v13 az_deg];
          v19 = v18;
          [v13 az_unc_deg];
          v21 = [PRAngleMeasurement measurementWithAngle:v19 uncertainty:v20];
        }

        else
        {
          v21 = 0;
        }

        if ([v13 el_valid])
        {
          [v13 el_deg];
          v23 = v22;
          [v13 el_unc_deg];
          v25 = [PRAngleMeasurement measurementWithAngle:v23 uncertainty:v24];
        }

        else
        {
          v25 = 0;
        }

        [v13 mach_absolute_time_sec];
        v26 = [PRRelativePosition relativePositionWithTimestamp:v17 range:v21 azimuth:v25 elevation:?];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained beaconRangingSession:self didMeasureBeaconMatchingDescriptor:self->_activeDescriptor atPosition:v26];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)beaconListener:(id)a3 didChangeState:(unint64_t)a4
{
  if (a4 == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:0];
    [WeakRetained beaconRangingSession:self didFailWithError:v6];
  }
}

- (PRBeaconRangingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didFailWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_230EB5000, a2, OS_LOG_TYPE_ERROR, "daemon session failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)beaconListener:(uint64_t)a1 didOutputRangeResults:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_230EB5000, a2, OS_LOG_TYPE_DEBUG, "received new results: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end