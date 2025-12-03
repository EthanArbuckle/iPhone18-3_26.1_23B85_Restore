@interface _TSF_TSDgPTPManager
+ (id)diagnosticInfo;
+ (id)gPTPManager;
+ (id)sharedgPTPManager;
+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout;
+ (void)diagnosticInfo;
+ (void)initialize;
+ (void)notifyWhengPTPManagerIsAvailable:(id)available;
+ (void)notifyWhengPTPManagerIsUnavailable:(id)unavailable;
- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)index identifier:(unint64_t *)identifier error:(id *)error;
- (BOOL)addAirPlayPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)addCopresencePTPInstance:(unint64_t *)instance ntpAndUpTimeOffsetNsec:(int64_t)nsec isLocalClockSourceFromNTP:(BOOL)p error:(id *)error;
- (BOOL)addCopresencePTPInstanceRefWithError:(id *)error;
- (BOOL)addPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)dockReplayTimestamps:(id *)timestamps;
- (BOOL)logInterfaceStatisticsWithError:(id *)error;
- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)index error:(id *)error;
- (BOOL)removeAirPlayPTPInstanceWithError:(id *)error;
- (BOOL)removeCopresencePTPInstanceWithError:(id *)error;
- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)startReplayTimestamps:(id)timestamps;
- (BOOL)stopReplayTimestamps:(id)timestamps;
- (_TSF_TSDgPTPClock)systemDomain;
- (_TSF_TSDgPTPManager)init;
- (unint64_t)airPlayPTPInstanceClockIdentifier;
- (unint64_t)avbPTPInstance0ClockIdentifier;
- (unint64_t)avbPTPInstance1ClockIdentifier;
- (unint64_t)avbPTPInstance2ClockIdentifier;
- (unint64_t)avbPTPInstance3ClockIdentifier;
- (unint64_t)copresencePTPInstanceClockIdentifier;
- (void)dealloc;
- (void)init;
@end

@implementation _TSF_TSDgPTPManager

+ (void)initialize
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)notifyWhengPTPManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56___TSF_TSDgPTPManager_notifyWhengPTPManagerIsAvailable___block_invoke;
  v6[3] = &unk_279DBD760;
  v7 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhengPTPManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58___TSF_TSDgPTPManager_notifyWhengPTPManagerIsUnavailable___block_invoke;
  v6[3] = &unk_279DBD760;
  v7 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:v6];
}

+ (id)sharedgPTPManager
{
  if (sharedgPTPManager_onceToken != -1)
  {
    +[_TSF_TSDgPTPManager sharedgPTPManager];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___TSF_TSDgPTPManager_sharedgPTPManager__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedgPTPManagerQueue, block);
  v3 = _sharedgPTPManager_0;

  return v3;
}

+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout
{
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___TSF_TSDgPTPManager_sharedgPTPManagerSyncWithTimeout___block_invoke;
  v11[3] = &unk_279DBD538;
  v6 = v5;
  v12 = v6;
  [self notifyWhengPTPManagerIsAvailable:v11];
  v7 = dispatch_time(0, 1000000 * timeout);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find gPTP manager within the timeout period.\n", v10, 2u);
    }

    sharedgPTPManager = 0;
  }

  else
  {
    sharedgPTPManager = [self sharedgPTPManager];
  }

  return sharedgPTPManager;
}

+ (id)gPTPManager
{
  v2 = objc_alloc_init(_TSF_TSDgPTPManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(_TSF_TSDgPTPManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (_TSF_TSDgPTPManager)init
{
  v15.receiver = self;
  v15.super_class = _TSF_TSDgPTPManager;
  v2 = [(_TSF_TSDgPTPManager *)&v15 init];
  if (!v2)
  {
    return v2;
  }

  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncgPTPManager"];
  v5 = [v3 matchingService:v4];
  service = v2->_service;
  v2->_service = v5;

  if (!v2->_service)
  {
    [(_TSF_TSDgPTPManager *)v2 init];
    return 0;
  }

  v7 = [[_TSF_IODConnection alloc] initWithService:v2->_service andType:42];
  connection = v2->_connection;
  v2->_connection = v7;

  if (!v2->_connection)
  {
    [(_TSF_TSDgPTPManager *)v2 init];
    return 0;
  }

  v9 = [(IOKService *)v2->_service iodPropertyForKey:@"SystemDomainIdentifier"];
  v10 = v9;
  if (v9)
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  v2->_systemDomainClockIdentifier = unsignedLongLongValue;
  v12 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPManager.systemDomain", 0);
  systemDomainQueue = v2->_systemDomainQueue;
  v2->_systemDomainQueue = v12;

  return v2;
}

- (_TSF_TSDgPTPClock)systemDomain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  systemDomainQueue = self->_systemDomainQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35___TSF_TSDgPTPManager_systemDomain__block_invoke;
  v5[3] = &unk_279DBD560;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(systemDomainQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)addPTPInstance:(unint64_t *)instance error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (instance)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addPTPInstance:error:];
    }

    *instance = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)instance error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (instance)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addTimeOfDayPTPInstance:error:];
    }

    *instance = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = identifier;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if (!v4)
  {
    [_TSF_TSDgPTPManager removePTPInstanceWithIdentifier:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)index identifier:(unint64_t *)identifier error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v11[0] = index;
    v9 = 1;
    v6 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:v11 scalarInputCount:1 scalarOutputs:&v10 scalarOutputCount:&v9 error:error];
    if (!v6)
    {
      [_TSF_TSDgPTPManager addAVBPTPInstanceIndex:identifier:error:];
    }

    *identifier = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)index error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = index;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if (!v4)
  {
    [_TSF_TSDgPTPManager removeAVBPTPInstanceWithIndex:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)avbPTPInstance0ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB0ClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance1ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB1ClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance2ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB2ClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance3ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB3ClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)airPlayPTPInstanceClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AirPlayClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (BOOL)addAirPlayPTPInstance:(unint64_t *)instance error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (instance)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addAirPlayPTPInstance:error:];
    }

    *instance = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)removeAirPlayPTPInstanceWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDgPTPManager removeAirPlayPTPInstanceWithError:];
  }

  return v3;
}

- (unint64_t)copresencePTPInstanceClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"CopresenceClockID"];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (BOOL)addCopresencePTPInstance:(unint64_t *)instance ntpAndUpTimeOffsetNsec:(int64_t)nsec isLocalClockSourceFromNTP:(BOOL)p error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  if (instance)
  {
    v12 = 1;
    v11[0] = nsec;
    v11[1] = p;
    v7 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v12 error:error];
    if (!v7)
    {
      [_TSF_TSDgPTPManager addCopresencePTPInstance:ntpAndUpTimeOffsetNsec:isLocalClockSourceFromNTP:error:];
    }

    *instance = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)removeCopresencePTPInstanceWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDgPTPManager removeCopresencePTPInstanceWithError:];
  }

  return v3;
}

- (BOOL)addCopresencePTPInstanceRefWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:10 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDgPTPManager addCopresencePTPInstanceRefWithError:];
  }

  return v3;
}

- (BOOL)logInterfaceStatisticsWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:9 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDgPTPManager logInterfaceStatisticsWithError:];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[_TSF_TSDClockManager sharedClockManager];
  [v3 removegPTPServicesWithError:0];

  v4.receiver = self;
  v4.super_class = _TSF_TSDgPTPManager;
  [(_TSF_TSDgPTPManager *)&v4 dealloc];
}

+ (id)diagnosticInfo
{
  v2 = MEMORY[0x277D1AE20];
  v3 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncgPTPManager"];
  v4 = [v2 matchingService:v3];

  if (!v4)
  {
    +[(_TSF_TSDgPTPManager *)&v23];
LABEL_25:
    dictionary = v23;
    goto LABEL_20;
  }

  if (([v4 conformsToIOClassName:@"IOTimeSyncgPTPManager"] & 1) == 0)
  {
    +[(_TSF_TSDgPTPManager *)&v23];
    goto LABEL_25;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  ioClassName = [v4 ioClassName];
  [dictionary setObject:ioClassName forKeyedSubscript:@"ClassName"];

  v7 = [v4 iodPropertyForKey:@"SystemDomainIdentifier"];
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:@"SystemDomainIdentifier"];
  }

  v8 = [v4 iodPropertyForKey:@"AVB0ClockID"];

  if (v8)
  {
    [dictionary setObject:v8 forKeyedSubscript:@"AVB0ClockID"];
  }

  v9 = [v4 iodPropertyForKey:@"AVB1ClockID"];

  if (v9)
  {
    [dictionary setObject:v9 forKeyedSubscript:@"AVB1ClockID"];
  }

  v10 = [v4 iodPropertyForKey:@"AVB2ClockID"];

  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:@"AVB2ClockID"];
  }

  v11 = [v4 iodPropertyForKey:@"AVB3ClockID"];

  if (v11)
  {
    [dictionary setObject:v11 forKeyedSubscript:@"AVB3ClockID"];
  }

  v12 = [v4 iodPropertyForKey:@"AirPlayClockID"];

  if (v12)
  {
    [dictionary setObject:v12 forKeyedSubscript:@"AirPlayClockID"];
  }

  v13 = [v4 iodPropertyForKey:@"CopresenceClockID"];

  if (v13)
  {
    [dictionary setObject:v13 forKeyedSubscript:@"CopresenceClockID"];
  }

  array = [MEMORY[0x277CBEB18] array];
  v15 = [v4 childIteratorInServicePlaneWithError:0];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __37___TSF_TSDgPTPManager_diagnosticInfo__block_invoke;
  v21 = &unk_279DBD7A8;
  v16 = array;
  v22 = v16;
  [v15 enumerateWithBlock:&v18];
  if ([v16 count])
  {
    [dictionary setObject:v16 forKeyedSubscript:@"PTPInstances"];
  }

LABEL_20:

  return dictionary;
}

- (BOOL)dockReplayTimestamps:(id *)timestamps
{
  if (timestamps)
  {
    v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:11 scalarInputs:timestamps scalarInputCount:152 scalarOutputs:timestamps->var1 scalarOutputCount:40 * timestamps->var0.var1 error:0, *MEMORY[0x277D85DE8]];
    if (!v3)
    {
      [_TSF_TSDgPTPManager dockReplayTimestamps:];
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)startReplayTimestamps:(id)timestamps
{
  connection = self->_connection;
  timestampsCopy = timestamps;
  timestampsCopy2 = timestamps;
  uTF8String = [timestampsCopy2 UTF8String];
  v8 = [timestampsCopy2 length];

  v11 = 0;
  v9 = [(_TSF_IODConnection *)connection callMethodWithSelector:12 scalarInputs:0 scalarInputCount:0 structInput:uTF8String structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
  if (!v9)
  {
    [_TSF_TSDgPTPManager startReplayTimestamps:];
  }

  return v9;
}

- (BOOL)stopReplayTimestamps:(id)timestamps
{
  connection = self->_connection;
  timestampsCopy = timestamps;
  timestampsCopy2 = timestamps;
  uTF8String = [timestampsCopy2 UTF8String];
  v8 = [timestampsCopy2 length];

  v11 = 0;
  v9 = [(_TSF_IODConnection *)connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 structInput:uTF8String structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
  if (!v9)
  {
    [_TSF_TSDgPTPManager stopReplayTimestamps:];
  }

  return v9;
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addPTPInstance:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addTimeOfDayPTPInstance:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removePTPInstanceWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAVBPTPInstanceIndex:identifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAVBPTPInstanceWithIndex:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAirPlayPTPInstance:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAirPlayPTPInstanceWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addCopresencePTPInstance:ntpAndUpTimeOffsetNsec:isLocalClockSourceFromNTP:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeCopresencePTPInstanceWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addCopresencePTPInstanceRefWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInterfaceStatisticsWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)diagnosticInfo
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *self = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dockReplayTimestamps:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startReplayTimestamps:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopReplayTimestamps:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end