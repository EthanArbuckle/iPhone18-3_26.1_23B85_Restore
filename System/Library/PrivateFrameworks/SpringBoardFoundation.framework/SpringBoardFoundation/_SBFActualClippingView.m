@interface _SBFActualClippingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SBFActualClippingView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _SBFActualClippingView;
  if ([(_SBFActualClippingView *)&v20 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else if (self->_hitTestsSubviewsOutsideBounds)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(_SBFActualClippingView *)self subviews];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [(_SBFActualClippingView *)self convertPoint:v14 toView:x, y];
          if ([v14 pointInside:v7 withEvent:?])
          {
            v8 = 1;
            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_15:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end