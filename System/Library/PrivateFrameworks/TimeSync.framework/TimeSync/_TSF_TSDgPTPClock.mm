@interface _TSF_TSDgPTPClock
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

@implementation _TSF_TSDgPTPClock

- (id)_gptpPath
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"ASPath"];

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
  service = [(_TSF_TSDKernelClock *)self service];
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

+ (id)availablegPTPClockIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:@"IOTimeSyncDomain"];
  v5 = [v3 matchingServices:v4 error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___TSF_TSDgPTPClock_availablegPTPClockIdentifiers__block_invoke;
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
  v11[0] = @"IOTimeSyncDomain";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = -1;
  v9[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:32 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time
{
  v20[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v18 = 0;
  v19 = 0;
  v17 = -1;
  v13 = 5;
  v20[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:37 scalarInputs:v20 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v13 error:0];

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

- (unint64_t)machAbsoluteFromgPTPTime:(id)time
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = -1;
  v10 = 1;
  timeCopy = time;
  v12[0] = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v12[1] = nanoseconds;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:36 scalarInputs:v12 scalarInputCount:2 scalarOutputs:&v11 scalarOutputCount:&v10 error:0];

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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v18 = 0xFFFFLL;
  v12 = 4;
  v19[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:35 scalarInputs:v19 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v12 error:0];

  if (v8)
  {
    v9 = v15;
    v10 = v16;
    if (used)
    {
      *used = v17;
    }

    if (number)
    {
      *number = v18;
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

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  timeCopy = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:34 scalarInputs:&timeCopy scalarInputCount:2 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0;
  v16[0] = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:38 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16[0] = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:39 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = vdupq_n_s64(1uLL);
  v21 = -1;
  v22 = -1;
  v23 = -1;
  v24 = 0xFFFFLL;
  v19 = 6;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:40 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v20 scalarOutputCount:&v19 error:0];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v20.i64[0];
    }

    if (denominator)
    {
      *denominator = v20.u64[1];
    }

    if (anchor)
    {
      *anchor = v21;
    }

    if (domainAnchor)
    {
      *domainAnchor = v22;
    }

    if (identity)
    {
      *identity = v23;
    }

    if (number)
    {
      *number = v24;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time
{
  v9[1] = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = -1;
  v9[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:43 scalarInputs:v9 scalarInputCount:1 scalarOutputs:&v8 scalarOutputCount:&v7 error:0];

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

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time
{
  v20[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v18 = 0;
  v19 = 0;
  v17 = -1;
  v13 = 5;
  v20[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:48 scalarInputs:v20 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v13 error:0];

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

- (unint64_t)timeSyncTimeFromgPTPTime:(id)time
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11 = -1;
  v10 = 1;
  timeCopy = time;
  v12[0] = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v12[1] = nanoseconds;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:47 scalarInputs:v12 scalarInputCount:2 scalarOutputs:&v11 scalarOutputCount:&v10 error:0];

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

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15 = -1;
  v16 = -1;
  v17 = -1;
  v18 = 0xFFFFLL;
  v12 = 4;
  v19[0] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:46 scalarInputs:v19 scalarInputCount:1 scalarOutputs:&v15 scalarOutputCount:&v12 error:0];

  if (v8)
  {
    v9 = v15;
    v10 = v16;
    if (used)
    {
      *used = v17;
    }

    if (number)
    {
      *number = v18;
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

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  timeCopy = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:45 scalarInputs:&timeCopy scalarInputCount:2 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0;
  v16[0] = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:49 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = -1;
  v14 = -1;
  v15 = 0xFFFFLL;
  v16[0] = time;
  v11 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:50 scalarInputs:v16 scalarInputCount:1 scalarOutputs:&v13 scalarOutputCount:&v11 error:0];

  if (v8)
  {
    result = v13;
    if (used)
    {
      *used = v14;
    }

    if (number)
    {
      *number = v15;
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

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = vdupq_n_s64(1uLL);
  v21 = -1;
  v22 = -1;
  v23 = -1;
  v24 = 0xFFFFLL;
  v19 = 6;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:51 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v20 scalarOutputCount:&v19 error:0];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v20.i64[0];
    }

    if (denominator)
    {
      *denominator = v20.u64[1];
    }

    if (anchor)
    {
      *anchor = v21;
    }

    if (domainAnchor)
    {
      *domainAnchor = v22;
    }

    if (identity)
    {
      *identity = v23;
    }

    if (number)
    {
      *number = v24;
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
  _grandmasterIdentity = [(_TSF_TSDgPTPClock *)self _grandmasterIdentity];
  _gptpPath = [(_TSF_TSDgPTPClock *)self _gptpPath];
  propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue)
  {
    goto LABEL_4;
  }

  v6 = propertyUpdateQueue;
  propertyUpdateQueue2 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  notificationQueue = [(_TSF_TSDKernelClock *)self notificationQueue];

  if (propertyUpdateQueue2 == notificationQueue)
  {
LABEL_4:
    if (_grandmasterIdentity != [(_TSF_TSDgPTPClock *)self grandmasterIdentity])
    {
      [(_TSF_TSDgPTPClock *)self setGrandmasterIdentity:_grandmasterIdentity];
    }

    gptpPath = [(_TSF_TSDgPTPClock *)self gptpPath];
    v11 = [_gptpPath isEqual:gptpPath];

    if ((v11 & 1) == 0)
    {
      [(_TSF_TSDgPTPClock *)self setGptpPath:_gptpPath];
    }
  }

  else
  {
    propertyUpdateQueue3 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___TSF_TSDgPTPClock__refreshGrandmasterIdentityOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD8C0;
    v25 = _grandmasterIdentity;
    block[4] = self;
    v24 = _gptpPath;
    dispatch_sync(propertyUpdateQueue3, block);
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
          [v17 updateGrandmasterIdentity:_grandmasterIdentity andgPTPPath:_gptpPath];
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
  service = [(_TSF_TSDKernelClock *)self service];
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
  service = [(_TSF_TSDKernelClock *)self service];
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
  service = [(_TSF_TSDKernelClock *)self service];
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
  service = [(_TSF_TSDKernelClock *)self service];
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
  service = [(_TSF_TSDKernelClock *)self service];
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
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v14 = 1;
  v8 = [named dataUsingEncoding:4];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v10 = [connection callMethodWithSelector:18 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{v15, &v14, error}];

  if ((v10 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addLinkLayerPortOnInterfaceNamed:number allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v11 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v11 = v15[0];
LABEL_4:
    *number = v11;
  }

LABEL_5:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)named error:(id *)error
{
  v6 = [named dataUsingEncoding:4];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:19 structInput:objc_msgSend(v6 structInputSize:"bytes") error:{objc_msgSend(v6, "length"), error}];

  if ((v8 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeLinkLayerPortFromInterfaceNamed:error:];
  }

  return v8;
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v18 = 1;
  addressCopy = address;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:&addressCopy length:4];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:20 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{v20, &v18, error}];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4PtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v20[0];
LABEL_4:
    *number = v15;
  }

LABEL_5:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  addressCopy = address;
  v7 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v9 = [v7 dataWithBytes:&addressCopy length:4];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:21 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v12;
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v12 = [v10 dataWithBytes:address length:16];
  v13 = [namedCopy dataUsingEncoding:4];

  [v12 appendData:v13];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v15 = [connection callMethodWithSelector:22 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, error}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6PtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v16 = v20[0];
LABEL_4:
    *number = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v8 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v10 = [v8 dataWithBytes:address length:16];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:23 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), error}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v12 = [v10 dataWithBytes:address length:6];
  v13 = [namedCopy dataUsingEncoding:4];

  [v12 appendData:v13];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v15 = [connection callMethodWithSelector:24 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, error}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerPtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v16 = v20[0];
LABEL_4:
    *number = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v8 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v10 = [v8 dataWithBytes:address length:6];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:25 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), error}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerPtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v18 = 1;
  addressCopy = address;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:&addressCopy length:4];
  v12 = [namedCopy dataUsingEncoding:4];

  [v11 appendData:v12];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v14 = [connection callMethodWithSelector:26 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v11 structInputSize:"bytes") scalarOutputs:objc_msgSend(v11 scalarOutputCount:"length") error:{v20, &v18, error}];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4EtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v20[0];
LABEL_4:
    *number = v15;
  }

LABEL_5:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  addressCopy = address;
  v7 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v9 = [v7 dataWithBytes:&addressCopy length:4];
  v10 = [namedCopy dataUsingEncoding:4];

  [v9 appendData:v10];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:27 structInput:objc_msgSend(v9 structInputSize:"bytes") error:{objc_msgSend(v9, "length"), error}];

  if ((v12 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v12;
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v12 = [v10 dataWithBytes:address length:16];
  v13 = [namedCopy dataUsingEncoding:4];

  [v12 appendData:v13];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v15 = [connection callMethodWithSelector:28 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, error}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6EtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v16 = v20[0];
LABEL_4:
    *number = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v8 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v10 = [v8 dataWithBytes:address length:16];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:29 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), error}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v19 = 1;
  v10 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v12 = [v10 dataWithBytes:address length:6];
  v13 = [namedCopy dataUsingEncoding:4];

  [v12 appendData:v13];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v15 = [connection callMethodWithSelector:30 scalarInputs:0 scalarInputCount:0 structInput:objc_msgSend(v12 structInputSize:"bytes") scalarOutputs:objc_msgSend(v12 scalarOutputCount:"length") error:{v20, &v19, error}];

  if ((v15 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerEtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v16 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v16 = v20[0];
LABEL_4:
    *number = v16;
  }

LABEL_5:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v8 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v10 = [v8 dataWithBytes:address length:6];
  v11 = [namedCopy dataUsingEncoding:4];

  [v10 appendData:v11];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v13 = [connection callMethodWithSelector:31 structInput:objc_msgSend(v10 structInputSize:"bytes") error:{objc_msgSend(v10, "length"), error}];

  if ((v13 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerEtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v13;
}

- (BOOL)addReverseSyncOnInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner syncInterval:(unsigned int)interval error:(id *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = numner;
  v14[1] = interval;
  v13 = 0;
  v8 = [named dataUsingEncoding:4];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v10 = [connection callMethodWithSelector:41 scalarInputs:v14 scalarInputCount:2 structInput:objc_msgSend(v8 structInputSize:"bytes") scalarOutputs:objc_msgSend(v8 scalarOutputCount:"length") error:{0, &v13, error}];

  if ((v10 & 1) == 0)
  {
    [_TSF_TSDgPTPClock addReverseSyncOnInterfaceNamed:withDomainNumner:syncInterval:error:];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeReverseSyncFromInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = numner;
  v12 = 0;
  v7 = [named dataUsingEncoding:4];
  connection = [(_TSF_TSDKernelClock *)self connection];
  v9 = [connection callMethodWithSelector:42 scalarInputs:v13 scalarInputCount:1 structInput:objc_msgSend(v7 structInputSize:"bytes") scalarOutputs:objc_msgSend(v7 scalarOutputCount:"length") error:{0, &v12, error}];

  if ((v9 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeReverseSyncFromInterfaceNamed:withDomainNumner:error:];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)valid syncFlags:(char *)flags timeSyncTime:(unint64_t *)time domainTimeHi:(unint64_t *)hi domainTimeLo:(unint64_t *)lo cumulativeScaledRate:(unint64_t *)rate inverseCumulativeScaledRate:(unint64_t *)scaledRate grandmasterID:(unint64_t *)self0 localPortNumber:(unsigned __int16 *)self1 error:(id *)self2
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
  connection = [(_TSF_TSDKernelClock *)self connection];
  v19 = [connection callMethodWithSelector:52 scalarInputs:0 scalarInputCount:0 scalarOutputs:&v23 scalarOutputCount:&v22 error:error];

  if (v19)
  {
    if (!time)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDgPTPClock getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:];
  if (time)
  {
LABEL_3:
    *time = v23;
  }

LABEL_4:
  if (hi)
  {
    *hi = v24;
  }

  if (lo)
  {
    *lo = v25;
  }

  if (rate)
  {
    *rate = v26.i64[0];
  }

  if (scaledRate)
  {
    *scaledRate = v26.u64[1];
  }

  if (d)
  {
    *d = v27;
  }

  if (valid)
  {
    *valid = v28 != 0;
  }

  if (flags)
  {
    *flags = v29;
  }

  if (number)
  {
    *number = v30;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (NSArray)ports
{
  array = [MEMORY[0x277CBEB18] array];
  service = [(_TSF_TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26___TSF_TSDgPTPClock_ports__block_invoke;
  v8[3] = &unk_279DBD7A8;
  v6 = array;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

- (id)portWithPortNumber:(unsigned __int16)number
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  service = [(_TSF_TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40___TSF_TSDgPTPClock_portWithPortNumber___block_invoke;
  v8[3] = &unk_279DBE058;
  numberCopy = number;
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

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(_TSF_TSDgPTPClock *)self getMetrics];
  v6 = [getMetrics getDelta:deltaCopy];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDgPTPClock *)&v2 dealloc];
}

+ (id)diagnosticInfoForService:(id)service
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS____TSF_TSDgPTPClock;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v11, sel_diagnosticInfoForService_, serviceCopy);
  array = [MEMORY[0x277CBEB18] array];
  v6 = [serviceCopy childIteratorInServicePlaneWithError:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___TSF_TSDgPTPClock_diagnosticInfoForService___block_invoke;
  v9[3] = &unk_279DBD7A8;
  v10 = array;
  v7 = array;
  [v6 enumerateWithBlock:v9];
  [v4 setObject:v7 forKeyedSubscript:@"Ports"];

  return v4;
}

- (void)addImplClock:(id)clock
{
  v16 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
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

        if (*(*(&v11 + 1) + 8 * v9) == clockCopy)
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

  [(NSPointerArray *)self->_implClocks addPointer:clockCopy, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeImplClock:(id)clock
{
  v18 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
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

        if (*(*(&v13 + 1) + 8 * v10) == clockCopy)
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

- (BOOL)setPreferredGM:(BOOL)m error:(id *)error
{
  mCopy = m;
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = m;
  v16 = -1;
  v11 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:55 scalarInputs:v17 scalarInputCount:1 scalarOutputs:&v16 scalarOutputCount:&v11 error:error];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    *buf = 67109376;
    v13 = mCopy;
    v14 = 2048;
    v15 = code;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPClock setPreferredGm(%u) = %ld", buf, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)updateNtpAnchorOffset:(int64_t)offset isLocalClockSourceFromNTP:(BOOL)p error:(id *)error
{
  pCopy = p;
  v19[2] = *MEMORY[0x277D85DE8];
  v19[0] = offset;
  v19[1] = p;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v9 = [connection callMethodWithSelector:56 scalarInputs:v19 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:0 error:error];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    v13 = 134218496;
    offsetCopy = offset;
    v15 = 1024;
    v16 = pCopy;
    v17 = 2048;
    v18 = code;
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