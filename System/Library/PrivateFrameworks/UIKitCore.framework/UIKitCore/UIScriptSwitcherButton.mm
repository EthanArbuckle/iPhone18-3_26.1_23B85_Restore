@interface UIScriptSwitcherButton
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)contentInsets;
- (UIScriptSwitcherButton)initWithFrame:(CGRect)a3;
- (void)_setRenderConfig:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateContentInsets;
- (void)updateTintColor;
@end

@implementation UIScriptSwitcherButton

- (UIScriptSwitcherButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIScriptSwitcherButton;
  v3 = [(UIButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIImageView);
    [(UIImageView *)v4 setContentMode:4];
    [(UIView *)v3 addSubview:v4];
    [(UIScriptSwitcherButton *)v3 setContentImageView:v4];
    [(UIScriptSwitcherButton *)v3 updateContentInsets];
    [(UIScriptSwitcherButton *)v3 updateTintColor];
  }

  return v3;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = UIScriptSwitcherButton;
  [(UIButton *)&v29 layoutSubviews];
  v3 = [(UIScriptSwitcherButton *)self image];

  if (v3)
  {
    [(UIScriptSwitcherButton *)self contentInsets];
    v5 = v4;
    [(UIScriptSwitcherButton *)self contentInsets];
    v7 = v6;
    [(UIView *)self bounds];
    v9 = v8;
    [(UIScriptSwitcherButton *)self contentInsets];
    v11 = v9 - v10;
    [(UIScriptSwitcherButton *)self contentInsets];
    v13 = v11 - v12;
    [(UIView *)self bounds];
    v15 = v14;
    [(UIScriptSwitcherButton *)self contentInsets];
    v17 = v15 - v16;
    [(UIScriptSwitcherButton *)self contentInsets];
    v19 = v17 - v18;
    v20 = [(UIScriptSwitcherButton *)self contentImageView];
    [v20 setFrame:{v5, v7, v13, v19}];

    v21 = [(UIScriptSwitcherButton *)self image];
    v22 = [v21 imageWithRenderingMode:2];
    v23 = [(UIScriptSwitcherButton *)self contentImageView];
    [v23 setImage:v22];
  }

  else
  {
    v24 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
    v28 = [(UIScriptSwitcherButton *)self contentImageView];
    [v28 setFrame:{v24, v25, v26, v27}];

    v21 = [(UIScriptSwitcherButton *)self contentImageView];
    [v21 setImage:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(UIScriptSwitcherButton *)self image];

  if (v3)
  {
    v4 = [(UIScriptSwitcherButton *)self image];
    [v4 size];
    v6 = v5;
    v8 = v7;

    [(UIScriptSwitcherButton *)self contentInsets];
    v10 = v6 + v9;
    [(UIScriptSwitcherButton *)self contentInsets];
    v12 = v10 + v11;
    [(UIScriptSwitcherButton *)self contentInsets];
    v14 = v8 + v13;
    [(UIScriptSwitcherButton *)self contentInsets];
    v16 = v14 + v15;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UIScriptSwitcherButton;
    [(UIButton *)&v19 intrinsicContentSize];
    v12 = v17;
  }

  v18 = v12;
  result.height = v16;
  result.width = v18;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIScriptSwitcherButton;
  [(UIButton *)&v4 setHighlighted:a3];
  [(UIScriptSwitcherButton *)self updateTintColor];
}

- (void)updateContentInsets
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || (v3 = +[UIKeyboardImpl isFloating], v4 = 0.0, v3))
  {
    v4 = 7.0;
  }

  [(UIScriptSwitcherButton *)self setContentInsets:v4, 15.0, 0.0, 15.0];
}

- (void)updateTintColor
{
  if ([(UIControl *)self isHighlighted])
  {
    v5 = +[UIColor grayColor];
    [(UIButton *)self setTintColor:v5];
  }

  else
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v3 = [v5 _inheritedRenderConfig];
    if ([v3 lightKeyboard])
    {
      +[UIColor systemDarkGrayTintColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v4 = ;
    [(UIButton *)self setTintColor:v4];
  }
}

- (void)_setRenderConfig:(id)a3
{
  [(UIScriptSwitcherButton *)self updateContentInsets];

  [(UIScriptSwitcherButton *)self updateTintColor];
}

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end