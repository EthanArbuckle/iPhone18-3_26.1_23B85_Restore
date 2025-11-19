@interface TSDCgPTPClock
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5 flags:(unint64_t *)a6;
- (BOOL)convertFrom32BitASTime:(unsigned int *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFrom32BitASTime:(unsigned int *)a3 toTimeSyncTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromDomainTime:(unint64_t *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromDomainTime:(unint64_t *)a3 toTimeSyncTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9;
- (TSDCgPTPClock)initWithKernelClock:(id)a3;
- (id).cxx_construct;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)a3;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)a3;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)a3;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)a3;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)machAbsoluteFromgPTPTime:(id)a3;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)a3;
- (void)_getInitialSyncInfo;
- (void)dealloc;
- (void)updateGrandmasterIdentity:(unint64_t)a3 andgPTPPath:(id)a4;
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

- (TSDCgPTPClock)initWithKernelClock:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = TSDCgPTPClock;
    v6 = [(TSDCKernelClock *)&v12 initWithKernelClock:v5];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_gPTPClock, a3);
      v8 = +[TSClockManager sharedClockManager];
      v9 = [v8 timeSyncClock];
      timeSyncClock = v7->_timeSyncClock;
      v7->_timeSyncClock = v9;

      [(_TSF_TSDgPTPClock *)v7->_gPTPClock addImplClock:v7];
      [(TSDCgPTPClock *)v7 _getInitialSyncInfo];
    }
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (void)dealloc
{
  [(_TSF_TSDgPTPClock *)self->_gPTPClock removeImplClock:self];
  v3.receiver = self;
  v3.super_class = TSDCgPTPClock;
  [(TSDCKernelClock *)&v3 dealloc];
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      if (a5)
      {
        v6 = a3;
        v8 = a5;
        do
        {
          v9 = *v6++;
          *v5++ = [(TSDCgPTPClock *)self convertFromMachAbsoluteToDomainTime:v9 grandmasterUsed:0 portNumber:0];
          --v8;
        }

        while (v8);
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

- (BOOL)convertFromDomainTime:(unint64_t *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a4)
  {
    v5 = a3;
    if (a3)
    {
      if (a5)
      {
        v6 = a4;
        v8 = a5;
        do
        {
          v9 = *v5++;
          *v6++ = [(TSDCgPTPClock *)self convertFromDomainToMachAbsoluteTime:v9 grandmasterUsed:0 portNumber:0];
          --v8;
        }

        while (v8);
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

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)a3
{
  v5 = [(TSDCKernelClock *)self translationClock];
  v6 = [v5 convertFromMachAbsoluteIntervalToDomainInterval:a3];

  v7 = [(TSDCKernelClock *)self translationClock];
  v8 = [v7 convertFromDomainIntervalToTimeSyncTimeInterval:v6];

  return [(TSDCgPTPClock *)self convertFromTimeSyncTimeIntervalToDomainInterval:v8];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)a3
{
  v4 = [(TSDCgPTPClock *)self convertFromDomainIntervalToTimeSyncTimeInterval:a3];
  v5 = [(TSDCKernelClock *)self translationClock];
  v6 = [v5 convertFromTimeSyncTimeIntervalToDomainInterval:v4];

  v7 = [(TSDCKernelClock *)self translationClock];
  v8 = [v7 convertFromDomainIntervalToMachAbsoluteInterval:v6];

  return v8;
}

- (BOOL)convertFromTimeSyncTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      if (a5)
      {
        v6 = a3;
        v8 = a5;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = -1;
          if (v10)
          {
            v11 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeToDomainTime:v9 grandmasterUsed:0 portNumber:0];
          }

          *v5++ = v11;
          --v8;
        }

        while (v8);
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

- (BOOL)convertFromDomainTime:(unint64_t *)a3 toTimeSyncTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a4)
  {
    v5 = a3;
    if (a3)
    {
      if (a5)
      {
        v6 = a4;
        v8 = a5;
        do
        {
          v9 = *v5++;
          *v6++ = [(TSDCgPTPClock *)self convertFromDomainTimeToTimeSyncTime:v9 grandmasterUsed:0 portNumber:0];
          --v8;
        }

        while (v8);
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

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3
{
  v5 = [(TSDCKernelClock *)self validIndex];
  if (a3 == -1)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  if (v5 >= 8)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  cumulativeScaledRate = self->_timeInfo[v5].cumulativeScaledRate;

  return scaledInterval(a3, cumulativeScaledRate);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3
{
  v5 = [(TSDCKernelClock *)self validIndex];
  if (a3 == -1)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  if (v5 >= 8)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  inverseCumulativeScaledRate = self->_timeInfo[v5].inverseCumulativeScaledRate;

  return scaledInterval(a3, inverseCumulativeScaledRate);
}

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(TSDCKernelClock *)self getOsLog];
  v6 = [(TSDCKernelClock *)self getSignpostId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v18 = 136315138;
    v19 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, &unk_26F0DFDB1, "%s", &v18, 0xCu);
  }

  v7 = [(TSDCKernelClock *)self translationClock];
  v8 = [v7 convertFromMachAbsoluteToDomainTime:a3];

  v9 = [(TSDCKernelClock *)self translationClock];
  v10 = [v9 convertFromDomainToTimeSyncTime:v8];

  v11 = [(TSDCgPTPClock *)self gPTPTimeFromTimeSyncTime:v10];
  v12 = [(TSDCKernelClock *)self getOsLog];
  v13 = [(TSDCKernelClock *)self getSignpostId];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v11 seconds];
    v15 = [v11 nanoseconds];
    v18 = 136316418;
    v19 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = v8;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    _os_signpost_emit_with_name_impl(&dword_26F080000, v12, OS_SIGNPOST_INTERVAL_END, v13, &unk_26F0DFDB1, "%s MachAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u", &v18, 0x3Au);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TSDCKernelClock *)self getOsLog];
  v6 = [(TSDCKernelClock *)self getSignpostId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v18 = 136315138;
    v19 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, &unk_26F0DFDB1, "%s", &v18, 0xCu);
  }

  v7 = [(TSDCgPTPClock *)self timeSyncTimeFromgPTPTime:v4];
  v8 = [(TSDCKernelClock *)self translationClock];
  v9 = [v8 convertFromTimeSyncToDomainTime:v7];

  v10 = [(TSDCKernelClock *)self translationClock];
  v11 = [v10 convertFromDomainToMachAbsoluteTime:v9];

  v12 = [(TSDCKernelClock *)self getOsLog];
  v13 = [(TSDCKernelClock *)self getSignpostId];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v4 seconds];
    v15 = [v4 nanoseconds];
    v18 = 136316418;
    v19 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    v20 = 2048;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v9;
    v28 = 2048;
    v29 = v11;
    _os_signpost_emit_with_name_impl(&dword_26F080000, v12, OS_SIGNPOST_INTERVAL_END, v13, &unk_26F0DFDB1, "%s gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u timeSyncTime=%llu intermediateTime=%llu MachAbsoluteTime=%llu", &v18, 0x3Au);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      if (a5)
      {
        v6 = a3;
        v8 = a5;
        do
        {
          v9 = *v6++;
          *v5++ = [(TSDCgPTPClock *)self convertFrom32BitASToMachAbsoluteTime:v9];
          --v8;
        }

        while (v8);
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

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = [(TSDCKernelClock *)self getOsLog];
  v10 = [(TSDCKernelClock *)self getSignpostId];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v20 = 136315138;
    v21 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, &unk_26F0DFDB1, "%s", &v20, 0xCu);
  }

  v11 = [(TSDCKernelClock *)self translationClock];
  v12 = [v11 convertFromMachAbsoluteToDomainTime:a3];

  v13 = [(TSDCKernelClock *)self translationClock];
  v14 = [v13 convertFromDomainToTimeSyncTime:v12];

  v15 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeToDomainTime:v14 grandmasterUsed:a4 portNumber:a5];
  v16 = [(TSDCKernelClock *)self getOsLog];
  v17 = [(TSDCKernelClock *)self getSignpostId];
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v20 = 136316162;
    v21 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v12;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    _os_signpost_emit_with_name_impl(&dword_26F080000, v16, OS_SIGNPOST_INTERVAL_END, v17, &unk_26F0DFDB1, "%s machAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu domainTime=%llu", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = [(TSDCKernelClock *)self getOsLog];
  v10 = [(TSDCKernelClock *)self getSignpostId];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v20 = 136315138;
    v21 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, &unk_26F0DFDB1, "%s", &v20, 0xCu);
  }

  v11 = [(TSDCgPTPClock *)self convertFromDomainTimeToTimeSyncTime:a3 grandmasterUsed:a4 portNumber:a5];
  v12 = [(TSDCKernelClock *)self translationClock];
  v13 = [v12 convertFromTimeSyncToDomainTime:v11];

  v14 = [(TSDCKernelClock *)self translationClock];
  v15 = [v14 convertFromDomainToMachAbsoluteTime:v13];

  v16 = [(TSDCKernelClock *)self getOsLog];
  v17 = [(TSDCKernelClock *)self getSignpostId];
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v20 = 136316162;
    v21 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v15;
    _os_signpost_emit_with_name_impl(&dword_26F080000, v16, OS_SIGNPOST_INTERVAL_END, v17, &unk_26F0DFDB1, "%s domainTime=%llu timeSyncTime=%llu intermediateTime=%llu  machAbsoluteTime=%llu", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = -1;
  }

  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (![TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:"getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:" denominator:&v26 timeSyncAnchor:&v25 andDomainAnchor:&v24 forGrandmasterIdentity:a9 portNumber:? withError:?])
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  v13 = [(TSDCKernelClock *)self translationClock];
  v14 = [v13 getTimeSyncTimeRateRatioNumerator:&v23 denominator:&v22 timeSyncAnchor:0 andDomainAnchor:0 withError:0];

  if ((v14 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  v15 = [(TSDCKernelClock *)self translationClock];
  v16 = [v15 getMachAbsoluteRateRatioNumerator:&v21 denominator:&v20 machAnchor:0 andDomainAnchor:0 withError:0];

  if ((v16 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v27;
  }

  __C(v26, v23, v21, v25, v22, v20, a3, a4);
  if (a5)
  {
    v17 = [(TSDCKernelClock *)self translationClock];
    v18 = [(TSDCKernelClock *)self translationClock];
    *a5 = [v17 convertFromDomainToMachAbsoluteTime:{objc_msgSend(v18, "convertFromTimeSyncToDomainTime:", v24)}];
  }

  return 1;
}

- (id)getMetrics
{
  v2 = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetrics];

  return v2;
}

- (id)getMetricsWithDelta:(id)a3
{
  v3 = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetricsWithDelta:a3];

  return v3;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v9 = [(TSDCKernelClock *)self translationClock];
  v10 = [v9 convertFromMachAbsoluteToDomainTime:a3];

  v11 = [(TSDCKernelClock *)self translationClock];
  v12 = [v11 convertFromDomainToTimeSyncTime:v10];

  v13 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:v12 grandmasterUsed:a4 portNumber:a5];
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v6 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:a3.var0 grandmasterUsed:a3.var1 portNumber:a4, a5];
  v7 = [(TSDCKernelClock *)self translationClock];
  v8 = [v7 convertFromTimeSyncToDomainTime:v6];

  v9 = [(TSDCKernelClock *)self translationClock];
  v10 = [v9 convertFromDomainToMachAbsoluteTime:v8];

  return v10;
}

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)a3
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v3 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:a3 grandmasterUsed:&v19 portNumber:&v18 flags:&v20];
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

- (unint64_t)timeSyncTimeFromgPTPTime:(id)a3
{
  v4 = a3;
  v5 = IOTS_uint64mul([v4 seconds], 1000000000);
  v7 = v6;
  v8 = [v4 nanoseconds];
  if (__CFADD__(v5, v8))
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:v9 grandmasterUsed:v5 + v8 portNumber:0, 0];

  return v10;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)a3
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

  v7 = v4 & 0xFFFFFFFF00000000 | a3;
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
          v24 = [(TSDCKernelClock *)self clockIdentifier];
          *buf = 134219008;
          *&buf[4] = v24;
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
          v25 = [(TSDCKernelClock *)self clockIdentifier];
          *buf = 134219008;
          *&buf[4] = v25;
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
    v27 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134218496;
    *&buf[4] = v27;
    v39 = 2048;
    v40 = v37;
    v41 = 2048;
    v42 = v35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with the expansion performed on a different GrandMaster 0x%016llx than the conversion 0x%016llx.\n", buf, 0x20u);
  }

  if (v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134220288;
    *&buf[4] = v28;
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

- (BOOL)convertFrom32BitASTime:(unsigned int *)a3 toTimeSyncTime:(unint64_t *)a4 withCount:(unsigned int)a5
{
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      if (a5)
      {
        v6 = a3;
        v8 = a5;
        do
        {
          v9 = *v6++;
          *v5++ = [(TSDCgPTPClock *)self convertFrom32BitASToTimeSyncTime:v9];
          --v8;
        }

        while (v8);
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

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
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

  v11 = a3 - v7;
  v35 = v7 - a3;
  if (v7 >= a3)
  {
    v12 = v7 - a3;
  }

  else
  {
    v12 = a3 - v7;
  }

  if (!v8)
  {
    if (v7 > a3)
    {
      v13 = -2;
    }

    else
    {
      v13 = -1;
    }

    v14 = a3 - v7;
    goto LABEL_15;
  }

  v13 = v7 >= a3;
  if (v8 != -1)
  {
    v14 = v7 - a3;
LABEL_15:
    v15 = v7 <= a3;
    goto LABEL_20;
  }

  if (v7 < a3)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  v11 = v7 - a3;
  v14 = v7 - a3;
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
        v52 = v14;
        v53 = 2048;
        v54 = v15;
        v55 = 2048;
        v56 = v11;
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
          v52 = v14;
          v53 = 2048;
          v54 = v15;
          v55 = 2048;
          v56 = v11;
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
      v52 = v15;
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
    v52 = v14;
    v53 = 2048;
    v54 = 0;
    v55 = 2048;
    v56 = v11;
    v26 = MEMORY[0x277D86220];
    v27 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with future which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
LABEL_58:
    _os_log_impl(&dword_26F080000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x52u);
  }

LABEL_59:
  v28 = 1;
LABEL_67:
  v29 = [(TSDCgPTPClock *)self convertFrom128BitgPTPTimeToTimeSyncTime:v25 grandmasterUsed:a3 portNumber:&v39, &v38];
  if ((v41 != v39 || v40 != v38) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134218496;
    *&buf[4] = v30;
    v43 = 2048;
    v44 = v41;
    v45 = 2048;
    v46 = v39;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 64 time with the expansion performed on a different GrandMaster 0x%016llx than the conversion 0x%016llx.\n", buf, 0x20u);
  }

  if (v28 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134220288;
    *&buf[4] = v31;
    v43 = 2048;
    v44 = v9;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v34;
    v51 = 2048;
    v52 = a3;
    v53 = 2048;
    v54 = v25;
    v55 = 2048;
    v56 = a3;
    v57 = 2048;
    v58 = v29;
    v59 = 2048;
    v60 = v35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Now gPTP %llu (%llx.%016llx) now mach %llu convert gPTP %llu (%llx.%016llx) mach %llu diff %lld\n", buf, 0x66u);
  }

  if (a4)
  {
    *a4 = v39;
  }

  if (a5)
  {
    *a5 = v38;
  }

LABEL_78:
  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 forGrandmasterIdentity:(unint64_t *)a7 portNumber:(unsigned __int16 *)a8 withError:(id *)a9
{
  v16 = [(TSDCKernelClock *)self validIndex];
  v17 = v16;
  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    *a4 = 1;
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = -1;
  }

  if (a7)
  {
    *a7 = -1;
  }

  if (a8)
  {
    *a8 = -1;
  }

  if (v16 >= 8)
  {
    [TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  else
  {
    if (a3)
    {
      *a3 = self->_timeInfo[v16].cumulativeScaledRate;
    }

    if (a4)
    {
      *a4 = 0x20000000000;
    }

    if (a5)
    {
      *a5 = self->_timeInfo[v16].timeSyncTime;
    }

    if (a6)
    {
      *a6 = self->_timeInfo[v16].domainTime.lo;
    }

    if (a7)
    {
      *a7 = self->_timeInfo[v16].grandmasterID;
    }

    if (a8)
    {
      *a8 = self->_timeInfo[v16].localPortNumber;
    }
  }

  return v17 < 8;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  v5 = [(TSDCgPTPClock *)self convertFromTimeSyncTimeTo128BitgPTPTime:a3 grandmasterUsed:a4 portNumber:a5 flags:0];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5 flags:(unint64_t *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = -1;
  v12 = [(TSDCKernelClock *)self validIndex];
  v13 = v12;
  if (a3 == -1 || v12 == -1)
  {
    if (v12 == -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      v36 = [(TSDCKernelClock *)self clockIdentifier];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but index == -1\n", &v35, 0xCu);
    }

    if (a4)
    {
      *a4 = -1;
    }

    if (a5)
    {
      *a5 = -1;
    }

    if (!a6)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  v17 = &self->_timeInfo[v12];
  if (!v17->syncInfoValid)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218240;
      v36 = [(TSDCKernelClock *)self clockIdentifier];
      v37 = 1024;
      LODWORD(v38) = v13;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but sync info at index %u is not valid\n", &v35, 0x12u);
    }

    if (a4)
    {
      *a4 = -1;
    }

    if (a5)
    {
      *a5 = -1;
    }

    if (!a6)
    {
LABEL_35:
      v16 = -1;
      goto LABEL_46;
    }

LABEL_14:
    v15 = 0x8000000000000000;
    v16 = -1;
LABEL_15:
    *a6 = v15;
    goto LABEL_46;
  }

  timeSyncTime = v17->timeSyncTime;
  if (timeSyncTime <= a3)
  {
    v19 = a3 - timeSyncTime;
  }

  else
  {
    v19 = timeSyncTime - a3;
  }

  v20 = scaledInterval(v19, v17->cumulativeScaledRate);
  v21 = v20;
  hi = v17->domainTime.hi;
  if (timeSyncTime <= a3)
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

    if (!a4)
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
    if (!a4)
    {
      goto LABEL_41;
    }

LABEL_40:
    *a4 = v17->grandmasterID;
    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(TSDCKernelClock *)self clockIdentifier];
    v33 = [(TSClock *)self->_timeSyncClock convertFromMachAbsoluteToDomainTime:mach_absolute_time()];
    v34 = v17->domainTime.lo;
    v35 = 134219008;
    v36 = v32;
    v37 = 2048;
    v38 = a3;
    v39 = 2048;
    v40 = v33;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = v34;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Trying to convert from a timesync time nanosecond time %llu (%llu) that would result in a negative gPTP time %llu %llu\n", &v35, 0x34u);
  }

  v16 = -1;
  if (a4)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v17->localPortNumber;
  }

  if (a6)
  {
    v27 = (v17->syncFlags >> 3) & 1;
    *a6 = v27;
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

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)a3 grandmasterUsed:(unint64_t *)a4 portNumber:(unsigned __int16 *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v44 = *MEMORY[0x277D85DE8];
  v10 = -1;
  v11 = [(TSDCKernelClock *)self validIndex];
  v12 = v11;
  if (var0 == -1)
  {
    if (var1 == -1 || v11 == -1)
    {
      if (v11 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if (v11 == -1)
  {
LABEL_14:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v30 = 134217984;
    v31 = [(TSDCKernelClock *)self clockIdentifier];
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but index == -1\n";
    v19 = 12;
    goto LABEL_18;
  }

  v13 = &self->_timeInfo[v11];
  if (!v13->syncInfoValid)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v30 = 134218240;
    v31 = [(TSDCKernelClock *)self clockIdentifier];
    v32 = 1024;
    LODWORD(v33) = v12;
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but sync info at index %u is not valid\n";
    v19 = 18;
LABEL_18:
    _os_log_impl(&dword_26F080000, v17, OS_LOG_TYPE_DEFAULT, v18, &v30, v19);
LABEL_19:
    if (a4)
    {
      *a4 = -1;
    }

    if (a5)
    {
      localPortNumber = -1;
LABEL_32:
      *a5 = localPortNumber;
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
        v26 = [(TSDCKernelClock *)self clockIdentifier];
        v27 = v13->timeSyncTime;
        v30 = 134219520;
        v31 = v26;
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

  if (a4)
  {
    *a4 = v13->grandmasterID;
  }

  if (a5)
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
  v3 = [(_TSF_TSDKernelClock *)self->_gPTPClock lockState];
  gPTPClock = self->_gPTPClock;
  v13 = 0;
  v5 = [(_TSF_TSDgPTPClock *)gPTPClock getSyncInfoWithSyncInfoValid:&v21 + 1 syncFlags:&v21 timeSyncTime:&v20 domainTimeHi:&v19 domainTimeLo:&v18 cumulativeScaledRate:&v17 inverseCumulativeScaledRate:&v16 grandmasterID:&v15 localPortNumber:&v14 error:&v13];
  v6 = v13;
  v7 = [(_TSF_TSDgPTPClock *)self->_gPTPClock gptpPath];
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

    v3 = 0;
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
    v8 = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134217984;
    v23 = v8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) _getInitialSyncInfo: response", buf, 0xCu);
  }

  LOWORD(v12) = v14;
  [(TSDCgPTPClock *)self updateWithSyncInfoValid:HIBYTE(v21) syncFlags:v21 timeSyncTime:v20 domainTimeHi:v19 domainTimeLo:v18 cumulativeScaledRate:v17 inverseCumulativeScaledRate:v16 grandmasterID:v15 localPortNumber:v12];
  [(TSDCgPTPClock *)self updateGrandmasterIdentity:v15 andgPTPPath:v7];
  [(TSDCgPTPClock *)self updateLockState:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __169__TSDCgPTPClock_updateWithSyncInfoValid_syncFlags_timeSyncTime_domainTimeHi_domainTimeLo_cumulativeScaledRate_inverseCumulativeScaledRate_grandmasterID_localPortNumber___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setHostRateRatio:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)updateGrandmasterIdentity:(unint64_t)a3 andgPTPPath:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = [(TSDCKernelClock *)self clockIdentifier];
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) updateGrandmasterIdentity:0x%016llx andgPTPPath:...", buf, 0x16u);
  }

  v7 = [(TSDCKernelClock *)self propertyUpdateQueue];
  v8 = v7 == 0;

  if (v8)
  {
    [(TSDCgPTPClock *)self setGrandmasterIdentity:a3];
    [(TSDCgPTPClock *)self setGptpPath:v6];
  }

  else
  {
    v9 = [(TSDCKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TSDCgPTPClock_updateGrandmasterIdentity_andgPTPPath___block_invoke;
    block[3] = &unk_279DBDA00;
    block[4] = self;
    v13 = a3;
    v12 = v6;
    dispatch_async(v9, block);
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