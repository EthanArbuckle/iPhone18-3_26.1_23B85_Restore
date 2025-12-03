@interface SBResizeProgressSwitcherModifierEvent
- (SBResizeProgressSwitcherModifierEvent)initWithProgress:(double)progress;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBResizeProgressSwitcherModifierEvent

- (SBResizeProgressSwitcherModifierEvent)initWithProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = SBResizeProgressSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_progress = progress;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBResizeProgressSwitcherModifierEvent alloc];
  progress = self->_progress;

  return [(SBResizeProgressSwitcherModifierEvent *)v4 initWithProgress:progress];
}

@end