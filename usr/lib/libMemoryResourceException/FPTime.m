@interface FPTime
+ (FPTime)now;
- (FPTime)init;
- (unint64_t)machAbsoluteTimeNsec;
- (unint64_t)machContinuousTimeNsec;
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
      v2->_wallTime = 0 - *MEMORY[0x29EDB8ED0] + 0 * 0.000000001;
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (FPTime)now
{
  v2 = objc_alloc_init(FPTime);

  return v2;
}

- (unint64_t)machAbsoluteTimeNsec
{
  machAbsoluteTime = self->_machAbsoluteTime;
  if (qword_2A18A60D8 != -1)
  {
    dispatch_once(&qword_2A18A60D8, &unk_2A1E8FAD0);
  }

  return machAbsoluteTime * dword_2A18A60D0 / *algn_2A18A60D4;
}

- (unint64_t)machContinuousTimeNsec
{
  machContinuousTime = self->_machContinuousTime;
  if (qword_2A18A60D8 != -1)
  {
    dispatch_once(&qword_2A18A60D8, &unk_2A1E8FAD0);
  }

  return machContinuousTime * dword_2A18A60D0 / *algn_2A18A60D4;
}

@end