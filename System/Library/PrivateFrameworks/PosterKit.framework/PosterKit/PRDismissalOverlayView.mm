@interface PRDismissalOverlayView
- (CGRect)touchPassthroughRect;
- (PRDismissalOverlayView)initWithFrame:(CGRect)frame;
- (PRDismissalOverlayViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_tapGestureRecognized:(id)recognized;
- (void)layoutSubviews;
- (void)setTouchPassthroughRect:(CGRect)rect;
@end

@implementation PRDismissalOverlayView

- (PRDismissalOverlayView)initWithFrame:(CGRect)frame
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = PRDismissalOverlayView;
  v3 = [(PRDismissalOverlayView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v3->_touchPassthroughRect.origin = *MEMORY[0x1E695F050];
    v3->_touchPassthroughRect.size = v5;
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    leftTapRecognizerView = v4->_leftTapRecognizerView;
    v4->_leftTapRecognizerView = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    rightTapRecognizerView = v4->_rightTapRecognizerView;
    v4->_rightTapRecognizerView = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topTapRecognizerView = v4->_topTapRecognizerView;
    v4->_topTapRecognizerView = v10;

    v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
    bottomTapRecognizerView = v4->_bottomTapRecognizerView;
    v4->_bottomTapRecognizerView = v12;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v28[0] = v4->_leftTapRecognizerView;
    v28[1] = v4->_rightTapRecognizerView;
    v28[2] = v4->_topTapRecognizerView;
    v28[3] = v4->_bottomTapRecognizerView;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{4, 0}];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          layer = [v19 layer];
          [layer setHitTestsAsOpaque:1];

          v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGestureRecognized_];
          [v19 addGestureRecognizer:v21];
          [(PRDismissalOverlayView *)v4 addSubview:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v16);
    }
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(self->_touchPassthroughRect, v12))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PRDismissalOverlayView;
    v8 = [(PRDismissalOverlayView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

- (void)setTouchPassthroughRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_touchPassthroughRect = &self->_touchPassthroughRect;
  if (!CGRectEqualToRect(rect, self->_touchPassthroughRect))
  {
    p_touchPassthroughRect->origin.x = x;
    p_touchPassthroughRect->origin.y = y;
    p_touchPassthroughRect->size.width = width;
    p_touchPassthroughRect->size.height = height;

    [(PRDismissalOverlayView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PRDismissalOverlayView;
  [(PRDismissalOverlayView *)&v20 layoutSubviews];
  p_touchPassthroughRect = &self->_touchPassthroughRect;
  if (!CGRectEqualToRect(self->_touchPassthroughRect, *MEMORY[0x1E695F050]))
  {
    [(PRDismissalOverlayView *)self bounds];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    topTapRecognizerView = self->_topTapRecognizerView;
    v9 = CGRectGetWidth(v21);
    v22.origin.x = p_touchPassthroughRect->origin.x;
    v22.origin.y = self->_touchPassthroughRect.origin.y;
    v22.size.width = self->_touchPassthroughRect.size.width;
    v22.size.height = self->_touchPassthroughRect.size.height;
    [(UIView *)topTapRecognizerView setFrame:0.0, 0.0, v9, CGRectGetMinY(v22)];
    leftTapRecognizerView = self->_leftTapRecognizerView;
    v23.origin.x = p_touchPassthroughRect->origin.x;
    v23.origin.y = self->_touchPassthroughRect.origin.y;
    v23.size.width = self->_touchPassthroughRect.size.width;
    v23.size.height = self->_touchPassthroughRect.size.height;
    MinY = CGRectGetMinY(v23);
    v24.origin.x = p_touchPassthroughRect->origin.x;
    v24.origin.y = self->_touchPassthroughRect.origin.y;
    v24.size.width = self->_touchPassthroughRect.size.width;
    v24.size.height = self->_touchPassthroughRect.size.height;
    MinX = CGRectGetMinX(v24);
    v25.origin.x = p_touchPassthroughRect->origin.x;
    v25.origin.y = self->_touchPassthroughRect.origin.y;
    v25.size.width = self->_touchPassthroughRect.size.width;
    v25.size.height = self->_touchPassthroughRect.size.height;
    [(UIView *)leftTapRecognizerView setFrame:0.0, MinY, MinX, CGRectGetHeight(v25)];
    rightTapRecognizerView = self->_rightTapRecognizerView;
    v26.origin.x = p_touchPassthroughRect->origin.x;
    v26.origin.y = self->_touchPassthroughRect.origin.y;
    v26.size.width = self->_touchPassthroughRect.size.width;
    v26.size.height = self->_touchPassthroughRect.size.height;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = p_touchPassthroughRect->origin.x;
    v27.origin.y = self->_touchPassthroughRect.origin.y;
    v27.size.width = self->_touchPassthroughRect.size.width;
    v27.size.height = self->_touchPassthroughRect.size.height;
    v15 = CGRectGetMinY(v27);
    v28.origin.x = p_touchPassthroughRect->origin.x;
    v28.origin.y = self->_touchPassthroughRect.origin.y;
    v28.size.width = self->_touchPassthroughRect.size.width;
    v28.size.height = self->_touchPassthroughRect.size.height;
    v16 = width - CGRectGetMaxX(v28);
    v29.origin.x = p_touchPassthroughRect->origin.x;
    v29.origin.y = self->_touchPassthroughRect.origin.y;
    v29.size.width = self->_touchPassthroughRect.size.width;
    v29.size.height = self->_touchPassthroughRect.size.height;
    [(UIView *)rightTapRecognizerView setFrame:MaxX, v15, v16, CGRectGetHeight(v29)];
    bottomTapRecognizerView = self->_bottomTapRecognizerView;
    MaxY = CGRectGetMaxY(*p_touchPassthroughRect);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v19 = CGRectGetWidth(v30);
    [(UIView *)bottomTapRecognizerView setFrame:0.0, MaxY, v19, height - CGRectGetMaxY(*p_touchPassthroughRect)];
  }
}

- (void)_tapGestureRecognized:(id)recognized
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissalOverlayViewDidDismiss:self];
}

- (PRDismissalOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)touchPassthroughRect
{
  x = self->_touchPassthroughRect.origin.x;
  y = self->_touchPassthroughRect.origin.y;
  width = self->_touchPassthroughRect.size.width;
  height = self->_touchPassthroughRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end