@interface TSDCgPTPClock
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number flags:(unint64_t *)flags;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (TSDCgPTPClock)initWithKernelClock:(id)clock;
- (id).cxx_construct;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)machAbsoluteFromgPTPTime:(id)time;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)time;
- (void)_getInitialSyncInfo;
- (void)dealloc;
- (void)updateGrandmasterIdentity:(unint64_t)identity andgPTPPath:(id)path;
@end

@implementation TSDCgPTPClock

- (id).cxx_construct
{
  for (i = 0; i != 512; i += 64)
  {
    v3 = self + i + 360;
    *v3 = 0;
    v3[1] = 0;
  }

  return self;
}

- (TSDCgPTPClock)initWithKernelClock:(id)clock
{
  clockCopy = clock;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = TSDCgPTPClock;
    v6 = [(TSDCKernelClock *)&v12 initWithKernelClock:clockCopy];
    selfCopy = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_gPTPClock, clock);
      v8 = +[TSClockManager sharedClockManager];
      timeSyncClock = [v8 timeSyncClock];
      timeSyncClock = selfCopy->_timeSyncClock;
      selfCopy->_timeSyncClock = timeSyncClock;

      [(_TSF_TSDgPTPClock *)selfCopy->_gPTPClock addImplClock:selfCopy];
      [(TSDCgPTPClock *)selfCopy _getInitialSyncInfo];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_TSF_TSDgPTPClock *)self->_gPTPClock removeImplClock:self];
  v3.receiver = self;
  v3.super_class = TSDCgPTPClock;
  [(TSDCKernelClock *)&v3 dealloc];
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (time)
  {
    domainTimeCopy = domainTime;
    if (domainTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          v9 = *timeCopy++;
          *domainTimeCopy++ = [(TSDCgPTPClock *)self convertFromMachAbsoluteToDomainTime:v9 grandmasterUsed:0 portNumber:0];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
    return v12;
  }
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (absoluteTime)
  {
    timeCopy = time;
    if (time)
    {
      if (count)
      {
        absoluteTimeCopy = absoluteTime;
        countCopy = count;
        do
        {
          v9 = *timeCopy++;
          *absoluteTimeCopy++ = [(TSDCgPTPClock *)self convertFromDomainToMachAbsoluteTime:v9 grandmasterUsed:0 portNumber:0];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
    return v12;
  }
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  translationClock = [(TSDCKernelClock *)self translationClock];
  v6 = [translationClock convertFromMachAbsoluteIntervalToDomainInterval:interval];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock2 convertFromDomainIntervalToTimeSyncTimeInterval:v6];

  return [(TSDCgPTPClock *)self convertFromTimeSyncTimeIntervalToDomainInterval:v8];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  v4 = [(TSDCgPTPClock *)self convertFromDomainIntervalToTimeSyncTimeInterval:interval];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v6 = [translationClock convertFromTimeSyncTimeIntervalToDomainInterval:v4];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock2 convertFromDomainIntervalToMachAbsoluteInterval:v6];

  return v8;
}

- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (time)
  {
    domainTimeCopy = domainTime;
    if (domainTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          v10 = *timeCopy++;
          v9 = v10;
          v11 = -1;
          if (v10)
          {
            v11 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeToDomainTime:v9 grandmasterUsed:0 portNumber:0];
          }

          *domainTimeCopy++ = v11;
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromTimeSyncTime:toDomainTime:withCount:];
      return v13;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromTimeSyncTime:toDomainTime:withCount:];
    return v14;
  }
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  if (syncTime)
  {
    timeCopy = time;
    if (time)
    {
      if (count)
      {
        syncTimeCopy = syncTime;
        countCopy = count;
        do
        {
          v9 = *timeCopy++;
          *syncTimeCopy++ = [(TSDCgPTPClock *)self convertFromDomainTimeToTimeSyncTime:v9 grandmasterUsed:0 portNumber:0];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromDomainTime:toTimeSyncTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromDomainTime:toTimeSyncTime:withCount:];
    return v12;
  }
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  if (interval == -1)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  cumulativeScaledRate = self->_timeInfo[validIndex].cumulativeScaledRate;

  return scaledInterval(interval, cumulativeScaledRate);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  if (interval == -1)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  inverseCumulativeScaledRate = self->_timeInfo[validIndex].inverseCumulativeScaledRate;

  return scaledInterval(interval, inverseCumulativeScaledRate);
}

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time
{
  v30 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v18 = 136315138;
    v19 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v18, 0xCu);
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock convertFromMachAbsoluteToDomainTime:time];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v10 = [translationClock2 convertFromDomainToTimeSyncTime:v8];

  v11 = [(TSDCgPTPClock *)self gPTPTimeFromTimeSyncTime:v10];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    seconds = [v11 seconds];
    nanoseconds = [v11 nanoseconds];
    v18 = 136316418;
    v19 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    v20 = 2048;
    timeCopy = time;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = seconds;
    v28 = 1024;
    v29 = nanoseconds;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s MachAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u", &v18, 0x3Au);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)time
{
  v30 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v18 = 136315138;
    v19 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v18, 0xCu);
  }

  v7 = [(TSDCgPTPClock *)self timeSyncTimeFromgPTPTime:timeCopy];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v9 = [translationClock convertFromTimeSyncToDomainTime:v7];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v11 = [translationClock2 convertFromDomainToMachAbsoluteTime:v9];

  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    seconds = [timeCopy seconds];
    nanoseconds = [timeCopy nanoseconds];
    v18 = 136316418;
    v19 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    v20 = 2048;
    v21 = seconds;
    v22 = 1024;
    v23 = nanoseconds;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v11;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u timeSyncTime=%llu intermediateTime=%llu MachAbsoluteTime=%llu", &v18, 0x3Au);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (time)
  {
    absoluteTimeCopy = absoluteTime;
    if (absoluteTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          v9 = *timeCopy++;
          *absoluteTimeCopy++ = [(TSDCgPTPClock *)self convertFrom32BitASToMachAbsoluteTime:v9];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFrom32BitASTime:toMachAbsoluteTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSDCgPTPClock convertFrom32BitASTime:toMachAbsoluteTime:withCount:];
    return v12;
  }
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v30 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v20 = 136315138;
    v21 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v20, 0xCu);
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v12 = [translationClock convertFromMachAbsoluteToDomainTime:time];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v14 = [translationClock2 convertFromDomainToTimeSyncTime:v12];

  v15 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeToDomainTime:v14 grandmasterUsed:used portNumber:number];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    v20 = 136316162;
    v21 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    v22 = 2048;
    timeCopy = time;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s machAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu domainTime=%llu", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v30 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v20 = 136315138;
    v21 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v20, 0xCu);
  }

  v11 = [(TSDCgPTPClock *)self convertFromDomainTimeToTimeSyncTime:time grandmasterUsed:used portNumber:number];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v13 = [translationClock convertFromTimeSyncToDomainTime:v11];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v15 = [translationClock2 convertFromDomainToMachAbsoluteTime:v13];

  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    v20 = 136316162;
    v21 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    v22 = 2048;
    timeCopy = time;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v15;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s domainTime=%llu timeSyncTime=%llu intermediateTime=%llu  machAbsoluteTime=%llu", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (![TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:"getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:" denominator:&v26 timeSyncAnchor:&v25 andDomainAnchor:&v24 forGrandmasterIdentity:error portNumber:? withError:?])
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v14 = [translationClock getTimeSyncTimeRateRatioNumerator:&v23 denominator:&v22 timeSyncAnchor:0 andDomainAnchor:0 withError:0];

  if ((v14 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v16 = [translationClock2 getMachAbsoluteRateRatioNumerator:&v21 denominator:&v20 machAnchor:0 andDomainAnchor:0 withError:0];

  if ((v16 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  __C(v26, v23, v21, v25, v22, v20, numerator, denominator);
  if (anchor)
  {
    translationClock3 = [(TSDCKernelClock *)self translationClock];
    translationClock4 = [(TSDCKernelClock *)self translationClock];
    *anchor = [translationClock3 convertFromDomainToMachAbsoluteTime:{objc_msgSend(translationClock4, "convertFromTimeSyncToDomainTime:", v24)}];
  }

  return 1;
}

- (id)getMetrics
{
  getMetrics = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetrics];

  return getMetrics;
}

- (id)getMetricsWithDelta:(id)delta
{
  v3 = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetricsWithDelta:delta];

  return v3;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  translationClock = [(TSDCKernelClock *)self translationClock];
  v10 = [translationClock convertFromMachAbsoluteToDomainTime:time];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v12 = [translationClock2 convertFromDomainToTimeSyncTime:v10];

  v13 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:v12 grandmasterUsed:used portNumber:number];
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  number = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:time.var0 grandmasterUsed:time.var1 portNumber:used, number];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock convertFromTimeSyncToDomainTime:number];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v10 = [translationClock2 convertFromDomainToMachAbsoluteTime:v8];

  return v10;
}

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v3 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:time grandmasterUsed:&v19 portNumber:&v18 flags:&v20];
  v5 = 0;
  if (v3 != -1 || v4 != -1)
  {
    v7 = v20;
    v8 = (v20 >> 2) & 1;
    *&v17 = v4;
    *(&v17 + 1) = v3;
    *v15 = xmmword_26F0DFC10;
    v16[0] = IOTS_U128::operator/(&v17, v15);
    v16[1] = v9;
    operator*(v16, 0x3B9ACA00uLL, v15);
    v10 = v15[0];
    v11 = v17;
    v12 = [TSgPTPTime alloc];
    LOBYTE(v14) = v8;
    v5 = [(TSgPTPTime *)v12 initWithSeconds:v16[0] nanoseconds:(v11 - v10) onGrandmaster:v19 withLocalPortNumber:v18 ptpTimescale:v7 & 1 timeTraceable:(v7 >> 1) & 1 frequencyTraceable:v14];
  }

  return v5;
}

- (unint64_t)timeSyncTimeFromgPTPTime:(id)time
{
  timeCopy = time;
  v5 = IOTS_uint64mul([timeCopy seconds], 1000000000);
  v7 = v6;
  nanoseconds = [timeCopy nanoseconds];
  if (__CFADD__(v5, nanoseconds))
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:v9 grandmasterUsed:v5 + nanoseconds portNumber:0, 0];

  return v10;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time
{
  v57 = *MEMORY[0x277D85DE8];
  v37 = -1;
  v36 = -1;
  v31 = [(TSClock *)self->_timeSyncClock convertFromMachAbsoluteToDomainTime:mach_absolute_time()];
  v32 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  v5 = v4;
  if (v32 == -1 && v4 == -1)
  {
    [TSDCgPTPClock convertFrom32BitASToTimeSyncTime:];
    v26 = *buf;
    goto LABEL_64;
  }

  v7 = v4 & 0xFFFFFFFF00000000 | time;
  v8 = HIDWORD(v4) == 0;
  v9 = v7 - 0x100000000;
  v10 = v7 + 0x100000000;
  v11 = v4 > 0xFFFFFFFEFFFFFFFFLL;
  if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v12 = v32;
  }

  else
  {
    v12 = v32 + 1;
  }

  if (v7 <= v4)
  {
    v13 = v4 - v7;
  }

  else
  {
    v13 = v7 - v4;
  }

  v14 = (__PAIR128__(v32, HIDWORD(v4)) - 1) >> 64;
  if (v9 <= v4)
  {
    v8 = 1;
  }

  if ((__PAIR128__(v32, HIDWORD(v4)) - 1) >> 64 <= v32 && v8)
  {
    v15 = v4 - v9;
  }

  else
  {
    v15 = v9 - v4;
  }

  if (v10 <= v4)
  {
    v11 = 1;
  }

  if (v12 <= v32 && v11)
  {
    v16 = v4 - v10;
  }

  else
  {
    v16 = v10 - v4;
  }

  v35 = -1;
  v34 = -1;
  if (v13 > v15 || v13 > v16)
  {
    if (v15 <= v13 && v15 <= v16)
    {
      if (v15 <= 0x59682EFF)
      {
        v23 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
          *buf = 134219008;
          *&buf[4] = clockIdentifier;
          v39 = 2048;
          v40 = 1500;
          v41 = 2048;
          v42 = v13;
          v43 = 2048;
          v44 = v15;
          v45 = 2048;
          v46 = v16;
          _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with past which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n", buf, 0x34u);
        }

        v23 = 1;
      }

      v7 -= 0x100000000;
      goto LABEL_57;
    }

    if (v16 <= v13 && v16 <= v15)
    {
      if (v16 <= 0x59682EFF)
      {
        v23 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
          *buf = 134219008;
          *&buf[4] = clockIdentifier2;
          v39 = 2048;
          v40 = 1500;
          v41 = 2048;
          v42 = v13;
          v43 = 2048;
          v44 = v15;
          v45 = 2048;
          v46 = v16;
          _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with future which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n", buf, 0x34u);
        }

        v23 = 1;
      }

      v14 = v12;
      v7 += 0x100000000;
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    *buf = 134218752;
    *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
    v39 = 2048;
    v40 = v13;
    v41 = 2048;
    v42 = v15;
    v43 = 2048;
    v44 = v16;
    v20 = MEMORY[0x277D86220];
    v21 = "TSDCgPTPClock(0x%016llx): Converted a 32 time which didn't match a closest one condition. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n";
    v22 = 42;
    goto LABEL_41;
  }

  if (v13 <= 0x59682EFF)
  {
    v23 = 0;
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
    v39 = 2048;
    v40 = 1500;
    v41 = 2048;
    v42 = v13;
    v43 = 2048;
    v44 = v15;
    v45 = 2048;
    v46 = v16;
    v20 = MEMORY[0x277D86220];
    v21 = "TSDCgPTPClock(0x%016llx): Converted a 32 time with spliced which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n";
    v22 = 52;
LABEL_41:
    _os_log_impl(&dword_26F080000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
  }

LABEL_42:
  v23 = 1;
LABEL_48:
  v14 = v32;
LABEL_57:
  v26 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:v14 grandmasterUsed:v7 portNumber:&v35, &v34];
  if ((v37 != v35 || v36 != v34) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier3 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134218496;
    *&buf[4] = clockIdentifier3;
    v39 = 2048;
    v40 = v37;
    v41 = 2048;
    v42 = v35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with the expansion performed on a different GrandMaster 0x%016llx than the conversion 0x%016llx.\n", buf, 0x20u);
  }

  if (v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier4 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134220288;
    *&buf[4] = clockIdentifier4;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v32;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v31;
    v47 = 2048;
    v48 = v7;
    v49 = 2048;
    v50 = v14;
    v51 = 2048;
    v52 = v7;
    v53 = 2048;
    v54 = v26;
    v55 = 2048;
    v56 = v5 - v7;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Now gPTP %llu (%llx.%016llx) now mach %llu convert gPTP %llu (%llx.%016llx) mach %llu diff %lld\n", buf, 0x66u);
  }

LABEL_64:
  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  if (time)
  {
    syncTimeCopy = syncTime;
    if (syncTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          v9 = *timeCopy++;
          *syncTimeCopy++ = [(TSDCgPTPClock *)self convertFrom32BitASToTimeSyncTime:v9];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFrom32BitASTime:toTimeSyncTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSDCgPTPClock convertFrom32BitASTime:toTimeSyncTime:withCount:];
    return v12;
  }
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v61 = *MEMORY[0x277D85DE8];
  v41 = -1;
  v40 = -1;
  v34 = [(TSClock *)self->_timeSyncClock convertFromMachAbsoluteToDomainTime:mach_absolute_time()];
  v8 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  v9 = v7;
  if (v8 == -1 && v7 == -1)
  {
    [TSDCgPTPClock convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    v29 = *buf;
    goto LABEL_78;
  }

  v11 = time - v7;
  v35 = v7 - time;
  if (v7 >= time)
  {
    v12 = v7 - time;
  }

  else
  {
    v12 = time - v7;
  }

  if (!v8)
  {
    if (v7 > time)
    {
      v13 = -2;
    }

    else
    {
      v13 = -1;
    }

    v14 = time - v7;
    goto LABEL_15;
  }

  v13 = v7 >= time;
  if (v8 != -1)
  {
    v14 = v7 - time;
LABEL_15:
    v15 = v7 <= time;
    goto LABEL_20;
  }

  if (v7 < time)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  v11 = v7 - time;
  v14 = v7 - time;
LABEL_20:
  v39 = -1;
  v38 = -1;
  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14 >= v12;
  }

  if (v16)
  {
    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = v11 >= v12;
    }

    if (v17)
    {
      if (v12 <= 0x8BB2C96FFFLL)
      {
        v28 = 0;
        goto LABEL_66;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219776;
        *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
        v43 = 2048;
        v44 = 600000;
        v45 = 2048;
        v46 = 0;
        v47 = 2048;
        v48 = v12;
        v49 = 2048;
        v50 = v13;
        v51 = 2048;
        timeCopy = v14;
        v53 = 2048;
        v54 = v15;
        v55 = 2048;
        timeCopy2 = v11;
        v18 = MEMORY[0x277D86220];
        v19 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with spliced which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
        v20 = 82;
LABEL_63:
        _os_log_impl(&dword_26F080000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
      }

LABEL_64:
      v28 = 1;
LABEL_66:
      v25 = v8;
      goto LABEL_67;
    }

    if (v13)
    {
      v21 = 0;
    }

    else
    {
      v21 = v12 >= v14;
    }

    if (v21 && v11 >= v14)
    {
LABEL_55:
      v25 = v8 - 1;
      if (v14 > 0x8BB2C96FFFLL)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219776;
          *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
          v43 = 2048;
          v44 = 600000;
          v45 = 2048;
          v46 = 0;
          v47 = 2048;
          v48 = v12;
          v49 = 2048;
          v50 = v13;
          v51 = 2048;
          timeCopy = v14;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          timeCopy2 = v11;
          v26 = MEMORY[0x277D86220];
          v27 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with past which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
          goto LABEL_58;
        }

        goto LABEL_59;
      }

LABEL_60:
      v28 = 0;
      goto LABEL_67;
    }
  }

  else if (v15 == v13)
  {
    if (v11 >= v14)
    {
      goto LABEL_55;
    }
  }

  else if (v15 > v13)
  {
    goto LABEL_55;
  }

  if (v13)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14 >= v11;
  }

  v24 = !v23;
  if (v12 < v11 || (v24 & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
      v43 = 2048;
      v44 = 0;
      v45 = 2048;
      v46 = v12;
      v47 = 2048;
      v48 = v13;
      v49 = 2048;
      v50 = v14;
      v51 = 2048;
      timeCopy = v15;
      v53 = 2048;
      v54 = v11;
      v18 = MEMORY[0x277D86220];
      v19 = "TSDCgPTPClock(0x%016llx): Converted a 64 time which didn't match a closest one condition. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
      v20 = 72;
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  v25 = v8 + 1;
  if (v11 <= 0x8BB2C96FFFLL)
  {
    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
    v43 = 2048;
    v44 = 600000;
    v45 = 2048;
    v46 = 0;
    v47 = 2048;
    v48 = v12;
    v49 = 2048;
    v50 = v13;
    v51 = 2048;
    timeCopy = v14;
    v53 = 2048;
    v54 = 0;
    v55 = 2048;
    timeCopy2 = v11;
    v26 = MEMORY[0x277D86220];
    v27 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with future which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
LABEL_58:
    _os_log_impl(&dword_26F080000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x52u);
  }

LABEL_59:
  v28 = 1;
LABEL_67:
  v29 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:v25 grandmasterUsed:time portNumber:&v39, &v38];
  if ((v41 != v39 || v40 != v38) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134218496;
    *&buf[4] = clockIdentifier;
    v43 = 2048;
    v44 = v41;
    v45 = 2048;
    v46 = v39;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 64 time with the expansion performed on a different GrandMaster 0x%016llx than the conversion 0x%016llx.\n", buf, 0x20u);
  }

  if (v28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134220288;
    *&buf[4] = clockIdentifier2;
    v43 = 2048;
    v44 = v9;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v34;
    v51 = 2048;
    timeCopy = time;
    v53 = 2048;
    v54 = v25;
    v55 = 2048;
    timeCopy2 = time;
    v57 = 2048;
    v58 = v29;
    v59 = 2048;
    v60 = v35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Now gPTP %llu (%llx.%016llx) now mach %llu convert gPTP %llu (%llx.%016llx) mach %llu diff %lld\n", buf, 0x66u);
  }

  if (used)
  {
    *used = v39;
  }

  if (number)
  {
    *number = v38;
  }

LABEL_78:
  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  v17 = validIndex;
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  if (identity)
  {
    *identity = -1;
  }

  if (number)
  {
    *number = -1;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  else
  {
    if (numerator)
    {
      *numerator = self->_timeInfo[validIndex].cumulativeScaledRate;
    }

    if (denominator)
    {
      *denominator = 0x20000000000;
    }

    if (anchor)
    {
      *anchor = self->_timeInfo[validIndex].timeSyncTime;
    }

    if (domainAnchor)
    {
      *domainAnchor = self->_timeInfo[validIndex].domainTime.lo;
    }

    if (identity)
    {
      *identity = self->_timeInfo[validIndex].grandmasterID;
    }

    if (number)
    {
      *number = self->_timeInfo[validIndex].localPortNumber;
    }
  }

  return v17 < 8;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v5 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:time grandmasterUsed:used portNumber:number flags:0];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number flags:(unint64_t *)flags
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = -1;
  validIndex = [(TSDCKernelClock *)self validIndex];
  v13 = validIndex;
  if (time == -1 || validIndex == -1)
  {
    if (validIndex == -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but index == -1\n", &v35, 0xCu);
    }

    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      *number = -1;
    }

    if (!flags)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  v17 = &self->_timeInfo[validIndex];
  if (!v17->syncInfoValid)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218240;
      clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
      v37 = 1024;
      LODWORD(timeCopy) = v13;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but sync info at index %u is not valid\n", &v35, 0x12u);
    }

    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      *number = -1;
    }

    if (!flags)
    {
LABEL_35:
      v16 = -1;
      goto LABEL_46;
    }

LABEL_14:
    v15 = 0x8000000000000000;
    v16 = -1;
LABEL_15:
    *flags = v15;
    goto LABEL_46;
  }

  timeSyncTime = v17->timeSyncTime;
  if (timeSyncTime <= time)
  {
    v19 = time - timeSyncTime;
  }

  else
  {
    v19 = timeSyncTime - time;
  }

  v20 = scaledInterval(v19, v17->cumulativeScaledRate);
  v21 = v20;
  hi = v17->domainTime.hi;
  if (timeSyncTime <= time)
  {
    lo = v17->domainTime.lo;
    v11 = lo + v20;
    if (__CFADD__(lo, v20))
    {
      v16 = hi + 1;
    }

    else
    {
      v16 = v17->domainTime.hi;
    }

    if (!used)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v23 = v17->domainTime.lo;
  if (hi)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 > v20;
  }

  if (v24)
  {
    v25 = __PAIR128__(hi, v23) - v20;
    v16 = *(&v25 + 1);
    v11 = v25;
    if (!used)
    {
      goto LABEL_41;
    }

LABEL_40:
    *used = v17->grandmasterID;
    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
    v33 = [(TSClock *)self->_timeSyncClock convertFromMachAbsoluteToDomainTime:mach_absolute_time()];
    v34 = v17->domainTime.lo;
    v35 = 134219008;
    clockIdentifier = clockIdentifier2;
    v37 = 2048;
    timeCopy = time;
    v39 = 2048;
    v40 = v33;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = v34;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Trying to convert from a timesync time nanosecond time %llu (%llu) that would result in a negative gPTP time %llu %llu\n", &v35, 0x34u);
  }

  v16 = -1;
  if (used)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (number)
  {
    *number = v17->localPortNumber;
  }

  if (flags)
  {
    v27 = (v17->syncFlags >> 3) & 1;
    *flags = v27;
    syncFlags = v17->syncFlags;
    if ((syncFlags & 0x30) != 0)
    {
      v15 = (syncFlags >> 3) & 6 | v27;
      goto LABEL_15;
    }
  }

LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
  v30 = v11;
  result.var1 = v30;
  result.var0 = v16;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  var1 = time.var1;
  var0 = time.var0;
  v44 = *MEMORY[0x277D85DE8];
  v10 = -1;
  validIndex = [(TSDCKernelClock *)self validIndex];
  v12 = validIndex;
  if (var0 == -1)
  {
    if (var1 == -1 || validIndex == -1)
    {
      if (validIndex != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if (validIndex == -1)
  {
LABEL_14:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v30 = 134217984;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but index == -1\n";
    v19 = 12;
    goto LABEL_18;
  }

  v13 = &self->_timeInfo[validIndex];
  if (!v13->syncInfoValid)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v30 = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v32 = 1024;
    LODWORD(v33) = v12;
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but sync info at index %u is not valid\n";
    v19 = 18;
LABEL_18:
    _os_log_impl(&dword_26F080000, v17, OS_LOG_TYPE_DEFAULT, v18, &v30, v19);
LABEL_19:
    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      localPortNumber = -1;
LABEL_32:
      *number = localPortNumber;
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  lo = v13->domainTime.lo;
  hi = v13->domainTime.hi;
  if (hi > var0 || (hi == var0 ? (v16 = lo > var1) : (v16 = 0), v16))
  {
    v21 = scaledInterval(lo - var1, v13->inverseCumulativeScaledRate);
    timeSyncTime = v13->timeSyncTime;
    v16 = timeSyncTime > v21;
    v23 = timeSyncTime - v21;
    if (v16)
    {
      v10 = v23;
    }

    else
    {
      v24 = v21;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
        v27 = v13->timeSyncTime;
        v30 = 134219520;
        clockIdentifier = clockIdentifier2;
        v32 = 2048;
        v33 = var0;
        v34 = 2048;
        v35 = var1;
        v36 = 2048;
        v37 = var1;
        v38 = 2048;
        v39 = v24;
        v40 = 2048;
        v41 = v27;
        v42 = 2048;
        v43 = mach_absolute_time();
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Trying to convert from a gPTP time %llx.%016llx (%llu) that would result in a negative mach_absolute time %llu %llu %llu\n", &v30, 0x48u);
      }
    }
  }

  else
  {
    v10 = v13->timeSyncTime + scaledInterval(var1 - lo, v13->inverseCumulativeScaledRate);
  }

  if (used)
  {
    *used = v13->grandmasterID;
  }

  if (number)
  {
    localPortNumber = v13->localPortNumber;
    goto LABEL_32;
  }

LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_getInitialSyncInfo
{
  v36 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  lockState = [(_TSF_TSDKernelClock *)self->_gPTPClock lockState];
  gPTPClock = self->_gPTPClock;
  v13 = 0;
  v5 = [(_TSF_TSDgPTPClock *)gPTPClock getSyncInfoWithSyncInfoValid:&v21 + 1 syncFlags:&v21 timeSyncTime:&v20 domainTimeHi:&v19 domainTimeLo:&v18 cumulativeScaledRate:&v17 inverseCumulativeScaledRate:&v16 grandmasterID:&v15 localPortNumber:&v14 error:&v13];
  v6 = v13;
  gptpPath = [(_TSF_TSDgPTPClock *)self->_gPTPClock gptpPath];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136316418;
      v25 = "success == YES";
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      v30 = 2080;
      v31 = "";
      v32 = 2080;
      v33 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/DC/TSDCgPTPClock.mm";
      v34 = 1024;
      v35 = 1070;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v24, 0x3Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 description];
      v11 = v10;
      -[TSDCTranslationClock getInitialSyncInfo].cold.1([v10 UTF8String], v24, v10);
    }

    lockState = 0;
    v19 = -1;
    v20 = -1;
    v17 = 1;
    v18 = -1;
    v16 = 1;
    v15 = -1;
    v14 = -1;
    v21 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134217984;
    v23 = clockIdentifier;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) _getInitialSyncInfo: response", buf, 0xCu);
  }

  LOWORD(v12) = v14;
  [(TSDCgPTPClock *)self updateWithSyncInfoValid:HIBYTE(v21) syncFlags:v21 timeSyncTime:v20 domainTimeHi:v19 domainTimeLo:v18 cumulativeScaledRate:v17 inverseCumulativeScaledRate:v16 grandmasterID:v15 localPortNumber:v12];
  [(TSDCgPTPClock *)self updateGrandmasterIdentity:v15 andgPTPPath:gptpPath];
  [(TSDCgPTPClock *)self updateLockState:lockState];

  v9 = *MEMORY[0x277D85DE8];
}

void __169__TSDCgPTPClock_updateWithSyncInfoValid_syncFlags_timeSyncTime_domainTimeHi_domainTimeLo_cumulativeScaledRate_inverseCumulativeScaledRate_grandmasterID_localPortNumber___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setHostRateRatio:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)updateGrandmasterIdentity:(unint64_t)identity andgPTPPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v16 = 2048;
    identityCopy = identity;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) updateGrandmasterIdentity:0x%016llx andgPTPPath:...", buf, 0x16u);
  }

  propertyUpdateQueue = [(TSDCKernelClock *)self propertyUpdateQueue];
  v8 = propertyUpdateQueue == 0;

  if (v8)
  {
    [(TSDCgPTPClock *)self setGrandmasterIdentity:identity];
    [(TSDCgPTPClock *)self setGptpPath:pathCopy];
  }

  else
  {
    propertyUpdateQueue2 = [(TSDCKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TSDCgPTPClock_updateGrandmasterIdentity_andgPTPPath___block_invoke;
    block[3] = &unk_279DBDA00;
    block[4] = self;
    identityCopy2 = identity;
    v12 = pathCopy;
    dispatch_async(propertyUpdateQueue2, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__TSDCgPTPClock_updateGrandmasterIdentity_andgPTPPath___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setGrandmasterIdentity:*(a1 + 48)];
  [*(a1 + 32) setGptpPath:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
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

- (void)convertFromMachAbsoluteTime:toDomainTime:withCount:.cold.2()
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

- (void)convertFromDomainTime:toMachAbsoluteTime:withCount:.cold.2()
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

- (void)convertFromTimeSyncTime:toDomainTime:withCount:.cold.2()
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

- (void)convertFromDomainTime:toTimeSyncTime:withCount:.cold.2()
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

- (void)convertFromTimeSyncTimeIntervalToDomainInterval:.cold.2()
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

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.1()
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

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.2()
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

- (void)convertFrom32BitASTime:toMachAbsoluteTime:withCount:.cold.1()
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

- (void)convertFrom32BitASTime:toMachAbsoluteTime:withCount:.cold.2()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.2()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.3()
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

- (void)convertFrom32BitASToTimeSyncTime:.cold.1()
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

- (void)convertFrom32BitASTime:toTimeSyncTime:withCount:.cold.1()
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

- (void)convertFrom32BitASTime:toTimeSyncTime:withCount:.cold.2()
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

- (void)updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:.cold.1()
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

- (void)updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:.cold.2()
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