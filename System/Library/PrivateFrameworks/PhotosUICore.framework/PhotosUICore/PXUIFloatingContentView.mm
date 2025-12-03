@interface PXUIFloatingContentView
- (CGRect)contentsRect;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setContentsRect:(CGRect)rect;
@end

@implementation PXUIFloatingContentView

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, rect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    contentView = [(_UIFloatingContentView *)self contentView];
    subviews = [contentView subviews];

    v11 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(subviews);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 conformsToProtocol:&unk_1F1A6E298])
          {
            [v15 setContentsRect:{x, y, width, height}];
          }
        }

        v12 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  nextFocusedView = [context nextFocusedView];
  LODWORD(context) = nextFocusedView == self;

  [(_UIFloatingContentView *)self setControlState:8 * context withAnimationCoordinator:coordinatorCopy];
}

@end