@interface _UIDatePickerContainerView
- (_UIDatePickerContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIDatePickerContainerView

- (_UIDatePickerContainerView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UIDatePickerContainerView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(_UIDatePickerContainerView *)v3 setPassthroughInteraction:v4];

    [(UIView *)v3 setUserInteractionEnabled:1];
    v5 = [UIView alloc];
    [(UIView *)v3 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    [(_UIDatePickerContainerView *)v3 setContentView:v6];

    v7 = [(_UIDatePickerContainerView *)v3 contentView];
    [v7 setAutoresizingMask:18];

    v8 = [(_UIDatePickerContainerView *)v3 contentView];
    [(UIView *)v3 addSubview:v8];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v12 = [(_UIDatePickerContainerView *)self presentation];
    v13 = [v12 isBeingDismissedOrPresented];

    if ((v13 & 1) == 0)
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v12 = [(_UIDatePickerContainerView *)self presentation];
    v13 = [v12 isBeingDismissedOrPresented];

    if ((v13 & 1) == 0)
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

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerContainerView;
  [(UIView *)&v5 willMoveToWindow:a3];
  v4 = [(_UIDatePickerContainerView *)self passthroughInteraction];
  [(UIView *)self removeInteraction:v4];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIDatePickerContainerView;
  [(UIView *)&v5 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    v4 = [(_UIDatePickerContainerView *)self passthroughInteraction];
    [(UIView *)self addInteraction:v4];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = _UIDatePickerContainerView;
  v8 = [(UIView *)&v24 hitTest:v7 withEvent:x, y];
  if (v8 != self)
  {
    v9 = [(_UIDatePickerContainerView *)self contentView];

    if (v8 != v9)
    {
      goto LABEL_15;
    }
  }

  v10 = [(_UIDatePickerContainerView *)self presentation];
  v11 = [v10 sourceView];

  [v11 convertPoint:self fromView:{x, y}];
  v13 = v12;
  v15 = v14;
  v16 = [(_UIDatePickerContainerView *)self presentation];
  if ([v16 overlayAnchor] != 2)
  {

    goto LABEL_7;
  }

  v17 = [(_UIDatePickerContainerView *)self presentation];
  [v17 sourceRect];
  v26.x = v13;
  v26.y = v15;
  v18 = CGRectContainsPoint(v27, v26);

  if (v18)
  {
LABEL_7:
    v19 = [v11 hitTest:v7 withEvent:{v13, v15}];
    goto LABEL_8;
  }

  v19 = 0;
LABEL_8:
  v20 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:v7];
  if (v19 && v19 != v11)
  {
    if (v20)
    {
      v21 = [(_UIDatePickerContainerView *)self presentation];
      -[_UIDatePickerContainerView setLastHitTestWasPassedThrough:](self, "setLastHitTestWasPassedThrough:", [v21 ignoresPassthroughOnSourceView] ^ 1);
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