@interface _TSF_TSDUserFilteredClock
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error;
- (BOOL)isAdaptive;
- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error;
- (BOOL)resetSyncServiceWithError:(id *)error;
- (unint64_t)nominalDomainInterval;
- (unint64_t)nominalMachInterval;
- (unsigned)filterShift;
@end

@implementation _TSF_TSDUserFilteredClock

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncUserFilteredService";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11[0] = absolute;
  v11[1] = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:18 scalarInputs:v11 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v10 error:error];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock addTimestampWithMachAbsolute:andDomainTime:error:];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resetSyncServiceWithError:(id *)error
{
  v7 = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v5 = [connection callMethodWithSelector:19 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v7 error:error];

  if ((v5 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetSyncServiceWithError:];
  }

  return v5;
}

- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = nominal;
  v9 = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:20 scalarInputs:v10 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v9 error:error];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetFilterToNominal:error:];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)nominalMachInterval
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"NominalMachInterval"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)nominalDomainInterval
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"NominalDomainInterval"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unsigned)filterShift
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"FilterShift"];

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

- (BOOL)isAdaptive
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:@"Adaptive"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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