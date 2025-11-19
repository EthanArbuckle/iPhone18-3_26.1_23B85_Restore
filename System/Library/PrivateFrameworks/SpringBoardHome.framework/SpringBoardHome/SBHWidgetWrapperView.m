@interface SBHWidgetWrapperView
- (BOOL)wantsStackBackdropCaptureGroup;
- (CATransform3D)hoverTransform;
- (CGSize)contentSize;
- (NSString)backdropGroupName;
- (SBHWidgetWrapperView)initWithTitleAndSubtitleVisible:(BOOL)a3;
- (id)_subititleLabelFont;
- (id)_titleLabelFont;
- (id)newPortaledShadowedWidgetView;
- (void)_applyBackgroundType;
- (void)_applyBackgroundType:(int64_t)a3 toView:(id)a4;
- (void)_contentSizeCategoryDidChange;
- (void)_updateContentSizeConstraints;
- (void)_updateHoverAnimation;
- (void)dealloc;
- (void)setBackdropGroupName:(id)a3;
- (void)setBackgroundType:(int64_t)a3;
- (void)setBackgroundView:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentView:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setExtraSpacingBetweenWidgetAndTitle:(double)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setWantsStackBackdropCaptureGroup:(BOOL)a3;
@end

@implementation SBHWidgetWrapperView

- (SBHWidgetWrapperView)initWithTitleAndSubtitleVisible:(BOOL)a3
{
  v3 = a3;
  v89[7] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = SBHWidgetWrapperView;
  v4 = [(SBHWidgetWrapperView *)&v84 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(SBHWidgetWrapperView *)v4 setClipsToBounds:0];
    v6 = [[_SBHShadowView alloc] initWithFrame:0.0, 0.0, v5->_contentSize.width, v5->_contentSize.height];
    v82 = v3;
    shadowView = v5->_shadowView;
    v5->_shadowView = &v6->super;

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    shadowedWidgetWrapperView = v5->_shadowedWidgetWrapperView;
    v5->_shadowedWidgetWrapperView = v8;

    [(UIView *)v5->_shadowedWidgetWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBHWidgetWrapperView *)v5 addSubview:v5->_shadowedWidgetWrapperView];
    v10 = [[SBHShadowedWidgetView alloc] initWithContentView:0 shadowView:v5->_shadowView perspectiveEnabled:0];
    shadowedWidgetView = v5->_shadowedWidgetView;
    v5->_shadowedWidgetView = v10;

    [(SBHShadowedWidgetView *)v5->_shadowedWidgetView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_shadowedWidgetWrapperView addSubview:v5->_shadowedWidgetView];
    v69 = MEMORY[0x1E696ACD8];
    v80 = [(UIView *)v5->_shadowedWidgetWrapperView leadingAnchor];
    v78 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
    v76 = [v80 constraintEqualToAnchor:v78 constant:0.0];
    v89[0] = v76;
    v74 = [(UIView *)v5->_shadowedWidgetWrapperView trailingAnchor];
    v73 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:0.0];
    v89[1] = v72;
    v71 = [(UIView *)v5->_shadowedWidgetWrapperView topAnchor];
    v70 = [(SBHWidgetWrapperView *)v5 topAnchor];
    v68 = [v71 constraintEqualToAnchor:v70 constant:0.0];
    v89[2] = v68;
    v67 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView leadingAnchor];
    v66 = [(UIView *)v5->_shadowedWidgetWrapperView leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66 constant:0.0];
    v89[3] = v65;
    v64 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView trailingAnchor];
    v63 = [(UIView *)v5->_shadowedWidgetWrapperView trailingAnchor];
    v12 = [v64 constraintEqualToAnchor:v63 constant:0.0];
    v89[4] = v12;
    v13 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView topAnchor];
    v14 = [(UIView *)v5->_shadowedWidgetWrapperView topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];
    v89[5] = v15;
    v16 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView bottomAnchor];
    v17 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];
    v89[6] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:7];
    [v69 activateConstraints:v19];

    if (v82)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      titleLabel = v5->_titleLabel;
      v5->_titleLabel = v20;

      [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = v5->_titleLabel;
      v23 = [(SBHWidgetWrapperView *)v5 _titleLabelFont];
      [(UILabel *)v22 setFont:v23];

      v24 = v5->_titleLabel;
      v25 = [MEMORY[0x1E69DC888] labelColor];
      [(UILabel *)v24 setTextColor:v25];

      [(UILabel *)v5->_titleLabel setNumberOfLines:0];
      [(UILabel *)v5->_titleLabel setTextAlignment:1];
      LODWORD(v26) = 1148846080;
      [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v26];
      [(SBHWidgetWrapperView *)v5 addSubview:v5->_titleLabel];
      v27 = [(UILabel *)v5->_titleLabel topAnchor];
      v28 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];
      widgetToTitleSpacingConstraint = v5->_widgetToTitleSpacingConstraint;
      v5->_widgetToTitleSpacingConstraint = v29;

      v31 = MEMORY[0x1E696ACD8];
      v32 = [(UILabel *)v5->_titleLabel leadingAnchor];
      v33 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      v88[0] = v34;
      v35 = [(UILabel *)v5->_titleLabel trailingAnchor];
      v36 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];
      v88[1] = v37;
      v88[2] = v5->_widgetToTitleSpacingConstraint;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
      [v31 activateConstraints:v38];

      v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      subtitleLabel = v5->_subtitleLabel;
      v5->_subtitleLabel = v39;

      [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v41 = v5->_subtitleLabel;
      v42 = [(SBHWidgetWrapperView *)v5 _subititleLabelFont];
      [(UILabel *)v41 setFont:v42];

      v43 = v5->_subtitleLabel;
      v44 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v43 setTextColor:v44];

      [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
      [(UILabel *)v5->_subtitleLabel setTextAlignment:1];
      LODWORD(v45) = 1148846080;
      [(UILabel *)v5->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v45];
      [(SBHWidgetWrapperView *)v5 addSubview:v5->_subtitleLabel];
      v75 = MEMORY[0x1E696ACD8];
      v83 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
      v81 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
      v79 = [v83 constraintEqualToAnchor:v81];
      v87[0] = v79;
      v77 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
      v46 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
      v47 = [v77 constraintEqualToAnchor:v46];
      v87[1] = v47;
      v48 = [(UILabel *)v5->_subtitleLabel topAnchor];
      v49 = [(UILabel *)v5->_titleLabel bottomAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];
      v87[2] = v50;
      v51 = [(UILabel *)v5->_subtitleLabel bottomAnchor];
      v52 = [(SBHWidgetWrapperView *)v5 bottomAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];
      v87[3] = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:4];
      [v75 activateConstraints:v54];

      v55 = [MEMORY[0x1E696AD88] defaultCenter];
      [v55 addObserver:v5 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

      v56 = objc_opt_self();
      v86 = v56;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      v58 = [(SBHWidgetWrapperView *)v5 registerForTraitChanges:v57 withAction:sel__contentSizeCategoryDidChange];
    }

    else
    {
      v59 = MEMORY[0x1E696ACD8];
      v56 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
      v57 = [(SBHWidgetWrapperView *)v5 bottomAnchor];
      v60 = [v56 constraintEqualToAnchor:v57 constant:0.0];
      v85 = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      [v59 activateConstraints:v61];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHWidgetWrapperView;
  [(SBHWidgetWrapperView *)&v4 dealloc];
}

- (id)newPortaledShadowedWidgetView
{
  v3 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:self->_contentView];
  [v3 setHidesSourceView:1];
  [(SBIconView *)self->_contentView bounds];
  [v3 setBounds:?];
  [v3 setAllowsBackdropGroups:1];
  v4 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:self->_shadowView];
  [v4 setHidesSourceView:1];
  [(UIView *)self->_shadowView bounds];
  [v4 setBounds:?];
  v5 = [[SBHPortaledShadowedWidgetView alloc] initWithContentView:v3 shadowView:v4 perspectiveEnabled:0];
  [(SBHShadowedWidgetView *)self->_shadowedWidgetView bounds];
  [(SBHPortaledShadowedWidgetView *)v5 setBounds:?];

  return v5;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(SBHWidgetWrapperView *)self title];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:v6];
  }
}

- (void)setSubtitle:(id)a3
{
  v6 = a3;
  v4 = [(SBHWidgetWrapperView *)self subtitle];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:v6];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v6 = v5;
    [(SBHWidgetWrapperView *)self _applyBackgroundType:0 toView:?];
    objc_storeStrong(&self->_contentView, a3);
    [(SBHShadowedWidgetView *)self->_shadowedWidgetView setContentView:v6];
    [(SBHWidgetWrapperView *)self _applyBackgroundType];
    v5 = v6;
  }
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_contentSize = &self->_contentSize;
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    p_contentSize->width = width;
    p_contentSize->height = height;
    [(SBHWidgetWrapperView *)self _updateContentSizeConstraints];
    [(SBHWidgetWrapperView *)self setNeedsLayout];
    [(SBHWidgetWrapperView *)self invalidateIntrinsicContentSize];

    [(SBHWidgetWrapperView *)self _updateHoverAnimation];
  }
}

- (void)setCornerRadius:(double)a3
{
  [(SBHShadowedWidgetView *)self->_shadowedWidgetView setCornerRadius:a3];

  [(SBHWidgetWrapperView *)self _applyBackgroundType];
}

- (void)setExtraSpacingBetweenWidgetAndTitle:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_extraSpacingBetweenWidgetAndTitle = a3;
    widgetToTitleSpacingConstraint = self->_widgetToTitleSpacingConstraint;

    [(NSLayoutConstraint *)widgetToTitleSpacingConstraint setConstant:a3 + 5.0];
  }
}

- (void)setBackgroundType:(int64_t)a3
{
  if (self->_backgroundType != a3)
  {
    self->_backgroundType = a3;
    [(SBHWidgetWrapperView *)self _applyBackgroundType];
  }
}

- (void)setBackgroundView:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    if (v5)
    {
      contentView = self->_contentView;
      if (contentView)
      {
        v26 = contentView;
        v8 = [(SBIconView *)v26 customIconImageViewController];
        v25 = [v8 view];

        [v25 insertSubview:v5 atIndex:0];
        [(SBHWidgetWrapperView *)self setBackgroundType:2];
        [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
        v20 = MEMORY[0x1E696ACD8];
        v24 = [(UIView *)v5 leadingAnchor];
        v23 = [(UIView *)self->_shadowedWidgetWrapperView leadingAnchor];
        v22 = [v24 constraintEqualToAnchor:v23 constant:4.0];
        v27[0] = v22;
        v21 = [(UIView *)v5 trailingAnchor];
        v9 = [(UIView *)self->_shadowedWidgetWrapperView trailingAnchor];
        v10 = [v21 constraintEqualToAnchor:v9 constant:-4.0];
        v27[1] = v10;
        v11 = [(UIView *)v5 topAnchor];
        v12 = [(UIView *)self->_shadowedWidgetWrapperView topAnchor];
        v13 = [v11 constraintEqualToAnchor:v12 constant:4.0];
        v27[2] = v13;
        v14 = [(UIView *)v5 bottomAnchor];
        v15 = [(UIView *)self->_shadowedWidgetWrapperView bottomAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 constant:-4.0];
        v27[3] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
        [v20 activateConstraints:v17];

        goto LABEL_7;
      }

      v18 = self->_backgroundView;
      self->_backgroundView = 0;
      v19 = 0;
    }

    [(SBHWidgetWrapperView *)self setBackgroundType:0];
  }

LABEL_7:
}

- (NSString)backdropGroupName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIView *)self->_shadowView backdropGroupName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBackdropGroupName:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_shadowView setBackdropGroupName:v4];
  }
}

- (BOOL)wantsStackBackdropCaptureGroup
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  shadowView = self->_shadowView;

  return [(UIView *)shadowView wantsStackBackdropCaptureGroup];
}

- (void)setWantsStackBackdropCaptureGroup:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shadowView = self->_shadowView;

    [(UIView *)shadowView setWantsStackBackdropCaptureGroup:v3];
  }
}

- (void)_updateContentSizeConstraints
{
  v15[2] = *MEMORY[0x1E69E9840];
  contentHeightConstraint = self->_contentHeightConstraint;
  if (!contentHeightConstraint)
  {
    v4 = [(UIView *)self->_shadowedWidgetWrapperView heightAnchor];
    v5 = [v4 constraintEqualToConstant:self->_contentSize.height];
    v6 = self->_contentHeightConstraint;
    self->_contentHeightConstraint = v5;

    contentHeightConstraint = self->_contentHeightConstraint;
  }

  p_contentSize = &self->_contentSize;
  [(NSLayoutConstraint *)contentHeightConstraint setConstant:self->_contentSize.height];
  contentWidthConstraint = self->_contentWidthConstraint;
  if (!contentWidthConstraint)
  {
    v9 = [(UIView *)self->_shadowedWidgetWrapperView widthAnchor];
    v10 = [v9 constraintEqualToConstant:p_contentSize->width];
    v11 = self->_contentWidthConstraint;
    self->_contentWidthConstraint = v10;

    contentWidthConstraint = self->_contentWidthConstraint;
  }

  [(NSLayoutConstraint *)contentWidthConstraint setConstant:p_contentSize->width];
  v12 = MEMORY[0x1E696ACD8];
  v13 = self->_contentWidthConstraint;
  v15[0] = self->_contentHeightConstraint;
  v15[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v12 activateConstraints:v14];
}

- (void)_applyBackgroundType
{
  v3 = [(SBHWidgetWrapperView *)self contentView];
  [(SBHWidgetWrapperView *)self _applyBackgroundType:[(SBHWidgetWrapperView *)self backgroundType] toView:v3];
}

- (void)_applyBackgroundType:(int64_t)a3 toView:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v8 = v6;
    v7 = [MEMORY[0x1E69DC888] blackColor];
    [v8 setBackgroundColor:v7];

    [(SBHShadowedWidgetView *)self->_shadowedWidgetView cornerRadius];
    [v8 _setContinuousCornerRadius:?];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v8 = v6;
    [v6 setBackgroundColor:0];
  }

  v6 = v8;
LABEL_6:
}

- (CATransform3D)hoverTransform
{
  v4 = [(SBHWidgetWrapperView *)self shadowedWidgetView];
  v9 = [v4 layer];

  v5 = [v9 presentationLayer];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  v7 = v6;

  if (v7)
  {
    [v7 transform];
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)_updateHoverAnimation
{
  if ([(SBHWidgetWrapperView *)self isHoverAnimationEnabled])
  {
    v3 = [(SBHWidgetWrapperView *)self window];

    shadowedWidgetView = self->_shadowedWidgetView;
    if (v3)
    {
      [(SBHShadowedWidgetView *)shadowedWidgetView setPerspectiveEnabled:1];
      v5 = dbl_1BEE85830[self->_contentSize.width > 200.0];
      v6 = arc4random_uniform(0x3E8u);
      v8[1] = 3221225472;
      v8[0] = MEMORY[0x1E69E9820];
      v8[2] = __45__SBHWidgetWrapperView__updateHoverAnimation__block_invoke;
      v8[3] = &unk_1E808A880;
      *&v8[5] = v6 * 0.001 * 8.0;
      v8[4] = self;
      v7 = _Block_copy(v8);
      v7[2](v7, @"x", -v5, v5, 8.0, 0.0);
      v7[2](v7, @"y", -v5, v5, 8.0, 0.5);
      v7[2](v7, @"z", v5 / -5.0, v5 / 5.0, 16.0, 0.25);
    }

    else
    {

      [(SBHShadowedWidgetView *)shadowedWidgetView setPerspectiveEnabled:0];
    }
  }
}

void __45__SBHWidgetWrapperView__updateHoverAnimation__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transform.rotation.%@", a2];
  v11 = [MEMORY[0x1E6979318] animationWithKeyPath:v18];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v11 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v11 setToValue:v13];

  [v11 setBeginTime:CACurrentMediaTime() - *(a1 + 40) - a6 * a5];
  [v11 setDuration:a5];
  [v11 setAutoreverses:1];
  LODWORD(v14) = 1148846080;
  [v11 setRepeatCount:v14];
  v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v11 setTimingFunction:v15];

  [v11 setAdditive:1];
  v20 = CAFrameRateRangeMake(20.0, 60.0, 20.0);
  [v11 setPreferredFrameRateRange:{*&v20.minimum, *&v20.maximum, *&v20.preferred}];
  v16 = [*(*(a1 + 32) + 448) layer];
  v17 = [v11 keyPath];
  [v16 addAnimation:v11 forKey:v17];
}

- (id)_titleLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD28];
  v5 = [(SBHWidgetWrapperView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:v6];

  return v7;
}

- (id)_subititleLabelFont
{
  v3 = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD28];
  v5 = [(SBHWidgetWrapperView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:v6];

  return v7;
}

- (void)_contentSizeCategoryDidChange
{
  v3 = [(SBHWidgetWrapperView *)self titleLabel];
  v4 = [(SBHWidgetWrapperView *)self _titleLabelFont];
  [v3 setFont:v4];

  v5 = [(SBHWidgetWrapperView *)self subtitleLabel];
  v6 = [(SBHWidgetWrapperView *)self _subititleLabelFont];
  [v5 setFont:v6];

  [(SBHWidgetWrapperView *)self setNeedsLayout];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end