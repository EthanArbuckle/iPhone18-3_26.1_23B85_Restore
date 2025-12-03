@interface _PGButton
+ (id)buttonWithType:(int64_t)type wantsGlassBackground:(BOOL)background;
- (CGRect)hitRect;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (PGButtonView)buttonView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)tintColorDidChange;
@end

@implementation _PGButton

+ (id)buttonWithType:(int64_t)type wantsGlassBackground:(BOOL)background
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS____PGButton;
  v5 = objc_msgSendSuper2(&v7, sel_buttonWithType_, type);
  v5[744] = background;

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v9.receiver = self;
  v9.super_class = _PGButton;
  selfCopy = [(_PGButton *)&v9 hitTest:event withEvent:?];
  if (!selfCopy)
  {
    [(_PGButton *)self hitRect];
    v11.x = x;
    v11.y = y;
    if (CGRectContainsPoint(v12, v11))
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (CGRect)hitRect
{
  [(_PGButton *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(_PGButton *)self isEnabled])
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v11 = 58.0 - CGRectGetWidth(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v12 = 58.0 - CGRectGetHeight(v20);
    if (v11 <= 0.0)
    {
      v13 = -0.0;
    }

    else
    {
      v13 = v11 * -0.5;
    }

    if (v12 <= 0.0)
    {
      v14 = -0.0;
    }

    else
    {
      v14 = v12 * -0.5;
    }

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v13, v14);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _PGButton;
  [(_PGButton *)&v3 tintColorDidChange];
  if (!self->_wantsGlassBackground)
  {
    [(UIButton *)self PG_updateVibrancyEffectForTintColor];
  }
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = _PGButton;
  [(_PGButton *)&v5 setTitle:title forState:state];
  if (!self->_wantsGlassBackground)
  {
    [(UIButton *)self PG_updateVibrancyEffectForTintColor];
  }
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = _PGButton;
  [(_PGButton *)&v5 setImage:image forState:state];
  if (!self->_wantsGlassBackground)
  {
    [(UIButton *)self PG_updateVibrancyEffectForTintColor];
  }
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26.receiver = self;
  v26.super_class = _PGButton;
  [(_PGButton *)&v26 imageRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  buttonView = [(_PGButton *)self buttonView];
  delegate = [buttonView delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate buttonView:buttonView imageRectForContentRect:x proposedRect:{y, width, height, v9, v11, v13, v15}];
    v9 = v18;
    v11 = v19;
    v13 = v20;
    v15 = v21;
  }

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26.receiver = self;
  v26.super_class = _PGButton;
  [(_PGButton *)&v26 titleRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  buttonView = [(_PGButton *)self buttonView];
  delegate = [buttonView delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate buttonView:buttonView titleRectForContentRect:x proposedRect:{y, width, height, v9, v11, v13, v15}];
    v9 = v18;
    v11 = v19;
    v13 = v20;
    v15 = v21;
  }

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (PGButtonView)buttonView
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonView);

  return WeakRetained;
}

@end