@interface VKKeyboardCameraInsertButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation VKKeyboardCameraInsertButton

- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)a3
{
  v74[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v72.receiver = self;
  v72.super_class = VKKeyboardCameraInsertButton;
  v5 = [(VKKeyboardCameraInsertButton *)&v72 init];
  v7 = v5;
  if (v5)
  {
    v71 = v4;
    if (vk_solariumEnabled(v5, v6))
    {
      v8 = [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
      [v8 setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      v70 = v8;
      v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:v4];
      button = v7->_button;
      v7->_button = v9;

      [(UIButton *)v7->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v7->_button setRole:1];
      [(VKKeyboardCameraInsertButton *)v7 setOverrideUserInterfaceStyle:2];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_button];
      v11 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v12 = [v11 boldSystemFontOfSize:?];
      v13 = [(UIButton *)v7->_button titleLabel];
      [v13 setFont:v12];

      v60 = MEMORY[0x1E696ACD8];
      v68 = [(UIButton *)v7->_button leadingAnchor];
      v66 = [(VKKeyboardCameraInsertButton *)v7 leadingAnchor];
      v64 = [v68 constraintEqualToAnchor:v66];
      v74[0] = v64;
      v62 = [(UIButton *)v7->_button bottomAnchor];
      v14 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v15 = [v62 constraintEqualToAnchor:v14];
      v74[1] = v15;
      v16 = [(UIButton *)v7->_button topAnchor];
      v17 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v74[2] = v18;
      v19 = [(UIButton *)v7->_button trailingAnchor];
      v20 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v74[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v60 activateConstraints:v22];

      [(VKKeyboardCameraInsertButton *)v7 setEnabled:1];
    }

    else
    {
      v23 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [v23 setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      v24 = [v23 background];
      [v24 setCornerRadius:15.0];

      v70 = v23;
      v25 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v23 primaryAction:v4];
      v26 = v7->_button;
      v7->_button = v25;

      [(UIButton *)v7->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v7->_button setAlpha:0.85];
      [(UIButton *)v7->_button setRole:1];
      v27 = objc_alloc(MEMORY[0x1E69DD298]);
      v28 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      v29 = [v27 initWithEffect:v28];
      effectView = v7->_effectView;
      v7->_effectView = v29;

      [(UIVisualEffectView *)v7->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
      v31 = [MEMORY[0x1E69DCA40] defaultMetrics];
      v32 = [(UIButton *)v7->_button traitCollection];
      [v31 scaledValueForValue:v32 compatibleWithTraitCollection:15.0];
      v34 = v33;

      [(UIVisualEffectView *)v7->_effectView _setContinuousCornerRadius:v34];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_effectView];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_button];
      v35 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v36 = [v35 boldSystemFontOfSize:?];
      v37 = [(UIButton *)v7->_button titleLabel];
      [v37 setFont:v36];

      v55 = MEMORY[0x1E696ACD8];
      v69 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
      v67 = [(VKKeyboardCameraInsertButton *)v7 leadingAnchor];
      v65 = [v69 constraintEqualToAnchor:v67];
      v73[0] = v65;
      v63 = [(UIVisualEffectView *)v7->_effectView bottomAnchor];
      v61 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v59 = [v63 constraintEqualToAnchor:v61];
      v73[1] = v59;
      v58 = [(UIVisualEffectView *)v7->_effectView topAnchor];
      v57 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v56 = [v58 constraintEqualToAnchor:v57];
      v73[2] = v56;
      v54 = [(UIVisualEffectView *)v7->_effectView trailingAnchor];
      v53 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v52 = [v54 constraintEqualToAnchor:v53];
      v73[3] = v52;
      v51 = [(UIButton *)v7->_button leadingAnchor];
      v50 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
      v49 = [v51 constraintEqualToAnchor:v50];
      v73[4] = v49;
      v48 = [(UIButton *)v7->_button bottomAnchor];
      v38 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v39 = [v48 constraintEqualToAnchor:v38];
      v73[5] = v39;
      v40 = [(UIButton *)v7->_button topAnchor];
      v41 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];
      v73[6] = v42;
      v43 = [(UIButton *)v7->_button trailingAnchor];
      v44 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];
      v73[7] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:8];
      [v55 activateConstraints:v46];
    }

    v4 = v71;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = [(UIButton *)self->_button setEnabled:?];
    if (vk_solariumEnabled(v4, v5))
    {
      if (self->_enabled)
      {
        [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
      }

      else
      {
        [MEMORY[0x1E69DC740] _glassButtonConfiguration];
      }
      v6 = ;
      [v6 setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      [(UIButton *)self->_button setConfiguration:v6];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIButton *)self->_button intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end