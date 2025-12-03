@interface SBOverrideScrollViewContentOffsetSwitcherModifier
- (CGPoint)scrollViewContentOffset;
- (SBOverrideScrollViewContentOffsetSwitcherModifier)initWithScrollViewContentOffset:(CGPoint)offset;
@end

@implementation SBOverrideScrollViewContentOffsetSwitcherModifier

- (SBOverrideScrollViewContentOffsetSwitcherModifier)initWithScrollViewContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v6.receiver = self;
  v6.super_class = SBOverrideScrollViewContentOffsetSwitcherModifier;
  result = [(SBSwitcherModifier *)&v6 init];
  if (result)
  {
    result->_scrollViewContentOffset.x = x;
    result->_scrollViewContentOffset.y = y;
  }

  return result;
}

- (CGPoint)scrollViewContentOffset
{
  x = self->_scrollViewContentOffset.x;
  y = self->_scrollViewContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end