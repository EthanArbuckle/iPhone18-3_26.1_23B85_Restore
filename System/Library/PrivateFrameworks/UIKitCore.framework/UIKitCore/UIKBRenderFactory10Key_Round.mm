@interface UIKBRenderFactory10Key_Round
- (UIEdgeInsets)symbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)activeControlKeyTraits;
- (id)controlKeyBackgroundColorName;
- (id)controlKeyTraits;
- (id)defaultKeyShadowColorName;
- (id)shiftLockControlKeyTraits;
- (id)shiftedControlKeyTraits;
- (int64_t)lightHighQualityEnabledBlendForm;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents onKeyplane:(id)keyplane;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
@end

@implementation UIKBRenderFactory10Key_Round

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 3.0;
  v3 = 3.0;
  v4 = 3.0;
  v5 = 3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 28.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents onKeyplane:(id)keyplane
{
  geometryCopy = geometry;
  keyCopy = key;
  keyplaneCopy = keyplane;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    [(UIKBRenderFactory10Key *)self keyCornerRadius];
  }

  else
  {
    [(UIKBRenderFactory *)self scale];
    v15 = v14;
    v13 = 5.0;
    if (v15 <= 2.0)
    {
      [keyCopy paddedFrame];
      v13 = 4.0;
      if (v16 > 42.0)
      {
        v13 = 5.0;
      }
    }
  }

  [geometryCopy setRoundRectRadius:v13];
  [(UIKBRenderFactory10Key_Round *)self symbolFrameInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(UIKBRenderFactory10Key_Round *)self edgesWithInsetsForKey:keyCopy onKeyplane:keyplaneCopy];

  if ((v25 & 1) == 0)
  {
    v18 = 0.0;
  }

  if ((v25 & 2) == 0)
  {
    v20 = 0.0;
  }

  if ((v25 & 4) == 0)
  {
    v22 = 0.0;
  }

  if ((v25 & 8) == 0)
  {
    v24 = 0.0;
  }

  [geometryCopy paddedFrame];
  [geometryCopy setSymbolFrame:{v20 + v26, v18 + v28, v27 - (v24 + v20), v29 - (v18 + v22)}];
  [geometryCopy symbolFrame];
  [geometryCopy setPaddedFrame:{v30 + 0.0, v31 + 0.0}];
}

- (id)defaultKeyShadowColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorBlack_Alpha35;
  if (!lightKeyboard)
  {
    v4 = UIKBColorBlack_Alpha40;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)controlKeyBackgroundColorName
{
  if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    _controlKeyBackgroundColorName = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactory10Key_Round;
    _controlKeyBackgroundColorName = [(UIKBRenderFactory10Key *)&v5 controlKeyBackgroundColorName];
  }

  return _controlKeyBackgroundColorName;
}

- (int64_t)lightHighQualityEnabledBlendForm
{
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactory10Key_Round;
    return [(UIKBRenderFactory10Key *)&v8 lightHighQualityEnabledBlendForm];
  }

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig colorAdaptiveBackground])
  {

    return 1;
  }

  increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];

  if (increasedContrastEnabled)
  {
    return 1;
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig2 lightKeyboard])
  {
    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  return v6;
}

- (id)controlKeyTraits
{
  if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    controlKeyTraits = [UIKBRenderTraits traitsWithSymbolStyle:0];
    [controlKeyTraits setControlOpacities:1];
    controlKeyBackgroundColorName = [(UIKBRenderFactory10Key_Round *)self controlKeyBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
    [controlKeyTraits setBackgroundGradient:v5];

    controlKeyForegroundColorName = [(UIKBRenderFactory10Key *)self controlKeyForegroundColorName];
    if (controlKeyForegroundColorName)
    {
      v7 = [UIKBGradient gradientWithFlatColor:controlKeyForegroundColorName];
      [controlKeyTraits setLayeredForegroundGradient:v7];
    }

    else
    {
      [controlKeyTraits setLayeredForegroundGradient:0];
    }

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if ((colorAdaptiveBackground & 1) == 0)
    {
      controlKeyShadowColorName = [(UIKBRenderFactory10Key_Round *)self controlKeyShadowColorName];
      v11 = [UIKBEdgeEffect effectWithColor:controlKeyShadowColorName edges:4 inset:-1.0 weight:1.0];
      [controlKeyTraits addRenderEffect:v11];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIKBRenderFactory10Key_Round;
    controlKeyTraits = [(UIKBRenderFactory10Key *)&v13 controlKeyTraits];
  }

  return controlKeyTraits;
}

- (id)activeControlKeyTraits
{
  if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    activeControlKeyTraits = [UIKBRenderTraits traitsWithSymbolStyle:0];
    [activeControlKeyTraits setControlOpacities:0];
    defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
    [activeControlKeyTraits setBackgroundGradient:v5];

    v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
    [activeControlKeyTraits setLayeredForegroundGradient:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactory10Key_Round;
    activeControlKeyTraits = [(UIKBRenderFactory10Key *)&v8 activeControlKeyTraits];
  }

  return activeControlKeyTraits;
}

- (id)shiftedControlKeyTraits
{
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    v13.receiver = self;
    v13.super_class = UIKBRenderFactory10Key_Round;
    shiftedControlKeyTraits = [(UIKBRenderFactory10Key *)&v13 shiftedControlKeyTraits];
LABEL_7:
    v7 = shiftedControlKeyTraits;
    goto LABEL_8;
  }

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if ((lightKeyboard & 1) == 0)
  {
    shiftedControlKeyTraits = [(UIKBRenderFactory10Key_Round *)self shiftLockControlKeyTraits];
    goto LABEL_7;
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig2 lightKeyboard])
  {
    [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  }

  else
  {
    [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  }
  v7 = ;

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard2 = [renderConfig3 lightKeyboard];

  if (lightKeyboard2)
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
    v12 = [UIKBTextStyle styleWithTextColor:blackKeycapColor];
    [v7 setSymbolStyle:v12];
  }

LABEL_8:

  return v7;
}

- (id)shiftLockControlKeyTraits
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    [(UIKBRenderFactory10Key_Round *)self shiftedControlKeyTraits];
  }

  else
  {
    +[UIKBRenderTraits emptyTraits];
  }
  v5 = ;

  return v5;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  v76.receiver = self;
  v76.super_class = UIKBRenderFactory10Key_Round;
  v8 = [(UIKBRenderFactory10Key *)&v76 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    goto LABEL_67;
  }

  displayType = [keyCopy displayType];
  if (displayType == 12)
  {
    goto LABEL_67;
  }

  v10 = displayType;
  if (([keyCopy state] & 0x10) != 0 && v10 <= 0xD && ((1 << v10) & 0x2030) != 0)
  {
    [(UIKBRenderFactory10Key_Round *)self shouldUseRoundCornerForKey:keyCopy];
    v11 = 1;
LABEL_9:
    [v8 setControlOpacities:0];
    [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
    v12 = [(UIKBRenderFactory10Key_Round *)self roundCornersForKey:keyCopy onKeyplane:keyplaneCopy];
    geometry = [v8 geometry];
    [geometry setRoundRectCorners:v12];

    v14 = [(UIKBRenderFactory10Key *)self displayContentsForKey:keyCopy];
    geometry2 = [v8 geometry];
    [(UIKBRenderFactory10Key_Round *)self _customizeGeometry:geometry2 forKey:keyCopy contents:v14 onKeyplane:keyplaneCopy];

    if (v11)
    {
LABEL_63:

      goto LABEL_64;
    }

    [v8 removeAllRenderEffects];
    defaultKeyShadowColorName = [(UIKBRenderFactory10Key_Round *)self defaultKeyShadowColorName];
    if (([keyCopy state] & 0x6C) == 0)
    {
      if ([(UIKBRenderFactory *)self useBlueThemingForKey:keyCopy])
      {
LABEL_47:
        v50 = [(UIKBRenderFactory10Key_Round *)self edgesWithInsetsForKey:keyCopy onKeyplane:keyplaneCopy];
        v51 = v50 & 6;
        [keyCopy paddedFrame];
        MinX = CGRectGetMinX(v78);
        [keyCopy frame];
        v53 = MinX - CGRectGetMinX(v79);
        if (v51 != 6)
        {
          v54 = v51 ^ 6;
          controlKeyDividerColorName = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
          [(UIKBRenderFactory *)self translucentGapWidth];
          v57 = -v56;
          if ((v54 & 2) != 0)
          {
            v58 = v57;
          }

          else
          {
            v58 = 0.0;
          }

          if (v54 >= 4)
          {
            v59 = v57;
          }

          else
          {
            v59 = 0.0;
          }

          if (v53 > 0.0)
          {
            v58 = v58 - v53;
            v60 = [UIKBEdgeEffect effectWithColor:controlKeyDividerColorName edges:2 inset:-v53 weight:v53];
            [v8 addRenderEffect:v60];
          }

          [(UIKBRenderFactory *)self translucentGapWidth];
          v62 = [UIKBEdgeEffect effectWithColor:controlKeyDividerColorName edges:v54 insets:0.0 weight:v58, v59, 0.0, v61];
          [v8 addRenderEffect:v62];
        }

        if ((v50 & 4) != 0)
        {
          v63 = 0.0;
          if ((v50 & 2) == 0)
          {
            [(UIKBRenderFactory *)self translucentGapWidth];
            v63 = -v53 - v64;
          }

          renderConfig = [(UIKBRenderFactory *)self renderConfig];
          colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

          if ((colorAdaptiveBackground & 1) == 0)
          {
            v67 = [UIKBEdgeEffect effectWithColor:defaultKeyShadowColorName edges:4 insets:0.0 weight:v63, -1.0, 0.0, 1.0];
            [v8 addRenderEffect:v67];
          }
        }

        goto LABEL_63;
      }

      defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
LABEL_46:
      v49 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
      [v8 setBackgroundGradient:v49];

      goto LABEL_47;
    }

    v17 = [keyCopy displayType] == 14 || objc_msgSend(keyCopy, "displayType") == 11;
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    animatedBackground = [renderConfig2 animatedBackground];

    if (animatedBackground)
    {
      defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
      v21 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha10"];
      [v8 setLayeredForegroundGradient:v21];

      goto LABEL_46;
    }

    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig3 lightKeyboard];

    if (lightKeyboard)
    {
      renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
      v25 = renderConfig4;
      if (v17)
      {
        defaultKeyBackgroundColorName = [renderConfig4 activatedKeyplaneSwitchControlKeyBackgroundName];

        renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground2 = [renderConfig5 colorAdaptiveBackground];

        if (!colorAdaptiveBackground2)
        {
          goto LABEL_46;
        }

        goto LABEL_28;
      }

      colorAdaptiveBackground3 = [renderConfig4 colorAdaptiveBackground];

      if (colorAdaptiveBackground3)
      {
        renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
        defaultKeyBackgroundColorName = [renderConfig6 activatedKeyplaneSwitchControlKeyBackgroundName];

LABEL_28:
        v33 = v8;
        v34 = 13;
LABEL_29:
        [v33 setBlendForm:v34];
        goto LABEL_46;
      }

      if (+[UIKBRenderFactory _graphicsQuality]== 10)
      {
        v41 = UIKBColorLightGrayPressState;
      }

      else
      {
        v41 = UIKBColorLightGrayPressState10Key;
      }
    }

    else
    {
      if (v17)
      {
        renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
        defaultKeyBackgroundColorName = [renderConfig7 activatedKeyplaneSwitchControlKeyBackgroundName];

        renderingContext = [(UIKBRenderFactory *)self renderingContext];
        isFloating = [renderingContext isFloating];

        if (isFloating)
        {
          goto LABEL_46;
        }

        [v8 setBlendForm:6];
        renderConfig8 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground4 = [renderConfig8 colorAdaptiveBackground];

        if (!colorAdaptiveBackground4)
        {
          goto LABEL_46;
        }

        v33 = v8;
        v34 = 12;
        goto LABEL_29;
      }

      if ([keyCopy state] == 20)
      {
        v37 = v14;
        v38 = defaultKeyShadowColorName;
        renderConfig9 = [(UIKBRenderFactory *)self renderConfig];
        v40 = UIKBColorWhite_Alpha30;
        if (([renderConfig9 colorAdaptiveBackground] & 1) == 0 && !objc_msgSend(v8, "usesDarkAppearance"))
        {
          v40 = UIKBColorClear;
        }

        defaultKeyBackgroundColorName = *v40;

        defaultKeyShadowColorName = @"UIKBColorClear";
        v14 = v37;
        goto LABEL_46;
      }

      if ([objc_opt_class() _graphicsQuality] == 100)
      {
        renderConfig10 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground5 = [renderConfig10 colorAdaptiveBackground];

        if (colorAdaptiveBackground5)
        {
          renderConfig11 = [(UIKBRenderFactory *)self renderConfig];
          activatedKeyplaneSwitchControlKeyBackgroundName = [renderConfig11 activatedKeyplaneSwitchControlKeyBackgroundName];

          [v8 setBlendForm:12];
        }

        else
        {
          renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
          isFloating2 = [renderingContext2 isFloating];

          if ((isFloating2 & 1) == 0)
          {
            [v8 setBlendForm:6];
          }
        }

        defaultKeyBackgroundColorName = @"UIKBColorKeyGrayKeyActiveDarkBackground";
        v48 = @"UIKBColorClear";

        defaultKeyShadowColorName = v48;
        goto LABEL_46;
      }

      v41 = UIKBColorKeyGrayKeyDarkBackground;
    }

    defaultKeyBackgroundColorName = *v41;
    goto LABEL_46;
  }

  if ([(UIKBRenderFactory10Key_Round *)self shouldUseRoundCornerForKey:keyCopy])
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_64:
  lightTextFontName = [(UIKBRenderFactory10Key *)self lightTextFontName];
  symbolStyle = [v8 symbolStyle];
  [symbolStyle setFontName:lightTextFontName];

  lightTextFontFallbackName = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
  symbolStyle2 = [v8 symbolStyle];
  [symbolStyle2 setKeycapsFallback:lightTextFontFallbackName];

  if ([keyCopy displayType] == 1)
  {
    [v8 setBackgroundGradient:0];
    renderConfig12 = [(UIKBRenderFactory *)self renderConfig];
    usesCompactKeycapsFont = [renderConfig12 usesCompactKeycapsFont];

    if (usesCompactKeycapsFont)
    {
      symbolStyle3 = [v8 symbolStyle];
      [symbolStyle3 setFontName:@"UIKBRenderFactoryWordsSystemCompactFontName"];
    }
  }

LABEL_67:

  return v8;
}

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  rect_24 = traits;
  keyCopy = key;
  fontNameCopy = fontName;
  nameCopy = name;
  renderConfig = [context renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  v17 = UIKBColorGray_Percent37;
  if (lightKeyboard)
  {
    v17 = UIKBColorWhite;
  }

  v18 = [UIKBGradient gradientWithFlatColor:*v17];
  [rect_24 setBackgroundGradient:v18];

  [rect_24 removeAllRenderEffects];
  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    v21 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.5 weight:1.0, 0.0, 1.0, 0.0, 3.0];
    [rect_24 addRenderEffect:v21];
  }

  [(UIKBRenderFactory10Key_Round *)self wideShadowPaddleInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if (([renderingContext isFloating] & 1) == 0)
  {
    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground2 = [renderConfig3 colorAdaptiveBackground];

    if (colorAdaptiveBackground2)
    {
      goto LABEL_9;
    }

    renderingContext = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha55" offset:*MEMORY[0x1E695F060] insets:*(MEMORY[0x1E695F060] + 8) weight:v23, v25, v27 + 6.0, v29, 40.0];
    [rect_24 addRenderEffect:renderingContext];
  }

LABEL_9:
  renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig4 lightKeyboard])
  {
LABEL_12:

    goto LABEL_13;
  }

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground3 = [renderConfig5 colorAdaptiveBackground];

  if ((colorAdaptiveBackground3 & 1) == 0)
  {
    renderConfig4 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [rect_24 addRenderEffect:renderConfig4];
    goto LABEL_12;
  }

LABEL_13:
  if ([keyCopy displayType] == 13 || objc_msgSend(keyCopy, "displayType") == 4)
  {
    renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext2 inputSwitcherView];
  }

  else
  {
    renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext2 splitControlView];
  }

  v38 = inputSwitcherView;

  renderingContext3 = [(UIKBRenderFactory *)self renderingContext];
  layoutView = [renderingContext3 layoutView];

  [layoutView bounds];
  [layoutView convertRect:0 toView:?];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  window = [layoutView window];
  [window frame];
  v51 = v50;
  rect = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v99.origin.x = v42;
  v99.origin.y = v44;
  v99.size.width = v46;
  v99.size.height = v48;
  rect_16 = CGRectGetMinY(v99);
  v100.origin.x = v42;
  v100.origin.y = v44;
  v100.size.width = v46;
  v100.size.height = v48;
  rect_8 = CGRectGetMinX(v100);
  v101.origin.x = v51;
  v101.origin.y = v53;
  v101.size.width = v55;
  v101.size.height = v57;
  Height = CGRectGetHeight(v101);
  v102.origin.x = v42;
  v102.origin.y = v44;
  v102.size.width = v46;
  v102.size.height = v48;
  v59 = Height - CGRectGetMaxY(v102);
  v103.origin.x = rect;
  v103.origin.y = v53;
  v103.size.width = v55;
  v103.size.height = v57;
  Width = CGRectGetWidth(v103);
  v104.origin.x = v42;
  v104.origin.y = v44;
  v104.size.width = v46;
  v104.size.height = v48;
  v61 = Width - CGRectGetMaxX(v104);
  geometry = [rect_24 geometry];
  [geometry setLayoutMargins:{rect_16, rect_8, v59, v61}];

  [v38 popupRect];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  [keyCopy paddedFrame];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  [layoutView convertRect:v38 fromView:{v64, v66, v68, v70}];
  v108.origin.x = v79;
  v108.origin.y = v80;
  v108.size.width = v81;
  v108.size.height = v82;
  v105.origin.x = v72;
  v105.origin.y = v74;
  v105.size.width = v76;
  v105.size.height = v78;
  v106 = CGRectUnion(v105, v108);
  v107 = CGRectInset(v106, -12.0, -2.0);
  x = v107.origin.x;
  y = v107.origin.y;
  v85 = v107.size.width;
  v86 = v107.size.height;
  geometry2 = [rect_24 geometry];
  [geometry2 setDisplayFrame:{x, y, v85, v86}];

  [rect_24 setBlurBlending:1];
  geometry3 = [rect_24 geometry];
  [geometry3 setPopupBias:40];

  renderingContext4 = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext4 isColorAdaptiveNonLinearCarplayKeyboard];
  v91 = 22.0;
  if (isColorAdaptiveNonLinearCarplayKeyboard)
  {
    v91 = 14.0;
  }

  v92 = [UIKBTextStyle styleWithFontName:nameCopy withFallbackFontName:fontNameCopy withFontSize:v91, *&rect];

  [rect_24 setSymbolStyle:v92];
  symbolStyle = [rect_24 symbolStyle];
  [symbolStyle setTextColor:@"UIKBColorClear"];

  if (+[UIKBRenderFactory _graphicsQuality]== 10)
  {
    [rect_24 removeAllRenderEffects];
  }
}

@end