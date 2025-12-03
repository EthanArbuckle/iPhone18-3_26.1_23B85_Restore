@interface TSXTranslationClock
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (TSXTranslationClock)init;
- (TSXTranslationClock)initWithClockIdentifier:(unint64_t)identifier;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds;
- (void)_changedClockMaster;
- (void)_updateTimeSyncTime:(unint64_t)time timeSyncInterval:(unint64_t)interval domainTime:(unint64_t)domainTime domainInterval:(unint64_t)domainInterval;
@end

@implementation TSXTranslationClock

- (TSXTranslationClock)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSXTranslationClock init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (TSXTranslationClock)initWithClockIdentifier:(unint64_t)identifier
{
  v9.receiver = self;
  v9.super_class = TSXTranslationClock;
  v4 = [(TSXTranslationClock *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_clockIdentifier = identifier;
    v4->_validIndex = -1;
    mach_timebase_info(&v4->_timebaseInfo);
    v5->_updateLock._os_unfair_lock_opaque = 0;
    LODWORD(v6) = v5->_timebaseInfo.numer;
    LODWORD(v7) = v5->_timebaseInfo.denom;
    v5->_hostRateRatio = v6 / v7;
  }

  return v5;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(nanoseconds, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return nanoseconds;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(ticks, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return ticks;
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
          *domainTimeCopy++ = [(TSXTranslationClock *)self machAbsoluteTicksToNanoseconds:v9];
          --countCopy;
        }

        while (countCopy);
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
          *absoluteTimeCopy++ = [(TSXTranslationClock *)self machAbsoluteNanosecondsToTicks:v9];
          --countCopy;
        }

        while (countCopy);
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

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (anchor)
  {
    *anchor = 0;
  }

  if (domainAnchor)
  {
    *domainAnchor = 0;
  }

  if (numerator)
  {
    *numerator = self->_timebaseInfo.numer;
  }

  if (denominator)
  {
    *denominator = self->_timebaseInfo.denom;
  }

  return 1;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time
{
  if (time == -1)
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

  return TSTimeXtoTimeY(time, v5, v9, v6, v7);
}

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time
{
  if (time == -1)
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

  return TSTimeXtoTimeY(time, v5, v9, v6, v7);
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
          v9 = *timeCopy++;
          *domainTimeCopy++ = [(TSXTranslationClock *)self convertFromTimeSyncToDomainTime:v9];
          --countCopy;
        }

        while (countCopy);
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
          *syncTimeCopy++ = [(TSXTranslationClock *)self convertFromDomainToTimeSyncTime:v9];
          --countCopy;
        }

        while (countCopy);
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

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  if (interval == -1)
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

  return TSIntervalXtoIntervalY(interval, v5, v7);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  if (interval == -1)
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

  return TSIntervalXtoIntervalY(interval, domainTimeInterval, timeSyncTimeInterval);
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSXTranslationClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  }

  else
  {
    if (numerator)
    {
      *numerator = self->_timeInfo[validIndex].timeSyncTimeInterval;
    }

    v8 = (self + 32 * validIndex);
    if (denominator)
    {
      *denominator = v8[4];
    }

    if (anchor)
    {
      *anchor = v8[1];
    }

    if (domainAnchor)
    {
      *domainAnchor = v8[2];
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

- (void)_updateTimeSyncTime:(unint64_t)time timeSyncInterval:(unint64_t)interval domainTime:(unint64_t)domainTime domainInterval:(unint64_t)domainInterval
{
  os_unfair_lock_lock(&self->_updateLock);
  v11 = (self->_validIndex + 1) & 7;
  v12 = &self->super.isa + 4 * v11;
  v12[1] = time;
  v12[2] = domainTime;
  v12[3] = interval;
  v12[4] = domainInterval;
  self->_validIndex = v11;

  os_unfair_lock_unlock(&self->_updateLock);
}

- (void)_changedClockMaster
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    clockIdentifier = [(TSXTranslationClock *)self clockIdentifier];
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