@interface VKKeyboardCameraCloseButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VKKeyboardCameraCloseButton

- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)frame
{
  v55[4] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = VKKeyboardCameraCloseButton;
  v3 = [(VKKeyboardCameraCloseButton *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v3;
  if (v3)
  {
    v6 = vk_solariumEnabled(v3, v4);
    v7 = [MEMORY[0x1E69DC738] buttonWithType:7];
    button = v5->_button;
    v5->_button = v7;

    v9 = v5->_button;
    if (v6)
    {
      [(UIButton *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
      [(UIButton *)v5->_button setConfiguration:_glassButtonConfiguration];

      [(VKKeyboardCameraCloseButton *)v5 setOverrideUserInterfaceStyle:2];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v5->_button setTintColor:labelColor];

      [(VKKeyboardCameraCloseButton *)v5 addSubview:v5->_button];
      v12 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIButton *)v5->_button leadingAnchor];
      leadingAnchor2 = [(VKKeyboardCameraCloseButton *)v5 leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v55[0] = v15;
      bottomAnchor = [(UIButton *)v5->_button bottomAnchor];
      bottomAnchor2 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v55[1] = v18;
      topAnchor = [(UIButton *)v5->_button topAnchor];
      topAnchor2 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v52 = topAnchor;
      v50 = [topAnchor constraintEqualToAnchor:?];
      v55[2] = v50;
      trailingAnchor = [(UIButton *)v5->_button trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v48 = [trailingAnchor constraintEqualToAnchor:?];
      v55[3] = v48;
      leadingAnchor5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
      [v12 activateConstraints:leadingAnchor5];
    }

    else
    {
      [(UIButton *)v9 setAlpha:0.85];
      [(UIButton *)v5->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = objc_alloc(MEMORY[0x1E69DD298]);
      v23 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      v24 = [v22 initWithEffect:v23];
      effectView = v5->_effectView;
      v5->_effectView = v24;

      [(UIVisualEffectView *)v5->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VKKeyboardCameraCloseButton *)v5 addSubview:v5->_effectView];
      [(VKKeyboardCameraCloseButton *)v5 addSubview:v5->_button];
      v45 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIVisualEffectView *)v5->_effectView leadingAnchor];
      leadingAnchor4 = [(VKKeyboardCameraCloseButton *)v5 leadingAnchor];
      v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v54[0] = v46;
      bottomAnchor3 = [(UIVisualEffectView *)v5->_effectView bottomAnchor];
      bottomAnchor4 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v54[1] = v43;
      topAnchor3 = [(UIVisualEffectView *)v5->_effectView topAnchor];
      topAnchor2 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v52 = topAnchor3;
      v50 = [topAnchor3 constraintEqualToAnchor:?];
      v54[2] = v50;
      trailingAnchor3 = [(UIVisualEffectView *)v5->_effectView trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v48 = [trailingAnchor3 constraintEqualToAnchor:?];
      v54[3] = v48;
      leadingAnchor5 = [(UIButton *)v5->_button leadingAnchor];
      leadingAnchor6 = [(UIVisualEffectView *)v5->_effectView leadingAnchor];
      v39 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v54[4] = v39;
      bottomAnchor5 = [(UIButton *)v5->_button bottomAnchor];
      bottomAnchor6 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v27 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v54[5] = v27;
      topAnchor4 = [(UIButton *)v5->_button topAnchor];
      topAnchor5 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v30 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v54[6] = v30;
      trailingAnchor4 = [(UIButton *)v5->_button trailingAnchor];
      trailingAnchor5 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v33 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v54[7] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:8];
      [v45 activateConstraints:v34];

      trailingAnchor = trailingAnchor3;
      bottomAnchor2 = bottomAnchor4;

      leadingAnchor2 = leadingAnchor4;
      bottomAnchor = bottomAnchor3;

      leadingAnchor = leadingAnchor3;
      v15 = v46;

      v18 = v43;
    }
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VKKeyboardCameraCloseButton;
  layoutSubviews = [(VKKeyboardCameraCloseButton *)&v5 layoutSubviews];
  if ((vk_solariumEnabled(layoutSubviews, v4) & 1) == 0)
  {
    [(UIButton *)self->_button bounds];
    [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:CGRectGetWidth(v6) * 0.5];
  }
}

@end