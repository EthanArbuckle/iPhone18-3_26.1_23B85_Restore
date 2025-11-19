@interface _TSF_TSDKernelClock
+ (id)availableKernelClockIdentifiers;
+ (id)clockNameForClockIdentifier:(unint64_t)a3;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3;
+ (id)diagnosticInfoForService:(id)a3;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
+ (id)serviceForClockIdentifier:(unint64_t)a3;
- (BOOL)deregisterAsyncCallback;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (BOOL)registerAsyncCallback;
- (IOKService)service;
- (NSString)clockName;
- (_TSF_IODConnection)connection;
- (double)hostRateRatio;
- (id)clients;
- (int)_lockState;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)a3;
- (unsigned)getCoreAudioReanchors;
- (void)_handleNotification:(unsigned int)a3 withArg1:(unint64_t)a4 andArg2:(unint64_t)a5;
- (void)_lockState;
- (void)_refreshLockStateOnNotificationQueue;
- (void)addClient:(id)a3;
- (void)finalizeNotifications;
- (void)getCoreAudioReanchors;
- (void)hostRateRatio;
- (void)registerAsyncCallback;
- (void)removeClient:(id)a3;
- (void)updateCoreAudioReanchors:(unsigned int)a3;
@end

@implementation _TSF_TSDKernelClock

- (int)_lockState
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v2 = [(_TSF_TSDKernelClock *)self connection];
  v3 = [v2 callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v8 scalarOutputCount:&v6 error:0];

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
  v3 = [(NSPointerArray *)self->_clients allObjects];
  os_unfair_lock_unlock(&self->_clientsLock);

  return v3;
}

- (void)_refreshLockStateOnNotificationQueue
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(_TSF_TSDKernelClock *)self _lockState];
  v4 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  v7 = [(_TSF_TSDKernelClock *)self notificationQueue];

  if (v6 == v7)
  {
LABEL_4:
    if (v3 != [(_TSF_TSDKernelClock *)self lockState])
    {
      [(_TSF_TSDKernelClock *)self setLockState:v3];
    }
  }

  else
  {
    v8 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59___TSF_TSDKernelClock__refreshLockStateOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD7D0;
    v21 = v3;
    block[4] = self;
    dispatch_sync(v8, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(_TSF_TSDKernelClock *)self clients];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 didChangeLockStateTo:v3 forClock:self];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncService"];
  v5 = [v3 matchingServices:v4 error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54___TSF_TSDKernelClock_availableKernelClockIdentifiers__block_invoke;
  v8[3] = &unk_279DBD7A8;
  v6 = v2;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncService";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = -1;
  v8[1] = 0;
  v7 = 2;
  v9[0] = a3;
  v9[1] = 0;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:0 scalarInputs:v9 scalarInputCount:2 scalarOutputs:v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = -1;
  v8[1] = 0;
  v7 = 2;
  v9[0] = a3;
  v9[1] = 0;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:1 scalarInputs:v9 scalarInputCount:2 scalarOutputs:v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:9 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:10 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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
  v2 = [(_TSF_TSDKernelClock *)self connection];
  v3 = [v2 callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:v8 scalarOutputCount:&v6 error:0];

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

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = vdupq_n_s64(1uLL);
  v17 = -1;
  v18 = -1;
  v15 = 4;
  v11 = [(_TSF_TSDKernelClock *)self connection:a3];
  v12 = [v11 callMethodWithSelector:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v16 scalarOutputCount:&v15 error:0];

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
  if (a3)
  {
LABEL_3:
    *a3 = v16.i64[0];
  }

LABEL_4:
  if (a4)
  {
    *a4 = v16.u64[1];
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v18;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:11 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:12 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:16 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = -1;
  v9[0] = a3;
  v7 = 1;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:17 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = vdupq_n_s64(1uLL);
  v17 = -1;
  v18 = -1;
  v15 = 4;
  v11 = [(_TSF_TSDKernelClock *)self connection:a3];
  v12 = [v11 callMethodWithSelector:15 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v16 scalarOutputCount:&v15 error:0];

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  if (a3)
  {
LABEL_3:
    *a3 = v16.i64[0];
  }

LABEL_4:
  if (a4)
  {
    *a4 = v16.u64[1];
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v18;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)updateCoreAudioReanchors:(unsigned int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Updating Core Audio Reanchors += %u\n", v8, 8u);
  }

  v5 = [(_TSF_TSDKernelClock *)self connection];
  v6 = [v5 callMethodWithSelector:53 scalarInputs:v9 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:0 error:0];

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
  v2 = [(_TSF_TSDKernelClock *)self connection];
  v3 = [v2 callMethodWithSelector:54 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v3 & 1) == 0)
  {
    [_TSF_TSDKernelClock getCoreAudioReanchors];
  }

  result = v7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleNotification:(unsigned int)a3 withArg1:(unint64_t)a4 andArg2:(unint64_t)a5
{
  v22 = a5;
  v28 = *MEMORY[0x277D85DE8];
  if (a3 == 2001)
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
    v8 = [(_TSF_TSDKernelClock *)self clients];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          if (a3 > 2003)
          {
            switch(a3)
            {
              case 0x7D4u:
                v17 = *(*(&v23 + 1) + 8 * v12);
                if (objc_opt_respondsToSelector())
                {
                  [v13 didEndClockGrandmasterChangeForClock:self];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v13 didEndClockGrandmasterChangeWithGrandmasterID:a4 localPort:v22 forClock:self];
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
                  [v13 didChangeLocalPortWithGrandmasterID:a4 localPort:v22 forClock:self];
                }

                break;
            }
          }

          else
          {
            switch(a3)
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
                  [v13 didBeginClockGrandmasterChangeWithGrandmasterID:a4 localPort:v22 forClock:self];
                }

                break;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

  v5 = [(_TSF_TSDKernelClock *)self connection];
  v6 = [v5 registerAsyncNotificationsWithSelector:6 callBack:asyncNotificationsCallback_0 refcon:self->_asyncCallbackRefcon callbackQueue:self->_notificationsQueue];

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

  v4 = [(_TSF_TSDKernelClock *)self connection];
  LOBYTE(v3) = [v4 deregisterAsyncNotificationsWithSelector:7];

  return v3;
}

- (void)addClient:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v20 = v6;
    v21 = 2080;
    v22 = [v7 UTF8String];
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

        if (*(*(&v14 + 1) + 8 * v12) == v4)
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

  [(NSPointerArray *)self->_clients addPointer:v4, v14];
LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v22 = v6;
    v23 = 2080;
    v24 = [v7 UTF8String];
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

        if (*(*(&v16 + 1) + 8 * v13) == v4)
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
  v3 = [(_TSF_TSDKernelClock *)self service];

  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v5 = [(_TSF_TSDKernelClock *)self service];
    v6 = [v5 ioClassName];
    v7 = [v4 stringWithFormat:@"%@ 0x%016llx", v6, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
  }

  else
  {
    v8 = objc_opt_class();
    v5 = NSStringFromClass(v8);
    v7 = [v4 stringWithFormat:@"%@ 0x%016llx", v5, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
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

+ (id)serviceForClockIdentifier:(unint64_t)a3
{
  v3 = [a1 iokitMatchingDictionaryForClockIdentifier:a3];
  v4 = [MEMORY[0x277D1AE20] matchingService:v3];

  return v4;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 ioClassName];
  [v5 setObject:v6 forKeyedSubscript:@"ClassName"];

  v7 = [v4 iodProperties];

  [v5 addEntriesFromDictionary:v7];
  [v5 removeObjectForKey:@"IOUserClientClass"];
  [v5 removeObjectForKey:@"IOGeneralInterest"];

  return v5;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [v5 setObject:v6 forKeyedSubscript:@"ClockIdentifier"];

  v7 = [objc_opt_class() clockNameForClockIdentifier:a3];
  [v5 setObject:v7 forKeyedSubscript:@"ClockName"];

  v8 = [a1 serviceForClockIdentifier:a3];
  if (v8)
  {
    v9 = [a1 diagnosticInfoForService:v8];
    [v5 addEntriesFromDictionary:v9];
  }

  return v5;
}

+ (id)clockNameForClockIdentifier:(unint64_t)a3
{
  v4 = [a1 serviceForClockIdentifier:?];
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
  v9 = [v6 stringWithFormat:@"%@ 0x%016llx", v8, a3];

  return v9;
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

  *a1 = 0;
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

  *a1 = 0x3FF0000000000000;
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
  [v7 releaseRefcon:*a1];

  v8 = *MEMORY[0x277D85DE8];
}

@end