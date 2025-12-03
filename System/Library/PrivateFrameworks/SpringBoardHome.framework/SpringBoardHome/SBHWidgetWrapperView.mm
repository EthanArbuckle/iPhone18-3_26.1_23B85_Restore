@interface SBHWidgetWrapperView
- (BOOL)wantsStackBackdropCaptureGroup;
- (CATransform3D)hoverTransform;
- (CGSize)contentSize;
- (NSString)backdropGroupName;
- (SBHWidgetWrapperView)initWithTitleAndSubtitleVisible:(BOOL)visible;
- (id)_subititleLabelFont;
- (id)_titleLabelFont;
- (id)newPortaledShadowedWidgetView;
- (void)_applyBackgroundType;
- (void)_applyBackgroundType:(int64_t)type toView:(id)view;
- (void)_contentSizeCategoryDidChange;
- (void)_updateContentSizeConstraints;
- (void)_updateHoverAnimation;
- (void)dealloc;
- (void)setBackdropGroupName:(id)name;
- (void)setBackgroundType:(int64_t)type;
- (void)setBackgroundView:(id)view;
- (void)setContentSize:(CGSize)size;
- (void)setContentView:(id)view;
- (void)setCornerRadius:(double)radius;
- (void)setExtraSpacingBetweenWidgetAndTitle:(double)title;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setWantsStackBackdropCaptureGroup:(BOOL)group;
@end

@implementation SBHWidgetWrapperView

- (SBHWidgetWrapperView)initWithTitleAndSubtitleVisible:(BOOL)visible
{
  visibleCopy = visible;
  v89[7] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = SBHWidgetWrapperView;
  v4 = [(SBHWidgetWrapperView *)&v84 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(SBHWidgetWrapperView *)v4 setClipsToBounds:0];
    v6 = [[_SBHShadowView alloc] initWithFrame:0.0, 0.0, v5->_contentSize.width, v5->_contentSize.height];
    v82 = visibleCopy;
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
    leadingAnchor = [(UIView *)v5->_shadowedWidgetWrapperView leadingAnchor];
    leadingAnchor2 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v89[0] = v76;
    trailingAnchor = [(UIView *)v5->_shadowedWidgetWrapperView trailingAnchor];
    trailingAnchor2 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
    v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v89[1] = v72;
    topAnchor = [(UIView *)v5->_shadowedWidgetWrapperView topAnchor];
    topAnchor2 = [(SBHWidgetWrapperView *)v5 topAnchor];
    v68 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v89[2] = v68;
    leadingAnchor3 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView leadingAnchor];
    leadingAnchor4 = [(UIView *)v5->_shadowedWidgetWrapperView leadingAnchor];
    v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    v89[3] = v65;
    trailingAnchor3 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView trailingAnchor];
    trailingAnchor4 = [(UIView *)v5->_shadowedWidgetWrapperView trailingAnchor];
    v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    v89[4] = v12;
    topAnchor3 = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView topAnchor];
    topAnchor4 = [(UIView *)v5->_shadowedWidgetWrapperView topAnchor];
    v15 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    v89[5] = v15;
    bottomAnchor = [(SBHShadowedWidgetView *)v5->_shadowedWidgetView bottomAnchor];
    bottomAnchor2 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
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
      _titleLabelFont = [(SBHWidgetWrapperView *)v5 _titleLabelFont];
      [(UILabel *)v22 setFont:_titleLabelFont];

      v24 = v5->_titleLabel;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UILabel *)v24 setTextColor:labelColor];

      [(UILabel *)v5->_titleLabel setNumberOfLines:0];
      [(UILabel *)v5->_titleLabel setTextAlignment:1];
      LODWORD(v26) = 1148846080;
      [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v26];
      [(SBHWidgetWrapperView *)v5 addSubview:v5->_titleLabel];
      topAnchor5 = [(UILabel *)v5->_titleLabel topAnchor];
      bottomAnchor3 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
      v29 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:5.0];
      widgetToTitleSpacingConstraint = v5->_widgetToTitleSpacingConstraint;
      v5->_widgetToTitleSpacingConstraint = v29;

      v31 = MEMORY[0x1E696ACD8];
      leadingAnchor5 = [(UILabel *)v5->_titleLabel leadingAnchor];
      leadingAnchor6 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
      v34 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v88[0] = v34;
      trailingAnchor5 = [(UILabel *)v5->_titleLabel trailingAnchor];
      trailingAnchor6 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
      v37 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v88[1] = v37;
      v88[2] = v5->_widgetToTitleSpacingConstraint;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
      [v31 activateConstraints:v38];

      v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      subtitleLabel = v5->_subtitleLabel;
      v5->_subtitleLabel = v39;

      [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v41 = v5->_subtitleLabel;
      _subititleLabelFont = [(SBHWidgetWrapperView *)v5 _subititleLabelFont];
      [(UILabel *)v41 setFont:_subititleLabelFont];

      v43 = v5->_subtitleLabel;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v43 setTextColor:secondaryLabelColor];

      [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
      [(UILabel *)v5->_subtitleLabel setTextAlignment:1];
      LODWORD(v45) = 1148846080;
      [(UILabel *)v5->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v45];
      [(SBHWidgetWrapperView *)v5 addSubview:v5->_subtitleLabel];
      v75 = MEMORY[0x1E696ACD8];
      leadingAnchor7 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
      leadingAnchor8 = [(SBHWidgetWrapperView *)v5 leadingAnchor];
      v79 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      v87[0] = v79;
      trailingAnchor7 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
      trailingAnchor8 = [(SBHWidgetWrapperView *)v5 trailingAnchor];
      v47 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v87[1] = v47;
      topAnchor6 = [(UILabel *)v5->_subtitleLabel topAnchor];
      bottomAnchor4 = [(UILabel *)v5->_titleLabel bottomAnchor];
      v50 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4];
      v87[2] = v50;
      bottomAnchor5 = [(UILabel *)v5->_subtitleLabel bottomAnchor];
      bottomAnchor6 = [(SBHWidgetWrapperView *)v5 bottomAnchor];
      v53 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v87[3] = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:4];
      [v75 activateConstraints:v54];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

      bottomAnchor7 = objc_opt_self();
      v86 = bottomAnchor7;
      bottomAnchor8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
      v58 = [(SBHWidgetWrapperView *)v5 registerForTraitChanges:bottomAnchor8 withAction:sel__contentSizeCategoryDidChange];
    }

    else
    {
      v59 = MEMORY[0x1E696ACD8];
      bottomAnchor7 = [(UIView *)v5->_shadowedWidgetWrapperView bottomAnchor];
      bottomAnchor8 = [(SBHWidgetWrapperView *)v5 bottomAnchor];
      v60 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:0.0];
      v85 = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
      [v59 activateConstraints:v61];
    }
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

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

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SBHWidgetWrapperView *)self title];
  v5 = [title isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(SBHWidgetWrapperView *)self subtitle];
  v5 = [subtitle isEqualToString:subtitleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    v6 = viewCopy;
    [(SBHWidgetWrapperView *)self _applyBackgroundType:0 toView:?];
    objc_storeStrong(&self->_contentView, view);
    [(SBHShadowedWidgetView *)self->_shadowedWidgetView setContentView:v6];
    [(SBHWidgetWrapperView *)self _applyBackgroundType];
    viewCopy = v6;
  }
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setCornerRadius:(double)radius
{
  [(SBHShadowedWidgetView *)self->_shadowedWidgetView setCornerRadius:radius];

  [(SBHWidgetWrapperView *)self _applyBackgroundType];
}

- (void)setExtraSpacingBetweenWidgetAndTitle:(double)title
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_extraSpacingBetweenWidgetAndTitle = title;
    widgetToTitleSpacingConstraint = self->_widgetToTitleSpacingConstraint;

    [(NSLayoutConstraint *)widgetToTitleSpacingConstraint setConstant:title + 5.0];
  }
}

- (void)setBackgroundType:(int64_t)type
{
  if (self->_backgroundType != type)
  {
    self->_backgroundType = type;
    [(SBHWidgetWrapperView *)self _applyBackgroundType];
  }
}

- (void)setBackgroundView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    if (viewCopy)
    {
      contentView = self->_contentView;
      if (contentView)
      {
        v26 = contentView;
        customIconImageViewController = [(SBIconView *)v26 customIconImageViewController];
        view = [customIconImageViewController view];

        [view insertSubview:viewCopy atIndex:0];
        [(SBHWidgetWrapperView *)self setBackgroundType:2];
        [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
        v20 = MEMORY[0x1E696ACD8];
        leadingAnchor = [(UIView *)viewCopy leadingAnchor];
        leadingAnchor2 = [(UIView *)self->_shadowedWidgetWrapperView leadingAnchor];
        v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
        v27[0] = v22;
        trailingAnchor = [(UIView *)viewCopy trailingAnchor];
        trailingAnchor2 = [(UIView *)self->_shadowedWidgetWrapperView trailingAnchor];
        v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
        v27[1] = v10;
        topAnchor = [(UIView *)viewCopy topAnchor];
        topAnchor2 = [(UIView *)self->_shadowedWidgetWrapperView topAnchor];
        v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
        v27[2] = v13;
        bottomAnchor = [(UIView *)viewCopy bottomAnchor];
        bottomAnchor2 = [(UIView *)self->_shadowedWidgetWrapperView bottomAnchor];
        v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
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
    backdropGroupName = [(UIView *)self->_shadowView backdropGroupName];
  }

  else
  {
    backdropGroupName = 0;
  }

  return backdropGroupName;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_shadowView setBackdropGroupName:nameCopy];
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

- (void)setWantsStackBackdropCaptureGroup:(BOOL)group
{
  groupCopy = group;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shadowView = self->_shadowView;

    [(UIView *)shadowView setWantsStackBackdropCaptureGroup:groupCopy];
  }
}

- (void)_updateContentSizeConstraints
{
  v15[2] = *MEMORY[0x1E69E9840];
  contentHeightConstraint = self->_contentHeightConstraint;
  if (!contentHeightConstraint)
  {
    heightAnchor = [(UIView *)self->_shadowedWidgetWrapperView heightAnchor];
    v5 = [heightAnchor constraintEqualToConstant:self->_contentSize.height];
    v6 = self->_contentHeightConstraint;
    self->_contentHeightConstraint = v5;

    contentHeightConstraint = self->_contentHeightConstraint;
  }

  p_contentSize = &self->_contentSize;
  [(NSLayoutConstraint *)contentHeightConstraint setConstant:self->_contentSize.height];
  contentWidthConstraint = self->_contentWidthConstraint;
  if (!contentWidthConstraint)
  {
    widthAnchor = [(UIView *)self->_shadowedWidgetWrapperView widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:p_contentSize->width];
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
  contentView = [(SBHWidgetWrapperView *)self contentView];
  [(SBHWidgetWrapperView *)self _applyBackgroundType:[(SBHWidgetWrapperView *)self backgroundType] toView:contentView];
}

- (void)_applyBackgroundType:(int64_t)type toView:(id)view
{
  viewCopy = view;
  if (type == 1)
  {
    v8 = viewCopy;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [v8 setBackgroundColor:blackColor];

    [(SBHShadowedWidgetView *)self->_shadowedWidgetView cornerRadius];
    [v8 _setContinuousCornerRadius:?];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v8 = viewCopy;
    [viewCopy setBackgroundColor:0];
  }

  viewCopy = v8;
LABEL_6:
}

- (CATransform3D)hoverTransform
{
  shadowedWidgetView = [(SBHWidgetWrapperView *)self shadowedWidgetView];
  layer = [shadowedWidgetView layer];

  presentationLayer = [layer presentationLayer];
  if (presentationLayer)
  {
    v6 = presentationLayer;
  }

  else
  {
    v6 = layer;
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
    window = [(SBHWidgetWrapperView *)self window];

    shadowedWidgetView = self->_shadowedWidgetView;
    if (window)
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
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD28];
  traitCollection = [(SBHWidgetWrapperView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (id)_subititleLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDD28];
  traitCollection = [(SBHWidgetWrapperView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:1 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (void)_contentSizeCategoryDidChange
{
  titleLabel = [(SBHWidgetWrapperView *)self titleLabel];
  _titleLabelFont = [(SBHWidgetWrapperView *)self _titleLabelFont];
  [titleLabel setFont:_titleLabelFont];

  subtitleLabel = [(SBHWidgetWrapperView *)self subtitleLabel];
  _subititleLabelFont = [(SBHWidgetWrapperView *)self _subititleLabelFont];
  [subtitleLabel setFont:_subititleLabelFont];

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