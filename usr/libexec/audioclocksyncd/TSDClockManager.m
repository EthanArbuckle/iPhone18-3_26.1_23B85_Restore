@interface TSDClockManager
+ (id)clockManager;
+ (id)daemonClassNameForClockIdentifier:(unint64_t)a3;
+ (id)defaultClockPersonalities;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3 daemonClassName:(id *)a4;
+ (id)sharedClockManager;
+ (void)initialize;
+ (void)notifyWhenClockManagerIsAvailable:(id)a3;
+ (void)notifyWhenClockManagerIsUnavailable:(id)a3;
- (BOOL)addMappingFromClockID:(unint64_t)a3 toCoreAudioClockDomain:(unsigned int *)a4 error:(id *)a5;
- (BOOL)addPersistentUserFilteredClockRef:(id)a3 error:(id *)a4;
- (BOOL)addTSNCaptureServicesWithError:(id *)a3;
- (BOOL)addgPTPServicesWithError:(id *)a3;
- (BOOL)getTimeSyncTimeClockID:(unint64_t *)a3 error:(id *)a4;
- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)a3 error:(id *)a4;
- (BOOL)nextAvailableDynamicClockID:(unint64_t *)a3 error:(id *)a4;
- (BOOL)releaseDynamicClockID:(unint64_t)a3 error:(id *)a4;
- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)a3 error:(id *)a4;
- (BOOL)removePersistentUserFilteredClock:(id)a3 error:(id *)a4;
- (BOOL)removeTSNCaptureServicesWithError:(id *)a3;
- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)a3 error:(id *)a4;
- (BOOL)removegPTPServicesWithError:(id *)a3;
- (TSDClockManager)initWithPid:(int)a3;
- (id)availableClockIdentifiers;
- (id)classNameForClockService:(id)a3;
- (id)clockWithClockIdentifier:(unint64_t)a3;
- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)a3 domainInterval:(unint64_t)a4 usingFilterShift:(unsigned __int8)a5 isAdaptive:(BOOL)a6 withUserID:(id)a7 error:(id *)a8;
- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)a3 domainInterval:(unint64_t)a4 usingFilterShift:(unsigned __int8)a5 isAdaptive:(BOOL)a6 error:(id *)a7;
- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3;
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
  block[4] = a1;
  dispatch_sync(qword_1000588F8, block);
  v3 = qword_1000588F0;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (void)notifyWhenClockManagerIsAvailable:(id)a3
{
  v3 = a3;
  v4 = qword_1000588E8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022518;
  v6[3] = &unk_10004D240;
  v7 = v3;
  v5 = v3;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhenClockManagerIsUnavailable:(id)a3
{
  v3 = a3;
  v4 = qword_1000588E8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000225D8;
  v6[3] = &unk_10004D240;
  v7 = v3;
  v5 = v3;
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

- (TSDClockManager)initWithPid:(int)a3
{
  v15.receiver = self;
  v15.super_class = TSDClockManager;
  v4 = [(TSDClockManager *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = a3;
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

        v12 = [objc_opt_class() defaultClockPersonalities];
        clockPersonalities = v5->_clockPersonalities;
        v5->_clockPersonalities = v12;

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

- (BOOL)getTimeSyncTimeClockID:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = 1;
  v8 = 0;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:a4];
  if (!v5)
  {
    sub_10002F3C8();
  }

  *a3 = v8;
  return v5;
}

- (BOOL)getTimeSyncTimeIsMachAbsolute:(BOOL *)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = 1;
  v8 = 0;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:a4];
  if (!v5)
  {
    sub_10002F478();
  }

  *a3 = v8 != 0;
  return v5;
}

- (BOOL)nextAvailableDynamicClockID:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = 1;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:a4];
  if (!v5)
  {
    sub_10002F528();
  }

  *a3 = v8;
  return v5;
}

- (BOOL)releaseDynamicClockID:(unint64_t)a3 error:(id *)a4
{
  v6 = 0;
  v7 = a3;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:&v7 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:a4];
  if (!v4)
  {
    sub_10002F5D8();
  }

  return v4;
}

- (BOOL)addMappingFromClockID:(unint64_t)a3 toCoreAudioClockDomain:(unsigned int *)a4 error:(id *)a5
{
  v9 = a3;
  if (!a3)
  {
    return 0;
  }

  v8 = 1;
  v6 = [(IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:&v9 scalarInputCount:1 scalarOutputs:&v10 scalarOutputCount:&v8 error:a5];
  if (!v6)
  {
    sub_10002F688();
  }

  *a4 = v10;
  return v6;
}

- (BOOL)removeMappingFromClockIDToCoreAudioClockDomainForClockID:(unint64_t)a3 error:(id *)a4
{
  v6 = 0;
  v7 = a3;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:&v7 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:a4];
  if (!v4)
  {
    sub_10002F738();
  }

  return v4;
}

- (BOOL)addgPTPServicesWithError:(id *)a3
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
  if (!v3)
  {
    sub_10002F7E8();
  }

  return v3;
}

- (BOOL)removegPTPServicesWithError:(id *)a3
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
  if (!v3)
  {
    sub_10002F898();
  }

  return v3;
}

- (BOOL)addTSNCaptureServicesWithError:(id *)a3
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
  if (!v3)
  {
    sub_10002F948();
  }

  return v3;
}

- (BOOL)removeTSNCaptureServicesWithError:(id *)a3
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:14 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:a3];
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

- (id)classNameForClockService:(id)a3
{
  v4 = a3;
  if (v4)
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
      v8 = -1;
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
          v12 = [v4 conformsToIOClassName:v11];

          if (v12)
          {
            if (v5)
            {
              v13 = [v10 objectForKeyedSubscript:@"ProbeScore"];
              v14 = [v13 intValue];

              if (v14 > v8)
              {
                v15 = [v10 objectForKeyedSubscript:@"ClassName"];

                v5 = v15;
                v8 = v14;
              }
            }

            else
            {
              v16 = [v10 objectForKeyedSubscript:@"ProbeScore"];
              v8 = [v16 intValue];

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

- (id)clockWithClockIdentifier:(unint64_t)a3
{
  if ([(TSDClockManager *)self timeSyncTimeClockIdentifier]== a3)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if ([(TSDClockManager *)self translationClockIdentifier]== a3)
  {
    v6 = [(TSDClockManager *)self translationClock];
    goto LABEL_14;
  }

  v7 = 1;
  *&v5 = 67109120;
  v15 = v5;
  while (1)
  {
    v8 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:a3, v15];
    v9 = [IOKService matchingService:v8];

    if (v9)
    {
      break;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = v15;
      LODWORD(v17) = v7;
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
      v17 = a3;
      v12 = "Could not find class match for clock identifier: 0x%016llx\n";
      v13 = 12;
LABEL_11:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v6 = [objc_alloc(NSClassFromString(v10)) initWithClockIdentifier:a3 pid:self->_pid];

LABEL_14:

  return v6;
}

- (unint64_t)addUserFilteredClockWithMachInterval:(unint64_t)a3 domainInterval:(unint64_t)a4 usingFilterShift:(unsigned __int8)a5 isAdaptive:(BOOL)a6 error:(id *)a7
{
  v9 = 1;
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v7 = [(IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v11 scalarInputCount:4 scalarOutputs:&v10 scalarOutputCount:&v9 error:a7];
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

- (BOOL)removeUserFilteredClockWithIdentifier:(unint64_t)a3 error:(id *)a4
{
  v6 = 0;
  v7 = a3;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:&v7 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:a4];
  if (!v4)
  {
    sub_10002FC14();
  }

  return v4;
}

- (unint64_t)addPersistentUserFilteredClockWithMachInterval:(unint64_t)a3 domainInterval:(unint64_t)a4 usingFilterShift:(unsigned __int8)a5 isAdaptive:(BOOL)a6 withUserID:(id)a7 error:(id *)a8
{
  v9 = a6;
  v10 = a5;
  v14 = a7;
  if (_os_feature_enabled_impl())
  {
    v19 = 1;
    v21[0] = a3;
    v21[1] = a4;
    v21[2] = v10;
    v21[3] = v9;
    v15 = [v14 dataUsingEncoding:4];
    v16 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 9, v21, 4, [v15 bytes], objc_msgSend(v15, "length"), &v20, &v19, a8);
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
    if (a8)
    {
      *a8 = [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v17 = -1;
  }

  return v17;
}

- (BOOL)addPersistentUserFilteredClockRef:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [v6 dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 10, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, a4);
    if (!v8)
    {
      sub_10002FD74();
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)getPersistentUserFilteredClockIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v11 = 1;
    v7 = [v6 dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 11, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), &v12, &v11, a4);
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
    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    }

    v9 = -1;
  }

  return v9;
}

- (BOOL)removePersistentUserFilteredClock:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v10 = 0;
    v7 = [v6 dataUsingEncoding:4];
    v8 = -[IODConnection callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:](self->_connection, "callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:", 12, 0, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, &v10, a4);
    if (!v8)
    {
      sub_10002FED4();
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:@"TSDErrorDomain" code:-536870201 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = sub_1000054B0(a3, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return sub_10000538C(&v9, v10);
  }

  return a3;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = sub_1000054B0(a3, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return sub_10000538C(&v9, v10);
  }

  return a3;
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
      v5 = [v3 ioClassName];
      [v4 setObject:v5 forKeyedSubscript:@"ClassName"];

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

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3 daemonClassName:(id *)a4
{
  v6 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:a3];
  v7 = [IOKService matchingService:v6];

  if (!v7)
  {
    sub_1000300FC(&v14, &v15);
    v9 = v14;
    v10 = v15;
    goto LABEL_7;
  }

  v8 = [a1 sharedClockManager];
  v9 = [v8 classNameForClockService:v7];

  if (v9)
  {
    v10 = [NSClassFromString(v9) diagnosticInfoForService:v7];
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
  if (a4)
  {
LABEL_6:
    v11 = v9;
    *a4 = v9;
  }

LABEL_7:
  v12 = v10;

  return v10;
}

+ (id)daemonClassNameForClockIdentifier:(unint64_t)a3
{
  v4 = [TSDKernelClock iokitMatchingDictionaryForClockIdentifier:a3];
  v5 = [IOKService matchingService:v4];

  if (v5)
  {
    v6 = [a1 sharedClockManager];
    v7 = [v6 classNameForClockService:v5];
  }

  else
  {
    sub_1000301C0();
    v7 = v9;
  }

  return v7;
}

@end