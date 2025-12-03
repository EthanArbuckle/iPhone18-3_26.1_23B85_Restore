@interface SBFluidSwitcherGestureExclusionTrapezoid
+ (SBFluidSwitcherGestureExclusionTrapezoid)exclusionTrapezoidWithBaseHeight:(double)height trapezoidHeight:(double)trapezoidHeight adjacentBaseXDistanceFromEdge:(double)edge opposingBaseXDistanceFromEdge:(double)fromEdge allowHorizontalSwipesOutsideTrapezoid:(BOOL)trapezoid;
- (BOOL)shouldBeginGestureAtStartingPoint:(CGPoint)point velocity:(CGPoint)velocity bounds:(CGRect)bounds;
- (id)debugView;
@end

@implementation SBFluidSwitcherGestureExclusionTrapezoid

+ (SBFluidSwitcherGestureExclusionTrapezoid)exclusionTrapezoidWithBaseHeight:(double)height trapezoidHeight:(double)trapezoidHeight adjacentBaseXDistanceFromEdge:(double)edge opposingBaseXDistanceFromEdge:(double)fromEdge allowHorizontalSwipesOutsideTrapezoid:(BOOL)trapezoid
{
  trapezoidCopy = trapezoid;
  v12 = objc_alloc_init(SBFluidSwitcherGestureExclusionTrapezoid);
  [(SBFluidSwitcherGestureExclusionTrapezoid *)v12 setBaseHeight:height];
  [(SBFluidSwitcherGestureExclusionTrapezoid *)v12 setTrapezoidHeight:trapezoidHeight];
  [(SBFluidSwitcherGestureExclusionTrapezoid *)v12 setAdjacentBaseXDistanceFromEdge:edge];
  [(SBFluidSwitcherGestureExclusionTrapezoid *)v12 setOpposingBaseXDistanceFromEdge:fromEdge];
  [(SBFluidSwitcherGestureExclusionTrapezoid *)v12 setAllowHorizontalSwipesOutsideTrapezoid:trapezoidCopy];

  return v12;
}

- (id)debugView
{
  v3 = objc_alloc_init(_SBFluidSwitcherGestureExclusionTrapezoidDebugView);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(_SBFluidSwitcherGestureExclusionTrapezoidDebugView *)v3 setBackgroundColor:clearColor];

  [(_SBFluidSwitcherGestureExclusionTrapezoidDebugView *)v3 bs_setHitTestingDisabled:1];
  [(_SBFluidSwitcherGestureExclusionTrapezoidDebugView *)v3 setExclusionTrapezoid:self];

  return v3;
}

- (BOOL)shouldBeginGestureAtStartingPoint:(CGPoint)point velocity:(CGPoint)velocity bounds:(CGRect)bounds
{
  if (fabs(velocity.x) > fabs(velocity.y) && self->_allowHorizontalSwipesOutsideTrapezoid)
  {
    return 1;
  }

  if (point.x > bounds.size.width * 0.5)
  {
    point.x = bounds.size.width - point.x;
  }

  adjacentBaseXDistanceFromEdge = self->_adjacentBaseXDistanceFromEdge;
  if (point.x >= adjacentBaseXDistanceFromEdge && ((opposingBaseXDistanceFromEdge = self->_opposingBaseXDistanceFromEdge, point.x >= opposingBaseXDistanceFromEdge) || point.y >= bounds.size.height - (self->_baseHeight + self->_trapezoidHeight / (opposingBaseXDistanceFromEdge - adjacentBaseXDistanceFromEdge) * (point.x - adjacentBaseXDistanceFromEdge))))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

@end