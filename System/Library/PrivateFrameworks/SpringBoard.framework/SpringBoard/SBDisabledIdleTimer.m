@interface SBDisabledIdleTimer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)reset;
- (void)setActivated:(BOOL)a3;
@end

@implementation SBDisabledIdleTimer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = SBDisabledIdleTimer;
  [(SBIdleTimerBase *)&v2 reset];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
      v6 = [v5 isEqual];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (void)setActivated:(BOOL)a3
{
  self->_activated = a3;
  if (a3)
  {
    [(SBIdleTimerBase *)self _logExpirationTimeout:-1.0];
  }
}

@end