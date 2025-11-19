@interface UIKBRenderFactory10Key
+ (BOOL)_isActiveKeyplaneSwitchKey:(id)a3;
+ (void)populateFlickGuide:(id)a3 forKey:(id)a4 from:(id)a5 scale:(double)a6;
- (BOOL)shouldOverlayTraitsForKey:(id)a3 onKeyplane:(id)a4;
- (CGPoint)abcKeyTextOffset;
- (CGPoint)dictationKeyTextOffset;
- (CGPoint)globeKeyTextOffset;
- (CGPoint)longVowelSignKeyTextOffset;
- (CGPoint)numberPadKeyPrimaryTextOffset;
- (CGPoint)numberPadKeySecondaryTextOffset;
- (CGPoint)numberPadVBarSecondaryTextOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (UIEdgeInsets)topEdgeAdjustmentInsets;
- (double)capitalAbcSymbolSize;
- (double)keyCornerRadius;
- (double)symbolImageControlKeyFontSize;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)activeControlKeyTraits;
- (id)controlKeyBackgroundColorName;
- (id)controlKeyDividerColorName;
- (id)controlKeyTraits;
- (id)defaultKeyDividerColorName;
- (id)displayContentsForKey:(id)a3;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontFallbackName;
- (id)lightTextFontName;
- (id)shiftedControlKeyTraits;
- (id)shiftedWhiteControlKeyTraits;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontFallbackName;
- (id)thinTextFontName;
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5;
- (void)modifyTraitsForDetachedInputSwitcher:(id)a3 withKey:(id)a4;
- (void)setupColumnLayoutSegmentsWithControlWidth:(double)a3;
@end

@implementation UIKBRenderFactory10Key

- (id)defaultKeyDividerColorName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  if ([v3 lightKeyboard])
  {
    v4 = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
  }

  else
  {
    v4 = @"UIKBColorClear";
  }

  v5 = v4;

  return v5;
}

- (id)controlKeyBackgroundColorName
{
  v3 = +[UIKBRenderFactory _graphicsQuality];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  v5 = [v4 lightKeyboard];
  if (v3 == 10)
  {
    v6 = UIKBColorLightLowQualityBackdropTint;
    if (!v5)
    {
      v6 = UIKBColorGray_Percent20;
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v6 = UIKBColorClear;
LABEL_7:
    v7 = *v6;
    goto LABEL_9;
  }

  v7 = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
LABEL_9:
  v8 = v7;

  return v8;
}

- (id)controlKeyDividerColorName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColor10KeyLightControlKeySeparator;
  if (!v3)
  {
    v4 = UIKBColorClear;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)displayContentsForKey:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UIKBRenderFactory10Key;
  v5 = [(UIKBRenderFactory *)&v25 displayContentsForKey:v4];
  if (([v4 state] & 0x10) != 0)
  {
    v20 = v5;
    v6 = MEMORY[0x1E695DF70];
    v7 = [v4 subtrees];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v4 subtrees];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [MEMORY[0x1E695DFB0] null];

          if (v14 == v15)
          {
            [MEMORY[0x1E695DFB0] null];
          }

          else
          {
            [(UIKBRenderFactory10Key *)self displayContentsForKey:v14];
          }
          v16 = ;
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v5 = v20;
    [v20 setVariantDisplayContents:v8];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "flickDirection") + 1}];
    v26 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [v20 setHighlightedVariantsList:v18];

    [v20 setDisplayString:0];
  }

  return v5;
}

- (UIEdgeInsets)topEdgeAdjustmentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)a3 key:(id)a4 onKeyplane:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v9 primaryKeylayoutWidthRatio];
  if (v19 > 0.0)
  {
    [v9 primaryKeylayoutOffset];
    v21 = v20;
    if (v20 <= 0.0)
    {
      [v9 primaryKeylayoutWidthRatio];
      v23 = v16 * v22;
      v20 = 0.0;
      v21 = v23 + 0.0;
    }

    v16 = v16 - v21;
    v14 = v14 + 0.0;
    v12 = v12 + v20;
  }

  [v8 frame];
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v25 = MaxY < CGRectGetMaxY(v35) || [(UIKBRenderFactory10Key *)self shouldShowBottomRowEdge];
  if ([(UIKBRenderFactory10Key *)self shouldShowTopRowEdge])
  {
    v26 = [v8 displayRowHint] == 1;
  }

  else
  {
    v26 = 0;
  }

  [(UIKBRenderFactory10Key *)self interkeyGapsCenterXOfKeyplaneFrame:v12, v14, v16, v18];
  v28 = v27;
  [(UIKBRenderFactory *)self translucentGapWidth];
  v30 = v29;
  [(UIKBRenderFactory *)self translucentGapWidth];
  v32 = [v10 adjustForTranslucentGapsInFrameWithSize_10Key:v25 centerX:v26 bottomEdge:v30 topEdge:{v31, v28}];

  return v32;
}

- (BOOL)shouldOverlayTraitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 containsString:@"Korean10Key"];

  if (![v6 dynamicLayout] || (objc_msgSend(v6, "displayType") != 32) | v9 & 1 && (objc_msgSend(v6, "interactionType") != 14) | v9 & 1 && ((objc_msgSend(v6, "interactionType") == 15) & v9) == 0)
  {
    v12.receiver = self;
    v12.super_class = UIKBRenderFactory10Key;
    v10 = [(UIKBRenderFactory *)&v12 shouldOverlayTraitsForKey:v6 onKeyplane:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (CGPoint)abcKeyTextOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)capitalAbcSymbolSize
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  if ([v2 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

- (double)symbolImageControlKeyFontSize
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  if ([v2 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 22.0;
  }

  return v3;
}

- (CGPoint)globeKeyTextOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dictationKeyTextOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)longVowelSignKeyTextOffset
{
  v2 = 8.0;
  v3 = 15.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadKeyPrimaryTextOffset
{
  v2 = 0.0;
  v3 = -6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadKeySecondaryTextOffset
{
  v2 = 1.0;
  v3 = 13.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)numberPadVBarSecondaryTextOffset
{
  v2 = 1.0;
  v3 = 13.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)keyCornerRadius
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  return v3;
}

- (id)lightKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)thinKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Popups";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightPadKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPad-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!v5)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (v4)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightTextFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  if (v4)
  {
    v5 = @"UIKBRenderFactorySystemCompactFontName";
  }

  else
  {
    v6 = [(UIKBRenderFactory *)self boldTextEnabled];
    v5 = @".Keycaps-Keys";
    if (v6)
    {
      v5 = @".PhoneKeyCaps";
    }
  }

  v7 = v5;

  return v7;
}

- (id)thinTextFontName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  if (v3)
  {
    v4 = @"UIKBRenderFactorySystemCompactFontName";
  }

  else
  {
    v4 = @".Keycaps-Keys";
  }

  return v4;
}

- (id)lightKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Keys";
  }

  return v2;
}

- (id)thinKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Keys";
  }

  return v2;
}

- (id)lightPadKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".KeycapsPad-Keys";
  }

  return v2;
}

- (id)lightTextFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Keys";
  }

  return v2;
}

- (id)thinTextFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".Keycaps-Keys";
  }

  return v2;
}

- (void)modifyTraitsForDetachedInputSwitcher:(id)a3 withKey:(id)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geometry];
  [v8 setDetachedVariants:1];

  v9 = [(UIKBRenderFactory *)self renderConfig];
  v10 = [v9 lightKeyboard];

  if (v10)
  {
    v11 = [(UIKBRenderFactory10Key *)self useRoundCorner];
    v12 = [(UIKBRenderFactory *)self renderConfig];
    v13 = [v12 colorAdaptiveBackground];

    if (v11)
    {
      if ((v13 & 1) == 0)
      {
        v14 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:1.0, 1.0, 0.0, 1.0, 4.5];
LABEL_7:
        v15 = v14;
        [v6 addRenderEffect:v14];
      }
    }

    else if ((v13 & 1) == 0)
    {
      [v6 setBlendForm:0];
      v14 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
      goto LABEL_7;
    }
  }

  v16 = [(UIKBRenderFactory *)self renderConfig];
  if ([v16 colorAdaptiveBackground] && objc_msgSend(v7, "displayType") != 13 && objc_msgSend(v7, "displayType") != 5)
  {
    v59 = [v7 displayType];

    if (v59 == 4)
    {
      goto LABEL_12;
    }

    v16 = [(UIKBRenderFactory *)self renderConfig];
    if ([v16 lightKeyboard])
    {
      v60 = [(UIKBRenderFactory *)self renderConfig];
      [v6 setBlurBlending:{objc_msgSend(v60, "animatedBackground")}];
    }

    else
    {
      [v6 setBlurBlending:1];
    }
  }

LABEL_12:
  if ([v7 displayType] == 13 || objc_msgSend(v7, "displayType") == 4)
  {
    v17 = [(UIKBRenderFactory *)self renderingContext];
    v18 = [v17 inputSwitcherView];
  }

  else
  {
    v17 = [(UIKBRenderFactory *)self renderingContext];
    v18 = [v17 splitControlView];
  }

  v19 = v18;

  [v19 popupRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(UIKBRenderFactory *)self renderingContext];
  v29 = [v28 layoutView];
  [v29 convertRect:v19 fromView:{v21, v23, v25, v27}];
  x = v30;
  y = v32;
  width = v34;
  height = v36;

  if ([(UIKBRenderFactory10Key *)self useRoundCorner])
  {
    [(UIKBRenderFactory10Key *)self keyCornerRadius];
    v39 = v38;
    [(UIKBRenderFactory10Key *)self keyCornerRadius];
    v41 = v40;
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v63 = CGRectInset(v62, v39, v41);
    x = v63.origin.x;
    y = v63.origin.y;
    width = v63.size.width;
    height = v63.size.height;
  }

  v42 = [(UIKBRenderFactory *)self renderConfig];
  if (![v42 colorAdaptiveBackground] || objc_msgSend(v7, "displayType") == 13 || objc_msgSend(v7, "displayType") == 5)
  {
    goto LABEL_23;
  }

  v43 = [v7 displayType];

  if (v43 != 4)
  {
    v44 = [v6 geometry];
    [v44 displayFrame];
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v65 = CGRectUnion(v64, v68);
    v45 = v65.origin.x;
    v46 = v65.origin.y;
    v47 = v65.size.width;
    v48 = v65.size.height;

    v66.origin.x = v45;
    v66.origin.y = v46;
    v66.size.width = v47;
    v66.size.height = v48;
    v67 = CGRectInset(v66, -12.0, -6.0);
    v49 = v67.origin.x;
    v50 = v67.origin.y;
    v51 = v67.size.width;
    v52 = v67.size.height;
    v42 = [v6 geometry];
    [v42 setDisplayFrame:{v49, v50, v51, v52}];
LABEL_23:
  }

  v53 = [UIKBRenderGeometry geometryWithFrame:x paddedFrame:y, width, height, x, y, width, height];
  v61[0] = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  [v6 setVariantGeometries:v54];

  v55 = [v6 geometry];
  [v55 setPopupBias:40];

  [(UIKBRenderFactory10Key *)self keyCornerRadius];
  v57 = v56;
  v58 = [v6 geometry];
  [v58 setRoundRectRadius:v57];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v370[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v368.receiver = self;
  v368.super_class = UIKBRenderFactory10Key;
  v8 = [(UIKBRenderFactory *)&v368 _traitsForKey:v6 onKeyplane:v7];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  v9 = [v8 geometry];
  [v9 paddedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v8 geometry];
  [v18 setDisplayFrame:{v11, v13, v15, v17}];

  v19 = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(v19, "lightKeyboard") ^ 1}];

  if ([v6 clipCorners])
  {
    v20 = [v6 clipCorners];
    v21 = [v8 geometry];
    [v21 setRoundRectCorners:v20];

    v22 = [v8 geometry];
    [v22 setRoundRectRadius:10.0];
  }

  v23 = [v8 geometry];
  [(UIKBRenderFactory10Key *)self topEdgeAdjustmentInsets];
  [v23 adjustToTopWithInsets:?];

  v363 = v7;
  if ([(UIKBRenderFactory10Key *)self useRoundCorner]&& [(UIKBRenderFactory10Key *)self roundCornersForKey:v6 onKeyplane:v7]== -1)
  {
    v360 = 0;
  }

  else
  {
    v24 = [v8 geometry];
    v360 = [(UIKBRenderFactory10Key *)self edgesAdjustedForTranslucentGapsForGeometry:v24 key:v6 onKeyplane:v7];
  }

  v25 = [v6 displayType];
  v26 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  v27 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  v28 = [(UIKBRenderFactory *)self renderingContext];
  v29 = [v28 isColorAdaptiveNonLinearCarplayKeyboard];
  v30 = 22.0;
  if (v29)
  {
    v30 = 14.0;
  }

  v31 = [UIKBTextStyle styleWithFontName:v26 withFallbackFontName:v27 withFontSize:v30];
  [v8 setSymbolStyle:v31];

  v32 = [v8 symbolStyle];
  [v32 setKerning:2.0];

  v33 = [v8 symbolStyle];
  [v33 setMinFontSize:9.0];

  v34 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  v35 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  v36 = [(UIKBRenderFactory *)self renderingContext];
  v37 = [v36 isColorAdaptiveNonLinearCarplayKeyboard];
  v38 = 12.0;
  if (v37)
  {
    v38 = 8.0;
  }

  v39 = [UIKBTextStyle styleWithFontName:v34 withFallbackFontName:v35 withFontSize:v38];

  [v39 setKerning:2.0];
  v40 = [(UIKBRenderFactory *)self renderingContext];
  if ([v40 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v41 = 8.0;
  }

  else
  {
    v41 = 9.0;
  }

  [v39 setMinFontSize:v41];

  v370[0] = v39;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v370 count:1];
  [v8 setSecondarySymbolStyles:v42];

  if (v25 != 34)
  {
    if (v25 == 31)
    {
      v53 = [v6 name];
      v54 = [v53 containsString:@"Facemark"];

      if ((v54 & 1) == 0)
      {
        v55 = [v8 symbolStyle];
        [v55 setFontName:@".PhoneKeyCaps"];

        v56 = [v8 symbolStyle];
        [v56 setKeycapsFallback:@".PhoneKeyCaps"];

        [v39 setFontName:@".PhoneKeyCaps"];
        [v39 setKeycapsFallback:@".PhoneKeyCaps"];
      }

      v43 = [(UIKBRenderFactory10Key *)self displayContentsForKey:v6];
      v57 = [v43 displayString];
      if (v57)
      {
        v58 = v57;
        v59 = [v43 secondaryDisplayStrings];
        v60 = [v59 count];

        if (v60)
        {
          v61 = [(UIKBRenderFactory *)self renderingContext];
          if ([v61 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v62 = 10.0;
          }

          else
          {
            v62 = 14.0;
          }

          v63 = [v8 symbolStyle];
          [v63 setFontSize:v62];

          v64 = [v8 symbolStyle];
          [v64 setTextOffset:{0.0, 6.0}];

          v65 = [v8 symbolStyle];
          [v65 setKerning:0.0];

          v66 = [(UIKBRenderFactory *)self renderingContext];
          v67 = [v66 isColorAdaptiveNonLinearCarplayKeyboard];
          v68 = 22.0;
          if (v67)
          {
            v68 = 10.0;
          }

          [v39 setFontSize:v68];

          [v39 setTextOffset:{7.0, 3.0}];
          [v39 setKerning:-6.0];
        }
      }

      goto LABEL_59;
    }

    if (v25 == 20)
    {
      v43 = [v6 displayString];
      if ([v43 length] >= 2)
      {
        v44 = [v43 rangeOfString:@"/"];
        if (v44 < [v43 length] - 1)
        {
          [(UIKBRenderFactory10Key *)self numberPadKeyPrimarySymbolSize];
          v46 = v45;
          v47 = [v8 symbolStyle];
          [v47 setFontSize:v46];

          [(UIKBRenderFactory10Key *)self numberPadKeyPrimaryTextOffset];
          v49 = v48;
          v51 = v50;
          v52 = [v8 symbolStyle];
          [v52 setTextOffset:{v49, v51}];

          if ([v43 rangeOfString:@"|"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(UIKBRenderFactory10Key *)self numberPadKeySecondaryTextOffset];
          }

          else
          {
            [(UIKBRenderFactory10Key *)self numberPadVBarSecondaryTextOffset];
          }

          [v39 setTextOffset:?];
        }
      }

      goto LABEL_59;
    }

    if (v25 == 25 || [v6 interactionType] == 24)
    {
      v78 = [(UIKBRenderFactory *)self renderConfig];
      v79 = [v78 usesCompactKeycapsFont];
      v80 = v79;
      if (v79)
      {
        v81 = @"UIKBRenderFactoryWordsSystemCompactFontName";
      }

      else
      {
        v81 = [(UIKBRenderFactory10Key *)self lightTextFontName];
      }

      v82 = [v8 symbolStyle];
      [v82 setFontName:v81];

      if ((v80 & 1) == 0)
      {
      }

      v83 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      v84 = [v8 symbolStyle];
      [v84 setKeycapsFallback:v83];

      v85 = [(UIKBRenderFactory *)self renderingContext];
      if ([v85 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        v86 = 14.0;
      }

      else
      {
        v86 = 16.0;
      }

      v87 = [v8 symbolStyle];
      [v87 setFontSize:v86];

      if (v25 == 25)
      {
        v88 = v6;
        v89 = [v7 visualStyling] & 0xFF0000;
        v90 = [v8 symbolStyle];
        v91 = v90;
        if (v89 == 2228224)
        {
          [v90 setKerning:0.0];
        }

        else
        {
          [v90 setTextOffset:{1.0, 0.0}];
        }

        v6 = v88;
      }

      goto LABEL_60;
    }

    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v100 = [v8 symbolStyle];
        [v100 setFontSize:37.0];
LABEL_211:

        v274 = [v8 symbolStyle];
        [v274 setUsesSymbolImage:1];
LABEL_212:

        goto LABEL_60;
      }

      if (v25 == 21)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v25 == 3)
      {
        v258 = [(UIKBRenderFactory *)self renderingContext];
        if ([v258 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v259 = 10.0;
        }

        else
        {
          v259 = 15.0;
        }

        v260 = [v8 symbolStyle];
        [v260 setFontSize:v259];

        [(UIKBRenderFactory *)self scale];
        if (v261 == 2.0)
        {
          v262 = 0.0;
        }

        else
        {
          v262 = *MEMORY[0x1E695EFF8];
        }

        if (v261 == 2.0)
        {
          v263 = -0.5;
        }

        else
        {
          v263 = *(MEMORY[0x1E695EFF8] + 8);
        }

        v264 = [v8 symbolStyle];
        [v264 setTextOffset:{v262, v263}];

        v100 = [v8 symbolStyle];
        [v100 setKerning:0.0];
        goto LABEL_211;
      }

      if (v25 == 4)
      {
        v92 = [(UIKBRenderFactory *)self renderingContext];
        if ([v92 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v93 = 14.0;
        }

        else
        {
          v93 = 19.0;
        }

        v94 = [v8 symbolStyle];
        [v94 setFontSize:v93];

        [(UIKBRenderFactory10Key *)self dictationKeyTextOffset];
LABEL_54:
        v97 = v95;
        v98 = v96;
        v99 = [v8 symbolStyle];
        v100 = v99;
        v101 = v97;
        v102 = v98;
LABEL_210:
        [v99 setTextOffset:{v101, v102}];
        goto LABEL_211;
      }
    }

    v213 = [v6 name];
    v214 = [v213 containsString:@"Syllable-Separator"];

    if (v214)
    {
LABEL_144:
      v215 = [v6 displayString];
      v216 = [v215 containsString:@"Emoji"];

      if (v216)
      {
        v217 = [v8 symbolStyle];
        [v217 setUsesSymbolImage:1];

        v218 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
        v219 = [v8 symbolStyle];
        [v219 setFontName:v218];

        v220 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
        v221 = [v8 symbolStyle];
        [v221 setKeycapsFallback:v220];

        [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
        v223 = v222;
        v224 = [v8 symbolStyle];
        [v224 setFontSize:v223];

        v225 = *off_1E70ECD18;
        v226 = [v8 symbolStyle];
        [v226 setFontWeight:v225];

        [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
        v228 = v227;
        v230 = v229;
      }

      else
      {
        v265 = [(UIKBRenderFactory *)self renderConfig];
        v266 = [v265 usesCompactKeycapsFont];
        v267 = v266;
        if (v266)
        {
          v268 = @"UIKBRenderFactoryWordsSystemCompactFontName";
        }

        else
        {
          v268 = [(UIKBRenderFactory10Key *)self lightTextFontName];
        }

        v284 = [v8 symbolStyle];
        [v284 setFontName:v268];

        if ((v267 & 1) == 0)
        {
        }

        v285 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
        v286 = [v8 symbolStyle];
        [v286 setKeycapsFallback:v285];

        v287 = [(UIKBRenderFactory *)self renderingContext];
        if ([v287 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v288 = 14.0;
        }

        else
        {
          v288 = 16.0;
        }

        v289 = [v8 symbolStyle];
        [v289 setFontSize:v288];

        [(UIKBRenderFactory *)self scale];
        v230 = 0.0;
        if (v290 == 2.0)
        {
          v228 = 0.0;
        }

        else
        {
          v228 = 0.5;
        }
      }

      v99 = [v8 symbolStyle];
      v100 = v99;
      v101 = v228;
      v102 = v230;
      goto LABEL_210;
    }

    if (v25 == 13)
    {
      v294 = [(UIKBRenderFactory *)self renderingContext];
      if ([v294 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        v295 = 20.0;
      }

      else
      {
        v295 = 28.0;
      }

      v296 = [v8 symbolStyle];
      [v296 setFontSize:v295];

      [(UIKBRenderFactory10Key *)self globeKeyTextOffset];
      goto LABEL_54;
    }

    if (v25 != 35)
    {
      if (v25 == 23)
      {
        v269 = [(UIKBRenderFactory *)self renderingContext];
        if ([v269 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v270 = 14.0;
        }

        else
        {
          v270 = 18.0;
        }

        v271 = [v8 symbolStyle];
        [v271 setFontSize:v270];

        v272 = [v8 symbolStyle];
        [v272 setTextOffset:{0.0, -1.0}];

        v273 = [v8 symbolStyle];
        [v273 setUsesSymbolImage:1];

        if ([v6 state] != 8)
        {
          goto LABEL_60;
        }

        v274 = [v8 geometry];
        [v274 displayFrame];
        v276 = v275;
        v278 = v277 + 0.0;
        v280 = v279 + -0.5;
        v282 = v281 + 0.5;
        v283 = [v8 geometry];
        [v283 setDisplayFrame:{v278, v280, v276, v282}];
        goto LABEL_240;
      }

      v297 = [v6 name];
      v298 = [v297 hasPrefix:@"Wubihua"];

      if (v298)
      {
        v274 = [(UIKBRenderFactory *)self renderingContext];
        v299 = [v274 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
        v300 = 26.0;
LABEL_224:
        v301 = 20.0;
LABEL_236:
        if (v299)
        {
          v316 = v300;
        }

        else
        {
          v316 = v301;
        }

        v283 = [v8 symbolStyle];
        [v283 setFontSize:v316];
        goto LABEL_240;
      }

      v314 = [v6 name];
      v315 = [v314 hasSuffix:@"Chinese-Facemark"];

      if (v315)
      {
        v274 = [(UIKBRenderFactory *)self renderingContext];
        v299 = [v274 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
        v300 = 22.0;
        v301 = 14.0;
        goto LABEL_236;
      }

      v320 = [v6 name];
      v321 = [v320 hasSuffix:@"Comma-Full-Stop-Question-Mark-Exclamation-Mark"];

      if (v321)
      {
        v322 = [(UIKBRenderFactory *)self renderingContext];
        if ([v322 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v323 = 14.0;
        }

        else
        {
          v323 = 22.0;
        }

        v324 = [v8 symbolStyle];
        [v324 setFontSize:v323];

        v325 = [v8 symbolStyle];
        v274 = v325;
        v326 = 1.0;
LABEL_255:
        [v325 setKerning:v326];
        goto LABEL_212;
      }

      v327 = [v6 name];
      v328 = [v327 hasSuffix:@"Chinese-Full-Width-Half-Width-Swap"];

      if (v328)
      {
        v329 = [(UIKBRenderFactory *)self renderingContext];
        if ([v329 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v330 = 14.0;
        }

        else
        {
          v330 = 16.0;
        }

        v331 = [v8 symbolStyle];
        [v331 setFontSize:v330];

        v325 = [v8 symbolStyle];
        v274 = v325;
        v326 = -1.0;
        goto LABEL_255;
      }

      if (v25 <= 0x21)
      {
        if (((1 << v25) & 0x44C04) != 0)
        {
          v332 = [v8 symbolStyle];
          [v332 setKerning:0.0];

          v333 = [(UIKBRenderFactory *)self renderingContext];
          if ([v333 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v334 = 14.0;
          }

          else
          {
            v334 = 16.0;
          }

          v335 = [v8 symbolStyle];
          [v335 setFontSize:v334];

          v336 = [v8 symbolStyle];
          [v336 setUsesSymbolImage:1];

          v337 = [v6 displayString];
          LODWORD(v335) = [v337 hasSuffix:@"ABC"];

          if (v335)
          {
            [(UIKBRenderFactory10Key *)self abcKeyTextOffset];
            v339 = v338;
            v341 = v340;
            v342 = [v8 symbolStyle];
            [v342 setTextOffset:{v339, v341}];
          }

          v43 = [v6 name];
          if ([v43 hasSuffix:@"Symbol-Alternative-To-Symbol-Alternative-Width-Toggle-Keyplane-Switch-Key"])
          {
            goto LABEL_59;
          }

          v343 = [v6 name];
          if ([v343 hasSuffix:@"Symbol-Alternative-Width-Toggle-To-Symbol-Alternative-Keyplane-Switch-Key"])
          {
            goto LABEL_267;
          }

          v344 = [v6 name];
          if ([v344 hasSuffix:@"Symbol-To-Symbol-Width-Toggle-Keyplane-Switch-Key"])
          {

LABEL_267:
            goto LABEL_59;
          }

          v354 = [v6 name];
          v355 = [v354 hasSuffix:@"Symbol-Width-Toggle-To-Symbol-Keyplane-Switch-Key"];

          if (v355)
          {
            goto LABEL_60;
          }

          v356 = [(UIKBRenderFactory10Key *)self lightTextFontName];
          v357 = [v8 symbolStyle];
          [v357 setFontName:v356];

          v353 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
LABEL_285:
          v274 = v353;
          v283 = [v8 symbolStyle];
          [v283 setKeycapsFallback:v274];
LABEL_240:

          goto LABEL_212;
        }

        if (v25 == 32)
        {
          v274 = [(UIKBRenderFactory *)self renderingContext];
          v299 = [v274 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
          v300 = 28.0;
          goto LABEL_224;
        }

        if (v25 == 33)
        {
          v345 = [(UIKBRenderFactory *)self renderingContext];
          if ([v345 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v346 = 20.0;
          }

          else
          {
            v346 = 28.0;
          }

          v347 = [v8 symbolStyle];
          [v347 setFontSize:v346];

          [(UIKBRenderFactory *)self scale];
          if (v348 == 2.0)
          {
            v349 = -0.5;
          }

          else
          {
            v349 = *MEMORY[0x1E695EFF8];
          }

          if (v348 == 2.0)
          {
            v350 = 0.0;
          }

          else
          {
            v350 = *(MEMORY[0x1E695EFF8] + 8);
          }

          v274 = [v8 symbolStyle];
          [v274 setTextOffset:{v349, v350}];
          goto LABEL_212;
        }
      }

      v351 = -[UIKBRenderFactory10Key _preferredScriptFontForRendering:](self, "_preferredScriptFontForRendering:", ([v7 visualStyling] >> 16));
      v352 = [v8 symbolStyle];
      [v352 setFontName:v351];

      v353 = -[UIKBRenderFactory10Key _preferredScriptFontForRendering:](self, "_preferredScriptFontForRendering:", ([v7 visualStyling] >> 16));
      goto LABEL_285;
    }

    [v6 frame];
    if (CGRectGetHeight(v375) > 45.0)
    {
      goto LABEL_214;
    }

    v302 = [v6 name];
    if ([v302 hasPrefix:@"TenKey-Chinese-Pinyin-"])
    {

LABEL_227:
      [(UIKBRenderFactory10Key *)self capitalAbcSymbolSize];
      v304 = v303;
      v291 = [v8 symbolStyle];
      [v291 setFontSize:v304];
      goto LABEL_228;
    }

    v317 = [v6 name];
    if ([v317 hasPrefix:@"TenKey-Latin-"])
    {
      v318 = [v6 name];
      v319 = [v318 hasPrefix:@"TenKey-Latin-Small-"];

      if ((v319 & 1) == 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
    }

LABEL_214:
    v291 = [(UIKBRenderFactory *)self renderingContext];
    if ([v291 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      v292 = 14.0;
    }

    else
    {
      v292 = 16.0;
    }

    v293 = [v8 symbolStyle];
    [v293 setFontSize:v292];

LABEL_228:
    v305 = [v6 name];
    if ([v305 hasPrefix:@"TenKey-Chinese-Pinyin-"])
    {
    }

    else
    {
      v306 = [v6 name];
      v307 = [v306 hasPrefix:@"TenKey-Latin-"];

      if (!v307)
      {
LABEL_232:
        v312 = [(UIKBRenderFactory *)self renderConfig];
        v313 = [v312 usesCompactKeycapsFont];

        if (!v313)
        {
          goto LABEL_60;
        }

        v43 = [v8 symbolStyle];
        [v43 setFontName:@"UIKBRenderFactoryWordsSystemCompactFontName"];
LABEL_59:

        goto LABEL_60;
      }
    }

    v308 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
    v309 = [v8 symbolStyle];
    [v309 setFontName:v308];

    v310 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    v311 = [v8 symbolStyle];
    [v311 setKeycapsFallback:v310];

    goto LABEL_232;
  }

  v69 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  v70 = [v8 symbolStyle];
  [v70 setFontName:v69];

  v71 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  v72 = [v8 symbolStyle];
  [v72 setKeycapsFallback:v71];

  v73 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  [v39 setFontName:v73];

  v74 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  [v39 setKeycapsFallback:v74];

  v75 = [(UIKBRenderFactory *)self renderingContext];
  v76 = [v75 isColorAdaptiveNonLinearCarplayKeyboard];
  v77 = 10.0;
  if (!v76)
  {
    v77 = 14.0;
  }

  [v39 setFontSize:v77];

  [(UIKBRenderFactory10Key *)self longVowelSignKeyTextOffset];
  [v39 setTextOffset:?];
LABEL_60:
  v103 = [v6 name];
  if ([v103 hasSuffix:@"At-Sign-Number-Sign-Solidus-Ampersand-Underline"])
  {
LABEL_63:

LABEL_64:
    [v8 setSecondarySymbolStyles:0];
    goto LABEL_65;
  }

  v104 = [v6 name];
  if ([v104 hasSuffix:@"Case-Swap"])
  {

    goto LABEL_63;
  }

  v125 = [v6 name];
  v126 = [v125 hasSuffix:@"Chinese-Digit-Symbols"];

  if (v126)
  {
    goto LABEL_64;
  }

LABEL_65:
  v105 = [v8 secondarySymbolStyles];
  v106 = [v105 firstObject];

  v107 = [v6 state] & 0xC;
  v108 = [(UIKBRenderFactory *)self renderConfig];
  if ([v108 whiteText])
  {
    v109 = @"UIKBColorWhite";
  }

  else
  {
    v109 = @"UIKBColorBlack";
  }

  v110 = [v8 symbolStyle];
  [v110 setTextColor:v109];

  v111 = [v8 symbolStyle];
  v112 = [v111 textColor];
  v362 = v106;
  [v106 setTextColor:v112];

  if (v107)
  {
    [(UIKBRenderFactory10Key *)self controlKeyBackgroundColorName];
  }

  else
  {
    [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  }

  v114 = v113 = v360;

  v361 = v114;
  v115 = [UIKBGradient gradientWithFlatColor:v114];
  [v8 setBackgroundGradient:v115];

  [v8 setControlOpacities:v107 != 0];
  if (+[UIKBRenderFactory _graphicsQuality]!= 10)
  {
    [v8 setBlurBlending:v107 != 0];
  }

  [(UIKBRenderFactory *)self translucentGapWidth];
  v117 = v116;
  v118 = [(UIKBRenderFactory10Key *)self defaultKeyDividerColorName];
  v119 = [(UIKBRenderFactory *)self renderConfig];
  v120 = [v119 lightKeyboard];

  if (v120)
  {
    if ([objc_opt_class() _isActiveKeyplaneSwitchKey:v6])
    {
      v121 = [(UIKBRenderFactory *)self renderConfig];
      v122 = [v121 activatedKeyplaneSwitchControlKeyBackgroundName];
      v123 = [UIKBGradient gradientWithFlatColor:v122];
      [v8 setBackgroundGradient:v123];

      v124 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];

      [(UIKBRenderFactory *)self suppressLayoutSegments];
      v118 = v124;
    }

    else if (v107)
    {
      v113 = 15;
    }
  }

  if ([objc_opt_class() _isActiveKeyplaneSwitchKey:v6])
  {
    [v8 setBlurBlending:0];
  }

  if ([v6 state] == 1)
  {
    v127 = [v8 symbolStyle];
    [v127 setTextOpacity:0.35];
  }

  if (v113 && ([v6 state] & 0x10) == 0)
  {
    v128 = 0.0;
    if (v113)
    {
      v129 = -v117;
    }

    else
    {
      v129 = 0.0;
    }

    if ((v113 & 4) != 0)
    {
      v130 = -v117;
    }

    else
    {
      v130 = 0.0;
    }

    if ((v113 & 8) != 0)
    {
      v131 = -v117;
    }

    else
    {
      v131 = 0.0;
    }

    if ((v113 & 2) != 0)
    {
      v132 = [v8 geometry];
      [v132 frame];
      v134 = v133;
      v135 = [v8 geometry];
      [v135 paddedFrame];
      v128 = v134 - v136;
    }

    v137 = [UIKBEdgeEffect effectWithColor:v118 edges:v113 insets:v129 weight:v128, v130, v131, v117];
    [v8 addRenderEffect:v137];
  }

  if (-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", v6) && [v6 state] == 2)
  {
    [(UIKBRenderFactory *)self suppressLayoutSegments];
    v138 = [UIKBGradient gradientWithFlatColor:@"UIKBColorKeyBlueKeyBackground"];
    [v8 setLayeredForegroundGradient:v138];

    v139 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
    v140 = [UIKBEdgeEffect effectWithColor:v139 edges:15 inset:-v117 weight:v117];
    [v8 addRenderEffect:v140];

    v141 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v139) = [v141 lightKeyboard];

    if (v139)
    {
      v142 = [v8 symbolStyle];
      [v142 setTextColor:@"UIKBColorWhite"];
LABEL_108:
    }
  }

  else if ([(UIKBRenderFactory *)self useBlueThemingForKey:v6])
  {
    if ([v6 state] == 1)
    {
      v143 = [(UIKBRenderFactory *)self renderConfig];
      v144 = [v143 colorAdaptiveBackground];

      if (v144)
      {
        v142 = [(UIKBRenderFactory *)self renderConfig];
        v145 = [v142 lightKeyboard];
        v146 = UIKBColorBlack_Alpha25;
        if (!v145)
        {
          v146 = UIKBColorWhite_Alpha40;
        }

        v147 = [UIKBGradient gradientWithFlatColor:*v146];
        [v8 setLayeredForegroundGradient:v147];

        goto LABEL_108;
      }
    }
  }

  v359 = v118;
  if (v25 <= 0xD && ((1 << v25) & 0x2030) != 0)
  {
    [v6 state];
    v148 = 1;
    goto LABEL_112;
  }

  if ([v6 state] == 16)
  {
    v183 = [v8 symbolStyle];
    v184 = [v183 copy];
    v151 = [UIKBRenderTraits traitsWithSymbolStyle:v184];

    v185 = [v8 symbolStyle];
    v186 = [v185 textColor];
    v187 = [v151 symbolStyle];
    [v187 setTextColor:v186];

    v188 = [v151 symbolStyle];
    [v188 setFontSize:26.0];

    v189 = *MEMORY[0x1E695EFF8];
    v190 = *(MEMORY[0x1E695EFF8] + 8);
    v191 = [v151 symbolStyle];
    [v191 setTextOffset:{v189, v190}];

    [v8 setVariantTraits:v151];
    v192 = [v151 symbolStyle];
    v193 = [v192 copy];
    v166 = [UIKBRenderTraits traitsWithSymbolStyle:v193];

    v194 = [UIKBGradient gradientWithFlatColor:@"UIKBColorKeyBlueKeyBackground"];
    [v166 setLayeredForegroundGradient:v194];

    v195 = [v166 symbolStyle];
    [v195 setTextColor:@"UIKBColorWhite"];

    [v8 setHighlightedVariantTraits:v166];
    v196 = [v8 geometry];
    [v196 setRoundRectCorners:0];

    v197 = [v8 geometry];
    [(UIKBRenderFactory *)self scale];
    [UIKBRenderFactory10Key populateFlickGuide:v8 forKey:v6 from:v197 scale:?];

    v198 = [v6 flickDirection];
    v199 = [v8 geometry];
    [v199 setFlickDirection:v198];

    v200 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v199) = [v200 colorAdaptiveBackground];

    if ((v199 & 1) == 0)
    {
      v201 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha40" offset:0.0 insets:4.0 weight:1.0, 1.0, 1.0, 1.0, 15.0];
      [v8 addRenderEffect:v201];
    }

    v202 = [(UIKBRenderFactory *)self renderConfig];
    v203 = [v202 lightKeyboard];

    if (v203)
    {
      if ([v6 dynamicLayout])
      {
        v204 = @"UIKBColorWhite";
      }

      else
      {
        v204 = @"UIKBColorLightBackdropTint";
      }

      v205 = [UIKBGradient gradientWithFlatColor:v204];
      [v8 setLayeredBackgroundGradient:v205];
    }

    v206 = [(UIKBRenderFactory *)self renderConfig];
    v207 = [v206 colorAdaptiveBackground];

    if ((v207 & 1) == 0)
    {
      v206 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha20" edges:15 inset:0.0 weight:v117];
      [v8 addRenderEffect:v206];
    }

    [v8 setBlurBlending:1];
    v208 = [(UIKBRenderFactory *)self renderConfig];
    v209 = [v208 animatedBackground];
    if (v209 & 1) != 0 || (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v206 = objc_claimAutoreleasedReturnValue(), ([v206 colorAdaptiveBackground]))
    {
      [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
      if (v209)
      {
        goto LABEL_148;
      }
    }

    else
    {
      [v8 setBlendForm:0];
    }

LABEL_148:
    v148 = 0;
    goto LABEL_149;
  }

  v148 = 0;
LABEL_112:
  if ([v6 state] == 20)
  {
    v149 = [v8 symbolStyle];
    v150 = [v149 copy];
    v151 = [UIKBRenderTraits traitsWithSymbolStyle:v150];

    v152 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v153 = [UIKBGradient gradientWithFlatColor:v152];
    [v151 setBackgroundGradient:v153];

    v154 = [v151 symbolStyle];
    [v154 setFontSize:30.0];

    v155 = *MEMORY[0x1E695EFF8];
    v156 = *(MEMORY[0x1E695EFF8] + 8);
    v157 = [v151 symbolStyle];
    [v157 setTextOffset:{v155, v156}];

    v158 = [v8 symbolStyle];
    v159 = [v158 textColor];
    v160 = [v151 symbolStyle];
    [v160 setTextColor:v159];

    v161 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v159) = [v161 colorAdaptiveBackground];

    if ((v159 & 1) == 0)
    {
      v162 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha40" offset:0.0 insets:4.0 weight:1.0, 1.0, 1.0, 1.0, 15.0];
      [v151 addRenderEffect:v162];

      v163 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha15" edges:15 inset:-v117 weight:v117];
      [v151 addRenderEffect:v163];
    }

    v164 = [v8 geometry];
    v165 = [v6 flickDirection];
    [(UIKBRenderFactory *)self scale];
    v166 = [v164 copyForFlickDirection:v165 scale:?];

    v167 = [v8 geometry];
    [v167 paddedFrame];
    MidX = CGRectGetMidX(v371);
    v169 = [v8 geometry];
    [v169 paddedFrame];
    [v166 setPopupSource:{MidX, CGRectGetMidY(v372)}];

    [v166 displayFrame];
    v374 = CGRectInset(v373, -20.0, -20.0);
    [v166 setDisplayFrame:{v374.origin.x, v374.origin.y, v374.size.width, v374.size.height}];
    [v166 setFlickDirection:{objc_msgSend(v6, "flickDirection")}];
    [v166 setRoundRectCorners:-1];
    [v151 setGeometry:v166];
    [v8 setVariantTraits:v151];
    [v166 displayFrame];
    v171 = v170;
    v173 = v172;
    v175 = v174;
    v177 = v176;
    v178 = [v8 geometry];
    [v178 setDisplayFrame:{v171, v173, v175, v177}];

    v179 = [v6 flickDirection];
    v180 = [v8 geometry];
    [v180 setFlickDirection:v179];

    [v151 setBlurBlending:1];
    v181 = [(UIKBRenderFactory *)self renderConfig];
    v182 = [v181 animatedBackground];
    if (v182 & 1) != 0 || (-[UIKBRenderFactory renderConfig](self, "renderConfig"), v180 = objc_claimAutoreleasedReturnValue(), ([v180 colorAdaptiveBackground]))
    {
      [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
      if (v182)
      {
        goto LABEL_136;
      }
    }

    else
    {
      [v8 setBlendForm:0];
    }

LABEL_136:
    v210 = [(UIKBRenderFactory *)self renderConfig];
    v211 = [v210 lightKeyboard];

    if (!v211)
    {
LABEL_150:
      [(UIKBRenderFactory *)self suppressLayoutSegments];

      goto LABEL_151;
    }

    if ([v6 dynamicLayout])
    {
      v212 = @"UIKBColorWhite";
    }

    else
    {
      v212 = @"UIKBColorLightBackdropTint";
    }

    v208 = [UIKBGradient gradientWithFlatColor:v212];
    [v8 setLayeredBackgroundGradient:v208];
LABEL_149:

    goto LABEL_150;
  }

LABEL_151:
  v231 = [v6 state];
  if (v148 && (v231 & 0x10) != 0)
  {
    v232 = [(UIKBRenderFactory *)self renderingContext];
    v233 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
    v234 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactory *)self _customizeTraits:v8 forPopupForKey:v6 withRenderingContext:v232 keycapsFontName:v233 fallbackFontName:v234];

    [(UIKBRenderFactory *)self suppressLayoutSegments];
  }

  v235 = v363;
  if (([objc_opt_class() _isActiveKeyplaneSwitchKey:v6] & 1) == 0)
  {
    v366 = 0u;
    v367 = 0u;
    v364 = 0u;
    v365 = 0u;
    v236 = [v363 subtrees];
    v237 = [v236 countByEnumeratingWithState:&v364 objects:v369 count:16];
    if (v237)
    {
      v238 = v237;
      v358 = v6;
      v239 = *v365;
LABEL_157:
      v240 = 0;
      while (1)
      {
        if (*v365 != v239)
        {
          objc_enumerationMutation(v236);
        }

        v241 = *(*(&v364 + 1) + 8 * v240);
        v242 = [v241 name];
        v243 = [v242 _containsSubstring:@"Assist"];

        if (v243)
        {
          break;
        }

        if (v238 == ++v240)
        {
          v238 = [v236 countByEnumeratingWithState:&v364 objects:v369 count:16];
          if (v238)
          {
            goto LABEL_157;
          }

          v244 = 0;
          v6 = v358;
          v235 = v363;
          goto LABEL_174;
        }
      }

      v244 = v241;

      if (!v244)
      {
        v6 = v358;
        v235 = v363;
        goto LABEL_175;
      }

      v245 = [v244 keys];
      v6 = v358;
      v246 = [v245 containsObject:v358];

      v235 = v363;
      if (!v246)
      {
        goto LABEL_175;
      }

      if (([v358 state] & 3) != 0)
      {
        v247 = [(UIKBRenderFactory10Key *)self controlKeyTraits];
      }

      else
      {
        if (([v358 state] & 4) == 0)
        {
LABEL_173:
          v236 = [v8 symbolStyle];
          [v236 setUsesSymbolImage:1];
          goto LABEL_174;
        }

        v247 = [(UIKBRenderFactory10Key *)self activeControlKeyTraits];
      }

      v248 = v247;
      [v8 overlayWithTraits:v247];

      goto LABEL_173;
    }

    v244 = 0;
LABEL_174:

LABEL_175:
  }

  v249 = [v8 symbolStyle];
  v250 = [v249 usesSymbolImage];

  if (v250)
  {
    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v252 = v251;
    v253 = [v8 symbolStyle];
    [v253 setFontSizeForSymbolImage:v252];

    v254 = *off_1E70ECD18;
    v255 = [v8 symbolStyle];
    [v255 setFontWeightForSymbolImage:v254];
  }

  v256 = v8;

  return v8;
}

- (id)controlKeyTraits
{
  [(UIKBRenderFactory *)self translucentGapWidth];
  v4 = v3;
  v5 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v5 setControlOpacities:1];
  v6 = [(UIKBRenderFactory10Key *)self controlKeyBackgroundColorName];
  v7 = [UIKBGradient gradientWithFlatColor:v6];
  [v5 setBackgroundGradient:v7];

  v8 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
  v9 = [UIKBEdgeEffect effectWithColor:v8 edges:15 inset:-v4 weight:v4];
  [v5 addRenderEffect:v9];

  return v5;
}

- (id)activeControlKeyTraits
{
  [(UIKBRenderFactory *)self translucentGapWidth];
  v4 = v3;
  v5 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v5 setControlOpacities:0];
  v6 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v7 = [UIKBGradient gradientWithFlatColor:v6];
  [v5 setBackgroundGradient:v7];

  v8 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
  v9 = [UIKBEdgeEffect effectWithColor:v8 edges:15 inset:-v4 weight:v4];
  [v5 addRenderEffect:v9];

  return v5;
}

- (id)shiftedControlKeyTraits
{
  v3 = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  if ([v4 lightKeyboard])
  {
    v5 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    v5 = @"UIKBColorWhite";
  }

  v6 = v5;

  v7 = [UIKBTextStyle styleWithTextColor:v6];
  [v3 setSymbolStyle:v7];

  v8 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v9 = [UIKBGradient gradientWithFlatColor:v8];
  [v3 setBackgroundGradient:v9];

  return v3;
}

- (id)shiftedWhiteControlKeyTraits
{
  v3 = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  v4 = [(UIKBRenderFactory *)self renderConfig];
  if ([v4 lightKeyboard])
  {
    v5 = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    v5 = @"UIKBColorWhite";
  }

  v6 = v5;

  v7 = [UIKBTextStyle styleWithTextColor:v6];
  [v3 setSymbolStyle:v7];

  v8 = [(UIKBRenderFactory *)self renderConfig];
  v9 = [v8 lightKeyboard];
  v10 = UIKBColor10KeyWhiteShiftedBackground;
  if (!v9)
  {
    v10 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v11 = *v10;

  v12 = [UIKBGradient gradientWithFlatColor:v11];

  [v3 setBackgroundGradient:v12];

  return v3;
}

- (void)setupColumnLayoutSegmentsWithControlWidth:(double)a3
{
  v5 = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v5];

  [v12 setKeyStates:3];
  [v12 addLayoutRect:0 asTriangle:{0.0, 0.0, a3, 1.0}];
  [v12 addLayoutRect:0 asTriangle:{1.0 - a3, 0.0, a3, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  v6 = [(UIKBRenderFactory10Key *)self activeControlKeyTraits];
  v7 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v6];

  [v7 setKeyStates:4];
  [v7 addLayoutRect:0 asTriangle:{0.0, 0.0, a3, 1.0}];
  [v7 addLayoutRect:0 asTriangle:{1.0 - a3, 0.0, a3, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v7];
  v8 = [(UIKBRenderFactory10Key *)self shiftedControlKeyTraits];
  v9 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v8];

  [v9 setKeyStates:108];
  [v9 setRequireAllMatches:1];
  [v9 addLayoutRect:0 asTriangle:{0.0, 0.0, a3, 1.0}];
  [v9 addLayoutRect:0 asTriangle:{1.0 - a3, 0.0, a3, 1.0}];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v9];
  v10 = [(UIKBRenderFactory10Key *)self shiftedWhiteControlKeyTraits];
  v11 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v10];

  [v11 setKeyStates:108];
  [v11 setRequireAllMatches:1];
  [v11 addLayoutRect:0 asTriangle:{a3, 0.0, 1.0 - a3 - a3, 1.0}];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v11];
}

+ (BOOL)_isActiveKeyplaneSwitchKey:(id)a3
{
  v3 = a3;
  if (([v3 state] & 0xC) != 0)
  {
    v4 = [v3 displayType];
    v6 = v4 == 14 || v4 == 11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)populateFlickGuide:(id)a3 forKey:(id)a4 from:(id)a5 scale:(double)a6
{
  v36 = a3;
  v9 = a4;
  v10 = a5;
  [v10 displayFrame];
  x = v11;
  y = v13;
  width = v15;
  height = v17;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v20 = [v10 copy];
  [v20 makeIntegralWithScale:a6];
  [v19 addObject:v20];
  v21 = 0;
  do
  {
    v22 = [v9 subtrees];
    v23 = v21 + 1;
    v24 = [v22 objectAtIndex:v21 + 1];

    v25 = [MEMORY[0x1E695DFB0] null];

    if (v24 == v25)
    {
      v26 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v26 = [v20 copyForPopupDirection:v21 scale:a6];
      [v26 displayFrame];
      v42.origin.x = v27;
      v42.origin.y = v28;
      v42.size.width = v29;
      v42.size.height = v30;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectUnion(v38, v42);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }

    [v19 addObject:v26];

    v21 = v23;
  }

  while (v23 != 4);
  [v36 setVariantGeometries:v19];
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v41 = CGRectInset(v40, -20.0, -20.0);
  v31 = v41.origin.x;
  v32 = v41.origin.y;
  v33 = v41.size.width;
  v34 = v41.size.height;
  v35 = [v36 geometry];
  [v35 setDisplayFrame:{v31, v32, v33, v34}];
}

@end