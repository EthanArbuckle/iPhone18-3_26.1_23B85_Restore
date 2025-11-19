@interface _TSF_TSDgPTPManager
+ (id)diagnosticInfo;
+ (id)gPTPManager;
+ (id)sharedgPTPManager;
+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)a3;
+ (void)diagnosticInfo;
+ (void)initialize;
+ (void)notifyWhengPTPManagerIsAvailable:(id)a3;
+ (void)notifyWhengPTPManagerIsUnavailable:(id)a3;
- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)a3 identifier:(unint64_t *)a4 error:(id *)a5;
- (BOOL)addAirPlayPTPInstance:(unint64_t *)a3 error:(id *)a4;
- (BOOL)addCopresencePTPInstance:(unint64_t *)a3 ntpAndUpTimeOffsetNsec:(int64_t)a4 isLocalClockSourceFromNTP:(BOOL)a5 error:(id *)a6;
- (BOOL)addCopresencePTPInstanceRefWithError:(id *)a3;
- (BOOL)addPTPInstance:(unint64_t *)a3 error:(id *)a4;
- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)a3 error:(id *)a4;
- (BOOL)dockReplayTimestamps:(id *)a3;
- (BOOL)logInterfaceStatisticsWithError:(id *)a3;
- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)a3 error:(id *)a4;
- (BOOL)removeAirPlayPTPInstanceWithError:(id *)a3;
- (BOOL)removeCopresencePTPInstanceWithError:(id *)a3;
- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)startReplayTimestamps:(id)a3;
- (BOOL)stopReplayTimestamps:(id)a3;
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

+ (void)notifyWhengPTPManagerIsAvailable:(id)a3
{
  v3 = a3;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56___TSF_TSDgPTPManager_notifyWhengPTPManagerIsAvailable___block_invoke;
  v6[3] = &unk_279DBD760;
  v7 = v3;
  v5 = v3;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhengPTPManagerIsUnavailable:(id)a3
{
  v3 = a3;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58___TSF_TSDgPTPManager_notifyWhengPTPManagerIsUnavailable___block_invoke;
  v6[3] = &unk_279DBD760;
  v7 = v3;
  v5 = v3;
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
  block[4] = a1;
  dispatch_sync(_sharedgPTPManagerQueue, block);
  v3 = _sharedgPTPManager_0;

  return v3;
}

+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)a3
{
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___TSF_TSDgPTPManager_sharedgPTPManagerSyncWithTimeout___block_invoke;
  v11[3] = &unk_279DBD538;
  v6 = v5;
  v12 = v6;
  [a1 notifyWhengPTPManagerIsAvailable:v11];
  v7 = dispatch_time(0, 1000000 * a3);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find gPTP manager within the timeout period.\n", v10, 2u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [a1 sharedgPTPManager];
  }

  return v8;
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
    v11 = [v9 unsignedLongLongValue];
  }

  else
  {
    v11 = -1;
  }

  v2->_systemDomainClockIdentifier = v11;
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

- (BOOL)addPTPInstance:(unint64_t *)a3 error:(id *)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:a4];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addPTPInstance:error:];
    }

    *a3 = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)a3 error:(id *)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:a4];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addTimeOfDayPTPInstance:error:];
    }

    *a3 = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = a3;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:a4];
  if (!v4)
  {
    [_TSF_TSDgPTPManager removePTPInstanceWithIdentifier:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)a3 identifier:(unint64_t *)a4 error:(id *)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v11[0] = a3;
    v9 = 1;
    v6 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:v11 scalarInputCount:1 scalarOutputs:&v10 scalarOutputCount:&v9 error:a5];
    if (!v6)
    {
      [_TSF_TSDgPTPManager addAVBPTPInstanceIndex:identifier:error:];
    }

    *a4 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = a3;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:a4];
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
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)avbPTPInstance1ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB1ClockID"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)avbPTPInstance2ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB2ClockID"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)avbPTPInstance3ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AVB3ClockID"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)airPlayPTPInstanceClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:@"AirPlayClockID"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)addAirPlayPTPInstance:(unint64_t *)a3 error:(id *)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:a4];
    if (!v5)
    {
      [_TSF_TSDgPTPManager addAirPlayPTPInstance:error:];
    }

    *a3 = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)removeAirPlayPTPInstanceWithError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
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
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)addCopresencePTPInstance:(unint64_t *)a3 ntpAndUpTimeOffsetNsec:(int64_t)a4 isLocalClockSourceFromNTP:(BOOL)a5 error:(id *)a6
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v12 = 1;
    v11[0] = a4;
    v11[1] = a5;
    v7 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v12 error:a6];
    if (!v7)
    {
      [_TSF_TSDgPTPManager addCopresencePTPInstance:ntpAndUpTimeOffsetNsec:isLocalClockSourceFromNTP:error:];
    }

    *a3 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)removeCopresencePTPInstanceWithError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
  if (!v3)
  {
    [_TSF_TSDgPTPManager removeCopresencePTPInstanceWithError:];
  }

  return v3;
}

- (BOOL)addCopresencePTPInstanceRefWithError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:10 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
  if (!v3)
  {
    [_TSF_TSDgPTPManager addCopresencePTPInstanceRefWithError:];
  }

  return v3;
}

- (BOOL)logInterfaceStatisticsWithError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:9 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
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
    v5 = v23;
    goto LABEL_20;
  }

  if (([v4 conformsToIOClassName:@"IOTimeSyncgPTPManager"] & 1) == 0)
  {
    +[(_TSF_TSDgPTPManager *)&v23];
    goto LABEL_25;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 ioClassName];
  [v5 setObject:v6 forKeyedSubscript:@"ClassName"];

  v7 = [v4 iodPropertyForKey:@"SystemDomainIdentifier"];
  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"SystemDomainIdentifier"];
  }

  v8 = [v4 iodPropertyForKey:@"AVB0ClockID"];

  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"AVB0ClockID"];
  }

  v9 = [v4 iodPropertyForKey:@"AVB1ClockID"];

  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"AVB1ClockID"];
  }

  v10 = [v4 iodPropertyForKey:@"AVB2ClockID"];

  if (v10)
  {
    [v5 setObject:v10 forKeyedSubscript:@"AVB2ClockID"];
  }

  v11 = [v4 iodPropertyForKey:@"AVB3ClockID"];

  if (v11)
  {
    [v5 setObject:v11 forKeyedSubscript:@"AVB3ClockID"];
  }

  v12 = [v4 iodPropertyForKey:@"AirPlayClockID"];

  if (v12)
  {
    [v5 setObject:v12 forKeyedSubscript:@"AirPlayClockID"];
  }

  v13 = [v4 iodPropertyForKey:@"CopresenceClockID"];

  if (v13)
  {
    [v5 setObject:v13 forKeyedSubscript:@"CopresenceClockID"];
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [v4 childIteratorInServicePlaneWithError:0];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __37___TSF_TSDgPTPManager_diagnosticInfo__block_invoke;
  v21 = &unk_279DBD7A8;
  v16 = v14;
  v22 = v16;
  [v15 enumerateWithBlock:&v18];
  if ([v16 count])
  {
    [v5 setObject:v16 forKeyedSubscript:@"PTPInstances"];
  }

LABEL_20:

  return v5;
}

- (BOOL)dockReplayTimestamps:(id *)a3
{
  if (a3)
  {
    v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:11 scalarInputs:a3 scalarInputCount:152 scalarOutputs:a3->var1 scalarOutputCount:40 * a3->var0.var1 error:0, *MEMORY[0x277D85DE8]];
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

- (BOOL)startReplayTimestamps:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 length];

  v11 = 0;
  v9 = [(_TSF_IODConnection *)connection callMethodWithSelector:12 scalarInputs:0 scalarInputCount:0 structInput:v7 structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
  if (!v9)
  {
    [_TSF_TSDgPTPManager startReplayTimestamps:];
  }

  return v9;
}

- (BOOL)stopReplayTimestamps:(id)a3
{
  connection = self->_connection;
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 length];

  v11 = 0;
  v9 = [(_TSF_IODConnection *)connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 structInput:v7 structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
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

  *a1 = 0;
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