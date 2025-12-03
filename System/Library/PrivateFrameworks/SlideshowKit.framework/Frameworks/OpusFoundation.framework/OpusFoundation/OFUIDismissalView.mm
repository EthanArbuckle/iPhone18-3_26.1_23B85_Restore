@interface OFUIDismissalView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dealloc;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation OFUIDismissalView

- (void)dealloc
{
  objc_storeWeak(&self->_dismissalViewDelegate, 0);
  v3.receiver = self;
  v3.super_class = OFUIDismissalView;
  [(OFUIDismissalView *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_inPassthroughHitTest)
  {
    return 0;
  }

  selfCopy = self;
  if (self->_dismissalViewDelegate)
  {
    y = test.y;
    x = test.x;
    if (objc_opt_respondsToSelector())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [(OFUIDismissalViewDelegate *)selfCopy->_dismissalViewDelegate passthroughViewsForDismissalView:selfCopy, 0];
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
            [v13 convertRect:selfCopy toView:?];
            v22.x = x;
            v22.y = y;
            if (CGRectContainsPoint(v23, v22))
            {
              selfCopy->_inPassthroughHitTest = 1;
              [(OFUIDismissalView *)selfCopy convertPoint:v13 toView:x, y];
              v14 = [v13 hitTest:event withEvent:?];
              selfCopy->_inPassthroughHitTest = 0;
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

  return selfCopy;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_dismissalViewDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dismissalViewDelegate = self->_dismissalViewDelegate;

    [(OFUIDismissalViewDelegate *)dismissalViewDelegate dismissalViewWasTapped:self];
  }
}

@end