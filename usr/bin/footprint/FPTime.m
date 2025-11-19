@interface FPTime
- (FPTime)init;
@end

@implementation FPTime

- (FPTime)init
{
  v5.receiver = self;
  v5.super_class = FPTime;
  v2 = [(FPTime *)&v5 init];
  if (v2)
  {
    v3 = 0;
    if (!mach_get_times())
    {
      v2->_wallTime = 0 - kCFAbsoluteTimeIntervalSince1970 + 0 * 0.000000001;
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end