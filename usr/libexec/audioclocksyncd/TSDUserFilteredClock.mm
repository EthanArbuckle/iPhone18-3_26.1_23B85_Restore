@interface TSDUserFilteredClock
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error;
- (BOOL)isAdaptive;
- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error;
- (BOOL)resetSyncServiceWithError:(id *)error;
- (unint64_t)nominalDomainInterval;
- (unint64_t)nominalMachInterval;
- (unsigned)filterShift;
@end

@implementation TSDUserFilteredClock

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncUserFilteredService";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error
{
  v9 = 0;
  v10[0] = absolute;
  v10[1] = time;
  connection = [(TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:18 scalarInputs:v10 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v9 error:error];

  if ((v7 & 1) == 0)
  {
    sub_10002E208();
  }

  return v7;
}

- (BOOL)resetSyncServiceWithError:(id *)error
{
  v7 = 0;
  connection = [(TSDKernelClock *)self connection];
  v5 = [connection callMethodWithSelector:19 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v7 error:error];

  if ((v5 & 1) == 0)
  {
    sub_10002E2B8();
  }

  return v5;
}

- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error
{
  nominalCopy = nominal;
  v8 = 0;
  connection = [(TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:20 scalarInputs:&nominalCopy scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v8 error:error];

  if ((v6 & 1) == 0)
  {
    sub_10002E368();
  }

  return v6;
}

- (unint64_t)nominalMachInterval
{
  service = [(TSDKernelClock *)self service];
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
  service = [(TSDKernelClock *)self service];
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
  service = [(TSDKernelClock *)self service];
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
  service = [(TSDKernelClock *)self service];
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

@end