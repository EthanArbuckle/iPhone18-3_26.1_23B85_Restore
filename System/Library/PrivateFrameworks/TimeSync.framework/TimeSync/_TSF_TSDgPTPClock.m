@interface _TSF_TSDgPTPClock
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

@implementation _TSF_TSDgPTPClock

- (id)_gptpPath
{
  v2 = [(_TSF_TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"ASPath"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_grandmasterIdentity
{
  v2 = [(_TSF_TSDKernelClock *)self service];
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

+ (id)availablegPTPClockIdentifiers
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncDomain"];
  v5 = [v3 matchingServices:v4 error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___TSF_TSDgPTPClock_availablegPTPClockIdentifiers__block_invoke;
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
  v11[0] = @"IOTimeSyncDomain";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = -1;
  v9[0] = a3;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:32 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDgPTPClock convertFrom32BitASToMachAbsoluteTime:];
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

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v18 = 0;
  v19 = 0;
  v17 = -1;
  v13 = 5;
  v20[0] = a3;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:37 scalarInputs:v20 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v13 error:0];

  if (v4)
  {
    v5 = v19;
    v6 = (v19 >> 1) & 1;
    v7 = (v19 >> 2) & 1;
    v8 = [TSgPTPTime alloc];
    LOBYTE(v12) = v7;
    v9 = [(TSgPTPTime *)v8 initWithSeconds:v15 nanoseconds:v16 onGrandmaster:v17 withLocalPortNumber:v18 ptpTimescale:v5 & 1 timeTraceable:v6 frequencyTraceable:v12];
  }

  else
  {
    [_TSF_TSDgPTPClock gPTPTimeFromMachAbsoluteTime:?];
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = -1;
  v10 = 1;
  v4 = a3;
  v12[0] = [v4 seconds];
  v5 = [v4 nanoseconds];

  v12[1] = v5;
  v6 = [(_TSF_TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:36 scalarInputs:v12 scalarInputCount:2 scalarOutputs:&v11 scalarOutputCount:&v10 error:0];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPClock machAbsoluteFromgPTPTime:];
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v18 = 0xFFFFLL;
  v12 = 4;
  v19[0] = a3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:35 scalarInputs:v19 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v12 error:0];

  if (v8)
  {
    v9 = v15;
    v10 = v16;
    if (a4)
    {
      *a4 = v17;
    }

    if (a5)
    {
      *a5 = v18;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromMachAbsoluteTo128BitgPTPTime:&v13 grandmasterUsed:&v14 portNumber:?];
    v10 = v13;
    v9 = v14;
  }

  v11 = *MEMORY[0x277D85DE8];
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16 = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:34 scalarInputs:&v16 scalarInputCount:2 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFrom128BitgPTPTimeToMachAbsoluteTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0;
  v16[0] = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:38 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16[0] = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:39 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = vdupq_n_s64(1uLL);
  v21 = -1;
  v22 = -1;
  v23 = -1;
  v24 = 0xFFFFLL;
  v19 = 6;
  v15 = [(_TSF_TSDKernelClock *)self connection];
  v16 = [v15 callMethodWithSelector:40 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v20 scalarOutputCount:&v19 error:0];

  if (v16)
  {
    if (a3)
    {
      *a3 = v20.i64[0];
    }

    if (a4)
    {
      *a4 = v20.u64[1];
    }

    if (a5)
    {
      *a5 = v21;
    }

    if (a6)
    {
      *a6 = v22;
    }

    if (a7)
    {
      *a7 = v23;
    }

    if (a8)
    {
      *a8 = v24;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = -1;
  v9[0] = a3;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:43 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDgPTPClock convertFrom32BitASToTimeSyncTime:];
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

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v18 = 0;
  v19 = 0;
  v17 = -1;
  v13 = 5;
  v20[0] = a3;
  v3 = [(_TSF_TSDKernelClock *)self connection];
  v4 = [v3 callMethodWithSelector:48 scalarInputs:v20 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v13 error:0];

  if (v4)
  {
    v5 = v19;
    v6 = (v19 >> 1) & 1;
    v7 = (v19 >> 2) & 1;
    v8 = [TSgPTPTime alloc];
    LOBYTE(v12) = v7;
    v9 = [(TSgPTPTime *)v8 initWithSeconds:v15 nanoseconds:v16 onGrandmaster:v17 withLocalPortNumber:v18 ptpTimescale:v5 & 1 timeTraceable:v6 frequencyTraceable:v12];
  }

  else
  {
    [_TSF_TSDgPTPClock gPTPTimeFromTimeSyncTime:?];
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)timeSyncTimeFromgPTPTime:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = -1;
  v10 = 1;
  v4 = a3;
  v12[0] = [v4 seconds];
  v5 = [v4 nanoseconds];

  v12[1] = v5;
  v6 = [(_TSF_TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:47 scalarInputs:v12 scalarInputCount:2 scalarOutputs:&v11 scalarOutputCount:&v10 error:0];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPClock timeSyncTimeFromgPTPTime:];
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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v18 = 0xFFFFLL;
  v12 = 4;
  v19[0] = a3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:46 scalarInputs:v19 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v12 error:0];

  if (v8)
  {
    v9 = v15;
    v10 = v16;
    if (a4)
    {
      *a4 = v17;
    }

    if (a5)
    {
      *a5 = v18;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:&v13 grandmasterUsed:&v14 portNumber:?];
    v10 = v13;
    v9 = v14;
  }

  v11 = *MEMORY[0x277D85DE8];
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16 = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:45 scalarInputs:&v16 scalarInputCount:2 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0;
  v16[0] = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:49 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16[0] = a3;
  v11 = 3;
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:50 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (a4)
    {
      *a4 = v14;
    }

    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    result = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = vdupq_n_s64(1uLL);
  v21 = -1;
  v22 = -1;
  v23 = -1;
  v24 = 0xFFFFLL;
  v19 = 6;
  v15 = [(_TSF_TSDKernelClock *)self connection];
  v16 = [v15 callMethodWithSelector:51 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v20 scalarOutputCount:&v19 error:0];

  if (v16)
  {
    if (a3)
    {
      *a3 = v20.i64[0];
    }

    if (a4)
    {
      *a4 = v20.u64[1];
    }

    if (a5)
    {
      *a5 = v21;
    }

    if (a6)
    {
      *a6 = v22;
    }

    if (a7)
    {
      *a7 = v23;
    }

    if (a8)
    {
      *a8 = v24;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_refreshGrandmasterIdentityOnNotificationQueue
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(_TSF_TSDgPTPClock *)self _grandmasterIdentity];
  v4 = [(_TSF_TSDgPTPClock *)self _gptpPath];
  v5 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  v8 = [(_TSF_TSDKernelClock *)self notificationQueue];

  if (v7 == v8)
  {
LABEL_4:
    if (v3 != [(_TSF_TSDgPTPClock *)self grandmasterIdentity])
    {
      [(_TSF_TSDgPTPClock *)self setGrandmasterIdentity:v3];
    }

    v10 = [(_TSF_TSDgPTPClock *)self gptpPath];
    v11 = [v4 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      [(_TSF_TSDgPTPClock *)self setGptpPath:v4];
    }
  }

  else
  {
    v9 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___TSF_TSDgPTPClock__refreshGrandmasterIdentityOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD8C0;
    v25 = v3;
    block[4] = self;
    v24 = v4;
    dispatch_sync(v9, block);
  }

  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_implClocks;
  v13 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if ([v17 conformsToProtocol:{&unk_287F28890, v19}])
        {
          [v17 updateGrandmasterIdentity:v3 andgPTPPath:v4];
        }
      }

      v14 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_implClocksLock);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleRefreshConnection
{
  v3.receiver = self;
  v3.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDKernelClock *)&v3 _handleRefreshConnection];
  [(_TSF_TSDgPTPClock *)self _refreshGrandmasterIdentityOnNotificationQueue];
}

- (unint64_t)clockIdentity
{
  v2 = [(_TSF_TSDKernelClock *)self service];
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
  v2 = [(_TSF_TSDKernelClock *)self service];
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
  v2 = [(_TSF_TSDKernelClock *)self service];
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
  v2 = [(_TSF_TSDKernelClock *)self service];
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
  v2 = [(_TSF_TSDKernelClock *)self service];
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
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v14 = 1;
  v8 = [a3 dataUsingEncoding:4];
  v9 = [(_TSF_TSDKernelClock *)self connection];
  v10 = [v9 callMethodWithSelector:18 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{v15, &v14, a5}];

  if ((v10 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addLinkLayerPortOnInterfaceNamed:a4 allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v11 = -1;
    goto LABEL_4;
  }

  if (a4)
  {
    v11 = v15[0];
LABEL_4:
    *a4 = v11;
  }

LABEL_5:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)a3 error:(id *)a4
{
  v6 = [a3 dataUsingEncoding:4];
  v7 = [(_TSF_TSDKernelClock *)self connection];
  v8 = [v7 callMethodWithSelector:19 structInput:objc_msgSend(v6 structInputSize:"bytes") error:{objc_msgSend(v6, "length"), a4}];

  if ((v8 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeLinkLayerPortFromInterfaceNamed:error:];
  }

  return v8;
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v18 = 1;
  v19 = a4;
  v9 = MEMORY[0x277CBEB28];
  v10 = a3;
  v11 = [v9 dataWithBytes:&v19 length:4];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(_TSF_TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:20 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{v20, &v18, a6}];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4PtPPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v20[0];
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5
{
  v14 = a4;
  v7 = MEMORY[0x277CBEB28];
  v8 = a3;
  v9 = [v7 dataWithBytes:&v14 length:4];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(_TSF_TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:21 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v12;
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  v11 = a3;
  v12 = [v10 dataWithBytes:a4 length:16];
  v13 = [v11 dataUsingEncoding:4];

  [v12 appendData:v13];
  v14 = [(_TSF_TSDKernelClock *)self connection];
  v15 = [v14 callMethodWithSelector:22 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, a6}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6PtPPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v16 = v20[0];
LABEL_4:
    *a5 = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB28];
  v9 = a3;
  v10 = [v8 dataWithBytes:a4 length:16];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(_TSF_TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:23 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), a5}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  v11 = a3;
  v12 = [v10 dataWithBytes:a4 length:6];
  v13 = [v11 dataUsingEncoding:4];

  [v12 appendData:v13];
  v14 = [(_TSF_TSDKernelClock *)self connection];
  v15 = [v14 callMethodWithSelector:24 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, a6}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerPtPPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v16 = v20[0];
LABEL_4:
    *a5 = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB28];
  v9 = a3;
  v10 = [v8 dataWithBytes:a4 length:6];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(_TSF_TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:25 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), a5}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerPtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v18 = 1;
  v19 = a4;
  v9 = MEMORY[0x277CBEB28];
  v10 = a3;
  v11 = [v9 dataWithBytes:&v19 length:4];
  v12 = [v10 dataUsingEncoding:4];

  [v11 appendData:v12];
  v13 = [(_TSF_TSDKernelClock *)self connection];
  v14 = [v13 callMethodWithSelector:26 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{v20, &v18, a6}];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4EtEPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v15 = v20[0];
LABEL_4:
    *a5 = v15;
  }

LABEL_5:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(unsigned int)a4 error:(id *)a5
{
  v14 = a4;
  v7 = MEMORY[0x277CBEB28];
  v8 = a3;
  v9 = [v7 dataWithBytes:&v14 length:4];
  v10 = [v8 dataUsingEncoding:4];

  [v9 appendData:v10];
  v11 = [(_TSF_TSDKernelClock *)self connection];
  v12 = [v11 callMethodWithSelector:27 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), a5}];

  if ((v12 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v12;
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  v11 = a3;
  v12 = [v10 dataWithBytes:a4 length:16];
  v13 = [v11 dataUsingEncoding:4];

  [v12 appendData:v13];
  v14 = [(_TSF_TSDKernelClock *)self connection];
  v15 = [v14 callMethodWithSelector:28 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, a6}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6EtEPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v16 = v20[0];
LABEL_4:
    *a5 = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB28];
  v9 = a3;
  v10 = [v8 dataWithBytes:a4 length:16];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(_TSF_TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:29 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), a5}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 allocatedPortNumber:(unsigned __int16 *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  v11 = a3;
  v12 = [v10 dataWithBytes:a4 length:6];
  v13 = [v11 dataUsingEncoding:4];

  [v12 appendData:v13];
  v14 = [(_TSF_TSDKernelClock *)self connection];
  v15 = [v14 callMethodWithSelector:30 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, a6}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerEtEPortOnInterfaceNamed:a5 withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (a5)
  {
    v16 = v20[0];
LABEL_4:
    *a5 = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)a3 withDestinationAddress:(const char *)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB28];
  v9 = a3;
  v10 = [v8 dataWithBytes:a4 length:6];
  v11 = [v9 dataUsingEncoding:4];

  [v10 appendData:v11];
  v12 = [(_TSF_TSDKernelClock *)self connection];
  v13 = [v12 callMethodWithSelector:31 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), a5}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerEtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addReverseSyncOnInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 syncInterval:(unsigned int)a5 error:(id *)a6
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v13 = 0;
  v8 = [a3 dataUsingEncoding:4];
  v9 = [(_TSF_TSDKernelClock *)self connection];
  v10 = [v9 callMethodWithSelector:41 scalarInputs:v14 scalarInputCount:2 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{0, &v13, a6}];

  if ((v10 & 1) == 0)
  {
    [_TSF_TSDgPTPClock addReverseSyncOnInterfaceNamed:withDomainNumner:syncInterval:error:];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeReverseSyncFromInterfaceNamed:(id)a3 withDomainNumner:(unsigned __int8)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v12 = 0;
  v7 = [a3 dataUsingEncoding:4];
  v8 = [(_TSF_TSDKernelClock *)self connection];
  v9 = [v8 callMethodWithSelector:42 scalarInputs:v13 scalarInputCount:1 structInput:objc_msgSend(v7 structInputSize:"bytes") scalarOutputs:objc_msgSend(v7 scalarOutputCount:"length") error:{0, &v12, a5}];

  if ((v9 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeReverseSyncFromInterfaceNamed:withDomainNumner:error:];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)a3 syncFlags:(char *)a4 timeSyncTime:(unint64_t *)a5 domainTimeHi:(unint64_t *)a6 domainTimeLo:(unint64_t *)a7 cumulativeScaledRate:(unint64_t *)a8 inverseCumulativeScaledRate:(unint64_t *)a9 grandmasterID:(unint64_t *)a10 localPortNumber:(unsigned __int16 *)a11 error:(id *)a12
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = -1;
  v24 = -1;
  v25 = -1;
  v26 = vdupq_n_s64(1uLL);
  v27 = -1;
  v28 = 0;
  v29 = 0;
  v30 = 0xFFFFLL;
  v22 = 9;
  v18 = [(_TSF_TSDKernelClock *)self connection];
  v19 = [v18 callMethodWithSelector:52 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v23 scalarOutputCount:&v22 error:a12];

  if (v19)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDgPTPClock getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:];
  if (a5)
  {
LABEL_3:
    *a5 = v23;
  }

LABEL_4:
  if (a6)
  {
    *a6 = v24;
  }

  if (a7)
  {
    *a7 = v25;
  }

  if (a8)
  {
    *a8 = v26.i64[0];
  }

  if (a9)
  {
    *a9 = v26.u64[1];
  }

  if (a10)
  {
    *a10 = v27;
  }

  if (a3)
  {
    *a3 = v28 != 0;
  }

  if (a4)
  {
    *a4 = v29;
  }

  if (a11)
  {
    *a11 = v30;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (NSArray)ports
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(_TSF_TSDKernelClock *)self service];
  v5 = [v4 childIteratorInServicePlaneWithError:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26___TSF_TSDgPTPClock_ports__block_invoke;
  v8[3] = &unk_279DBD7A8;
  v6 = v3;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

- (id)portWithPortNumber:(unsigned __int16)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v4 = [(_TSF_TSDKernelClock *)self service];
  v5 = [v4 childIteratorInServicePlaneWithError:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40___TSF_TSDgPTPClock_portWithPortNumber___block_invoke;
  v8[3] = &unk_279DBE058;
  v9 = a3;
  v8[4] = &v10;
  [v5 enumerateWithBlock:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)getMetrics
{
  v2 = [[_TSF_TSDClockMetrics alloc] initWithClock:self];

  return v2;
}

- (id)getMetricsWithDelta:(id)a3
{
  v4 = a3;
  v5 = [(_TSF_TSDgPTPClock *)self getMetrics];
  v6 = [v5 getDelta:v4];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDgPTPClock *)&v2 dealloc];
}

+ (id)diagnosticInfoForService:(id)a3
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____TSF_TSDgPTPClock;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v11, sel_diagnosticInfoForService_, v3);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v3 childIteratorInServicePlaneWithError:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___TSF_TSDgPTPClock_diagnosticInfoForService___block_invoke;
  v9[3] = &unk_279DBD7A8;
  v10 = v5;
  v7 = v5;
  [v6 enumerateWithBlock:v9];
  [v4 setObject:v7 forKeyedSubscript:@"Ports"];

  return v4;
}

- (void)addImplClock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_implClocks;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == v4)
        {

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_implClocks addPointer:v4, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeImplClock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_implClocks;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v13 + 1) + 8 * v10) == v4)
        {

          [(NSPointerArray *)self->_implClocks removePointerAtIndex:v11, v13];
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)setPreferredGM:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v16 = -1;
  v11 = 1;
  v6 = [(_TSF_TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:55 scalarInputs:v17 scalarInputCount:1 scalarOutputs:&v16 scalarOutputCount:&v11 error:a4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*a4 code];
    *buf = 67109376;
    v13 = v5;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPClock setPreferredGm(%u) = %ld", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)updateNtpAnchorOffset:(int64_t)a3 isLocalClockSourceFromNTP:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v19[2] = *MEMORY[0x277D85DE8];
  v19[0] = a3;
  v19[1] = a4;
  v8 = [(_TSF_TSDKernelClock *)self connection];
  v9 = [v8 callMethodWithSelector:56 scalarInputs:v19 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:0 error:a5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*a5 code];
    v13 = 134218496;
    v14 = a3;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPClock updateNtpAnchorOffset(%lld %d) = %ld", &v13, 0x1Cu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)convertFrom32BitASToMachAbsoluteTime:.cold.1()
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

- (void)convertFrom32BitASTime:(_BYTE *)a1 toMachAbsoluteTime:withCount:.cold.1(_BYTE *a1)
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

- (void)gPTPTimeFromMachAbsoluteTime:(void *)a1 .cold.1(void *a1)
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

- (void)machAbsoluteFromgPTPTime:.cold.1()
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

- (void)convertFromMachAbsoluteTo128BitgPTPTime:(uint64_t)a1 grandmasterUsed:(void *)a2 portNumber:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  *a3 = a1;
  *a2 = a1;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)convertFrom128BitgPTPTimeToMachAbsoluteTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
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

- (void)convertFrom32BitASToTimeSyncTime:.cold.1()
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

- (void)convertFrom32BitASTime:(_BYTE *)a1 toTimeSyncTime:withCount:.cold.1(_BYTE *a1)
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

- (void)gPTPTimeFromTimeSyncTime:(void *)a1 .cold.1(void *a1)
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

- (void)timeSyncTimeFromgPTPTime:.cold.1()
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

- (void)convertFromTimeSyncTimeTo128BitgPTPTime:(uint64_t)a1 grandmasterUsed:(void *)a2 portNumber:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, 2u);
  }

  *a3 = a1;
  *a2 = a1;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
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

- (BOOL)addLinkLayerPortOnInterfaceNamed:(uint64_t)a1 allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeLinkLayerPortFromInterfaceNamed:error:.cold.1()
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

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastUDPv4PtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastUDPv6PtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastLinkLayerPtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastUDPv4EtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastUDPv6EtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  result = a1 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeUnicastLinkLayerEtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
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

- (void)addReverseSyncOnInterfaceNamed:withDomainNumner:syncInterval:error:.cold.1()
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

- (void)removeReverseSyncFromInterfaceNamed:withDomainNumner:error:.cold.1()
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

- (void)getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:.cold.1()
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