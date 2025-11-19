@interface SUTouchCaptureView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dealloc;
@end

@implementation SUTouchCaptureView

- (void)dealloc
{
  self->_passThroughViews = 0;
  v3.receiver = self;
  v3.super_class = SUTouchCaptureView;
  [(SUTouchCaptureView *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SUTouchCaptureView;
  v8 = [SUTouchCaptureView hitTest:sel_hitTest_withEvent_ withEvent:?];
  if (v8 == self)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    passThroughViews = self->_passThroughViews;
    v12 = [(NSArray *)passThroughViews countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(passThroughViews);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v16 = [v9 superview];
          if (v16)
          {
            v17 = v16;
            [v16 convertPoint:self fromView:{x, y}];
            if (v9 == [v17 hitTest:a4 withEvent:?] && v9)
            {
              return v9;
            }
          }

          else
          {
            [v9 convertPoint:self fromView:{x, y}];
            v9 = [v9 hitTest:a4 withEvent:?];
            if (v9)
            {
              return v9;
            }
          }
        }

        v13 = [(NSArray *)passThroughViews countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }
  }

  return v8;
}

@end