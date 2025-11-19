@interface SBFluidSwitcherGestureExclusionCompositeShape
+ (id)exclusionCompositeShapeWithRects:(id)a3 allowHorizontalSwipes:(BOOL)a4;
- (BOOL)shouldBeginGestureAtStartingPoint:(CGPoint)a3 velocity:(CGPoint)a4 bounds:(CGRect)a5;
- (id)debugView;
@end

@implementation SBFluidSwitcherGestureExclusionCompositeShape

+ (id)exclusionCompositeShapeWithRects:(id)a3 allowHorizontalSwipes:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(SBFluidSwitcherGestureExclusionCompositeShape);
  [(SBFluidSwitcherGestureExclusionCompositeShape *)v6 setRects:v5];

  [(SBFluidSwitcherGestureExclusionCompositeShape *)v6 setAllowHorizontalSwipesInsideShapes:v4];

  return v6;
}

- (id)debugView
{
  v3 = objc_alloc_init(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView);
  v4 = [MEMORY[0x277D75348] clearColor];
  [(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView *)v3 setBackgroundColor:v4];

  [(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView *)v3 bs_setHitTestingDisabled:1];
  [(_SBFluidSwitcherGestureExclusionCompositeShapeDebugView *)v3 setCompositeShape:self];

  return v3;
}

- (BOOL)shouldBeginGestureAtStartingPoint:(CGPoint)a3 velocity:(CGPoint)a4 bounds:(CGRect)a5
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x277D85DE8];
  if (fabs(a4.x) > fabs(a4.y) && self->_allowHorizontalSwipesInsideShapes)
  {
    return 1;
  }

  if (BSFloatEqualToFloat())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = self->_rects;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v29 + 1) + 8 * i) CGRectValue];
          if (v13 < self->_topEdgeY)
          {
            self->_topEdgeY = v13;
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }
  }

  if (y < self->_topEdgeY)
  {
    return 1;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_rects;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v25 + 1) + 8 * j) CGRectValue];
        v20 = v36.origin.x;
        v21 = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        if (x > CGRectGetMinX(v36))
        {
          v37.origin.x = v20;
          v37.origin.y = v21;
          v37.size.width = width;
          v37.size.height = height;
          if (x < CGRectGetMaxX(v37))
          {
            v14 = 0;
            goto LABEL_27;
          }
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_27:

  return v14;
}

@end