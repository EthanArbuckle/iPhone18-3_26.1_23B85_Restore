@interface PREditingButton
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (PREditingButton)initWithStyle:(int64_t)a3 frame:(CGRect)a4 primaryAction:(id)a5;
- (UIEdgeInsets)backgroundInsets;
- (void)_applyGlassBackgroundToView:(id)a3 forStyle:(int64_t)a4;
- (void)_configureLegibilityShadowView;
- (void)_didInvalidateContentImageMetrics;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibilityShadowEnabled:(BOOL)a3;
@end

@implementation PREditingButton

- (PREditingButton)initWithStyle:(int64_t)a3 frame:(CGRect)a4 primaryAction:(id)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PREditingButton;
  v6 = [(PREditingButton *)&v19 initWithFrame:a5 primaryAction:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v7 = v6;
  if (v6)
  {
    v6->_style = a3;
    [(PREditingButton *)v6 setClipsToBounds:1];
    v8 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v9 = [v8 background];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v10];

    [(PREditingButton *)v7 setConfiguration:v8];
    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
    [v11 setName:@"highlightBrightness"];
    [v11 setValue:&unk_1F1C6BD00 forKey:@"inputAmount"];
    v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v12 setName:@"highlightSaturation"];
    [v12 setValue:&unk_1F1C6BD10 forKey:@"inputAmount"];
    v13 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    [v13 setName:@"enabledMultiplyColor"];
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [v13 setValue:objc_msgSend(v14 forKeyPath:{"CGColor"), @"inputColor"}];

    v15 = [(PREditingButton *)v7 layer];
    v20[0] = v11;
    v20[1] = v12;
    v20[2] = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    [v15 setFilters:v16];

    v17 = [(PREditingButton *)v7 layer];
    [v17 setAllowsGroupOpacity:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v100[3] = *MEMORY[0x1E69E9840];
  v98.receiver = self;
  v98.super_class = PREditingButton;
  [(PREditingButton *)&v98 layoutSubviews];
  v3 = [(PREditingButton *)self configuration];
  [v3 contentInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PREditingButton *)self bounds];
  v16 = PRDirectionalEdgeInsetsInsetRect([(PREditingButton *)self effectiveUserInterfaceLayoutDirection], v12, v13, v14, v15, v5, v7, v9, v11);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(PREditingButton *)self style];
  v24 = v23;
  v25 = v23 - 1;
  if ((v23 - 1) < 7)
  {
    backgroundView = self->_backgroundView;
    v27 = 0x1EB33B000uLL;
    v28 = 0x1EB33B000uLL;
    if (backgroundView)
    {
LABEL_25:
      [(UIView *)backgroundView setFrame:v16, v18, v20, v22];
      v81 = [(UIView *)self->_backgroundView layer];
      [(UIView *)self->_backgroundView bounds];
      [v81 setCornerRadius:CGRectGetHeight(v101) * 0.5];

      whiteTintView = self->_whiteTintView;
      if (whiteTintView)
      {
        [(UIView *)self->_backgroundView bounds];
        [(UIView *)whiteTintView setFrame:?];
        v83 = [(UIView *)self->_whiteTintView layer];
        [(UIView *)self->_backgroundView bounds];
        [v83 setCornerRadius:CGRectGetHeight(v102) * 0.5];

        v84 = [(UIView *)self->_whiteTintView layer];
        [v84 setCornerCurve:*MEMORY[0x1E69796E8]];
      }

      v85 = self->_backgroundView;
      [(UIView *)v85 center];
      v87 = v86;
      v89 = v88;
      v90 = [(UIView *)self->_backgroundView superview];
      [(UIView *)v85 convertPoint:v90 fromView:v87, v89];
      v92 = v91;
      v94 = v93;

      contentImageView = self->_contentImageView;
      if (contentImageView)
      {
        [(UIImageView *)contentImageView setCenter:v92, v94];
      }

      v96 = *(&self->super.super.super.super.super.isa + *(v27 + 2916));
      if (v96)
      {
        [v96 setCenter:{v92, v94}];
      }

      v97 = *(&self->super.super.super.super.super.isa + *(v28 + 2920));
      if (v97)
      {
        [v97 setCenter:{v92, v94}];
      }

      [(PREditingButton *)self _configureLegibilityShadowView];
      return;
    }

    v29 = objc_alloc(MEMORY[0x1E69DD250]);
    v30 = *MEMORY[0x1E695F058];
    v31 = *(MEMORY[0x1E695F058] + 8);
    v32 = *(MEMORY[0x1E695F058] + 16);
    v33 = *(MEMORY[0x1E695F058] + 24);
    v34 = [v29 initWithFrame:{*MEMORY[0x1E695F058], v31, v32, v33}];
    v35 = self->_backgroundView;
    self->_backgroundView = v34;

    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    v36 = [(UIView *)self->_backgroundView layer];
    [v36 setCornerCurve:*MEMORY[0x1E69796E8]];

    if (v24 == 7)
    {
      v37 = [(UIView *)self->_backgroundView layer];
      [v37 setAllowsGroupBlending:0];
    }

    [(PREditingButton *)self addSubview:self->_backgroundView];
    if (v25 > 1)
    {
      v60 = [MEMORY[0x1E69DC888] whiteColor];
      [(PREditingButton *)self _applyGlassBackgroundToView:self->_backgroundView forStyle:v24];
      if (v24 == 7)
      {
        v61 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v30, v31, v32, v33}];
        v62 = self->_whiteTintView;
        self->_whiteTintView = v61;

        [(UIView *)self->_whiteTintView setUserInteractionEnabled:0];
        v63 = self->_whiteTintView;
        v64 = [MEMORY[0x1E69DC888] whiteColor];
        [(UIView *)v63 setBackgroundColor:v64];

        [(UIView *)self->_whiteTintView setAlpha:0.42];
        [(UIView *)self->_backgroundView addSubview:self->_whiteTintView];
        v65 = [(PREditingButton *)self defaultContentImage];
        v66 = [v65 imageWithRenderingMode:2];
        v67 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v66];
        colorBurnImageView = self->_colorBurnImageView;
        self->_colorBurnImageView = v67;

        v69 = self->_colorBurnImageView;
        v70 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
        [(UIImageView *)v69 setTintColor:v70];

        v71 = [(UIImageView *)self->_colorBurnImageView layer];
        [v71 setCompositingFilter:@"colorBurnBlendMode"];

        [(UIImageView *)self->_colorBurnImageView setUserInteractionEnabled:0];
        [(UIView *)self->_backgroundView addSubview:self->_colorBurnImageView];
        v72 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v66];
        plusDImageView = self->_plusDImageView;
        self->_plusDImageView = v72;

        v74 = self->_plusDImageView;
        v75 = [MEMORY[0x1E69DC888] blackColor];
        [(UIImageView *)v74 setTintColor:v75];

        v28 = 0x1EB33B000;
        [(UIImageView *)self->_plusDImageView setAlpha:0.3];
        v76 = [(UIImageView *)self->_plusDImageView layer];
        [v76 setCompositingFilter:@"plusD"];

        [(UIImageView *)self->_plusDImageView setUserInteractionEnabled:0];
        v27 = 0x1EB33B000;
        [(UIView *)self->_backgroundView addSubview:self->_plusDImageView];

LABEL_24:
        backgroundView = self->_backgroundView;
        goto LABEL_25;
      }

LABEL_23:
      v78 = [(PREditingButton *)self defaultContentImage];
      v65 = [v78 imageWithRenderingMode:2];

      v79 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v65];
      v80 = self->_contentImageView;
      self->_contentImageView = v79;

      [(UIImageView *)self->_contentImageView setTintColor:v60];
      [(UIView *)self->_backgroundView addSubview:self->_contentImageView];
      goto LABEL_24;
    }

    v38 = self->_backgroundColor;
    if (v38)
    {
      v39 = v38;
      if (v24 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v24 != 1)
      {
        v39 = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_21:
        v77 = [MEMORY[0x1E69DC888] whiteColor];
        goto LABEL_22;
      }

      v39 = [MEMORY[0x1E69DC888] colorWithRed:0.596078431 green:0.596078431 blue:0.615686275 alpha:0.9];
    }

    v77 = [MEMORY[0x1E69DC888] blackColor];
LABEL_22:
    v60 = v77;
    [(UIView *)self->_backgroundView setBackgroundColor:v39];

    goto LABEL_23;
  }

  if (!v23)
  {
    materialView = self->_materialView;
    if (!materialView)
    {
      v41 = [(PREditingButton *)self traitCollection];
      if (!v41)
      {
        v41 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
      }

      v42 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
      v99[0] = v42;
      v100[0] = @"editingButtonLight";
      v43 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
      v99[1] = v43;
      v100[1] = @"editingButtonLight";
      v44 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
      v99[2] = v44;
      v100[2] = @"editingButtonDark";
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];

      v46 = MEMORY[0x1E69AE158];
      v47 = PRBundle();
      v48 = [v46 materialViewWithRecipeNamesByTraitCollection:v45 inBundle:v47 options:0 initialWeighting:0 scaleAdjustment:v41 compatibleWithTraitCollection:1.0];
      materialBackgroundView = self->_materialBackgroundView;
      self->_materialBackgroundView = v48;

      v50 = self->_materialBackgroundView;
      v51 = objc_opt_self();
      v52 = NSStringFromClass(v51);
      [(MTMaterialView *)v50 setGroupNameBase:v52];

      v53 = [(MTMaterialView *)self->_materialBackgroundView layer];
      [v53 setCornerCurve:*MEMORY[0x1E69796E8]];

      v54 = [PREditingButtonMaterialView alloc];
      v55 = self->_materialBackgroundView;
      v56 = [(PREditingButton *)self defaultContentImage];
      v57 = [(PREditingButtonMaterialView *)v54 initWithFrame:v55 backgroundView:v56 foregroundImage:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v58 = self->_materialView;
      self->_materialView = v57;

      [(PREditingButtonMaterialView *)self->_materialView setUserInteractionEnabled:0];
      v59 = self->_materialView;
      [(PREditingButton *)self backgroundInsets];
      [(PREditingButtonMaterialView *)v59 setBackgroundInsets:?];
      [(PREditingButton *)self addSubview:self->_materialView];

      materialView = self->_materialView;
    }

    [(PREditingButtonMaterialView *)materialView setFrame:v16, v18, v20, v22];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(PREditingButton *)self isHighlighted];
  v13.receiver = self;
  v13.super_class = PREditingButton;
  [(PREditingButton *)&v13 setHighlighted:v3];
  if (v5 != v3 && ![(PREditingButton *)self isLegibilityShadowEnabled])
  {
    v6 = [(PREditingButton *)self layer];
    v7 = v6;
    if (v3)
    {
      [v6 setValue:&unk_1F1C6BD20 forKeyPath:@"filters.highlightBrightness.inputAmount"];
      v8 = [(PREditingButton *)self traitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        [v7 setValue:&unk_1F1C6BD30 forKeyPath:@"filters.highlightSaturation.inputAmount"];
      }
    }

    else
    {
      v10 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __34__PREditingButton_setHighlighted___block_invoke;
      v11[3] = &unk_1E7843688;
      v12 = v6;
      [v10 animateWithDuration:2 delay:v11 options:0 animations:0.3 completion:0.0];
    }
  }
}

uint64_t __34__PREditingButton_setHighlighted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setValue:&unk_1F1C6BD00 forKeyPath:@"filters.highlightBrightness.inputAmount"];
  v2 = *(a1 + 32);

  return [v2 setValue:&unk_1F1C6BD10 forKeyPath:@"filters.highlightSaturation.inputAmount"];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PREditingButton *)self isEnabled];
  v15.receiver = self;
  v15.super_class = PREditingButton;
  [(PREditingButton *)&v15 setEnabled:v3];
  if (v5 != v3)
  {
    v6 = [(PREditingButton *)self layer];
    v7 = 0.5;
    if (v3)
    {
      v7 = 1.0;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:v7 alpha:?];
    v9 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__PREditingButton_setEnabled___block_invoke;
    v12[3] = &unk_1E7843070;
    v13 = v6;
    v14 = v8;
    v10 = v8;
    v11 = v6;
    [v9 animateWithDuration:2 delay:v12 options:0 animations:0.3 completion:0.0];
  }
}

uint64_t __30__PREditingButton_setEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) CGColor];

  return [v1 setValue:v2 forKeyPath:@"filters.enabledMultiplyColor.inputColor"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.highlightBrightness.inputAmount"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.highlightSaturation.inputAmount") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.enabledMultiplyColor.inputColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PREditingButton;
    v5 = [(PREditingButton *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_applyGlassBackgroundToView:(id)a3 forStyle:(int64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      [v5 pui_setGlassBackground];
      goto LABEL_15;
    }

    if (a4 == 4)
    {
      [v5 pui_setClearGlassBackground];
      goto LABEL_15;
    }
  }

  else
  {
    switch(a4)
    {
      case 5:
        [v5 pui_setLockscreenControlGlassBackground];
        goto LABEL_15;
      case 6:
        [v5 pui_setPosterSwitcherGlassBackground];
        goto LABEL_15;
      case 7:
        [v5 pui_setHomescreenCloseGlassBackground];
        goto LABEL_15;
    }
  }

  v7 = PRLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Unexpected non-glass button style (%ld) passed to _applyGlassBackgroundToView:", &v8, 0xCu);
  }

  [v6 pui_removeGlassBackground];
LABEL_15:
}

- (void)_configureLegibilityShadowView
{
  v3 = [(PREditingButton *)self isLegibilityShadowEnabled];
  legibilityShadowView = self->_legibilityShadowView;
  if (v3)
  {
    if (!legibilityShadowView)
    {
      v5 = objc_alloc_init(PREditingButtonLegibilityShadowView);
      v6 = self->_legibilityShadowView;
      self->_legibilityShadowView = v5;

      [(PREditingButtonLegibilityShadowView *)self->_legibilityShadowView setAutoresizingMask:18];
      [(PREditingButtonLegibilityShadowView *)self->_legibilityShadowView setUserInteractionEnabled:0];
      legibilityShadowView = self->_legibilityShadowView;
    }

    v7 = [(PREditingButtonLegibilityShadowView *)legibilityShadowView superview];

    if (v7 != self)
    {
      [(PREditingButtonLegibilityShadowView *)self->_legibilityShadowView removeFromSuperview];
      [(PREditingButton *)self insertSubview:self->_legibilityShadowView belowSubview:self->_backgroundView];
    }

    [(PREditingButton *)self bounds];
    Width = CGRectGetWidth(v15);
    [(PREditingButton *)self bounds];
    Height = CGRectGetHeight(v16);
    [(PREditingButton *)self bounds];
    v18 = CGRectInset(v17, Width * -0.5, Height * -0.5);
    [(PREditingButtonLegibilityShadowView *)self->_legibilityShadowView setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
    [(UIView *)self->_backgroundView frame];
    v10 = CGRectGetWidth(v19);
    [(UIView *)self->_backgroundView frame];
    [(PREditingButtonLegibilityShadowView *)self->_legibilityShadowView configureShadowMaskWithFrame:Width + v10 * -0.5, Height + CGRectGetHeight(v20) * -0.5, v10];
    v11 = self;
    v12 = 0;
  }

  else
  {
    [(PREditingButtonLegibilityShadowView *)legibilityShadowView removeFromSuperview];
    v13 = self->_legibilityShadowView;
    self->_legibilityShadowView = 0;

    v11 = self;
    v12 = 1;
  }

  [(PREditingButton *)v11 setClipsToBounds:v12];
}

- (void)setLegibilityShadowEnabled:(BOOL)a3
{
  if (self->_legibilityShadowEnabled != a3)
  {
    self->_legibilityShadowEnabled = a3;
    [(PREditingButton *)self setNeedsLayout];
  }
}

- (void)_didInvalidateContentImageMetrics
{
  materialView = self->_materialView;
  v4 = [(PREditingButton *)self defaultContentImage];
  [(PREditingButtonMaterialView *)materialView setForegroundImage:v4];

  [(PREditingButton *)self setNeedsLayout];

  [(PREditingButton *)self layoutIfNeeded];
}

@end