@interface SBAppSwitcherScrollView
- (CGPoint)contentOffsetVelocity;
- (CGPoint)contentOffsetVelocityConsideringNextContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation SBAppSwitcherScrollView

- (void)setContentOffset:(CGPoint)offset
{
  if ((*&offset.x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    x = 0.0;
  }

  else
  {
    x = offset.x;
  }

  if ((*&offset.y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    y = 0.0;
  }

  else
  {
    y = offset.y;
  }

  [(SBAppSwitcherScrollView *)self contentOffset];
  v7 = v6;
  v9 = v8;
  v16.receiver = self;
  v16.super_class = SBAppSwitcherScrollView;
  [(BSUIScrollView *)&v16 setContentOffset:x, y];
  if (x != v7 || y != v9)
  {
    v11 = CACurrentMediaTime();
    v12 = v11 - self->_previousScrollTime;
    if (v12 > 0.009)
    {
      v13 = v12 * 1000.0;
      v14 = (x - self->_previousContentOffset.x) / v13;
      v15 = (y - self->_previousContentOffset.y) / v13;
      self->_rawContentOffsetVelocity.x = v14;
      self->_rawContentOffsetVelocity.y = v15;
      self->_previousContentOffset.x = x;
      self->_previousContentOffset.y = y;
      self->_previousScrollTime = v11;
    }
  }
}

- (CGPoint)contentOffsetVelocity
{
  if (1.0 / (CACurrentMediaTime() - self->_previousScrollTime) >= 5.0)
  {
    p_rawContentOffsetVelocity = &self->_rawContentOffsetVelocity;
  }

  else
  {
    p_rawContentOffsetVelocity = MEMORY[0x277CBF348];
  }

  x = p_rawContentOffsetVelocity->x;
  y = p_rawContentOffsetVelocity->y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentOffsetVelocityConsideringNextContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(SBAppSwitcherScrollView *)self contentOffsetVelocity];
  v7 = v6;
  v9 = v8;
  v10 = CACurrentMediaTime() - self->_previousScrollTime;
  if (v10 > 0.009 && v10 < 5.0)
  {
    v12 = v10 * 1000.0;
    v7 = (x - self->_previousContentOffset.x) / v12;
    v9 = (y - self->_previousContentOffset.y) / v12;
  }

  v13 = v7;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

@end