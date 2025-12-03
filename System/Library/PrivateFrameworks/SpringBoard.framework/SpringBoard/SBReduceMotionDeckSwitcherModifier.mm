@interface SBReduceMotionDeckSwitcherModifier
- (CGPoint)_pagingOrigin;
- (CGSize)_interpageSpacingForPaging;
- (double)_cardWidth;
- (double)_switcherCardScale;
- (double)leadingOffsetForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress;
- (double)opacityForIndex:(unint64_t)index scrollProgress:(double)progress;
- (double)scrollProgressForIndex:(unint64_t)index;
- (double)scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count frameOrigin:(double)origin;
- (double)titleOpacityForIndex:(unint64_t)index scrollProgress:(double)progress;
- (id)scrollViewAttributes;
- (unint64_t)indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count frameOrigin:(double)origin;
@end

@implementation SBReduceMotionDeckSwitcherModifier

- (id)scrollViewAttributes
{
  v6.receiver = self;
  v6.super_class = SBReduceMotionDeckSwitcherModifier;
  scrollViewAttributes = [(SBDeckSwitcherModifier *)&v6 scrollViewAttributes];
  v4 = [scrollViewAttributes mutableCopy];

  [v4 setScrollViewPagingEnabled:1];
  [(SBReduceMotionDeckSwitcherModifier *)self _interpageSpacingForPaging];
  [v4 setInterpageSpacingForPaging:?];
  [(SBReduceMotionDeckSwitcherModifier *)self _pagingOrigin];
  [v4 setPagingOrigin:?];
  [(SBReduceMotionDeckSwitcherModifier *)self switcherViewBounds];
  [v4 setFrame:?];

  return v4;
}

- (CGSize)_interpageSpacingForPaging
{
  [(SBReduceMotionDeckSwitcherModifier *)self containerViewBounds];
  CGRectGetWidth(v6);
  [(SBReduceMotionDeckSwitcherModifier *)self _switcherCardScale];
  SBFloatRoundForMainScreenScale();
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)_pagingOrigin
{
  if ([(SBReduceMotionDeckSwitcherModifier *)self isRTLEnabled])
  {
    [(SBDeckSwitcherModifier *)self contentOffsetForIndex:0 alignment:2];
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (double)titleOpacityForIndex:(unint64_t)index scrollProgress:(double)progress
{
  [(SBReduceMotionDeckSwitcherModifier *)self scrollProgressForIndex:?];
  v8 = v7;
  v9 = 1.0;
  if (index && v8 > progress)
  {
    [(SBReduceMotionDeckSwitcherModifier *)self scrollProgressForIndex:index - 1, 1.0];
    v9 = (progress - v10) / (v8 - v10) + 0.0;
  }

  return fmin(fmax(v9, 0.0), 1.0);
}

- (double)opacityForIndex:(unint64_t)index scrollProgress:(double)progress
{
  v5 = 1.0;
  v6 = index >= 2;
  v7 = index - 2;
  if (v6)
  {
    [(SBReduceMotionDeckSwitcherModifier *)self scrollProgressForIndex:v7, 1.0];
    v10 = v9;
    numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
    v5 = (progress - (v10 + -1.0 / numberOfItems)) / (v10 - (v10 + -1.0 / numberOfItems)) + 0.0;
  }

  return fmin(fmax(v5, 0.0), 1.0);
}

- (double)scrollProgressForIndex:(unint64_t)index
{
  numberOfItems = [(SBDeckSwitcherModifier *)self numberOfItems];
  [(SBDeckSwitcherModifier *)self desiredXOriginForQuantizedTopPage];

  [(SBReduceMotionDeckSwitcherModifier *)self scrollProgressForIndex:index displayItemsCount:numberOfItems frameOrigin:?];
  return result;
}

- (double)scrollProgressForIndex:(unint64_t)index displayItemsCount:(unint64_t)count frameOrigin:(double)origin
{
  [(SBReduceMotionDeckSwitcherModifier *)self _cardWidth];
  v9 = v8;
  [(SBDeckSwitcherModifier *)self scrollRange];
  return 1.0 - (v9 + v9 * -0.2) * (~index + count) / v10;
}

- (unint64_t)indexForScrollProgress:(double)progress displayItemsCount:(unint64_t)count frameOrigin:(double)origin
{
  v8 = [(SBReduceMotionDeckSwitcherModifier *)self appLayouts:progress];
  v9 = [v8 count];

  if (!v9)
  {
    return 0;
  }

  [(SBReduceMotionDeckSwitcherModifier *)self _cardWidth];
  v11 = v10;
  [(SBDeckSwitcherModifier *)self scrollRange];
  v13 = v12;
  v14 = v11 + v11 * -0.2;
  if (BSFloatIsZero())
  {
    v15 = 0;
  }

  else
  {
    v15 = (count - (1.0 - progress) * v13 / v14 + 1.0);
  }

  if (v9 - 1 >= v15)
  {
    return v15;
  }

  else
  {
    return v9 - 1;
  }
}

- (double)leadingOffsetForIndex:(unint64_t)index displayItemsCount:(unint64_t)count scrollProgress:(double)progress
{
  [(SBReduceMotionDeckSwitcherModifier *)self _cardWidth];
  v10 = v9;
  [(SBDeckSwitcherModifier *)self scrollRange];
  v12 = (v10 + v10 * -0.2) * (~index + count) - (1.0 - progress) * v11;
  [(SBReduceMotionDeckSwitcherModifier *)self containerViewBounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v17 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  return fmax(v12, CGRectGetMinX(v20) + v17 * -0.08);
}

- (double)_cardWidth
{
  [(SBReduceMotionDeckSwitcherModifier *)self containerViewBounds];
  Width = CGRectGetWidth(v6);
  [(SBReduceMotionDeckSwitcherModifier *)self _switcherCardScale];
  return Width * v4;
}

- (double)_switcherCardScale
{
  switcherSettings = [(SBReduceMotionDeckSwitcherModifier *)self switcherSettings];
  [switcherSettings deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

@end