@interface UITabBarButtonLabel
+ (double)_fontPointSizeForIdiom:(int64_t)idiom;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UITabBarButton)tabBarButton;
- (UITabBarButtonLabel)initWithFrame:(CGRect)frame;
- (UITabBarButtonLabel)initWithTabBarDisplayStyle:(int64_t)style;
- (id)_fontForIdiom:(int64_t)idiom forTabBarDisplayStyle:(int64_t)style;
- (id)_mutableAttributedTextExcludingKern;
- (id)_titleTextAttributesForState:(unint64_t)state;
- (int64_t)_idiomForFontGivenIdiom:(int64_t)idiom;
- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_applyTabBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_legacyApperance_updateTextColorsForState;
- (void)_updateForFontChangeWithIdiom:(int64_t)idiom;
- (void)resizeToFitWidth:(double)width;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setUnselectedTintColor:(id)color;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTextColorsForState;
@end

@implementation UITabBarButtonLabel

- (void)updateTextColorsForState
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarButton);
  itemAppearanceData = [WeakRetained itemAppearanceData];
  if (itemAppearanceData)
  {
    v5 = itemAppearanceData;
    v6 = objc_loadWeakRetained(&self->_tabBarButton);
    layoutStyle = [v6 layoutStyle];

    if (layoutStyle != 3)
    {
      text = [(UILabel *)self text];
      if ([text length])
      {
        v8 = objc_loadWeakRetained(&self->_tabBarButton);
        _currentItemState = [v8 _currentItemState];

        v10 = objc_loadWeakRetained(&self->_tabBarButton);
        v11 = [v10 defaultColorForState:_currentItemState];
        if (v11)
        {
          [(UILabel *)self setTextColor:v11];
        }

        else
        {
          v12 = objc_loadWeakRetained(&self->_tabBarButton);
          tintColor = [v12 tintColor];
          [(UILabel *)self setTextColor:tintColor];
        }

        v14 = objc_loadWeakRetained(&self->_tabBarButton);
        v15 = [v14 titleTextAttributesForState:_currentItemState];

        v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:text attributes:v15];
        [(UILabel *)self setAttributedText:v16];
      }

      return;
    }
  }

  else
  {
  }

  [(UITabBarButtonLabel *)self _legacyApperance_updateTextColorsForState];
}

- (void)_legacyApperance_updateTextColorsForState
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarButton);
  tabBar = [WeakRetained tabBar];
  v49 = [(UITabBarButtonLabel *)tabBar _effectiveUnselectedTabTintColorConsideringView:self];
  isFocused = [WeakRetained isFocused];
  v5 = objc_loadWeakRetained(&self->_tabBarButton);
  if ([v5 isDefaultTVLayout])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:8];
    v8 = [v7 valueForKey:*off_1E70EC920];
    v6 = v8 == 0;
  }

  if ([(UITabBarButtonLabel *)tabBar _useVibrantItems])
  {
    selfCopy = tabBar;
  }

  else
  {
    selfCopy = self;
  }

  tintColor = [(UIView *)selfCopy tintColor];
  unselectedTintColor = self->_unselectedTintColor;
  if (unselectedTintColor && !self->_isSelected)
  {
    v18 = unselectedTintColor;
    goto LABEL_19;
  }

  if (self->_isHighlighted && self->_isSelected)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      v14 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC920 state:5];
      if (!v14)
      {
        v15 = WeakRetained;
        v16 = 5;
LABEL_35:
        v31 = [v15 _contentTintColorForState:v16];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = tintColor;
        }

        v19 = v33;

        goto LABEL_39;
      }

      goto LABEL_32;
    }
  }

  if (!v6 && (isFocused & 1) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_tabBarButton);
    isDefaultTVLayout = [v21 isDefaultTVLayout];

    if (isDefaultTVLayout)
    {
      v23 = objc_loadWeakRetained(&self->_tabBarButton);
      v24 = [v23 defaultColorForState:4];
      v25 = v24;
      if (v24)
      {
        tintColor2 = v24;
      }

      else
      {
        tintColor2 = [(UIView *)self tintColor];
      }

      v30 = tintColor2;

      tintColor = v30;
    }

    v14 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC920 state:8];
    if (!v14)
    {
      v15 = WeakRetained;
      v16 = 8;
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (!self->_isHighlighted)
  {
    appearanceStorage = self->_appearanceStorage;
    v28 = *off_1E70EC920;
    if (!self->_isSelected)
    {
      v29 = [(_UIBarItemAppearanceStorage *)appearanceStorage textAttributeForKey:v28 state:0];
      v20 = v29 != 0;
      if (!v29)
      {
        _defaultUnselectedLabelTintColor = [WeakRetained _defaultUnselectedLabelTintColor];
        if (_defaultUnselectedLabelTintColor)
        {
          v19 = _defaultUnselectedLabelTintColor;
          goto LABEL_40;
        }

        v47 = [WeakRetained _contentTintColorForState:0];
        v14 = v47;
        v48 = v49;
        if (v47)
        {
          v48 = v47;
        }

        v17 = v48;
        goto LABEL_33;
      }

LABEL_28:
      v19 = v29;
      goto LABEL_41;
    }

    v18 = [(_UIBarItemAppearanceStorage *)appearanceStorage textAttributeForKey:v28 state:4];
    if (!v18)
    {
      v29 = [WeakRetained _contentTintColorForState:4];
      v20 = v29 != 0;
      if (!v29)
      {
        v29 = tintColor;
        tintColor = v29;
        v20 = 0;
      }

      goto LABEL_28;
    }

LABEL_19:
    v19 = v18;
    v20 = 1;
    goto LABEL_41;
  }

  v14 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC920 state:1];
  if (v14)
  {
LABEL_32:
    v17 = v14;
    goto LABEL_33;
  }

  v17 = [WeakRetained _contentTintColorForState:1];
LABEL_33:
  v19 = v17;
LABEL_39:

LABEL_40:
  v20 = 0;
LABEL_41:
  v34 = objc_loadWeakRetained(&self->_tabBarButton);
  isDefaultTVLayout2 = [v34 isDefaultTVLayout];

  if (!isDefaultTVLayout2)
  {
    goto LABEL_45;
  }

  traitCollection2 = [(UIView *)tabBar traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  v38 = 1.0;
  if (!((_AXSEnhanceBackgroundContrastEnabled() != 0) | isFocused & 1))
  {
    if ([WeakRetained _isSelected])
    {
      if (!v20)
      {
        v44 = _UISolariumEnabled();
        v39 = 0;
        if (userInterfaceStyle == 2)
        {
          v45 = 0.5;
        }

        else
        {
          v45 = 0.86;
        }

        if (v44)
        {
          v38 = 1.0;
        }

        else
        {
          v38 = v45;
        }

        goto LABEL_44;
      }
    }

    else if (!v20)
    {
      if (_UISolariumEnabled())
      {
        v38 = 1.0;
      }

      else
      {
        v38 = 0.5;
      }

      if (userInterfaceStyle == 2)
      {
        v39 = 24;
      }

      else
      {
        v39 = 23;
      }

      goto LABEL_44;
    }
  }

  v39 = 0;
LABEL_44:
  [(UIView *)self setCompositingMode:v39];
  [(UIView *)self setAlpha:v38];
LABEL_45:
  [(UILabel *)self setTextColor:v19];
  if (self->_isSelected)
  {
    v40 = 4;
  }

  else
  {
    v40 = 0;
  }

  v41 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC9B0 state:v40];
  v42 = v41;
  if (v41)
  {
    shadowColor = [v41 shadowColor];
    [(UILabel *)self setShadowColor:shadowColor];

    [v42 shadowOffset];
    [(UILabel *)self setShadowOffset:?];
  }

  if (+[UIView _isInAnimationBlock])
  {
    [(UIView *)self forceDisplayIfNeeded];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UITabBarButtonLabel;
  [(UILabel *)&v3 tintColorDidChange];
  [(UITabBarButtonLabel *)self updateTextColorsForState];
}

- (id)_mutableAttributedTextExcludingKern
{
  if (self)
  {
    attributedText = [self attributedText];
    v2 = attributedText;
    if (attributedText)
    {
      v3 = attributedText;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    }

    v4 = v3;

    v5 = [v4 mutableCopy];
    [v5 removeAttribute:*off_1E70EC950 range:{0, objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UITabBarButtonLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UITabBarButtonLabel;
  v3 = [(UILabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIDevice currentDevice];
    v5 = -[UITabBarButtonLabel _fontForIdiom:](v3, "_fontForIdiom:", [v4 userInterfaceIdiom]);
    [(UILabel *)v3 setFont:v5];
  }

  return v3;
}

- (UITabBarButtonLabel)initWithTabBarDisplayStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = UITabBarButtonLabel;
  v4 = [(UIView *)&v8 init];
  if (v4)
  {
    v5 = +[UIDevice currentDevice];
    v6 = -[UITabBarButtonLabel _fontForIdiom:forTabBarDisplayStyle:](v4, "_fontForIdiom:forTabBarDisplayStyle:", [v5 userInterfaceIdiom], style);
    [(UILabel *)v4 setFont:v6];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITabBarButtonLabel;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)resizeToFitWidth:(double)width
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = width + -2.0;
  boundsWidth = self->_boundsWidth;
  previousAttributedTextForSizingExcludingKern = self->_previousAttributedTextForSizingExcludingKern;
  attributedText = [(UILabel *)self attributedText];
  if ([attributedText length] && (objc_msgSend(attributedText, "attribute:atIndex:effectiveRange:", *off_1E70EC950, 0, 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "doubleValue"), v10 = v9, v8, v10 < 0.0))
  {
    _mutableAttributedTextExcludingKern = [(UITabBarButtonLabel *)self _mutableAttributedTextExcludingKern];
    v12 = 1;
  }

  else
  {
    _mutableAttributedTextExcludingKern = [attributedText mutableCopy];
    v12 = 0;
  }

  v13 = v4 != boundsWidth || previousAttributedTextForSizingExcludingKern == 0;
  if (v13 || ![_mutableAttributedTextExcludingKern isEqualToAttributedString:self->_previousAttributedTextForSizingExcludingKern])
  {
    if (v4 != boundsWidth)
    {
      [(UIView *)self sizeToFit];
    }

    self->_boundsWidth = v4;
    [(UIView *)self frame];
    if (((v22 < v4) & ~v12) != 0)
    {
      previousKernAttributeForSizing = self->_previousKernAttributeForSizing;
      self->_previousKernAttributeForSizing = 0;
    }

    else
    {
      v39 = v21;
      v40 = v20;
      v41 = v19;
      previousKernAttributeForSizing = [attributedText mutableCopy];
      v24 = [(NSNumber *)previousKernAttributeForSizing length];
      v25 = *off_1E70EC950;
      v26 = &unk_1EFE2E268;
      [(NSNumber *)previousKernAttributeForSizing addAttribute:*off_1E70EC950 value:&unk_1EFE2E268 range:0, v24];
      [(NSNumber *)previousKernAttributeForSizing boundingRectWithSize:0 options:0 context:3.40282347e38, 3.40282347e38];
      v28 = v27;
      [(UIView *)self _currentScreenScale];
      v30 = v29;
      if (ceil(v29 * v28) / v29 < v4)
      {
        v42 = v4;
        v31 = 0.0;
        v32 = 1.2;
        do
        {
          v33 = v26;
          v34 = (v32 + v31) * 0.5;
          v26 = [MEMORY[0x1E696AD98] numberWithDouble:-v34];

          [(NSNumber *)previousKernAttributeForSizing addAttribute:v25 value:v26 range:0, v24];
          [(NSNumber *)previousKernAttributeForSizing boundingRectWithSize:0 options:0 context:3.40282347e38, 3.40282347e38];
          v28 = ceil(v30 * v35) / v30;
          if (v28 <= v42)
          {
            if (v28 >= v42)
            {
              break;
            }
          }

          else
          {
            v31 = (v32 + v31) * 0.5;
            v34 = v32;
          }

          v32 = v34;
        }

        while (v34 - v31 >= 0.01875);
      }

      [(UILabel *)self setAttributedText:previousKernAttributeForSizing];
      [(UILabel *)self setFrame:v41, v40, v28, v39];
      v36 = self->_previousKernAttributeForSizing;
      self->_previousKernAttributeForSizing = v26;
    }

    _mutableAttributedTextExcludingKern2 = [(UITabBarButtonLabel *)self _mutableAttributedTextExcludingKern];
    v38 = self->_previousAttributedTextForSizingExcludingKern;
    self->_previousAttributedTextForSizingExcludingKern = _mutableAttributedTextExcludingKern2;
  }

  else
  {
    [(NSNumber *)self->_previousKernAttributeForSizing floatValue];
    if (fabsf(v14) >= 2.2204e-16)
    {
      v15 = self->_previousKernAttributeForSizing;
      v43 = *off_1E70EC950;
      v44[0] = v15;
      v16 = MEMORY[0x1E695DF20];
      v17 = _mutableAttributedTextExcludingKern;
      v18 = [v16 dictionaryWithObjects:v44 forKeys:&v43 count:1];
      [v17 addAttributes:v18 range:{0, objc_msgSend(v17, "length")}];

      [(UILabel *)self setAttributedText:v17];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_isSelected != selected)
  {
    self->_isSelected = selected;
    [(UITabBarButtonLabel *)self updateTextColorsForState];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_isHighlighted != highlighted)
  {
    self->_isHighlighted = highlighted;
    [(UITabBarButtonLabel *)self updateTextColorsForState];
  }
}

- (void)setUnselectedTintColor:(id)color
{
  objc_storeStrong(&self->_unselectedTintColor, color);
  [(UITabBarButtonLabel *)self _updateLabelsVibrancy];

  [(UITabBarButtonLabel *)self updateTextColorsForState];
}

- (void)_updateForFontChangeWithIdiom:(int64_t)idiom
{
  v4 = [(UITabBarButtonLabel *)self _fontForIdiom:idiom];
  [(UILabel *)self setFont:v4];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UITabBarButtonLabel__updateForFontChangeWithIdiom___block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIView performWithoutAnimation:v5];
}

- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  appearanceStorage = self->_appearanceStorage;
  if (attributesCopy)
  {
    if (!appearanceStorage)
    {
      v8 = objc_alloc_init(_UITabBarItemAppearanceStorage);
      v9 = self->_appearanceStorage;
      self->_appearanceStorage = v8;
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [attributesCopy _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v10 = _checkControlStateArgumentAdjustIfNecessary(state);
  v11 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v10];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v11)
  {
    if (([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v11] & 1) == 0)
    {
      [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:v10];
      [(UITabBarButtonLabel *)self updateTextColorsForState];
      [(UILabel *)self setNeedsDisplay];
      if (!v10)
      {
        v12 = [_ui_attributesForDictionaryContainingUIStringDrawingKeys objectForKey:*off_1E70EC918];
        font = [(UILabel *)self font];
        if (v12 | font && ([v12 isEqual:font] & 1) == 0)
        {
          _screen = [(UIView *)self _screen];
          -[UITabBarButtonLabel _updateForFontChangeWithIdiom:](self, "_updateForFontChangeWithIdiom:", [_screen _userInterfaceIdiom]);
        }

        [(UITabBarButtonLabel *)self _updateLabelsVibrancy];
        _screen2 = [(UIView *)self _screen];
        _userInterfaceIdiom = [_screen2 _userInterfaceIdiom];

        if (_userInterfaceIdiom == 3)
        {
          v17 = 0.9;
        }

        else
        {
          v17 = 0.0;
        }

        [(UILabel *)self setAdjustsFontSizeToFitWidth:_userInterfaceIdiom == 3];
        [(UILabel *)self setMinimumScaleFactor:v17];
      }
    }
  }
}

- (id)_titleTextAttributesForState:(unint64_t)state
{
  v4 = _checkControlStateArgumentAdjustIfNecessary(state);
  appearanceStorage = self->_appearanceStorage;

  return [(_UIBarItemAppearanceStorage *)appearanceStorage textAttributesForState:v4];
}

- (void)_applyTabBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors
{
  storageCopy = storage;
  selectorsCopy = selectors;
  if (selectorsCopy)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, selectorsCopy, 1);
  }

  if (storageCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__UITabBarButtonLabel__applyTabBarButtonAppearanceStorage_withTaggedSelectors___block_invoke;
    v8[3] = &unk_1E70F9438;
    v8[4] = self;
    [storageCopy enumerateTextAttributesWithBlock:v8];
  }
}

+ (double)_fontPointSizeForIdiom:(int64_t)idiom
{
  if (idiom == 8 || idiom == 2)
  {
    return 40.0;
  }

  result = 10.0;
  if (idiom == 1)
  {
    v4 = dyld_program_sdk_at_least();
    result = 14.0;
    if (v4)
    {
      return 10.0;
    }
  }

  return result;
}

- (id)_fontForIdiom:(int64_t)idiom forTabBarDisplayStyle:(int64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarButton);
  itemAppearanceData = [WeakRetained itemAppearanceData];

  if (itemAppearanceData)
  {
    v9 = objc_loadWeakRetained(&self->_tabBarButton);
    _currentItemState = [v9 _currentItemState];

    v11 = objc_loadWeakRetained(&self->_tabBarButton);
    v12 = [v11 titleTextAttributesForState:_currentItemState];
    v13 = [v12 objectForKey:*off_1E70EC918];
  }

  else
  {
    v11 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
    v13 = [v11 objectForKey:*off_1E70EC918];
  }

  if (v13)
  {
    [v13 pointSize];
    if (v14 == 0.0)
    {
      [UITabBarButtonLabel _fontPointSizeForIdiom:idiom];
      v15 = [v13 fontWithSize:?];

      v13 = v15;
    }

    goto LABEL_19;
  }

  switch(idiom)
  {
    case 8:
      goto LABEL_10;
    case 3:
      traitCollection = [(UIView *)self traitCollection];
      v13 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedCaption2" compatibleWithTraitCollection:traitCollection];
LABEL_18:

      goto LABEL_19;
    case 2:
LABEL_10:
      if (_UISolariumEnabled())
      {
        [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedCaption1"];
      }

      else
      {
        [off_1E70ECC18 boldSystemFontOfSize:29.0];
      }
      v13 = ;
      v17 = objc_loadWeakRetained(&self->_tabBarButton);
      traitCollection = [v17 tabBar];

      if (traitCollection)
      {
        style = [traitCollection _displayStyle];
      }

      if (!style)
      {
        v18 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];

        v13 = v18;
      }

      goto LABEL_18;
  }

  v20 = objc_loadWeakRetained(&self->_tabBarButton);
  layoutStyle = [v20 layoutStyle];

  if (layoutStyle)
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v23 = [traitCollection2 _traitCollectionByReplacingObject:@"UICTContentSizeCategoryL" forTraitToken:0x1EFE32440];

    v24 = objc_loadWeakRetained(&self->_tabBarButton);
    layoutStyle2 = [v24 layoutStyle];

    v26 = &UIFontTextStyleFootnote;
    if (layoutStyle2 == 2)
    {
      v26 = &UIFontTextStyleCaption1;
    }

    v13 = [off_1E70ECC18 preferredFontForTextStyle:*v26 compatibleWithTraitCollection:v23];
  }

  else
  {
    [UITabBarButtonLabel _fontPointSizeForIdiom:idiom];
    v28 = v27;
    v29 = dyld_program_sdk_at_least();
    v30 = off_1E70ECD20;
    if (!v29)
    {
      v30 = off_1E70ECD28;
    }

    v13 = [off_1E70ECC18 systemFontOfSize:v28 weight:*v30];
  }

LABEL_19:

  return v13;
}

- (int64_t)_idiomForFontGivenIdiom:(int64_t)idiom
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarButton);
  tabBar = [WeakRetained tabBar];
  _tabBarSizing = [tabBar _tabBarSizing];

  if (_tabBarSizing)
  {
    return _tabBarSizing != 1;
  }

  else
  {
    return idiom;
  }
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v7.receiver = self;
  v7.super_class = UITabBarButtonLabel;
  [(UILabel *)&v7 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _screen = [(UIView *)self _screen];
    -[UITabBarButtonLabel _updateForFontChangeWithIdiom:](self, "_updateForFontChangeWithIdiom:", -[UITabBarButtonLabel _idiomForFontGivenIdiom:](self, "_idiomForFontGivenIdiom:", [_screen _userInterfaceIdiom]));
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = UITabBarButtonLabel;
  [(UILabel *)&v10 traitCollectionDidChange:changeCopy];
  if (dyld_program_sdk_at_least())
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (!self->_hasSeenIdiom || userInterfaceIdiom != [changeCopy userInterfaceIdiom])
    {
      self->_hasSeenIdiom = 1;
      [(UITabBarButtonLabel *)self _updateForFontChangeWithIdiom:[(UITabBarButtonLabel *)self _idiomForFontGivenIdiom:userInterfaceIdiom]];
    }
  }

  traitCollection2 = [(UIView *)self traitCollection];
  legibilityWeight = [traitCollection2 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    self->_boundsWidth = 0.0;
  }
}

- (UITabBarButton)tabBarButton
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarButton);

  return WeakRetained;
}

@end