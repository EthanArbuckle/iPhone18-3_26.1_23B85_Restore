@interface BarrierBlockTimout
+ (id)create;
- (BOOL)armAndTestIfExpired;
- (BOOL)disarmAndTestIfWasExpired;
@end

@implementation BarrierBlockTimout

- (BOOL)armAndTestIfExpired
{
  os_unfair_lock_lock(&self->_timerLock);
  if (*&qword_1000588B0 == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v3) = info.denom;
    LODWORD(v4) = info.numer;
    *&qword_1000588B0 = v3 / v4;
  }

  v5 = (*&qword_1000588B0 * mach_absolute_time());
  if (self->_timerArmed)
  {
    if (v5 - self->_arm_time >= 0x3B9ACA00)
    {
      self->_timerExpired = 1;
    }
  }

  else
  {
    self->_timerArmed = 1;
    self->_arm_time = v5;
  }

  timerExpired = self->_timerExpired;
  os_unfair_lock_unlock(&self->_timerLock);
  return timerExpired;
}

- (BOOL)disarmAndTestIfWasExpired
{
  os_unfair_lock_lock(&self->_timerLock);
  timerExpired = self->_timerExpired;
  *&self->_timerArmed = 0;
  os_unfair_lock_unlock(&self->_timerLock);
  return timerExpired;
}

+ (id)create
{
  v2 = objc_alloc_init(BarrierBlockTimout);
  v2->_timerLock._os_unfair_lock_opaque = 0;
  *&v2->_timerArmed = 0;
  v2->_arm_time = 0;

  return v2;
}

@end