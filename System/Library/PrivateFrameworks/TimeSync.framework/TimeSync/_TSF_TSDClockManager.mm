@interface _TSF_TSDClockManager
+ (id)clockManager;
+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier;
+ (id)defaultClockPersonalities;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name;
+ (id)sharedClockManager;
+ (void)diagnosticInfo;
+ (void)initialize;
+ (void)notifyWhenClockManagerIsAvailable:(id)available;
+ (void)notifyWhenClockManagerIsUnavailable:(id)unavailable;
- (BOOL)addMappingFromClockID:(unint64_t)d toCoreAudioClockDomain:(unsigned int *)domain error:(id *)error;
- (BOOL)addPersistentUserFilteredClockRef:(id)ref error:(id *)error;
- (BOOL)addTSNCaptureServicesWithError:(id *)error;
- (BOOL)addgPTPServicesWithError:(id *)error;
- (BOOL)getTimeSyncTimeClockID:(unint64_t *)d error:(id *)error;
- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)absolute error:(id *)error;
- (BOOL)nextAvailableDynamicClockID:(unint64_t *)d error:(id *)error;
- (BOOL)releaseDynamicClockID:(unint64_t)d error:(id *)error;
- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)d error:(id *)error;
- (BOOL)removePersistentUserFilteredClock:(id)clock error:(id *)error;
- (BOOL)removeTSNCaptureServicesWithError:(id *)error;
- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)removegPTPServicesWithError:(id *)error;
- (_TSF_TSDClockManager)initWithPid:(int)pid;
- (id)availableClockIdentifiers;
- (id)classNameForClockService:(id)service;
- (id)clockWithClockIdentifier:(unint64_t)identifier;
- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error;
- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error;
- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)identifier error:(id *)error;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds;
@end

@implementation _TSF_TSDClockManager

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

+ (void)notifyWhenClockManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58___TSF_TSDClockManager_notifyWhenClockManagerIsAvailable___block_invoke;
  v6[3] = &unk_279DBDF00;
  v7 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhenClockManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = _kextNotifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60___TSF_TSDClockManager_notifyWhenClockManagerIsUnavailable___block_invoke;
  v6[3] = &unk_279DBDF00;
  v7 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:v6];
}

+ (id)sharedClockManager
{
  if (+[_TSF_TSDClockManager sharedClockManager]::onceToken != -1)
  {
    +[_TSF_TSDClockManager sharedClockManager];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___TSF_TSDClockManager_sharedClockManager__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedClockManagerQueue, block);
  v3 = _sharedClockManager;

  return v3;
}

+ (id)clockManager
{
  v2 = objc_alloc_init(_TSF_TSDClockManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(_TSF_TSDClockManager);
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

+ (id)defaultClockPersonalities
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = @"IOClassName";
  v18[1] = @"ProbeScore";
  v19[0] = @"IOTimeSyncService";
  v19[1] = &unk_287F20450;
  v18[2] = @"ClassName";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v19[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v2 addObject:v5];

  v16[0] = @"IOClassName";
  v16[1] = @"ProbeScore";
  v17[0] = @"IOTimeSyncDomain";
  v17[1] = &unk_287F20468;
  v16[2] = @"ClassName";
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v17[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v2 addObject:v8];

  v14[0] = @"IOClassName";
  v14[1] = @"ProbeScore";
  v15[0] = @"IOTimeSyncUserFilteredService";
  v15[1] = &unk_287F20468;
  v14[2] = @"ClassName";
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v2 addObject:v11];

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (_TSF_TSDClockManager)initWithPid:(int)pid
{
  v16.receiver = self;
  v16.super_class = _TSF_TSDClockManager;
  v4 = [(_TSF_TSDClockManager *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = pid;
    mach_timebase_info(&v4->_timebaseInfo);
    v6 = MEMORY[0x277D1AE20];
    v7 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncClockManager"];
    v8 = [v6 matchingService:v7];

    if (v8)
    {
      v9 = [[_TSF_IODConnection alloc] initWithService:v8 andType:42];
      connection = v5->_connection;
      v5->_connection = v9;

      if (v5->_connection)
      {
        [(_TSF_TSDClockManager *)v5 getTimeSyncTimeClockID:&v5->_timeSyncTimeClockIdentifier error:0];
        v5->_translationClockIdentifier = v5->_timeSyncTimeClockIdentifier + 1;
        [(_TSF_TSDClockManager *)v5 getTimeSyncTimeIsMachAbsolute:&v5->_timeSyncTimeIsMachAbsoluteTime error:0];
        v11 = [[_TSF_TSDKernelClock alloc] initWithClockIdentifier:v5->_translationClockIdentifier];
        translationClock = v5->_translationClock;
        v5->_translationClock = v11;

        defaultClockPersonalities = [objc_opt_class() defaultClockPersonalities];
        clockPersonalities = v5->_clockPersonalities;
        v5->_clockPersonalities = defaultClockPersonalities;

LABEL_5:
        return v5;
      }

      [_TSF_TSDClockManager initWithPid:v5];
    }

    else
    {
      [_TSF_TSDClockManager initWithPid:v5];
    }

    v5 = 0;
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)getTimeSyncTimeClockID:(unint64_t *)d error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v8 = 1;
    v9[0] = 0;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDClockManager getTimeSyncTimeClockID:error:];
    }

    *d = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)absolute error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (absolute)
  {
    v8 = 1;
    v9[0] = 0;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDClockManager getTimeSyncTimeIsMachAbsolute:error:];
    }

    *absolute = v9[0] != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)nextAvailableDynamicClockID:(unint64_t *)d error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v8 = 1;
    v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:0 scalarInputCount:0 scalarOutputs:v9 scalarOutputCount:&v8 error:error];
    if (!v5)
    {
      [_TSF_TSDClockManager nextAvailableDynamicClockID:error:];
    }

    *d = v9[0];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)releaseDynamicClockID:(unint64_t)d error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = d;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if (!v4)
  {
    [_TSF_TSDClockManager releaseDynamicClockID:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)addMappingFromClockID:(unint64_t)d toCoreAudioClockDomain:(unsigned int *)domain error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (d)
  {
    v9 = 1;
    v6 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:&dCopy scalarInputCount:1 scalarOutputs:v11 scalarOutputCount:&v9 error:error];
    if (!v6)
    {
      [_TSF_TSDClockManager addMappingFromClockID:toCoreAudioClockDomain:error:];
    }

    *domain = v11[0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)d error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = d;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if (!v4)
  {
    [_TSF_TSDClockManager removeMappingFromClockIDToCoreAudioClockDomainForClockID:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)addgPTPServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDClockManager addgPTPServicesWithError:];
  }

  return v3;
}

- (BOOL)removegPTPServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDClockManager removegPTPServicesWithError:];
  }

  return v3;
}

- (BOOL)addTSNCaptureServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDClockManager addTSNCaptureServicesWithError:];
  }

  return v3;
}

- (BOOL)removeTSNCaptureServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:14 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    [_TSF_TSDClockManager removeTSNCaptureServicesWithError:];
  }

  return v3;
}

- (id)availableClockIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = 0;
  if ([(_TSF_TSDClockManager *)self getTimeSyncTimeClockID:&v6 error:0])
  {
    v4 = +[_TSF_TSDKernelClock availableKernelClockIdentifiers];
    [array addObjectsFromArray:v4];
  }

  return array;
}

- (id)classNameForClockService:(id)service
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if (serviceCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_clockPersonalities;
    v5 = 0;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = *v21;
      intValue2 = -1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"IOClassName"];
          v12 = [serviceCopy conformsToIOClassName:v11];

          if (v12)
          {
            if (v5)
            {
              v13 = [v10 objectForKeyedSubscript:@"ProbeScore"];
              intValue = [v13 intValue];

              if (intValue > intValue2)
              {
                v15 = [v10 objectForKeyedSubscript:@"ClassName"];

                v5 = v15;
                intValue2 = intValue;
              }
            }

            else
            {
              v16 = [v10 objectForKeyedSubscript:@"ProbeScore"];
              intValue2 = [v16 intValue];

              v5 = [v10 objectForKeyedSubscript:@"ClassName"];
            }
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [_TSF_TSDClockManager classNameForClockService:];
    v5 = v24;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)clockWithClockIdentifier:(unint64_t)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(_TSF_TSDClockManager *)self timeSyncTimeClockIdentifier]== identifier)
  {
LABEL_13:
    translationClock = 0;
    goto LABEL_14;
  }

  if ([(_TSF_TSDClockManager *)self translationClockIdentifier]== identifier)
  {
    translationClock = [(_TSF_TSDClockManager *)self translationClock];
    goto LABEL_14;
  }

  v7 = 1;
  v8 = MEMORY[0x277D86220];
  *&v5 = 67109120;
  v19 = v5;
  while (1)
  {
    v9 = MEMORY[0x277D1AE20];
    v10 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier, v19];
    v11 = [v9 matchingService:v10];

    if (v11)
    {
      break;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v19;
      LODWORD(identifierCopy) = v7;
      v14 = v8;
      v15 = "TSDClockManager clockWithClockIdentifier unable to find service retry = %d\n";
      v16 = 8;
      goto LABEL_11;
    }

LABEL_12:
    usleep(0x2710u);

    if (++v7 == 11)
    {
      goto LABEL_13;
    }
  }

  v12 = [(_TSF_TSDClockManager *)self classNameForClockService:v11];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy = identifier;
      v14 = v8;
      v15 = "Could not find class match for clock identifier: 0x%016llx\n";
      v16 = 12;
LABEL_11:
      _os_log_impl(&dword_26F080000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  translationClock = [objc_alloc(NSClassFromString(v12)) initWithClockIdentifier:identifier pid:self->_pid];

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];

  return translationClock;
}

- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = 1;
  v12[0] = interval;
  v12[1] = domainInterval;
  v12[2] = shift;
  v12[3] = adaptive;
  v7 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v12 scalarInputCount:4 scalarOutputs:&v11 scalarOutputCount:&v10 error:error];
  if (!v7)
  {
    [_TSF_TSDClockManager addUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:error:];
  }

  if (v7)
  {
    result = v11;
  }

  else
  {
    result = -1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = identifier;
  v4 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:v8 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if (!v4)
  {
    [_TSF_TSDClockManager removeUserFilteredClockWithIdentifier:error:];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error
{
  adaptiveCopy = adaptive;
  shiftCopy = shift;
  v22[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v20 = 1;
    v22[0] = interval;
    v22[1] = domainInterval;
    v22[2] = shiftCopy;
    v22[3] = adaptiveCopy;
    v15 = [dCopy dataUsingEncoding:4];
    v16 = -[_TSF_IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 9, v22, 4, [v15 bytes], objc_msgSend(v15, "length"), &v21, &v20, error);
    if (!v16)
    {
      [_TSF_TSDClockManager addPersistentUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:withUserID:error:];
    }

    if (v16)
    {
      v17 = v21;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v17 = -1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)addPersistentUserFilteredClockRef:(id)ref error:(id *)error
{
  refCopy = ref;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [refCopy dataUsingEncoding:4];
    v8 = -[_TSF_IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 10, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, error);
    if (!v8)
    {
      [_TSF_TSDClockManager addPersistentUserFilteredClockRef:error:];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)identifier error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    v12 = 1;
    v7 = [identifierCopy dataUsingEncoding:4];
    v8 = -[_TSF_IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 11, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), v13, &v12, error);
    if (!v8)
    {
      [_TSF_TSDClockManager getPersistentUserFilteredClockIdentifier:error:];
    }

    if (v8)
    {
      v9 = v13[0];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v9 = -1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removePersistentUserFilteredClock:(id)clock error:(id *)error
{
  clockCopy = clock;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [clockCopy dataUsingEncoding:4];
    v8 = -[_TSF_IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 12, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, error);
    if (!v8)
    {
      [_TSF_TSDClockManager removePersistentUserFilteredClock:error:];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(nanoseconds, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return nanoseconds;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(ticks, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return ticks;
}

+ (id)diagnosticInfo
{
  v2 = MEMORY[0x277D1AE20];
  v3 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncClockManager"];
  v4 = [v2 matchingService:v3];

  if (v4)
  {
    if ([v4 conformsToIOClassName:@"IOTimeSyncClockManager"])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      ioClassName = [v4 ioClassName];
      [dictionary setObject:ioClassName forKeyedSubscript:@"ClassName"];

      v7 = [v4 iodPropertyForKey:@"TimeSyncTimeClockID"];
      [dictionary setObject:v7 forKeyedSubscript:@"TimeSyncTimeClockID"];

      v8 = [v4 iodPropertyForKey:@"TranslationClockID"];
      [dictionary setObject:v8 forKeyedSubscript:@"TranslationClockID"];

      v9 = [v4 iodPropertyForKey:@"TimeSyncTimeCoreAudioClockDomain"];
      [dictionary setObject:v9 forKeyedSubscript:@"TimeSyncTimeCoreAudioClockDomain"];

      goto LABEL_4;
    }

    +[_TSF_TSDClockManager diagnosticInfo];
  }

  else
  {
    +[_TSF_TSDClockManager diagnosticInfo];
  }

  dictionary = v11;
LABEL_4:

  return dictionary;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name
{
  v6 = MEMORY[0x277D1AE20];
  v7 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier];
  v8 = [v6 matchingService:v7];

  if (!v8)
  {
    [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:&v16 daemonClassName:?];
    v10 = v15;
    v11 = v16;
    goto LABEL_7;
  }

  sharedClockManager = [self sharedClockManager];
  v10 = [sharedClockManager classNameForClockService:v8];

  if (v10)
  {
    v11 = [NSClassFromString(v10) diagnosticInfoForService:v8];
    if (!name)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  if (name)
  {
LABEL_6:
    v12 = v10;
    *name = v10;
  }

LABEL_7:
  v13 = v11;

  return v11;
}

+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier
{
  v4 = MEMORY[0x277D1AE20];
  v5 = [_TSF_TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier];
  v6 = [v4 matchingService:v5];

  if (v6)
  {
    sharedClockManager = [self sharedClockManager];
    v8 = [sharedClockManager classNameForClockService:v6];
  }

  else
  {
    +[_TSF_TSDClockManager daemonClassNameForClockIdentifier:];
    v8 = v10;
  }

  return v8;
}

- (void)initWithPid:(void *)a1 .cold.1(void *a1)
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

- (void)initWithPid:(void *)a1 .cold.2(void *a1)
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

- (void)getTimeSyncTimeClockID:error:.cold.1()
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

- (void)getTimeSyncTimeIsMachAbsolute:error:.cold.1()
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

- (void)nextAvailableDynamicClockID:error:.cold.1()
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

- (void)releaseDynamicClockID:error:.cold.1()
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

- (void)addMappingFromClockID:toCoreAudioClockDomain:error:.cold.1()
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

- (void)removeMappingFromClockIDToCoreAudioClockDomainForClockID:error:.cold.1()
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

- (void)addgPTPServicesWithError:.cold.1()
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

- (void)removegPTPServicesWithError:.cold.1()
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

- (void)addTSNCaptureServicesWithError:.cold.1()
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

- (void)removeTSNCaptureServicesWithError:.cold.1()
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

- (void)classNameForClockService:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:error:.cold.1()
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

- (void)removeUserFilteredClockWithIdentifier:error:.cold.1()
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

- (void)addPersistentUserFilteredClockWithMachInterval:domainInterval:usingFilterShift:isAdaptive:withUserID:error:.cold.1()
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

- (void)addPersistentUserFilteredClockRef:error:.cold.1()
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

- (void)getPersistentUserFilteredClockIdentifier:error:.cold.1()
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

- (void)removePersistentUserFilteredClock:error:.cold.1()
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
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)diagnosticInfoForClockIdentifier:(uint64_t)a1 daemonClassName:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v3, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v4, v5, v6, v7, 2u);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)daemonClassNameForClockIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_1();
  v5 = *MEMORY[0x277D85DE8];
}

@end