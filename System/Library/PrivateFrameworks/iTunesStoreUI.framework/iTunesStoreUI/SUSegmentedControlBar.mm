@interface SUSegmentedControlBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUSegmentedControlBar)initWithSegmentedControl:(id)control;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SUSegmentedControlBar

- (SUSegmentedControlBar)initWithSegmentedControl:(id)control
{
  v11.receiver = self;
  v11.super_class = SUSegmentedControlBar;
  v4 = [(SUSegmentedControlBar *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    if ((_UIApplicationUsesLegacyUI() & 1) == 0)
    {
      v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.70588237 alpha:1.0];
      if ([control tintStyle] == 1)
      {
        v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.254901975 alpha:1.0];
        v6 = 11050;
      }

      else
      {
        v6 = 2010;
      }

      v7 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v6];
      v4->_backdropView = v7;
      [(SUSegmentedControlBar *)v4 addSubview:v7];
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v4->_separatorView = v8;
      [(UIView *)v8 setBackgroundColor:v5];
      [(SUSegmentedControlBar *)v4 addSubview:v4->_separatorView];
    }

    controlCopy = control;
    v4->_control = controlCopy;
    [(SUSegmentedControlBar *)v4 addSubview:controlCopy];
    -[SUSegmentedControlBar setBackgroundColor:](v4, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSegmentedControlBar;
  [(SUSegmentedControlBar *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUSegmentedControlBar;
  [(SUSegmentedControlBar *)&v22 layoutSubviews];
  [(SUSegmentedControlBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  control = self->_control;
  if (control)
  {
    [(UIControl *)control frame];
    v12 = _UIApplicationUsesLegacyUI();
    v13 = 10.0;
    if (v12)
    {
      v13 = 0.0;
    }

    v21 = v13;
    if (_UIApplicationUsesLegacyUI())
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 15.0;
    }

    if (_UIApplicationUsesLegacyUI())
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 15.0;
    }

    v16 = v8 + v15 * -2.0;
    v17 = _UIApplicationUsesLegacyUI();
    v18 = 10.0;
    if (v17)
    {
      v18 = 0.0;
    }

    [(UIControl *)self->_control setFrame:v14, v21, v16, v10 + v18 * -2.0];
  }

  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(_UIBackdropView *)backdropView setFrame:v4, v6, v8, v10];
  }

  if (self->_separatorView)
  {
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    [(UIView *)self->_separatorView setFrame:v4, v6 + v10 - 1.0 / v20, v8];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = _UIApplicationUsesLegacyUI();
  v7 = -10.0;
  if (v6)
  {
    v7 = -0.0;
  }

  v8 = height + v7 * 2.0;
  v9 = _UIApplicationUsesLegacyUI();
  v10 = -15.0;
  if (v9)
  {
    v10 = -0.0;
  }

  [(UIControl *)self->_control sizeThatFits:width + v10 * 2.0, v8];
  v12 = v11;
  v14 = v13;
  v15 = _UIApplicationUsesLegacyUI();
  v16 = 10.0;
  if (v15)
  {
    v16 = 0.0;
  }

  v17 = v14 + v16 * 2.0;
  v18 = _UIApplicationUsesLegacyUI();
  v19 = 15.0;
  if (v18)
  {
    v19 = 0.0;
  }

  v20 = v12 + v19 * 2.0;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

@end