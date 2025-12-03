@interface VKImageAnalysisButton
- (CGAffineTransform)_glyphTransformForRotation:(SEL)rotation scale:(double)scale highlighted:(double)highlighted;
- (CGRect)_selectedIndicatorBounds;
- (CGSize)intrinsicContentSize;
- (VKImageAnalysisButton)initWithCoder:(id)coder;
- (VKImageAnalysisButton)initWithFrame:(CGRect)frame;
- (double)backgroundDiameter;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_commonVKImageAnalysisButtonInitialization;
- (void)_updateBackgroundColors;
- (void)_updateForTraitCollection;
- (void)_updateGlyph;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundDiameter:(double)diameter;
- (void)setCameraModeBackgroundColor:(id)color;
- (void)setCustomSymbolFont:(id)font;
- (void)setGlyphRotation:(double)rotation;
- (void)setGlyphScale:(double)scale;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedGlyphScaleFactor:(double)factor animation:(id)animation;
- (void)setInhibitGlassMaterial:(BOOL)material;
- (void)setMaximumContentSizeCategory:(id)category;
- (void)setMode:(unint64_t)mode;
- (void)setPrefersDarkGlyphWhenSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected;
- (void)setupForFunction:(unint64_t)function;
@end

@implementation VKImageAnalysisButton

- (void)dealloc
{
  if (self->_traitChangeObserver)
  {
    [(VKImageAnalysisButton *)self unregisterForTraitChanges:?];
  }

  if (self->_backgroundTraitChangeObserver)
  {
    backgroundEffectView = [(VKImageAnalysisButton *)self backgroundEffectView];
    [backgroundEffectView unregisterForTraitChanges:self->_backgroundTraitChangeObserver];
  }

  v4.receiver = self;
  v4.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v4 dealloc];
}

- (void)_commonVKImageAnalysisButtonInitialization
{
  v30[1] = *MEMORY[0x1E69E9840];
  [(VKImageAnalysisButton *)self setPreferredBehavioralStyle:1];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
  cameraModeBackgroundColor = self->_cameraModeBackgroundColor;
  self->_cameraModeBackgroundColor = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  backgroundView = self->__backgroundView;
  self->__backgroundView = v5;

  [(UIView *)self->__backgroundView setUserInteractionEnabled:0];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  selectedBackgroundView = self->__selectedBackgroundView;
  self->__selectedBackgroundView = v7;

  v9 = objc_alloc_init(MEMORY[0x1E69DD298]);
  [(UIVisualEffectView *)v9 setAutoresizingMask:18];
  selectedBackgroundVisualEffectView = self->__selectedBackgroundVisualEffectView;
  self->__selectedBackgroundVisualEffectView = v9;
  v11 = v9;

  [(UIView *)self->__selectedBackgroundView addSubview:v11];
  v12 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v12 setAutoresizingMask:18];
  contentView = [(UIVisualEffectView *)v11 contentView];
  [contentView addSubview:v12];

  [(VKImageAnalysisButton *)self set_selectedBackgroundColorView:v12];
  v14 = objc_alloc_init(MEMORY[0x1E69DD298]);
  [(UIVisualEffectView *)v14 setAutoresizingMask:18];
  backgroundVisualEffectView = self->__backgroundVisualEffectView;
  self->__backgroundVisualEffectView = v14;
  v16 = v14;

  [(UIView *)self->__backgroundView addSubview:v16];
  [(UIView *)self->__selectedBackgroundView setUserInteractionEnabled:0];
  [(UIView *)self->__selectedBackgroundView setAlpha:0.0];
  self->_function = 0;
  self->_glyphConfiguration = 0;
  self->_glyphScale = 1.0;
  [(VKImageAnalysisButton *)self _updateForTraitCollection];
  self->__highlightedGlyphScaleFactor = 1.0;
  [(UIView *)self->__selectedBackgroundView setClipsToBounds:1];
  [(UIView *)self->__backgroundView setClipsToBounds:1];
  [(VKImageAnalysisButton *)self setClipsToBounds:1];
  [(VKImageAnalysisButton *)self addSubview:self->__backgroundView];
  [(VKImageAnalysisButton *)self addSubview:self->__selectedBackgroundView];
  [(VKImageAnalysisButton *)self _updateBackgroundColors];
  [(VKImageAnalysisButton *)self _updateGlyph];
  v30[0] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v18 = [(VKImageAnalysisButton *)self registerForTraitChanges:v17 withTarget:self action:sel__updateForTraitCollection];

  [(VKImageAnalysisButton *)self setPointerInteractionEnabled:1];
  [(VKImageAnalysisButton *)self setMaximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
  [(VKImageAnalysisButton *)self setShowsLargeContentViewer:1];
  v19 = objc_alloc_init(MEMORY[0x1E69DCC18]);
  [(VKImageAnalysisButton *)self addInteraction:v19];

  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v21 = [(VKImageAnalysisButton *)self registerForTraitChanges:v20 withAction:sel__updateForTraitCollection];

  _selectedBackgroundColorView = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
  tintColor = [(VKImageAnalysisButton *)self tintColor];
  [_selectedBackgroundColorView vk_setGlassBackgroundWithType:0 tintColor:tintColor flexible:1];

  _backgroundView = [(VKImageAnalysisButton *)self _backgroundView];
  [_backgroundView vk_setGlassBackgroundWithType:0 tintColor:0 flexible:1];

  v25 = self->__backgroundVisualEffectView;
  v28 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v27 = [(UIVisualEffectView *)v25 registerForTraitChanges:v26 withTarget:self action:sel__updateForTraitCollection];

  [(VKImageAnalysisButton *)self setBackgroundTraitChangeObserver:v27];
}

- (void)setInhibitGlassMaterial:(BOOL)material
{
  if (self->_inhibitGlassMaterial != material)
  {
    materialCopy = material;
    self->_inhibitGlassMaterial = material;
    _selectedBackgroundColorView = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
    v7 = _selectedBackgroundColorView;
    if (materialCopy)
    {
      [_selectedBackgroundColorView vk_removeGlassBackground];

      _backgroundView = [(VKImageAnalysisButton *)self _backgroundView];
      [_backgroundView vk_removeGlassBackground];

      _selectedBackgroundView = [(VKImageAnalysisButton *)self _selectedBackgroundView];
      [_selectedBackgroundView setOverrideUserInterfaceStyle:0];

      _backgroundView2 = [(VKImageAnalysisButton *)self _backgroundView];
      [_backgroundView2 setOverrideUserInterfaceStyle:0];
    }

    else
    {
      tintColor = [(VKImageAnalysisButton *)self tintColor];
      [v7 vk_setGlassBackgroundWithType:0 tintColor:tintColor flexible:1];

      _backgroundView2 = [(VKImageAnalysisButton *)self _backgroundView];
      [_backgroundView2 vk_setGlassBackgroundWithType:0 tintColor:0 flexible:1];
    }

    function = [(VKImageAnalysisButton *)self function];

    [(VKImageAnalysisButton *)self setupForFunction:function];
  }
}

- (VKImageAnalysisButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VKImageAnalysisButton;
  v3 = [(VKImageAnalysisButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VKImageAnalysisButton *)v3 _commonVKImageAnalysisButtonInitialization];
  }

  return v4;
}

- (VKImageAnalysisButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VKImageAnalysisButton;
  v3 = [(VKImageAnalysisButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(VKImageAnalysisButton *)v3 _commonVKImageAnalysisButtonInitialization];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(VKImageAnalysisButton *)self backgroundDiameter];
  v4 = v3;
  [(VKImageAnalysisButton *)self backgroundDiameter];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  imageView = [(VKImageAnalysisButton *)self imageView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v33 = *MEMORY[0x1E695EFD0];
  v34 = v4;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  [imageView setTransform:&v33];
  v32.receiver = self;
  v32.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v32 layoutSubviews];
  _backgroundView = [(VKImageAnalysisButton *)self _backgroundView];
  _selectedBackgroundView = [(VKImageAnalysisButton *)self _selectedBackgroundView];
  _selectedBackgroundColorView = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
  [imageView frame];
  v9 = v8;
  v11 = v10;
  UIRectGetCenter();
  [imageView setCenter:?];
  [imageView setBounds:{0.0, 0.0, v9, v11}];
  [(VKImageAnalysisButton *)self glyphRotation];
  v13 = v12;
  [(VKImageAnalysisButton *)self glyphScale];
  [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:v13 highlighted:v14];
  v33 = v29;
  v34 = v30;
  v35 = v31;
  [imageView setTransform:&v33];
  [(VKImageAnalysisButton *)self _selectedIndicatorBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [_backgroundView setFrame:?];
  [_selectedBackgroundView setFrame:{v16, v18, v20, v22}];
  layer = [_backgroundView layer];
  [layer setCornerRadius:v20 * 0.5];

  layer2 = [_selectedBackgroundView layer];
  [layer2 setCornerRadius:v20 * 0.5];

  layer3 = [_selectedBackgroundColorView layer];
  [layer3 setCornerRadius:v20 * 0.5];

  layer4 = [(VKImageAnalysisButton *)self layer];
  [layer4 setCornerRadius:v20 * 0.5];

  _selectedBackgroundView2 = [(VKImageAnalysisButton *)self _selectedBackgroundView];
  [(VKImageAnalysisButton *)self bringSubviewToFront:_selectedBackgroundView2];

  imageView2 = [(VKImageAnalysisButton *)self imageView];
  [(VKImageAnalysisButton *)self bringSubviewToFront:imageView2];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(VKImageAnalysisButton *)self isSelected];
  v8.receiver = self;
  v8.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v8 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    v6 = selectedCopy;
    _selectedBackgroundView = [(VKImageAnalysisButton *)self _selectedBackgroundView];
    [_selectedBackgroundView setAlpha:v6];

    [(VKImageAnalysisButton *)self _updateGlyph];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(VKImageAnalysisButton *)self isHighlighted];
  if ([(VKImageAnalysisButton *)self function]!= 2 || [(VKImageAnalysisButton *)self mode]!= 1 && [(VKImageAnalysisButton *)self mode]!= 2)
  {
    v19.receiver = self;
    v19.super_class = VKImageAnalysisButton;
    [(VKImageAnalysisButton *)&v19 setHighlighted:highlightedCopy];
  }

  [(VKImageAnalysisButton *)self _highlightedGlyphScaleFactor];
  if (isHighlighted != highlightedCopy)
  {
    v7 = v6;
    if (v6 != 1.0)
    {
      imageView = [(VKImageAnalysisButton *)self imageView];
      layer = [imageView layer];

      _highlightedGlyphAnimation = [(VKImageAnalysisButton *)self _highlightedGlyphAnimation];
      v11 = [_highlightedGlyphAnimation copy];

      if (highlightedCopy)
      {
        v12 = v7;
      }

      else
      {
        v12 = 1.0;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      if (v11)
      {
        presentationLayer = [layer presentationLayer];
        v15 = presentationLayer;
        if (presentationLayer)
        {
          v16 = presentationLayer;
        }

        else
        {
          v16 = layer;
        }

        v17 = v16;

        [v11 setKeyPath:@"transform.scale.xy"];
        v18 = [v17 valueForKeyPath:@"transform.scale.xy"];
        [v11 setFromValue:v18];

        [v11 setToValue:v13];
        [layer addAnimation:v11 forKey:@"VKImageAnalysisButtonHighlightScale"];
      }

      [layer setValue:v13 forKeyPath:@"transform.scale.xy"];
    }
  }
}

- (CGRect)_selectedIndicatorBounds
{
  [(VKImageAnalysisButton *)self intrinsicContentSize];
  [(VKImageAnalysisButton *)self bounds];
  window = [(VKImageAnalysisButton *)self window];
  screen = [window screen];
  [screen scale];
  UIRectCenteredIntegralRectScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(VKImageAnalysisButton *)self _updateGlyph];

    [(VKImageAnalysisButton *)self _updateBackgroundColors];
  }
}

- (void)setupForFunction:(unint64_t)function
{
  _updateGlyph = [(VKImageAnalysisButton *)self _updateGlyph];
  if (function - 1 > 1)
  {
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:17];
    _updateGlyph = [MEMORY[0x1E69DC730] effectWithStyle:12];
    v7 = _updateGlyph;
  }

  if (!vk_solariumEnabled(_updateGlyph, v6) || [(VKImageAnalysisButton *)self inhibitGlassMaterial])
  {
    _backgroundVisualEffectView = [(VKImageAnalysisButton *)self _backgroundVisualEffectView];
    [_backgroundVisualEffectView setEffect:v10];

    _selectedBackgroundVisualEffectView = [(VKImageAnalysisButton *)self _selectedBackgroundVisualEffectView];
    [_selectedBackgroundVisualEffectView setEffect:v7];
  }

  [(VKImageAnalysisButton *)self _updateBackgroundColors];
  [(VKImageAnalysisButton *)self setNeedsLayout];
}

- (void)setCustomSymbolFont:(id)font
{
  objc_storeStrong(&self->_customSymbolFont, font);

  [(VKImageAnalysisButton *)self _updateGlyph];
}

- (double)backgroundDiameter
{
  backgroundDiameter = self->_backgroundDiameter;
  if (vk_isSeedBuild())
  {
    traitCollection = [(VKImageAnalysisButton *)self traitCollection];
    vk_isOptimizedForMac = [traitCollection vk_isOptimizedForMac];

    if (vk_isOptimizedForMac)
    {
      return 26.0;
    }
  }

  if ([(VKImageAnalysisButton *)self supportsDynamicType])
  {
    imageView = [(VKImageAnalysisButton *)self imageView];
    [imageView intrinsicContentSize];
    v8 = v7;
    v10 = v9;

    if (v8 >= v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    return v11 + 12.0;
  }

  return backgroundDiameter;
}

- (void)setBackgroundDiameter:(double)diameter
{
  if (self->_backgroundDiameter != diameter)
  {
    self->_backgroundDiameter = diameter;
    [(VKImageAnalysisButton *)self setDidManuallySetBackgroundDiameter:1];

    [(VKImageAnalysisButton *)self setNeedsLayout];
  }
}

- (void)setGlyphRotation:(double)rotation
{
  if (self->_glyphRotation != rotation)
  {
    self->_glyphRotation = rotation;
    [(VKImageAnalysisButton *)self glyphScale];
    [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:rotation highlighted:v5];
    imageView = [(VKImageAnalysisButton *)self imageView];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [imageView setTransform:v7];
  }
}

- (void)setGlyphScale:(double)scale
{
  if (self->_glyphScale != scale)
  {
    self->_glyphScale = scale;
    [(VKImageAnalysisButton *)self glyphRotation];
    [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:v5 highlighted:scale];
    imageView = [(VKImageAnalysisButton *)self imageView];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [imageView setTransform:v7];
  }
}

- (void)setPrefersDarkGlyphWhenSelected:(BOOL)selected
{
  if (self->_prefersDarkGlyphWhenSelected != selected)
  {
    self->_prefersDarkGlyphWhenSelected = selected;
    [(VKImageAnalysisButton *)self _updateGlyph];
  }
}

- (void)setHighlightedGlyphScaleFactor:(double)factor animation:(id)animation
{
  animationCopy = animation;
  [(VKImageAnalysisButton *)self set_highlightedGlyphScaleFactor:factor];
  [(VKImageAnalysisButton *)self set_highlightedGlyphAnimation:animationCopy];
}

- (void)setCameraModeBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_cameraModeBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_cameraModeBackgroundColor, color);
    [(VKImageAnalysisButton *)self _updateBackgroundColors];
  }
}

- (void)setMaximumContentSizeCategory:(id)category
{
  v4.receiver = self;
  v4.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v4 setMaximumContentSizeCategory:category];
  [(VKImageAnalysisButton *)self _updateForTraitCollection];
  [(VKImageAnalysisButton *)self _updateGlyph];
}

- (void)_updateBackgroundColors
{
  function = [(VKImageAnalysisButton *)self function];
  if ((function - 1) >= 2)
  {
    if (function)
    {
      v9 = 0;
      tintColor = 0;
    }

    else
    {
      tintColor = [(VKImageAnalysisButton *)self tintColor];
      function = [(VKImageAnalysisButton *)self cameraModeBackgroundColor];
      v9 = function;
    }
  }

  else
  {
    tintColor2 = [(VKImageAnalysisButton *)self tintColor];
    tintColor = [tintColor2 colorWithAlphaComponent:0.85];

    v9 = 0;
  }

  if (!vk_solariumEnabled(function, v4) || [(VKImageAnalysisButton *)self inhibitGlassMaterial])
  {
    _selectedBackgroundColorView = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
    [_selectedBackgroundColorView setBackgroundColor:tintColor];

    _backgroundView = [(VKImageAnalysisButton *)self _backgroundView];
    [_backgroundView setBackgroundColor:v9];
  }
}

- (void)_updateGlyph
{
  function = [(VKImageAnalysisButton *)self function];
  v5 = vk_solariumEnabled(function, v4);
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  if (function == 2 && v5)
  {
    if (([(VKImageAnalysisButton *)self isSelected]& 1) != 0)
    {
      vk_appearanceType = 0;
    }

    else
    {
      _backgroundVisualEffectView = [(VKImageAnalysisButton *)self _backgroundVisualEffectView];
      traitCollection = [_backgroundVisualEffectView traitCollection];
      vk_appearanceType = [traitCollection vk_appearanceType];
    }

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v11 = [labelColor vk_resolvedColorWithAppearance:vk_appearanceType];

    whiteColor = v11;
  }

  if ([(VKImageAnalysisButton *)self prefersDarkGlyphWhenSelected])
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    blackColor = whiteColor;
  }

  v13 = blackColor;
  glyphConfiguration = [(VKImageAnalysisButton *)self glyphConfiguration];
  if (glyphConfiguration == 1)
  {
    v15 = MEMORY[0x1E69DDD80];
    goto LABEL_14;
  }

  if (!glyphConfiguration)
  {
    v15 = MEMORY[0x1E69DDCF8];
LABEL_14:
    v16 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*v15 scale:3];
    goto LABEL_16;
  }

  v16 = 0;
LABEL_16:
  customSymbolFont = [(VKImageAnalysisButton *)self customSymbolFont];

  if (customSymbolFont)
  {
    customSymbolFont2 = [(VKImageAnalysisButton *)self customSymbolFont];
    [MEMORY[0x1E69DB878] defaultFontSize];
    v19 = [customSymbolFont2 fontWithSize:?];

    v20 = [MEMORY[0x1E69DCAD8] configurationWithFont:v19];

    v16 = v20;
  }

  mode = [(VKImageAnalysisButton *)self mode];
  if (mode == 2)
  {
    v23 = @"appclip";
    v22 = 1;
  }

  else if (mode == 1)
  {
    v22 = 0;
    v23 = @"qrcode.viewfinder";
  }

  else
  {
    v22 = 0;
    if (mode)
    {
      v23 = 0;
    }

    else
    {
      v23 = @"text.viewfinder";
    }
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__20;
  v51 = __Block_byref_object_dispose__20;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__20;
  v45 = __Block_byref_object_dispose__20;
  v46 = 0;
  if (![(VKImageAnalysisButton *)self supportsDynamicType])
  {
    traitCollection2 = [(VKImageAnalysisButton *)self traitCollection];
    traitCollection3 = [traitCollection2 vk_traitCollectionWithContentSize:*MEMORY[0x1E69DDC70]];

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_29:
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __37__VKImageAnalysisButton__updateGlyph__block_invoke;
    v34[3] = &unk_1E7BE7410;
    v35 = v23;
    v26 = v16;
    v36 = v26;
    v39 = &v47;
    v37 = whiteColor;
    v40 = &v41;
    v38 = v13;
    [traitCollection3 vk_performAsCurrent:v34];

    v30 = v35;
    goto LABEL_30;
  }

  traitCollection3 = [(VKImageAnalysisButton *)self traitCollection];
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_27:
  v25 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:whiteColor];
  v26 = [v16 configurationByApplyingConfiguration:v25];

  v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:v23 withConfiguration:v26];
  v28 = v48[5];
  v48[5] = v27;

  v29 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v13];
  v30 = [v26 configurationByApplyingConfiguration:v29];

  v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:v23 withConfiguration:v30];
  v32 = v42[5];
  v42[5] = v31;

LABEL_30:
  [(VKImageAnalysisButton *)self setImage:v48[5] forState:0];
  [(VKImageAnalysisButton *)self setImage:v42[5] forState:4];
  [(VKImageAnalysisButton *)self setImage:v42[5] forState:5];

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
}

void __37__VKImageAnalysisButton__updateGlyph__block_invoke(void *a1)
{
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:a1[4] withConfiguration:a1[5]];
  v2 = [v8 imageWithTintColor:a1[6] renderingMode:1];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v8 imageWithTintColor:a1[7] renderingMode:1];
  v6 = *(a1[9] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (CGAffineTransform)_glyphTransformForRotation:(SEL)rotation scale:(double)scale highlighted:(double)highlighted
{
  v6 = a6;
  [(VKImageAnalysisButton *)self _highlightedGlyphScaleFactor];
  v12 = v11 * highlighted;
  if (v6)
  {
    highlightedCopy = v11 * highlighted;
  }

  else
  {
    highlightedCopy = highlighted;
  }

  if ([MEMORY[0x1E69DC938] vk_isiPad])
  {
    [(VKImageAnalysisButton *)self backgroundDiameter];
    if (v12 == highlighted && v14 != 37.0)
    {
      highlightedCopy = highlightedCopy * 1.08108108;
    }
  }

  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeRotation(&v20, scale);
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, highlightedCopy, highlightedCopy);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v20;
  v17 = v19;
  return CGAffineTransformConcat(retstr, &t1, &v17);
}

- (void)_updateForTraitCollection
{
  if ([(VKImageAnalysisButton *)self supportsDynamicType])
  {
    [(VKImageAnalysisButton *)self _updateGlyph];
  }

  if (![(VKImageAnalysisButton *)self didManuallySetBackgroundDiameter])
  {
    traitCollection = [(VKImageAnalysisButton *)self traitCollection];
    if ([traitCollection vk_shouldUseLargeButtons])
    {
      v3 = 50.0;
    }

    else if ([MEMORY[0x1E69DC938] vk_isiPad])
    {
      vk_hasCompactWidth = [traitCollection vk_hasCompactWidth];
      v3 = 40.0;
      if (vk_hasCompactWidth)
      {
        v3 = 37.0;
      }
    }

    else
    {
      v3 = 37.0;
    }

    if (self->_backgroundDiameter != v3)
    {
      self->_backgroundDiameter = v3;
      [(VKImageAnalysisButton *)self setNeedsLayout];
    }
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(VKImageAnalysisButton *)self _selectedIndicatorBounds];
  v7 = [v6 bezierPathWithOvalInRect:?];
  [v5 setVisiblePath:v7];

  v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];

  return v10;
}

@end