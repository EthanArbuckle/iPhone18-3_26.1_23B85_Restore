@interface SiriUIPassThroughHitTestView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SiriUIPassThroughHitTestView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(SiriUIPassThroughHitTestView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        v15 = v14;
        v17 = v16;
        [v13 bounds];
        v28.x = v15;
        v28.y = v17;
        if (CGRectContainsPoint(v29, v28))
        {
          v18 = [v13 hitTest:v7 withEvent:{v15, v17}];

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v20.receiver = self;
  v20.super_class = SiriUIPassThroughHitTestView;
  v18 = [(SiriUIPassThroughHitTestView *)&v20 hitTest:v7 withEvent:x, y];
LABEL_11:

  return v18;
}

@end