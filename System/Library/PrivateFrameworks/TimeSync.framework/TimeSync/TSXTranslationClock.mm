@interface TSXTranslationClock
- (BOOL)convertFromDomainTime:(unint64_t *)a3 toMachAbsoluteTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromDomainTime:(unint64_t *)a3 toTimeSyncTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)a3 toDomainTime:(unint64_t *)a4 withCount:(unsigned int)a5;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7;
- (TSXTranslationClock)init;
- (TSXTranslationClock)initWithClockIdentifier:(unint64_t)a3;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)a3;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)a3;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3;
- (void)_changedClockMaster;
- (void)_updateTimeSyncTime:(unint64_t)a3 timeSyncInterval:(unint64_t)a4 domainTime:(unint64_t)a5 domainInterval:(unint64_t)a6;
@end

@implementation TSXTranslationClock

- (TSXTranslationClock)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSXTranslationClock init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (TSXTranslationClock)initWithClockIdentifier:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = TSXTranslationClock;
  v4 = [(TSXTranslationClock *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_clockIdentifier = a3;
    v4->_validIndex = -1;
    mach_timebase_info(&v4->_timebaseInfo);
    v5->_updateLock._os_unfair_lock_opaque = 0;
    LODWORD(v6) = v5->_timebaseInfo.numer;
    LODWORD(v7) = v5->_timebaseInfo.denom;
    v5->_hostRateRatio = v6 / v7;
  }

  return v5;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)a3
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(a3, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return a3;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)a3
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(a3, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return a3;
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
          *v5++ = [(TSXTranslationClock *)self machAbsoluteTicksToNanoseconds:v9];
          --v8;
        }

        while (v8);
      }

      return 1;
    }

    else
    {
      [TSXTranslationClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSXTranslationClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
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
          *v6++ = [(TSXTranslationClock *)self machAbsoluteNanosecondsToTicks:v9];
          --v8;
        }

        while (v8);
      }

      return 1;
    }

    else
    {
      [TSXTranslationClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSXTranslationClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
    return v12;
  }
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 machAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a3)
  {
    *a3 = self->_timebaseInfo.numer;
  }

  if (a4)
  {
    *a4 = self->_timebaseInfo.denom;
  }

  return 1;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)a3
{
  if (a3 == -1)
  {
    [TSXTranslationClock convertFromTimeSyncToDomainTime:];
    return v11;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock convertFromTimeSyncToDomainTime:];
    return v11;
  }

  v4 = &self->super.isa + 4 * validIndex;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v9 = v4[3];

  return TSTimeXtoTimeY(a3, v5, v9, v6, v7);
}

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)a3
{
  if (a3 == -1)
  {
    [TSXTranslationClock convertFromDomainToTimeSyncTime:];
    return v11;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock convertFromDomainToTimeSyncTime:];
    return v11;
  }

  v4 = &self->super.isa + 4 * validIndex;
  v6 = v4[1];
  v5 = v4[2];
  v7 = v4[3];
  v9 = v4[4];

  return TSTimeXtoTimeY(a3, v5, v9, v6, v7);
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
          v9 = *v6++;
          *v5++ = [(TSXTranslationClock *)self convertFromTimeSyncToDomainTime:v9];
          --v8;
        }

        while (v8);
      }

      return 1;
    }

    else
    {
      [TSXTranslationClock convertFromTimeSyncTime:toDomainTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSXTranslationClock convertFromTimeSyncTime:toDomainTime:withCount:];
    return v12;
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
          *v6++ = [(TSXTranslationClock *)self convertFromDomainToTimeSyncTime:v9];
          --v8;
        }

        while (v8);
      }

      return 1;
    }

    else
    {
      [TSXTranslationClock convertFromDomainTime:toTimeSyncTime:withCount:];
      return v11;
    }
  }

  else
  {
    [TSXTranslationClock convertFromDomainTime:toTimeSyncTime:withCount:];
    return v12;
  }
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)a3
{
  if (a3 == -1)
  {
    [TSXTranslationClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v9;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v9;
  }

  v4 = self + 32 * validIndex;
  v5 = *(v4 + 3);
  v7 = *(v4 + 4);

  return TSIntervalXtoIntervalY(a3, v5, v7);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)a3
{
  if (a3 == -1)
  {
    [TSXTranslationClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v9;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v9;
  }

  domainTimeInterval = self->_timeInfo[validIndex].domainTimeInterval;
  timeSyncTimeInterval = self->_timeInfo[validIndex].timeSyncTimeInterval;

  return TSIntervalXtoIntervalY(a3, domainTimeInterval, timeSyncTimeInterval);
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)a3 denominator:(unint64_t *)a4 timeSyncAnchor:(unint64_t *)a5 andDomainAnchor:(unint64_t *)a6 withError:(id *)a7
{
  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  }

  else
  {
    if (a3)
    {
      *a3 = self->_timeInfo[validIndex].timeSyncTimeInterval;
    }

    v8 = (self + 32 * validIndex);
    if (a4)
    {
      *a4 = v8[4];
    }

    if (a5)
    {
      *a5 = v8[1];
    }

    if (a6)
    {
      *a6 = v8[2];
    }
  }

  return validIndex < 8;
}

void __40__TSXTranslationClock__updateLockState___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setLockState:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)_updateTimeSyncTime:(unint64_t)a3 timeSyncInterval:(unint64_t)a4 domainTime:(unint64_t)a5 domainInterval:(unint64_t)a6
{
  os_unfair_lock_lock(&self->_updateLock);
  v11 = (self->_validIndex + 1) & 7;
  v12 = &self->super.isa + 4 * v11;
  v12[1] = a3;
  v12[2] = a5;
  v12[3] = a4;
  v12[4] = a6;
  self->_validIndex = v11;

  os_unfair_lock_unlock(&self->_updateLock);
}

- (void)_changedClockMaster
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [(TSXTranslationClock *)self clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXTranslationClock(0x%016llx) changedClockMaster", &v4, 0xCu);
  }

  os_unfair_lock_lock(&self->_updateLock);
  self->_validIndex = -1;
  os_unfair_lock_unlock(&self->_updateLock);
  v3 = *MEMORY[0x277D85DE8];
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

- (void)convertFromTimeSyncToDomainTime:.cold.1()
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

- (void)convertFromTimeSyncToDomainTime:.cold.2()
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

- (void)convertFromDomainToTimeSyncTime:.cold.1()
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

- (void)convertFromDomainToTimeSyncTime:.cold.2()
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

@end