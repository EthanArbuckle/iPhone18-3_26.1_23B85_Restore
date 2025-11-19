@interface _UIFloatingTabBarItemView
+ (id)_jitterRotationAnimationWithAmount:(double)a3;
+ (id)_jitterXTranslationAnimationWithAmount:(double)a3;
+ (id)_jitterYTranslationAnimationWithAmount:(double)a3;
+ (id)dragPreviewForItem:(id)a3 userInterfaceStyle:(int64_t)a4;
- (BOOL)_hasValidCompactRepresentation;
- (BOOL)_isEffectivelyEditing;
- (BOOL)_showsTitleLabel;
- (BOOL)_wantsBackground;
- (BOOL)isCustomizableItem;
- (BOOL)isDisabled;
- (CGSize)_imageFittingSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIFloatingTabBarItemView)initWithCoder:(id)a3;
- (_UIFloatingTabBarItemView)initWithFrame:(CGRect)a3;
- (double)titleOpacity;
- (id)_currentPlatformMetrics;
- (unint64_t)accessibilityTraits;
- (void)_createViewHierarchy;
- (void)_updateFontAndColors;
- (void)_updateImage;
- (void)_updateJigglingState;
- (void)layoutSubviews;
- (void)reloadItemView;
- (void)setDragged:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHasSelectionHighlight:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setPreferredDisplayMode:(int64_t)a3;
- (void)setSuppressJiggleAnimation:(BOOL)a3;
- (void)setTitleOpacity:(double)a3;
@end

@implementation _UIFloatingTabBarItemView

+ (id)dragPreviewForItem:(id)a3 userInterfaceStyle:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_UIFloatingTabBarItemView);
  v7 = [(UIView *)v6 traitOverrides];
  [v7 setUserInterfaceStyle:a4];

  [(_UIFloatingTabBarItemView *)v6 setDragged:1];
  [(_UIFloatingTabBarItemView *)v6 setEditing:1];
  [(_UIFloatingTabBarItemView *)v6 setItem:v5];

  [(UIView *)v6 sizeToFit];
  [(UIView *)v6 updateTraitsIfNeeded];
  v8 = objc_alloc_init(UIDragPreviewParameters);
  v9 = +[UIColor secondarySystemBackgroundColor];
  v10 = [(UIView *)v6 traitCollection];
  v11 = [v9 resolvedColorWithTraitCollection:v10];
  [(UIPreviewParameters *)v8 setBackgroundColor:v11];

  [(UIView *)v6 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UIView *)v6 bounds];
  v21 = [UIBezierPath _bezierPathWithPillRect:v13 cornerRadius:v15, v17, v19, v20 * 0.5];
  [(UIPreviewParameters *)v8 setVisiblePath:v21];

  v22 = [[UIDragPreview alloc] initWithView:v6 parameters:v8];

  return v22;
}

- (_UIFloatingTabBarItemView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBarItemView *)v3 _createViewHierarchy];
  }

  return v4;
}

- (_UIFloatingTabBarItemView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemView;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBarItemView *)v3 _createViewHierarchy];
  }

  return v4;
}

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);

  [(_UIFloatingTabBarItemView *)self reloadItemView];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setSuppressJiggleAnimation:(BOOL)a3
{
  if (self->_suppressJiggleAnimation != a3)
  {
    self->_suppressJiggleAnimation = a3;
    [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  }
}

- (void)setDragged:(BOOL)a3
{
  if (self->_dragged != a3)
  {
    self->_dragged = a3;
    [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  }
}

- (void)setHasSelectionHighlight:(BOOL)a3
{
  if (self->_hasSelectionHighlight != a3)
  {
    self->_hasSelectionHighlight = a3;
    [(_UIFloatingTabBarItemView *)self _updateImage];

    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setPreferredDisplayMode:(int64_t)a3
{
  if (self->_preferredDisplayMode != a3)
  {
    self->_preferredDisplayMode = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)titleOpacity
{
  v2 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setTitleOpacity:(double)a3
{
  v4 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v4 setAlpha:a3];
}

- (void)reloadItemView
{
  v3 = [(UIView *)self layer];
  [v3 setAllowsGroupOpacity:0];

  v4 = [(_UIFloatingTabBarItemView *)self _hasValidCompactRepresentation];
  v5 = [(_UIFloatingTabBarItemView *)self item];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 _compactRepresentation];
    v20 = [v7 title];
  }

  else
  {
    v20 = [v5 title];
  }

  if ([(__CFString *)v20 length])
  {
    v8 = v20;
  }

  else
  {

    v8 = @" ";
  }

  v21 = v8;
  [(UILabel *)self->_titleLabel setText:?];
  [(_UIFloatingTabBarItemView *)self _updateImage];
  v9 = [(_UIFloatingTabBarItemView *)self _showsTitleLabel];
  v10 = [(_UIFloatingTabBarItemView *)self _showsImageView];
  v11 = [(UIView *)self->_titleLabel superview];

  if (v9)
  {
    if (!v11)
    {
      [(UIView *)self addSubview:self->_titleLabel];
    }
  }

  else if (v11)
  {
    [(UIView *)self->_titleLabel removeFromSuperview];
  }

  v12 = [(UIView *)self->_imageView superview];

  if (v10)
  {
    if (!v12)
    {
      [(UIView *)self addSubview:self->_imageView];
    }
  }

  else if (v12)
  {
    [(UIView *)self->_imageView removeFromSuperview];
  }

  v13 = [(_UIFloatingTabBarItemView *)self item];
  v14 = [v13 badgeValue];

  v15 = [v14 length];
  badgeView = self->_badgeView;
  if (v15)
  {
    if (!badgeView)
    {
      v17 = objc_opt_new();
      v18 = self->_badgeView;
      self->_badgeView = v17;

      [(UIView *)self addSubview:self->_badgeView];
      badgeView = self->_badgeView;
    }

    [(_UIBarBadgeView *)badgeView setText:v14];
  }

  else if (badgeView)
  {
    [(UIView *)badgeView removeFromSuperview];
    v19 = self->_badgeView;
    self->_badgeView = 0;
  }

  [(UIView *)self setNeedsLayout];
  [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_UIFloatingTabBarItemView *)self _showsTitleLabel:a3.width];
  v5 = [(_UIFloatingTabBarItemView *)self _showsImageView];
  v6 = [(UIView *)self traitCollection];
  v7 = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  [v7 imageMargins];
  v9 = v8;
  v11 = v10;
  [v7 titleMargins];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(_UIFloatingTabBarItemView *)self titleLabel];
  v21 = [v20 font];

  v22 = [v7 contentFont];
  v23 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v23 setFont:v22];

  v24 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v7 maximumContentWidth];
  v26 = v25;
  v27 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v24 textRectForBounds:objc_msgSend(v27 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, v26, 1.79769313e308}];
  v29 = v28;
  v31 = v30;

  v32 = v29 - (-v19 - v15);
  v33 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v33 setFont:v21];

  if (v5)
  {
    [(_UIFloatingTabBarItemView *)self _imageFittingSize];
    v35 = v34 - (-v11 - v9);
    if (v4)
    {
      v36 = v35 - v11;
      [v7 imageAndTitleSpacing];
      v38 = v32 - v15 + v36 + v37;
      goto LABEL_10;
    }
  }

  else
  {
    v35 = *MEMORY[0x1E695F060];
  }

  v39 = 0.0;
  if (v4)
  {
    v39 = v32;
  }

  if (v5)
  {
    v38 = v35;
  }

  else
  {
    v38 = v39;
  }

LABEL_10:
  [v7 maximumContentWidth];
  if (v38 > v40)
  {
    [v7 maximumContentWidth];
    v38 = v41;
  }

  v42 = v31 - (-v17 - v13);
  [v6 displayScale];
  v44 = v43;
  UICeilToScale(v38, v43);
  v46 = v45;
  UICeilToScale(v42, v44);
  v48 = v47;

  v49 = v46;
  v50 = v48;
  result.height = v50;
  result.width = v49;
  return result;
}

- (void)layoutSubviews
{
  *&recta.origin.y = self;
  *&recta.size.width = _UIFloatingTabBarItemView;
  [(CGFloat *)&recta.origin.y layoutSubviews];
  v3 = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  [v3 imageMargins];
  v5 = v4;
  [v3 titleMargins];
  v106 = v7;
  v107 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self->_titleLabel superview];
  if (v12)
  {
    titleLabel = self->_titleLabel;
    [(UIView *)self bounds];
    [(UILabel *)titleLabel sizeThatFits:v14, v15];
    v17 = v16;
    v108 = v18;
  }

  else
  {
    v17 = *MEMORY[0x1E695F060];
    v108 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = [(UIView *)self->_imageView superview];
  if (v19)
  {
    imageView = self->_imageView;
    [(UIView *)self bounds];
    [(UIImageView *)imageView sizeThatFits:v21, v22];
    v111 = v24;
    v112 = v23;
  }

  else
  {
    v111 = *(MEMORY[0x1E695F060] + 8);
    v112 = *MEMORY[0x1E695F060];
  }

  v25 = [(_UIFloatingTabBarItemView *)self imageView];
  v26 = [v25 image];
  v27 = [v26 _isSymbolImage];

  v28 = [(UIView *)self->_imageView superview];
  if (v28)
  {
    [(_UIFloatingTabBarItemView *)self _imageFittingSize];
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v30 = *MEMORY[0x1E695F060];
    v32 = *(MEMORY[0x1E695F060] + 8);
  }

  [(UIView *)self bounds];
  v35 = round(v34 + (v33 - v32) * 0.5);
  v36 = 0.0;
  v109 = v35;
  v110 = v5;
  if ((v27 & 1) == 0)
  {
    v37 = v5;
    v38 = v30;
    v39 = v32;
    v114 = CGRectInset(*(&v35 - 1), -2.0, -2.0);
    width = v114.size.width;
    v41 = v11;
    v42 = v9;
    v43 = v17;
    height = v114.size.height;
    if (v111 < v32 && v112 < v30)
    {
      v46 = 4;
    }

    else
    {
      v46 = 1;
    }

    v47 = [(_UIFloatingTabBarItemView *)self imageView:v112];
    [v47 setContentMode:v46];

    v36 = fmin(width, height) * 0.5;
    v111 = height;
    v112 = width;
    v17 = v43;
    v9 = v42;
    v11 = v41;
  }

  v48 = [(_UIFloatingTabBarItemView *)self imageView];
  [v48 _setCornerRadius:v36];

  [(UIView *)self bounds];
  recta.origin.x = v9 + v49;
  v51 = v107 + v50;
  v53 = v52 - (v9 + v11);
  v55 = v54 - (v107 + v106);
  v56 = [(UIView *)self->_imageView superview];
  if (v56)
  {
    v57 = v56;
    v58 = [(UIView *)self->_titleLabel superview];

    if (v58)
    {
      v115.origin.y = v109;
      v115.origin.x = v110;
      v115.size.width = v30;
      v115.size.height = v32;
      v59 = v51;
      v60 = v17;
      MaxX = CGRectGetMaxX(v115);
      [v3 imageAndTitleSpacing];
      v63 = MaxX + v62;
      v17 = v60;
      v51 = v59;
      v116.origin.x = recta.origin.x;
      v116.origin.y = v59;
      v116.size.width = v53;
      v116.size.height = v55;
      v53 = CGRectGetMaxX(v116) - v63;
      recta.origin.x = v63;
    }
  }

  if (v17 > v53 + 8.0)
  {
    v17 = v53 + 8.0;
  }

  v64 = [(_UIFloatingTabBarItemView *)self imageView];
  v65 = [v64 _hasBaseline];

  v66 = [(_UIFloatingTabBarItemView *)self imageView];
  if (v65)
  {
    [v66 frameForAlignmentRect:{v110, v109, v30, v32}];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = [(_UIFloatingTabBarItemView *)self imageView];
    [v75 setFrame:{v68, v70, v72, v74}];
  }

  else
  {
    [v66 setFrame:{v110 + (v30 - v112) * 0.5, v109 + (v32 - v111) * 0.5, v112, v111}];
  }

  v76 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v76 setFrame:{recta.origin.x + (v53 - v17) * 0.5, v51 + (v55 - v108) * 0.5, v17, v108}];

  [(UIView *)self bounds];
  v79 = v78 + v77 * 0.5;
  v82 = v81 + v80 * 0.5;
  v83 = [(_UIFloatingTabBarItemView *)self backgroundView];
  [v83 setCenter:{v79, v82}];

  [(UIView *)self bounds];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = [(_UIFloatingTabBarItemView *)self backgroundView];
  [v92 setBounds:{v85, v87, v89, v91}];

  v93 = [(_UIFloatingTabBarItemView *)self badgeView];
  v94 = v93;
  if (v93)
  {
    [v93 sizeToFit];
    v95 = [(UIView *)self _shouldReverseLayoutDirection];
    [v3 badgeOffset];
    v97 = v96;
    v99 = v98;
    [v94 bounds];
    v101 = v100;
    v103 = v102;
    if (v95)
    {
      v104 = -v97;
    }

    else
    {
      [(UIView *)self bounds];
      v105 = CGRectGetWidth(v117);
      v118.origin.x = 0.0;
      v118.origin.y = 0.0;
      v118.size.width = v101;
      v118.size.height = v103;
      v104 = v97 + v105 - CGRectGetWidth(v118);
    }

    [v94 setFrame:{v104, v99, v101, v103}];
  }
}

- (BOOL)_hasValidCompactRepresentation
{
  v2 = [(_UIFloatingTabBarItemView *)self item];
  v3 = [v2 _compactRepresentation];

  v4 = [v3 title];
  if ([v4 length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 image];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)_showsTitleLabel
{
  v3 = [(_UIFloatingTabBarItemView *)self _hasValidCompactRepresentation];
  v4 = [(_UIFloatingTabBarItemView *)self item];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 _compactRepresentation];
    v7 = [v6 title];
  }

  else
  {
    v7 = [v4 title];
  }

  v8 = -[_UIFloatingTabBarItemView preferredDisplayMode](self, "preferredDisplayMode") != 2 && [v7 length] != 0;
  return v8;
}

- (CGSize)_imageFittingSize
{
  v3 = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  v4 = [(_UIFloatingTabBarItemView *)self imageView];
  v5 = [v4 image];
  v6 = [v5 _isSymbolImage];

  if (v6)
  {
    v7 = [(_UIFloatingTabBarItemView *)self imageView];
    [v7 intrinsicContentSize];
  }

  else
  {
    v7 = [(UIView *)self traitCollection];
    [v3 scaledImageSizeForTraitCollection:v7];
  }

  v10 = v8;
  v11 = v9;

  [(UIView *)self _currentScreenScale];
  v13 = UISizeRoundToScale(v10, v11, v12);
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_updateImage
{
  if ([(_UIFloatingTabBarItemView *)self _hasValidCompactRepresentation])
  {
    v3 = [(_UIFloatingTabBarItemView *)self item];
    v4 = [v3 _compactRepresentation];
    v7 = [v4 image];

    goto LABEL_5;
  }

  if ([(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    v3 = [(_UIFloatingTabBarItemView *)self item];
    v7 = [v3 selectedImage];
LABEL_5:

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v5 = [(_UIFloatingTabBarItemView *)self item];
  v7 = [v5 image];

LABEL_7:
  v6 = [(_UIFloatingTabBarItemView *)self imageView];
  [v6 setImage:v7];
}

- (void)_createViewHierarchy
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  v5 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v7 = objc_alloc_init(_UITabSelectionView);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;

  v9 = [(UIView *)self->_backgroundView layer];
  [v9 setShadowPathIsBounds:1];

  [(UIView *)self->_backgroundView _setShouldAdaptToMaterials:0];
  [(UIView *)self addSubview:self->_backgroundView];
  [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  v18[0] = 0x1EFE323B0;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v11 = [(UIView *)self _registerForTraitTokenChanges:v10 withHandler:&__block_literal_global_674];

  v17 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v13 = [(UIView *)self registerForTraitChanges:v12 withHandler:&__block_literal_global_17_9];

  v16 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v15 = [(UIView *)self registerForTraitChanges:v14 withHandler:&__block_literal_global_20_10];
}

- (BOOL)_isEffectivelyEditing
{
  v3 = [(_UIFloatingTabBarItemView *)self isEditing];
  if (v3)
  {
    LOBYTE(v3) = ![(_UIFloatingTabBarItemView *)self suppressEditing];
  }

  return v3;
}

- (BOOL)isCustomizableItem
{
  v2 = [(_UIFloatingTabBarItemView *)self item];
  v3 = [v2 _hasCustomizablePlacement];

  return v3;
}

- (BOOL)isDisabled
{
  v2 = [(_UIFloatingTabBarItemView *)self item];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (BOOL)_wantsBackground
{
  if ([(_UIFloatingTabBarItemView *)self isEditing])
  {
    if ([(_UIFloatingTabBarItemView *)self suppressEditing])
    {
      return 0;
    }

    else
    {

      return [(_UIFloatingTabBarItemView *)self isCustomizableItem];
    }
  }

  else
  {
    v4 = [(UIView *)self traitCollection];
    v5 = [v4 valueForNSIntegerTrait:objc_opt_class()];

    result = [(_UIFloatingTabBarItemView *)self hasSelectionHighlight];
    if (v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateFontAndColors
{
  v3 = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  v4 = [v3 contentPaletteProvider];
  v5 = [(UIView *)self traitCollection];
  v6 = v4[2](v4, [v5 userInterfaceStyle]);

  v7 = [v6 resolvedColorFromProvider:self];
  if ([(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| ![(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    v8 = [v3 contentFont];
  }

  else
  {
    v8 = [v3 selectedContentFont];
  }

  v9 = v8;
  if ([(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| ![(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    v10 = [v3 symbolConfiguration];
  }

  else
  {
    v10 = [v3 selectedSymbolConfiguration];
  }

  v11 = v10;
  v12 = +[_UITraitMonochromaticTreatment _glassMonochromaticTreatment];
  if ([(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    v13 = 0;
  }

  else
  {
    v13 = [(_UIFloatingTabBarItemView *)self isDisabled]^ 1;
  }

  v14 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v14 _setMonochromaticTreatment:v12];

  v15 = [(_UIFloatingTabBarItemView *)self imageView];
  [v15 _setMonochromaticTreatment:v12];

  v16 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v16 _setEnableMonochromaticTreatment:v13];

  v17 = [(_UIFloatingTabBarItemView *)self imageView];
  [v17 _setEnableMonochromaticTreatment:v13];

  v18 = [(_UIFloatingTabBarItemView *)self _wantsBackground];
  v19 = [(_UIFloatingTabBarItemView *)self backgroundView];
  [v19 setHidden:!v18];

  [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  v20 = [(_UIFloatingTabBarItemView *)self _isEffectivelyEditing];
  v21 = [(_UIFloatingTabBarItemView *)self badgeView];
  [v21 setHidden:v20];

  v22 = [(_UIFloatingTabBarItemView *)self imageView];
  v23 = [v22 tintColor];
  if ([v23 isEqual:v7])
  {
    v24 = [(_UIFloatingTabBarItemView *)self titleLabel];
    [v24 font];
    v25 = v11;
    v27 = v26 = v6;
    v30 = [v27 isEqual:v9];

    v6 = v26;
    v11 = v25;

    if (v30)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49___UIFloatingTabBarItemView__updateFontAndColors__block_invoke;
  v31[3] = &unk_1E70F35B8;
  v31[4] = self;
  v32 = v7;
  [UIView performWithoutAnimation:v31];
  v28 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [v28 setFont:v9];

  v29 = [(_UIFloatingTabBarItemView *)self imageView];
  [v29 setPreferredSymbolConfiguration:v11];

  [(UIView *)self setNeedsLayout];
LABEL_17:
}

- (id)_currentPlatformMetrics
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([v2 userInterfaceIdiom]);

  return v3;
}

- (void)_updateJigglingState
{
  if (![(_UIFloatingTabBarItemView *)self _wantsBackground]|| ![(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| [(_UIFloatingTabBarItemView *)self isDragged])
  {
    v3 = [(UIView *)self layer];
LABEL_5:
    v12 = v3;
    [v3 removeAllAnimations];
    goto LABEL_6;
  }

  v4 = [(_UIFloatingTabBarItemView *)self suppressJiggleAnimation];
  v3 = [(UIView *)self layer];
  if (v4)
  {
    goto LABEL_5;
  }

  v12 = v3;
  v5 = [v3 animationKeys];
  v6 = [v5 containsObject:@"RotationJitterAnimation"];

  if ((v6 & 1) == 0)
  {
    [(UIView *)self bounds];
    v7 = 80.0 / CGRectGetWidth(v14);
    if (v7 <= 1.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = [objc_opt_class() _jitterRotationAnimationWithStrength:v8];
    v10 = [objc_opt_class() _jitterXTranslationAnimationWithStrength:1.0];
    v11 = [objc_opt_class() _jitterYTranslationAnimationWithStrength:1.0];
    [v12 addAnimation:v9 forKey:@"RotationJitterAnimation"];
    [v12 addAnimation:v10 forKey:@"XTranslationJitterAnimation"];
    [v12 addAnimation:v11 forKey:@"YTranslationJitterAnimation"];
  }

LABEL_6:
}

+ (id)_jitterXTranslationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v4 setDuration:0.134];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

+ (id)_jitterYTranslationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v4 setDuration:0.142];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

+ (id)_jitterRotationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v4 setDuration:0.128];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarItemView;
  v3 = [&v7 accessibilityTraits];
  v4 = [(_UIFloatingTabBarItemView *)self isHighlighted];
  v5 = 8;
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5 | 1;
}

@end