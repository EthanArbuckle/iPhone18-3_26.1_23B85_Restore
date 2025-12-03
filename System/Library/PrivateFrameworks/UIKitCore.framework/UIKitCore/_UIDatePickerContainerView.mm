@interface _UIDatePickerContainerView
- (_UIDatePickerContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIDatePickerContainerView

- (_UIDatePickerContainerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerContainerView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(_UIDatePickerContainerView *)v3 setPassthroughInteraction:v4];

    [(UIView *)v3 setUserInteractionEnabled:1];
    v5 = [UIView alloc];
    [(UIView *)v3 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    [(_UIDatePickerContainerView *)v3 setContentView:v6];

    contentView = [(_UIDatePickerContainerView *)v3 contentView];
    [contentView setAutoresizingMask:18];

    contentView2 = [(_UIDatePickerContainerView *)v3 contentView];
    [(UIView *)v3 addSubview:contentView2];
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v17.origin.x = v8;
  v17.origin.y = v9;
  v17.size.width = v10;
  v17.size.height = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    presentation = [(_UIDatePickerContainerView *)self presentation];
    isBeingDismissedOrPresented = [presentation isBeingDismissedOrPresented];

    if ((isBeingDismissedOrPresented & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39___UIDatePickerContainerView_setFrame___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v14.receiver = self;
  v14.super_class = _UIDatePickerContainerView;
  [(UIView *)&v14 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v17.origin.x = v8;
  v17.origin.y = v9;
  v17.size.width = v10;
  v17.size.height = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    presentation = [(_UIDatePickerContainerView *)self presentation];
    isBeingDismissedOrPresented = [presentation isBeingDismissedOrPresented];

    if ((isBeingDismissedOrPresented & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40___UIDatePickerContainerView_setBounds___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v14.receiver = self;
  v14.super_class = _UIDatePickerContainerView;
  [(UIView *)&v14 setBounds:x, y, width, height];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerContainerView;
  [(UIView *)&v5 willMoveToWindow:window];
  passthroughInteraction = [(_UIDatePickerContainerView *)self passthroughInteraction];
  [(UIView *)self removeInteraction:passthroughInteraction];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerContainerView;
  [(UIView *)&v5 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    passthroughInteraction = [(_UIDatePickerContainerView *)self passthroughInteraction];
    [(UIView *)self addInteraction:passthroughInteraction];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = _UIDatePickerContainerView;
  v8 = [(UIView *)&v24 hitTest:eventCopy withEvent:x, y];
  if (v8 != self)
  {
    contentView = [(_UIDatePickerContainerView *)self contentView];

    if (v8 != contentView)
    {
      goto LABEL_15;
    }
  }

  presentation = [(_UIDatePickerContainerView *)self presentation];
  sourceView = [presentation sourceView];

  [sourceView convertPoint:self fromView:{x, y}];
  v13 = v12;
  v15 = v14;
  presentation2 = [(_UIDatePickerContainerView *)self presentation];
  if ([presentation2 overlayAnchor] != 2)
  {

    goto LABEL_7;
  }

  presentation3 = [(_UIDatePickerContainerView *)self presentation];
  [presentation3 sourceRect];
  v26.x = v13;
  v26.y = v15;
  v18 = CGRectContainsPoint(v27, v26);

  if (v18)
  {
LABEL_7:
    v19 = [sourceView hitTest:eventCopy withEvent:{v13, v15}];
    goto LABEL_8;
  }

  v19 = 0;
LABEL_8:
  v20 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:eventCopy];
  if (v19 && v19 != sourceView)
  {
    if (v20)
    {
      presentation4 = [(_UIDatePickerContainerView *)self presentation];
      -[_UIDatePickerContainerView setLastHitTestWasPassedThrough:](self, "setLastHitTestWasPassedThrough:", [presentation4 ignoresPassthroughOnSourceView] ^ 1);
    }

    else
    {
      [(_UIDatePickerContainerView *)self setLastHitTestWasPassedThrough:0];
    }

    v22 = v19;
    goto LABEL_18;
  }

  if (!v20)
  {

LABEL_15:
    v22 = v8;
    goto LABEL_19;
  }

  [(_UIDatePickerContainerView *)self setLastHitTestWasPassedThrough:1];
  v22 = 0;
LABEL_18:

LABEL_19:

  return v22;
}

@end