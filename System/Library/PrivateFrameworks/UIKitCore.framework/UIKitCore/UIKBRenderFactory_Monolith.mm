@interface UIKBRenderFactory_Monolith
- (CGPoint)_secondaryTextOffsetForKey:(id)a3;
- (CGPoint)_textOffsetForKey:(id)a3;
- (CGSize)controlKeyFocusBaseSize:(CGSize)a3;
- (CGSize)letterKeyFocusIncreaseSize;
- (double)controlKeyFontSize;
- (double)controlKeyFontWeight;
- (double)keyRectCornerRadius;
- (double)letterKeyFontWeight;
- (double)letterKeyTwoLineFontWeight;
- (double)tldKeyFontWeight;
- (double)variantKeyFocusRectRadius;
- (double)variantPlatterCornerRadius;
- (id)_activeTraitsForControlKey:(id)a3;
- (id)_activeTraitsForKey:(id)a3;
- (id)_activeTraitsForLetterKey:(id)a3;
- (id)_disabledTraitsForControlKey:(id)a3;
- (id)_disabledTraitsForKey:(id)a3;
- (id)_disabledTraitsForLetterKey:(id)a3;
- (id)_enabledTraitsForControlKey:(id)a3;
- (id)_enabledTraitsForKey:(id)a3;
- (id)_enabledTraitsForLetterKey:(id)a3;
- (id)_highlightedTraitsForControlKey:(id)a3;
- (id)_highlightedTraitsForKey:(id)a3;
- (id)_highlightedTraitsForLetterKey:(id)a3;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)_variantTraitsForLetterKey:(id)a3 onKeyplane:(id)a4;
- (id)activeTextColor;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)disabledTextColor;
- (id)displayContentsForKey:(id)a3;
- (id)enabledTextColor;
- (id)keyplaneSwitcherBackgroundColor;
- (id)keyplaneSwitcherDividerColor;
- (id)variantPlatterBackgroundColor;
- (void)configureCornersOnGeometry:(id)a3 forKey:(id)a4;
- (void)configureGeometry:(id)a3 forControlKey:(id)a4;
- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4;
- (void)configureSymbolStyles:(id)a3 forLetterKey:(id)a4;
@end

@implementation UIKBRenderFactory_Monolith

- (id)displayContentsForKey:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIKBRenderFactory_Monolith;
  v5 = [(UIKBRenderFactory *)&v12 displayContentsForKey:v4];
  if ([v4 interactionType] == 4)
  {
    [v5 setDisplayPathType:2];
    v6 = @"delete.left.fill";
LABEL_11:
    [v5 setDisplayStringImage:v6];
    goto LABEL_12;
  }

  if ([v4 interactionType] == 9)
  {
    v7 = [v4 localizationKey];

    if (v7)
    {
      [v5 setDisplayStringImage:0];
      v8 = [v4 displayString];
      [v5 setDisplayString:v8];

      goto LABEL_12;
    }
  }

  if ([v4 interactionType] == 10)
  {
    v9 = [v4 displayString];
    v10 = [v9 isEqualToString:@"shift-symbol"];

    if (v10)
    {
      [v5 setDisplayPathType:1];
      [v5 setDisplayStringImage:@"shift"];
      [v5 setDisplayString:0];
      goto LABEL_12;
    }
  }

  if ([v4 interactionType] == 43)
  {
    [v5 setDisplayString:0];
    v6 = @"chevron.down";
    goto LABEL_11;
  }

LABEL_12:
  if ([v4 state] == 16)
  {
    [v5 setDisplayString:0];
  }

  return v5;
}

- (id)enabledTextColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = _labelColorSecondary([v2 lightKeyboard]);

  return v3;
}

- (id)activeTextColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorBlack;
  if (!v3)
  {
    v4 = UIKBColorWhite;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)disabledTextColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorBlack_Alpha30;
  if (!v3)
  {
    v4 = UIKBColorWhite_Alpha30;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)keyplaneSwitcherDividerColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
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

  if (!v3)
  {
    v5 = v6;
  }

  v7 = *v5;
  v8 = *v5;

  return v7;
}

- (id)keyplaneSwitcherBackgroundColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorBlack_Alpha20;
  if (!v3)
  {
    v4 = UIKBColorWhite_Alpha20;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)variantPlatterBackgroundColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorKeyPopupSolidLightBackground;
  if (!v3)
  {
    v4 = UIKBColorKeyPopupSolidDarkBackground;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (double)letterKeyFontWeight
{
  v2 = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!v2)
  {
    v3 = off_1E70ECD28;
  }

  return *v3;
}

- (double)letterKeyTwoLineFontWeight
{
  v2 = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!v2)
  {
    v3 = off_1E70ECD30;
  }

  return *v3;
}

- (double)controlKeyFontSize
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
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
  v2 = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!v2)
  {
    v3 = off_1E70ECD20;
  }

  return *v3;
}

- (double)tldKeyFontWeight
{
  v2 = [(UIKBRenderFactory *)self boldTextEnabled];
  v3 = off_1E70ECD08;
  if (!v2)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 12.0;
  }

  return v3;
}

- (CGSize)controlKeyFocusBaseSize:(CGSize)a3
{
  v3 = a3.width + 12.0;
  v4 = a3.height + 12.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)variantPlatterCornerRadius
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactory_Monolith;
  v3 = [(UIKBRenderFactory *)&v5 backgroundTraitsForKeyplane:a3];

  return v3;
}

- (CGPoint)_textOffsetForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 interactionType];
  if (v5 > 14)
  {
    if (v5 == 15 || v5 == 23)
    {
      v12 = [(UIKBRenderFactory *)self renderConfig];
      v13 = 0.0;
      if ([v12 colorAdaptiveBackground])
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
    if ((v5 - 1) < 2)
    {
      if (qword_1ED49F150 != -1)
      {
        dispatch_once(&qword_1ED49F150, &__block_literal_global_358);
      }

      v6 = [v4 displayString];
      [v6 rangeOfCharacterFromSet:_MergedGlobals_1176];
      v8 = v7;

      v9 = [v4 displayString];
      v10 = [v9 length];

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

    if (v5 == 10 && [v4 displayType] != 4)
    {
      v14 = [(UIKBRenderFactory *)self renderConfig];
      if ([v14 colorAdaptiveBackground])
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

  if ([v4 displayType] == 31)
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

- (CGPoint)_secondaryTextOffsetForKey:(id)a3
{
  v3 = a3;
  if ([v3 displayType] == 34)
  {
    v4 = 26.0;
    v5 = 15.0;
  }

  else if ([v3 displayType] == 31)
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

- (id)_enabledTraitsForKey:(id)a3
{
  v4 = [a3 shape];
  v5 = [UIKBRenderGeometry geometryWithShape:v4];

  v6 = [UIKBRenderTraits traitsWithGeometry:v5];
  v7 = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  v8 = [UIKBTextStyle styleWithTextColor:v7];
  [v6 setSymbolStyle:v8];

  v9 = [v6 symbolStyle];
  [v9 setFontName:@"UIKBRenderFactorySystemFontName"];

  v10 = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  v11 = [v6 symbolStyle];
  [v11 setTextColor:v10];

  [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
  v13 = v12;
  v14 = [v6 geometry];
  [v14 setRoundRectRadius:v13];

  v15 = [v6 geometry];
  [v15 setRoundRectCorners:-1];

  return v6;
}

- (id)_highlightedTraitsForKey:(id)a3
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:a3];
  v5 = [v4 symbolStyle];
  [v5 setFontName:@"UIKBRenderFactorySystemFontName"];

  v6 = [(UIKBRenderFactory_Monolith *)self highlightedTextColor];
  v7 = [v4 symbolStyle];
  [v7 setTextColor:v6];

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

- (id)_activeTraitsForKey:(id)a3
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:a3];
  v5 = [(UIKBRenderFactory_Monolith *)self activeTextColor];
  v6 = [v4 symbolStyle];
  [v6 setTextColor:v5];

  return v4;
}

- (id)_disabledTraitsForKey:(id)a3
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:a3];
  v5 = [(UIKBRenderFactory_Monolith *)self disabledTextColor];
  v6 = [v4 symbolStyle];
  [v6 setTextColor:v5];

  return v4;
}

- (void)configureSymbolStyles:(id)a3 forLetterKey:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 symbolStyle];
  if ([v7 displayType] == 34)
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
    [v8 setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
    [v8 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:v7];
    [v8 setTextOffset:?];
    v9 = [v8 copy];
    [(UIKBRenderFactory_Monolith *)self letterKeySecondaryFontSize];
    [v9 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _secondaryTextOffsetForKey:v7];
    [v9 setTextOffset:?];
    v14[0] = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = v14;
LABEL_5:
    v12 = [v10 arrayWithObjects:v11 count:1];
    [v6 setSecondarySymbolStyles:v12];

    goto LABEL_10;
  }

  if ([v7 displayType] == 31)
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontWeight];
    [v8 setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontSize];
    [v8 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:v7];
    [v8 setTextOffset:?];
    v9 = [v8 copy];
    [(UIKBRenderFactory_Monolith *)self letterKeyTwoLineFontSize];
    [v9 setFontSize:?];
    [(UIKBRenderFactory_Monolith *)self _secondaryTextOffsetForKey:v7];
    [v9 setTextOffset:?];
    v13 = v9;
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v13;
    goto LABEL_5;
  }

  if ([v7 displayType] == 27)
  {
    [(UIKBRenderFactory_Monolith *)self tldKeyFontWeight];
    [v8 setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self tldKeyFontSize];
  }

  else
  {
    [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
    [v8 setFontWeight:?];
    [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
  }

  [v8 setFontSize:?];
  [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:v7];
  [v8 setTextOffset:?];
LABEL_10:
}

- (id)_enabledTraitsForLetterKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:v4];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:v4];

  return v5;
}

- (id)_highlightedTraitsForLetterKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForKey:v4];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:v4];

  return v5;
}

- (id)_activeTraitsForLetterKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _activeTraitsForKey:v4];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:v4];

  return v5;
}

- (id)_disabledTraitsForLetterKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _disabledTraitsForKey:v4];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyles:v5 forLetterKey:v4];

  return v5;
}

- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 interactionType];
  switch(v7)
  {
    case 10:
      v10 = [v6 displayString];
      v11 = [v10 isEqualToString:@"shift-symbol"];

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

        [v16 setTextOffset:{v14, v15, *(MEMORY[0x1E695EFF8] + 8)}];
      }

      break;
    case 9:
      v8 = [(UIKBRenderFactory *)self renderConfig];
      v9 = [v8 colorAdaptiveBackground];

      if (v9)
      {
        [v16 setSymbolScale:3];
      }

      break;
    case 4:
      [(UIKBRenderFactory_Monolith *)self controlKeyFontWeight];
      [v16 setFontWeight:?];
      [(UIKBRenderFactory_Monolith *)self deleteKeyFontSize];
      [v16 setFontSize:?];
      [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:v6];
      [v16 setTextOffset:?];
      [v16 setUsesSymbolImage:1];
      [v16 setSymbolScale:1];
      goto LABEL_14;
  }

  [(UIKBRenderFactory_Monolith *)self controlKeyFontWeight];
  [v16 setFontWeight:?];
  [(UIKBRenderFactory_Monolith *)self controlKeyFontSize];
  [v16 setFontSize:?];
  [(UIKBRenderFactory_Monolith *)self _textOffsetForKey:v6];
  [v16 setTextOffset:?];
  [v16 setUsesSymbolImage:1];
LABEL_14:
}

- (void)configureCornersOnGeometry:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 intForProperty:@"popup-bias"];
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
      [v9 setRoundRectCorners:v8];
      break;
  }

  if ([v6 interactionType] == 10 || objc_msgSend(v6, "interactionType") == 9)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    [v9 setRoundRectRadius:?];
  }
}

- (void)configureGeometry:(id)a3 forControlKey:(id)a4
{
  v10 = a3;
  v5 = [(UIKBRenderFactory *)self renderConfig];
  v6 = [v5 colorAdaptiveBackground];

  if ((v6 & 1) == 0)
  {
    [v10 symbolFrame];
    [v10 setSymbolFrame:{v7 + 12.0, v9 + 0.0, v8 + -24.0}];
  }
}

- (id)_enabledTraitsForControlKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForKey:v4];
  v6 = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureGeometry:v6 forControlKey:v4];

  v7 = [(UIKBRenderFactory_Monolith *)self keyplaneSwitcherBackgroundColor];
  v8 = [UIKBGradient gradientWithFlatColor:v7];
  [v5 setBackgroundGradient:v8];

  v9 = [(UIKBRenderFactory_Monolith *)self enabledTextColor];
  v10 = [v5 symbolStyle];
  [v10 setTextColor:v9];

  if ([v4 interactionType] - 9 > 1)
  {
    [v5 setRenderFlags:&unk_1EFE2C5C8];
    [v5 setBackgroundGradient:0];
  }

  else
  {
    [v5 setRenderFlags:&unk_1EFE2C5B0];
  }

  v11 = [v4 intForProperty:@"popup-bias"];
  if (v11 == 29 || v11 == 2)
  {
    v12 = [(UIKBRenderFactory_Monolith *)self keyplaneSwitcherDividerColor];
    v13 = [UIKBEdgeEffect effectWithColor:v12 edges:2 inset:0.0 weight:1.0];

    [v5 addRenderEffect:v13];
  }

  v14 = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureCornersOnGeometry:v14 forKey:v4];

  v15 = [v5 symbolStyle];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyle:v15 forControlKey:v4];

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForKey:v4];
  v6 = [v5 geometry];
  [(UIKBRenderFactory_Monolith *)self configureGeometry:v6 forControlKey:v4];

  v7 = [v5 symbolStyle];
  [(UIKBRenderFactory_Monolith *)self configureSymbolStyle:v7 forControlKey:v4];

  v8 = [(UIKBRenderFactory *)self renderConfig];
  LODWORD(v7) = [v8 colorAdaptiveBackground];

  if (v7)
  {
    v9 = [v5 geometry];
    [v9 symbolFrame];
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

- (id)_activeTraitsForControlKey:(id)a3
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:a3];
  v5 = [(UIKBRenderFactory_Monolith *)self activeTextColor];
  v6 = [v4 symbolStyle];
  [v6 setTextColor:v5];

  return v4;
}

- (id)_disabledTraitsForControlKey:(id)a3
{
  v4 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:a3];
  v5 = [(UIKBRenderFactory_Monolith *)self disabledTextColor];
  v6 = [v4 symbolStyle];
  [v6 setTextColor:v5];

  return v4;
}

- (id)_variantTraitsForLetterKey:(id)a3 onKeyplane:(id)a4
{
  v134 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 paddedFrame];
  v126 = v8;
  v121 = v10;
  v122 = v9;
  v12 = v11;
  v13 = [v6 subtrees];
  v14 = [v13 count];

  v15 = +[UIKeyboardInputModeController sharedInputModeController];
  v16 = [v15 currentInputMode];
  v17 = [v16 isDefaultRightToLeft];

  v18 = [v6 subtrees];
  v19 = [v18 indexOfObjectPassingTest:&__block_literal_global_27_2];

  v20 = [v6 shape];
  v21 = [UIKBRenderGeometry geometryWithShape:v20];

  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  v23 = v22;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v25 = v23 + v24 + v24;
  [(UIKBRenderFactory_Monolith *)self variantKeyHeight];
  v27 = v26;
  [(UIKBRenderFactory_Monolith *)self variantKeyFocusIncrease];
  v29 = v27 + v28 + v28;
  [v6 paddedFrame];
  v31 = (v30 - v25) * 0.5;
  [v6 paddedFrame];
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
  if (v17)
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
    if (v17)
    {
      [v7 frame];
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
      [v7 frame];
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
  v124 = v7;
  v68 = [UIKBRenderTraits traitsWithGeometry:v21];
  v69 = [(UIKBRenderFactory_Monolith *)self variantPlatterBackgroundColor];
  v70 = [UIKBGradient gradientWithFlatColor:v69];
  [v68 setBackgroundGradient:v70];

  [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
  v72 = v71;
  [(UIKBRenderFactory_Monolith *)self shadowRadius];
  v74 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha25" offset:0.0 insets:v72 weight:0.0, 0.0, 0.0, 0.0, v73];
  v123 = v68;
  [v68 addRenderEffect:v74];

  v75 = [MEMORY[0x1E695DF70] array];
  [(UIKBRenderFactory_Monolith *)self variantKeyWidth];
  if (v17)
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
  v125 = v6;
  v85 = [v6 subtrees];
  v86 = [v85 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
          objc_enumerationMutation(v85);
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
        [v75 addObject:v97];
        v93 = v128 + v93;
      }

      v87 = [v85 countByEnumeratingWithState:&v129 objects:v133 count:16];
    }

    while (v87);
  }

  [v123 setVariantGeometries:v75];
  [(UIKBRenderFactory_Monolith *)self letterKeyFontSize];
  v112 = [UIKBTextStyle styleWithFontName:@"UIKBRenderFactorySystemFontName" withFontSize:?];
  [(UIKBRenderFactory_Monolith *)self letterKeyFontWeight];
  [v112 setFontWeight:?];
  v113 = [(UIKBRenderFactory_Monolith *)self variantTextColor];
  [v112 setTextColor:v113];

  [v112 setUsesSymbolImage:1];
  [v112 setSymbolScale:1];
  v114 = [UIKBRenderTraits traitsWithSymbolStyle:v112];
  [v123 setVariantTraits:v114];

  v115 = [UIKBRenderTraits traitsWithSymbolStyle:v112];
  v116 = [(UIKBRenderFactory_Monolith *)self highlightedVariantTextColor];
  v117 = [v115 symbolStyle];
  [v117 setTextColor:v116];

  v118 = [(UIKBRenderFactory_Monolith *)self highlightedVariantBackgroundColor];
  v119 = [UIKBGradient gradientWithFlatColor:v118];
  [v115 setLayeredForegroundGradient:v119];

  [v123 setHighlightedVariantTraits:v115];

  return v123;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 interactionType] == 10 || objc_msgSend(v6, "interactionType") == 9 || objc_msgSend(v6, "interactionType") == 23 || objc_msgSend(v6, "interactionType") == 15 || objc_msgSend(v6, "interactionType") == 4 || objc_msgSend(v6, "interactionType") == 43;
  v9 = [v6 state];
  v10 = 0;
  if (v9 <= 7)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        if (v9 != 4)
        {
          goto LABEL_31;
        }

        if ([v6 interactionType] != 10)
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

        v11 = [(UIKBRenderFactory_Monolith *)self _activeTraitsForControlKey:v6];
        goto LABEL_30;
      }

      if (v8)
      {
        v11 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForControlKey:v6];
        goto LABEL_30;
      }

LABEL_26:
      v11 = [(UIKBRenderFactory_Monolith *)self _enabledTraitsForLetterKey:v6];
      goto LABEL_30;
    }

    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _disabledTraitsForControlKey:v6];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _disabledTraitsForLetterKey:v6];
    }

    v11 = LABEL_23:;
LABEL_30:
    v10 = v11;
    goto LABEL_31;
  }

  if (v9 == 8)
  {
    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForControlKey:v6];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _highlightedTraitsForLetterKey:v6];
    }

    goto LABEL_23;
  }

  if (v9 == 20 || v9 == 16)
  {
    if ([v6 interactionType] == 3)
    {
      goto LABEL_26;
    }

    if (v8)
    {
      [(UIKBRenderFactory_Monolith *)self _variantTraitsForControlKey:v6 onKeyplane:v7];
    }

    else
    {
      [(UIKBRenderFactory_Monolith *)self _variantTraitsForLetterKey:v6 onKeyplane:v7];
    }

    goto LABEL_23;
  }

LABEL_31:

  return v10;
}

@end