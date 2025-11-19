@interface UIKBRenderFactory10Key_Round
- (UIEdgeInsets)symbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)activeControlKeyTraits;
- (id)controlKeyBackgroundColorName;
- (id)controlKeyTraits;
- (id)defaultKeyShadowColorName;
- (id)shiftLockControlKeyTraits;
- (id)shiftedControlKeyTraits;
- (int64_t)lightHighQualityEnabledBlendForm;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5 onKeyplane:(id)a6;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
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

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5 onKeyplane:(id)a6
{
  v32 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [(UIKBRenderFactory *)self renderConfig];
  v12 = [v11 colorAdaptiveBackground];

  if (v12)
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
      [v9 paddedFrame];
      v13 = 4.0;
      if (v16 > 42.0)
      {
        v13 = 5.0;
      }
    }
  }

  [v32 setRoundRectRadius:v13];
  [(UIKBRenderFactory10Key_Round *)self symbolFrameInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(UIKBRenderFactory10Key_Round *)self edgesWithInsetsForKey:v9 onKeyplane:v10];

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

  [v32 paddedFrame];
  [v32 setSymbolFrame:{v20 + v26, v18 + v28, v27 - (v24 + v20), v29 - (v18 + v22)}];
  [v32 symbolFrame];
  [v32 setPaddedFrame:{v30 + 0.0, v31 + 0.0}];
}

- (id)defaultKeyShadowColorName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorBlack_Alpha35;
  if (!v3)
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
    v3 = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactory10Key_Round;
    v3 = [(UIKBRenderFactory10Key *)&v5 controlKeyBackgroundColorName];
  }

  return v3;
}

- (int64_t)lightHighQualityEnabledBlendForm
{
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactory10Key_Round;
    return [(UIKBRenderFactory10Key *)&v8 lightHighQualityEnabledBlendForm];
  }

  v3 = [(UIKBRenderFactory *)self renderConfig];
  if (![v3 colorAdaptiveBackground])
  {

    return 1;
  }

  v4 = [(UIKBRenderFactory *)self increasedContrastEnabled];

  if (v4)
  {
    return 1;
  }

  v5 = [(UIKBRenderFactory *)self renderConfig];
  if ([v5 lightKeyboard])
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
    v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
    [v3 setControlOpacities:1];
    v4 = [(UIKBRenderFactory10Key_Round *)self controlKeyBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:v4];
    [v3 setBackgroundGradient:v5];

    v6 = [(UIKBRenderFactory10Key *)self controlKeyForegroundColorName];
    if (v6)
    {
      v7 = [UIKBGradient gradientWithFlatColor:v6];
      [v3 setLayeredForegroundGradient:v7];
    }

    else
    {
      [v3 setLayeredForegroundGradient:0];
    }

    v8 = [(UIKBRenderFactory *)self renderConfig];
    v9 = [v8 colorAdaptiveBackground];

    if ((v9 & 1) == 0)
    {
      v10 = [(UIKBRenderFactory10Key_Round *)self controlKeyShadowColorName];
      v11 = [UIKBEdgeEffect effectWithColor:v10 edges:4 inset:-1.0 weight:1.0];
      [v3 addRenderEffect:v11];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIKBRenderFactory10Key_Round;
    v3 = [(UIKBRenderFactory10Key *)&v13 controlKeyTraits];
  }

  return v3;
}

- (id)activeControlKeyTraits
{
  if ([(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
    [v3 setControlOpacities:0];
    v4 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:v4];
    [v3 setBackgroundGradient:v5];

    v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorClear"];
    [v3 setLayeredForegroundGradient:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactory10Key_Round;
    v3 = [(UIKBRenderFactory10Key *)&v8 activeControlKeyTraits];
  }

  return v3;
}

- (id)shiftedControlKeyTraits
{
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    v13.receiver = self;
    v13.super_class = UIKBRenderFactory10Key_Round;
    v6 = [(UIKBRenderFactory10Key *)&v13 shiftedControlKeyTraits];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 lightKeyboard];

  if ((v4 & 1) == 0)
  {
    v6 = [(UIKBRenderFactory10Key_Round *)self shiftLockControlKeyTraits];
    goto LABEL_7;
  }

  v5 = [(UIKBRenderFactory *)self renderConfig];
  if ([v5 lightKeyboard])
  {
    [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  }

  else
  {
    [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  }
  v7 = ;

  v9 = [(UIKBRenderFactory *)self renderConfig];
  v10 = [v9 lightKeyboard];

  if (v10)
  {
    v11 = [(UIKBRenderFactory *)self blackKeycapColor];
    v12 = [UIKBTextStyle styleWithTextColor:v11];
    [v7 setSymbolStyle:v12];
  }

LABEL_8:

  return v7;
}

- (id)shiftLockControlKeyTraits
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 lightKeyboard];

  if (v4)
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

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v76.receiver = self;
  v76.super_class = UIKBRenderFactory10Key_Round;
  v8 = [(UIKBRenderFactory10Key *)&v76 _traitsForKey:v6 onKeyplane:v7];
  if (![(UIKBRenderFactory10Key_Round *)self useRoundCorner])
  {
    goto LABEL_67;
  }

  v9 = [v6 displayType];
  if (v9 == 12)
  {
    goto LABEL_67;
  }

  v10 = v9;
  if (([v6 state] & 0x10) != 0 && v10 <= 0xD && ((1 << v10) & 0x2030) != 0)
  {
    [(UIKBRenderFactory10Key_Round *)self shouldUseRoundCornerForKey:v6];
    v11 = 1;
LABEL_9:
    [v8 setControlOpacities:0];
    [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
    v12 = [(UIKBRenderFactory10Key_Round *)self roundCornersForKey:v6 onKeyplane:v7];
    v13 = [v8 geometry];
    [v13 setRoundRectCorners:v12];

    v14 = [(UIKBRenderFactory10Key *)self displayContentsForKey:v6];
    v15 = [v8 geometry];
    [(UIKBRenderFactory10Key_Round *)self _customizeGeometry:v15 forKey:v6 contents:v14 onKeyplane:v7];

    if (v11)
    {
LABEL_63:

      goto LABEL_64;
    }

    [v8 removeAllRenderEffects];
    v16 = [(UIKBRenderFactory10Key_Round *)self defaultKeyShadowColorName];
    if (([v6 state] & 0x6C) == 0)
    {
      if ([(UIKBRenderFactory *)self useBlueThemingForKey:v6])
      {
LABEL_47:
        v50 = [(UIKBRenderFactory10Key_Round *)self edgesWithInsetsForKey:v6 onKeyplane:v7];
        v51 = v50 & 6;
        [v6 paddedFrame];
        MinX = CGRectGetMinX(v78);
        [v6 frame];
        v53 = MinX - CGRectGetMinX(v79);
        if (v51 != 6)
        {
          v54 = v51 ^ 6;
          v55 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
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
            v60 = [UIKBEdgeEffect effectWithColor:v55 edges:2 inset:-v53 weight:v53];
            [v8 addRenderEffect:v60];
          }

          [(UIKBRenderFactory *)self translucentGapWidth];
          v62 = [UIKBEdgeEffect effectWithColor:v55 edges:v54 insets:0.0 weight:v58, v59, 0.0, v61];
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

          v65 = [(UIKBRenderFactory *)self renderConfig];
          v66 = [v65 colorAdaptiveBackground];

          if ((v66 & 1) == 0)
          {
            v67 = [UIKBEdgeEffect effectWithColor:v16 edges:4 insets:0.0 weight:v63, -1.0, 0.0, 1.0];
            [v8 addRenderEffect:v67];
          }
        }

        goto LABEL_63;
      }

      v18 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
LABEL_46:
      v49 = [UIKBGradient gradientWithFlatColor:v18];
      [v8 setBackgroundGradient:v49];

      goto LABEL_47;
    }

    v17 = [v6 displayType] == 14 || objc_msgSend(v6, "displayType") == 11;
    v19 = [(UIKBRenderFactory *)self renderConfig];
    v20 = [v19 animatedBackground];

    if (v20)
    {
      v18 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
      v21 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha10"];
      [v8 setLayeredForegroundGradient:v21];

      goto LABEL_46;
    }

    v22 = [(UIKBRenderFactory *)self renderConfig];
    v23 = [v22 lightKeyboard];

    if (v23)
    {
      v24 = [(UIKBRenderFactory *)self renderConfig];
      v25 = v24;
      if (v17)
      {
        v18 = [v24 activatedKeyplaneSwitchControlKeyBackgroundName];

        v26 = [(UIKBRenderFactory *)self renderConfig];
        v27 = [v26 colorAdaptiveBackground];

        if (!v27)
        {
          goto LABEL_46;
        }

        goto LABEL_28;
      }

      v35 = [v24 colorAdaptiveBackground];

      if (v35)
      {
        v36 = [(UIKBRenderFactory *)self renderConfig];
        v18 = [v36 activatedKeyplaneSwitchControlKeyBackgroundName];

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
        v28 = [(UIKBRenderFactory *)self renderConfig];
        v18 = [v28 activatedKeyplaneSwitchControlKeyBackgroundName];

        v29 = [(UIKBRenderFactory *)self renderingContext];
        v30 = [v29 isFloating];

        if (v30)
        {
          goto LABEL_46;
        }

        [v8 setBlendForm:6];
        v31 = [(UIKBRenderFactory *)self renderConfig];
        v32 = [v31 colorAdaptiveBackground];

        if (!v32)
        {
          goto LABEL_46;
        }

        v33 = v8;
        v34 = 12;
        goto LABEL_29;
      }

      if ([v6 state] == 20)
      {
        v37 = v14;
        v38 = v16;
        v39 = [(UIKBRenderFactory *)self renderConfig];
        v40 = UIKBColorWhite_Alpha30;
        if (([v39 colorAdaptiveBackground] & 1) == 0 && !objc_msgSend(v8, "usesDarkAppearance"))
        {
          v40 = UIKBColorClear;
        }

        v18 = *v40;

        v16 = @"UIKBColorClear";
        v14 = v37;
        goto LABEL_46;
      }

      if ([objc_opt_class() _graphicsQuality] == 100)
      {
        v42 = [(UIKBRenderFactory *)self renderConfig];
        v43 = [v42 colorAdaptiveBackground];

        if (v43)
        {
          v44 = [(UIKBRenderFactory *)self renderConfig];
          v45 = [v44 activatedKeyplaneSwitchControlKeyBackgroundName];

          [v8 setBlendForm:12];
        }

        else
        {
          v46 = [(UIKBRenderFactory *)self renderingContext];
          v47 = [v46 isFloating];

          if ((v47 & 1) == 0)
          {
            [v8 setBlendForm:6];
          }
        }

        v18 = @"UIKBColorKeyGrayKeyActiveDarkBackground";
        v48 = @"UIKBColorClear";

        v16 = v48;
        goto LABEL_46;
      }

      v41 = UIKBColorKeyGrayKeyDarkBackground;
    }

    v18 = *v41;
    goto LABEL_46;
  }

  if ([(UIKBRenderFactory10Key_Round *)self shouldUseRoundCornerForKey:v6])
  {
    v11 = 0;
    goto LABEL_9;
  }

LABEL_64:
  v68 = [(UIKBRenderFactory10Key *)self lightTextFontName];
  v69 = [v8 symbolStyle];
  [v69 setFontName:v68];

  v70 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
  v71 = [v8 symbolStyle];
  [v71 setKeycapsFallback:v70];

  if ([v6 displayType] == 1)
  {
    [v8 setBackgroundGradient:0];
    v72 = [(UIKBRenderFactory *)self renderConfig];
    v73 = [v72 usesCompactKeycapsFont];

    if (v73)
    {
      v74 = [v8 symbolStyle];
      [v74 setFontName:@"UIKBRenderFactoryWordsSystemCompactFontName"];
    }
  }

LABEL_67:

  return v8;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  rect_24 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = [a5 renderConfig];
  v16 = [v15 lightKeyboard];

  v17 = UIKBColorGray_Percent37;
  if (v16)
  {
    v17 = UIKBColorWhite;
  }

  v18 = [UIKBGradient gradientWithFlatColor:*v17];
  [rect_24 setBackgroundGradient:v18];

  [rect_24 removeAllRenderEffects];
  v19 = [(UIKBRenderFactory *)self renderConfig];
  v20 = [v19 colorAdaptiveBackground];

  if ((v20 & 1) == 0)
  {
    v21 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.5 weight:1.0, 0.0, 1.0, 0.0, 3.0];
    [rect_24 addRenderEffect:v21];
  }

  [(UIKBRenderFactory10Key_Round *)self wideShadowPaddleInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(UIKBRenderFactory *)self renderingContext];
  if (([v30 isFloating] & 1) == 0)
  {
    v31 = [(UIKBRenderFactory *)self renderConfig];
    v32 = [v31 colorAdaptiveBackground];

    if (v32)
    {
      goto LABEL_9;
    }

    v30 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha55" offset:*MEMORY[0x1E695F060] insets:*(MEMORY[0x1E695F060] + 8) weight:v23, v25, v27 + 6.0, v29, 40.0];
    [rect_24 addRenderEffect:v30];
  }

LABEL_9:
  v33 = [(UIKBRenderFactory *)self renderConfig];
  if (![v33 lightKeyboard])
  {
LABEL_12:

    goto LABEL_13;
  }

  v34 = [(UIKBRenderFactory *)self renderConfig];
  v35 = [v34 colorAdaptiveBackground];

  if ((v35 & 1) == 0)
  {
    v33 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [rect_24 addRenderEffect:v33];
    goto LABEL_12;
  }

LABEL_13:
  if ([v12 displayType] == 13 || objc_msgSend(v12, "displayType") == 4)
  {
    v36 = [(UIKBRenderFactory *)self renderingContext];
    v37 = [v36 inputSwitcherView];
  }

  else
  {
    v36 = [(UIKBRenderFactory *)self renderingContext];
    v37 = [v36 splitControlView];
  }

  v38 = v37;

  v39 = [(UIKBRenderFactory *)self renderingContext];
  v40 = [v39 layoutView];

  [v40 bounds];
  [v40 convertRect:0 toView:?];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [v40 window];
  [v49 frame];
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
  v62 = [rect_24 geometry];
  [v62 setLayoutMargins:{rect_16, rect_8, v59, v61}];

  [v38 popupRect];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  [v12 paddedFrame];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  [v40 convertRect:v38 fromView:{v64, v66, v68, v70}];
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
  v87 = [rect_24 geometry];
  [v87 setDisplayFrame:{x, y, v85, v86}];

  [rect_24 setBlurBlending:1];
  v88 = [rect_24 geometry];
  [v88 setPopupBias:40];

  v89 = [(UIKBRenderFactory *)self renderingContext];
  v90 = [v89 isColorAdaptiveNonLinearCarplayKeyboard];
  v91 = 22.0;
  if (v90)
  {
    v91 = 14.0;
  }

  v92 = [UIKBTextStyle styleWithFontName:v14 withFallbackFontName:v13 withFontSize:v91, *&rect];

  [rect_24 setSymbolStyle:v92];
  v93 = [rect_24 symbolStyle];
  [v93 setTextColor:@"UIKBColorClear"];

  if (+[UIKBRenderFactory _graphicsQuality]== 10)
  {
    [rect_24 removeAllRenderEffects];
  }
}

@end