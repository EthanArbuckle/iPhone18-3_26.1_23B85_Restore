@interface VKKeyboardCameraCloseButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VKKeyboardCameraCloseButton

- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)a3
{
  v55[4] = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = VKKeyboardCameraCloseButton;
  v3 = [(VKKeyboardCameraCloseButton *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
      v10 = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
      [(UIButton *)v5->_button setConfiguration:v10];

      [(VKKeyboardCameraCloseButton *)v5 setOverrideUserInterfaceStyle:2];
      v11 = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v5->_button setTintColor:v11];

      [(VKKeyboardCameraCloseButton *)v5 addSubview:v5->_button];
      v12 = MEMORY[0x1E696ACD8];
      v13 = [(UIButton *)v5->_button leadingAnchor];
      v14 = [(VKKeyboardCameraCloseButton *)v5 leadingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v55[0] = v15;
      v16 = [(UIButton *)v5->_button bottomAnchor];
      v17 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v55[1] = v18;
      v19 = [(UIButton *)v5->_button topAnchor];
      v51 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v52 = v19;
      v50 = [v19 constraintEqualToAnchor:?];
      v55[2] = v50;
      v20 = [(UIButton *)v5->_button trailingAnchor];
      v49 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v48 = [v20 constraintEqualToAnchor:?];
      v55[3] = v48;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
      [v12 activateConstraints:v21];
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
      v47 = [(UIVisualEffectView *)v5->_effectView leadingAnchor];
      v44 = [(VKKeyboardCameraCloseButton *)v5 leadingAnchor];
      v46 = [v47 constraintEqualToAnchor:v44];
      v54[0] = v46;
      v42 = [(UIVisualEffectView *)v5->_effectView bottomAnchor];
      v41 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v43 = [v42 constraintEqualToAnchor:v41];
      v54[1] = v43;
      v26 = [(UIVisualEffectView *)v5->_effectView topAnchor];
      v51 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v52 = v26;
      v50 = [v26 constraintEqualToAnchor:?];
      v54[2] = v50;
      v38 = [(UIVisualEffectView *)v5->_effectView trailingAnchor];
      v49 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v48 = [v38 constraintEqualToAnchor:?];
      v54[3] = v48;
      v21 = [(UIButton *)v5->_button leadingAnchor];
      v40 = [(UIVisualEffectView *)v5->_effectView leadingAnchor];
      v39 = [v21 constraintEqualToAnchor:v40];
      v54[4] = v39;
      v37 = [(UIButton *)v5->_button bottomAnchor];
      v36 = [(VKKeyboardCameraCloseButton *)v5 bottomAnchor];
      v27 = [v37 constraintEqualToAnchor:v36];
      v54[5] = v27;
      v28 = [(UIButton *)v5->_button topAnchor];
      v29 = [(VKKeyboardCameraCloseButton *)v5 topAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      v54[6] = v30;
      v31 = [(UIButton *)v5->_button trailingAnchor];
      v32 = [(VKKeyboardCameraCloseButton *)v5 trailingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      v54[7] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:8];
      [v45 activateConstraints:v34];

      v20 = v38;
      v17 = v41;

      v14 = v44;
      v16 = v42;

      v13 = v47;
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
  v3 = [(VKKeyboardCameraCloseButton *)&v5 layoutSubviews];
  if ((vk_solariumEnabled(v3, v4) & 1) == 0)
  {
    [(UIButton *)self->_button bounds];
    [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:CGRectGetWidth(v6) * 0.5];
  }
}

@end