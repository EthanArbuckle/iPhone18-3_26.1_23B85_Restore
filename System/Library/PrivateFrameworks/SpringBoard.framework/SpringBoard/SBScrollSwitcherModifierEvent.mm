@interface SBScrollSwitcherModifierEvent
- (CGPoint)contentOffset;
- (SBScrollSwitcherModifierEvent)initWithContentOffset:(CGPoint)offset phase:(unint64_t)phase userInitiated:(BOOL)initiated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
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

- (SBScrollSwitcherModifierEvent)initWithContentOffset:(CGPoint)offset phase:(unint64_t)phase userInitiated:(BOOL)initiated
{
  y = offset.y;
  x = offset.x;
  v10.receiver = self;
  v10.super_class = SBScrollSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v10 init];
  if (result)
  {
    result->_contentOffset.x = x;
    result->_contentOffset.y = y;
    result->_phase = phase;
    result->_userInitiated = initiated;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBScrollSwitcherModifierEvent;
  result = [(SBChainableModifierEvent *)&v5 copyWithZone:zone];
  *(result + 3) = self->_contentOffset;
  *(result + 5) = self->_phase;
  *(result + 32) = self->_userInitiated;
  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = SBScrollSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
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