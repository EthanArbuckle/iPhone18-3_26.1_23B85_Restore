@interface _SBFluidSwitcherGestureExclusionCompositeShapeDebugView
- (void)drawRect:(CGRect)rect;
@end

@implementation _SBFluidSwitcherGestureExclusionCompositeShapeDebugView

- (void)drawRect:(CGRect)rect
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = _SBFluidSwitcherGestureExclusionCompositeShapeDebugView;
  [(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView *)&v15 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (self->_compositeShape)
  {
    v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.3];
    [v4 setFill];

    CurrentContext = UIGraphicsGetCurrentContext();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    rects = [(SBFluidSwitcherGestureExclusionCompositeShape *)self->_compositeShape rects];
    v7 = [rects countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(rects);
          }

          [*(*(&v11 + 1) + 8 * v10) CGRectValue];
          CGContextFillRect(CurrentContext, v18);
          ++v10;
        }

        while (v8 != v10);
        v8 = [rects countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

@end