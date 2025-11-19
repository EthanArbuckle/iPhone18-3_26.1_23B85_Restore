@interface PRProximityEstimator
- (BOOL)addRssiSample:(double)a3 channel:(unsigned int)a4 forPeer:(id)a5 withError:(id *)a6;
- (BOOL)startEstimatingProximityFor:(id)a3 peerDeviceModel:(id)a4 withError:(id *)a5;
- (BOOL)stopEstimatingProximityFor:(id)a3 withError:(id *)a4;
- (PRProximityEstimator)init;
- (PRProximityEstimator)initWithDelegate:(id)a3 delegateQueue:(id)a4;
- (PRProximityEstimatorDelegate)delegate;
- (id)initSingleThresholdEstmatorWithDelegate:(id)a3 delegateQueue:(id)a4;
- (void)invokeDelegateBlock:(id)a3;
@end

@implementation PRProximityEstimator

- (PRProximityEstimator)init
{
  [(PRProximityEstimator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximityEstimator)initWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PRProximityEstimator.mm" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v16.receiver = self;
  v16.super_class = PRProximityEstimator;
  v9 = [(PRProximityEstimator *)&v16 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.nearbyd", "PRProximityEstimator");
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeWeak(&v9->_delegate, v7);
    objc_storeStrong(&v9->_delegateQueue, a4);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devicesMonitered = v9->devicesMonitered;
    v9->devicesMonitered = v12;

    v9->usingST = 0;
  }

  return v9;
}

- (id)initSingleThresholdEstmatorWithDelegate:(id)a3 delegateQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PRProximityEstimator.mm" lineNumber:337 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v17.receiver = self;
  v17.super_class = PRProximityEstimator;
  v9 = [(PRProximityEstimator *)&v17 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.nearbyd", "PRProximityEstimator");
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeWeak(&v9->_delegate, v7);
    objc_storeStrong(&v9->_delegateQueue, a4);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devicesMonitered = v9->devicesMonitered;
    v9->devicesMonitered = v12;

    v9->usingST = 1;
    v14 = v9->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PRProximityEstimator initSingleThresholdEstmatorWithDelegate:v14 delegateQueue:?];
    }
  }

  return v9;
}

- (BOOL)startEstimatingProximityFor:(id)a3 peerDeviceModel:(id)a4 withError:(id *)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:v8];
  if (!v10)
  {
    if (self->usingST)
    {
      v25 = 0;
      v14 = &v25;
      v15 = [[PRProximitySingleThresholdDevice alloc] initWithPeer:v8 andPeerModel:v9 withError:&v25];
    }

    else
    {
      v24 = 0;
      v14 = &v24;
      v15 = [[PRProximityDevice alloc] initWithPeer:v8 andPeerModel:v9 withError:&v24];
    }

    v10 = v15;
    v16 = *v14;
    v12 = v16;
    if (v10)
    {
      v17 = self;
      objc_sync_enter(v17);
      [(NSMutableDictionary *)self->devicesMonitered setObject:v10 forKeyedSubscript:v8];
      objc_sync_exit(v17);

      v13 = 1;
    }

    else
    {
      if (v16)
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = [v16 userInfo];
        *a5 = [v18 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:v19];
      }

      else if (a5)
      {
        v20 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA450];
        v29[0] = @"Memeory Allocation failure";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        *a5 = [v20 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:v21];
      }

      v13 = 0;
    }

    goto LABEL_15;
  }

  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Peer Already being monitored";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v11 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:v12];
    *a5 = v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)stopEstimatingProximityFor:(id)a3 withError:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    [(NSMutableDictionary *)self->devicesMonitered removeObjectForKey:v6];
    objc_sync_exit(v8);
  }

  else if (a4)
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Peer not being monitored";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v9 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:201 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (BOOL)addRssiSample:(double)a3 channel:(unsigned int)a4 forPeer:(id)a5 withError:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = self;
    objc_sync_enter(v12);
    v22[0] = PRCommonGetMachContinuousTimeSeconds();
    *&v22[1] = a3;
    v23 = a4;
    [v11 addSample:v22];
    if ([v11 proxReady])
    {
      WeakRetained = objc_loadWeakRetained(&v12->_delegate);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__PRProximityEstimator_addRssiSample_channel_forPeer_withError___block_invoke;
      v18[3] = &unk_2788F40B8;
      v19 = WeakRetained;
      v20 = v12;
      v21 = v11;
      v14 = WeakRetained;
      [(PRProximityEstimator *)v12 invokeDelegateBlock:v18];
    }

    objc_sync_exit(v12);
    goto LABEL_7;
  }

  if (a6)
  {
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Peer not being monitored";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *a6 = [v15 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:202 userInfo:v12];
LABEL_7:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

void __64__PRProximityEstimator_addRssiSample_channel_forPeer_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) deviceProximity];
  v5 = [*(a1 + 48) peer];
  [v2 estimator:v3 didEstimateProximity:v4 toPeer:?];
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

- (PRProximityEstimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end