@interface OFUIDismissalView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation OFUIDismissalView

- (void)dealloc
{
  objc_storeWeak(&self->_dismissalViewDelegate, 0);
  v3.receiver = self;
  v3.super_class = OFUIDismissalView;
  [(OFUIDismissalView *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_inPassthroughHitTest)
  {
    return 0;
  }

  v4 = self;
  if (self->_dismissalViewDelegate)
  {
    y = a3.y;
    x = a3.x;
    if (objc_opt_respondsToSelector())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(OFUIDismissalViewDelegate *)v4->_dismissalViewDelegate passthroughViewsForDismissalView:v4, 0];
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
            [v13 bounds];
            [v13 convertRect:v4 toView:?];
            v22.x = x;
            v22.y = y;
            if (CGRectContainsPoint(v23, v22))
            {
              v4->_inPassthroughHitTest = 1;
              [(OFUIDismissalView *)v4 convertPoint:v13 toView:x, y];
              v14 = [v13 hitTest:a4 withEvent:?];
              v4->_inPassthroughHitTest = 0;
              if (v14)
              {
                return v14;
              }
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
    }
  }

  return v4;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_dismissalViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dismissalViewDelegate = self->_dismissalViewDelegate;

    [(OFUIDismissalViewDelegate *)dismissalViewDelegate dismissalViewWasTapped:self];
  }
}

@end