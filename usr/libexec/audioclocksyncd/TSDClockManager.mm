@interface TSDClockManager
+ (id)clockManager;
+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier;
+ (id)defaultClockPersonalities;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name;
+ (id)sharedClockManager;
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
- (TSDClockManager)initWithPid:(int)pid;
- (id)availableClockIdentifiers;
- (id)classNameForClockService:(id)service;
- (id)clockWithClockIdentifier:(unint64_t)identifier;
- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error;
- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error;
- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)identifier error:(id *)error;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds;
@end

@implementation TSDClockManager

+ (id)sharedClockManager
{
  if (qword_100058900 != -1)
  {
    sub_10002F22C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000051CC;
  block[3] = &unk_10004CAB0;
  block[4] = self;
  dispatch_sync(qword_1000588F8, block);
  v3 = qword_1000588F0;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(TSDKextNotifier);
    v3 = qword_1000588E8;
    qword_1000588E8 = v2;

    v4 = qword_1000588E8;
    v5 = [IOKService serviceMatching:@"IOTimeSyncClockManager"];
    LOBYTE(v4) = [v4 startNotificationsWithMatchingDictionary:v5];

    if ((v4 & 1) == 0)
    {
      sub_10002F17C();
    }
  }
}

+ (void)notifyWhenClockManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = qword_1000588E8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022518;
  v6[3] = &unk_10004D240;
  v7 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhenClockManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = qword_1000588E8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000225D8;
  v6[3] = &unk_10004D240;
  v7 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:v6];
}

+ (id)clockManager
{
  v2 = objc_alloc_init(TSDClockManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSDClockManager);
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
  v2 = objc_alloc_init(NSMutableArray);
  v17[0] = @"IOClassName";
  v17[1] = @"ProbeScore";
  v18[0] = @"IOTimeSyncService";
  v18[1] = &off_10004F9F0;
  v17[2] = @"ClassName";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v18[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v2 addObject:v5];

  v15[0] = @"IOClassName";
  v15[1] = @"ProbeScore";
  v16[0] = @"IOTimeSyncDomain";
  v16[1] = &off_10004FA08;
  v15[2] = @"ClassName";
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v16[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [v2 addObject:v8];

  v13[0] = @"IOClassName";
  v13[1] = @"ProbeScore";
  v14[0] = @"IOTimeSyncUserFilteredService";
  v14[1] = &off_10004FA08;
  v13[2] = @"ClassName";
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v14[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  [v2 addObject:v11];

  return v2;
}

- (TSDClockManager)initWithPid:(int)pid
{
  v15.receiver = self;
  v15.super_class = TSDClockManager;
  v4 = [(TSDClockManager *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = pid;
    mach_timebase_info(&v4->_timebaseInfo);
    v6 = [IOKService serviceMatching:@"IOTimeSyncClockManager"];
    v7 = [IOKService matchingService:v6];

    if (v7)
    {
      v8 = [[IODConnection alloc] initWithService:v7 andType:42];
      connection = v5->_connection;
      v5->_connection = v8;

      if (v5->_connection)
      {
        [(TSDClockManager *)v5 getTimeSyncTimeClockID:&v5->_timeSyncTimeClockIdentifier error:0];
        v5->_translationClockIdentifier = v5->_timeSyncTimeClockIdentifier + 1;
        [(TSDClockManager *)v5 getTimeSyncTimeIsMachAbsolute:&v5->_timeSyncTimeIsMachAbsoluteTime error:0];
        v10 = [[TSDKernelClock alloc] initWithClockIdentifier:v5->_translationClockIdentifier];
        translationClock = v5->_translationClock;
        v5->_translationClock = v10;

        defaultClockPersonalities = [objc_opt_class() defaultClockPersonalities];
        clockPersonalities = v5->_clockPersonalities;
        v5->_clockPersonalities = defaultClockPersonalities;

LABEL_5:
        return v5;
      }

      sub_10002F240(v5);
    }

    else
    {
      sub_10002F304(v5);
    }

    v5 = 0;
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)getTimeSyncTimeClockID:(unint64_t *)d error:(id *)error
{
  if (!d)
  {
    return 0;
  }

  v7 = 1;
  v8 = 0;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002F3C8();
  }

  *d = v8;
  return v5;
}

- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)absolute error:(id *)error
{
  if (!absolute)
  {
    return 0;
  }

  v7 = 1;
  v8 = 0;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002F478();
  }

  *absolute = v8 != 0;
  return v5;
}

- (BOOL)nextAvailableDynamicClockID:(unint64_t *)d error:(id *)error
{
  if (!d)
  {
    return 0;
  }

  v7 = 1;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002F528();
  }

  *d = v8;
  return v5;
}

- (BOOL)releaseDynamicClockID:(unint64_t)d error:(id *)error
{
  v6 = 0;
  dCopy = d;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:&dCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:error];
  if (!v4)
  {
    sub_10002F5D8();
  }

  return v4;
}

- (BOOL)addMappingFromClockID:(unint64_t)d toCoreAudioClockDomain:(unsigned int *)domain error:(id *)error
{
  dCopy = d;
  if (!d)
  {
    return 0;
  }

  v8 = 1;
  v6 = [(IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:&dCopy scalarInputCount:1 scalarOutputs:&v10 scalarOutputCount:&v8 error:error];
  if (!v6)
  {
    sub_10002F688();
  }

  *domain = v10;
  return v6;
}

- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)d error:(id *)error
{
  v6 = 0;
  dCopy = d;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:&dCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:error];
  if (!v4)
  {
    sub_10002F738();
  }

  return v4;
}

- (BOOL)addgPTPServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002F7E8();
  }

  return v3;
}

- (BOOL)removegPTPServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002F898();
  }

  return v3;
}

- (BOOL)addTSNCaptureServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002F948();
  }

  return v3;
}

- (BOOL)removeTSNCaptureServicesWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:14 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002F9F8();
  }

  return v3;
}

- (id)availableClockIdentifiers
{
  v3 = +[NSMutableArray array];
  v6 = 0;
  if ([(TSDClockManager *)self getTimeSyncTimeClockID:&v6 error:0])
  {
    v4 = +[TSDKernelClock availableKernelClockIdentifiers];
    [v3 addObjectsFromArray:v4];
  }

  return v3;
}

- (id)classNameForClockService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_clockPersonalities;
    v5 = 0;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = *v20;
      intValue2 = -1;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
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

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }
  }

  else
  {
    sub_10002FAA8();
    v5 = v23;
  }

  return v5;
}

- (id)clockWithClockIdentifier:(unint64_t)identifier
{
  if ([(TSDClockManager *)self timeSyncTimeClockIdentifier]== identifier)
  {
LABEL_13:
    translationClock = 0;
    goto LABEL_14;
  }

  if ([(TSDClockManager *)self translationClockIdentifier]== identifier)
  {
    translationClock = [(TSDClockManager *)self translationClock];
    goto LABEL_14;
  }

  v7 = 1;
  *&v5 = 67109120;
  v15 = v5;
  while (1)
  {
    v8 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier, v15];
    v9 = [IOKService matchingService:v8];

    if (v9)
    {
      break;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v15;
      LODWORD(identifierCopy) = v7;
      v12 = "TSDClockManager clockWithClockIdentifier unable to find service retry = %d\n";
      v13 = 8;
      goto LABEL_11;
    }

LABEL_12:
    usleep(0x2710u);

    if (++v7 == 11)
    {
      goto LABEL_13;
    }
  }

  v10 = [(TSDClockManager *)self classNameForClockService:v9];
  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy = identifier;
      v12 = "Could not find class match for clock identifier: 0x%016llx\n";
      v13 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  translationClock = [objc_alloc(NSClassFromString(v10)) initWithClockIdentifier:identifier pid:self->_pid];

LABEL_14:

  return translationClock;
}

- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive error:(id *)error
{
  v9 = 1;
  v11[0] = interval;
  v11[1] = domainInterval;
  v11[2] = shift;
  v11[3] = adaptive;
  v7 = [(IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v11 scalarInputCount:4 scalarOutputs:&v10 scalarOutputCount:&v9 error:error];
  if ((v7 & 1) == 0)
  {
    sub_10002FB64();
  }

  if (v7)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v6 = 0;
  identifierCopy = identifier;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:&identifierCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:error];
  if (!v4)
  {
    sub_10002FC14();
  }

  return v4;
}

- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)interval domainInterval:(unint64_t)domainInterval usingFilterShift:(unsigned __int8)shift isAdaptive:(BOOL)adaptive withUserID:(id)d error:(id *)error
{
  adaptiveCopy = adaptive;
  shiftCopy = shift;
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v19 = 1;
    v21[0] = interval;
    v21[1] = domainInterval;
    v21[2] = shiftCopy;
    v21[3] = adaptiveCopy;
    v15 = [dCopy dataUsingEncoding:4];
    v16 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 9, v21, 4, [v15 bytes], objc_msgSend(v15, "length"), &v20, &v19, error);
    if ((v16 & 1) == 0)
    {
      sub_10002FCC4();
    }

    if (v16)
    {
      v17 = v20;
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
      *error = [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v17 = -1;
  }

  return v17;
}

- (BOOL)addPersistentUserFilteredClockRef:(id)ref error:(id *)error
{
  refCopy = ref;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [refCopy dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 10, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, error);
    if (!v8)
    {
      sub_10002FD74();
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
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
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    v11 = 1;
    v7 = [identifierCopy dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 11, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), &v12, &v11, error);
    if ((v8 & 1) == 0)
    {
      sub_10002FE24();
    }

    if (v8)
    {
      v9 = v12;
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
      *error = [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v9 = -1;
  }

  return v9;
}

- (BOOL)removePersistentUserFilteredClock:(id)clock error:(id *)error
{
  clockCopy = clock;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [clockCopy dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 12, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, error);
    if (!v8)
    {
      sub_10002FED4();
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
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
    *&v9 = sub_1000054B0(nanoseconds, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return sub_10000538C(&v9, v10);
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
    *&v9 = sub_1000054B0(ticks, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return sub_10000538C(&v9, v10);
  }

  return ticks;
}

+ (id)diagnosticInfo
{
  v2 = [IOKService serviceMatching:@"IOTimeSyncClockManager"];
  v3 = [IOKService matchingService:v2];

  if (v3)
  {
    if ([v3 conformsToIOClassName:@"IOTimeSyncClockManager"])
    {
      v4 = +[NSMutableDictionary dictionary];
      ioClassName = [v3 ioClassName];
      [v4 setObject:ioClassName forKeyedSubscript:@"ClassName"];

      v6 = [v3 iodPropertyForKey:@"TimeSyncTimeClockID"];
      [v4 setObject:v6 forKeyedSubscript:@"TimeSyncTimeClockID"];

      v7 = [v3 iodPropertyForKey:@"TranslationClockID"];
      [v4 setObject:v7 forKeyedSubscript:@"TranslationClockID"];

      v8 = [v3 iodPropertyForKey:@"TimeSyncTimeCoreAudioClockDomain"];
      [v4 setObject:v8 forKeyedSubscript:@"TimeSyncTimeCoreAudioClockDomain"];

      goto LABEL_4;
    }

    sub_10002FF84();
  }

  else
  {
    sub_100030040();
  }

  v4 = v10;
LABEL_4:

  return v4;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier daemonClassName:(id *)name
{
  v6 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier];
  v7 = [IOKService matchingService:v6];

  if (!v7)
  {
    sub_1000300FC(&v14, &v15);
    v9 = v14;
    v10 = v15;
    goto LABEL_7;
  }

  sharedClockManager = [self sharedClockManager];
  v9 = [sharedClockManager classNameForClockService:v7];

  if (v9)
  {
    v10 = [NSClassFromString(v9) diagnosticInfoForService:v7];
    if (!name)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
  if (name)
  {
LABEL_6:
    v11 = v9;
    *name = v9;
  }

LABEL_7:
  v12 = v10;

  return v10;
}

+ (id)daemonClassNameForClockIdentifier:(unint64_t)identifier
{
  v4 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:identifier];
  v5 = [IOKService matchingService:v4];

  if (v5)
  {
    sharedClockManager = [self sharedClockManager];
    v7 = [sharedClockManager classNameForClockService:v5];
  }

  else
  {
    sub_1000301C0();
    v7 = v9;
  }

  return v7;
}

@end