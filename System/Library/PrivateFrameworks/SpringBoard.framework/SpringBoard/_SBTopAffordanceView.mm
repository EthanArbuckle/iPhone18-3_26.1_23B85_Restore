@interface _SBTopAffordanceView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _SBTopAffordanceView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _SBTopAffordanceView;
  if ([(_SBTopAffordanceView *)&v20 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(_SBTopAffordanceView *)self subviews];
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
          [(_SBTopAffordanceView *)self convertPoint:v14 toView:x, y];
          if ([v14 pointInside:v7 withEvent:?])
          {
            v8 = 1;
            goto LABEL_13;
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
LABEL_13:
  }

  return v8;
}

@end