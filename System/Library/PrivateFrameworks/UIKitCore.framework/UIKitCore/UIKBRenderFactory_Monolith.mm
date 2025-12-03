@interface UIKBRenderFactory_Monolith
- (CGPoint)_secondaryTextOffsetForKey:(id)key;
- (CGPoint)_textOffsetForKey:(id)key;
- (CGSize)controlKeyFocusBaseSize:(CGSize)size;
- (CGSize)letterKeyFocusIncreaseSize;
- (double)controlKeyFontSize;
- (double)controlKeyFontWeight;
- (double)keyRectCornerRadius;
- (double)letterKeyFontWeight;
- (double)letterKeyTwoLineFontWeight;
- (double)tldKeyFontWeight;
- (double)variantKeyFocusRectRadius;
- (double)variantPlatterCornerRadius;
- (id)_activeTraitsForControlKey:(id)key;
- (id)_activeTraitsForKey:(id)key;
- (id)_activeTraitsForLetterKey:(id)key;
- (id)_disabledTraitsForControlKey:(id)key;
- (id)_disabledTraitsForKey:(id)key;
- (id)_disabledTraitsForLetterKey:(id)key;
- (id)_enabledTraitsForControlKey:(id)key;
- (id)_enabledTraitsForKey:(id)key;
- (id)_enabledTraitsForLetterKey:(id)key;
- (id)_highlightedTraitsForControlKey:(id)key;
- (id)_highlightedTraitsForKey:(id)key;
- (id)_highlightedTraitsForLetterKey:(id)key;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)_variantTraitsForLetterKey:(id)key onKeyplane:(id)keyplane;
- (id)activeTextColor;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)disabledTextColor;
- (id)displayContentsForKey:(id)key;
- (id)enabledTextColor;
- (id)keyplaneSwitcherBackgroundColor;
- (id)keyplaneSwitcherDividerColor;
- (id)variantPlatterBackgroundColor;
- (void)configureCornersOnGeometry:(id)geometry forKey:(id)key;
- (void)configureGeometry:(id)geometry forControlKey:(id)key;
- (void)configureSymbolStyle:(id)style forControlKey:(id)key;
- (void)configureSymbolStyles:(id)styles forLetterKey:(id)key;
@end

@implementation UIKBRenderFactory_Monolith

- (id)displayContentsForKey:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = UIKBRenderFactory_Monolith;
  v5 = [(UIKBRenderFactory *)&v12 displayContentsForKey:keyCopy];
  if ([keyCopy interactionType] == 4)
  {
    [v5 setDisplayPathType:2];
    v6 = @"delete.left.fill";
LABEL_11:
    [v5 setDisplayStringImage:v6];
    goto LABEL_12;
  }

  if ([keyCopy interactionType] == 9)
  {
    localizationKey = [keyCopy localizationKey];

    if (localizationKey)
    {
      [v5 setDisplayStringImage:0];
      displayString = [keyCopy displayString];
      [v5 setDisplayString:displayString];

      goto LABEL_12;
    }
  }

  if ([keyCopy interactionType] == 10)
  {
    displayString2 = [keyCopy displayString];
    v10 = [displayString2 isEqualToString:@"shift-symbol"];

    if (v10)
    {
      [v5 setDisplayPathType:1];
      [v5 setDisplayStringImage:@"shift"];
      [v5 setDisplayString:0];
      goto LABEL_12;
    }
  }

  if ([keyCopy interactionType] == 43)
  {
    [v5 setDisplayString:0];
    v6 = @"chevron.down";
    goto LABEL_11;
  }

LABEL_12:
  if ([keyCopy state] == 16)
  {
    [v5 setDisplayString:0];
  }

  return v5;
}

- (id)enabledTextColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v3 = _labelColorSecondary([renderConfig lightKeyboard]);

  return v3;
}

- (id)activeTextColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorBlack;
  if (!lightKeyboard)
  {
    v4 = UIKBColorWhite;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)disabledTextColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorBlack_Alpha30;
  if (!lightKeyboard)
  {
    v4 = UIKBColorWhite_Alpha30;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)keyplaneSwitcherDividerColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = _AXDarkenSystemColors();
  v5 = UIKBColorBlack_Alpha60;
  if (!v4)
  {
    v5 = UIKBColorBlack_Alpha40;
  }

  v6 = UIKBColorWhite_Alpha75;
  if (!v4)
  {
    v6 = UIKBColorWhite_Alpha30;
  }

  if (!lightKeyboard)
  {
    v5 = v6;
  }

  v7 = *v5;
  v8 = *v5;

  return v7;
}

- (id)keyplaneSwitcherBackgroundColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorBlack_Alpha20;
  if (!lightKeyboard)
  {
    v4 = UIKBColorWhite_Alpha20;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)variantPlatterBackgroundColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorKeyPopupSolidLightBackground;
  if (!lightKeyboard)
  {
    v4 = UIKBColorKeyPopupSolidDarkBackground;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (double)letterKeyFontWeight
{
  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!boldTextEnabled)
  {
    v3 = off_1E70ECD28;
  }

  return *v3;
}

- (double)letterKeyTwoLineFontWeight
{
  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!boldTextEnabled)
  {
    v3 = off_1E70ECD30;
  }

  return *v3;
}

- (double)controlKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 29.0;
  }

  return v3;
}

- (double)controlKeyFontWeight
{
  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!boldTextEnabled)
  {
    v3 = off_1E70ECD20;
  }

  return *v3;
}

- (double)tldKeyFontWeight
{
  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!boldTextEnabled)
  {
    v3 = off_1E70ECD20;
  }

  return *v3;
}

- (CGSize)letterKeyFocusIncreaseSize
{
  v2 = 12.0;
  v3 = 12.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)keyRectCornerRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 12.0;
  }

  return v3;
}

- (CGSize)controlKeyFocusBaseSize:(CGSize)size
{
  v3 = size.width + 12.0;
  v4 = size.height + 12.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)variantPlatterCornerRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

- (double)variantKeyFocusRectRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactory_Monolith;
  v3 = [(UIKBRenderFactory *)&v5 backgroundTraitsForKeyplane:keyplane];

  return v3;
}

- (CGPoint)_textOffsetForKey:(id)key
{
  keyCopy = key;
  interactionType = [keyCopy interactionType];
  if (interactionType > 14)
  {
    if (interactionType == 15 || interactionType == 23)
    {
      renderConfig = [(UIKBRenderFactory *)self renderConfig];
      v13 = 0.0;
      if ([renderConfig colorAdaptiveBackground])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if ((interactionType - 1) < 2)
    {
      if (qword_1ED49F150 != -1)
      {
        dispatch_once(&qword_1ED49F150, &__block_literal_global_358);
      }

      displayString = [keyCopy displayString];
      [displayString rangeOfCharacterFromSet:_MergedGlobals_1176];
      v8 = v7;

      displayString2 = [keyCopy displayString];
      v10 = [displayString2 length];

      if (v8 == v10)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 4.0;
      }

      goto LABEL_23;
    }

    if (interactionType == 10 && [keyCopy displayType] != 4)
    {
      renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig2 colorAdaptiveBackground])
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 2.0;
      }

      goto LABEL_23;
    }
  }

  if ([keyCopy displayType] == 31)
  {
    v11 = 8.0;
LABEL_23:
    v13 = 0.0;
    goto LABEL_24;
  }

  v13 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_24:

  v15 = v13;
  v16 = v11;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)_secondaryTextOffsetForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 34)
  {
    v4 = 26.0;
    v5 = 15.0;
  }

  else if ([keyCopy displayType] == 31)
  {
    v4 = -7.0;
    v5 = 8.0;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v6 = v5;
  v7 = v4;
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)_enabledTraitsForKey:(id)key
{
  shape = [key shape];
  v5 = [UIKBRenderGeometry geometryWithShape:shape];

  v6 = [UIKBRenderTraits traitsWithGeometry:v5];
  enabledTextColor = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  v8 = [UIKBTextStyle styleWithTextColor:enabledTextColor];
  [v6 setSymbolStyle:v8];

  symbolStyle = [v6 symbolStyle];
  [symbolStyle setFontName:@"UIKBRenderFactorySystemFontName"];

  enabledTextColor2 = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  symbolStyle2 = [v6 symbolStyle];
  [symbolStyle2 setTextColor:enabledTextColor2];

  [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
  v13 = v12;
  geometry = [v6 geometry];
  [geometry setRoundRectRadius:v13];

  geometry2 = [v6 geometry];
  [geometry2 setRoundRectCorners:-1];

  return v6;
}

- (id)_highlightedTraitsForKey:(id)key
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:key];
  symbolStyle = [v4 symbolStyle];
  [symbolStyle setFontName:@"UIKBRenderFactorySystemFontName"];

  highlightedTextColor = [(UIKBRenderFactory_Monolith *)self highlightedTextColor];
  symbolStyle2 = [v4 symbolStyle];
  [symbolStyle2 setTextColor:highlightedTextColor];

  [v4 setBlurBlending:1];
  [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
  [v4 setFloatingContentViewCornerRadius:?];
  [(UIKBRenderFactory_Monolith *)self letterKeyFocusIncreaseSize];
  [v4 setFloatingContentViewFocusedIncreaseSize:?];
  [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
  [v4 setFloatingContentViewShadowVerticalOffset:?];
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  [v4 setFloatingContentViewShadowRadius:?];
  [(UIKBRenderFactory_Monolith *)self shadowOpacity];
  [v4 setFloatingContentViewShadowOpacity:?];
  [v4 setFloatingContentViewControlFocusedBaseSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  return v4;
}

- (id)_activeTraitsForKey:(id)key
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:key];
  activeTextColor = [(UIKBRenderFactory_Monolith *)self activeTextColor];
  symbolStyle = [v4 symbolStyle];
  [symbolStyle setTextColor:activeTextColor];

  return v4;
}

- (id)_disabledTraitsForKey:(id)key
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:key];
  disabledTextColor = [(UIKBRenderFactory_Monolith *)self disabledTextColor];
  symbolStyle = [v4 symbolStyle];
  [symbolStyle setTextColor:disabledTextColor];

  return v4;
}

- (void)configureSymbolStyles:(id)styles forLetterKey:(id)key
{
  v14[1] = *MEMORY[0x1E69E9840];
  stylesCopy = styles;
  keyCopy = key;
  symbolStyle = [stylesCopy symbolStyle];
  if ([keyCopy displayType] == 34)
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
    [symbolStyle setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
    [symbolStyle setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:keyCopy];
    [symbolStyle setTextOffset:?];
    v9 = [symbolStyle copy];
    [(UIKBRenderFactory_Monolith *)self letterKeySecondaryFontSize];
    [v9 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _secondaryTextOffsetForKey:keyCopy];
    [v9 setTextOffset:?];
    v14[0] = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v14;
LABEL_5:
    v12 = [v10 arrayWithObjects:v11 count:1];
    [stylesCopy setSecondarySymbolStyles:v12];

    goto LABEL_10;
  }

  if ([keyCopy displayType] == 31)
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontWeight];
    [symbolStyle setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontSize];
    [symbolStyle setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:keyCopy];
    [symbolStyle setTextOffset:?];
    v9 = [symbolStyle copy];
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontSize];
    [v9 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _secondaryTextOffsetForKey:keyCopy];
    [v9 setTextOffset:?];
    v13 = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v13;
    goto LABEL_5;
  }

  if ([keyCopy displayType] == 27)
  {
    [(UIKBRenderFactory_Monolith *)self tldKeyFontWeight];
    [symbolStyle setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self tldKeyFontSize];
  }

  else
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
    [symbolStyle setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
  }

  [symbolStyle setFontSize:?];
  [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:keyCopy];
  [symbolStyle setTextOffset:?];
LABEL_10:
}

- (id)_enabledTraitsForLetterKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:keyCopy];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:keyCopy];

  return v5;
}

- (id)_highlightedTraitsForLetterKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForKey:keyCopy];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:keyCopy];

  return v5;
}

- (id)_activeTraitsForLetterKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _activeTraitsForKey:keyCopy];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:keyCopy];

  return v5;
}

- (id)_disabledTraitsForLetterKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _disabledTraitsForKey:keyCopy];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:keyCopy];

  return v5;
}

- (void)configureSymbolStyle:(id)style forControlKey:(id)key
{
  styleCopy = style;
  keyCopy = key;
  interactionType = [keyCopy interactionType];
  switch(interactionType)
  {
    case 10:
      displayString = [keyCopy displayString];
      v11 = [displayString isEqualToString:@"shift-symbol"];

      if (v11)
      {
        [(UIKBRenderFactory *)self scale];
        v13 = v12 == 2.0;
        v14 = 0.0;
        if (!v13)
        {
          v14 = *MEMORY[0x1E695EFF8];
        }

        v15 = -0.5;
        if (!v13)
        {
          v15 = *(MEMORY[0x1E695EFF8] + 8);
        }

        [styleCopy setTextOffset:{v14, v15, *(MEMORY[0x1E695EFF8] + 8)}];
      }

      break;
    case 9:
      renderConfig = [(UIKBRenderFactory *)self renderConfig];
      colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

      if (colorAdaptiveBackground)
      {
        [styleCopy setSymbolScale:3];
      }

      break;
    case 4:
      [(UIKBRenderFactory_Monolith *)self controlKeyFontWeight];
      [styleCopy setFontWeight:?];
      [(UIKBRenderFactory_Monolith *)self deleteKeyFontSize];
      [styleCopy setFontSize:?];
      [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:keyCopy];
      [styleCopy setTextOffset:?];
      [styleCopy setUsesSymbolImage:1];
      [styleCopy setSymbolScale:1];
      goto LABEL_14;
  }

  [(UIKBRenderFactory_Monolith *)self controlKeyFontWeight];
  [styleCopy setFontWeight:?];
  [(UIKBRenderFactory_Monolith *)self controlKeyFontSize];
  [styleCopy setFontSize:?];
  [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:keyCopy];
  [styleCopy setTextOffset:?];
  [styleCopy setUsesSymbolImage:1];
LABEL_14:
}

- (void)configureCornersOnGeometry:(id)geometry forKey:(id)key
{
  geometryCopy = geometry;
  keyCopy = key;
  v7 = [keyCopy intForProperty:@"popup-bias"];
  switch(v7)
  {
    case 2:
      v8 = 0;
      goto LABEL_7;
    case 21:
      v8 = 5;
      goto LABEL_7;
    case 29:
      v8 = 10;
LABEL_7:
      [geometryCopy setRoundRectCorners:v8];
      break;
  }

  if ([keyCopy interactionType] == 10 || objc_msgSend(keyCopy, "interactionType") == 9)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    [geometryCopy setRoundRectRadius:?];
  }
}

- (void)configureGeometry:(id)geometry forControlKey:(id)key
{
  geometryCopy = geometry;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    [geometryCopy symbolFrame];
    [geometryCopy setSymbolFrame:{v7 + 12.0, v9 + 0.0, v8 + -24.0}];
  }
}

- (id)_enabledTraitsForControlKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:keyCopy];
  geometry = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureGeometry:geometry forControlKey:keyCopy];

  keyplaneSwitcherBackgroundColor = [(UIKBRenderFactory_Monolith *)self keyplaneSwitcherBackgroundColor];
  v8 = [UIKBGradient gradientWithFlatColor:keyplaneSwitcherBackgroundColor];
  [v5 setBackgroundGradient:v8];

  enabledTextColor = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  symbolStyle = [v5 symbolStyle];
  [symbolStyle setTextColor:enabledTextColor];

  if ([keyCopy interactionType] - 9 > 1)
  {
    [v5 setRenderFlags:&unk_1EFE2C5C8];
    [v5 setBackgroundGradient:0];
  }

  else
  {
    [v5 setRenderFlags:&unk_1EFE2C5B0];
  }

  v11 = [keyCopy intForProperty:@"popup-bias"];
  if (v11 == 29 || v11 == 2)
  {
    keyplaneSwitcherDividerColor = [(UIKBRenderFactory_Monolith *)self keyplaneSwitcherDividerColor];
    v13 = [UIKBEdgeEffect effectWithColor:keyplaneSwitcherDividerColor edges:2 inset:0.0 weight:1.0];

    [v5 addRenderEffect:v13];
  }

  geometry2 = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureCornersOnGeometry:geometry2 forKey:keyCopy];

  symbolStyle2 = [v5 symbolStyle];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyle:symbolStyle2 forControlKey:keyCopy];

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)key
{
  keyCopy = key;
  v5 = [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForKey:keyCopy];
  geometry = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureGeometry:geometry forControlKey:keyCopy];

  symbolStyle = [v5 symbolStyle];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyle:symbolStyle forControlKey:keyCopy];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  LODWORD(symbolStyle) = [renderConfig colorAdaptiveBackground];

  if (symbolStyle)
  {
    geometry2 = [v5 geometry];
    [geometry2 symbolFrame];
    [(UIKBRenderFactory_Monolith *)self controlKeyFocusBaseSize:v10, v11];
    v13 = v12;
    v15 = v14;

    [v5 setFloatingContentViewControlFocusedBaseSize:{v13, v15}];
    [v5 setFloatingContentViewFocusedIncreaseSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(UIKBRenderFactory_Monolith *)self controlKeyFocusIncreaseSize];
    [v5 setFloatingContentViewControlFocusedIncreaseSize:?];
    [(UIKBRenderFactory_Monolith *)self controlPlatterCornerRadius];
    [v5 setFloatingContentViewCornerRadius:?];
  }

  return v5;
}

- (id)_activeTraitsForControlKey:(id)key
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:key];
  activeTextColor = [(UIKBRenderFactory_Monolith *)self activeTextColor];
  symbolStyle = [v4 symbolStyle];
  [symbolStyle setTextColor:activeTextColor];

  return v4;
}

- (id)_disabledTraitsForControlKey:(id)key
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:key];
  disabledTextColor = [(UIKBRenderFactory_Monolith *)self disabledTextColor];
  symbolStyle = [v4 symbolStyle];
  [symbolStyle setTextColor:disabledTextColor];

  return v4;
}

- (id)_variantTraitsForLetterKey:(id)key onKeyplane:(id)keyplane
{
  v134 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  [keyCopy paddedFrame];
  v126 = v8;
  v121 = v10;
  v122 = v9;
  v12 = v11;
  subtrees = [keyCopy subtrees];
  v14 = [subtrees count];

  v15 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v15 currentInputMode];
  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];

  subtrees2 = [keyCopy subtrees];
  v19 = [subtrees2 indexOfObjectPassingTest:&__block_literal_global_27_2];

  shape = [keyCopy shape];
  v21 = [UIKBRenderGeometry geometryWithShape:shape];

  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  v23 = v22;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v25 = v23 + v24 + v24;
  [(UIKBRenderFactory_Monolith *)self variantKeyHeight];
  v27 = v26;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v29 = v27 + v28 + v28;
  [keyCopy paddedFrame];
  v31 = (v30 - v25) * 0.5;
  [keyCopy paddedFrame];
  v33 = (v32 - v29) * 0.5;
  [v21 paddedFrame];
  [v21 setPaddedFrame:{v34 + v31, v36 + v33, v35 - (v31 + v31), v37 - (v33 + v33)}];
  v38 = 0.0;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = 0;
  }

  else
  {
    v39 = -1;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
    v38 = -v40;
  }

  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  v42 = -(v41 * (v14 + v39 - 1));
  [v21 paddedFrame];
  if (isDefaultRightToLeft)
  {
    v46 = v42;
  }

  else
  {
    v46 = v38;
  }

  [v21 setPaddedFrame:{v46 + v43, v44 + 0.0, v45 - (v38 + v42)}];
  [v21 paddedFrame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  v56 = v55;
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  v58 = v57;
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  v60 = v59;
  [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
  v62 = -(v60 + v61);
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  [v21 setDisplayFrame:{v48 - v63, v50 - v56, v52 - (-v63 - v58), v54 - (v62 - v56)}];
  [(UIKBRenderFactory_Monolith *)self variantPlatterCornerRadius];
  [v21 setRoundRectRadius:?];
  [v21 setRoundRectCorners:-1];
  if ([(UIKBRenderFactory_Monolith *)self forceVariantsInsideKeyplane])
  {
    if (isDefaultRightToLeft)
    {
      [keyplaneCopy frame];
      MinX = CGRectGetMinX(v136);
      [v21 displayFrame];
      v65 = MinX - CGRectGetMinX(v137);
      if (v65 <= 0.0)
      {
        goto LABEL_16;
      }

      v126 = v126 + v65;
      v66 = -v65;
    }

    else
    {
      [v21 displayFrame];
      MaxX = CGRectGetMaxX(v138);
      [keyplaneCopy frame];
      v66 = MaxX - CGRectGetMaxX(v139);
      if (v66 <= 0.0)
      {
        goto LABEL_16;
      }

      v126 = v126 - v66;
      v65 = -v66;
    }

    [v21 applyInsets:{0.0, v65, 0.0, v66}];
  }

LABEL_16:
  v124 = keyplaneCopy;
  v68 = [UIKBRenderTraits traitsWithGeometry:v21];
  variantPlatterBackgroundColor = [(UIKBRenderFactory_Monolith *)self variantPlatterBackgroundColor];
  v70 = [UIKBGradient gradientWithFlatColor:variantPlatterBackgroundColor];
  [v68 setBackgroundGradient:v70];

  [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
  v72 = v71;
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  v74 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha25" offset:0.0 insets:v72 weight:0.0, 0.0, 0.0, 0.0, v73];
  v123 = v68;
  [v68 addRenderEffect:v74];

  array = [MEMORY[0x1E695DF70] array];
  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  if (isDefaultRightToLeft)
  {
    v76 = -v76;
  }

  v128 = v76;
  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  v78 = v77;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v80 = v79;
  [(UIKBRenderFactory_Monolith *)self variantKeyHeight];
  v82 = v81;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v84 = v83;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v125 = keyCopy;
  subtrees3 = [keyCopy subtrees];
  v86 = [subtrees3 countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = (v12 - v78 - v80) * 0.5;
    v89 = (v121 - v82 - v84) * 0.5;
    v127 = v12 - (v88 + v88);
    v90 = v122 + v89;
    v91 = v121 - (v89 + v89);
    v92 = v128;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v92 = 0.0;
    }

    v93 = v126 - v92 + v88;
    v94 = *v130;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v130 != v94)
        {
          objc_enumerationMutation(subtrees3);
        }

        v96 = *(*(&v129 + 1) + 8 * i);
        v97 = [UIKBRenderGeometry geometryWithFrame:v93 paddedFrame:v90, v127, v91, v93, v90, v127, v91];
        [(UIKBRenderFactory_Monolith *)self variantKeyFocusRectRadius];
        [v97 setRoundRectRadius:?];
        [v97 setRoundRectCorners:-1];
        [v97 paddedFrame];
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v105 = v104;
        [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
        v107 = v106 + v99;
        v108 = v103 - v106 - v106;
        v109 = v106 + v101;
        v110 = v105 - v106 - v106;
        if ([v96 interactionType] == 2)
        {
          v111 = v109 + 3.0;
        }

        else
        {
          v111 = v109;
        }

        [v97 setSymbolFrame:{v107, v111, v108, v110}];
        [array addObject:v97];
        v93 = v128 + v93;
      }

      v87 = [subtrees3 countByEnumeratingWithState:&v129 objects:v133 count:16];
    }

    while (v87);
  }

  [v123 setVariantGeometries:array];
  [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
  v112 = [UIKBTextStyle styleWithFontName:@"UIKBRenderFactorySystemFontName" withFontSize:?];
  [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
  [v112 setFontWeight:?];
  variantTextColor = [(UIKBRenderFactory_Monolith *)self variantTextColor];
  [v112 setTextColor:variantTextColor];

  [v112 setUsesSymbolImage:1];
  [v112 setSymbolScale:1];
  v114 = [UIKBRenderTraits traitsWithSymbolStyle:v112];
  [v123 setVariantTraits:v114];

  v115 = [UIKBRenderTraits traitsWithSymbolStyle:v112];
  highlightedVariantTextColor = [(UIKBRenderFactory_Monolith *)self highlightedVariantTextColor];
  symbolStyle = [v115 symbolStyle];
  [symbolStyle setTextColor:highlightedVariantTextColor];

  highlightedVariantBackgroundColor = [(UIKBRenderFactory_Monolith *)self highlightedVariantBackgroundColor];
  v119 = [UIKBGradient gradientWithFlatColor:highlightedVariantBackgroundColor];
  [v115 setLayeredForegroundGradient:v119];

  [v123 setHighlightedVariantTraits:v115];

  return v123;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  v8 = [keyCopy interactionType] == 10 || objc_msgSend(keyCopy, "interactionType") == 9 || objc_msgSend(keyCopy, "interactionType") == 23 || objc_msgSend(keyCopy, "interactionType") == 15 || objc_msgSend(keyCopy, "interactionType") == 4 || objc_msgSend(keyCopy, "interactionType") == 43;
  state = [keyCopy state];
  v10 = 0;
  if (state <= 7)
  {
    if (state != 1)
    {
      if (state != 2)
      {
        if (state != 4)
        {
          goto LABEL_31;
        }

        if ([keyCopy interactionType] != 10)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v14 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Only keyplane switcher keys can get active key state on tvOS.", buf, 2u);
            }
          }

          else
          {
            v13 = *(__UILogGetCategoryCachedImpl("Assert", &_traitsForKey_onKeyplane____s_category) + 8);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v15 = 0;
              _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Only keyplane switcher keys can get active key state on tvOS.", v15, 2u);
            }
          }
        }

        v11 = [(UIKBRenderFactory_Monolith *)self _activeTraitsForControlKey:keyCopy];
        goto LABEL_30;
      }

      if (v8)
      {
        v11 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:keyCopy];
        goto LABEL_30;
      }

LABEL_26:
      v11 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForLetterKey:keyCopy];
      goto LABEL_30;
    }

    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _disabledTraitsForControlKey:keyCopy];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _disabledTraitsForLetterKey:keyCopy];
    }

    v11 = LABEL_23:;
LABEL_30:
    v10 = v11;
    goto LABEL_31;
  }

  if (state == 8)
  {
    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForControlKey:keyCopy];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForLetterKey:keyCopy];
    }

    goto LABEL_23;
  }

  if (state == 20 || state == 16)
  {
    if ([keyCopy interactionType] == 3)
    {
      goto LABEL_26;
    }

    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _variantTraitsForControlKey:keyCopy onKeyplane:keyplaneCopy];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _variantTraitsForLetterKey:keyCopy onKeyplane:keyplaneCopy];
    }

    goto LABEL_23;
  }

LABEL_31:

  return v10;
}

@end