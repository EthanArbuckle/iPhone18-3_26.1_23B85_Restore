@interface DevicePINKeypadContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (DevicePINKeypadContainerView)initWithKeypad:(id)a3;
- (void)layoutSubviews;
@end

@implementation DevicePINKeypadContainerView

- (DevicePINKeypadContainerView)initWithKeypad:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = DevicePINKeypadContainerView;
  v6 = [(DevicePINKeypadContainerView *)&v17 init];
  if (v6)
  {
    if (PSUsePadStylePIN())
    {
      v7 = objc_alloc(MEMORY[0x1E69DD298]);
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:1000];
      v9 = [v7 initWithEffect:v8];
      backdropView = v6->_backdropView;
      v6->_backdropView = v9;

      v11 = [MEMORY[0x1E69DC888] systemFillColor];
      v12 = [(UIVisualEffectView *)v6->_backdropView contentView];
      [v12 setBackgroundColor:v11];

      [(DevicePINKeypadContainerView *)v6 addSubview:v6->_backdropView];
      v6->_iPadKeypadHeight = 226.0;
    }

    objc_storeStrong(&v6->_keypad, a3);
    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [v13 sf_isiPad];

    if (v14)
    {
      v15 = [(UIVisualEffectView *)v6->_backdropView contentView];
      [v15 addSubview:v6->_keypad];
    }

    else
    {
      [(DevicePINKeypadContainerView *)v6 addSubview:v6->_keypad];
    }
  }

  return v6;
}

- (void)layoutSubviews
{
  v41 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = DevicePINKeypadContainerView;
  [(DevicePINKeypadContainerView *)&v38 layoutSubviews];
  [(DevicePINKeypadContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (PSUsePadStylePIN())
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [(DevicePINKeypad *)self->_keypad subviews];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = [v17 subviews];
          v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v31;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [*(*(&v30 + 1) + 8 * j) frame];
                MaxY = CGRectGetMaxY(v42);
                if (v15 < MaxY)
                {
                  v15 = MaxY;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v20);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v13);

      if (v15 >= 216.0 && v15 <= 228.0)
      {
        self->_iPadKeypadHeight = v15;
      }
    }

    else
    {
    }

    v26 = PSRoundToPixel((self->_iPadKeypadHeight - v10) * 0.5);
    v24 = v10 + PSRoundToPixel(v26 + v26);
    [(DevicePINKeypadContainerView *)self frame];
    v25 = PSRoundToPixel(v27 - v24);
    if (v26 >= 0.0)
    {
      v28 = v10;
    }

    else
    {
      v28 = v10 - (v26 + 1.0);
    }

    if (v26 >= 0.0)
    {
      v29 = v6;
    }

    else
    {
      v29 = v6 + v26 + 1.0;
    }

    [(UIVisualEffectView *)self->_backdropView setFrame:v4, v29, v8, v28];
  }

  else
  {
    v24 = v10;
    v25 = v6;
  }

  [(UIKeyboard *)self->_keypad setFrame:v4, v25, v8, v24];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (PSUsePadStylePIN())
  {
    v6 = 220.0;
    v7 = 320.0;
  }

  else
  {
    [(DevicePINKeypad *)self->_keypad sizeThatFits:width, height];
  }

  result.height = v6;
  result.width = v7;
  return result;
}

@end