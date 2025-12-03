@interface SBBlurProgressSwitcherModifierEvent
- (SBBlurProgressSwitcherModifierEvent)initWithProgress:(double)progress;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBBlurProgressSwitcherModifierEvent

- (SBBlurProgressSwitcherModifierEvent)initWithProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = SBBlurProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = progress;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBBlurProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBBlurProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end