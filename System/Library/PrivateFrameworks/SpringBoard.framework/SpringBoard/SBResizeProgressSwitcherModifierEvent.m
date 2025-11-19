@interface SBResizeProgressSwitcherModifierEvent
- (SBResizeProgressSwitcherModifierEvent)initWithProgress:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBResizeProgressSwitcherModifierEvent

- (SBResizeProgressSwitcherModifierEvent)initWithProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBResizeProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBResizeProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBResizeProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end