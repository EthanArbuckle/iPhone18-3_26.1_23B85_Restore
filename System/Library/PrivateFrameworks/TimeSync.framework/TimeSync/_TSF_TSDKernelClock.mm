@interface _TSF_TSDKernelClock
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
- (IOKService)service;
- (NSString)clockName;
- (_TSF_IODConnection)connection;
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
- (void)_lockState;
- (void)_refreshLockStateOnNotificationQueue;
- (void)addClient:(id)client;
- (void)finalizeNotifications;
- (void)getCoreAudioReanchors;
- (void)hostRateRatio;
- (void)registerAsyncCallback;
- (void)removeClient:(id)client;
- (void)updateCoreAudioReanchors:(unsigned int)reanchors;
@end

@implementation _TSF_TSDKernelClock

- (int)_lockState
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v6 error:0];

  if (v3)
  {
    result = v8;
  }

  else
  {
    [(_TSF_TSDKernelClock *)&v7 _lockState];
    result = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (_TSF_IODConnection)connection
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (id)clients
{
  os_unfair_lock_lock(&self->_clientsLock);
  allObjects = [(NSPointerArray *)self->_clients allObjects];
  os_unfair_lock_unlock(&self->_clientsLock);

  return allObjects;
}

- (void)_refreshLockStateOnNotificationQueue
{
  v23 = *MEMORY[0x277D85DE8];
  _lockState = [(_TSF_TSDKernelClock *)self _lockState];
  propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue)
  {
    goto LABEL_4;
  }

  v5 = propertyUpdateQueue;
  propertyUpdateQueue2 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  notificationQueue = [(_TSF_TSDKernelClock *)self notificationQueue];

  if (propertyUpdateQueue2 == notificationQueue)
  {
LABEL_4:
    if (_lockState != [(_TSF_TSDKernelClock *)self lockState])
    {
      [(_TSF_TSDKernelClock *)self setLockState:_lockState];
    }
  }

  else
  {
    propertyUpdateQueue3 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59___TSF_TSDKernelClock__refreshLockStateOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD7D0;
    v21 = _lockState;
    block[4] = self;
    dispatch_sync(propertyUpdateQueue3, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  clients = [(_TSF_TSDKernelClock *)self clients];
  v10 = [clients countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(clients);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 didChangeLockStateTo:_lockState forClock:self];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [clients countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (IOKService)service
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_service;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

+ (id)availableKernelClockIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncService"];
  v5 = [v3 matchingServices:v4 error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___TSF_TSDKernelClock_availableKernelClockIdentifiers__block_invoke;
  v8[3] = &unk_279DBD7A8;
  v6 = array;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncService";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = -1;
  v8[1] = 0;
  v7 = 2;
  v9[0] = time;
  v9[1] = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:0 scalarInputs:v9 scalarInputCount:2 scalarOutputs:v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromMachAbsoluteToDomainTime:];
  }

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = -1;
  v8[1] = 0;
  v7 = 2;
  v9[0] = time;
  v9[1] = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:1 scalarInputs:v9 scalarInputCount:2 scalarOutputs:v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainToMachAbsoluteTime:];
  }

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = interval;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:9 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromMachAbsoluteIntervalToDomainInterval:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = interval;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:10 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainIntervalToMachAbsoluteInterval:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)hostRateRatio
{
  v8[2] = *MEMORY[0x277D85DE8];
  v6 = 2;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:v8 scalarOutputCount:&v6 error:0];

  if (v3)
  {
    info = 0;
    mach_timebase_info(&info);
    result = (v8[0] / info.numer) / (v8[1] / info.denom);
  }

  else
  {
    [(_TSF_TSDKernelClock *)&info hostRateRatio];
    result = *&info;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = vdupq_n_s64(1uLL);
  v17 = -1;
  v18 = -1;
  v15 = 4;
  v11 = [(_TSF_TSDKernelClock *)self connection:numerator];
  v12 = [v11 callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v16 scalarOutputCount:&v15 error:0];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
  if (numerator)
  {
LABEL_3:
    *numerator = v16.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v16.u64[1];
  }

  if (anchor)
  {
    *anchor = v17;
  }

  if (domainAnchor)
  {
    *domainAnchor = v18;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = time;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:11 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromTimeSyncToDomainTime:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = time;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:12 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainToTimeSyncTime:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = interval;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:16 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromTimeSyncTimeIntervalToDomainInterval:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = interval;
  v7 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:17 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainIntervalToTimeSyncTimeInterval:];
  }

  if (v4)
  {
    result = v8;
  }

  else
  {
    result = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = vdupq_n_s64(1uLL);
  v17 = -1;
  v18 = -1;
  v15 = 4;
  v11 = [(_TSF_TSDKernelClock *)self connection:numerator];
  v12 = [v11 callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v16 scalarOutputCount:&v15 error:0];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  if (numerator)
  {
LABEL_3:
    *numerator = v16.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v16.u64[1];
  }

  if (anchor)
  {
    *anchor = v17;
  }

  if (domainAnchor)
  {
    *domainAnchor = v18;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)updateCoreAudioReanchors:(unsigned int)reanchors
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = reanchors;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = reanchors;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Updating Core Audio Reanchors += %u\n", v8, 8u);
  }

  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:53 scalarInputs:v9 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:0 error:0];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDKernelClock updateCoreAudioReanchors:];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (unsigned)getCoreAudioReanchors
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:54 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v3 & 1) == 0)
  {
    [_TSF_TSDKernelClock getCoreAudioReanchors];
  }

  result = v7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2
{
  arg2Copy = arg2;
  v28 = *MEMORY[0x277D85DE8];
  if (notification == 2001)
  {
    v6 = *MEMORY[0x277D85DE8];

    [(_TSF_TSDKernelClock *)self _refreshLockStateOnNotificationQueue];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    clients = [(_TSF_TSDKernelClock *)self clients];
    v9 = [clients countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(clients);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          if (notification > 2003)
          {
            switch(notification)
            {
              case 0x7D4u:
                v17 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didEndClockGrandmasterChangeForClock:self];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v13 didEndClockGrandmasterChangeWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
              case 0x7D5u:
                v19 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didProcessSync:self];
                }

                break;
              case 0x7D6u:
                v15 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didChangeLocalPortWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
            }
          }

          else
          {
            switch(notification)
            {
              case 0x7D0u:
                v16 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didResetClock:self];
                }

                break;
              case 0x7D2u:
                v18 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didChangeClockMasterForClock:self];
                }

                break;
              case 0x7D3u:
                v14 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didBeginClockGrandmasterChangeForClock:self];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v13 didBeginClockGrandmasterChangeWithGrandmasterID:arg1 localPort:arg2Copy forClock:self];
                }

                break;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [clients countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:6 callBack:asyncNotificationsCallback_0 refcon:self->_asyncCallbackRefcon callbackQueue:self->_notificationsQueue];

  if ((v6 & 1) == 0)
  {
    [(_TSF_TSDKernelClock *)p_asyncCallbackRefcon registerAsyncCallback];
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  connection = [(_TSF_TSDKernelClock *)self connection];
  LOBYTE(v3) = [connection deregisterAsyncNotificationsWithSelector:7];

  return v3;
}

- (void)addClient:(id)client
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v20 = uTF8String;
    v21 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v14 + 1) + 8 * v12) == clientCopy)
        {

          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v14];
LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)client
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v22 = uTF8String;
    v23 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v16 + 1) + 8 * v13) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v14, v16];
          goto LABEL_13;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)clockName
{
  service = [(_TSF_TSDKernelClock *)self service];

  v4 = MEMORY[0x277CCACA8];
  if (service)
  {
    service2 = [(_TSF_TSDKernelClock *)self service];
    ioClassName = [service2 ioClassName];
    v7 = [v4 stringWithFormat:@"%@ 0x%016llx", ioClassName, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
  }

  else
  {
    v8 = objc_opt_class();
    service2 = NSStringFromClass(v8);
    v7 = [v4 stringWithFormat:@"%@ 0x%016llx", service2, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
  }

  return v7;
}

- (void)finalizeNotifications
{
  [(_TSF_TSDKernelClock *)self deregisterAsyncCallback];
  interestNotification = self->_interestNotification;
  self->_interestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

+ (id)serviceForClockIdentifier:(unint64_t)identifier
{
  v3 = [self iokitMatchingDictionaryForClockIdentifier:identifier];
  v4 = [MEMORY[0x277D1AE20] matchingService:v3];

  return v4;
}

+ (id)diagnosticInfoForService:(id)service
{
  v3 = MEMORY[0x277CBEB38];
  serviceCopy = service;
  dictionary = [v3 dictionary];
  ioClassName = [serviceCopy ioClassName];
  [dictionary setObject:ioClassName forKeyedSubscript:@"ClassName"];

  iodProperties = [serviceCopy iodProperties];

  [dictionary addEntriesFromDictionary:iodProperties];
  [dictionary removeObjectForKey:@"IOUserClientClass"];
  [dictionary removeObjectForKey:@"IOGeneralInterest"];

  return dictionary;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  [dictionary setObject:v6 forKeyedSubscript:@"ClockIdentifier"];

  v7 = [objc_opt_class() clockNameForClockIdentifier:identifier];
  [dictionary setObject:v7 forKeyedSubscript:@"ClockName"];

  v8 = [self serviceForClockIdentifier:identifier];
  if (v8)
  {
    v9 = [self diagnosticInfoForService:v8];
    [dictionary addEntriesFromDictionary:v9];
  }

  return dictionary;
}

+ (id)clockNameForClockIdentifier:(unint64_t)identifier
{
  v4 = [self serviceForClockIdentifier:?];
  v5 = v4;
  v6 = MEMORY[0x277CCACA8];
  if (v4)
  {
    [v4 ioClassName];
  }

  else
  {
    v7 = objc_opt_class();
    NSStringFromClass(v7);
  }
  v8 = ;
  identifier = [v6 stringWithFormat:@"%@ 0x%016llx", v8, identifier];

  return identifier;
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.1(void *a1)
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

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.2(void *a1)
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

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.3(void *a1)
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

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.4(void *a1)
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

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.5(void *a1)
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

- (void)convertFromMachAbsoluteToDomainTime:.cold.1()
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

- (void)convertFromDomainToMachAbsoluteTime:.cold.1()
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

- (void)convertFromMachAbsoluteTime:toDomainTime:withCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromDomainTime:toMachAbsoluteTime:withCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromMachAbsoluteIntervalToDomainInterval:.cold.1()
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

- (void)convertFromDomainIntervalToMachAbsoluteInterval:.cold.1()
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

- (void)_lockState
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

- (void)hostRateRatio
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  *self = 0x3FF0000000000000;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.1()
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

- (void)convertFromTimeSyncToDomainTime:.cold.1()
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

- (void)convertFromDomainToTimeSyncTime:.cold.1()
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

- (void)convertFromTimeSyncTime:toDomainTime:withCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromDomainTime:toTimeSyncTime:withCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromTimeSyncTimeIntervalToDomainInterval:.cold.1()
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

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.1()
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

- (void)getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:.cold.1()
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

- (void)updateCoreAudioReanchors:.cold.1()
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

- (void)getCoreAudioReanchors
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

- (void)registerAsyncCallback
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v7 releaseRefcon:*self];

  v8 = *MEMORY[0x277D85DE8];
}

@end