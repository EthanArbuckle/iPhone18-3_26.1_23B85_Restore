@interface VUIRoundButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIRoundButton)initWithFrame:(CGRect)a3;
- (VUIRoundButtonDelegate)delegate;
- (void)_setUpViews;
- (void)buttonPressed:(id)a3;
- (void)buttonReleased:(id)a3;
- (void)buttonSelected:(id)a3;
- (void)configureTextStackView;
- (void)setButtonImage:(id)a3;
- (void)setTextLabels:(id)a3;
@end

@implementation VUIRoundButton

- (VUIRoundButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = VUIRoundButton;
  v3 = [(VUIRoundButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    [(VUIRoundButton *)v3 _setUpViews];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(VUIRoundButton *)self textLabels];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v16 + 1) + 8 * v11) sizeThatFits:{width, height}];
        v6 = v6 + v13;
        if (v12 >= v5)
        {
          v5 = v12;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (v6 >= 28.0)
  {
    v14 = v6;
  }

  else
  {
    v14 = 28.0;
  }

  v15 = ceil(v5 + 28.0 + 4.0);
  result.height = v14;
  result.width = v15;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(VUIRoundButton *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setButtonImage:(id)a3
{
  v6 = a3;
  if (([(UIImage *)self->_buttonImage isEqual:?]& 1) == 0)
  {
    v5 = [(VUIRoundButton *)self button];
    [v5 setImage:v6 forState:0];

    objc_storeStrong(&self->_buttonImage, a3);
  }
}

- (void)setTextLabels:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_textLabels isEqualToArray:?])
  {
    objc_storeStrong(&self->_textLabels, a3);
    [(VUIRoundButton *)self configureTextStackView];
  }
}

- (void)_setUpViews
{
  v3 = [(VUIRoundButton *)self button];
  [(VUIRoundButton *)self addSubview:v3];

  v4 = [(VUIRoundButton *)self button];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(VUIRoundButton *)self button];
  v6 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v5 setBackgroundColor:v6];

  v7 = [(VUIRoundButton *)self button];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [v7 setTintColor:v8];

  v9 = [(VUIRoundButton *)self button];
  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = [(VUIRoundButton *)self button];
  v12 = [v11 layer];
  [v12 setCornerRadius:14.0];

  v13 = [(VUIRoundButton *)self button];
  v14 = [v13 leadingAnchor];
  v15 = [(VUIRoundButton *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(VUIRoundButton *)self button];
  v18 = [v17 heightAnchor];
  v19 = [v18 constraintEqualToConstant:28.0];
  [v19 setActive:1];

  v20 = [(VUIRoundButton *)self button];
  v21 = [v20 widthAnchor];
  v22 = [v21 constraintEqualToConstant:28.0];
  [v22 setActive:1];

  v23 = [(VUIRoundButton *)self button];
  v24 = [v23 centerYAnchor];
  v25 = [(VUIRoundButton *)self centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(VUIRoundButton *)self button];
  [v27 setImageEdgeInsets:{7.0, 7.0, 7.0, 7.0}];

  v28 = [(VUIRoundButton *)self button];
  [v28 addTarget:self action:sel_buttonSelected_ forControlEvents:3];

  v29 = [(VUIRoundButton *)self button];
  [v29 addTarget:self action:sel_buttonReleased_ forControlEvents:128];

  v30 = [(VUIRoundButton *)self button];
  [v30 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
}

- (void)configureTextStackView
{
  textLabelStackView = self->_textLabelStackView;
  if (textLabelStackView)
  {
    [(UIStackView *)textLabelStackView removeFromSuperview];
    v4 = self->_textLabelStackView;
    self->_textLabelStackView = 0;
  }

  v5 = objc_alloc(MEMORY[0x1E69DCF90]);
  v6 = [(VUIRoundButton *)self textLabels];
  v7 = [v5 initWithArrangedSubviews:v6];
  v8 = self->_textLabelStackView;
  self->_textLabelStackView = v7;

  v9 = [(VUIRoundButton *)self textLabelStackView];
  [(VUIRoundButton *)self addSubview:v9];

  v10 = [(VUIRoundButton *)self textLabelStackView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(VUIRoundButton *)self textLabelStackView];
  [v11 setAxis:1];

  v12 = [(VUIRoundButton *)self textLabelStackView];
  v13 = [v12 centerYAnchor];
  v14 = [(VUIRoundButton *)self button];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(VUIRoundButton *)self textLabelStackView];
  v18 = [v17 leadingAnchor];
  v19 = [(VUIRoundButton *)self button];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20 constant:4.0];
  [v21 setActive:1];

  v25 = [(VUIRoundButton *)self textLabelStackView];
  v22 = [v25 trailingAnchor];
  v23 = [(VUIRoundButton *)self trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];
}

- (void)buttonSelected:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 vui_keyBlueHighlightedColor];
  [v4 setBackgroundColor:v5];
}

- (void)buttonReleased:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 vui_keyColor];
  [v4 setBackgroundColor:v5];
}

- (void)buttonPressed:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 vui_keyColor];
  [v5 setBackgroundColor:v6];

  v7 = [(VUIRoundButton *)self delegate];
  [v7 didSelectButton:self];
}

- (VUIRoundButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end