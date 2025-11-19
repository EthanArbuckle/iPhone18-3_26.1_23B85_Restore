@interface SBFTouchPassThroughScrollView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBFTouchPassThroughScrollView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(SBFTouchPassThroughScrollView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [(SBFTouchPassThroughScrollView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:v7 withEvent:?])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBFTouchPassThroughScrollView;
  v5 = [(SBFTouchPassThroughScrollView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end