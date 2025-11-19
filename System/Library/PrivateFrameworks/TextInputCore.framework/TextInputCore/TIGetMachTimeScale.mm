@interface TIGetMachTimeScale
@end

@implementation TIGetMachTimeScale

double ___TIGetMachTimeScale_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  _TIGetMachTimeScale_scale = *&result;
  return result;
}

@end