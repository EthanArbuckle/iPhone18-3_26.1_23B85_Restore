@interface TSDUserFilteredClock
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5;
- (BOOL)isAdaptive;
- (BOOL)resetFilterToNominal:(BOOL)a3 error:(id *)a4;
- (BOOL)resetSyncServiceWithError:(id *)a3;
- (unint64_t)nominalDomainInterval;
- (unint64_t)nominalMachInterval;
- (unsigned)filterShift;
@end

@implementation TSDUserFilteredClock

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncUserFilteredService";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)a3 andDomainTime:(unint64_t)a4 error:(id *)a5
{
  v9 = 0;
  v10[0] = a3;
  v10[1] = a4;
  v6 = [(TSDKernelClock *)self connection];
  v7 = [v6 callMethodWithSelector:18 scalarInputs:v10 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v9 error:a5];

  if ((v7 & 1) == 0)
  {
    sub_10002E208();
  }

  return v7;
}

- (BOOL)resetSyncServiceWithError:(id *)a3
{
  v7 = 0;
  v4 = [(TSDKernelClock *)self connection];
  v5 = [v4 callMethodWithSelector:19 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v7 error:a3];

  if ((v5 & 1) == 0)
  {
    sub_10002E2B8();
  }

  return v5;
}

- (BOOL)resetFilterToNominal:(BOOL)a3 error:(id *)a4
{
  v9 = a3;
  v8 = 0;
  v5 = [(TSDKernelClock *)self connection];
  v6 = [v5 callMethodWithSelector:20 scalarInputs:&v9 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v8 error:a4];

  if ((v6 & 1) == 0)
  {
    sub_10002E368();
  }

  return v6;
}

- (unint64_t)nominalMachInterval
{
  v2 = [(TSDKernelClock *)self service];
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
  v2 = [(TSDKernelClock *)self service];
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
  v2 = [(TSDKernelClock *)self service];
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
  v2 = [(TSDKernelClock *)self service];
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

@end