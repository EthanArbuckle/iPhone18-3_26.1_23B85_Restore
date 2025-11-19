@interface TVGetUpTimeMicros
@end

@implementation TVGetUpTimeMicros

double ___TVGetUpTimeMicros_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 * 0.001 / v1;
  _TVGetUpTimeMicros_sTimerToMicrosMultiplier = *&result;
  return result;
}

@end