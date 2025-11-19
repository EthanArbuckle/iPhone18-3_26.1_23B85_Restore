@interface UIKBRenderFactory_MonolithLinear
- (id)_enabledTraitsForControlKey:(id)a3;
- (id)_highlightedTraitsForControlKey:(id)a3;
- (id)pillControlKeyPillBackgroundColor;
- (void)_updateGeometryForControlKey:(id)a3 withTraits:(id)a4;
- (void)configureGeometry:(id)a3 forControlKey:(id)a4;
- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4;
@end

@implementation UIKBRenderFactory_MonolithLinear

- (id)pillControlKeyPillBackgroundColor
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = _labelColorSecondary([v2 lightKeyboard]);

  return v3;
}

- (void)configureGeometry:(id)a3 forControlKey:(id)a4
{
  v14 = a3;
  if ([a4 interactionType] == 15)
  {
    v6 = [(UIKBRenderFactory *)self renderConfig];
    v7 = [v6 colorAdaptiveBackground];

    if ((v7 & 1) == 0)
    {
      [v14 displayFrame];
      v9 = v8;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyHeight];
      v11 = (v9 - v10) * 0.5;
      [v14 displayFrame];
      [v14 setDisplayFrame:{v12 + 0.0, v13 + v11}];
    }
  }
}

- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactory_MonolithLinear;
  v7 = a4;
  [(UIKBRenderFactory_Monolith *)&v9 configureSymbolStyle:v6 forControlKey:v7];
  v8 = [v7 interactionType];

  if (v8 == 15)
  {
    [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFontSize];
    [v6 setFontSize:?];
  }
}

- (void)_updateGeometryForControlKey:(id)a3 withTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 interactionType] == 15)
  {
    v8 = [v7 symbolStyle];
    [v8 fontSize];
    v9 = [off_1E70ECC18 systemFontOfSize:?];

    v39.receiver = self;
    v39.super_class = UIKBRenderFactory_MonolithLinear;
    v10 = [(UIKBRenderFactory_Monolith *)&v39 displayContentsForKey:v6];
    v11 = [v10 displayString];
    [v11 sizeWithFont:v9];
    v13 = v12;

    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v15 = v13 + v14 + v14;
    [(UIKBRenderFactory_MonolithLinear *)self pillSpaceKeyMinWidth];
    v17 = v16;
    [(UIKBRenderFactory_MonolithLinear *)self pillSpaceKeyMaxWidth];
    v19 = fmax(v17, fmin(v15, v18));
    v20 = [v7 geometry];
    [v20 paddedFrame];
    v22 = (v21 - v19) * 0.5;

    v23 = [v7 geometry];
    [v23 applyInsets:{0.0, v22, 0.0, v22}];

    v24 = [v7 geometry];
    [v24 paddedFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v34 = v33;
    [(UIKBRenderFactory_MonolithLinear *)self pillControlStringInset];
    v36 = v26 + v35;
    v37 = v30 - (v34 + v35);

    v38 = [v7 geometry];
    [v38 setSymbolFrame:{v36, v28 + 0.0, v37, v32}];
  }
}

- (id)_enabledTraitsForControlKey:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UIKBRenderFactory_MonolithLinear;
  v5 = [(UIKBRenderFactory_Monolith *)&v16 _enabledTraitsForControlKey:v4];
  v6 = [v4 interactionType];
  if ((v6 - 9) >= 2)
  {
    if (v6 == 15)
    {
      v7 = [(UIKBRenderFactory *)self renderConfig];
      v8 = [v7 colorAdaptiveBackground];

      if (v8)
      {
        [(UIKBRenderFactory_MonolithLinear *)self _updateGeometryForControlKey:v4 withTraits:v5];
      }

      [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
      v10 = v9;
      v11 = [v5 geometry];
      [v11 setRoundRectRadius:v10];

      v12 = [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyPillBackgroundColor];
      v13 = [UIKBGradient gradientWithFlatColor:v12];
      [v5 setBackgroundGradient:v13];

      [v5 setRenderFlags:&unk_1EFE2C5F8];
      v14 = [v5 symbolStyle];
      [v14 setTextColor:@"UIKBColorBlack"];

      [v5 setBlendForm:4];
    }
  }

  else
  {
    [v5 setRenderFlags:&unk_1EFE2C5E0];
  }

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = UIKBRenderFactory_MonolithLinear;
  v5 = [(UIKBRenderFactory_Monolith *)&v27 _highlightedTraitsForControlKey:v4];
  v6 = [v4 interactionType];
  if (v6 == 4)
  {
    v17 = [v5 geometry];
    [v17 displayFrame];
    [v5 setFloatingContentViewControlFocusedBaseSize:{v18, v19}];

    [(UIKBRenderFactory_Monolith *)self letterKeyFocusIncreaseSize];
    [v5 setFloatingContentViewFocusedIncreaseSize:?];
    [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
    [v5 setFloatingContentViewCornerRadius:?];
  }

  else if (v6 == 15)
  {
    v7 = [(UIKBRenderFactory *)self renderConfig];
    v8 = [v7 colorAdaptiveBackground];

    if (v8)
    {
      [(UIKBRenderFactory_MonolithLinear *)self _updateGeometryForControlKey:v4 withTraits:v5];
      v9 = [v5 geometry];
      [v9 paddedFrame];
      v11 = v10;
      v13 = v12;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusPlatterInset];
      v15 = v14 + v14 + v11;
      v16 = v14 + v14 + v13;

      [v5 setFloatingContentViewControlFocusedBaseSize:{v15, v16}];
    }

    else
    {
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusIncreaseSize];
      [v5 setFloatingContentViewControlFocusedIncreaseSize:?];
    }

    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v21 = v20;
    v22 = [v5 geometry];
    [v22 setRoundRectRadius:v21];

    v23 = [(UIKBRenderFactory_Monolith *)self highlightedTextColor];
    v24 = [UIKBGradient gradientWithFlatColor:v23];
    [v5 setBackgroundGradient:v24];

    [v5 setRenderFlags:&unk_1EFE2C610];
    v25 = [v5 symbolStyle];
    [v25 setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
  }

  return v5;
}

@end