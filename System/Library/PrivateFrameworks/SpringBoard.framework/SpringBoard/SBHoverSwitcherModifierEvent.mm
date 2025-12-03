@interface SBHoverSwitcherModifierEvent
- (CGPoint)position;
- (SBHoverSwitcherModifierEvent)initWithPhase:(unint64_t)phase position:(CGPoint)position;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBHoverSwitcherModifierEvent

- (SBHoverSwitcherModifierEvent)initWithPhase:(unint64_t)phase position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v8.receiver = self;
  v8.super_class = SBHoverSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v8 init];
  if (result)
  {
    result->_phase = phase;
    result->_position.x = x;
    result->_position.y = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBHoverSwitcherModifierEvent;
  result = [(SBChainableModifierEvent *)&v5 copyWithZone:zone];
  *(result + 4) = self->_phase;
  *(result + 40) = self->_position;
  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBHoverSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = v4;
  phase = self->_phase;
  v7 = @"Hovering";
  if (phase == 1)
  {
    v7 = @"EndHovering";
  }

  if (phase == 2)
  {
    v8 = @"CancelHovering";
  }

  else
  {
    v8 = v7;
  }

  [v4 appendString:v8 withName:@"phase"];
  v9 = [v5 appendPoint:@"position" withName:{self->_position.x, self->_position.y}];

  return v5;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end