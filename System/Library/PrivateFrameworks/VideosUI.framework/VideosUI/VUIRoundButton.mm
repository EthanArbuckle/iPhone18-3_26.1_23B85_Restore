@interface VUIRoundButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIRoundButton)initWithFrame:(CGRect)frame;
- (VUIRoundButtonDelegate)delegate;
- (void)_setUpViews;
- (void)buttonPressed:(id)pressed;
- (void)buttonReleased:(id)released;
- (void)buttonSelected:(id)selected;
- (void)configureTextStackView;
- (void)setButtonImage:(id)image;
- (void)setTextLabels:(id)labels;
@end

@implementation VUIRoundButton

- (VUIRoundButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = VUIRoundButton;
  v3 = [(VUIRoundButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    [(VUIRoundButton *)v3 _setUpViews];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  textLabels = [(VUIRoundButton *)self textLabels];
  v8 = [textLabels countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(textLabels);
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
      v9 = [textLabels countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setButtonImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_buttonImage isEqual:?]& 1) == 0)
  {
    button = [(VUIRoundButton *)self button];
    [button setImage:imageCopy forState:0];

    objc_storeStrong(&self->_buttonImage, image);
  }
}

- (void)setTextLabels:(id)labels
{
  labelsCopy = labels;
  if (![(NSArray *)self->_textLabels isEqualToArray:?])
  {
    objc_storeStrong(&self->_textLabels, labels);
    [(VUIRoundButton *)self configureTextStackView];
  }
}

- (void)_setUpViews
{
  button = [(VUIRoundButton *)self button];
  [(VUIRoundButton *)self addSubview:button];

  button2 = [(VUIRoundButton *)self button];
  [button2 setTranslatesAutoresizingMaskIntoConstraints:0];

  button3 = [(VUIRoundButton *)self button];
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [button3 setBackgroundColor:vui_keyColor];

  button4 = [(VUIRoundButton *)self button];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [button4 setTintColor:whiteColor];

  button5 = [(VUIRoundButton *)self button];
  layer = [button5 layer];
  [layer setMasksToBounds:1];

  button6 = [(VUIRoundButton *)self button];
  layer2 = [button6 layer];
  [layer2 setCornerRadius:14.0];

  button7 = [(VUIRoundButton *)self button];
  leadingAnchor = [button7 leadingAnchor];
  leadingAnchor2 = [(VUIRoundButton *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  button8 = [(VUIRoundButton *)self button];
  heightAnchor = [button8 heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:28.0];
  [v19 setActive:1];

  button9 = [(VUIRoundButton *)self button];
  widthAnchor = [button9 widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:28.0];
  [v22 setActive:1];

  button10 = [(VUIRoundButton *)self button];
  centerYAnchor = [button10 centerYAnchor];
  centerYAnchor2 = [(VUIRoundButton *)self centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v26 setActive:1];

  button11 = [(VUIRoundButton *)self button];
  [button11 setImageEdgeInsets:{7.0, 7.0, 7.0, 7.0}];

  button12 = [(VUIRoundButton *)self button];
  [button12 addTarget:self action:sel_buttonSelected_ forControlEvents:3];

  button13 = [(VUIRoundButton *)self button];
  [button13 addTarget:self action:sel_buttonReleased_ forControlEvents:128];

  button14 = [(VUIRoundButton *)self button];
  [button14 addTarget:self action:sel_buttonPressed_ forControlEvents:64];
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
  textLabels = [(VUIRoundButton *)self textLabels];
  v7 = [v5 initWithArrangedSubviews:textLabels];
  v8 = self->_textLabelStackView;
  self->_textLabelStackView = v7;

  textLabelStackView = [(VUIRoundButton *)self textLabelStackView];
  [(VUIRoundButton *)self addSubview:textLabelStackView];

  textLabelStackView2 = [(VUIRoundButton *)self textLabelStackView];
  [textLabelStackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabelStackView3 = [(VUIRoundButton *)self textLabelStackView];
  [textLabelStackView3 setAxis:1];

  textLabelStackView4 = [(VUIRoundButton *)self textLabelStackView];
  centerYAnchor = [textLabelStackView4 centerYAnchor];
  button = [(VUIRoundButton *)self button];
  centerYAnchor2 = [button centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v16 setActive:1];

  textLabelStackView5 = [(VUIRoundButton *)self textLabelStackView];
  leadingAnchor = [textLabelStackView5 leadingAnchor];
  button2 = [(VUIRoundButton *)self button];
  trailingAnchor = [button2 trailingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];
  [v21 setActive:1];

  textLabelStackView6 = [(VUIRoundButton *)self textLabelStackView];
  trailingAnchor2 = [textLabelStackView6 trailingAnchor];
  trailingAnchor3 = [(VUIRoundButton *)self trailingAnchor];
  v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v24 setActive:1];
}

- (void)buttonSelected:(id)selected
{
  v3 = MEMORY[0x1E69DC888];
  selectedCopy = selected;
  vui_keyBlueHighlightedColor = [v3 vui_keyBlueHighlightedColor];
  [selectedCopy setBackgroundColor:vui_keyBlueHighlightedColor];
}

- (void)buttonReleased:(id)released
{
  v3 = MEMORY[0x1E69DC888];
  releasedCopy = released;
  vui_keyColor = [v3 vui_keyColor];
  [releasedCopy setBackgroundColor:vui_keyColor];
}

- (void)buttonPressed:(id)pressed
{
  v4 = MEMORY[0x1E69DC888];
  pressedCopy = pressed;
  vui_keyColor = [v4 vui_keyColor];
  [pressedCopy setBackgroundColor:vui_keyColor];

  delegate = [(VUIRoundButton *)self delegate];
  [delegate didSelectButton:self];
}

- (VUIRoundButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end