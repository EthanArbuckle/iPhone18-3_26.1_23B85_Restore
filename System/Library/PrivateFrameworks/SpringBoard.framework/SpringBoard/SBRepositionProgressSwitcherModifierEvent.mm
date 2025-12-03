@interface SBRepositionProgressSwitcherModifierEvent
- (SBRepositionProgressSwitcherModifierEvent)initWithProgress:(double)progress;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBRepositionProgressSwitcherModifierEvent

- (SBRepositionProgressSwitcherModifierEvent)initWithProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = SBRepositionProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = progress;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBRepositionProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBRepositionProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end