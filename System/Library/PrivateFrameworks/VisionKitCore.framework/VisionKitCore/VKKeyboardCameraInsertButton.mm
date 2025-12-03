@interface VKKeyboardCameraInsertButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)action;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation VKKeyboardCameraInsertButton

- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)action
{
  v74[4] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v72.receiver = self;
  v72.super_class = VKKeyboardCameraInsertButton;
  v5 = [(VKKeyboardCameraInsertButton *)&v72 init];
  v7 = v5;
  if (v5)
  {
    v71 = actionCopy;
    if (vk_solariumEnabled(v5, v6))
    {
      _tintedGlassButtonConfiguration = [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
      [_tintedGlassButtonConfiguration setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      v70 = _tintedGlassButtonConfiguration;
      v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:_tintedGlassButtonConfiguration primaryAction:actionCopy];
      button = v7->_button;
      v7->_button = v9;

      [(UIButton *)v7->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v7->_button setRole:1];
      [(VKKeyboardCameraInsertButton *)v7 setOverrideUserInterfaceStyle:2];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_button];
      v11 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v12 = [v11 boldSystemFontOfSize:?];
      titleLabel = [(UIButton *)v7->_button titleLabel];
      [titleLabel setFont:v12];

      v60 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIButton *)v7->_button leadingAnchor];
      leadingAnchor2 = [(VKKeyboardCameraInsertButton *)v7 leadingAnchor];
      v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v74[0] = v64;
      bottomAnchor = [(UIButton *)v7->_button bottomAnchor];
      bottomAnchor2 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v74[1] = v15;
      topAnchor = [(UIButton *)v7->_button topAnchor];
      topAnchor2 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v74[2] = v18;
      trailingAnchor = [(UIButton *)v7->_button trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v74[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
      [v60 activateConstraints:v22];

      [(VKKeyboardCameraInsertButton *)v7 setEnabled:1];
    }

    else
    {
      filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [filledButtonConfiguration setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      background = [filledButtonConfiguration background];
      [background setCornerRadius:15.0];

      v70 = filledButtonConfiguration;
      v25 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:actionCopy];
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
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      traitCollection = [(UIButton *)v7->_button traitCollection];
      [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:15.0];
      v34 = v33;

      [(UIVisualEffectView *)v7->_effectView _setContinuousCornerRadius:v34];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_effectView];
      [(VKKeyboardCameraInsertButton *)v7 addSubview:v7->_button];
      v35 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v36 = [v35 boldSystemFontOfSize:?];
      titleLabel2 = [(UIButton *)v7->_button titleLabel];
      [titleLabel2 setFont:v36];

      v55 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
      leadingAnchor4 = [(VKKeyboardCameraInsertButton *)v7 leadingAnchor];
      v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v73[0] = v65;
      bottomAnchor3 = [(UIVisualEffectView *)v7->_effectView bottomAnchor];
      bottomAnchor4 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v73[1] = v59;
      topAnchor3 = [(UIVisualEffectView *)v7->_effectView topAnchor];
      topAnchor4 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v56 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v73[2] = v56;
      trailingAnchor3 = [(UIVisualEffectView *)v7->_effectView trailingAnchor];
      trailingAnchor4 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v73[3] = v52;
      leadingAnchor5 = [(UIButton *)v7->_button leadingAnchor];
      leadingAnchor6 = [(UIVisualEffectView *)v7->_effectView leadingAnchor];
      v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v73[4] = v49;
      bottomAnchor5 = [(UIButton *)v7->_button bottomAnchor];
      bottomAnchor6 = [(VKKeyboardCameraInsertButton *)v7 bottomAnchor];
      v39 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v73[5] = v39;
      topAnchor5 = [(UIButton *)v7->_button topAnchor];
      topAnchor6 = [(VKKeyboardCameraInsertButton *)v7 topAnchor];
      v42 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v73[6] = v42;
      trailingAnchor5 = [(UIButton *)v7->_button trailingAnchor];
      trailingAnchor6 = [(VKKeyboardCameraInsertButton *)v7 trailingAnchor];
      v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v73[7] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:8];
      [v55 activateConstraints:v46];
    }

    actionCopy = v71;
  }

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
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