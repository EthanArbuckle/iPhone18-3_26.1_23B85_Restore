@interface SBRepositionProgressSwitcherModifierEvent
- (SBRepositionProgressSwitcherModifierEvent)initWithProgress:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBRepositionProgressSwitcherModifierEvent

- (SBRepositionProgressSwitcherModifierEvent)initWithProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBRepositionProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBRepositionProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBRepositionProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end