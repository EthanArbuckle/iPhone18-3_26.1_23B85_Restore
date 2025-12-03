@interface PRItemLocalizer
+ (BOOL)isInternalBuild;
- (BOOL)commonConfigure:(id)configure;
- (BOOL)configureForDeviceWithId:(id)id;
- (BOOL)configureForItem:(id)item;
- (BOOL)startWithDevicePoseProvider:(id)provider error:(id *)error;
- (BOOL)stop:(id *)stop;
- (BatchSolution)lastSolution;
- (BatchSolution)performLocationFiltering:(SEL)filtering;
- (PRItemLocalizer)initWithDelegate:(id)delegate queue:(id)queue;
- (PRItemLocalizerDelegate)delegate;
- (id).cxx_construct;
- (id)estimatorInputForProximity:(id)proximity;
- (id)performRangeFilteringWithVIO:(id)o;
- (id)performRangeFilteringWithoutVIO:(id)o targetMoving:(BOOL)moving deviceMoving:(BOOL)deviceMoving;
- (id)produceBlendedRangeEstimateForPose:(id)pose;
- (id)saveData;
- (unint64_t)trajectoryIndexForTime:(double)time;
- (void)analyticsLogTorchButtonPresented;
- (void)dealloc;
- (void)deleteTrajectoryWaypointsBeforeTime:(double)time;
- (void)devicePoseUpdated:(id)updated;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)discardData;
- (void)invalidPoseDetected;
- (void)logAndPresentSolution:(BatchSolution *)solution withTimeStamp:(double)stamp;
- (void)logEstimatorInput:(id)input;
- (void)logRangeEstimate:(id)estimate;
- (void)logTargetEstimates:(id)estimates;
- (void)presentRangeEstimate:(id)estimate;
- (void)presentTargetEstimate:(id)estimate;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)recordUsage;
- (void)remoteDevice:(id)device didChangeState:(int64_t)state;
- (void)remoteDeviceDidMove;
- (void)reset;
- (void)revokeTargetEstimate:(unint64_t)estimate;
- (void)revokeTargetEstimateWithLastSolution:(BatchSolution *)solution;
- (void)sendItemLocalizerChangedActivity:(unint64_t)activity;
- (void)sendItemLocalizerChangedState:(unint64_t)state;
- (void)sendPRItemState:(unint64_t)state;
- (void)setLastSolution:(BatchSolution *)solution;
- (void)updateDelegateWithSelector:(SEL)selector object:(id)object;
@end

@implementation PRItemLocalizer

+ (BOOL)isInternalBuild
{
  if (+[PRItemLocalizer isInternalBuild]::onceToken != -1)
  {
    +[PRItemLocalizer isInternalBuild];
  }

  return +[PRItemLocalizer isInternalBuild]::isInternalBuild;
}

uint64_t __34__PRItemLocalizer_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[PRItemLocalizer isInternalBuild]::isInternalBuild = result;
  return result;
}

- (PRItemLocalizer)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v9 = queueCopy;
  if (delegateCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRItemLocalizer.mm" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PRItemLocalizer.mm" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = PRItemLocalizer;
  v10 = [(PRItemLocalizer *)&v21 init];
  v11 = v10;
  if (v10)
  {
    [(PRItemLocalizer *)v10 setDelegate:delegateCopy];
    [(PRItemLocalizer *)v11 setDelegateQueue:v9];
    v12 = dispatch_queue_create("com.apple.findmy.ranging", 0);
    [(PRItemLocalizer *)v11 setProximityQueue:v12];

    *&v11->_clientState = 1;
    v11->_lastSuccessfulCompanionCommunicationOrInitMachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
    v13 = objc_alloc(MEMORY[0x277D43390]);
    proximityQueue = [(PRItemLocalizer *)v11 proximityQueue];
    v15 = [v13 initWithDelegate:v11 queue:proximityQueue];
    [(PRItemLocalizer *)v11 setSession:v15];

    v16 = dispatch_queue_create("com.apple.findmy.itemlocalizer", 0);
    [(PRItemLocalizer *)v11 setEstimatorQueue:v16];

    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:512];
    [(PRItemLocalizer *)v11 setTrajectory:v17];

    operator new();
  }

  return 0;
}

- (BOOL)configureForDeviceWithId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  uUIDString = [idCopy UUIDString];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = uUIDString;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "ItemLocalizer configuring for item %@", buf, 0xCu);
  }

  if ([objc_opt_class() isInternalBuild])
  {
    v13 = @"deviceId";
    v14 = uUIDString;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    analytics = [(PRItemLocalizer *)self analytics];
    [analytics setCustomData:v7];
  }

  v9 = [objc_alloc(MEMORY[0x277D433A0]) initWithCompanionUUID:idCopy];
  [(PRItemLocalizer *)self setRemoteDevice:v9];

  v10 = [(PRItemLocalizer *)self commonConfigure:0];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)configureForItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  uuid = [itemCopy uuid];
  productUUID = [itemCopy productUUID];
  [(PRItemLocalizer *)self setProductUUID:productUUID];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(itemCopy, "isOwned")}];
  [(PRItemLocalizer *)self setIsOwner:v7];

  -[PRItemLocalizer setRequiresLowerRangingFrequency:](self, "setRequiresLowerRangingFrequency:", [itemCopy requiresLowerRangingFrequency]);
  isOwned = [itemCopy isOwned];
  productUUID2 = [(PRItemLocalizer *)self productUUID];

  v10 = self->_logger;
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (productUUID2)
  {
    if (v11)
    {
      uUIDString = [uuid UUIDString];
      productUUID3 = [(PRItemLocalizer *)self productUUID];
      uUIDString2 = [productUUID3 UUIDString];
      v15 = uUIDString2;
      v16 = "true";
      v23 = 138412802;
      v24 = uUIDString;
      if (isOwned)
      {
        v16 = "false";
      }

      v25 = 2112;
      v26 = uUIDString2;
      v27 = 2080;
      v28 = v16;
      _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "ItemLocalizer configuring for item %@ with productUUID %@, isUT: %s", &v23, 0x20u);
    }
  }

  else if (v11)
  {
    uUIDString3 = [uuid UUIDString];
    v18 = uUIDString3;
    v19 = "true";
    if (isOwned)
    {
      v19 = "false";
    }

    v23 = 138412546;
    v24 = uUIDString3;
    v25 = 2080;
    v26 = v19;
    _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "ItemLocalizer configuring for item %@ with no productUUID, isUT: %s", &v23, 0x16u);
  }

  v20 = [(PRItemLocalizer *)self configureForDeviceWithId:uuid];
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)commonConfigure:(id)configure
{
  v33 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  if (self->_clientState == 1)
  {
    self->_clientState = 2;
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting _clientState to LOCALIZER_CLIENT_CONFIGURING commonConfigure", buf, 2u);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    *buf = 0;
    v32 = 0;
    [uUID getUUIDBytes:buf];
    v7 = vceqz_s8(*buf);
    if (v7.i8[0])
    {
      buf[0] = 1;
    }

    if (v7.i8[1])
    {
      buf[1] = 1;
    }

    if (v7.i8[2])
    {
      buf[2] = 1;
    }

    if (v7.i8[3])
    {
      buf[3] = 1;
    }

    if (v7.i8[4])
    {
      buf[4] = 1;
    }

    if (v7.i8[5])
    {
      buf[5] = 1;
    }

    if (v7.i8[6])
    {
      buf[6] = 1;
    }

    if (v7.i8[7])
    {
      buf[7] = 1;
    }

    v8 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:8];
    remoteDevice = [(PRItemLocalizer *)self remoteDevice];
    [remoteDevice setRoseMACAddress:v8];

    [(PRItemLocalizer *)self setConfigurationParameters:configureCopy];
    configurationParameters = [(PRItemLocalizer *)self configurationParameters];
    LOBYTE(remoteDevice) = configurationParameters == 0;

    if (remoteDevice & 1) != 0 || ([(PRItemLocalizer *)self configurationParameters], v11 = objc_claimAutoreleasedReturnValue(), v12 = PRSetRoseGlobalConfigParams(), v11, (v12))
    {
      v13 = MEMORY[0x277CBEB38];
      configurationParameters2 = [(PRItemLocalizer *)self configurationParameters];
      v15 = [v13 dictionaryWithDictionary:configurationParameters2];

      requiresLowerRangingFrequency = [(PRItemLocalizer *)self requiresLowerRangingFrequency];
      v17 = self->_logger;
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (requiresLowerRangingFrequency)
      {
        if (v18)
        {
          *v30 = 0;
          _os_log_impl(&dword_2613DF000, v17, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting gatt ranging to true", v30, 2u);
        }

        v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v15 setObject:v19 forKeyedSubscript:@"GattRanging"];
      }

      else
      {
        if (v18)
        {
          *v30 = 0;
          _os_log_impl(&dword_2613DF000, v17, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting gatt ranging to false", v30, 2u);
        }

        v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v15 setObject:v19 forKeyedSubscript:@"GattRanging"];
      }

      [(PRItemLocalizer *)self setConfigurationParameters:v15];
      self->_rangingState = 2;
      session = [(PRItemLocalizer *)self session];
      remoteDevice2 = [(PRItemLocalizer *)self remoteDevice];
      configurationParameters3 = [(PRItemLocalizer *)self configurationParameters];
      [session configureForCompanionRanging:remoteDevice2 options:configurationParameters3];

      analytics = [(PRItemLocalizer *)self analytics];
      productUUID = [(PRItemLocalizer *)self productUUID];
      isOwner = [(PRItemLocalizer *)self isOwner];
      [analytics configureSessionWithProductUUID:productUUID withOwner:isOwner];

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v20 = self->_logger;
    v21 = 0;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "#companion-retry Unexpected call to configure", buf, 2u);
      v21 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)startWithDevicePoseProvider:(id)provider error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = providerCopy;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "ItemLocalizer start with pose provider %@", buf, 0xCu);
  }

  if (self->_clientState == 3)
  {
    self->_clientState = 4;
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting _clientState to LOCALIZER_CLIENT_RANGING startWithDevicePoseProvider", buf, 2u);
    }

    [(PRItemLocalizer *)self setPoseProvider:providerCopy];
    poseProvider = [(PRItemLocalizer *)self poseProvider];
    [poseProvider setDelegate:self];

    [(PRItemLocalizer *)self reset];
    [(PRItemLocalizer *)self setFirstRangeArrow:0];
    [(PRItemLocalizer *)self setFirstAoAArrow:0];
    [(PRItemLocalizer *)self setPreviousVIOPoseTime:0.0];
    objc_initWeak(buf, self);
    estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PRItemLocalizer_startWithDevicePoseProvider_error___block_invoke;
    block[3] = &unk_279AD60B0;
    objc_copyWeak(&v29, buf);
    dispatch_async(estimatorQueue, block);

    [(PRItemLocalizer *)self setDeviceIsMoving:1];
    deviceActivityManager = [(PRItemLocalizer *)self deviceActivityManager];
    activityQueue = [(PRItemLocalizer *)self activityQueue];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __53__PRItemLocalizer_startWithDevicePoseProvider_error___block_invoke_2;
    v26 = &unk_279AD61A0;
    objc_copyWeak(&v27, buf);
    [deviceActivityManager startActivityUpdatesToQueue:activityQueue withHandler:&v23];

    v13 = [(PRItemLocalizer *)self analytics:v23];
    [v13 start];

    [(PRItemLocalizer *)self setUsageFirstRange:0];
    v14 = [MEMORY[0x277CBEAA8] now];
    [(PRItemLocalizer *)self setUsageStartTimestamp:v14];

    [(PRItemLocalizer *)self sendItemLocalizerChangedActivity:1];
    if (self->_rangingState == 3)
    {
      session = [(PRItemLocalizer *)self session];
      remoteDevice = [(PRItemLocalizer *)self remoteDevice];
      v17 = [session startCompanionRanging:remoteDevice options:0 error:error];

      if (!v17)
      {
        [(PRItemLocalizer *)self didFailWithError:*error];
        v19 = 0;
        goto LABEL_13;
      }

      dataRecorder = [(PRItemLocalizer *)self dataRecorder];
      [dataRecorder start];

      self->_rangingState = 4;
    }

    v19 = 1;
LABEL_13:
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  v20 = self->_logger;
  v19 = 0;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "#companion-retry Unexpected call to start", buf, 2u);
    v19 = 0;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __53__PRItemLocalizer_startWithDevicePoseProvider_error___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 32)))
  {
    operator new();
  }
}

void __53__PRItemLocalizer_startWithDevicePoseProvider_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 stationary];
    v6 = WeakRetained[3];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "#itemlocalizerActivity stationary now";
        v9 = &v11;
LABEL_7:
        _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      LOWORD(v10) = 0;
      v8 = "#itemlocalizerActivity NON-stationary now";
      v9 = &v10;
      goto LABEL_7;
    }

    [WeakRetained setDeviceIsMoving:{v5 ^ 1u, v10}];
  }
}

- (BOOL)stop:(id *)stop
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "ItemLocalizer stop", buf, 2u);
  }

  if (self->_clientState == 4)
  {
    poseProvider = [(PRItemLocalizer *)self poseProvider];
    [poseProvider setDelegate:0];

    analytics = [(PRItemLocalizer *)self analytics];
    [analytics stop];

    [(PRItemLocalizer *)self recordUsage];
    v8 = self->_logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting _clientState to LOCALIZER_CLIENT_CONFIGURED stop", buf, 2u);
    }

    self->_clientState = 3;
    [(PRItemLocalizer *)self reset];
    objc_initWeak(buf, self);
    estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__PRItemLocalizer_stop___block_invoke;
    block[3] = &unk_279AD60B0;
    objc_copyWeak(&v20, buf);
    dispatch_async(estimatorQueue, block);

    deviceActivityManager = [(PRItemLocalizer *)self deviceActivityManager];
    [deviceActivityManager stopActivityUpdates];

    [(PRItemLocalizer *)self sendItemLocalizerChangedActivity:2];
    if (self->_rangingState == 4)
    {
      session = [(PRItemLocalizer *)self session];
      remoteDevice = [(PRItemLocalizer *)self remoteDevice];
      v13 = [session stopCompanionRanging:remoteDevice error:stop];

      if (!v13)
      {
        v16 = self->_logger;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "#companion-retry Failed to stop - triggering retry", v18, 2u);
        }

        [(PRItemLocalizer *)self didFailWithError:*stop];
        v14 = 0;
        goto LABEL_15;
      }

      self->_rangingState = 3;
    }

    v14 = 1;
LABEL_15:
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
    return v14;
  }

  v15 = self->_logger;
  v14 = 0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2613DF000, v15, OS_LOG_TYPE_DEFAULT, "#companion-retry Unexpected call to stop", buf, 2u);
    return 0;
  }

  return v14;
}

void __24__PRItemLocalizer_stop___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 32)))
  {
    operator new();
  }
}

- (void)presentTargetEstimate:(id)estimate
{
  v32 = *MEMORY[0x277D85DE8];
  estimateCopy = estimate;
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [estimateCopy vector];
    v19 = v6;
    [estimateCopy vector];
    v18 = v7;
    [estimateCopy vector];
    v17 = v8;
    [estimateCopy uncertainty];
    v11 = v10;
    [estimateCopy weight];
    v13 = v12;
    [estimateCopy timestamp];
    *buf = 134219264;
    v21 = v19;
    v22 = 2048;
    v23 = v18;
    v24 = 2048;
    v25 = v17;
    v26 = 2048;
    v27 = v11;
    v28 = 2048;
    v29 = v13;
    v30 = 2048;
    v31 = v14;
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "Sending target to delegate: (%f, %f, %f), uncertainty = %f, weight = %f, time %f", buf, 0x3Eu);
  }

  [(PRItemLocalizer *)self updateDelegateWithSelector:sel_didUpdateItemPosition_ object:estimateCopy];
  analytics = [(PRItemLocalizer *)self analytics];
  [analytics targetComputed:estimateCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)revokeTargetEstimateWithLastSolution:(BatchSolution *)solution
{
  begin = solution->BatchSolutionList.__begin_;
  if (begin == solution->BatchSolutionList.__end_)
  {

    [(PRItemLocalizer *)self revokeTargetEstimate:2];
  }

  else
  {
    v5 = *(begin + 40);
    if (v5)
    {
      if (v5 == 2)
      {
        if (solution->solutionStatus == 5)
        {
          logger = self->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Revoke Straight path solution", v11, 2u);
          }
        }

        selfCopy3 = self;
        v8 = 4;
      }

      else
      {
        if (v5 != 1)
        {
          return;
        }

        if (solution->solutionStatus == 5)
        {
          v6 = self->_logger;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Revoke SA solution due to multipath", buf, 2u);
          }
        }

        selfCopy3 = self;
        v8 = 2;
      }
    }

    else
    {
      if (solution->solutionStatus == 5)
      {
        v10 = self->_logger;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "Revoke AoA solution due to multipath", v12, 2u);
        }
      }

      selfCopy3 = self;
      v8 = 3;
    }

    [(PRItemLocalizer *)selfCopy3 revokeTargetEstimate:v8];
  }
}

- (void)revokeTargetEstimate:(unint64_t)estimate
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Revoking item position. Sending nil to delegate", buf, 2u);
  }

  [(PRItemLocalizer *)self updateDelegateWithSelector:sel_didUpdateItemPosition_ object:0];
  analytics = [(PRItemLocalizer *)self analytics];
  [analytics targetRevokedWithReason:estimate];

  *__p = 0u;
  v9 = 0u;
  v7 = 0u;
  [(PRItemLocalizer *)self setLastSolution:&v7];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)presentRangeEstimate:(id)estimate
{
  v30 = *MEMORY[0x277D85DE8];
  estimateCopy = estimate;
  MachTimeSeconds = PRCommonGetMachTimeSeconds();
  [estimateCopy timestamp];
  if (MachTimeSeconds - v6 <= 2.0)
  {
    analytics = estimateCopy;
    [analytics range];
    if (v10 >= 0.0)
    {
      v20 = self->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [analytics range];
        v26 = 134217984;
        v27 = v24;
        _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "Sending range to delegate: %f", &v26, 0xCu);
      }
    }

    else
    {
      v11 = [PRProximity alloc];
      [analytics timestamp];
      v13 = v12;
      [analytics azimuth];
      v15 = v14;
      [analytics elevation];
      LODWORD(v17) = v16;
      LODWORD(v18) = v15;
      v19 = [(PRProximity *)v11 initWithTime:v13 range:0.0 azimuth:v18 elevation:v17];

      v20 = self->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [analytics range];
        v22 = v21;
        [(PRProximity *)v19 range];
        v26 = 134218240;
        v27 = v22;
        v28 = 2048;
        v29 = v23;
        _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "PresentRangeEstimate overriding negative range = %f. Sending range = %f to delegate", &v26, 0x16u);
      }

      analytics = v19;
    }

    [(PRItemLocalizer *)self updateDelegateWithSelector:sel_didUpdateRangeEstimate_ object:analytics];
  }

  else
  {
    v7 = self->_logger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [estimateCopy timestamp];
      v26 = 134218240;
      v27 = MachTimeSeconds;
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Not presenting too stale range estimate to the delegate, current time = %f, range estimate time = %f", &v26, 0x16u);
    }

    analytics = [(PRItemLocalizer *)self analytics];
    [analytics revokeRangeEstimate];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)saveData
{
  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  stopAndSave = [dataRecorder stopAndSave];

  return stopAndSave;
}

- (void)discardData
{
  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  [dataRecorder stopAndDiscard];
}

- (void)recordUsage
{
  v28 = *MEMORY[0x277D85DE8];
  usageFirstRange = [(PRItemLocalizer *)self usageFirstRange];
  if (usageFirstRange && ([(PRItemLocalizer *)self usageStartTimestamp], v5 = objc_claimAutoreleasedReturnValue(), v5, usageFirstRange, v5))
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    usageStartTimestamp = [(PRItemLocalizer *)self usageStartTimestamp];
    [v6 timeIntervalSinceDate:usageStartTimestamp];
    v9 = v8;

    v10 = self->_logger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      usageFirstRange2 = [(PRItemLocalizer *)self usageFirstRange];
      [usageFirstRange2 doubleValue];
      *buf = 134218240;
      v25 = v12;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&dword_2613DF000, v10, OS_LOG_TYPE_DEFAULT, "Record usage: first range %0.1f m, session duration %0.1f s", buf, 0x16u);
    }

    usageFirstRange3 = [(PRItemLocalizer *)self usageFirstRange];
    v23[0] = usageFirstRange3;
    v22[1] = @"SessionDuration";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v23[1] = v14;
    v22[2] = @"ProductUUID";
    productUUID = [(PRItemLocalizer *)self productUUID];
    if (productUUID)
    {
      productUUID2 = [(PRItemLocalizer *)self productUUID];
      uUIDString = [productUUID2 UUIDString];
    }

    else
    {
      uUIDString = @"UNKNOWN";
    }

    v23[2] = uUIDString;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    if (productUUID)
    {
    }

    session = self->_session;
    remoteDevice = [(PRItemLocalizer *)self remoteDevice];
    [(PRCompanionRangingSession *)session recordUsageOfCompanionRanging:remoteDevice usageParameters:v18];
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Record usage: skipping, no first range", buf, 2u);
    }
  }

  [(PRItemLocalizer *)self setUsageFirstRange:0];
  [(PRItemLocalizer *)self setUsageStartTimestamp:0];
  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)trajectoryIndexForTime:(double)time
{
  trajectory = [(PRItemLocalizer *)self trajectory];
  v6 = [trajectory count];

  v7 = [PRPose poseWithTime:time pose:?];
  trajectory2 = [(PRItemLocalizer *)self trajectory];
  v9 = [trajectory2 indexOfObject:v7 inSortedRange:0 options:v6 usingComparator:{1024, &__block_literal_global_59}];

  return v9;
}

uint64_t __42__PRItemLocalizer_trajectoryIndexForTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = MEMORY[0x277CCABB0];
  [v6 timestamp];
  v9 = [v8 numberWithDouble:?];
  v10 = MEMORY[0x277CCABB0];
  [v7 timestamp];
  v11 = [v10 numberWithDouble:?];
  v12 = [v9 compare:v11];

  return v12;
}

- (void)deleteTrajectoryWaypointsBeforeTime:(double)time
{
  estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
  dispatch_assert_queue_V2(estimatorQueue);

  trajectory = [(PRItemLocalizer *)self trajectory];
  v5 = [trajectory count];

  if (v5)
  {
    v6 = [(PRItemLocalizer *)self trajectoryIndexForTime:time];
    if (v6)
    {
      v7 = v6 - 1;
      trajectory2 = [(PRItemLocalizer *)self trajectory];
      [trajectory2 removeObjectsInRange:{0, v7}];
    }
  }
}

- (id)estimatorInputForProximity:(id)proximity
{
  v113 = *MEMORY[0x277D85DE8];
  proximityCopy = proximity;
  v5 = proximityCopy;
  if (!proximityCopy)
  {
    goto LABEL_4;
  }

  [proximityCopy mach_absolute_time_sec];
  v6 = [(PRItemLocalizer *)self trajectoryIndexForTime:?];
  if (v6)
  {
    trajectory = [(PRItemLocalizer *)self trajectory];
    v8 = [trajectory count];

    if (v6 == v8)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_16;
    }

    trajectory2 = [(PRItemLocalizer *)self trajectory];
    firstObject = [trajectory2 objectAtIndex:v6 - 1];

    trajectory3 = [(PRItemLocalizer *)self trajectory];
    lastObject = [trajectory3 objectAtIndex:v6];

    [firstObject timestamp];
    v26 = v25;
    [v5 mach_absolute_time_sec];
    if (v26 != v27)
    {
      [lastObject timestamp];
      v29 = v28;
      [v5 mach_absolute_time_sec];
      if (v29 != v30)
      {
        [lastObject timestamp];
        v35 = v34;
        [firstObject timestamp];
        if (v35 == v36)
        {
          v105[0] = @"prior";
          v105[1] = @"subsequent";
          v106[0] = firstObject;
          v106[1] = lastObject;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
          v86 = [MEMORY[0x277CBEAD8] exceptionWithName:@"TimingErrorException" reason:@"Invalid timestamp found on device pose waypoint" userInfo:objc_claimAutoreleasedReturnValue()];
          v87 = v86;
          objc_exception_throw(v86);
        }

        [v5 mach_absolute_time_sec];
        v38 = v37;
        [firstObject timestamp];
        v40 = v39;
        [lastObject timestamp];
        v42 = v41;
        [firstObject timestamp];
        v44 = v43;
        [firstObject pose];
        v98 = v46;
        v101 = v45;
        v92 = v48;
        v94 = v47;
        [lastObject pose];
        v90 = v50;
        v91 = v49;
        v88 = v52;
        v89 = v51;
        v49.f32[0] = (v38 - v40) / (v42 - v44);
        v104 = v49.f32[0];
        v115.columns[1] = v98;
        v115.columns[0] = v101;
        v115.columns[3] = v92;
        v115.columns[2] = v94;
        *v53.i64 = simd_quaternion(v115);
        v102 = v53;
        v116.columns[1] = v90;
        v116.columns[0] = v91;
        v116.columns[3] = v88;
        v116.columns[2] = v89;
        *v54.i64 = simd_quaternion(v116);
        v55 = vmulq_f32(v102, v54);
        v56 = vextq_s8(v55, v55, 8uLL);
        *v55.f32 = vadd_f32(*v55.f32, *v56.f32);
        v55.f32[0] = vaddv_f32(*v55.f32);
        v56.i64[0] = 0;
        v57 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v55, v56)), 0), vnegq_f32(v54), v54);
        v58 = 1.0;
        v59 = 1.0 - v104;
        v60 = vsubq_f32(v102, v57);
        v61 = vmulq_f32(v60, v60);
        v99 = v57;
        v62 = vaddq_f32(v102, v57);
        v63 = vmulq_f32(v62, v62);
        v64 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v61.i8, *&vextq_s8(v61, v61, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)))));
        v65 = v64 + v64;
        v66 = (v64 + v64) == 0.0;
        v67 = 1.0;
        if (!v66)
        {
          v67 = sinf(v65) / v65;
        }

        v68 = LODWORD(v67);
        v69 = vrecpe_f32(LODWORD(v67));
        v70 = vmul_f32(v69, vrecps_f32(v68, v69));
        LODWORD(v71) = vmul_f32(v70, vrecps_f32(v68, v70)).u32[0];
        if ((v59 * v65) != 0.0)
        {
          v95 = v71;
          v70.f32[0] = sinf(v59 * v65);
          v71 = v95;
          v58 = v70.f32[0] / (v59 * v65);
        }

        v70.f32[0] = v59 * (v71 * v58);
        v72 = vdupq_lane_s32(v70, 0);
        v73 = v104;
        v74 = v65 * v104;
        v75 = 1.0;
        if (v74 != 0.0)
        {
          v93 = v72;
          v96 = v71;
          v76 = sinf(v74);
          v73 = v104;
          v72 = v93;
          v71 = v96;
          v75 = v76 / v74;
        }

        v77 = vmlaq_f32(vmulq_n_f32(v99, (v71 * v75) * v73), v102, v72);
        v78 = vmulq_f32(v77, v77);
        v79 = vadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
        if (vaddv_f32(v79) == 0.0)
        {
          v80 = 0;
        }

        else
        {
          v81 = vadd_f32(v79, vdup_lane_s32(v79, 1)).u32[0];
          v82 = vrsqrte_f32(v81);
          v83 = vmul_f32(v82, vrsqrts_f32(v81, vmul_f32(v82, v82)));
          v80 = vmulq_n_f32(v77, vmul_f32(v83, vrsqrts_f32(v81, vmul_f32(v83, v83))).f32[0]).u64[0];
        }

        v103 = *&v80;
        [firstObject pose];
        v100 = v84;
        [lastObject pose];
        v97 = v85;
        v9 = objc_alloc_init(PREstimatorInput);
        [v5 mach_absolute_time_sec];
        [(PREstimatorInput *)v9 setTimestamp:?];
        [firstObject timestamp];
        [(PREstimatorInput *)v9 setPriorTimestamp:?];
        [lastObject timestamp];
        [(PREstimatorInput *)v9 setSubsequentTimestamp:?];
        [(PREstimatorInput *)v9 setRotation:v103];
        [(PREstimatorInput *)v9 setTranslation:*vmlaq_n_f32(v100, vsubq_f32(v97, v100), v104).i64];
        [(PREstimatorInput *)v9 setProximity:v5];
        goto LABEL_15;
      }
    }

    v14 = self->_logger;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    [v5 mach_absolute_time_sec];
    *buf = 134217984;
    v108 = v31;
    v20 = "ItemLocalizer skipping proximity measurement due to pose timestamp equality at time %f";
    v21 = v14;
    v22 = 12;
    goto LABEL_13;
  }

  trajectory4 = [(PRItemLocalizer *)self trajectory];
  firstObject = [trajectory4 firstObject];

  trajectory5 = [(PRItemLocalizer *)self trajectory];
  lastObject = [trajectory5 lastObject];

  v9 = 0;
  if (!firstObject || !lastObject)
  {
    goto LABEL_15;
  }

  v14 = self->_logger;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [v5 mach_absolute_time_sec];
    v16 = v15;
    [firstObject timestamp];
    v18 = v17;
    [lastObject timestamp];
    *buf = 134218496;
    v108 = v16;
    v109 = 2048;
    v110 = v18;
    v111 = 2048;
    v112 = v19;
    v20 = "ItemLocalizer failed to match sensor inputs at time %f (Measurement is earlier than the first cached pose). Cached pose time range: %f -> %f";
    v21 = v14;
    v22 = 32;
LABEL_13:
    _os_log_impl(&dword_2613DF000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

LABEL_14:

  v9 = 0;
LABEL_15:

LABEL_16:
  v32 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BatchSolution)performLocationFiltering:(SEL)filtering
{
  v6 = a4;
  estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
  dispatch_assert_queue_V2(estimatorQueue);

  [(PRItemLocalizer *)self logEstimatorInput:v6];
  [v6 translation];
  v59 = v8;
  [v6 translation];
  v58 = v9;
  [v6 translation];
  v57 = v10;
  [v6 rotation];
  v54 = v11;
  [v6 rotation];
  v53 = v12;
  [v6 rotation];
  v51 = v13;
  [v6 rotation];
  v49 = v14;
  proximity = [v6 proximity];
  antenna_type = [proximity antenna_type];
  if ((antenna_type - 1) < 4)
  {
    v17 = antenna_type;
  }

  else
  {
    v17 = 0;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0x3FB999999999999ALL;
  v67 = 0;
  LOBYTE(v68) = 0;
  v75 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0.0;
  proximity2 = [v6 proximity];
  v60 = v59;
  v19 = v54;
  v20 = v53;
  if (([proximity2 az_valid] & 1) == 0)
  {

    goto LABEL_9;
  }

  proximity3 = [v6 proximity];
  el_valid = [proximity3 el_valid];

  if (!el_valid)
  {
LABEL_9:
    proximity4 = [v6 proximity];
    [proximity4 mach_absolute_time_sec];
    v29 = v28;
    proximity5 = [v6 proximity];
    [proximity5 range_m];
    v64 = v29;
    v65 = v31;
    v66 = 0x3FB999999999999ALL;
    v67 = v17;
    LOBYTE(v68) = 0;
    v75 = 0;
    *&v76 = v60;
    *(&v76 + 1) = v58;
    *&v77 = v57;
    *(&v77 + 1) = v54;
    *&v78 = v53;
    *(&v78 + 1) = v51;
    v79 = v49;
    goto LABEL_12;
  }

  proximity6 = [v6 proximity];
  multipath_probability_valid = [proximity6 multipath_probability_valid];

  if (multipath_probability_valid)
  {
    proximity7 = [v6 proximity];
    [proximity7 multipath_probability];
    v56 = v26;

    v55 = 1;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  proximity4 = [v6 proximity];
  [proximity4 mach_absolute_time_sec];
  v52 = v32;
  proximity5 = [v6 proximity];
  [proximity5 range_m];
  v50 = v33;
  proximity8 = [v6 proximity];
  [proximity8 el_deg];
  v36 = v35;
  proximity9 = [v6 proximity];
  [proximity9 az_deg];
  v39 = v38;
  proximity10 = [v6 proximity];
  [proximity10 sweep_angle_deg];
  v42 = v41;
  proximity11 = [v6 proximity];
  [proximity11 track_score];
  v64 = v52;
  v65 = v50;
  v66 = 0x3FB999999999999ALL;
  v67 = v17;
  v68 = v36;
  v69 = v39;
  v70 = 0x4024000000000000;
  v71 = v42;
  v72 = v44;
  v73 = v56;
  v74 = v55;
  v75 = 1;
  *&v76 = v60;
  *(&v76 + 1) = v58;
  *&v77 = v57;
  *(&v77 + 1) = v19;
  *&v78 = v20;
  *(&v78 + 1) = v51;
  v79 = v49;

LABEL_12:
  if (*self->_rangeFilter.__ptr_ == 1)
  {
    MachTimeSeconds = PRCommonGetMachTimeSeconds();
    RoseSyntheticApertureFiltering::PRRoseRangeFilter::getCurrentState(self->_rangeFilter.__ptr_, v61);
    v46 = v62;
    v47 = MachTimeSeconds - v63 <= 2.0;
  }

  else
  {
    v47 = 0;
    v46 = 0.0;
  }

  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::setCurrentRangeFilterEstimate(self->_itemLocationFilter.__ptr_, v46, v47);
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::addMeasurement(self->_itemLocationFilter.__ptr_, &v64, retstr);

  return result;
}

- (id)produceBlendedRangeEstimateForPose:(id)pose
{
  poseCopy = pose;
  ptr = self->_rangeFilter.__ptr_;
  if (*ptr == 1)
  {
    CurrentState = RoseSyntheticApertureFiltering::PRRoseRangeFilter::getCurrentState(ptr, v23);
    v7 = self->_itemLocationFilter.__ptr_;
    [poseCopy timestamp];
    v9 = v8;
    [poseCopy pose];
    RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::updateCurrentBatchSolution(v7, v9, v10, v20);
    if (v20[0] == 5)
    {
      v11 = *__p;
      v12 = *(__p + 1);
      v13 = *(__p + 2);
      [poseCopy pose];
      [poseCopy timestamp];
      v17 = [PRProximity alloc];
      [poseCopy timestamp];
      v18 = [PRProximity initWithTime:v17 range:"initWithTime:range:"];
    }

    else
    {
      v15 = [PRProximity alloc];
      HIDWORD(v16) = HIDWORD(v24);
      *&v16 = v24;
      v18 = [(PRProximity *)v15 initWithTime:v25 range:v16];
    }

    v14 = v18;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)logEstimatorInput:(id)input
{
  v110 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  proximity = [inputCopy proximity];
  if ([proximity az_valid])
  {
    proximity2 = [inputCopy proximity];
    el_valid = [proximity2 el_valid];

    if (el_valid)
    {
      v8 = self->_logger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [inputCopy rotation];
        v74 = v9;
        [inputCopy rotation];
        v70 = v10;
        [inputCopy rotation];
        v69 = v11;
        [inputCopy rotation];
        v67 = v12;
        [inputCopy translation];
        v63 = v13;
        [inputCopy translation];
        v62 = v14;
        [inputCopy translation];
        v61 = v15;
        proximity3 = [inputCopy proximity];
        [proximity3 range_m];
        v18 = v17;
        proximity4 = [inputCopy proximity];
        [proximity4 range_unc_m];
        v20 = v19;
        proximity5 = [inputCopy proximity];
        [proximity5 az_deg];
        v22 = v21;
        proximity6 = [inputCopy proximity];
        [proximity6 az_unc_deg];
        v25 = v24;
        proximity7 = [inputCopy proximity];
        [proximity7 el_deg];
        v28 = v27;
        proximity8 = [inputCopy proximity];
        [proximity8 el_unc_deg];
        v31 = v30;
        proximity9 = [inputCopy proximity];
        antenna_type = [proximity9 antenna_type];
        [inputCopy timestamp];
        v35 = v34;
        proximity10 = [inputCopy proximity];
        [proximity10 track_score];
        v38 = v37;
        proximity11 = [inputCopy proximity];
        [proximity11 sweep_angle_deg];
        *buf = 134222080;
        v79 = v74;
        v80 = 2048;
        v81 = v70;
        v82 = 2048;
        v83 = v69;
        v84 = 2048;
        v85 = v67;
        v86 = 2048;
        v87 = v63;
        v88 = 2048;
        v89 = v62;
        v90 = 2048;
        v91 = v61;
        v92 = 2048;
        v93 = v18;
        v94 = 2048;
        v95 = v20;
        v96 = 2048;
        *v97 = v22;
        *&v97[8] = 2048;
        *&v97[10] = v25;
        v98 = 2048;
        v99 = v28;
        v100 = 2048;
        v101 = v31;
        v102 = 1024;
        v103 = antenna_type;
        v104 = 2048;
        v105 = v35;
        v106 = 2048;
        v107 = v38;
        v108 = 2048;
        v109 = v40;
        _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "Estimator input: quat = (%f, %f, %f, %f), trans = (%f, %f, %f), range_m = %f, range_unc_m = %f, az_deg = %f, az_unc_deg = %f, el_deg = %f, el_unc_deg = %f, antenna = %d, time = %f, track_score = %f, sweep_angle_deg = %f", buf, 0xA8u);
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = self->_logger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [inputCopy rotation];
    v77 = v41;
    [inputCopy rotation];
    v75 = v42;
    [inputCopy rotation];
    v73 = v43;
    [inputCopy rotation];
    v71 = v44;
    [inputCopy translation];
    v68 = v45;
    [inputCopy translation];
    v66 = v46;
    [inputCopy translation];
    v65 = v47;
    proximity12 = [inputCopy proximity];
    [proximity12 range_m];
    v50 = v49;
    proximity13 = [inputCopy proximity];
    [proximity13 range_unc_m];
    v53 = v52;
    proximity14 = [inputCopy proximity];
    antenna_type2 = [proximity14 antenna_type];
    [inputCopy timestamp];
    *buf = 134220544;
    v79 = v77;
    v80 = 2048;
    v81 = v75;
    v82 = 2048;
    v83 = v73;
    v84 = 2048;
    v85 = v71;
    v86 = 2048;
    v87 = v68;
    v88 = 2048;
    v89 = v66;
    v90 = 2048;
    v91 = v65;
    v92 = 2048;
    v93 = v50;
    v94 = 2048;
    v95 = v53;
    v96 = 1024;
    *v97 = antenna_type2;
    *&v97[4] = 2048;
    *&v97[6] = v56;
    _os_log_impl(&dword_2613DF000, v8, OS_LOG_TYPE_DEFAULT, "Estimator input: quat = (%f, %f, %f, %f), trans = (%f, %f, %f), range_m = %f, range_unc_m = %f, antenna = %d, time = %f", buf, 0x6Cu);
  }

LABEL_8:

  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  v58 = dataRecorder == 0;

  if (!v58)
  {
    dataRecorder2 = [(PRItemLocalizer *)self dataRecorder];
    [dataRecorder2 recordEstimatorInput:inputCopy];
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)logAndPresentSolution:(BatchSolution *)solution withTimeStamp:(double)stamp
{
  array = [MEMORY[0x277CBEB18] array];
  begin = solution->BatchSolutionList.__begin_;
  for (i = solution->BatchSolutionList.__end_; begin != i; begin = (begin + 168))
  {
    v9 = *(begin + 1);
    v10 = *(begin + 2);
    *&v12 = *begin;
    v11 = v9;
    *(&v12 + 1) = v11;
    verticalState = solution->verticalState;
    if (verticalState == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = verticalState == 1;
    }

    *&v9 = *(begin + 9);
    *&v10 = *(begin + 10);
    v15 = [PRTargetEstimate targetEstimateWithTime:solution->isVerticalResolved vector:v14 uncertainty:stamp weight:v12 isResolved:v9 verticalState:v10];
    [array addObject:v15];
  }

  [(PRItemLocalizer *)self logTargetEstimates:array];
  v16 = [array objectAtIndex:0];
  [(PRItemLocalizer *)self presentTargetEstimate:v16];
}

- (void)logTargetEstimates:(id)estimates
{
  v46 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  estimatesCopy = estimates;
  v5 = [estimatesCopy countByEnumeratingWithState:&v27 objects:v45 count:16];
  if (v5)
  {
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(estimatesCopy);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = self->_logger;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          [v8 vector];
          v26 = v10;
          [v8 vector];
          v25 = v11;
          [v8 vector];
          v24 = v12;
          [v8 uncertainty];
          v14 = v13;
          [v8 weight];
          v16 = v15;
          [v8 timestamp];
          v18 = v17;
          verticalState = [v8 verticalState];
          *buf = 134219520;
          v32 = v26;
          v33 = 2048;
          v34 = v25;
          v35 = 2048;
          v36 = v24;
          v37 = 2048;
          v38 = v14;
          v39 = 2048;
          v40 = v16;
          v41 = 2048;
          v42 = v18;
          v43 = 2048;
          v44 = verticalState;
          _os_log_impl(&dword_2613DF000, v9, OS_LOG_TYPE_DEFAULT, "Target: estimate = (%f, %f, %f), uncertainty = %f, weight = %f, time %f, verticalState %lu", buf, 0x48u);
        }
      }

      v5 = [estimatesCopy countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v5);
  }

  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  v21 = dataRecorder == 0;

  if (!v21)
  {
    dataRecorder2 = [(PRItemLocalizer *)self dataRecorder];
    [dataRecorder2 recordTargetEstimates:estimatesCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logRangeEstimate:(id)estimate
{
  v17 = *MEMORY[0x277D85DE8];
  estimateCopy = estimate;
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [estimateCopy range];
    v7 = v6;
    [estimateCopy timestamp];
    v13 = 134218240;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "RangeEstimator output: range = %f, time %f", &v13, 0x16u);
  }

  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  v10 = dataRecorder == 0;

  if (!v10)
  {
    dataRecorder2 = [(PRItemLocalizer *)self dataRecorder];
    [dataRecorder2 recordRangeEstimate:estimateCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateDelegateWithSelector:(SEL)selector object:(id)object
{
  objectCopy = object;
  delegate = [(PRItemLocalizer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(PRItemLocalizer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PRItemLocalizer_updateDelegateWithSelector_object___block_invoke;
    block[3] = &unk_279AD6128;
    v10 = delegate;
    selectorCopy = selector;
    v11 = objectCopy;
    dispatch_async(delegateQueue, block);
  }
}

- (void)devicePoseUpdated:(id)updated
{
  updatedCopy = updated;
  [(PRItemLocalizer *)self updateDelegateWithSelector:sel_willIntegrateDevicePose_ object:updatedCopy];
  analytics = [(PRItemLocalizer *)self analytics];
  [analytics updateTravelDistanceWithPose:updatedCopy];

  dataRecorder = [(PRItemLocalizer *)self dataRecorder];
  [dataRecorder recordPoseMeasurement:updatedCopy];

  LOBYTE(dataRecorder) = [(PRItemLocalizer *)self targetIsMoving];
  deviceIsMoving = [(PRItemLocalizer *)self deviceIsMoving];
  objc_initWeak(&location, self);
  estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PRItemLocalizer_devicePoseUpdated___block_invoke;
  block[3] = &unk_279AD61E8;
  objc_copyWeak(&v13, &location);
  v14 = dataRecorder;
  v15 = deviceIsMoving;
  v11 = updatedCopy;
  selfCopy = self;
  v9 = updatedCopy;
  dispatch_async(estimatorQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __37__PRItemLocalizer_devicePoseUpdated___block_invoke(uint64_t x0_0)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((x0_0 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  v4 = [WeakRetained trajectory];
  [v4 addObject:*(x0_0 + 32)];

  v5 = [v3 latestProximity];
  v6 = [v3 estimatorInputForProximity:v5];

  if (v6)
  {
    [v3 performFilteringWithEstimatorInput:v6 targetMoving:*(x0_0 + 56) deviceMoving:*(x0_0 + 57)];
    [*(x0_0 + 32) timestamp];
    [*(x0_0 + 40) setPreviousVIOPoseTime:?];
    [v3 setLatestProximity:0];
  }

  else
  {
    [*(x0_0 + 32) timestamp];
    v8 = v7;
    [*(x0_0 + 40) previousVIOPoseTime];
    if (v8 - v9 >= 0.5)
    {
      [*(x0_0 + 32) pose];
      *&v10 = simd_quaternion(v42);
      v24 = v10;
      [*(x0_0 + 32) pose];
      v23 = v11;
      v12 = *(*(x0_0 + 40) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [*(x0_0 + 32) timestamp];
        *buf = 134219776;
        *&buf[4] = *&v24;
        *&buf[12] = 2048;
        *v31 = *(&v24 + 1);
        *&v31[8] = 2048;
        *&v32 = *(&v24 + 2);
        v33 = 2048;
        *v34 = *(&v24 + 3);
        *&v34[8] = 2048;
        *&v34[10] = *&v23;
        v35 = 2048;
        v36 = *(&v23 + 1);
        v37 = 2048;
        v38 = *(&v23 + 2);
        v39 = 2048;
        v40 = v13;
        _os_log_impl(&dword_2613DF000, v12, OS_LOG_TYPE_DEFAULT, "VIO pose: quat = (%f, %f, %f, %f), trans = (%f, %f, %f), time = %f", buf, 0x52u);
      }

      [*(x0_0 + 32) timestamp];
      [*(x0_0 + 40) setPreviousVIOPoseTime:?];
    }
  }

  v14 = [v3 produceBlendedRangeEstimateForPose:{*(x0_0 + 32), v23}];
  if (v14)
  {
    [v3 logRangeEstimate:v14];
    [v3 presentRangeEstimate:v14];
  }

  v15 = v3[1];
  [*(x0_0 + 32) timestamp];
  v17 = v16;
  [*(x0_0 + 32) pose];
  RoseSyntheticApertureFiltering::PRRoseSyntheticApertureBatchFilter::updateCurrentBatchSolution(v15, v17, v18, buf);
  if (*buf == 5)
  {
    if (buf[12] != 1)
    {
      goto LABEL_20;
    }

    *v25 = *buf;
    *&v25[5] = *&buf[5];
    memset(v26, 0, 24);
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(v26, *&v31[2], v32, 0xCF3CF3CF3CF3CF3DLL * ((v32 - *&v31[2]) >> 3));
    v26[3] = *&v34[6];
    [*(x0_0 + 32) timestamp];
    [v3 logAndPresentSolution:v25 withTimeStamp:?];
    v19 = v26[0];
    if (!v26[0])
    {
      goto LABEL_20;
    }

    v20 = v25;
    goto LABEL_19;
  }

  v21 = *(x0_0 + 40);
  if (v21)
  {
    [v21 lastSolution];
  }

  else
  {
    *__p = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  [v3 revokeTargetEstimateWithLastSolution:&v27];
  v19 = __p[0];
  if (__p[0])
  {
    v20 = &v27;
LABEL_19:
    *(v20 + 3) = v19;
    operator delete(v19);
  }

LABEL_20:
  [v3 updateDelegateWithSelector:sel_didUpdateDevicePose_ object:*(x0_0 + 32)];
  if (*&v31[2])
  {
    v32 = *&v31[2];
    operator delete(*&v31[2]);
  }

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  objc_initWeak(&location, self);
  estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__PRItemLocalizer_reset__block_invoke;
  v4[3] = &unk_279AD60B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(estimatorQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __24__PRItemLocalizer_reset__block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 32)))
  {
    operator new();
  }
}

- (void)invalidPoseDetected
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "invalidPoseDetected: Resetting location estimator", v8, 2u);
  }

  [(PRItemLocalizer *)self lastSolution];
  v4 = v9;
  v5 = v10;
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v4 != v5)
  {
    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Revoke solution due to VIO reset", v8, 2u);
    }
  }

  [(PRItemLocalizer *)self reset];
  [(PRItemLocalizer *)self revokeTargetEstimate:0];
  analytics = [(PRItemLocalizer *)self analytics];
  [analytics invalidPoseDetected];
}

- (void)didReceiveNewSolutions:(id)solutions
{
  v75 = *MEMORY[0x277D85DE8];
  solutionsCopy = solutions;
  v5 = self->_logger;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v62) = [solutionsCopy count];
    _os_log_impl(&dword_2613DF000, v5, OS_LOG_TYPE_DEFAULT, "Received %d solutions from Proximity", buf, 8u);
  }

  self->_lastSuccessfulCompanionCommunicationOrInitMachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
  v6 = [solutionsCopy indexOfObjectPassingTest:&__block_literal_global_83];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [solutionsCopy objectAtIndex:v6];
    if ([v7 az_valid] && objc_msgSend(v7, "el_valid"))
    {
      v8 = self->_logger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v7 range_m];
        v10 = v9;
        [v7 az_deg];
        v12 = v11;
        [v7 el_deg];
        v14 = v13;
        [v7 mach_absolute_time_sec];
        v16 = v15;
        [v7 track_score];
        v18 = v17;
        previous_solution_is_bad = [v7 previous_solution_is_bad];
        [v7 sweep_angle_deg];
        *buf = 134219520;
        v62 = v10;
        v63 = 2048;
        v64 = v12;
        v65 = 2048;
        v66 = v14;
        v67 = 2048;
        v68 = v16;
        v69 = 2048;
        v70 = v18;
        v71 = 1024;
        v72 = previous_solution_is_bad;
        v73 = 2048;
        v74 = v20;
        v21 = "Found raw measurement with range_m %f m, az_deg %f deg, el_deg %f deg for time %f, track score %f, prev_solution_is_bad %d, sweep_angle_deg %f";
        v22 = v8;
        v23 = 68;
LABEL_10:
        _os_log_impl(&dword_2613DF000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else
    {
      v8 = self->_logger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v7 range_m];
        v25 = v24;
        [v7 mach_absolute_time_sec];
        *buf = 134218240;
        v62 = v25;
        v63 = 2048;
        v64 = v26;
        v21 = "Found raw measurement with range_m %f m for time %f";
        v22 = v8;
        v23 = 22;
        goto LABEL_10;
      }
    }

    [v7 range_m];
    if (v27 <= -0.5)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        [PRItemLocalizer didReceiveNewSolutions:?];
      }
    }

    else
    {
      if ([v7 az_valid] && objc_msgSend(v7, "el_valid"))
      {
        v28 = [PRProximity alloc];
        [v7 mach_absolute_time_sec];
        v30 = v29;
        [v7 range_m];
        v32 = v31;
        [v7 az_deg];
        v34 = v33;
        [v7 el_deg];
        *&v35 = v32;
        *&v36 = v34;
        *&v38 = v37;
        v39 = [(PRProximity *)v28 initWithTime:v30 range:v35 azimuth:v36 elevation:v38];
      }

      else
      {
        v41 = [PRProximity alloc];
        [v7 mach_absolute_time_sec];
        v43 = v42;
        [v7 range_m];
        *&v45 = v44;
        v39 = [(PRProximity *)v41 initWithTime:v43 range:v45];
      }

      v46 = v39;
      [(PRItemLocalizer *)self updateDelegateWithSelector:sel_willIntegrateProximity_ object:v39];
      analytics = [(PRItemLocalizer *)self analytics];
      [analytics updateWithRangeEstimate:v46];

      usageFirstRange = [(PRItemLocalizer *)self usageFirstRange];
      LODWORD(analytics) = usageFirstRange == 0;

      if (analytics)
      {
        v49 = MEMORY[0x277CCABB0];
        [v7 range_m];
        v50 = [v49 numberWithDouble:?];
        [(PRItemLocalizer *)self setUsageFirstRange:v50];
      }

      if ([v7 soi_rssi_valid])
      {
        analytics2 = [(PRItemLocalizer *)self analytics];
        [v7 soi_rssi_dbm];
        [analytics2 updateSOIRSSI:?];
      }

      dataRecorder = [(PRItemLocalizer *)self dataRecorder];
      [dataRecorder recordProximityMeasurement:v7];

      LOBYTE(dataRecorder) = [(PRItemLocalizer *)self targetIsMoving];
      deviceIsMoving = [(PRItemLocalizer *)self deviceIsMoving];
      objc_initWeak(buf, self);
      estimatorQueue = [(PRItemLocalizer *)self estimatorQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PRItemLocalizer_didReceiveNewSolutions___block_invoke_86;
      block[3] = &unk_279AD6230;
      objc_copyWeak(&v58, buf);
      v57 = v7;
      v59 = dataRecorder;
      v60 = deviceIsMoving;
      dispatch_async(estimatorQueue, block);

      objc_destroyWeak(&v58);
      objc_destroyWeak(buf);
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

BOOL __42__PRItemLocalizer_didReceiveNewSolutions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 variant])
  {
    v3 = [v2 variant] == 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __42__PRItemLocalizer_didReceiveNewSolutions___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) mach_absolute_time_sec];
    [WeakRetained deleteTrajectoryWaypointsBeforeTime:?];
    v3 = [WeakRetained latestProximity];

    if (v3)
    {
      v4 = WeakRetained[3];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "Unprocessed proximity measurement found. Using non-vio range filtering", v11, 2u);
      }

      v5 = [WeakRetained latestProximity];
      v6 = [WeakRetained performRangeFilteringWithoutVIO:v5 targetMoving:*(a1 + 48) deviceMoving:*(a1 + 49)];

      [WeakRetained logRangeEstimate:v6];
      [WeakRetained presentRangeEstimate:v6];
      [WeakRetained setLatestProximity:0];
    }

    v7 = [WeakRetained estimatorInputForProximity:*(a1 + 32)];
    if (v7)
    {
      [WeakRetained performFilteringWithEstimatorInput:v7 targetMoving:*(a1 + 48) deviceMoving:*(a1 + 49)];
      v8 = [WeakRetained trajectory];
      v9 = [v8 lastObject];
      v10 = [WeakRetained produceBlendedRangeEstimateForPose:v9];

      if (v10)
      {
        [WeakRetained logRangeEstimate:v10];
        [WeakRetained presentRangeEstimate:v10];
      }
    }

    else
    {
      [WeakRetained setLatestProximity:*(a1 + 32)];
    }
  }
}

- (id)performRangeFilteringWithoutVIO:(id)o targetMoving:(BOOL)moving deviceMoving:(BOOL)deviceMoving
{
  deviceMovingCopy = deviceMoving;
  movingCopy = moving;
  oCopy = o;
  v9 = [oCopy antenna_type] - 1;
  if (v9 < 4)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  [oCopy mach_absolute_time_sec];
  v12 = v11;
  [oCopy range_m];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = 0.1;
  v19 = v10;
  RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithoutVIO(self->_rangeFilter.__ptr_, v18, movingCopy, deviceMovingCopy, &v17);
  v14 = [PRProximity alloc];
  [oCopy mach_absolute_time_sec];
  v15 = [PRProximity initWithTime:v14 range:"initWithTime:range:"];

  return v15;
}

- (id)performRangeFilteringWithVIO:(id)o
{
  oCopy = o;
  [oCopy translation];
  v31 = v5;
  [oCopy translation];
  v30 = v6;
  [oCopy translation];
  v29 = v7;
  [oCopy rotation];
  v28 = v8;
  [oCopy rotation];
  v27 = v9;
  [oCopy rotation];
  v26 = v10;
  [oCopy rotation];
  proximity = [oCopy proximity];
  antenna_type = [proximity antenna_type];
  if ((antenna_type - 1) < 4)
  {
    v15 = antenna_type;
  }

  else
  {
    v15 = 0;
  }

  proximity2 = [oCopy proximity];
  [proximity2 mach_absolute_time_sec];
  v18 = v17;
  proximity3 = [oCopy proximity];
  [proximity3 range_m];
  v33[0] = v18;
  v33[1] = v20;
  v33[2] = 0x3FB999999999999ALL;
  v34 = v15;
  v35 = 0;
  v36 = 0;
  v37 = v31;
  v38 = v30;
  v39 = v29;
  v40 = v28;
  v41 = v27;
  v42 = v26;
  v43 = v25;

  RoseSyntheticApertureFiltering::PRRoseRangeFilter::addMeasurementWithVIO(self->_rangeFilter.__ptr_, v33, v32);
  v21 = [PRProximity alloc];
  proximity4 = [oCopy proximity];
  [proximity4 mach_absolute_time_sec];
  v23 = [PRProximity initWithTime:v21 range:"initWithTime:range:"];

  return v23;
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  v5 = 0;
  v33 = *MEMORY[0x277D85DE8];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRangingServiceStateNotReady", buf, 2u);
        }

        v5 = 1;
      }
    }

    else
    {
      v25 = self->_logger;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2613DF000, v25, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRangingServiceStateUnknown", buf, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    switch(state)
    {
      case 2uLL:
        v13 = self->_logger;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2613DF000, v13, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRangingServiceStateReady", buf, 2u);
        }

        if (!self->_rangingState)
        {
          self->_rangingState = 1;
        }

        v14 = self->_logger;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          clientState = self->_clientState;
          *buf = 67109120;
          v32 = clientState;
          _os_log_impl(&dword_2613DF000, v14, OS_LOG_TYPE_DEFAULT, "#companion-retry rangingServiceDidUpdateState PRRangingServiceStateReady _clientState=%i", buf, 8u);
        }

        if ((self->_clientState - 2) <= 2 && self->_rangingState == 1)
        {
          v16 = self->_logger;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "#companion-retry Configuring due to client state", buf, 2u);
          }

          session = [(PRItemLocalizer *)self session];
          remoteDevice = [(PRItemLocalizer *)self remoteDevice];
          configurationParameters = [(PRItemLocalizer *)self configurationParameters];
          [session configureForCompanionRanging:remoteDevice options:configurationParameters];

          self->_rangingState = 2;
        }

        v20 = self->_logger;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = 2;
          _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "#companion-retry sending PRItemLocalizerStateReady to client", buf, 2u);
        }

        else
        {
          v5 = 2;
        }

        break;
      case 3uLL:
        v21 = self->_logger;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2613DF000, v21, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRangingServiceStateError", buf, 2u);
        }

        v22 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30 = @"Received RangingServiceStateError";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v24 = [v22 errorWithDomain:*MEMORY[0x277D433A8] code:999 userInfo:v23];

        [(PRItemLocalizer *)self didFailWithError:v24];
        v5 = 3;
        break;
      case 4uLL:
        v6 = self->_logger;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRangingServiceStateOff", buf, 2u);
        }

        v7 = self->_logger;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_clientState;
          *buf = 67109120;
          v32 = v8;
          _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "#companion-retry rangingServiceDidUpdateState PRRangingServiceStateOff _clientState=%i", buf, 8u);
        }

        if ((self->_clientState - 1) <= 3)
        {
          v9 = MEMORY[0x277CCA9B8];
          v27 = *MEMORY[0x277CCA450];
          v28 = @"Received RangingServiceStateOff after at least attempting to config";
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v11 = [v9 errorWithDomain:*MEMORY[0x277D433A8] code:999 userInfo:v10];

          [(PRItemLocalizer *)self didFailWithError:v11];
        }

        v5 = 4;
        break;
    }
  }

  [(PRItemLocalizer *)self sendItemLocalizerChangedState:v5];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)sendPRItemState:(unint64_t)state
{
  delegateQueue = [(PRItemLocalizer *)self delegateQueue];
  if (delegateQueue)
  {
    delegateQueue2 = [(PRItemLocalizer *)self delegateQueue];
  }

  else
  {
    delegateQueue2 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__PRItemLocalizer_sendPRItemState___block_invoke;
    v9[3] = &unk_279AD6100;
    objc_copyWeak(v11, &location);
    v11[1] = state;
    v10 = WeakRetained;
    dispatch_async(delegateQueue2, v9);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __35__PRItemLocalizer_sendPRItemState___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "#companion-retry Remote item changed state: %lu", &v7, 0xCu);
    }

    [*(a1 + 32) itemChangedState:*(a1 + 48)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendItemLocalizerChangedActivity:(unint64_t)activity
{
  delegateQueue = [(PRItemLocalizer *)self delegateQueue];
  if (delegateQueue)
  {
    delegateQueue2 = [(PRItemLocalizer *)self delegateQueue];
  }

  else
  {
    delegateQueue2 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__PRItemLocalizer_sendItemLocalizerChangedActivity___block_invoke;
    v9[3] = &unk_279AD6100;
    objc_copyWeak(v11, &location);
    v11[1] = activity;
    v10 = WeakRetained;
    dispatch_async(delegateQueue2, v9);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __52__PRItemLocalizer_sendItemLocalizerChangedActivity___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer changed activity: %lu", &v7, 0xCu);
    }

    [*(a1 + 32) itemLocalizerChangedActivity:*(a1 + 48)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendItemLocalizerChangedState:(unint64_t)state
{
  delegateQueue = [(PRItemLocalizer *)self delegateQueue];
  if (delegateQueue)
  {
    delegateQueue2 = [(PRItemLocalizer *)self delegateQueue];
  }

  else
  {
    delegateQueue2 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__PRItemLocalizer_sendItemLocalizerChangedState___block_invoke;
    v9[3] = &unk_279AD6100;
    objc_copyWeak(v11, &location);
    v11[1] = state;
    v10 = WeakRetained;
    dispatch_async(delegateQueue2, v9);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __49__PRItemLocalizer_sendItemLocalizerChangedState___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer changed state: %lu", &v7, 0xCu);
    }

    [*(a1 + 32) itemLocalizerChangedState:*(a1 + 48)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  if (status <= 1)
  {
    if (!status)
    {
      logger = self->_logger;
      if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v4 = "#companion-retry ItemLocalizer received PRRangingRequestStatusUnknown";
      v5 = buf;
      goto LABEL_17;
    }

    if (status == 1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v4 = "#companion-retry ItemLocalizer received PRRangingRequestStatusDidStart";
        v5 = &v9;
        goto LABEL_17;
      }
    }
  }

  else
  {
    switch(status)
    {
      case 2uLL:
        logger = self->_logger;
        if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v8 = 0;
        v4 = "#companion-retry ItemLocalizer received PRRangingRequestStatusStopped";
        v5 = &v8;
        goto LABEL_17;
      case 3uLL:
        logger = self->_logger;
        if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v7 = 0;
        v4 = "#companion-retry ItemLocalizer received PRRangingRequestStatusInvalidated";
        v5 = &v7;
        goto LABEL_17;
      case 4uLL:
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 0;
          v4 = "#companion-retry ItemLocalizer received PRRangingRequestStatusFailedToStart";
          v5 = &v6;
LABEL_17:
          _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
        }

        break;
    }
  }
}

- (void)remoteDevice:(id)device didChangeState:(int64_t)state
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  remoteDevice = [(PRItemLocalizer *)self remoteDevice];
  uUID = [remoteDevice UUID];
  uUID2 = [deviceCopy UUID];
  v10 = [uUID isEqual:uUID2];

  if (v10)
  {
    if (state > 1)
    {
      if (state == 2)
      {
        [(PRItemLocalizer *)self remoteDeviceDidMove];
      }

      else if (state == 3)
      {
        [(PRItemLocalizer *)self sendPRItemState:6];
      }
    }

    else
    {
      if (!state)
      {
        logger = self->_logger;
        if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
LABEL_23:
          [(PRItemLocalizer *)self sendPRItemState:state];
          goto LABEL_35;
        }

        *buf = 0;
        v18 = "#companion-retry ItemLocalizer received PRRemoteDeviceStateUnknown";
LABEL_22:
        _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
        goto LABEL_23;
      }

      if (state == 1)
      {
        v11 = self->_logger;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2613DF000, v11, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received PRRemoteDeviceStateReady", buf, 2u);
        }

        if (self->_rangingState == 2)
        {
          self->_rangingState = 3;
          self->_lastSuccessfulCompanionCommunicationOrInitMachContinuousTimeSeconds = PRCommonGetMachContinuousTimeSeconds();
          analytics = [(PRItemLocalizer *)self analytics];
          [analytics configureComplete];
        }

        v13 = self->_logger;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          clientState = self->_clientState;
          *buf = 67109120;
          v30 = clientState;
          _os_log_impl(&dword_2613DF000, v13, OS_LOG_TYPE_DEFAULT, "#companion-retry remoteDeviceDidChangeState _clientState=%i", buf, 8u);
        }

        v15 = self->_clientState;
        if (v15 == 4)
        {
          v19 = self->_logger;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2613DF000, v19, OS_LOG_TYPE_DEFAULT, "#companion-retry Restarting ranging on PRRemoteDeviceStateReady.", buf, 2u);
          }

          session = [(PRItemLocalizer *)self session];
          remoteDevice2 = [(PRItemLocalizer *)self remoteDevice];
          v28 = 0;
          v22 = [session startCompanionRanging:remoteDevice2 options:0 error:&v28];
          v23 = v28;

          if (v22)
          {
            self->_rangingState = 4;
            v24 = self->_logger;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2613DF000, v24, OS_LOG_TYPE_DEFAULT, "#companion-retry Sending PRItemStateReconnected", buf, 2u);
            }

            [(PRItemLocalizer *)self sendPRItemState:3];
          }

          else
          {
            v25 = self->_logger;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2613DF000, v25, OS_LOG_TYPE_DEFAULT, "Failed to restart ranging on PRRemoteDeviceStateReady.", buf, 2u);
            }

            v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D433A8] code:301 userInfo:0];
            [(PRItemLocalizer *)self didFailWithError:v26];
          }
        }

        else if (v15 == 2)
        {
          self->_clientState = 3;
          v16 = self->_logger;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "#companion-retry Setting _clientState to LOCALIZER_CLIENT_CONFIGURED remoteDeviceDidChangeState", buf, 2u);
          }

          logger = self->_logger;
          if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          *buf = 0;
          v18 = "#companion-retry Sending PRItemStateFindable";
          goto LABEL_22;
        }
      }
    }
  }

LABEL_35:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceDidMove
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Setting targetIsMoving = YES", buf, 2u);
  }

  [(PRItemLocalizer *)self setTargetIsMoving:1];
  [(PRItemLocalizer *)self sendPRItemState:4];
  [(PRItemLocalizer *)self lastSolution];
  v4 = v11;
  v5 = v12;
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v4 != v5)
  {
    v6 = self->_logger;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2613DF000, v6, OS_LOG_TYPE_DEFAULT, "Revoke solution due to target motion", buf, 2u);
    }
  }

  [(PRItemLocalizer *)self revokeTargetEstimate:1];
  [(PRItemLocalizer *)self reset];
  [(PRItemLocalizer *)self logTargetIsMovingChange:[(PRItemLocalizer *)self targetIsMoving]];
  movementTimer = [(PRItemLocalizer *)self movementTimer];
  [movementTimer invalidate];

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PRItemLocalizer_remoteDeviceDidMove__block_invoke;
  block[3] = &unk_279AD60B0;
  objc_copyWeak(&v9, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __38__PRItemLocalizer_remoteDeviceDidMove__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __38__PRItemLocalizer_remoteDeviceDidMove__block_invoke_2;
    v3[3] = &unk_279AD60D8;
    v3[4] = WeakRetained;
    v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v3 block:2.5];
    [WeakRetained setMovementTimer:v2];
  }
}

void __38__PRItemLocalizer_remoteDeviceDidMove__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2613DF000, v4, OS_LOG_TYPE_DEFAULT, "Setting targetIsMoving = NO", v5, 2u);
  }

  [*(a1 + 32) setTargetIsMoving:0];
  [*(a1 + 32) logTargetIsMovingChange:{objc_msgSend(*(a1 + 32), "targetIsMoving")}];
  [*(a1 + 32) sendPRItemState:5];
}

- (void)didFailWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  analytics = [(PRItemLocalizer *)self analytics];
  [analytics rangingFailedWithError:errorCopy];

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = *&errorCopy;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "#companion-retry received didFailWithError error:%@", buf, 0xCu);
  }

  if ([errorCopy code] == 300)
  {
    [(PRItemLocalizer *)self updateDelegateWithSelector:sel_didFailWithError_ object:errorCopy];
  }

  else
  {
    v7 = self->_logger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      code = [errorCopy code];
      *buf = 134217984;
      v24 = *&code;
      _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "#companion-retry ItemLocalizer received error code %lld", buf, 0xCu);
    }

    if ([errorCopy code] == 302)
    {
      v9 = self->_logger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2613DF000, v9, OS_LOG_TYPE_DEFAULT, "#companion-retry sending PRItemStateReconnecting", buf, 2u);
      }

      [(PRItemLocalizer *)self sendPRItemState:2];
    }

    session = [(PRItemLocalizer *)self session];
    v11 = session == 0;

    if (v11)
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2613DF000, v18, OS_LOG_TYPE_DEFAULT, "#companion-retry not attempting to retry - current session is nil and a new one is scheduled", buf, 2u);
      }
    }

    else
    {
      session2 = [(PRItemLocalizer *)self session];
      [session2 invalidate];

      [(PRItemLocalizer *)self setSession:0];
      self->_rangingState = 0;
      objc_initWeak(&location, self);
      v13 = NomininalRetryTimeMilliseconds;
      v14 = PRCommonGetMachContinuousTimeSeconds() - self->_lastSuccessfulCompanionCommunicationOrInitMachContinuousTimeSeconds;
      if (v14 > *&RetryTimeStartBackoffSeconds)
      {
        v13 = BackoffRetryTimeMilliseconds;
        v15 = self->_logger;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v24 = v14;
          _os_log_impl(&dword_2613DF000, v15, OS_LOG_TYPE_DEFAULT, "#companion-retry Attempting retry at the backoff rate.  It has been %lf seconds since last successful configure or init.  ", buf, 0xCu);
        }
      }

      v16 = dispatch_time(0, 1000000 * v13);
      proximityQueue = [(PRItemLocalizer *)self proximityQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PRItemLocalizer_didFailWithError___block_invoke;
      block[3] = &unk_279AD6258;
      block[4] = self;
      objc_copyWeak(&v21, &location);
      dispatch_after(v16, proximityQueue, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __36__PRItemLocalizer_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2613DF000, v2, OS_LOG_TYPE_DEFAULT, "#companion-retry PRCompanionRangingSession initWithDelegate", v8, 2u);
  }

  v3 = objc_alloc(MEMORY[0x277D43390]);
  v4 = *(a1 + 32);
  v5 = [v4 proximityQueue];
  v6 = [v3 initWithDelegate:v4 queue:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSession:v6];
}

- (void)dealloc
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Destructing PRItemLocalizer and invalidating nearbyd XCP connection.", buf, 2u);
  }

  [(PRItemLocalizer *)self recordUsage];
  session = [(PRItemLocalizer *)self session];
  [session invalidate];

  movementTimer = [(PRItemLocalizer *)self movementTimer];
  [movementTimer invalidate];

  analytics = [(PRItemLocalizer *)self analytics];
  [analytics deinit];

  v7.receiver = self;
  v7.super_class = PRItemLocalizer;
  [(PRItemLocalizer *)&v7 dealloc];
}

- (void)analyticsLogTorchButtonPresented
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "PRItemLocalizer logging external TorchButtonPresented event", v5, 2u);
  }

  analytics = [(PRItemLocalizer *)self analytics];
  [analytics torchButtonPresented];
}

- (PRItemLocalizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BatchSolution)lastSolution
{
  *&retstr->solutionStatus = *&self->_lastSolution.solutionStatus;
  *(&retstr->isVerticalResolved + 1) = *(&self->_lastSolution.isVerticalResolved + 1);
  retstr->BatchSolutionList.__end_ = 0;
  retstr->BatchSolutionList.__cap_ = 0;
  retstr->BatchSolutionList.__begin_ = 0;
  result = std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__init_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(&retstr->BatchSolutionList, self->_lastSolution.BatchSolutionList.__begin_, self->_lastSolution.BatchSolutionList.__end_, 0xCF3CF3CF3CF3CF3DLL * ((self->_lastSolution.BatchSolutionList.__end_ - self->_lastSolution.BatchSolutionList.__begin_) >> 3));
  retstr->lastTestStatisticValue = self->_lastSolution.lastTestStatisticValue;
  return result;
}

- (void)setLastSolution:(BatchSolution *)solution
{
  v5 = *(&solution->isVerticalResolved + 1);
  *&self->_lastSolution.solutionStatus = *&solution->solutionStatus;
  *(&self->_lastSolution.isVerticalResolved + 1) = v5;
  if (&self->_lastSolution != solution)
  {
    std::vector<RoseSyntheticApertureFiltering::BatchSolutionParticle>::__assign_with_size[abi:ne200100]<RoseSyntheticApertureFiltering::BatchSolutionParticle*,RoseSyntheticApertureFiltering::BatchSolutionParticle*>(&self->_lastSolution.BatchSolutionList.__begin_, solution->BatchSolutionList.__begin_, solution->BatchSolutionList.__end_, 0xCF3CF3CF3CF3CF3DLL * ((solution->BatchSolutionList.__end_ - solution->BatchSolutionList.__begin_) >> 3));
  }

  self->_lastSolution.lastTestStatisticValue = solution->lastTestStatisticValue;
}

- (id).cxx_construct
{
  *(self + 54) = 0;
  *(self + 220) = 0;
  *(self + 56) = 0;
  *(self + 228) = 0;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end