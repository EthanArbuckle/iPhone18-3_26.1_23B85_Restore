@interface _SBFluidSwitcherGestureExclusionTrapezoidDebugView
- (void)drawRect:(CGRect)rect;
@end

@implementation _SBFluidSwitcherGestureExclusionTrapezoidDebugView

- (void)drawRect:(CGRect)rect
{
  v21.receiver = self;
  v21.super_class = _SBFluidSwitcherGestureExclusionTrapezoidDebugView;
  [(_SBFluidSwitcherGestureExclusionTrapezoidDebugView *)&v21 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (self->_exclusionTrapezoid)
  {
    [(_SBFluidSwitcherGestureExclusionTrapezoidDebugView *)self bounds];
    v5 = v4;
    v7 = v6;
    [(SBFluidSwitcherGestureExclusionTrapezoid *)self->_exclusionTrapezoid baseHeight];
    v9 = v8;
    [(SBFluidSwitcherGestureExclusionTrapezoid *)self->_exclusionTrapezoid trapezoidHeight];
    v11 = v10;
    [(SBFluidSwitcherGestureExclusionTrapezoid *)self->_exclusionTrapezoid adjacentBaseXDistanceFromEdge];
    v13 = v12;
    [(SBFluidSwitcherGestureExclusionTrapezoid *)self->_exclusionTrapezoid opposingBaseXDistanceFromEdge];
    v15 = v14;
    bezierPath = [MEMORY[0x277D75208] bezierPath];
    v17 = v7 - v9;
    [bezierPath moveToPoint:{v13, v17}];
    v18 = v17 - v11;
    [bezierPath addLineToPoint:{v15, v18}];
    [bezierPath addLineToPoint:{v5 - v15, v18}];
    [bezierPath addLineToPoint:{v5 - v13, v17}];
    [bezierPath closePath];
    v19 = [MEMORY[0x277D75208] bezierPathWithRect:{v13, v17, v5 + v13 * -2.0, v9}];
    [bezierPath appendPath:v19];

    v20 = [MEMORY[0x277D75348] colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.3];
    [v20 setFill];

    [bezierPath fill];
  }
}

@end