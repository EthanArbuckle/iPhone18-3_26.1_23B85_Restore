@interface TUICandidateGradientContentLabel
- (TUICandidateGradientContentLabel)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)reconfigureForAlignment:(int64_t)alignment;
- (void)regenerateLightConfiguration;
- (void)setCaptionLabelText:(id)text;
- (void)setLightingEffectEnabled:(BOOL)enabled;
- (void)setPrimaryLabelImage:(id)image;
- (void)setTextColor:(id)color;
@end

@implementation TUICandidateGradientContentLabel

- (void)prepareForReuse
{
  [(TUICandidateGradientContentLabel *)self setPrimaryLabelImage:0];

  [(TUICandidateGradientContentLabel *)self setPrimaryLabelText:&stru_1F03BA8F8];
}

- (void)setLightingEffectEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = ([(TUICandidateGradientContentLabel *)self predictionPosition]* 0.625);
    lightEffectConfiguration = [(TUICandidateGradientContentLabel *)self lightEffectConfiguration];
    lightEffectsContainer = [(TUICandidateGradientContentLabel *)self lightEffectsContainer];
    [lightEffectsContainer setLightConfiguration:lightEffectConfiguration];

    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
    layoutStackView = [(TUICandidateGradientContentLabel *)self layoutStackView];
    layer = [layoutStackView layer];
    [layer setCompositingFilter:v7];

    v10 = dispatch_time(0, (v4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__TUICandidateGradientContentLabel_setLightingEffectEnabled___block_invoke;
    block[3] = &unk_1E72D83A0;
    block[4] = self;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    lightEffectsContainer2 = [(TUICandidateGradientContentLabel *)self lightEffectsContainer];
    [lightEffectsContainer2 setLightConfiguration:0];

    layoutStackView2 = [(TUICandidateGradientContentLabel *)self layoutStackView];
    layer2 = [layoutStackView2 layer];
    [layer2 setCompositingFilter:0];
  }
}

void __61__TUICandidateGradientContentLabel_setLightingEffectEnabled___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) lightEffectsContainer];
  [v1 runAnimationCount:1 duration:2.0];
}

- (void)regenerateLightConfiguration
{
  v3 = MEMORY[0x1E69DD400];
  textColor = [(TUICandidateGradientContentLabel *)self textColor];
  textColor2 = [(TUICandidateGradientContentLabel *)self textColor];
  v6 = [v3 _tui_intelligenceAmbientPaletteWithStartColor:textColor endColor:textColor2];
  _tui_scaledColorSpaceForAmbientText = [v6 _tui_scaledColorSpaceForAmbientText];

  v7 = [objc_alloc(MEMORY[0x1E69DD468]) initWithColorPalette:_tui_scaledColorSpaceForAmbientText];
  [v7 setDirection:0];
  [v7 setDuration:2.0];
  [(TUICandidateGradientContentLabel *)self setLightEffectConfiguration:v7];
}

- (void)setPrimaryLabelImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:?];
  imageView = self->_imageView;

  [(UIImageView *)imageView setHidden:image == 0];
}

- (void)setCaptionLabelText:(id)text
{
  textCopy = text;
  v7 = textCopy;
  if (textCopy)
  {
    v5 = 0;
    v6 = textCopy;
  }

  else
  {
    v6 = 0;
    v5 = [0 length] == 0;
  }

  [(UILabel *)self->_captionLabel setHidden:v5];
  [(UILabel *)self->_captionLabel setText:v6];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_primaryLabel setTextColor:v6];
    [(UILabel *)self->_captionLabel setTextColor:v6];
    [(TUICandidateGradientContentLabel *)self regenerateLightConfiguration];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)reconfigureForAlignment:(int64_t)alignment
{
  if (alignment == 1)
  {
    v4 = &OBJC_IVAR___TUICandidateGradientContentLabel__layoutStackView;
  }

  else
  {
    v4 = &OBJC_IVAR___TUICandidateGradientContentLabel__primaryLabelStackView;
  }

  if (alignment == 1)
  {
    v5 = &OBJC_IVAR___TUICandidateGradientContentLabel__primaryLabelStackView;
  }

  else
  {
    v5 = &OBJC_IVAR___TUICandidateGradientContentLabel__layoutStackView;
  }

  if (alignment == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [*(&self->super.super.super.isa + *v4) removeArrangedSubview:self->_imageView];
  [*(&self->super.super.super.isa + *v5) insertArrangedSubview:self->_imageView atIndex:0];
  [(UIStackView *)self->_stackedLabelView setAlignment:v6];

  [(TUICandidateGradientContentLabel *)self setNeedsLayout];
}

- (TUICandidateGradientContentLabel)initWithFrame:(CGRect)frame
{
  v61[4] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = TUICandidateGradientContentLabel;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(TUICandidateGradientContentLabel *)&v58 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  v8 = v7;
  if (v7)
  {
    [(TUICandidateGradientContentLabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    textColor = v8->_textColor;
    v8->_textColor = tintColor;

    v11 = [[TUIGradientView alloc] initWithFrame:v3, v4, v5, v6];
    lightEffectsContainer = v8->_lightEffectsContainer;
    v8->_lightEffectsContainer = v11;

    [(TUIGradientView *)v8->_lightEffectsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUICandidateGradientContentLabel *)v8 addSubview:v8->_lightEffectsContainer];
    v51 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(TUIGradientView *)v8->_lightEffectsContainer leadingAnchor];
    leadingAnchor2 = [(TUICandidateGradientContentLabel *)v8 leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v61[0] = v54;
    trailingAnchor = [(TUIGradientView *)v8->_lightEffectsContainer trailingAnchor];
    trailingAnchor2 = [(TUICandidateGradientContentLabel *)v8 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[1] = v13;
    topAnchor = [(TUIGradientView *)v8->_lightEffectsContainer topAnchor];
    topAnchor2 = [(TUICandidateGradientContentLabel *)v8 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[2] = v16;
    bottomAnchor = [(TUIGradientView *)v8->_lightEffectsContainer bottomAnchor];
    bottomAnchor2 = [(TUICandidateGradientContentLabel *)v8 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v61[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    [v51 activateConstraints:v20];

    v21 = objc_alloc(MEMORY[0x1E69DCF90]);
    v22 = MEMORY[0x1E695E0F0];
    v23 = [v21 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    layoutStackView = v8->_layoutStackView;
    v8->_layoutStackView = v23;

    [(UIStackView *)v8->_layoutStackView setSpacing:6.0];
    [(UIStackView *)v8->_layoutStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v8->_layoutStackView setAxis:0];
    [(UIStackView *)v8->_layoutStackView setAlignment:3];
    [(TUIGradientView *)v8->_lightEffectsContainer addSubview:v8->_layoutStackView];
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    imageView = v8->_imageView;
    v8->_imageView = v25;

    [(UIImageView *)v8->_imageView setContentMode:1];
    v27 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v22];
    stackedLabelView = v8->_stackedLabelView;
    v8->_stackedLabelView = v27;

    [(UIStackView *)v8->_stackedLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v8->_stackedLabelView setAxis:1];
    [(UIStackView *)v8->_stackedLabelView setAlignment:3];
    [(UIStackView *)v8->_stackedLabelView setSpacing:0.0];
    [(UIStackView *)v8->_layoutStackView addArrangedSubview:v8->_stackedLabelView];
    v57 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIStackView *)v8->_stackedLabelView centerXAnchor];
    centerXAnchor2 = [(TUIGradientView *)v8->_lightEffectsContainer centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v60[0] = v31;
    centerYAnchor = [(UIStackView *)v8->_stackedLabelView centerYAnchor];
    centerYAnchor2 = [(TUIGradientView *)v8->_lightEffectsContainer centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v60[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [v57 activateConstraints:v35];

    v36 = objc_alloc(MEMORY[0x1E69DCF90]);
    v37 = [v36 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    primaryLabelStackView = v8->_primaryLabelStackView;
    v8->_primaryLabelStackView = v37;

    [(UIStackView *)v8->_primaryLabelStackView setAxis:0];
    [(UIStackView *)v8->_primaryLabelStackView setSpacing:6.0];
    v39 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v3, v4, v5, v6}];
    primaryLabel = v8->_primaryLabel;
    v8->_primaryLabel = v39;

    [(UILabel *)v8->_primaryLabel setOpaque:0];
    v41 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v42 = [v41 fontWithSize:19.0];
    [(UILabel *)v8->_primaryLabel setFont:v42];

    [(UILabel *)v8->_primaryLabel setTextAlignment:0];
    [(UIStackView *)v8->_primaryLabelStackView addArrangedSubview:v8->_primaryLabel];
    v43 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v3, v4, v5, v6}];
    captionLabel = v8->_captionLabel;
    v8->_captionLabel = v43;

    [(UILabel *)v8->_captionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    v46 = [v45 fontWithSize:13.0];
    [(UILabel *)v8->_captionLabel setFont:v46];

    [(UIStackView *)v8->_stackedLabelView addArrangedSubview:v8->_primaryLabelStackView];
    [(UIStackView *)v8->_stackedLabelView addArrangedSubview:v8->_captionLabel];
    [(TUICandidateGradientContentLabel *)v8 setPrimaryLabelText:&stru_1F03BA8F8];
    [(TUICandidateGradientContentLabel *)v8 setCaptionLabelText:&stru_1F03BA8F8];
    [(TUICandidateGradientContentLabel *)v8 reconfigureForAlignment:1];
    v47 = objc_opt_self();
    v59 = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    v49 = [(TUICandidateGradientContentLabel *)v8 registerForTraitChanges:v48 withAction:sel__userInterfaceStyleChanged];

    [(TUICandidateGradientContentLabel *)v8 regenerateLightConfiguration];
  }

  return v8;
}

@end