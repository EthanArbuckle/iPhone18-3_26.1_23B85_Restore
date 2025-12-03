@interface _UIFloatingTabBarItemView
+ (id)_jitterRotationAnimationWithAmount:(double)amount;
+ (id)_jitterXTranslationAnimationWithAmount:(double)amount;
+ (id)_jitterYTranslationAnimationWithAmount:(double)amount;
+ (id)dragPreviewForItem:(id)item userInterfaceStyle:(int64_t)style;
- (BOOL)_hasValidCompactRepresentation;
- (BOOL)_isEffectivelyEditing;
- (BOOL)_showsTitleLabel;
- (BOOL)_wantsBackground;
- (BOOL)isCustomizableItem;
- (BOOL)isDisabled;
- (CGSize)_imageFittingSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIFloatingTabBarItemView)initWithCoder:(id)coder;
- (_UIFloatingTabBarItemView)initWithFrame:(CGRect)frame;
- (double)titleOpacity;
- (id)_currentPlatformMetrics;
- (unint64_t)accessibilityTraits;
- (void)_createViewHierarchy;
- (void)_updateFontAndColors;
- (void)_updateImage;
- (void)_updateJigglingState;
- (void)layoutSubviews;
- (void)reloadItemView;
- (void)setDragged:(BOOL)dragged;
- (void)setEditing:(BOOL)editing;
- (void)setHasSelectionHighlight:(BOOL)highlight;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setPreferredDisplayMode:(int64_t)mode;
- (void)setSuppressJiggleAnimation:(BOOL)animation;
- (void)setTitleOpacity:(double)opacity;
@end

@implementation _UIFloatingTabBarItemView

+ (id)dragPreviewForItem:(id)item userInterfaceStyle:(int64_t)style
{
  itemCopy = item;
  v6 = objc_alloc_init(_UIFloatingTabBarItemView);
  traitOverrides = [(UIView *)v6 traitOverrides];
  [traitOverrides setUserInterfaceStyle:style];

  [(_UIFloatingTabBarItemView *)v6 setDragged:1];
  [(_UIFloatingTabBarItemView *)v6 setEditing:1];
  [(_UIFloatingTabBarItemView *)v6 setItem:itemCopy];

  [(UIView *)v6 sizeToFit];
  [(UIView *)v6 updateTraitsIfNeeded];
  v8 = objc_alloc_init(UIDragPreviewParameters);
  v9 = +[UIColor secondarySystemBackgroundColor];
  traitCollection = [(UIView *)v6 traitCollection];
  v11 = [v9 resolvedColorWithTraitCollection:traitCollection];
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

- (_UIFloatingTabBarItemView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBarItemView *)v3 _createViewHierarchy];
  }

  return v4;
}

- (_UIFloatingTabBarItemView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBarItemView *)v3 _createViewHierarchy];
  }

  return v4;
}

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);

  [(_UIFloatingTabBarItemView *)self reloadItemView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setSuppressJiggleAnimation:(BOOL)animation
{
  if (self->_suppressJiggleAnimation != animation)
  {
    self->_suppressJiggleAnimation = animation;
    [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  }
}

- (void)setDragged:(BOOL)dragged
{
  if (self->_dragged != dragged)
  {
    self->_dragged = dragged;
    [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  }
}

- (void)setHasSelectionHighlight:(BOOL)highlight
{
  if (self->_hasSelectionHighlight != highlight)
  {
    self->_hasSelectionHighlight = highlight;
    [(_UIFloatingTabBarItemView *)self _updateImage];

    [(_UIFloatingTabBarItemView *)self _updateFontAndColors];
  }
}

- (void)setPreferredDisplayMode:(int64_t)mode
{
  if (self->_preferredDisplayMode != mode)
  {
    self->_preferredDisplayMode = mode;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)titleOpacity
{
  titleLabel = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel alpha];
  v4 = v3;

  return v4;
}

- (void)setTitleOpacity:(double)opacity
{
  titleLabel = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel setAlpha:opacity];
}

- (void)reloadItemView
{
  layer = [(UIView *)self layer];
  [layer setAllowsGroupOpacity:0];

  _hasValidCompactRepresentation = [(_UIFloatingTabBarItemView *)self _hasValidCompactRepresentation];
  item = [(_UIFloatingTabBarItemView *)self item];
  v6 = item;
  if (_hasValidCompactRepresentation)
  {
    _compactRepresentation = [item _compactRepresentation];
    title = [_compactRepresentation title];
  }

  else
  {
    title = [item title];
  }

  if ([(__CFString *)title length])
  {
    v8 = title;
  }

  else
  {

    v8 = @" ";
  }

  v21 = v8;
  [(UILabel *)self->_titleLabel setText:?];
  [(_UIFloatingTabBarItemView *)self _updateImage];
  _showsTitleLabel = [(_UIFloatingTabBarItemView *)self _showsTitleLabel];
  _showsImageView = [(_UIFloatingTabBarItemView *)self _showsImageView];
  superview = [(UIView *)self->_titleLabel superview];

  if (_showsTitleLabel)
  {
    if (!superview)
    {
      [(UIView *)self addSubview:self->_titleLabel];
    }
  }

  else if (superview)
  {
    [(UIView *)self->_titleLabel removeFromSuperview];
  }

  superview2 = [(UIView *)self->_imageView superview];

  if (_showsImageView)
  {
    if (!superview2)
    {
      [(UIView *)self addSubview:self->_imageView];
    }
  }

  else if (superview2)
  {
    [(UIView *)self->_imageView removeFromSuperview];
  }

  item2 = [(_UIFloatingTabBarItemView *)self item];
  badgeValue = [item2 badgeValue];

  v15 = [badgeValue length];
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

    [(_UIBarBadgeView *)badgeView setText:badgeValue];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_UIFloatingTabBarItemView *)self _showsTitleLabel:fits.width];
  _showsImageView = [(_UIFloatingTabBarItemView *)self _showsImageView];
  traitCollection = [(UIView *)self traitCollection];
  _currentPlatformMetrics = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  [_currentPlatformMetrics imageMargins];
  v9 = v8;
  v11 = v10;
  [_currentPlatformMetrics titleMargins];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  titleLabel = [(_UIFloatingTabBarItemView *)self titleLabel];
  font = [titleLabel font];

  contentFont = [_currentPlatformMetrics contentFont];
  titleLabel2 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel2 setFont:contentFont];

  titleLabel3 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [_currentPlatformMetrics maximumContentWidth];
  v26 = v25;
  titleLabel4 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel3 textRectForBounds:objc_msgSend(titleLabel4 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, v26, 1.79769313e308}];
  v29 = v28;
  v31 = v30;

  v32 = v29 - (-v19 - v15);
  titleLabel5 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel5 setFont:font];

  if (_showsImageView)
  {
    [(_UIFloatingTabBarItemView *)self _imageFittingSize];
    v35 = v34 - (-v11 - v9);
    if (v4)
    {
      v36 = v35 - v11;
      [_currentPlatformMetrics imageAndTitleSpacing];
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

  if (_showsImageView)
  {
    v38 = v35;
  }

  else
  {
    v38 = v39;
  }

LABEL_10:
  [_currentPlatformMetrics maximumContentWidth];
  if (v38 > v40)
  {
    [_currentPlatformMetrics maximumContentWidth];
    v38 = v41;
  }

  v42 = v31 - (-v17 - v13);
  [traitCollection displayScale];
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
  _currentPlatformMetrics = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  [_currentPlatformMetrics imageMargins];
  v5 = v4;
  [_currentPlatformMetrics titleMargins];
  v106 = v7;
  v107 = v6;
  v9 = v8;
  v11 = v10;
  superview = [(UIView *)self->_titleLabel superview];
  if (superview)
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

  superview2 = [(UIView *)self->_imageView superview];
  if (superview2)
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

  imageView = [(_UIFloatingTabBarItemView *)self imageView];
  image = [imageView image];
  _isSymbolImage = [image _isSymbolImage];

  superview3 = [(UIView *)self->_imageView superview];
  if (superview3)
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
  if ((_isSymbolImage & 1) == 0)
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

  imageView2 = [(_UIFloatingTabBarItemView *)self imageView];
  [imageView2 _setCornerRadius:v36];

  [(UIView *)self bounds];
  recta.origin.x = v9 + v49;
  v51 = v107 + v50;
  v53 = v52 - (v9 + v11);
  v55 = v54 - (v107 + v106);
  superview4 = [(UIView *)self->_imageView superview];
  if (superview4)
  {
    v57 = superview4;
    superview5 = [(UIView *)self->_titleLabel superview];

    if (superview5)
    {
      v115.origin.y = v109;
      v115.origin.x = v110;
      v115.size.width = v30;
      v115.size.height = v32;
      v59 = v51;
      v60 = v17;
      MaxX = CGRectGetMaxX(v115);
      [_currentPlatformMetrics imageAndTitleSpacing];
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

  imageView3 = [(_UIFloatingTabBarItemView *)self imageView];
  _hasBaseline = [imageView3 _hasBaseline];

  imageView4 = [(_UIFloatingTabBarItemView *)self imageView];
  if (_hasBaseline)
  {
    [imageView4 frameForAlignmentRect:{v110, v109, v30, v32}];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    imageView5 = [(_UIFloatingTabBarItemView *)self imageView];
    [imageView5 setFrame:{v68, v70, v72, v74}];
  }

  else
  {
    [imageView4 setFrame:{v110 + (v30 - v112) * 0.5, v109 + (v32 - v111) * 0.5, v112, v111}];
  }

  titleLabel = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel setFrame:{recta.origin.x + (v53 - v17) * 0.5, v51 + (v55 - v108) * 0.5, v17, v108}];

  [(UIView *)self bounds];
  v79 = v78 + v77 * 0.5;
  v82 = v81 + v80 * 0.5;
  backgroundView = [(_UIFloatingTabBarItemView *)self backgroundView];
  [backgroundView setCenter:{v79, v82}];

  [(UIView *)self bounds];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  backgroundView2 = [(_UIFloatingTabBarItemView *)self backgroundView];
  [backgroundView2 setBounds:{v85, v87, v89, v91}];

  badgeView = [(_UIFloatingTabBarItemView *)self badgeView];
  v94 = badgeView;
  if (badgeView)
  {
    [badgeView sizeToFit];
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    [_currentPlatformMetrics badgeOffset];
    v97 = v96;
    v99 = v98;
    [v94 bounds];
    v101 = v100;
    v103 = v102;
    if (_shouldReverseLayoutDirection)
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
  item = [(_UIFloatingTabBarItemView *)self item];
  _compactRepresentation = [item _compactRepresentation];

  title = [_compactRepresentation title];
  if ([title length])
  {
    v5 = 1;
  }

  else
  {
    image = [_compactRepresentation image];
    v5 = image != 0;
  }

  return v5;
}

- (BOOL)_showsTitleLabel
{
  _hasValidCompactRepresentation = [(_UIFloatingTabBarItemView *)self _hasValidCompactRepresentation];
  item = [(_UIFloatingTabBarItemView *)self item];
  v5 = item;
  if (_hasValidCompactRepresentation)
  {
    _compactRepresentation = [item _compactRepresentation];
    title = [_compactRepresentation title];
  }

  else
  {
    title = [item title];
  }

  v8 = -[_UIFloatingTabBarItemView preferredDisplayMode](self, "preferredDisplayMode") != 2 && [title length] != 0;
  return v8;
}

- (CGSize)_imageFittingSize
{
  _currentPlatformMetrics = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  imageView = [(_UIFloatingTabBarItemView *)self imageView];
  image = [imageView image];
  _isSymbolImage = [image _isSymbolImage];

  if (_isSymbolImage)
  {
    imageView2 = [(_UIFloatingTabBarItemView *)self imageView];
    [imageView2 intrinsicContentSize];
  }

  else
  {
    imageView2 = [(UIView *)self traitCollection];
    [_currentPlatformMetrics scaledImageSizeForTraitCollection:imageView2];
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
    item = [(_UIFloatingTabBarItemView *)self item];
    _compactRepresentation = [item _compactRepresentation];
    image = [_compactRepresentation image];

    goto LABEL_5;
  }

  if ([(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    item = [(_UIFloatingTabBarItemView *)self item];
    image = [item selectedImage];
LABEL_5:

    if (image)
    {
      goto LABEL_7;
    }
  }

  item2 = [(_UIFloatingTabBarItemView *)self item];
  image = [item2 image];

LABEL_7:
  imageView = [(_UIFloatingTabBarItemView *)self imageView];
  [imageView setImage:image];
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

  layer = [(UIView *)self->_backgroundView layer];
  [layer setShadowPathIsBounds:1];

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
  isEditing = [(_UIFloatingTabBarItemView *)self isEditing];
  if (isEditing)
  {
    LOBYTE(isEditing) = ![(_UIFloatingTabBarItemView *)self suppressEditing];
  }

  return isEditing;
}

- (BOOL)isCustomizableItem
{
  item = [(_UIFloatingTabBarItemView *)self item];
  _hasCustomizablePlacement = [item _hasCustomizablePlacement];

  return _hasCustomizablePlacement;
}

- (BOOL)isDisabled
{
  item = [(_UIFloatingTabBarItemView *)self item];
  isEnabled = [item isEnabled];

  return isEnabled ^ 1;
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
    traitCollection = [(UIView *)self traitCollection];
    v5 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

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
  _currentPlatformMetrics = [(_UIFloatingTabBarItemView *)self _currentPlatformMetrics];
  contentPaletteProvider = [_currentPlatformMetrics contentPaletteProvider];
  traitCollection = [(UIView *)self traitCollection];
  v6 = contentPaletteProvider[2](contentPaletteProvider, [traitCollection userInterfaceStyle]);

  v7 = [v6 resolvedColorFromProvider:self];
  if ([(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| ![(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    contentFont = [_currentPlatformMetrics contentFont];
  }

  else
  {
    contentFont = [_currentPlatformMetrics selectedContentFont];
  }

  v9 = contentFont;
  if ([(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| ![(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    symbolConfiguration = [_currentPlatformMetrics symbolConfiguration];
  }

  else
  {
    symbolConfiguration = [_currentPlatformMetrics selectedSymbolConfiguration];
  }

  v11 = symbolConfiguration;
  v12 = +[_UITraitMonochromaticTreatment _glassMonochromaticTreatment];
  if ([(_UIFloatingTabBarItemView *)self hasSelectionHighlight])
  {
    v13 = 0;
  }

  else
  {
    v13 = [(_UIFloatingTabBarItemView *)self isDisabled]^ 1;
  }

  titleLabel = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel _setMonochromaticTreatment:v12];

  imageView = [(_UIFloatingTabBarItemView *)self imageView];
  [imageView _setMonochromaticTreatment:v12];

  titleLabel2 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel2 _setEnableMonochromaticTreatment:v13];

  imageView2 = [(_UIFloatingTabBarItemView *)self imageView];
  [imageView2 _setEnableMonochromaticTreatment:v13];

  _wantsBackground = [(_UIFloatingTabBarItemView *)self _wantsBackground];
  backgroundView = [(_UIFloatingTabBarItemView *)self backgroundView];
  [backgroundView setHidden:!_wantsBackground];

  [(_UIFloatingTabBarItemView *)self _updateJigglingState];
  _isEffectivelyEditing = [(_UIFloatingTabBarItemView *)self _isEffectivelyEditing];
  badgeView = [(_UIFloatingTabBarItemView *)self badgeView];
  [badgeView setHidden:_isEffectivelyEditing];

  imageView3 = [(_UIFloatingTabBarItemView *)self imageView];
  tintColor = [imageView3 tintColor];
  if ([tintColor isEqual:v7])
  {
    titleLabel3 = [(_UIFloatingTabBarItemView *)self titleLabel];
    [titleLabel3 font];
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
  titleLabel4 = [(_UIFloatingTabBarItemView *)self titleLabel];
  [titleLabel4 setFont:v9];

  imageView4 = [(_UIFloatingTabBarItemView *)self imageView];
  [imageView4 setPreferredSymbolConfiguration:v11];

  [(UIView *)self setNeedsLayout];
LABEL_17:
}

- (id)_currentPlatformMetrics
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v3;
}

- (void)_updateJigglingState
{
  if (![(_UIFloatingTabBarItemView *)self _wantsBackground]|| ![(_UIFloatingTabBarItemView *)self _isEffectivelyEditing]|| [(_UIFloatingTabBarItemView *)self isDragged])
  {
    layer = [(UIView *)self layer];
LABEL_5:
    v12 = layer;
    [layer removeAllAnimations];
    goto LABEL_6;
  }

  suppressJiggleAnimation = [(_UIFloatingTabBarItemView *)self suppressJiggleAnimation];
  layer = [(UIView *)self layer];
  if (suppressJiggleAnimation)
  {
    goto LABEL_5;
  }

  v12 = layer;
  animationKeys = [layer animationKeys];
  v6 = [animationKeys containsObject:@"RotationJitterAnimation"];

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

+ (id)_jitterXTranslationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v4 setDuration:0.134];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
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

+ (id)_jitterYTranslationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v4 setDuration:0.142];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
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

+ (id)_jitterRotationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v4 setDuration:0.128];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
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
  accessibilityTraits = [&v7 accessibilityTraits];
  isHighlighted = [(_UIFloatingTabBarItemView *)self isHighlighted];
  v5 = 8;
  if (!isHighlighted)
  {
    v5 = 0;
  }

  return accessibilityTraits | v5 | 1;
}

@end