@interface PRProximityEstimator
- (BOOL)addRssiSample:(double)sample channel:(unsigned int)channel forPeer:(id)peer withError:(id *)error;
- (BOOL)startEstimatingProximityFor:(id)for peerDeviceModel:(id)model withError:(id *)error;
- (BOOL)stopEstimatingProximityFor:(id)for withError:(id *)error;
- (PRProximityEstimator)init;
- (PRProximityEstimator)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (PRProximityEstimatorDelegate)delegate;
- (id)initSingleThresholdEstmatorWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)invokeDelegateBlock:(id)block;
@end

@implementation PRProximityEstimator

- (PRProximityEstimator)init
{
  [(PRProximityEstimator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximityEstimator)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRProximityEstimator.mm" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v16.receiver = self;
  v16.super_class = PRProximityEstimator;
  v9 = [(PRProximityEstimator *)&v16 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.nearbyd", "PRProximityEstimator");
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v9->_delegateQueue, queue);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devicesMonitered = v9->devicesMonitered;
    v9->devicesMonitered = v12;

    v9->usingST = 0;
  }

  return v9;
}

- (id)initSingleThresholdEstmatorWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRProximityEstimator.mm" lineNumber:337 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v17.receiver = self;
  v17.super_class = PRProximityEstimator;
  v9 = [(PRProximityEstimator *)&v17 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.nearbyd", "PRProximityEstimator");
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v9->_delegateQueue, queue);
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

- (BOOL)startEstimatingProximityFor:(id)for peerDeviceModel:(id)model withError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  modelCopy = model;
  v10 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:forCopy];
  if (!v10)
  {
    if (self->usingST)
    {
      v25 = 0;
      v14 = &v25;
      v15 = [[PRProximitySingleThresholdDevice alloc] initWithPeer:forCopy andPeerModel:modelCopy withError:&v25];
    }

    else
    {
      v24 = 0;
      v14 = &v24;
      v15 = [[PRProximityDevice alloc] initWithPeer:forCopy andPeerModel:modelCopy withError:&v24];
    }

    v10 = v15;
    v16 = *v14;
    v12 = v16;
    if (v10)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSMutableDictionary *)self->devicesMonitered setObject:v10 forKeyedSubscript:forCopy];
      objc_sync_exit(selfCopy);

      v13 = 1;
    }

    else
    {
      if (v16)
      {
        v18 = MEMORY[0x277CCA9B8];
        userInfo = [v16 userInfo];
        *error = [v18 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:userInfo];
      }

      else if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA450];
        v29[0] = @"Memeory Allocation failure";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        *error = [v20 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:v21];
      }

      v13 = 0;
    }

    goto LABEL_15;
  }

  if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = @"Peer Already being monitored";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v11 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:200 userInfo:v12];
    *error = v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)stopEstimatingProximityFor:(id)for withError:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:forCopy];
  if (v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)self->devicesMonitered removeObjectForKey:forCopy];
    objc_sync_exit(selfCopy);
  }

  else if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Peer not being monitored";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:201 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (BOOL)addRssiSample:(double)sample channel:(unsigned int)channel forPeer:(id)peer withError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  v11 = [(NSMutableDictionary *)self->devicesMonitered objectForKeyedSubscript:peerCopy];
  if (v11)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22[0] = PRCommonGetMachContinuousTimeSeconds();
    *&v22[1] = sample;
    channelCopy = channel;
    [v11 addSample:v22];
    if ([v11 proxReady])
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__PRProximityEstimator_addRssiSample_channel_forPeer_withError___block_invoke;
      v18[3] = &unk_2788F40B8;
      v19 = WeakRetained;
      v20 = selfCopy;
      v21 = v11;
      v14 = WeakRetained;
      [(PRProximityEstimator *)selfCopy invokeDelegateBlock:v18];
    }

    objc_sync_exit(selfCopy);
    goto LABEL_7;
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Peer not being monitored";
    selfCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v15 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:202 userInfo:selfCopy];
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

- (void)invokeDelegateBlock:(id)block
{
  blockCopy = block;
  delegateQueue = self->_delegateQueue;
  v6 = blockCopy;
  if (delegateQueue)
  {
    dispatch_async(delegateQueue, blockCopy);
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (PRProximityEstimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end