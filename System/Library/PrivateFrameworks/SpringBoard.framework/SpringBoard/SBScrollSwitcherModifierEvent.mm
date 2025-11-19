@interface SBScrollSwitcherModifierEvent
- (CGPoint)contentOffset;
- (SBScrollSwitcherModifierEvent)initWithContentOffset:(CGPoint)a3 phase:(unint64_t)a4 userInitiated:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBScrollSwitcherModifierEvent

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SBScrollSwitcherModifierEvent)initWithContentOffset:(CGPoint)a3 phase:(unint64_t)a4 userInitiated:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = SBScrollSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v10 init];
  if (result)
  {
    result->_contentOffset.x = x;
    result->_contentOffset.y = y;
    result->_phase = a4;
    result->_userInitiated = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SBScrollSwitcherModifierEvent;
  result = [(SBChainableModifierEvent *)&v5 copyWithZone:a3];
  *(result + 3) = self->_contentOffset;
  *(result + 5) = self->_phase;
  *(result + 32) = self->_userInitiated;
  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBScrollSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = NSStringFromCGPoint(self->_contentOffset);
  [v4 appendString:v5 withName:@"contentOffset"];

  if (self->_phase)
  {
    v6 = @"EndScrolling";
  }

  else
  {
    v6 = @"Scrolling";
  }

  [v4 appendString:v6 withName:@"phase"];
  v7 = [v4 appendBool:self->_userInitiated withName:@"userInitiated"];

  return v4;
}

@end