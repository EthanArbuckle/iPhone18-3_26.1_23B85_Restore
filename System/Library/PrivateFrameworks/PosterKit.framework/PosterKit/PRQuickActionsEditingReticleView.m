@interface PRQuickActionsEditingReticleView
- (PRQuickActionsEditingReticleView)init;
- (void)layoutSubviews;
- (void)setShowsEmptyView:(BOOL)a3;
@end

@implementation PRQuickActionsEditingReticleView

- (PRQuickActionsEditingReticleView)init
{
  v36[4] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PRQuickActionsEditingReticleView;
  v2 = [(PRQuickActionsEditingReticleView *)&v35 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E818]);
    vibrancyView = v2->_vibrancyView;
    v2->_vibrancyView = v3;

    [(BSUIVibrancyEffectView *)v2->_vibrancyView setUserInteractionEnabled:0];
    [(BSUIVibrancyEffectView *)v2->_vibrancyView setBlurEnabled:PREditingSupportsLiveBlurs()];
    [(PRQuickActionsEditingReticleView *)v2 addSubview:v2->_vibrancyView];
    v5 = objc_alloc_init(PREditingReticleView);
    reticleView = v2->_reticleView;
    v2->_reticleView = v5;

    [(PREditingReticleView *)v2->_reticleView setAutoresizingMask:18];
    v7 = [(BSUIVibrancyEffectView *)v2->_vibrancyView contentView];
    [v7 addSubview:v2->_reticleView];

    v8 = MEMORY[0x1E69DCAB8];
    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v34 = [v8 systemImageNamed:@"plus" withConfiguration:v9];

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v34];
    plusImageView = v2->_plusImageView;
    v2->_plusImageView = v10;

    v12 = v2->_plusImageView;
    v13 = MEMORY[0x1E69DC888];
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v14 objectForKey:@"PRReticleBorderColor"];
    v16 = v15;
    if (!v15)
    {
      v15 = &unk_1F1C6BE60;
    }

    [v15 doubleValue];
    v17 = [v13 colorWithWhite:? alpha:?];
    [(UIImageView *)v12 setTintColor:v17];

    [(UIImageView *)v2->_plusImageView setContentMode:1];
    [(UIImageView *)v2->_plusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(BSUIVibrancyEffectView *)v2->_vibrancyView contentView];
    [v18 addSubview:v2->_plusImageView];

    [(UIImageView *)v2->_plusImageView setHidden:1];
    v29 = MEMORY[0x1E696ACD8];
    v33 = [(UIImageView *)v2->_plusImageView heightAnchor];
    v32 = [(PRQuickActionsEditingReticleView *)v2 heightAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 multiplier:0.5];
    v36[0] = v31;
    v30 = [(UIImageView *)v2->_plusImageView widthAnchor];
    v28 = [(PRQuickActionsEditingReticleView *)v2 widthAnchor];
    v19 = [v30 constraintEqualToAnchor:v28 multiplier:0.5];
    v36[1] = v19;
    v20 = [(UIImageView *)v2->_plusImageView centerYAnchor];
    v21 = [(PRQuickActionsEditingReticleView *)v2 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v36[2] = v22;
    v23 = [(UIImageView *)v2->_plusImageView centerXAnchor];
    v24 = [(PRQuickActionsEditingReticleView *)v2 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v36[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v29 activateConstraints:v26];
  }

  return v2;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PRQuickActionsEditingReticleView;
  [(PRQuickActionsEditingReticleView *)&v5 layoutSubviews];
  [(PRQuickActionsEditingReticleView *)self bounds];
  v4 = v3;
  [(BSUIVibrancyEffectView *)self->_vibrancyView setFrame:?];
  [(PREditingReticleView *)self->_reticleView setOutlineBorderCornerRadius:v4 * 0.5];
}

- (void)setShowsEmptyView:(BOOL)a3
{
  if (self->_showsEmptyView != a3)
  {
    self->_showsEmptyView = a3;
    [(UIImageView *)self->_plusImageView setHidden:!a3];
  }
}

@end