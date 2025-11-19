@interface TSDCUserFilteredClock
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (BOOL)waitTimeSyncTimeUpdate;
- (TSDCUserFilteredClock)initWithKernelClock:(id)a3;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3;
@end

@implementation TSDCUserFilteredClock

- (TSDCUserFilteredClock)initWithKernelClock:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = TSDCUserFilteredClock;
    v6 = [(TSDCKernelClock *)&v8 initWithKernelClock:v5];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_userFilteredClock, a3);
    }

    self->_lastValidIndex = -1;
    self->_needTimeSyncTimeUpdate = 0;
  }

  return self;
}

- (BOOL)waitTimeSyncTimeUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_needTimeSyncTimeUpdate)
  {
LABEL_9:
    v5 = 1;
    goto LABEL_10;
  }

  v3 = (self->_lastValidIndex + 1) & 7;
  if ([(TSDCKernelClock *)self validIndex]== v3)
  {
    v4 = 0;
    v5 = 1;
LABEL_8:
    if (v4 < 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = -1;
    while (1)
    {
      usleep(0x2710u);
      if (v6 == 98)
      {
        break;
      }

      ++v6;
      if ([(TSDCKernelClock *)self validIndex]== v3)
      {
        v5 = v6 < 0x63;
        v4 = v6 + 1;
        goto LABEL_8;
      }
    }

    v5 = 0;
    v4 = 100;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = 10000 * v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "waitTimeSyncTimeUpdate delayed %u us\n", v9, 8u);
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5
{
  self->_needTimeSyncTimeUpdate = 1;
  self->_lastValidIndex = [(TSDCKernelClock *)self validIndex];
  userFilteredClock = self->_userFilteredClock;

  return [(_TSF_TSDUserFilteredClock *)userFilteredClock addTimestampWithMachAbsolute:a3 andDomainTime:a4 error:a5];
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(TSDCKernelClock *)self getOsLog];
  v6 = [(TSDCKernelClock *)self getSignpostId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v14 = 136315138;
      v15 = "[TSDCUserFilteredClock convertFromMachAbsoluteToDomainTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v14, 0xCu);
    }
  }

  v8 = [(TSDCKernelClock *)self convertFromTimeSyncToDomainTime:a3];
  v9 = [(TSDCKernelClock *)self getOsLog];
  v10 = [(TSDCKernelClock *)self getSignpostId];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v14 = 136315650;
      v15 = "[TSDCUserFilteredClock convertFromMachAbsoluteToDomainTime:]";
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&dword_26F080000, v9, OS_SIGNPOST_INTERVAL_END, v11, &unk_26F0DFDB1, "%s machAbsoluteTime=%llu domainTime=%llu", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(TSDCKernelClock *)self getOsLog];
  v6 = [(TSDCKernelClock *)self getSignpostId];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      v14 = 136315138;
      v15 = "[TSDCUserFilteredClock convertFromDomainToMachAbsoluteTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v14, 0xCu);
    }
  }

  v8 = [(TSDCKernelClock *)self convertFromDomainToTimeSyncTime:a3];
  v9 = [(TSDCKernelClock *)self getOsLog];
  v10 = [(TSDCKernelClock *)self getSignpostId];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v14 = 136315650;
      v15 = "[TSDCUserFilteredClock convertFromDomainToMachAbsoluteTime:]";
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&dword_26F080000, v9, OS_SIGNPOST_INTERVAL_END, v11, &unk_26F0DFDB1, "%s domainTime=%llu machAbsoluteTime=%llu", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  v7 = [(TSDCKernelClock *)self getTimeSyncTimeRateRatioNumerator:a3 denominator:a4 timeSyncAnchor:a5 andDomainAnchor:a6 withError:a7];
  if (!v7)
  {
    [TSDCUserFilteredClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
  }

  return v7;
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.1()
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136316418;
    v2 = "[self getTimeSyncTimeRateRatioNumerator:numerator denominator:denominator timeSyncAnchor:machAnchor andDomainAnchor:domainAnchor withError:error]";
    v3 = 2048;
    v4 = 0;
    v5 = 2048;
    v6 = 0;
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/DC/TSDCUserFilteredClock.m";
    v11 = 1024;
    v12 = 141;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v1, 0x3Au);
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end