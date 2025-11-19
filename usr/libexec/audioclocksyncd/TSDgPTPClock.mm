@interface TSDgPTPClock
+ (id)availablegPTPClockIdentifiers;
+ (id)diagnosticInfoForService:(id)a3;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)a3 allocatedPortNumber:(unsigned __int16 *)a4 error:(id *)a5;
- (BOOL)addReverseSyncOnInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 syncInterval:(unsigned int)a5 error:(id *)a6;
- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9;
- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)a3 syncFlags:(char *)a4 timeSyncTime:(unint64_t *)a5 domainTimeHi:(unint64_t *)a6 domainTimeLo:(unint64_t *)a7 cumulativeScaledRate:(unint64_t *)a8 inverseCumulativeScaledRate:(unint64_t *)a9 grandmasterID:(unint64_t *)a10 localPortNumber:(unsigned __int16 *)a11 error:(id *)a12;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9;
- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)a3 error:(id *)a4;
- (BOOL)removeReverseSyncFromInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 error:(id *)a5;
- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5;
- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5;
- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5;
- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5;
- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5;
- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5;
- (BOOL)setPreferredGM:(BOOL)a3 error:(id *)a4;
- (BOOL)updateNtpAnchorOffset:(int64_t)a3 isLocalClockSourceFromNTP:(BOOL)a4 error:(id *)a5;
- (NSArray)ports;
- (id)_gptpPath;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)a3;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)a3;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)a3;
- (id)portWithPortNumber:(unsigned __int16)a3;
- (unint64_t)_grandmasterIdentity;
- (unint64_t)clockIdentity;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)a3;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)a3;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)machAbsoluteFromgPTPTime:(id)a3;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)a3;
- (unsigned)clockAccuracy;
- (unsigned)clockClass;
- (unsigned)clockPriority1;
- (unsigned)clockPriority2;
- (void)_handleRefreshConnection;
- (void)_refreshGrandmasterIdentityOnNotificationQueue;
- (void)addImplClock:(id)a3;
- (void)dealloc;
- (void)removeImplClock:(id)a3;
@end

@implementation TSDgPTPClock

- (NSArray)ports
{
  v3 = +[NSMutableArray array];
  v4 = [(TSDKernelClock *)self service];
  v5 = [v4 childIteratorInServicePlaneWithError:0];

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

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncDomain";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)a3
{
  v6 = 1;
  v7 = -1;
  v8 = a3;
  v3 = [(TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:32 scalarInputs:&v8 scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

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

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)a3
{
  v14 = -1;
  v15 = -1;
  v17 = 0;
  v18 = 0;
  v16 = -1;
  v12 = 5;
  v19 = a3;
  v3 = [(TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:37 scalarInputs:&v19 scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v12 error:0];

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

- (unint64_t)machAbsoluteFromgPTPTime:(id)a3
{
  v10 = -1;
  v9 = 1;
  v4 = a3;
  v11[0] = [v4 seconds];
  v5 = [v4 nanoseconds];

  v11[1] = v5;
  v6 = [(TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:36 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v9 error:0];

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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  v18 = a3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:35 scalarInputs:&v18 scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (a4)
    {
      *a4 = v16;
    }

    if (a5)
    {
      *a5 = v17;
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

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:34 scalarInputs:&v15 scalarInputCount:2 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_100030630();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:38 scalarInputs:&v15 scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_1000306EC();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:39 scalarInputs:&v15 scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_1000307A8();
    return v11;
  }

  return result;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  v19 = vdupq_n_s64(1uLL);
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0xFFFFLL;
  v18 = 6;
  v15 = [(TSDKernelClock *)self connection];
  v16 = [v15 callMethodWithSelector:40 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v19 scalarOutputCount:&v18 error:0];

  if (v16)
  {
    if (a3)
    {
      *a3 = v19.i64[0];
    }

    if (a4)
    {
      *a4 = v19.u64[1];
    }

    if (a5)
    {
      *a5 = v20;
    }

    if (a6)
    {
      *a6 = v21;
    }

    if (a7)
    {
      *a7 = v22;
    }

    if (a8)
    {
      *a8 = v23;
    }
  }

  else
  {
    sub_100030864();
  }

  return v16;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)a3
{
  v6 = 1;
  v7 = -1;
  v8 = a3;
  v3 = [(TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:43 scalarInputs:&v8 scalarInputCount:1 scalarOutputs:&v7 scalarOutputCount:&v6 error:0];

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

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)a3
{
  v14 = -1;
  v15 = -1;
  v17 = 0;
  v18 = 0;
  v16 = -1;
  v12 = 5;
  v19 = a3;
  v3 = [(TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:48 scalarInputs:&v19 scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v12 error:0];

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

- (unint64_t)timeSyncTimeFromgPTPTime:(id)a3
{
  v10 = -1;
  v9 = 1;
  v4 = a3;
  v11[0] = [v4 seconds];
  v5 = [v4 nanoseconds];

  v11[1] = v5;
  v6 = [(TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:47 scalarInputs:v11 scalarInputCount:2 scalarOutputs:&v10 scalarOutputCount:&v9 error:0];

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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  v18 = a3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:46 scalarInputs:&v18 scalarInputCount:1 scalarOutputs:&v14 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (a4)
    {
      *a4 = v16;
    }

    if (a5)
    {
      *a5 = v17;
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

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:45 scalarInputs:&v15 scalarInputCount:2 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_100030CC8();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:49 scalarInputs:&v15 scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_100030D84();
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  v15 = a3;
  v10 = 3;
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:50 scalarInputs:&v15 scalarInputCount:1 scalarOutputs:&v12 scalarOutputCount:&v10 error:0];

  if (v8)
  {
    result = v12;
    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    sub_100030E40();
    return v11;
  }

  return result;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  v19 = vdupq_n_s64(1uLL);
  v20 = -1;
  v21 = -1;
  v22 = -1;
  v23 = 0xFFFFLL;
  v18 = 6;
  v15 = [(TSDKernelClock *)self connection];
  v16 = [v15 callMethodWithSelector:51 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v19 scalarOutputCount:&v18 error:0];

  if (v16)
  {
    if (a3)
    {
      *a3 = v19.i64[0];
    }

    if (a4)
    {
      *a4 = v19.u64[1];
    }

    if (a5)
    {
      *a5 = v20;
    }

    if (a6)
    {
      *a6 = v21;
    }

    if (a7)
    {
      *a7 = v22;
    }

    if (a8)
    {
      *a8 = v23;
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
  v3 = [(TSDgPTPClock *)self _grandmasterIdentity];
  v4 = [(TSDgPTPClock *)self _gptpPath];
  v5 = [(TSDKernelClock *)self propertyUpdateQueue];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(TSDKernelClock *)self propertyUpdateQueue];
  v8 = [(TSDKernelClock *)self notificationQueue];

  if (v7 == v8)
  {
LABEL_4:
    if (v3 != [(TSDgPTPClock *)self grandmasterIdentity])
    {
      [(TSDgPTPClock *)self setGrandmasterIdentity:v3];
    }

    v10 = [(TSDgPTPClock *)self gptpPath];
    v11 = [v4 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      [(TSDgPTPClock *)self setGptpPath:v4];
    }
  }

  else
  {
    v9 = [(TSDKernelClock *)self propertyUpdateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025E78;
    block[3] = &unk_10004C9E0;
    v24 = v3;
    block[4] = self;
    v23 = v4;
    dispatch_sync(v9, block);
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
          [v17 updateGrandmasterIdentity:v3 andgPTPPath:v4];
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
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"GrandmasterID"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)_gptpPath
{
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ASPath"];

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
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockIdentity"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unsigned)clockPriority1
{
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockPriority1"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)clockPriority2
{
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockPriority2"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)clockClass
{
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockClass"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)clockAccuracy
{
  v2 = [(TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ClockAccuracy"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)a3 allocatedPortNumber:(unsigned __int16 *)a4 error:(id *)a5
{
  v14 = 0;
  v13 = 1;
  v8 = [a3 dataUsingEncoding:4];
  v9 = [(TSDKernelClock *)self connection];
  v10 = [v9 callMethodWithSelector:18 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{&v14, &v13, a5}];

  if ((v10 & 1) == 0)
  {
    if (sub_100030FAC(a4))
    {
      goto LABEL_5;
    }

    v11 = -1;
    goto LABEL_4;
  }

  if (a4)
  {
    v11 = v14;
LABEL_4:
    *a4 = v11;
  }

LABEL_5:

  return v10;
}

- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  v7 = [(TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:19 structInput:objc_msgSend(v6 structInputSize:"bytes") error:{objc_msgSend(v6, "length"), a4}];

  if ((v8 & 1) == 0)
  {
    sub_100031070();
  }

  return v8;
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v16 = 1;
  v17 = a4;
  v9 = a3;
  v10 = [NSMutableData dataWithBytes:&v17 length:4];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:20 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v10 structInputSize:"bytes") scalarOutputs:objc_msgSend(v10 scalarOutputCount:"length") error:{&v18, &v16, a6}];

  if ((v13 & 1) == 0)
  {
    if (sub_100031120(a5))
    {
      goto LABEL_5;
    }

    v14 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v14 = v18;
LABEL_4:
    *a5 = v14;
  }

LABEL_5:

  return v13;
}

- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5
{
  v13 = a4;
  v7 = a3;
  v8 = [NSMutableData dataWithBytes:&v13 length:4];
  v9 = [v7 dataUsingEncoding:4];

  [v8 appendData:v9];
  v10 = [(TSDKernelClock *)self connection];
  v11 = [v10 callMethodWithSelector:21 structInput:objc_msgSend(v8 structInputSize:"bytes") error:{objc_msgSend(v8, "length"), a5}];

  if ((v11 & 1) == 0)
  {
    sub_1000311E4();
  }

  return v11;
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v17 = 1;
  v10 = a3;
  v11 = [NSMutableData dataWithBytes:a4 length:16];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:22 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, a6}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031294(a5))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v18;
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSMutableData dataWithBytes:a4 length:16];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:23 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    sub_100031358();
  }

  return v12;
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v17 = 1;
  v10 = a3;
  v11 = [NSMutableData dataWithBytes:a4 length:6];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:24 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, a6}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031408(a5))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v18;
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSMutableData dataWithBytes:a4 length:6];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:25 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    sub_1000314CC();
  }

  return v12;
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v16 = 1;
  v17 = a4;
  v9 = a3;
  v10 = [NSMutableData dataWithBytes:&v17 length:4];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:26 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v10 structInputSize:"bytes") scalarOutputs:objc_msgSend(v10 scalarOutputCount:"length") error:{&v18, &v16, a6}];

  if ((v13 & 1) == 0)
  {
    if (sub_10003157C(a5))
    {
      goto LABEL_5;
    }

    v14 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v14 = v18;
LABEL_4:
    *a5 = v14;
  }

LABEL_5:

  return v13;
}

- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5
{
  v13 = a4;
  v7 = a3;
  v8 = [NSMutableData dataWithBytes:&v13 length:4];
  v9 = [v7 dataUsingEncoding:4];

  [v8 appendData:v9];
  v10 = [(TSDKernelClock *)self connection];
  v11 = [v10 callMethodWithSelector:27 structInput:objc_msgSend(v8 structInputSize:"bytes") error:{objc_msgSend(v8, "length"), a5}];

  if ((v11 & 1) == 0)
  {
    sub_100031640();
  }

  return v11;
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v17 = 1;
  v10 = a3;
  v11 = [NSMutableData dataWithBytes:a4 length:16];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:28 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, a6}];

  if ((v14 & 1) == 0)
  {
    if (sub_1000316F0(a5))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v18;
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSMutableData dataWithBytes:a4 length:16];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:29 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    sub_1000317B4();
  }

  return v12;
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v18 = 0;
  v17 = 1;
  v10 = a3;
  v11 = [NSMutableData dataWithBytes:a4 length:6];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:30 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{&v18, &v17, a6}];

  if ((v14 & 1) == 0)
  {
    if (sub_100031864(a5))
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v18;
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [NSMutableData dataWithBytes:a4 length:6];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:31 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    sub_100031928();
  }

  return v12;
}

- (BOOL)addReverseSyncOnInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 syncInterval:(unsigned int)a5 error:(id *)a6
{
  v13[0] = a4;
  v13[1] = a5;
  v12 = 0;
  v8 = [a3 dataUsingEncoding:4];
  v9 = [(TSDKernelClock *)self connection];
  v10 = [v9 callMethodWithSelector:41 scalarInputs:v13 scalarInputCount:2 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{0, &v12, a6}];

  if ((v10 & 1) == 0)
  {
    sub_1000319D8();
  }

  return v10;
}

- (BOOL)removeReverseSyncFromInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 error:(id *)a5
{
  v12 = a4;
  v11 = 0;
  v7 = [a3 dataUsingEncoding:4];
  v8 = [(TSDKernelClock *)self connection];
  v9 = [v8 callMethodWithSelector:42 scalarInputs:&v12 scalarInputCount:1 structInput:objc_msgSend(v7 structInputSize:"bytes") scalarOutputs:objc_msgSend(v7 scalarOutputCount:"length") error:{0, &v11, a5}];

  if ((v9 & 1) == 0)
  {
    sub_100031A88();
  }

  return v9;
}

- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)a3 syncFlags:(char *)a4 timeSyncTime:(unint64_t *)a5 domainTimeHi:(unint64_t *)a6 domainTimeLo:(unint64_t *)a7 cumulativeScaledRate:(unint64_t *)a8 inverseCumulativeScaledRate:(unint64_t *)a9 grandmasterID:(unint64_t *)a10 localPortNumber:(unsigned __int16 *)a11 error:(id *)a12
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
  v18 = [(TSDKernelClock *)self connection];
  v19 = [v18 callMethodWithSelector:52 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v22 scalarOutputCount:&v21 error:a12];

  if (v19)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100031B38();
  if (a5)
  {
LABEL_3:
    *a5 = v22;
  }

LABEL_4:
  if (a6)
  {
    *a6 = v23;
  }

  if (a7)
  {
    *a7 = v24;
  }

  if (a8)
  {
    *a8 = v25.i64[0];
  }

  if (a9)
  {
    *a9 = v25.u64[1];
  }

  if (a10)
  {
    *a10 = v26;
  }

  if (a3)
  {
    *a3 = v27 != 0;
  }

  if (a4)
  {
    *a4 = v28;
  }

  if (a11)
  {
    *a11 = v29;
  }

  return v19;
}

- (id)portWithPortNumber:(unsigned __int16)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100027668;
  v14 = sub_100027678;
  v15 = 0;
  v4 = [(TSDKernelClock *)self service];
  v5 = [v4 childIteratorInServicePlaneWithError:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027680;
  v8[3] = &unk_10004D288;
  v9 = a3;
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

- (id)getMetricsWithDelta:(id)a3
{
  v4 = a3;
  v5 = [(TSDgPTPClock *)self getMetrics];
  v6 = [v5 getDelta:v4];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDgPTPClock;
  [(TSDgPTPClock *)&v2 dealloc];
}

+ (id)diagnosticInfoForService:(id)a3
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___TSDgPTPClock;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v11, "diagnosticInfoForService:", v3);
  v5 = +[NSMutableArray array];
  v6 = [v3 childIteratorInServicePlaneWithError:0];

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

- (void)addImplClock:(id)a3
{
  v4 = a3;
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

        if (*(*(&v10 + 1) + 8 * v9) == v4)
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

  [(NSPointerArray *)self->_implClocks addPointer:v4, v10];
LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (void)removeImplClock:(id)a3
{
  v4 = a3;
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

        if (*(*(&v12 + 1) + 8 * v10) == v4)
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

- (BOOL)setPreferredGM:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v16 = a3;
  v15 = -1;
  v10 = 1;
  v6 = [(TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:55 scalarInputs:&v16 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v10 error:a4];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*a4 code];
    *buf = 67109376;
    v12 = v5;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDgPTPClock setPreferredGm(%u) = %ld", buf, 0x12u);
  }

  return v7;
}

- (BOOL)updateNtpAnchorOffset:(int64_t)a3 isLocalClockSourceFromNTP:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v18[0] = a3;
  v18[1] = a4;
  v8 = [(TSDKernelClock *)self connection];
  v9 = [v8 callMethodWithSelector:56 scalarInputs:v18 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:0 error:a5];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*a5 code];
    v12 = 134218496;
    v13 = a3;
    v14 = 1024;
    v15 = v6;
    v16 = 2048;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDgPTPClock updateNtpAnchorOffset(%lld %d) = %ld", &v12, 0x1Cu);
  }

  return v9;
}

@end