@interface _TSF_TSDUserFilteredClock
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5;
- (BOOL)isAdaptive;
- (BOOL)resetFilterToNominal:(BOOL)a3 error:(id *)a4;
- (BOOL)resetSyncServiceWithError:(id *)a3;
- (unint64_t)nominalDomainInterval;
- (unint64_t)nominalMachInterval;
- (unsigned)filterShift;
@end

@implementation _TSF_TSDUserFilteredClock

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncUserFilteredService";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11[0] = a3;
  v11[1] = a4;
  v6 = [(_TSF_TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:18 scalarInputs:v11 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v10 error:a5];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock addTimestampWithMachAbsolute:andDomainTime:error:];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resetSyncServiceWithError:(id *)a3
{
  v7 = 0;
  v4 = [(_TSF_TSDKernelClock *)self connection];
  v5 = [v4 callMethodWithSelector:19 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v7 error:a3];

  if ((v5 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetSyncServiceWithError:];
  }

  return v5;
}

- (BOOL)resetFilterToNominal:(BOOL)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = a3;
  v9 = 0;
  v5 = [(_TSF_TSDKernelClock *)self connection];
  v6 = [v5 callMethodWithSelector:20 scalarInputs:v10 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v9 error:a4];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetFilterToNominal:error:];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)nominalMachInterval
{
  v2 = [(_TSF_TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"NominalMachInterval"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)nominalDomainInterval
{
  v2 = [(_TSF_TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"NominalDomainInterval"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)filterShift
{
  v2 = [(_TSF_TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"FilterShift"];

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

- (BOOL)isAdaptive
{
  v2 = [(_TSF_TSDKernelClock *)self service];
  v3 = [v2 iodPropertyForKey:@"Adaptive"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTimestampWithMachAbsolute:andDomainTime:error:.cold.1()
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

- (void)resetSyncServiceWithError:.cold.1()
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

- (void)resetFilterToNominal:error:.cold.1()
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