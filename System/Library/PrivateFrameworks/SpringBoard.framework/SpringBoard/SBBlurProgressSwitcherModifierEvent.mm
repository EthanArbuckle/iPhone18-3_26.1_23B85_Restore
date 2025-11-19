@interface SBBlurProgressSwitcherModifierEvent
- (SBBlurProgressSwitcherModifierEvent)initWithProgress:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBBlurProgressSwitcherModifierEvent

- (SBBlurProgressSwitcherModifierEvent)initWithProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBBlurProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBBlurProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBBlurProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end