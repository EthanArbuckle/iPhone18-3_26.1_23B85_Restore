@interface TSDgPTPClock
+ (id)availablegPTPClockIdentifiers;
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)named allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addReverseSyncOnInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner syncInterval:(unsigned int)interval error:(id *)error;
- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)valid syncFlags:(char *)flags timeSyncTime:(unint64_t *)time domainTimeHi:(unint64_t *)hi domainTimeLo:(unint64_t *)lo cumulativeScaledRate:(unint64_t *)rate inverseCumulativeScaledRate:(unint64_t *)scaledRate grandmasterID:(unint64_t *)self0 localPortNumber:(unsigned __int16 *)self1 error:(id *)self2;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)named error:(id *)error;
- (BOOL)removeReverseSyncFromInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner error:(id *)error;
- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error;
- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error;
- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)setPreferredGM:(BOOL)m error:(id *)error;
- (BOOL)updateNtpAnchorOffset:(int64_t)offset isLocalClockSourceFromNTP:(BOOL)p error:(id *)error;
- (NSArray)ports;
- (id)_gptpPath;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)portWithPortNumber:(unsigned __int16)number;
- (unint64_t)_grandmasterIdentity;
- (unint64_t)clockIdentity;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)machAbsoluteFromgPTPTime:(id)time;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)time;
- (unsigned)clockAccuracy;
- (unsigned)clockClass;
- (unsigned)clockPriority1;
- (unsigned)clockPriority2;
- (void)_handleRefreshConnection;
- (void)_refreshGrandmasterIdentityOnNotificationQueue;
- (void)addImplClock:(id)clock;
- (void)dealloc;
- (void)removeImplClock:(id)clock;
@end

@implementation TSDgPTPClock

- (NSArray)ports
{
  v3 = +[NSMutableArray array];
  service = [(TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004B84;
  v8[3] = &unk_10004CA08;
  v6 = v3;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

+ (id)availablegPTPClockIdentifiers
{
  v2 = +[NSMutableArray array];
  v3 = [IOKService serviceMatching:@"IOTimeSyncDomain"];
  v4 = [IOKService matchingServices:v3 error:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000241BC;
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
  v10[0] = @"IOTimeSyncDomain";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time
{
  v6 = 1;
  v7 = -1;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:32 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_10003027C();
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

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time
{
  v14 = -1;
  v15 = -1;
  v17 = 0;
  v18 = 0;
  v16 = -1;
  v12 = 5;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:37 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v12 error:0];

  if (v4)
  {
    v5 = v18;
    v6 = (v18 >> 1) & 1;
    v7 = (v18 >> 2) & 1;
    v8 = [TSgPTPTime alloc];
    LOBYTE(v11) = v7;
    v9 = [(TSgPTPTime *)v8 initWithSeconds:v14 nanoseconds:v15 onGrandmaster:v16 withLocalPortNumber:v17 ptpTimescale:v5 & 1 timeTraceable:v6 frequencyTraceable:v11];
  }

  else
  {
    sub_1000303EC(&v13);
    v9 = v13;
  }

  return v9;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)time
{
  v10 = -1;
  v9 = 1;
  timeCopy = time;
  v11[0] = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v11[1] = nanoseconds;
  connection = [(TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:36 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v9 error:0];

  if ((v7 & 1) == 0)
  {
    sub_1000304AC();
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:35 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (used)
    {
      *used = v16;
    }

    if (number)
    {
      *number = v17;
    }
  }

  else
  {
    sub_10003055C(-1, &v12, &v13);
    v10 = v12;
    v9 = v13;
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:34 scalarInputs:&timeCopy scalarInputCount:2 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_100030630();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:38 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_1000306EC();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:39 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_1000307A8();
    return v11;
  }

  return result;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v19 = vdupq_n_s64(1uLL);
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0xFFFFLL;
  v18 = 6;
  connection = [(TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:40 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v19 scalarOutputCount:&v18 error:0];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v19.i64[0];
    }

    if (denominator)
    {
      *denominator = v19.u64[1];
    }

    if (anchor)
    {
      *anchor = v20;
    }

    if (domainAnchor)
    {
      *domainAnchor = v21;
    }

    if (identity)
    {
      *identity = v22;
    }

    if (number)
    {
      *number = v23;
    }
  }

  else
  {
    sub_100030864();
  }

  return v16;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time
{
  v6 = 1;
  v7 = -1;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:43 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

  if ((v4 & 1) == 0)
  {
    sub_100030914();
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

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time
{
  v14 = -1;
  v15 = -1;
  v17 = 0;
  v18 = 0;
  v16 = -1;
  v12 = 5;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:48 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v12 error:0];

  if (v4)
  {
    v5 = v18;
    v6 = (v18 >> 1) & 1;
    v7 = (v18 >> 2) & 1;
    v8 = [TSgPTPTime alloc];
    LOBYTE(v11) = v7;
    v9 = [(TSgPTPTime *)v8 initWithSeconds:v14 nanoseconds:v15 onGrandmaster:v16 withLocalPortNumber:v17 ptpTimescale:v5 & 1 timeTraceable:v6 frequencyTraceable:v11];
  }

  else
  {
    sub_100030A84(&v13);
    v9 = v13;
  }

  return v9;
}

- (unint64_t)timeSyncTimeFromgPTPTime:(id)time
{
  v10 = -1;
  v9 = 1;
  timeCopy = time;
  v11[0] = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v11[1] = nanoseconds;
  connection = [(TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:47 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v9 error:0];

  if ((v7 & 1) == 0)
  {
    sub_100030B44();
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  timeCopy = time;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:46 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (used)
    {
      *used = v16;
    }

    if (number)
    {
      *number = v17;
    }
  }

  else
  {
    sub_100030BF4(-1, &v12, &v13);
    v10 = v12;
    v9 = v13;
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:45 scalarInputs:&timeCopy scalarInputCount:2 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_100030CC8();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:49 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_100030D84();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:50 scalarInputs:&timeCopy scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    sub_100030E40();
    return v11;
  }

  return result;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v19 = vdupq_n_s64(1uLL);
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0xFFFFLL;
  v18 = 6;
  connection = [(TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:51 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v19 scalarOutputCount:&v18 error:0];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v19.i64[0];
    }

    if (denominator)
    {
      *denominator = v19.u64[1];
    }

    if (anchor)
    {
      *anchor = v20;
    }

    if (domainAnchor)
    {
      *domainAnchor = v21;
    }

    if (identity)
    {
      *identity = v22;
    }

    if (number)
    {
      *number = v23;
    }
  }

  else
  {
    sub_100030EFC();
  }

  return v16;
}

- (void)_refreshGrandmasterIdentityOnNotificationQueue
{
  _grandmasterIdentity = [(TSDgPTPClock *)self _grandmasterIdentity];
  _gptpPath = [(TSDgPTPClock *)self _gptpPath];
  propertyUpdateQueue = [(TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue)
  {
    goto LABEL_4;
  }

  v6 = propertyUpdateQueue;
  propertyUpdateQueue2 = [(TSDKernelClock *)self propertyUpdateQueue];
  notificationQueue = [(TSDKernelClock *)self notificationQueue];

  if (propertyUpdateQueue2 == notificationQueue)
  {
LABEL_4:
    if (_grandmasterIdentity != [(TSDgPTPClock *)self grandmasterIdentity])
    {
      [(TSDgPTPClock *)self setGrandmasterIdentity:_grandmasterIdentity];
    }

    gptpPath = [(TSDgPTPClock *)self gptpPath];
    v11 = [_gptpPath isEqual:gptpPath];

    if ((v11 & 1) == 0)
    {
      [(TSDgPTPClock *)self setGptpPath:_gptpPath];
    }
  }

  else
  {
    propertyUpdateQueue3 = [(TSDKernelClock *)self propertyUpdateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025E78;
    block[3] = &unk_10004C9E0;
    v24 = _grandmasterIdentity;
    block[4] = self;
    v23 = _gptpPath;
    dispatch_sync(propertyUpdateQueue3, block);
  }

  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_implClocks;
  v13 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if ([v17 conformsToProtocol:{&OBJC_PROTOCOL___TSDgPTPClockImplProtocol, v18}])
        {
          [v17 updateGrandmasterIdentity:_grandmasterIdentity andgPTPPath:_gptpPath];
        }
      }

      v14 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (void)_handleRefreshConnection
{
  v3.receiver = self;
  v3.super_class = TSDgPTPClock;
  [(TSDKernelClock *)&v3 _handleRefreshConnection];
  [(TSDgPTPClock *)self _refreshGrandmasterIdentityOnNotificationQueue];
}

- (unint64_t)_grandmasterIdentity
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"GrandmasterID"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (id)_gptpPath
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ASPath"];

  if (v3)
  {
    v4 = [NSArray arrayWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)clockIdentity
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ClockIdentity"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unsigned)clockPriority1
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ClockPriority1"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockPriority2
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ClockPriority2"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockClass
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ClockClass"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockAccuracy
{
  service = [(TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ClockAccuracy"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)named allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v14 = 0;
  v13 = 1;
  v8 = [named dataUsingEncoding:4];
  connection = [(TSDKernelClock *)self connection];
  v10 = [connection callMethodWithSelector:18 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{&v14, &v13, error}];

  if ((v10 & 1) == 0)
  {
    if (sub_100030FAC(number))
    {
      goto LABEL_5;
    }

    v11 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v11 = v14;
LABEL_4:
    *number = v11;
  }

LABEL_5:

  return v10;
}

- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)named error:(id *)error
{
  v6 = [named dataUsingEncoding:4];
  connection = [(TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:19 structInput:objc_msgSend(v6 structInputSize:"bytes") error:{objc_msgSend(v6, "length"), error}];

  if ((v8 & 1) == 0)
  {
    sub_100031070();
  }

  return v8;
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v16 = 1;
  addressCopy = address;
  namedCopy = named;
  v10 = [NSMutableData dataWithBytes:&addressCopy length:4];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:20 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v10 structInputSize:"bytes") scalarOutputs:objc_msgSend(v10 scalarOutputCount:"length") error:{&v18, &v16, error}];

  if ((v13 & 1) == 0)
  {
    if (sub_100031120(number))
    {
      goto LABEL_5;
    }

    v14 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v14 = v18;
LABEL_4:
    *number = v14;
  }

LABEL_5:

  return v13;
}

- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  addressCopy = address;
  namedCopy = named;
  v8 = [NSMutableData dataWithBytes:&addressCopy length:4];
  v9 = [namedCopy dataUsingEncoding:4];

  [v8 appendData:v9];
  connection = [(TSDKernelClock *)self connection];
  v11 = [connection callMethodWithSelector:21 structInput:objc_msgSend(v8 structInputSize:"bytes") error:{objc_msgSend(v8, "length"), error}];

  if ((v11 & 1) == 0)
  {
    sub_1000311E4();
  }

  return v11;
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v17 = 1;
  namedCopy = named;
  v11 = [NSMutableData dataWithBytes:address length:16];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:22 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, error}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031294(number))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  namedCopy = named;
  v9 = [NSMutableData dataWithBytes:address length:16];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:23 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    sub_100031358();
  }

  return v12;
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v17 = 1;
  namedCopy = named;
  v11 = [NSMutableData dataWithBytes:address length:6];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:24 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, error}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031408(number))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  namedCopy = named;
  v9 = [NSMutableData dataWithBytes:address length:6];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:25 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    sub_1000314CC();
  }

  return v12;
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v16 = 1;
  addressCopy = address;
  namedCopy = named;
  v10 = [NSMutableData dataWithBytes:&addressCopy length:4];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:26 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v10 structInputSize:"bytes") scalarOutputs:objc_msgSend(v10 scalarOutputCount:"length") error:{&v18, &v16, error}];

  if ((v13 & 1) == 0)
  {
    if (sub_10003157C(number))
    {
      goto LABEL_5;
    }

    v14 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v14 = v18;
LABEL_4:
    *number = v14;
  }

LABEL_5:

  return v13;
}

- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  addressCopy = address;
  namedCopy = named;
  v8 = [NSMutableData dataWithBytes:&addressCopy length:4];
  v9 = [namedCopy dataUsingEncoding:4];

  [v8 appendData:v9];
  connection = [(TSDKernelClock *)self connection];
  v11 = [connection callMethodWithSelector:27 structInput:objc_msgSend(v8 structInputSize:"bytes") error:{objc_msgSend(v8, "length"), error}];

  if ((v11 & 1) == 0)
  {
    sub_100031640();
  }

  return v11;
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v17 = 1;
  namedCopy = named;
  v11 = [NSMutableData dataWithBytes:address length:16];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:28 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, error}];

  if ((v14 & 1) == 0)
  {
    if (sub_1000316F0(number))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  namedCopy = named;
  v9 = [NSMutableData dataWithBytes:address length:16];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:29 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    sub_1000317B4();
  }

  return v12;
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v18 = 0;
  v17 = 1;
  namedCopy = named;
  v11 = [NSMutableData dataWithBytes:address length:6];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:30 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, error}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031864(number))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  namedCopy = named;
  v9 = [NSMutableData dataWithBytes:address length:6];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:31 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    sub_100031928();
  }

  return v12;
}

- (BOOL)addReverseSyncOnInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner syncInterval:(unsigned int)interval error:(id *)error
{
  v13[0] = numner;
  v13[1] = interval;
  v12 = 0;
  v8 = [named dataUsingEncoding:4];
  connection = [(TSDKernelClock *)self connection];
  v10 = [connection callMethodWithSelector:41 scalarInputs:v13 scalarInputCount:2 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{0, &v12, error}];

  if ((v10 & 1) == 0)
  {
    sub_1000319D8();
  }

  return v10;
}

- (BOOL)removeReverseSyncFromInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner error:(id *)error
{
  numnerCopy = numner;
  v11 = 0;
  v7 = [named dataUsingEncoding:4];
  connection = [(TSDKernelClock *)self connection];
  v9 = [connection callMethodWithSelector:42 scalarInputs:&numnerCopy scalarInputCount:1 structInput:objc_msgSend(v7 structInputSize:"bytes") scalarOutputs:objc_msgSend(v7 scalarOutputCount:"length") error:{0, &v11, error}];

  if ((v9 & 1) == 0)
  {
    sub_100031A88();
  }

  return v9;
}

- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)valid syncFlags:(char *)flags timeSyncTime:(unint64_t *)time domainTimeHi:(unint64_t *)hi domainTimeLo:(unint64_t *)lo cumulativeScaledRate:(unint64_t *)rate inverseCumulativeScaledRate:(unint64_t *)scaledRate grandmasterID:(unint64_t *)self0 localPortNumber:(unsigned __int16 *)self1 error:(id *)self2
{
  v22 = -1;
  v23 = -1;
  v24 = -1;
  v25 = vdupq_n_s64(1uLL);
  v26 = -1;
  v27 = 0;
  v28 = 0;
  v29 = 0xFFFFLL;
  v21 = 9;
  connection = [(TSDKernelClock *)self connection];
  v19 = [connection callMethodWithSelector:52 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v22 scalarOutputCount:&v21 error:error];

  if (v19)
  {
    if (!time)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100031B38();
  if (time)
  {
LABEL_3:
    *time = v22;
  }

LABEL_4:
  if (hi)
  {
    *hi = v23;
  }

  if (lo)
  {
    *lo = v24;
  }

  if (rate)
  {
    *rate = v25.i64[0];
  }

  if (scaledRate)
  {
    *scaledRate = v25.u64[1];
  }

  if (d)
  {
    *d = v26;
  }

  if (valid)
  {
    *valid = v27 != 0;
  }

  if (flags)
  {
    *flags = v28;
  }

  if (number)
  {
    *number = v29;
  }

  return v19;
}

- (id)portWithPortNumber:(unsigned __int16)number
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100027668;
  v14 = sub_100027678;
  v15 = 0;
  service = [(TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027680;
  v8[3] = &unk_10004D288;
  numberCopy = number;
  v8[4] = &v10;
  [v5 enumerateWithBlock:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)getMetrics
{
  v2 = [[TSDClockMetrics alloc] initWithClock:self];

  return v2;
}

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(TSDgPTPClock *)self getMetrics];
  v6 = [getMetrics getDelta:deltaCopy];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDgPTPClock;
  [(TSDgPTPClock *)&v2 dealloc];
}

+ (id)diagnosticInfoForService:(id)service
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___TSDgPTPClock;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v11, "diagnosticInfoForService:", serviceCopy);
  v5 = +[NSMutableArray array];
  v6 = [serviceCopy childIteratorInServicePlaneWithError:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027958;
  v9[3] = &unk_10004CA08;
  v10 = v5;
  v7 = v5;
  [v6 enumerateWithBlock:v9];
  [v4 setObject:v7 forKeyedSubscript:@"Ports"];

  return v4;
}

- (void)addImplClock:(id)clock
{
  clockCopy = clock;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_implClocks;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v9) == clockCopy)
        {

          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_implClocks addPointer:clockCopy, v10];
LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (void)removeImplClock:(id)clock
{
  clockCopy = clock;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_implClocks;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * v10) == clockCopy)
        {

          [(NSPointerArray *)self->_implClocks removePointerAtIndex:v11, v12];
          goto LABEL_11;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (BOOL)setPreferredGM:(BOOL)m error:(id *)error
{
  mCopy = m;
  mCopy2 = m;
  v15 = -1;
  v10 = 1;
  connection = [(TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:55 scalarInputs:&mCopy2 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v10 error:error];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    *buf = 67109376;
    v12 = mCopy;
    v13 = 2048;
    v14 = code;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDgPTPClock setPreferredGm(%u) = %ld", buf, 0x12u);
  }

  return v7;
}

- (BOOL)updateNtpAnchorOffset:(int64_t)offset isLocalClockSourceFromNTP:(BOOL)p error:(id *)error
{
  pCopy = p;
  v18[0] = offset;
  v18[1] = p;
  connection = [(TSDKernelClock *)self connection];
  v9 = [connection callMethodWithSelector:56 scalarInputs:v18 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:0 error:error];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    v12 = 134218496;
    offsetCopy = offset;
    v14 = 1024;
    v15 = pCopy;
    v16 = 2048;
    v17 = code;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDgPTPClock updateNtpAnchorOffset(%lld %d) = %ld", &v12, 0x1Cu);
  }

  return v9;
}

@end