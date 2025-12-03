@interface TSDKernelClock
+ (id)availableKernelClockIdentifiers;
+ (id)clockNameForClockIdentifier:(unint64_t)identifier;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier;
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
+ (id)serviceForClockIdentifier:(unint64_t)identifier;
- (BOOL)deregisterAsyncCallback;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)registerAsyncCallback;
- (IODConnection)connection;
- (IOKService)service;
- (NSString)clockName;
- (double)hostRateRatio;
- (id)clients;
- (int)_lockState;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time;
- (unsigned)getCoreAudioReanchors;
- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2;
- (void)_refreshLockStateOnNotificationQueue;
- (void)addClient:(id)client;
- (void)finalizeNotifications;
- (void)removeClient:(id)client;
- (void)updateCoreAudioReanchors:(unsigned int)reanchors;
@end

@implementation TSDKernelClock

- (id)clients
{
  os_unfair_lock_lock(&self->_clientsLock);
  allObjects = [(NSPointerArray *)self->_clients allObjects];
  os_unfair_lock_unlock(&self->_clientsLock);

  return allObjects;
}

- (IODConnection)connection
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (IOKService)service
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_service;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (int)_lockState
{
  v5 = 1;
  connection = [(TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v7 scalarOutputCount:&v5 error:0];

  if (v3)
  {
    return v7;
  }

  sub_10002C2D4(&v6);
  return v6;
}

- (void)_refreshLockStateOnNotificationQueue
{
  _lockState = [(TSDKernelClock *)self _lockState];
  propertyUpdateQueue = [(TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue)
  {
    goto LABEL_4;
  }

  v5 = propertyUpdateQueue;
  propertyUpdateQueue2 = [(TSDKernelClock *)self propertyUpdateQueue];
  notificationQueue = [(TSDKernelClock *)self notificationQueue];

  if (propertyUpdateQueue2 == notificationQueue)
  {
LABEL_4:
    if (_lockState != [(TSDKernelClock *)self lockState])
    {
      [(TSDKernelClock *)self setLockState:_lockState];
    }
  }

  else
  {
    propertyUpdateQueue3 = [(TSDKernelClock *)self propertyUpdateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A280;
    block[3] = &unk_10004CFA0;
    v20 = _lockState;
    block[4] = self;
    dispatch_sync(propertyUpdateQueue3, block);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  clients = [(TSDKernelClock *)self clients];
  v10 = [clients countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(clients);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 didChangeLockStateTo:_lockState forClock:self];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [clients countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v11);
  }
}

+ (id)availableKernelClockIdentifiers
{
  v2 = +[NSMutableArray array];
  v3 = [IOKService serviceMatching:@"IOTimeSyncService"];
  v4 = [IOKService matchingServices:v3 error:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018AB0;
  v7[3] = &unk_10004CA08;
  v5 = v2;
  v8 = v5;
  [v4 enumerateWithBlock:v7];

  return v5;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncService";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v7[0] = -1;
  v7[1] = 0;
  v6 = 2;
  v8[0] = time;
  v8[1] = 0;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:0 scalarInputs:v8 scalarInputCount:2 scalarOutputs:v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002BE9C();
  }

  if (v4)
  {
    return v7[0];
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v7[0] = -1;
  v7[1] = 0;
  v6 = 2;
  v8[0] = time;
  v8[1] = 0;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:1 scalarInputs:v8 scalarInputCount:2 scalarOutputs:v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002BF4C();
  }

  if (v4)
  {
    return v7[0];
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:9 scalarInputs:&intervalCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C174();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:10 scalarInputs:&intervalCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C224();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (double)hostRateRatio
{
  v5 = 2;
  connection = [(TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:v7 scalarOutputCount:&v5 error:0];

  if (v3)
  {
    info = 0;
    mach_timebase_info(&info);
    return (v7[0] / info.numer) / (v7[1] / info.denom);
  }

  else
  {
    sub_10002C394(&info);
    return *&info;
  }
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v15 = vdupq_n_s64(1uLL);
  v16 = -1;
  v17 = -1;
  v14 = 4;
  v11 = [(TSDKernelClock *)self connection:numerator];
  v12 = [v11 callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v15 scalarOutputCount:&v14 error:0];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10002C458();
  if (numerator)
  {
LABEL_3:
    *numerator = v15.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v15.u64[1];
  }

  if (anchor)
  {
    *anchor = v16;
  }

  if (domainAnchor)
  {
    *domainAnchor = v17;
  }

  return v12;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time
{
  v7 = -1;
  timeCopy = time;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:11 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C508();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time
{
  v7 = -1;
  timeCopy = time;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:12 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C5B8();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:16 scalarInputs:&intervalCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C7E0();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:17 scalarInputs:&intervalCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10002C890();
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v15 = vdupq_n_s64(1uLL);
  v16 = -1;
  v17 = -1;
  v14 = 4;
  v11 = [(TSDKernelClock *)self connection:numerator];
  v12 = [v11 callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v15 scalarOutputCount:&v14 error:0];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10002C940();
  if (numerator)
  {
LABEL_3:
    *numerator = v15.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v15.u64[1];
  }

  if (anchor)
  {
    *anchor = v16;
  }

  if (domainAnchor)
  {
    *domainAnchor = v17;
  }

  return v12;
}

- (void)updateCoreAudioReanchors:(unsigned int)reanchors
{
  reanchorsCopy = reanchors;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = reanchors;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Updating Core Audio Reanchors += %u\n", v7, 8u);
  }

  connection = [(TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:53 scalarInputs:&reanchorsCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:0 error:0];

  if ((v6 & 1) == 0)
  {
    sub_10002C9F0();
  }
}

- (unsigned)getCoreAudioReanchors
{
  v5 = 1;
  connection = [(TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:54 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v6 scalarOutputCount:&v5 error:0];

  if ((v3 & 1) == 0)
  {
    sub_10002CAA0();
  }

  return v6;
}

- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2
{
  arg2Copy = arg2;
  if (notification == 2001)
  {

    [(TSDKernelClock *)self _refreshLockStateOnNotificationQueue];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    clients = [(TSDKernelClock *)self clients];
    v8 = [clients countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(clients);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          if (notification > 2003)
          {
            switch(notification)
            {
              case 0x7D4u:
                v16 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didEndClockGrandmasterChangeForClock:self];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v12 didEndClockGrandmasterChangeWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
              case 0x7D5u:
                v18 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didProcessSync:self];
                }

                break;
              case 0x7D6u:
                v14 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didChangeLocalPortWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
            }
          }

          else
          {
            switch(notification)
            {
              case 0x7D0u:
                v15 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didResetClock:self];
                }

                break;
              case 0x7D2u:
                v17 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didChangeClockMasterForClock:self];
                }

                break;
              case 0x7D3u:
                v13 = *(*(&v21 + 1) + 8 * v11);
                if (objc_opt_respondsToSelector())
                {
                  [v12 didBeginClockGrandmasterChangeForClock:self];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v12 didBeginClockGrandmasterChangeWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [clients countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  connection = [(TSDKernelClock *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:6 callBack:sub_100001370 refcon:self->_asyncCallbackRefcon callbackQueue:self->_notificationsQueue];

  if ((v6 & 1) == 0)
  {
    sub_10002CB50(p_asyncCallbackRefcon);
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  connection = [(TSDKernelClock *)self connection];
  LOBYTE(v3) = [connection deregisterAsyncNotificationsWithSelector:7];

  return v3;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSDKernelClock *)self description];
    *buf = 136315394;
    v19 = uTF8String;
    v20 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Adding Client %s to clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v13 + 1) + 8 * v12) == clientCopy)
        {

          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v13];
LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSDKernelClock *)self description];
    *buf = 136315394;
    v21 = uTF8String;
    v22 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing Client %s from clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v16;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v15 + 1) + 8 * v13) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v14, v15];
          goto LABEL_13;
        }

        ++v14;
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (NSString)clockName
{
  service = [(TSDKernelClock *)self service];

  if (service)
  {
    service2 = [(TSDKernelClock *)self service];
    ioClassName = [service2 ioClassName];
    v6 = [NSString stringWithFormat:@"%@ 0x%016llx", ioClassName, [(TSDKernelClock *)self clockIdentifier]];
  }

  else
  {
    v7 = objc_opt_class();
    service2 = NSStringFromClass(v7);
    v6 = [NSString stringWithFormat:@"%@ 0x%016llx", service2, [(TSDKernelClock *)self clockIdentifier]];
  }

  return v6;
}

- (void)finalizeNotifications
{
  [(TSDKernelClock *)self deregisterAsyncCallback];
  interestNotification = self->_interestNotification;
  self->_interestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

+ (id)serviceForClockIdentifier:(unint64_t)identifier
{
  v3 = [self iokitMatchingDictionaryForClockIdentifier:identifier];
  v4 = [IOKService matchingService:v3];

  return v4;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v4 = +[NSMutableDictionary dictionary];
  ioClassName = [serviceCopy ioClassName];
  [v4 setObject:ioClassName forKeyedSubscript:@"ClassName"];

  iodProperties = [serviceCopy iodProperties];

  [v4 addEntriesFromDictionary:iodProperties];
  [v4 removeObjectForKey:@"IOUserClientClass"];
  [v4 removeObjectForKey:@"IOGeneralInterest"];

  return v4;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithLongLong:identifier];
  [v5 setObject:v6 forKeyedSubscript:@"ClockIdentifier"];

  v7 = [objc_opt_class() clockNameForClockIdentifier:identifier];
  [v5 setObject:v7 forKeyedSubscript:@"ClockName"];

  v8 = [self serviceForClockIdentifier:identifier];
  if (v8)
  {
    v9 = [self diagnosticInfoForService:v8];
    [v5 addEntriesFromDictionary:v9];
  }

  return v5;
}

+ (id)clockNameForClockIdentifier:(unint64_t)identifier
{
  v4 = [self serviceForClockIdentifier:?];
  v5 = v4;
  if (v4)
  {
    [v4 ioClassName];
  }

  else
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
  }
  v7 = ;
  identifier = [NSString stringWithFormat:@"%@ 0x%016llx", v7, identifier];

  return identifier;
}

@end