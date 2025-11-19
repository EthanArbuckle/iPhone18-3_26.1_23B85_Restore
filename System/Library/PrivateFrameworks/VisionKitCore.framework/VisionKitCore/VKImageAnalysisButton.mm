@interface VKImageAnalysisButton
- (CGAffineTransform)_glyphTransformForRotation:(SEL)a3 scale:(double)a4 highlighted:(double)a5;
- (CGRect)_selectedIndicatorBounds;
- (CGSize)intrinsicContentSize;
- (VKImageAnalysisButton)initWithCoder:(id)a3;
- (VKImageAnalysisButton)initWithFrame:(CGRect)a3;
- (double)backgroundDiameter;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_commonVKImageAnalysisButtonInitialization;
- (void)_updateBackgroundColors;
- (void)_updateForTraitCollection;
- (void)_updateGlyph;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundDiameter:(double)a3;
- (void)setCameraModeBackgroundColor:(id)a3;
- (void)setCustomSymbolFont:(id)a3;
- (void)setGlyphRotation:(double)a3;
- (void)setGlyphScale:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedGlyphScaleFactor:(double)a3 animation:(id)a4;
- (void)setInhibitGlassMaterial:(BOOL)a3;
- (void)setMaximumContentSizeCategory:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setPrefersDarkGlyphWhenSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupForFunction:(unint64_t)a3;
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
    v3 = [(VKImageAnalysisButton *)self backgroundEffectView];
    [v3 unregisterForTraitChanges:self->_backgroundTraitChangeObserver];
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
  v13 = [(UIVisualEffectView *)v11 contentView];
  [v13 addSubview:v12];

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

  v22 = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
  v23 = [(VKImageAnalysisButton *)self tintColor];
  [v22 vk_setGlassBackgroundWithType:0 tintColor:v23 flexible:1];

  v24 = [(VKImageAnalysisButton *)self _backgroundView];
  [v24 vk_setGlassBackgroundWithType:0 tintColor:0 flexible:1];

  v25 = self->__backgroundVisualEffectView;
  v28 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v27 = [(UIVisualEffectView *)v25 registerForTraitChanges:v26 withTarget:self action:sel__updateForTraitCollection];

  [(VKImageAnalysisButton *)self setBackgroundTraitChangeObserver:v27];
}

- (void)setInhibitGlassMaterial:(BOOL)a3
{
  if (self->_inhibitGlassMaterial != a3)
  {
    v4 = a3;
    self->_inhibitGlassMaterial = a3;
    v6 = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
    v7 = v6;
    if (v4)
    {
      [v6 vk_removeGlassBackground];

      v8 = [(VKImageAnalysisButton *)self _backgroundView];
      [v8 vk_removeGlassBackground];

      v9 = [(VKImageAnalysisButton *)self _selectedBackgroundView];
      [v9 setOverrideUserInterfaceStyle:0];

      v10 = [(VKImageAnalysisButton *)self _backgroundView];
      [v10 setOverrideUserInterfaceStyle:0];
    }

    else
    {
      v11 = [(VKImageAnalysisButton *)self tintColor];
      [v7 vk_setGlassBackgroundWithType:0 tintColor:v11 flexible:1];

      v10 = [(VKImageAnalysisButton *)self _backgroundView];
      [v10 vk_setGlassBackgroundWithType:0 tintColor:0 flexible:1];
    }

    v12 = [(VKImageAnalysisButton *)self function];

    [(VKImageAnalysisButton *)self setupForFunction:v12];
  }
}

- (VKImageAnalysisButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VKImageAnalysisButton;
  v3 = [(VKImageAnalysisButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VKImageAnalysisButton *)v3 _commonVKImageAnalysisButtonInitialization];
  }

  return v4;
}

- (VKImageAnalysisButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VKImageAnalysisButton;
  v3 = [(VKImageAnalysisButton *)&v6 initWithCoder:a3];
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
  v3 = [(VKImageAnalysisButton *)self imageView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v33 = *MEMORY[0x1E695EFD0];
  v34 = v4;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:&v33];
  v32.receiver = self;
  v32.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v32 layoutSubviews];
  v5 = [(VKImageAnalysisButton *)self _backgroundView];
  v6 = [(VKImageAnalysisButton *)self _selectedBackgroundView];
  v7 = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
  [v3 frame];
  v9 = v8;
  v11 = v10;
  UIRectGetCenter();
  [v3 setCenter:?];
  [v3 setBounds:{0.0, 0.0, v9, v11}];
  [(VKImageAnalysisButton *)self glyphRotation];
  v13 = v12;
  [(VKImageAnalysisButton *)self glyphScale];
  [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:v13 highlighted:v14];
  v33 = v29;
  v34 = v30;
  v35 = v31;
  [v3 setTransform:&v33];
  [(VKImageAnalysisButton *)self _selectedIndicatorBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 setFrame:?];
  [v6 setFrame:{v16, v18, v20, v22}];
  v23 = [v5 layer];
  [v23 setCornerRadius:v20 * 0.5];

  v24 = [v6 layer];
  [v24 setCornerRadius:v20 * 0.5];

  v25 = [v7 layer];
  [v25 setCornerRadius:v20 * 0.5];

  v26 = [(VKImageAnalysisButton *)self layer];
  [v26 setCornerRadius:v20 * 0.5];

  v27 = [(VKImageAnalysisButton *)self _selectedBackgroundView];
  [(VKImageAnalysisButton *)self bringSubviewToFront:v27];

  v28 = [(VKImageAnalysisButton *)self imageView];
  [(VKImageAnalysisButton *)self bringSubviewToFront:v28];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKImageAnalysisButton *)self isSelected];
  v8.receiver = self;
  v8.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v8 setSelected:v3];
  if (v5 != v3)
  {
    v6 = v3;
    v7 = [(VKImageAnalysisButton *)self _selectedBackgroundView];
    [v7 setAlpha:v6];

    [(VKImageAnalysisButton *)self _updateGlyph];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(VKImageAnalysisButton *)self isHighlighted];
  if ([(VKImageAnalysisButton *)self function]!= 2 || [(VKImageAnalysisButton *)self mode]!= 1 && [(VKImageAnalysisButton *)self mode]!= 2)
  {
    v19.receiver = self;
    v19.super_class = VKImageAnalysisButton;
    [(VKImageAnalysisButton *)&v19 setHighlighted:v3];
  }

  [(VKImageAnalysisButton *)self _highlightedGlyphScaleFactor];
  if (v5 != v3)
  {
    v7 = v6;
    if (v6 != 1.0)
    {
      v8 = [(VKImageAnalysisButton *)self imageView];
      v9 = [v8 layer];

      v10 = [(VKImageAnalysisButton *)self _highlightedGlyphAnimation];
      v11 = [v10 copy];

      if (v3)
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
        v14 = [v9 presentationLayer];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v9;
        }

        v17 = v16;

        [v11 setKeyPath:@"transform.scale.xy"];
        v18 = [v17 valueForKeyPath:@"transform.scale.xy"];
        [v11 setFromValue:v18];

        [v11 setToValue:v13];
        [v9 addAnimation:v11 forKey:@"VKImageAnalysisButtonHighlightScale"];
      }

      [v9 setValue:v13 forKeyPath:@"transform.scale.xy"];
    }
  }
}

- (CGRect)_selectedIndicatorBounds
{
  [(VKImageAnalysisButton *)self intrinsicContentSize];
  [(VKImageAnalysisButton *)self bounds];
  v3 = [(VKImageAnalysisButton *)self window];
  v4 = [v3 screen];
  [v4 scale];
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

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(VKImageAnalysisButton *)self _updateGlyph];

    [(VKImageAnalysisButton *)self _updateBackgroundColors];
  }
}

- (void)setupForFunction:(unint64_t)a3
{
  v5 = [(VKImageAnalysisButton *)self _updateGlyph];
  if (a3 - 1 > 1)
  {
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E69DC730] effectWithStyle:17];
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:12];
    v7 = v5;
  }

  if (!vk_solariumEnabled(v5, v6) || [(VKImageAnalysisButton *)self inhibitGlassMaterial])
  {
    v8 = [(VKImageAnalysisButton *)self _backgroundVisualEffectView];
    [v8 setEffect:v10];

    v9 = [(VKImageAnalysisButton *)self _selectedBackgroundVisualEffectView];
    [v9 setEffect:v7];
  }

  [(VKImageAnalysisButton *)self _updateBackgroundColors];
  [(VKImageAnalysisButton *)self setNeedsLayout];
}

- (void)setCustomSymbolFont:(id)a3
{
  objc_storeStrong(&self->_customSymbolFont, a3);

  [(VKImageAnalysisButton *)self _updateGlyph];
}

- (double)backgroundDiameter
{
  backgroundDiameter = self->_backgroundDiameter;
  if (vk_isSeedBuild())
  {
    v4 = [(VKImageAnalysisButton *)self traitCollection];
    v5 = [v4 vk_isOptimizedForMac];

    if (v5)
    {
      return 26.0;
    }
  }

  if ([(VKImageAnalysisButton *)self supportsDynamicType])
  {
    v6 = [(VKImageAnalysisButton *)self imageView];
    [v6 intrinsicContentSize];
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

- (void)setBackgroundDiameter:(double)a3
{
  if (self->_backgroundDiameter != a3)
  {
    self->_backgroundDiameter = a3;
    [(VKImageAnalysisButton *)self setDidManuallySetBackgroundDiameter:1];

    [(VKImageAnalysisButton *)self setNeedsLayout];
  }
}

- (void)setGlyphRotation:(double)a3
{
  if (self->_glyphRotation != a3)
  {
    self->_glyphRotation = a3;
    [(VKImageAnalysisButton *)self glyphScale];
    [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:a3 highlighted:v5];
    v6 = [(VKImageAnalysisButton *)self imageView];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [v6 setTransform:v7];
  }
}

- (void)setGlyphScale:(double)a3
{
  if (self->_glyphScale != a3)
  {
    self->_glyphScale = a3;
    [(VKImageAnalysisButton *)self glyphRotation];
    [(VKImageAnalysisButton *)self _glyphTransformForRotation:[(VKImageAnalysisButton *)self isHighlighted] scale:v5 highlighted:a3];
    v6 = [(VKImageAnalysisButton *)self imageView];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [v6 setTransform:v7];
  }
}

- (void)setPrefersDarkGlyphWhenSelected:(BOOL)a3
{
  if (self->_prefersDarkGlyphWhenSelected != a3)
  {
    self->_prefersDarkGlyphWhenSelected = a3;
    [(VKImageAnalysisButton *)self _updateGlyph];
  }
}

- (void)setHighlightedGlyphScaleFactor:(double)a3 animation:(id)a4
{
  v6 = a4;
  [(VKImageAnalysisButton *)self set_highlightedGlyphScaleFactor:a3];
  [(VKImageAnalysisButton *)self set_highlightedGlyphAnimation:v6];
}

- (void)setCameraModeBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_cameraModeBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_cameraModeBackgroundColor, a3);
    [(VKImageAnalysisButton *)self _updateBackgroundColors];
  }
}

- (void)setMaximumContentSizeCategory:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKImageAnalysisButton;
  [(VKImageAnalysisButton *)&v4 setMaximumContentSizeCategory:a3];
  [(VKImageAnalysisButton *)self _updateForTraitCollection];
  [(VKImageAnalysisButton *)self _updateGlyph];
}

- (void)_updateBackgroundColors
{
  v3 = [(VKImageAnalysisButton *)self function];
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v9 = 0;
      v6 = 0;
    }

    else
    {
      v6 = [(VKImageAnalysisButton *)self tintColor];
      v3 = [(VKImageAnalysisButton *)self cameraModeBackgroundColor];
      v9 = v3;
    }
  }

  else
  {
    v5 = [(VKImageAnalysisButton *)self tintColor];
    v6 = [v5 colorWithAlphaComponent:0.85];

    v9 = 0;
  }

  if (!vk_solariumEnabled(v3, v4) || [(VKImageAnalysisButton *)self inhibitGlassMaterial])
  {
    v7 = [(VKImageAnalysisButton *)self _selectedBackgroundColorView];
    [v7 setBackgroundColor:v6];

    v8 = [(VKImageAnalysisButton *)self _backgroundView];
    [v8 setBackgroundColor:v9];
  }
}

- (void)_updateGlyph
{
  v3 = [(VKImageAnalysisButton *)self function];
  v5 = vk_solariumEnabled(v3, v4);
  v6 = [MEMORY[0x1E69DC888] whiteColor];
  if (v3 == 2 && v5)
  {
    if (([(VKImageAnalysisButton *)self isSelected]& 1) != 0)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(VKImageAnalysisButton *)self _backgroundVisualEffectView];
      v9 = [v8 traitCollection];
      v7 = [v9 vk_appearanceType];
    }

    v10 = [MEMORY[0x1E69DC888] labelColor];
    v11 = [v10 vk_resolvedColorWithAppearance:v7];

    v6 = v11;
  }

  if ([(VKImageAnalysisButton *)self prefersDarkGlyphWhenSelected])
  {
    v12 = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;
  v14 = [(VKImageAnalysisButton *)self glyphConfiguration];
  if (v14 == 1)
  {
    v15 = MEMORY[0x1E69DDD80];
    goto LABEL_14;
  }

  if (!v14)
  {
    v15 = MEMORY[0x1E69DDCF8];
LABEL_14:
    v16 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*v15 scale:3];
    goto LABEL_16;
  }

  v16 = 0;
LABEL_16:
  v17 = [(VKImageAnalysisButton *)self customSymbolFont];

  if (v17)
  {
    v18 = [(VKImageAnalysisButton *)self customSymbolFont];
    [MEMORY[0x1E69DB878] defaultFontSize];
    v19 = [v18 fontWithSize:?];

    v20 = [MEMORY[0x1E69DCAD8] configurationWithFont:v19];

    v16 = v20;
  }

  v21 = [(VKImageAnalysisButton *)self mode];
  if (v21 == 2)
  {
    v23 = @"appclip";
    v22 = 1;
  }

  else if (v21 == 1)
  {
    v22 = 0;
    v23 = @"qrcode.viewfinder";
  }

  else
  {
    v22 = 0;
    if (v21)
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
    v33 = [(VKImageAnalysisButton *)self traitCollection];
    v24 = [v33 vk_traitCollectionWithContentSize:*MEMORY[0x1E69DDC70]];

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
    v37 = v6;
    v40 = &v41;
    v38 = v13;
    [v24 vk_performAsCurrent:v34];

    v30 = v35;
    goto LABEL_30;
  }

  v24 = [(VKImageAnalysisButton *)self traitCollection];
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_27:
  v25 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v6];
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

- (CGAffineTransform)_glyphTransformForRotation:(SEL)a3 scale:(double)a4 highlighted:(double)a5
{
  v6 = a6;
  [(VKImageAnalysisButton *)self _highlightedGlyphScaleFactor];
  v12 = v11 * a5;
  if (v6)
  {
    v13 = v11 * a5;
  }

  else
  {
    v13 = a5;
  }

  if ([MEMORY[0x1E69DC938] vk_isiPad])
  {
    [(VKImageAnalysisButton *)self backgroundDiameter];
    if (v12 == a5 && v14 != 37.0)
    {
      v13 = v13 * 1.08108108;
    }
  }

  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeRotation(&v20, a4);
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, v13, v13);
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
    v5 = [(VKImageAnalysisButton *)self traitCollection];
    if ([v5 vk_shouldUseLargeButtons])
    {
      v3 = 50.0;
    }

    else if ([MEMORY[0x1E69DC938] vk_isiPad])
    {
      v4 = [v5 vk_hasCompactWidth];
      v3 = 40.0;
      if (v4)
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
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