@interface TUICandidateGradientContentLabel
- (TUICandidateGradientContentLabel)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)reconfigureForAlignment:(int64_t)a3;
- (void)regenerateLightConfiguration;
- (void)setCaptionLabelText:(id)a3;
- (void)setLightingEffectEnabled:(BOOL)a3;
- (void)setPrimaryLabelImage:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation TUICandidateGradientContentLabel

- (void)prepareForReuse
{
  [(TUICandidateGradientContentLabel *)self setPrimaryLabelImage:0];

  [(TUICandidateGradientContentLabel *)self setPrimaryLabelText:&stru_1F03BA8F8];
}

- (void)setLightingEffectEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = ([(TUICandidateGradientContentLabel *)self predictionPosition]* 0.625);
    v5 = [(TUICandidateGradientContentLabel *)self lightEffectConfiguration];
    v6 = [(TUICandidateGradientContentLabel *)self lightEffectsContainer];
    [v6 setLightConfiguration:v5];

    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E0]];
    v8 = [(TUICandidateGradientContentLabel *)self layoutStackView];
    v9 = [v8 layer];
    [v9 setCompositingFilter:v7];

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
    v11 = [(TUICandidateGradientContentLabel *)self lightEffectsContainer];
    [v11 setLightConfiguration:0];

    v13 = [(TUICandidateGradientContentLabel *)self layoutStackView];
    v12 = [v13 layer];
    [v12 setCompositingFilter:0];
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
  v4 = [(TUICandidateGradientContentLabel *)self textColor];
  v5 = [(TUICandidateGradientContentLabel *)self textColor];
  v6 = [v3 _tui_intelligenceAmbientPaletteWithStartColor:v4 endColor:v5];
  v8 = [v6 _tui_scaledColorSpaceForAmbientText];

  v7 = [objc_alloc(MEMORY[0x1E69DD468]) initWithColorPalette:v8];
  [v7 setDirection:0];
  [v7 setDuration:2.0];
  [(TUICandidateGradientContentLabel *)self setLightEffectConfiguration:v7];
}

- (void)setPrimaryLabelImage:(id)a3
{
  [(UIImageView *)self->_imageView setImage:?];
  imageView = self->_imageView;

  [(UIImageView *)imageView setHidden:a3 == 0];
}

- (void)setCaptionLabelText:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = 0;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = [0 length] == 0;
  }

  [(UILabel *)self->_captionLabel setHidden:v5];
  [(UILabel *)self->_captionLabel setText:v6];
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(UILabel *)self->_primaryLabel setTextColor:v6];
    [(UILabel *)self->_captionLabel setTextColor:v6];
    [(TUICandidateGradientContentLabel *)self regenerateLightConfiguration];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)reconfigureForAlignment:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = &OBJC_IVAR___TUICandidateGradientContentLabel__layoutStackView;
  }

  else
  {
    v4 = &OBJC_IVAR___TUICandidateGradientContentLabel__primaryLabelStackView;
  }

  if (a3 == 1)
  {
    v5 = &OBJC_IVAR___TUICandidateGradientContentLabel__primaryLabelStackView;
  }

  else
  {
    v5 = &OBJC_IVAR___TUICandidateGradientContentLabel__layoutStackView;
  }

  if (a3 == 1)
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

- (TUICandidateGradientContentLabel)initWithFrame:(CGRect)a3
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
    v9 = [MEMORY[0x1E69DC888] tintColor];
    textColor = v8->_textColor;
    v8->_textColor = v9;

    v11 = [[TUIGradientView alloc] initWithFrame:v3, v4, v5, v6];
    lightEffectsContainer = v8->_lightEffectsContainer;
    v8->_lightEffectsContainer = v11;

    [(TUIGradientView *)v8->_lightEffectsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUICandidateGradientContentLabel *)v8 addSubview:v8->_lightEffectsContainer];
    v51 = MEMORY[0x1E696ACD8];
    v56 = [(TUIGradientView *)v8->_lightEffectsContainer leadingAnchor];
    v55 = [(TUICandidateGradientContentLabel *)v8 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v61[0] = v54;
    v53 = [(TUIGradientView *)v8->_lightEffectsContainer trailingAnchor];
    v52 = [(TUICandidateGradientContentLabel *)v8 trailingAnchor];
    v13 = [v53 constraintEqualToAnchor:v52];
    v61[1] = v13;
    v14 = [(TUIGradientView *)v8->_lightEffectsContainer topAnchor];
    v15 = [(TUICandidateGradientContentLabel *)v8 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v61[2] = v16;
    v17 = [(TUIGradientView *)v8->_lightEffectsContainer bottomAnchor];
    v18 = [(TUICandidateGradientContentLabel *)v8 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
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
    v29 = [(UIStackView *)v8->_stackedLabelView centerXAnchor];
    v30 = [(TUIGradientView *)v8->_lightEffectsContainer centerXAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v60[0] = v31;
    v32 = [(UIStackView *)v8->_stackedLabelView centerYAnchor];
    v33 = [(TUIGradientView *)v8->_lightEffectsContainer centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
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