@interface TPBottomDoubleButtonBar
- (double)_buttonWidth;
- (void)_layoutButtons;
- (void)layoutSubviews;
- (void)setButton2:(id)a3 andStyle:(BOOL)a4;
- (void)setButton:(id)a3 andStyle:(BOOL)a4;
@end

@implementation TPBottomDoubleButtonBar

- (double)_buttonWidth
{
  style = self->super.super._style;
  if (style < 2)
  {
    [(TPBottomDoubleButtonBar *)self bounds:v2];
    v7 = v6 * 0.5;
    return roundf(v7);
  }

  else if (style == 2)
  {
    return 128.0;
  }

  else
  {
    result = 0.0;
    if (style == 3)
    {
      return 201.0;
    }
  }

  return result;
}

- (void)setButton:(id)a3 andStyle:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  button = self->super._button;
  v10 = v7;
  if (button != v7)
  {
    [(TPButton *)button removeFromSuperview];
    objc_storeStrong(&self->super._button, a3);
    button = self->super._button;
  }

  if (button)
  {
    v9 = !v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(TPBottomDoubleButtonBar *)self addSubview:?];
    [(TPBottomDoubleButtonBar *)self layoutSubviews];
  }
}

- (void)setButton2:(id)a3 andStyle:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  button2 = self->_button2;
  v10 = v7;
  if (button2 != v7)
  {
    [(TPButton *)button2 removeFromSuperview];
    objc_storeStrong(&self->_button2, a3);
    button2 = self->_button2;
  }

  if (button2)
  {
    v9 = !v4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(TPBottomDoubleButtonBar *)self addSubview:?];
    [(TPBottomDoubleButtonBar *)self layoutSubviews];
  }
}

- (void)_layoutButtons
{
  if (self->super._button)
  {
    [objc_opt_class() defaultHeightForColor:{-[TPButton buttonColor](self->super._button, "buttonColor")}];
    v4 = v3;
    [(TPBottomDoubleButtonBar *)self bounds];
    [(TPButton *)self->super._button setFrame:0.0, 0.0, v5 * 0.5, v4];
  }

  if (self->_button2)
  {
    [objc_opt_class() defaultHeightForColor:{-[TPButton buttonColor](self->_button2, "buttonColor")}];
    v7 = v6;
    [(TPBottomDoubleButtonBar *)self bounds];
    v9 = v8 * 0.5;
    [(TPBottomDoubleButtonBar *)self bounds];
    button2 = self->_button2;
    v12 = v11 * 0.5;

    [(TPButton *)button2 setFrame:v9, 0.0, v12, v7];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TPBottomDoubleButtonBar;
  [(TPBottomDoubleButtonBar *)&v3 layoutSubviews];
  [(TPBottomDoubleButtonBar *)self _layoutButtons];
}

@end