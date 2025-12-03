@interface PUIStylePickerHomeScreenItemView
+ (CGSize)defaultSizeForIconSize:(CGSize)result;
+ (id)defaultFont;
- (CGSize)iconSize;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PUIStylePickerHomeScreenItemView)initWithFrame:(CGRect)frame;
- (id)_effectiveStyleTypeOption;
- (id)_weatherIconView;
- (int64_t)_descriptorAppearanceForStyleTypeOption:(id)option styleTypeVariant:(id)variant;
- (int64_t)_descriptorAppearanceVariantForStyleTypeOption:(id)option;
- (void)_setStyleVariantOption:(id)option updatingLayout:(BOOL)layout;
- (void)_updateColorsForTraitCollectionAnimated:(BOOL)animated;
- (void)_updateHighlightState:(BOOL)state;
- (void)_updateLayoutConstraintsSwappingImageView:(BOOL)view;
- (void)_updateWeatherIconView:(id)view withImage:(id)image;
- (void)_userInterfaceStyleDidUpdate:(id)update;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIconContinuousCornerRadius:(double)radius;
- (void)setIconSize:(CGSize)size;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setStyleTypeOption:(id)option styleVariantOption:(id)variantOption iconSize:(CGSize)size tintColor:(id)color;
- (void)setTintColor:(id)color;
- (void)willMoveToWindow:(id)window;
@end

@implementation PUIStylePickerHomeScreenItemView

+ (id)defaultFont
{
  if (defaultFont_onceToken != -1)
  {
    +[PUIStylePickerHomeScreenItemView defaultFont];
  }

  v3 = defaultFont_defaultFont;

  return v3;
}

void __47__PUIStylePickerHomeScreenItemView_defaultFont__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6965808];
  v5[0] = @".SFUI-Medium";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v1 = CTFontDescriptorCreateWithAttributesAndOptions();

  v2 = CTFontCreateWithFontDescriptor(v1, 14.0, 0);
  v3 = defaultFont_defaultFont;
  defaultFont_defaultFont = v2;

  CFRelease(v1);
}

- (PUIStylePickerHomeScreenItemView)initWithFrame:(CGRect)frame
{
  v52[3] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = PUIStylePickerHomeScreenItemView;
  v3 = [(PUIStylePickerHomeScreenItemView *)&v48 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUIStylePickerHomeScreenItemView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStylePickerHomeScreenItemView *)v4 setAutoresizingMask:0];
    layer = [(PUIStylePickerHomeScreenItemView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_opt_new();
    label = v4->_label;
    v4->_label = v6;

    v4->_iconSize = vdupq_n_s64(0x4050000000000000uLL);
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setAlpha:0.0];
    [v8 _setContinuousCornerRadius:15.0];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    [v8 setBackgroundColor:systemWhiteColor];
    objc_storeStrong(&v4->_selectionView, v8);
    v10 = objc_alloc_init(PUITouchPassThroughView);
    imageContainerView = v4->_imageContainerView;
    v4->_imageContainerView = v10;

    v52[0] = v4->_imageContainerView;
    v52[1] = v4->_selectionView;
    v52[2] = v4->_label;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = v47 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          [v17 setTranslatesAutoresizingMaskIntoConstraints:{0, v44}];
          [(PUIStylePickerHomeScreenItemView *)v4 addSubview:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v14);
    }

    defaultFont = [objc_opt_class() defaultFont];
    [(UILabel *)v4->_label setFont:defaultFont];
    [(UILabel *)v4->_label setTextAlignment:1];
    [(UILabel *)v4->_label setLineBreakMode:4];
    [(UILabel *)v4->_label setNumberOfLines:1];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v21 = 1.4;
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v53.origin.x = v24;
      v53.origin.y = v26;
      v53.size.width = v28;
      v53.size.height = v30;
      Width = CGRectGetWidth(v53);
      v54.origin.x = v24;
      v54.origin.y = v26;
      v54.size.width = v28;
      v54.size.height = v30;
      Height = CGRectGetHeight(v54);
      if (Width < Height)
      {
        Height = Width;
      }

      v33 = Height < 375.0;
      v21 = 1.15;
      if (!v33)
      {
        v21 = 1.5;
      }
    }

    [(UILabel *)v4->_label setPreferredMaxLayoutWidth:v21 * 64.0 + -16.0, v44];
    [(PUIStylePickerHomeScreenItemView *)v4 _updateColorsForTraitCollectionAnimated:0];
    v34 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979888]];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [v34 setValue:objc_msgSend(blackColor forKey:{"CGColor"), @"inputColor"}];

    [v34 setName:@"selectionFilter"];
    [v34 setValue:&unk_1F1C92A48 forKey:@"inputAmount"];
    layer2 = [(PUITouchPassThroughView *)v4->_imageContainerView layer];
    v50 = v34;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [layer2 setFilters:v37];

    layer3 = [(PUITouchPassThroughView *)v4->_imageContainerView layer];
    [layer3 setAllowsGroupOpacity:0];

    v39 = objc_opt_self();
    v49 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v41 = [(PUIStylePickerHomeScreenItemView *)v4 registerForTraitChanges:v40 withAction:sel__userInterfaceStyleDidUpdate_];
    traitChangeRegistration = v4->_traitChangeRegistration;
    v4->_traitChangeRegistration = v41;
  }

  return v4;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PUIStylePickerHomeScreenItemView;
  [(PUIStylePickerHomeScreenItemView *)&v10 layoutSubviews];
  if (self->_selectionView)
  {
    label = self->_label;
    if (label)
    {
      [(UILabel *)label bounds];
      v4 = CGRectGetWidth(v11) + 16.0;
      if (v4 >= 66.3333333)
      {
        v5 = v4;
      }

      else
      {
        v5 = 66.3333333;
      }

      selectionViewWidthConstraint = [(PUIStylePickerHomeScreenItemView *)self selectionViewWidthConstraint];
      [selectionViewWidthConstraint constant];
      v8 = v7;

      if (v8 != v5)
      {
        selectionViewWidthConstraint2 = [(PUIStylePickerHomeScreenItemView *)self selectionViewWidthConstraint];
        [selectionViewWidthConstraint2 setConstant:v5];
      }
    }
  }
}

- (void)_userInterfaceStyleDidUpdate:(id)update
{
  [(PUIStylePickerHomeScreenItemView *)self _updateColorsForTraitCollectionAnimated:1];
  if ([(NSString *)self->_styleVariantOption isEqualToString:@"auto"])
  {

    [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:1];
  }
}

- (void)_updateColorsForTraitCollectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(PUIStylePickerHomeScreenItemView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v7 = [blackColor colorWithAlphaComponent:0.08];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
  if (userInterfaceStyle == 2)
  {
    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [whiteColor3 colorWithAlphaComponent:0.08];

    whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];

    whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];

    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];

    v10 = v15;
    whiteColor2 = whiteColor5;
    whiteColor = whiteColor4;
    v7 = v12;
  }

  selected = self->_selected;
  v17 = self->_label;
  v18 = self->_selectionView;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__PUIStylePickerHomeScreenItemView__updateColorsForTraitCollectionAnimated___block_invoke;
  v25[3] = &unk_1E78556A8;
  v26 = v18;
  v27 = v17;
  v30 = selected;
  v19 = whiteColor;
  v28 = v19;
  v20 = whiteColor2;
  v29 = v20;
  v21 = v17;
  v22 = v18;
  v23 = MEMORY[0x1AC5769F0](v25);
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v23 options:0 animations:0.3 completion:0.0];
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
  }
}

uint64_t __76__PUIStylePickerHomeScreenItemView__updateColorsForTraitCollectionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *MEMORY[0x1E6979CF8];
  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
  [v2 setCompositingFilter:v4];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v5 setBackgroundColor:v6];

  v7 = [*(a1 + 40) layer];
  v8 = [MEMORY[0x1E6979378] filterWithType:v3];
  [v7 setCompositingFilter:v8];

  v9 = 0.5;
  if (*(a1 + 64))
  {
    v9 = 1.0;
    v10 = 48;
  }

  else
  {
    v10 = 56;
  }

  if (*(a1 + 64))
  {
    v11 = 0.06;
  }

  else
  {
    v11 = 0.0;
  }

  [*(a1 + 40) setAlpha:v9];
  [*(a1 + 40) setTextColor:*(a1 + v10)];
  v12 = *(a1 + 32);

  return [v12 setAlpha:v11];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PUIStylePickerHomeScreenItemView;
  [(PUIStylePickerHomeScreenItemView *)&v5 willMoveToWindow:?];
  if (window)
  {
    [(PUIStylePickerHomeScreenItemView *)self invalidateIntrinsicContentSize];
    [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:0];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if ([(NSString *)self->_styleTypeOption isEqualToString:@"accent"]&& ([(UIColor *)self->_tintColor isEqual:colorCopy]& 1) == 0)
  {
    tintColor = self->_tintColor;
    if (colorCopy && tintColor)
    {
      objc_storeStrong(&self->_tintColor, color);
LABEL_6:
      iconLayer = self->_iconLayer;
      v7 = colorCopy;
      [(ICRIconLayer *)iconLayer setTintColor:[(UIColor *)colorCopy CGColor]];
      v8 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:3];
      [v8 setTintColor:colorCopy];
      [(UIView *)self->_imageView _setBackground:v8];

      goto LABEL_9;
    }

    objc_storeStrong(&self->_tintColor, color);
    if (tintColor == colorCopy)
    {
      if (colorCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:1];
    }
  }

LABEL_9:
}

- (id)_effectiveStyleTypeOption
{
  v3 = self->_styleTypeOption;
  if (v3 == @"accent" && !self->_tintColor)
  {
    v4 = @"clear";

    v3 = v4;
  }

  return v3;
}

- (void)_setStyleVariantOption:(id)option updatingLayout:(BOOL)layout
{
  layoutCopy = layout;
  optionCopy = option;
  v7 = [(NSString *)self->_styleVariantOption isEqualToString:optionCopy];
  v8 = optionCopy;
  if (v7)
  {
    goto LABEL_11;
  }

  if ([optionCopy isEqualToString:@"light"])
  {
    selfCopy2 = self;
    v10 = 1;
  }

  else
  {
    if (![optionCopy isEqualToString:@"dark"])
    {
      traitOverrides = [(PUIStylePickerHomeScreenItemView *)self traitOverrides];
      v12 = objc_opt_self();
      [traitOverrides removeTrait:v12];

      goto LABEL_8;
    }

    selfCopy2 = self;
    v10 = 2;
  }

  [(PUIStylePickerHomeScreenItemView *)selfCopy2 setOverrideUserInterfaceStyle:v10];
LABEL_8:
  v13 = self->_styleVariantOption;
  objc_storeStrong(&self->_styleVariantOption, option);
  if (layoutCopy)
  {
    [(PUIStylePickerHomeScreenItemView *)self invalidateIntrinsicContentSize];
    [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:[(PUIStylePickerHomeScreenItemView *)self _descriptorAppearanceForStyleTypeOption:self->_styleTypeOption styleTypeVariant:v13]!= [(PUIStylePickerHomeScreenItemView *)self _descriptorAppearanceForStyleTypeOption:self->_styleTypeOption styleTypeVariant:optionCopy]];
  }

  v8 = optionCopy;
LABEL_11:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setStyleTypeOption:(id)option styleVariantOption:(id)variantOption iconSize:(CGSize)size tintColor:(id)color
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  variantOptionCopy = variantOption;
  colorCopy = color;
  if (![(NSString *)self->_styleTypeOption isEqualToString:optionCopy]|| ![(NSString *)self->_styleVariantOption isEqualToString:variantOptionCopy]|| ((v14 = self->_iconSize.height, self->_iconSize.width == width) ? (v15 = v14 == height) : (v15 = 0), !v15 || ([(UIColor *)self->_tintColor isEqual:colorCopy, self->_iconSize.width, v14]& 1) == 0))
  {
    objc_storeStrong(&self->_styleTypeOption, option);
    label = self->_label;
    v17 = LocalizedNSStringFromPUIHomeScreenStyleTypeOption(optionCopy);
    [(UILabel *)label setText:v17];

    self->_iconSize.width = width;
    self->_iconSize.height = height;
    objc_storeStrong(&self->_tintColor, color);
    [(PUIStylePickerHomeScreenItemView *)self _setStyleVariantOption:variantOptionCopy updatingLayout:0];
    [(PUIStylePickerHomeScreenItemView *)self invalidateIntrinsicContentSize];
    [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:1];
  }
}

- (void)setIconSize:(CGSize)size
{
  if (self->_iconSize.width != size.width || self->_iconSize.height != size.height)
  {
    self->_iconSize = size;
    [(PUIStylePickerHomeScreenItemView *)self invalidateIntrinsicContentSize];

    [(PUIStylePickerHomeScreenItemView *)self _updateLayoutConstraintsSwappingImageView:1];
  }
}

- (void)setIconContinuousCornerRadius:(double)radius
{
  if (self->_iconContinuousCornerRadius != radius)
  {
    self->_iconContinuousCornerRadius = radius;
    [(PUITouchPassThroughView *)self->_imageContainerView _setContinuousCornerRadius:radius];
    imageView = self->_imageView;

    [(UIView *)imageView _setContinuousCornerRadius:radius];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(PUIStylePickerHomeScreenItemView *)self _updateColorsForTraitCollectionAnimated:animated];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (self->_highlighted != highlighted)
  {
    animatedCopy = animated;
    highlightedCopy = highlighted;
    v7.receiver = self;
    v7.super_class = PUIStylePickerHomeScreenItemView;
    [(PUIStylePickerHomeScreenItemView *)&v7 setHighlighted:?];
    self->_highlighted = highlightedCopy;
    [(PUIStylePickerHomeScreenItemView *)self _updateHighlightState:animatedCopy & ~highlightedCopy];
  }
}

- (void)_updateHighlightState:(BOOL)state
{
  stateCopy = state;
  layer = [(PUITouchPassThroughView *)self->_imageContainerView layer];
  if (self->_highlighted)
  {
    v5 = &unk_1F1C92A58;
  }

  else
  {
    v5 = &unk_1F1C92A48;
  }

  if (stateCopy)
  {
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.selectionFilter.inputAmount"];
    v7 = [layer valueForKeyPath:@"filters.selectionFilter.inputAmount"];
    [v6 setFromValue:v7];

    [v6 setToValue:v5];
    [v6 setDuration:0.3];
    [layer addAnimation:v6 forKey:@"filters.selectionFilter.inputAmount"];
  }

  [layer setValue:v5 forKeyPath:@"filters.selectionFilter.inputAmount"];
}

+ (CGSize)defaultSizeForIconSize:(CGSize)result
{
  v3 = result.height + 30.0 + 12.0;
  result.height = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(PUIStylePickerHomeScreenItemView *)self iconSize];
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_class();

  [v6 defaultSizeForIconSize:{v3, v5}];
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(PUIStylePickerHomeScreenItemView *)self iconSize:size.width];
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();

  [v9 defaultSizeForIconSize:{v6, v8}];
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_updateLayoutConstraintsSwappingImageView:(BOOL)view
{
  viewCopy = view;
  v68[3] = *MEMORY[0x1E69E9840];
  if (self->_knownConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    knownConstraints = self->_knownConstraints;
    self->_knownConstraints = 0;
  }

  if (viewCopy)
  {
    [(UIView *)self->_imageView removeFromSuperview];
    _weatherIconView = [(PUIStylePickerHomeScreenItemView *)self _weatherIconView];
    imageView = self->_imageView;
    self->_imageView = _weatherIconView;

    [(UIView *)self->_imageView _setContinuousCornerRadius:self->_iconContinuousCornerRadius];
    [(UIView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUITouchPassThroughView *)self->_imageContainerView addSubview:self->_imageView];
  }

  [(PUIStylePickerHomeScreenItemView *)self iconSize];
  v9 = v8;
  v11 = v10;
  [objc_opt_class() defaultSizeForIconSize:{v8, v10}];
  v13 = v12;
  v14 = objc_opt_new();
  v67[0] = @"interitemSpacing";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:12.0];
  v68[0] = v15;
  v67[1] = @"minAssetViewWidth";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v68[1] = v16;
  v67[2] = @"minAssetViewHeight";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v68[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];

  v19 = self->_imageContainerView;
  v20 = self->_imageView;
  v21 = self->_label;
  v22 = _NSDictionaryOfVariableBindings(&cfstr_Imagecontainer.isa, v19, v20, v21, 0);
  v23 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[imageContainerView]-interitemSpacing-[label]|" options:512 metrics:v18 views:v22];
  [v14 addObjectsFromArray:v23];

  v60 = v22;
  v61 = v18;
  v24 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[imageContainerView]|" options:512 metrics:v18 views:v22];
  [v14 addObjectsFromArray:v24];

  widthAnchor = [(UILabel *)v21 widthAnchor];
  [(UILabel *)v21 preferredMaxLayoutWidth];
  v26 = [widthAnchor constraintLessThanOrEqualToConstant:?];
  [v14 addObject:v26];

  centerXAnchor = [(UILabel *)v21 centerXAnchor];
  centerXAnchor2 = [(PUIStylePickerHomeScreenItemView *)self centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 addObject:v29];

  heightAnchor = [(PUITouchPassThroughView *)v19 heightAnchor];
  v31 = [heightAnchor constraintEqualToConstant:v11];
  [v14 addObject:v31];

  widthAnchor2 = [(PUITouchPassThroughView *)v19 widthAnchor];
  v33 = [widthAnchor2 constraintEqualToConstant:v9];
  [v14 addObject:v33];

  heightAnchor2 = [(UIView *)v20 heightAnchor];
  v35 = [heightAnchor2 constraintEqualToConstant:v11];
  [v14 addObject:v35];

  widthAnchor3 = [(UIView *)v20 widthAnchor];
  v37 = [widthAnchor3 constraintEqualToConstant:v9];
  [v14 addObject:v37];

  heightAnchor3 = [(PUIStylePickerHomeScreenItemView *)self heightAnchor];
  v39 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v13];
  [v14 addObject:v39];

  widthAnchor4 = [(PUIStylePickerHomeScreenItemView *)self widthAnchor];
  v41 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:v9];
  [v14 addObject:v41];

  widthAnchor5 = [(UIView *)self->_selectionView widthAnchor];
  v43 = [widthAnchor5 constraintEqualToConstant:0.0];

  [(PUIStylePickerHomeScreenItemView *)self setSelectionViewWidthConstraint:v43];
  [v14 addObject:v43];
  heightAnchor4 = [(UIView *)self->_selectionView heightAnchor];
  v45 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:30.0];
  [v14 addObject:v45];

  centerXAnchor3 = [(UIView *)self->_selectionView centerXAnchor];
  centerXAnchor4 = [(PUIStylePickerHomeScreenItemView *)self centerXAnchor];
  v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v14 addObject:v48];

  centerYAnchor = [(UIView *)self->_selectionView centerYAnchor];
  centerYAnchor2 = [(UILabel *)v21 centerYAnchor];
  v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v14 addObject:v51];

  if (![(NSArray *)self->_knownConstraints isEqualToArray:v14])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v14];
    [(PUIStylePickerHomeScreenItemView *)self invalidateIntrinsicContentSize];
    v52 = [v14 copy];
    v53 = self->_knownConstraints;
    self->_knownConstraints = v52;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    _allSublayers = [(UIView *)v20 _allSublayers];
    v55 = [_allSublayers countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v63;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v63 != v57)
          {
            objc_enumerationMutation(_allSublayers);
          }

          v59 = *(*(&v62 + 1) + 8 * i);
          [(UIView *)v20 center];
          [v59 setPosition:?];
        }

        v56 = [_allSublayers countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v56);
    }
  }
}

- (int64_t)_descriptorAppearanceForStyleTypeOption:(id)option styleTypeVariant:(id)variant
{
  variantCopy = variant;
  if (([option isEqualToString:@"dark"] & 1) == 0)
  {
    if ([variantCopy isEqualToString:@"auto"])
    {
      traitCollection = [(PUIStylePickerHomeScreenItemView *)self traitCollection];
      v7 = [traitCollection userInterfaceStyle] == 2;

      goto LABEL_5;
    }

    if (([variantCopy isEqualToString:@"always"] & 1) == 0 && (objc_msgSend(variantCopy, "isEqualToString:", @"always") & 1) == 0)
    {
      [variantCopy isEqualToString:@"light"];
      v7 = 0;
      goto LABEL_5;
    }
  }

  v7 = 1;
LABEL_5:

  return v7;
}

- (int64_t)_descriptorAppearanceVariantForStyleTypeOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(optionCopy, "isEqualToString:", @"dark"))
  {
    v4 = 0;
  }

  else if ([optionCopy isEqualToString:@"clear"])
  {
    v4 = 3;
  }

  else if ([optionCopy isEqualToString:@"accent"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_weatherIconView
{
  v3 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.weather"];
  v4 = objc_alloc(MEMORY[0x1E69A8A30]);
  [(PUIStylePickerHomeScreenItemView *)self iconSize];
  v6 = v5;
  v8 = v7;
  traitCollection = [(PUIStylePickerHomeScreenItemView *)self traitCollection];
  [traitCollection displayScale];
  v11 = [v4 initWithSize:v6 scale:{v8, v10}];

  _effectiveStyleTypeOption = [(PUIStylePickerHomeScreenItemView *)self _effectiveStyleTypeOption];
  v13 = self->_styleVariantOption;
  v14 = [(PUIStylePickerHomeScreenItemView *)self _descriptorAppearanceVariantForStyleTypeOption:_effectiveStyleTypeOption];
  v15 = [(PUIStylePickerHomeScreenItemView *)self _descriptorAppearanceForStyleTypeOption:_effectiveStyleTypeOption styleTypeVariant:v13];
  if ([_effectiveStyleTypeOption isEqualToString:@"accent"])
  {
    v16 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{-[UIColor CGColor](self->_tintColor, "CGColor")}];
    [v11 setTintColor:v16];
  }

  [v11 setAppearance:v15];
  [v11 setAppearanceVariant:v14];
  if (!_weatherIconView_imageQueue)
  {
    Serial = BSDispatchQueueCreateSerial();
    v18 = _weatherIconView_imageQueue;
    _weatherIconView_imageQueue = Serial;
  }

  v19 = objc_alloc_init(PUITouchPassThroughView);
  v20 = _weatherIconView_imageQueue;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __52__PUIStylePickerHomeScreenItemView__weatherIconView__block_invoke;
  v30 = &unk_1E78556D0;
  v21 = v3;
  v31 = v21;
  v22 = v11;
  v32 = v22;
  selfCopy = self;
  v23 = v19;
  v34 = v23;
  dispatch_async(v20, &v27);
  if ([_effectiveStyleTypeOption isEqualToString:{@"clear", v27, v28, v29, v30}])
  {
    v24 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:3];
  }

  else if ([_effectiveStyleTypeOption isEqualToString:@"accent"])
  {
    v24 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:3];
    [v24 setTintColor:self->_tintColor];
  }

  else
  {
    v24 = 0;
  }

  [(PUITouchPassThroughView *)v23 _setBackground:v24];
  [(PUITouchPassThroughView *)v23 _setContinuousCornerRadius:self->_iconContinuousCornerRadius];
  [(PUITouchPassThroughView *)v23 setFrame:0.0, 0.0, self->_iconSize.width, self->_iconSize.height];
  v25 = v23;

  return v23;
}

void __52__PUIStylePickerHomeScreenItemView__weatherIconView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prepareImageForDescriptor:*(a1 + 40)];
  v4 = *(a1 + 56);
  v3 = v2;
  BSDispatchMain();
}

- (void)_updateWeatherIconView:(id)view withImage:(id)image
{
  viewCopy = view;
  iCRIconLayer = [image ICRIconLayer];
  traitCollection = [(PUIStylePickerHomeScreenItemView *)self traitCollection];
  [traitCollection displayScale];
  [iCRIconLayer setContentsScale:?];

  [(PUIStylePickerHomeScreenItemView *)self iconSize];
  [iCRIconLayer setBounds:{0.0, 0.0, v9, v10}];
  [viewCopy center];
  [iCRIconLayer setPosition:?];
  iconLayer = self->_iconLayer;
  self->_iconLayer = iCRIconLayer;
  v12 = iCRIconLayer;

  layer = [viewCopy layer];

  [layer addSublayer:v12];
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end