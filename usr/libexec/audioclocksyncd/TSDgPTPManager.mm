@interface TSDgPTPManager
+ (id)diagnosticInfo;
+ (id)gPTPManager;
+ (id)sharedgPTPManager;
+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout;
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
- (TSDgPTPClock)systemDomain;
- (TSDgPTPManager)init;
- (unint64_t)airPlayPTPInstanceClockIdentifier;
- (unint64_t)avbPTPInstance0ClockIdentifier;
- (unint64_t)avbPTPInstance1ClockIdentifier;
- (unint64_t)avbPTPInstance2ClockIdentifier;
- (unint64_t)avbPTPInstance3ClockIdentifier;
- (unint64_t)copresencePTPInstanceClockIdentifier;
- (void)dealloc;
@end

@implementation TSDgPTPManager

+ (id)sharedgPTPManager
{
  if (qword_1000588E0 != -1)
  {
    sub_10002E4C8();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000168C;
  block[3] = &unk_10004CAB0;
  block[4] = self;
  dispatch_sync(qword_1000588D8, block);
  v3 = qword_1000588D0;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(TSDKextNotifier);
    v3 = qword_1000588C8;
    qword_1000588C8 = v2;

    v4 = qword_1000588C8;
    v5 = [IOKService serviceMatching:@"IOTimeSyncgPTPManager"];
    LOBYTE(v4) = [v4 startNotificationsWithMatchingDictionary:v5];

    if ((v4 & 1) == 0)
    {
      sub_10002E418();
    }
  }
}

+ (void)notifyWhengPTPManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = qword_1000588C8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020FDC;
  v6[3] = &unk_10004D1C8;
  v7 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:v6];
}

+ (void)notifyWhengPTPManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = qword_1000588C8;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021084;
  v6[3] = &unk_10004D1C8;
  v7 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:v6];
}

+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021234;
  v10[3] = &unk_10004C6A8;
  v5 = dispatch_semaphore_create(0);
  v11 = v5;
  [self notifyWhengPTPManagerIsAvailable:v10];
  v6 = dispatch_time(0, 1000000 * timeout);
  if (dispatch_semaphore_wait(v5, v6))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to find gPTP manager within the timeout period.\n", v9, 2u);
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
  v2 = objc_alloc_init(TSDgPTPManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSDgPTPManager);
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

- (TSDgPTPManager)init
{
  v14.receiver = self;
  v14.super_class = TSDgPTPManager;
  v2 = [(TSDgPTPManager *)&v14 init];
  if (!v2)
  {
    return v2;
  }

  v3 = [IOKService serviceMatching:@"IOTimeSyncgPTPManager"];
  v4 = [IOKService matchingService:v3];
  service = v2->_service;
  v2->_service = v4;

  if (!v2->_service)
  {
    sub_10002E59C(v2);
    return 0;
  }

  v6 = [[IODConnection alloc] initWithService:v2->_service andType:42];
  connection = v2->_connection;
  v2->_connection = v6;

  if (!v2->_connection)
  {
    sub_10002E4DC(v2);
    return 0;
  }

  v8 = [(IOKService *)v2->_service iodPropertyForKey:@"SystemDomainIdentifier"];
  v9 = v8;
  if (v8)
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  v2->_systemDomainClockIdentifier = unsignedLongLongValue;
  v11 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPManager.systemDomain", 0);
  systemDomainQueue = v2->_systemDomainQueue;
  v2->_systemDomainQueue = v11;

  return v2;
}

- (TSDgPTPClock)systemDomain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000214C8;
  v10 = sub_1000214D8;
  v11 = 0;
  systemDomainQueue = self->_systemDomainQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000214E0;
  v5[3] = &unk_10004D210;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(systemDomainQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)addPTPInstance:(unint64_t *)instance error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v7 = 1;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002E65C();
  }

  *instance = v8;
  return v5;
}

- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)instance error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v7 = 1;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:6 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002E70C();
  }

  *instance = v8;
  return v5;
}

- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v6 = 0;
  identifierCopy = identifier;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:&identifierCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:error];
  if (!v4)
  {
    sub_10002E7BC();
  }

  return v4;
}

- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)index identifier:(unint64_t *)identifier error:(id *)error
{
  if (!identifier)
  {
    return 0;
  }

  indexCopy = index;
  v8 = 1;
  v6 = [(IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:&indexCopy scalarInputCount:1 scalarOutputs:&v9 scalarOutputCount:&v8 error:error];
  if (!v6)
  {
    sub_10002E86C();
  }

  *identifier = v9;
  return v6;
}

- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)index error:(id *)error
{
  v6 = 0;
  indexCopy = index;
  v4 = [(IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:&indexCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:error];
  if (!v4)
  {
    sub_10002E91C();
  }

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
  if (!instance)
  {
    return 0;
  }

  v7 = 1;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v7 error:error];
  if (!v5)
  {
    sub_10002E9CC();
  }

  *instance = v8;
  return v5;
}

- (BOOL)removeAirPlayPTPInstanceWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:5 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002EA7C();
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
  if (!instance)
  {
    return 0;
  }

  v9 = 1;
  v11[0] = nsec;
  v11[1] = p;
  v7 = [(IODConnection *)self->_connection callMethodWithSelector:7 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v9 error:error];
  if (!v7)
  {
    sub_10002EB2C();
  }

  *instance = v10;
  return v7;
}

- (BOOL)removeCopresencePTPInstanceWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002EBDC();
  }

  return v3;
}

- (BOOL)addCopresencePTPInstanceRefWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:10 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002EC8C();
  }

  return v3;
}

- (BOOL)logInterfaceStatisticsWithError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:9 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:error];
  if (!v3)
  {
    sub_10002ED3C();
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[TSDClockManager sharedClockManager];
  [v3 removegPTPServicesWithError:0];

  v4.receiver = self;
  v4.super_class = TSDgPTPManager;
  [(TSDgPTPManager *)&v4 dealloc];
}

+ (id)diagnosticInfo
{
  v2 = [IOKService serviceMatching:@"IOTimeSyncgPTPManager"];
  v3 = [IOKService matchingService:v2];

  if (!v3)
  {
    sub_10002EEAC(&v22);
LABEL_25:
    v4 = v22;
    goto LABEL_20;
  }

  if (([v3 conformsToIOClassName:@"IOTimeSyncgPTPManager"] & 1) == 0)
  {
    sub_10002EDEC(&v22);
    goto LABEL_25;
  }

  v4 = +[NSMutableDictionary dictionary];
  ioClassName = [v3 ioClassName];
  [v4 setObject:ioClassName forKeyedSubscript:@"ClassName"];

  v6 = [v3 iodPropertyForKey:@"SystemDomainIdentifier"];
  if (v6)
  {
    [v4 setObject:v6 forKeyedSubscript:@"SystemDomainIdentifier"];
  }

  v7 = [v3 iodPropertyForKey:@"AVB0ClockID"];

  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"AVB0ClockID"];
  }

  v8 = [v3 iodPropertyForKey:@"AVB1ClockID"];

  if (v8)
  {
    [v4 setObject:v8 forKeyedSubscript:@"AVB1ClockID"];
  }

  v9 = [v3 iodPropertyForKey:@"AVB2ClockID"];

  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"AVB2ClockID"];
  }

  v10 = [v3 iodPropertyForKey:@"AVB3ClockID"];

  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"AVB3ClockID"];
  }

  v11 = [v3 iodPropertyForKey:@"AirPlayClockID"];

  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:@"AirPlayClockID"];
  }

  v12 = [v3 iodPropertyForKey:@"CopresenceClockID"];

  if (v12)
  {
    [v4 setObject:v12 forKeyedSubscript:@"CopresenceClockID"];
  }

  v13 = +[NSMutableArray array];
  v14 = [v3 childIteratorInServicePlaneWithError:0];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000220E4;
  v20 = &unk_10004CA08;
  v15 = v13;
  v21 = v15;
  [v14 enumerateWithBlock:&v17];
  if ([v15 count])
  {
    [v4 setObject:v15 forKeyedSubscript:@"PTPInstances"];
  }

LABEL_20:

  return v4;
}

- (BOOL)dockReplayTimestamps:(id *)timestamps
{
  if (!timestamps)
  {
    return 0;
  }

  v8[0] = timestamps;
  v8[1] = 152;
  v3 = 40 * timestamps->var0.var1;
  v8[2] = timestamps->var1;
  v8[3] = v3;
  connection = self->_connection;
  v7 = 0;
  v5 = [(IODConnection *)connection callMethodWithSelector:11 scalarInputs:v8 scalarInputCount:4 scalarOutputs:0 scalarOutputCount:0 error:&v7];
  if ((v5 & 1) == 0)
  {
    sub_10002EF6C();
  }

  return v5;
}

- (BOOL)startReplayTimestamps:(id)timestamps
{
  connection = self->_connection;
  timestampsCopy = timestamps;
  timestampsCopy2 = timestamps;
  uTF8String = [timestampsCopy2 UTF8String];
  v8 = [timestampsCopy2 length];

  v11 = 0;
  v9 = [(IODConnection *)connection callMethodWithSelector:12 scalarInputs:0 scalarInputCount:0 structInput:uTF8String structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
  if ((v9 & 1) == 0)
  {
    sub_10002F01C();
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
  v9 = [(IODConnection *)connection callMethodWithSelector:13 scalarInputs:0 scalarInputCount:0 structInput:uTF8String structInputSize:v8 scalarOutputs:0 scalarOutputCount:0 error:&v11];
  if ((v9 & 1) == 0)
  {
    sub_10002F0CC();
  }

  return v9;
}

@end