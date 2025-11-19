@interface _SBMachContinuousStopwatch
- (_SBMachContinuousStopwatch)init;
- (double)activeTime;
- (uint64_t)start;
- (uint64_t)stop;
@end

@implementation _SBMachContinuousStopwatch

- (_SBMachContinuousStopwatch)init
{
  v3.receiver = self;
  v3.super_class = _SBMachContinuousStopwatch;
  result = [(_SBMachContinuousStopwatch *)&v3 init];
  if (result)
  {
    result->_active = 0;
  }

  return result;
}

- (uint64_t)stop
{
  if (result)
  {
    v1 = result;
    result = mach_continuous_time();
    *(v1 + 8) = 0;
    *(v1 + 24) += result - *(v1 + 16);
  }

  return result;
}

- (uint64_t)start
{
  if (result)
  {
    v1 = result;
    *(result + 8) = 1;
    result = mach_continuous_time();
    *(v1 + 16) = result;
  }

  return result;
}

- (double)activeTime
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 8) == 1)
  {
    mach_continuous_time();
  }

  BSMonotonicReferencedTimeFromMachTime();
  return result;
}

@end