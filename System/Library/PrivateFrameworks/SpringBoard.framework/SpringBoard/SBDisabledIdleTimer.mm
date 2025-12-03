@interface SBDisabledIdleTimer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)reset;
- (void)setActivated:(BOOL)activated;
@end

@implementation SBDisabledIdleTimer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = SBDisabledIdleTimer;
  [(SBIdleTimerBase *)&v2 reset];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
      v6 = [v5 isEqual];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (void)setActivated:(BOOL)activated
{
  self->_activated = activated;
  if (activated)
  {
    [(SBIdleTimerBase *)self _logExpirationTimeout:-1.0];
  }
}

@end