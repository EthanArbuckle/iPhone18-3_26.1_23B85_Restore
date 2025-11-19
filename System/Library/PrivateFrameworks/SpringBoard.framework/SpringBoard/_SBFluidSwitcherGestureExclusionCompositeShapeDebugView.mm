@interface _SBFluidSwitcherGestureExclusionCompositeShapeDebugView
- (void)drawRect:(CGRect)a3;
@end

@implementation _SBFluidSwitcherGestureExclusionCompositeShapeDebugView

- (void)drawRect:(CGRect)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = _SBFluidSwitcherGestureExclusionCompositeShapeDebugView;
  [(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView *)&v15 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_compositeShape)
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3];
    [v4 setFill];

    CurrentContext = UIGraphicsGetCurrentContext();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(SBFluidSwitcherGestureExclusionCompositeShape *)self->_compositeShape rects];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) CGRectValue];
          CGContextFillRect(CurrentContext, v18);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end