@interface UIKBRenderFactory10Key
+ (BOOL)_isActiveKeyplaneSwitchKey:(id)key;
+ (void)populateFlickGuide:(id)guide forKey:(id)key from:(id)from scale:(double)scale;
- (BOOL)shouldOverlayTraitsForKey:(id)key onKeyplane:(id)keyplane;
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
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)activeControlKeyTraits;
- (id)controlKeyBackgroundColorName;
- (id)controlKeyDividerColorName;
- (id)controlKeyTraits;
- (id)defaultKeyDividerColorName;
- (id)displayContentsForKey:(id)key;
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
- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane;
- (void)modifyTraitsForDetachedInputSwitcher:(id)switcher withKey:(id)key;
- (void)setupColumnLayoutSegmentsWithControlWidth:(double)width;
@end

@implementation UIKBRenderFactory10Key

- (id)defaultKeyDividerColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    _controlKeyBackgroundColorName = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
  }

  else
  {
    _controlKeyBackgroundColorName = @"UIKBColorClear";
  }

  v5 = _controlKeyBackgroundColorName;

  return v5;
}

- (id)controlKeyBackgroundColorName
{
  v3 = +[UIKBRenderFactory _graphicsQuality];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  if (v3 == 10)
  {
    v6 = UIKBColorLightLowQualityBackdropTint;
    if (!lightKeyboard)
    {
      v6 = UIKBColorGray_Percent20;
    }

    goto LABEL_7;
  }

  if (lightKeyboard)
  {
    v6 = UIKBColorClear;
LABEL_7:
    _controlKeyBackgroundColorName = *v6;
    goto LABEL_9;
  }

  _controlKeyBackgroundColorName = [(UIKBRenderFactory *)self _controlKeyBackgroundColorName];
LABEL_9:
  v8 = _controlKeyBackgroundColorName;

  return v8;
}

- (id)controlKeyDividerColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColor10KeyLightControlKeySeparator;
  if (!lightKeyboard)
  {
    v4 = UIKBColorClear;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)displayContentsForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = UIKBRenderFactory10Key;
  v5 = [(UIKBRenderFactory *)&v25 displayContentsForKey:keyCopy];
  if (([keyCopy state] & 0x10) != 0)
  {
    v20 = v5;
    v6 = MEMORY[0x1E695DF70];
    subtrees = [keyCopy subtrees];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(subtrees, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subtrees2 = [keyCopy subtrees];
    v10 = [subtrees2 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(subtrees2);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];

          if (v14 == null)
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

        v11 = [subtrees2 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v5 = v20;
    [v20 setVariantDisplayContents:v8];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(keyCopy, "flickDirection") + 1}];
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

- (unint64_t)edgesAdjustedForTranslucentGapsForGeometry:(id)geometry key:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  geometryCopy = geometry;
  [keyplaneCopy frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [keyplaneCopy primaryKeylayoutWidthRatio];
  if (v19 > 0.0)
  {
    [keyplaneCopy primaryKeylayoutOffset];
    v21 = v20;
    if (v20 <= 0.0)
    {
      [keyplaneCopy primaryKeylayoutWidthRatio];
      v23 = v16 * v22;
      v20 = 0.0;
      v21 = v23 + 0.0;
    }

    v16 = v16 - v21;
    v14 = v14 + 0.0;
    v12 = v12 + v20;
  }

  [keyCopy frame];
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v25 = MaxY < CGRectGetMaxY(v35) || [(UIKBRenderFactory10Key *)self shouldShowBottomRowEdge];
  if ([(UIKBRenderFactory10Key *)self shouldShowTopRowEdge])
  {
    v26 = [keyCopy displayRowHint] == 1;
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
  v32 = [geometryCopy adjustForTranslucentGapsInFrameWithSize_10Key:v25 centerX:v26 bottomEdge:v30 topEdge:{v31, v28}];

  return v32;
}

- (BOOL)shouldOverlayTraitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  name = [keyplaneCopy name];
  v9 = [name containsString:@"Korean10Key"];

  if (![keyCopy dynamicLayout] || (objc_msgSend(keyCopy, "displayType") != 32) | v9 & 1 && (objc_msgSend(keyCopy, "interactionType") != 14) | v9 & 1 && ((objc_msgSend(keyCopy, "interactionType") == 15) & v9) == 0)
  {
    v12.receiver = self;
    v12.super_class = UIKBRenderFactory10Key;
    v10 = [(UIKBRenderFactory *)&v12 shouldOverlayTraitsForKey:keyCopy onKeyplane:keyplaneCopy];
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
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
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)thinKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".Keycaps-Popups";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightPadKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsPad-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = UIKBRenderFactorySystemBoldCompactFontName;
  if (!boldTextEnabled)
  {
    v7 = UIKBRenderFactorySystemCompactFontName;
  }

  v8 = *v7;
  if (usesCompactKeycapsFont)
  {
    v6 = v8;
  }

  v9 = v6;

  return v9;
}

- (id)lightTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    v5 = @"UIKBRenderFactorySystemCompactFontName";
  }

  else
  {
    boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
    v5 = @".Keycaps-Keys";
    if (boldTextEnabled)
    {
      v5 = @".PhoneKeyCaps";
    }
  }

  v7 = v5;

  return v7;
}

- (id)thinTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
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

- (void)modifyTraitsForDetachedInputSwitcher:(id)switcher withKey:(id)key
{
  v61[1] = *MEMORY[0x1E69E9840];
  switcherCopy = switcher;
  keyCopy = key;
  geometry = [switcherCopy geometry];
  [geometry setDetachedVariants:1];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    useRoundCorner = [(UIKBRenderFactory10Key *)self useRoundCorner];
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];

    if (useRoundCorner)
    {
      if ((colorAdaptiveBackground & 1) == 0)
      {
        v14 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:1.0, 1.0, 0.0, 1.0, 4.5];
LABEL_7:
        v15 = v14;
        [switcherCopy addRenderEffect:v14];
      }
    }

    else if ((colorAdaptiveBackground & 1) == 0)
    {
      [switcherCopy setBlendForm:0];
      v14 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
      goto LABEL_7;
    }
  }

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig3 colorAdaptiveBackground] && objc_msgSend(keyCopy, "displayType") != 13 && objc_msgSend(keyCopy, "displayType") != 5)
  {
    displayType = [keyCopy displayType];

    if (displayType == 4)
    {
      goto LABEL_12;
    }

    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig3 lightKeyboard])
    {
      renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
      [switcherCopy setBlurBlending:{objc_msgSend(renderConfig4, "animatedBackground")}];
    }

    else
    {
      [switcherCopy setBlurBlending:1];
    }
  }

LABEL_12:
  if ([keyCopy displayType] == 13 || objc_msgSend(keyCopy, "displayType") == 4)
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext inputSwitcherView];
  }

  else
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    inputSwitcherView = [renderingContext splitControlView];
  }

  v19 = inputSwitcherView;

  [v19 popupRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  layoutView = [renderingContext2 layoutView];
  [layoutView convertRect:v19 fromView:{v21, v23, v25, v27}];
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

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig5 colorAdaptiveBackground] || objc_msgSend(keyCopy, "displayType") == 13 || objc_msgSend(keyCopy, "displayType") == 5)
  {
    goto LABEL_23;
  }

  displayType2 = [keyCopy displayType];

  if (displayType2 != 4)
  {
    geometry2 = [switcherCopy geometry];
    [geometry2 displayFrame];
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
    renderConfig5 = [switcherCopy geometry];
    [renderConfig5 setDisplayFrame:{v49, v50, v51, v52}];
LABEL_23:
  }

  height = [UIKBRenderGeometry geometryWithFrame:x paddedFrame:y, width, height, x, y, width, height];
  v61[0] = height;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  [switcherCopy setVariantGeometries:v54];

  geometry3 = [switcherCopy geometry];
  [geometry3 setPopupBias:40];

  [(UIKBRenderFactory10Key *)self keyCornerRadius];
  v57 = v56;
  geometry4 = [switcherCopy geometry];
  [geometry4 setRoundRectRadius:v57];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v370[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v368.receiver = self;
  v368.super_class = UIKBRenderFactory10Key;
  v8 = [(UIKBRenderFactory *)&v368 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
  geometry = [v8 geometry];
  [geometry paddedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  geometry2 = [v8 geometry];
  [geometry2 setDisplayFrame:{v11, v13, v15, v17}];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [v8 setUsesDarkAppearance:{objc_msgSend(renderConfig, "lightKeyboard") ^ 1}];

  if ([keyCopy clipCorners])
  {
    clipCorners = [keyCopy clipCorners];
    geometry3 = [v8 geometry];
    [geometry3 setRoundRectCorners:clipCorners];

    geometry4 = [v8 geometry];
    [geometry4 setRoundRectRadius:10.0];
  }

  geometry5 = [v8 geometry];
  [(UIKBRenderFactory10Key *)self topEdgeAdjustmentInsets];
  [geometry5 adjustToTopWithInsets:?];

  v363 = keyplaneCopy;
  if ([(UIKBRenderFactory10Key *)self useRoundCorner]&& [(UIKBRenderFactory10Key *)self roundCornersForKey:keyCopy onKeyplane:keyplaneCopy]== -1)
  {
    v360 = 0;
  }

  else
  {
    geometry6 = [v8 geometry];
    v360 = [(UIKBRenderFactory10Key *)self edgesAdjustedForTranslucentGapsForGeometry:geometry6 key:keyCopy onKeyplane:keyplaneCopy];
  }

  displayType = [keyCopy displayType];
  lightKeycapsFontName = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  lightKeycapsFontFallbackName = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext isColorAdaptiveNonLinearCarplayKeyboard];
  v30 = 22.0;
  if (isColorAdaptiveNonLinearCarplayKeyboard)
  {
    v30 = 14.0;
  }

  v31 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFallbackFontName:lightKeycapsFontFallbackName withFontSize:v30];
  [v8 setSymbolStyle:v31];

  symbolStyle = [v8 symbolStyle];
  [symbolStyle setKerning:2.0];

  symbolStyle2 = [v8 symbolStyle];
  [symbolStyle2 setMinFontSize:9.0];

  lightKeycapsFontName2 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  lightKeycapsFontFallbackName2 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard2 = [renderingContext2 isColorAdaptiveNonLinearCarplayKeyboard];
  v38 = 12.0;
  if (isColorAdaptiveNonLinearCarplayKeyboard2)
  {
    v38 = 8.0;
  }

  v39 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName2 withFallbackFontName:lightKeycapsFontFallbackName2 withFontSize:v38];

  [v39 setKerning:2.0];
  renderingContext3 = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext3 isColorAdaptiveNonLinearCarplayKeyboard])
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

  if (displayType != 34)
  {
    if (displayType == 31)
    {
      name = [keyCopy name];
      v54 = [name containsString:@"Facemark"];

      if ((v54 & 1) == 0)
      {
        symbolStyle3 = [v8 symbolStyle];
        [symbolStyle3 setFontName:@".PhoneKeyCaps"];

        symbolStyle4 = [v8 symbolStyle];
        [symbolStyle4 setKeycapsFallback:@".PhoneKeyCaps"];

        [v39 setFontName:@".PhoneKeyCaps"];
        [v39 setKeycapsFallback:@".PhoneKeyCaps"];
      }

      displayString2 = [(UIKBRenderFactory10Key *)self displayContentsForKey:keyCopy];
      displayString = [displayString2 displayString];
      if (displayString)
      {
        v58 = displayString;
        secondaryDisplayStrings = [displayString2 secondaryDisplayStrings];
        v60 = [secondaryDisplayStrings count];

        if (v60)
        {
          renderingContext4 = [(UIKBRenderFactory *)self renderingContext];
          if ([renderingContext4 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v62 = 10.0;
          }

          else
          {
            v62 = 14.0;
          }

          symbolStyle5 = [v8 symbolStyle];
          [symbolStyle5 setFontSize:v62];

          symbolStyle6 = [v8 symbolStyle];
          [symbolStyle6 setTextOffset:{0.0, 6.0}];

          symbolStyle7 = [v8 symbolStyle];
          [symbolStyle7 setKerning:0.0];

          renderingContext5 = [(UIKBRenderFactory *)self renderingContext];
          isColorAdaptiveNonLinearCarplayKeyboard3 = [renderingContext5 isColorAdaptiveNonLinearCarplayKeyboard];
          v68 = 22.0;
          if (isColorAdaptiveNonLinearCarplayKeyboard3)
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

    if (displayType == 20)
    {
      displayString2 = [keyCopy displayString];
      if ([displayString2 length] >= 2)
      {
        v44 = [displayString2 rangeOfString:@"/"];
        if (v44 < [displayString2 length] - 1)
        {
          [(UIKBRenderFactory10Key *)self numberPadKeyPrimarySymbolSize];
          v46 = v45;
          symbolStyle8 = [v8 symbolStyle];
          [symbolStyle8 setFontSize:v46];

          [(UIKBRenderFactory10Key *)self numberPadKeyPrimaryTextOffset];
          v49 = v48;
          v51 = v50;
          symbolStyle9 = [v8 symbolStyle];
          [symbolStyle9 setTextOffset:{v49, v51}];

          if ([displayString2 rangeOfString:@"|"] == 0x7FFFFFFFFFFFFFFFLL)
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

    if (displayType == 25 || [keyCopy interactionType] == 24)
    {
      renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
      usesCompactKeycapsFont = [renderConfig2 usesCompactKeycapsFont];
      v80 = usesCompactKeycapsFont;
      if (usesCompactKeycapsFont)
      {
        lightTextFontName = @"UIKBRenderFactoryWordsSystemCompactFontName";
      }

      else
      {
        lightTextFontName = [(UIKBRenderFactory10Key *)self lightTextFontName];
      }

      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 setFontName:lightTextFontName];

      if ((v80 & 1) == 0)
      {
      }

      lightTextFontFallbackName = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
      symbolStyle11 = [v8 symbolStyle];
      [symbolStyle11 setKeycapsFallback:lightTextFontFallbackName];

      renderingContext6 = [(UIKBRenderFactory *)self renderingContext];
      if ([renderingContext6 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        v86 = 14.0;
      }

      else
      {
        v86 = 16.0;
      }

      symbolStyle12 = [v8 symbolStyle];
      [symbolStyle12 setFontSize:v86];

      if (displayType == 25)
      {
        v88 = keyCopy;
        v89 = [keyplaneCopy visualStyling] & 0xFF0000;
        symbolStyle13 = [v8 symbolStyle];
        v91 = symbolStyle13;
        if (v89 == 2228224)
        {
          [symbolStyle13 setKerning:0.0];
        }

        else
        {
          [symbolStyle13 setTextOffset:{1.0, 0.0}];
        }

        keyCopy = v88;
      }

      goto LABEL_60;
    }

    if (displayType > 4)
    {
      if (displayType == 5)
      {
        symbolStyle14 = [v8 symbolStyle];
        [symbolStyle14 setFontSize:37.0];
LABEL_211:

        symbolStyle15 = [v8 symbolStyle];
        [symbolStyle15 setUsesSymbolImage:1];
LABEL_212:

        goto LABEL_60;
      }

      if (displayType == 21)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (displayType == 3)
      {
        renderingContext7 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext7 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v259 = 10.0;
        }

        else
        {
          v259 = 15.0;
        }

        symbolStyle16 = [v8 symbolStyle];
        [symbolStyle16 setFontSize:v259];

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

        symbolStyle17 = [v8 symbolStyle];
        [symbolStyle17 setTextOffset:{v262, v263}];

        symbolStyle14 = [v8 symbolStyle];
        [symbolStyle14 setKerning:0.0];
        goto LABEL_211;
      }

      if (displayType == 4)
      {
        renderingContext8 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext8 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v93 = 14.0;
        }

        else
        {
          v93 = 19.0;
        }

        symbolStyle18 = [v8 symbolStyle];
        [symbolStyle18 setFontSize:v93];

        [(UIKBRenderFactory10Key *)self dictationKeyTextOffset];
LABEL_54:
        v97 = v95;
        v98 = v96;
        symbolStyle19 = [v8 symbolStyle];
        symbolStyle14 = symbolStyle19;
        v101 = v97;
        v102 = v98;
LABEL_210:
        [symbolStyle19 setTextOffset:{v101, v102}];
        goto LABEL_211;
      }
    }

    name2 = [keyCopy name];
    v214 = [name2 containsString:@"Syllable-Separator"];

    if (v214)
    {
LABEL_144:
      displayString3 = [keyCopy displayString];
      v216 = [displayString3 containsString:@"Emoji"];

      if (v216)
      {
        symbolStyle20 = [v8 symbolStyle];
        [symbolStyle20 setUsesSymbolImage:1];

        lightKeycapsFontName3 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
        symbolStyle21 = [v8 symbolStyle];
        [symbolStyle21 setFontName:lightKeycapsFontName3];

        lightKeycapsFontFallbackName3 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
        symbolStyle22 = [v8 symbolStyle];
        [symbolStyle22 setKeycapsFallback:lightKeycapsFontFallbackName3];

        [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
        v223 = v222;
        symbolStyle23 = [v8 symbolStyle];
        [symbolStyle23 setFontSize:v223];

        v225 = *off_1E70ECD18;
        symbolStyle24 = [v8 symbolStyle];
        [symbolStyle24 setFontWeight:v225];

        [(UIKBRenderFactory10Key *)self symbolImageControlKeyOffset];
        v228 = v227;
        v230 = v229;
      }

      else
      {
        renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
        usesCompactKeycapsFont2 = [renderConfig3 usesCompactKeycapsFont];
        v267 = usesCompactKeycapsFont2;
        if (usesCompactKeycapsFont2)
        {
          lightTextFontName2 = @"UIKBRenderFactoryWordsSystemCompactFontName";
        }

        else
        {
          lightTextFontName2 = [(UIKBRenderFactory10Key *)self lightTextFontName];
        }

        symbolStyle25 = [v8 symbolStyle];
        [symbolStyle25 setFontName:lightTextFontName2];

        if ((v267 & 1) == 0)
        {
        }

        lightTextFontFallbackName2 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
        symbolStyle26 = [v8 symbolStyle];
        [symbolStyle26 setKeycapsFallback:lightTextFontFallbackName2];

        renderingContext9 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext9 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v288 = 14.0;
        }

        else
        {
          v288 = 16.0;
        }

        symbolStyle27 = [v8 symbolStyle];
        [symbolStyle27 setFontSize:v288];

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

      symbolStyle19 = [v8 symbolStyle];
      symbolStyle14 = symbolStyle19;
      v101 = v228;
      v102 = v230;
      goto LABEL_210;
    }

    if (displayType == 13)
    {
      renderingContext10 = [(UIKBRenderFactory *)self renderingContext];
      if ([renderingContext10 isColorAdaptiveNonLinearCarplayKeyboard])
      {
        v295 = 20.0;
      }

      else
      {
        v295 = 28.0;
      }

      symbolStyle28 = [v8 symbolStyle];
      [symbolStyle28 setFontSize:v295];

      [(UIKBRenderFactory10Key *)self globeKeyTextOffset];
      goto LABEL_54;
    }

    if (displayType != 35)
    {
      if (displayType == 23)
      {
        renderingContext11 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext11 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v270 = 14.0;
        }

        else
        {
          v270 = 18.0;
        }

        symbolStyle29 = [v8 symbolStyle];
        [symbolStyle29 setFontSize:v270];

        symbolStyle30 = [v8 symbolStyle];
        [symbolStyle30 setTextOffset:{0.0, -1.0}];

        symbolStyle31 = [v8 symbolStyle];
        [symbolStyle31 setUsesSymbolImage:1];

        if ([keyCopy state] != 8)
        {
          goto LABEL_60;
        }

        symbolStyle15 = [v8 geometry];
        [symbolStyle15 displayFrame];
        v276 = v275;
        v278 = v277 + 0.0;
        v280 = v279 + -0.5;
        v282 = v281 + 0.5;
        geometry7 = [v8 geometry];
        [geometry7 setDisplayFrame:{v278, v280, v276, v282}];
        goto LABEL_240;
      }

      name3 = [keyCopy name];
      v298 = [name3 hasPrefix:@"Wubihua"];

      if (v298)
      {
        symbolStyle15 = [(UIKBRenderFactory *)self renderingContext];
        v299 = [symbolStyle15 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
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

        geometry7 = [v8 symbolStyle];
        [geometry7 setFontSize:v316];
        goto LABEL_240;
      }

      name4 = [keyCopy name];
      v315 = [name4 hasSuffix:@"Chinese-Facemark"];

      if (v315)
      {
        symbolStyle15 = [(UIKBRenderFactory *)self renderingContext];
        v299 = [symbolStyle15 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
        v300 = 22.0;
        v301 = 14.0;
        goto LABEL_236;
      }

      name5 = [keyCopy name];
      v321 = [name5 hasSuffix:@"Comma-Full-Stop-Question-Mark-Exclamation-Mark"];

      if (v321)
      {
        renderingContext12 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext12 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v323 = 14.0;
        }

        else
        {
          v323 = 22.0;
        }

        symbolStyle32 = [v8 symbolStyle];
        [symbolStyle32 setFontSize:v323];

        symbolStyle33 = [v8 symbolStyle];
        symbolStyle15 = symbolStyle33;
        v326 = 1.0;
LABEL_255:
        [symbolStyle33 setKerning:v326];
        goto LABEL_212;
      }

      name6 = [keyCopy name];
      v328 = [name6 hasSuffix:@"Chinese-Full-Width-Half-Width-Swap"];

      if (v328)
      {
        renderingContext13 = [(UIKBRenderFactory *)self renderingContext];
        if ([renderingContext13 isColorAdaptiveNonLinearCarplayKeyboard])
        {
          v330 = 14.0;
        }

        else
        {
          v330 = 16.0;
        }

        symbolStyle34 = [v8 symbolStyle];
        [symbolStyle34 setFontSize:v330];

        symbolStyle33 = [v8 symbolStyle];
        symbolStyle15 = symbolStyle33;
        v326 = -1.0;
        goto LABEL_255;
      }

      if (displayType <= 0x21)
      {
        if (((1 << displayType) & 0x44C04) != 0)
        {
          symbolStyle35 = [v8 symbolStyle];
          [symbolStyle35 setKerning:0.0];

          renderingContext14 = [(UIKBRenderFactory *)self renderingContext];
          if ([renderingContext14 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v334 = 14.0;
          }

          else
          {
            v334 = 16.0;
          }

          symbolStyle36 = [v8 symbolStyle];
          [symbolStyle36 setFontSize:v334];

          symbolStyle37 = [v8 symbolStyle];
          [symbolStyle37 setUsesSymbolImage:1];

          displayString4 = [keyCopy displayString];
          LODWORD(symbolStyle36) = [displayString4 hasSuffix:@"ABC"];

          if (symbolStyle36)
          {
            [(UIKBRenderFactory10Key *)self abcKeyTextOffset];
            v339 = v338;
            v341 = v340;
            symbolStyle38 = [v8 symbolStyle];
            [symbolStyle38 setTextOffset:{v339, v341}];
          }

          displayString2 = [keyCopy name];
          if ([displayString2 hasSuffix:@"Symbol-Alternative-To-Symbol-Alternative-Width-Toggle-Keyplane-Switch-Key"])
          {
            goto LABEL_59;
          }

          name7 = [keyCopy name];
          if ([name7 hasSuffix:@"Symbol-Alternative-Width-Toggle-To-Symbol-Alternative-Keyplane-Switch-Key"])
          {
            goto LABEL_267;
          }

          name8 = [keyCopy name];
          if ([name8 hasSuffix:@"Symbol-To-Symbol-Width-Toggle-Keyplane-Switch-Key"])
          {

LABEL_267:
            goto LABEL_59;
          }

          name9 = [keyCopy name];
          v355 = [name9 hasSuffix:@"Symbol-Width-Toggle-To-Symbol-Keyplane-Switch-Key"];

          if (v355)
          {
            goto LABEL_60;
          }

          lightTextFontName3 = [(UIKBRenderFactory10Key *)self lightTextFontName];
          symbolStyle39 = [v8 symbolStyle];
          [symbolStyle39 setFontName:lightTextFontName3];

          lightTextFontFallbackName3 = [(UIKBRenderFactory10Key *)self lightTextFontFallbackName];
LABEL_285:
          symbolStyle15 = lightTextFontFallbackName3;
          geometry7 = [v8 symbolStyle];
          [geometry7 setKeycapsFallback:symbolStyle15];
LABEL_240:

          goto LABEL_212;
        }

        if (displayType == 32)
        {
          symbolStyle15 = [(UIKBRenderFactory *)self renderingContext];
          v299 = [symbolStyle15 isColorAdaptiveNonLinearCarplayKeyboard] == 0;
          v300 = 28.0;
          goto LABEL_224;
        }

        if (displayType == 33)
        {
          renderingContext15 = [(UIKBRenderFactory *)self renderingContext];
          if ([renderingContext15 isColorAdaptiveNonLinearCarplayKeyboard])
          {
            v346 = 20.0;
          }

          else
          {
            v346 = 28.0;
          }

          symbolStyle40 = [v8 symbolStyle];
          [symbolStyle40 setFontSize:v346];

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

          symbolStyle15 = [v8 symbolStyle];
          [symbolStyle15 setTextOffset:{v349, v350}];
          goto LABEL_212;
        }
      }

      v351 = -[UIKBRenderFactory10Key _preferredScriptFontForRendering:](self, "_preferredScriptFontForRendering:", ([keyplaneCopy visualStyling] >> 16));
      symbolStyle41 = [v8 symbolStyle];
      [symbolStyle41 setFontName:v351];

      lightTextFontFallbackName3 = -[UIKBRenderFactory10Key _preferredScriptFontForRendering:](self, "_preferredScriptFontForRendering:", ([keyplaneCopy visualStyling] >> 16));
      goto LABEL_285;
    }

    [keyCopy frame];
    if (CGRectGetHeight(v375) > 45.0)
    {
      goto LABEL_214;
    }

    name10 = [keyCopy name];
    if ([name10 hasPrefix:@"TenKey-Chinese-Pinyin-"])
    {

LABEL_227:
      [(UIKBRenderFactory10Key *)self capitalAbcSymbolSize];
      v304 = v303;
      symbolStyle42 = [v8 symbolStyle];
      [symbolStyle42 setFontSize:v304];
      goto LABEL_228;
    }

    name11 = [keyCopy name];
    if ([name11 hasPrefix:@"TenKey-Latin-"])
    {
      name12 = [keyCopy name];
      v319 = [name12 hasPrefix:@"TenKey-Latin-Small-"];

      if ((v319 & 1) == 0)
      {
        goto LABEL_227;
      }
    }

    else
    {
    }

LABEL_214:
    symbolStyle42 = [(UIKBRenderFactory *)self renderingContext];
    if ([symbolStyle42 isColorAdaptiveNonLinearCarplayKeyboard])
    {
      v292 = 14.0;
    }

    else
    {
      v292 = 16.0;
    }

    symbolStyle43 = [v8 symbolStyle];
    [symbolStyle43 setFontSize:v292];

LABEL_228:
    name13 = [keyCopy name];
    if ([name13 hasPrefix:@"TenKey-Chinese-Pinyin-"])
    {
    }

    else
    {
      name14 = [keyCopy name];
      v307 = [name14 hasPrefix:@"TenKey-Latin-"];

      if (!v307)
      {
LABEL_232:
        renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
        usesCompactKeycapsFont3 = [renderConfig4 usesCompactKeycapsFont];

        if (!usesCompactKeycapsFont3)
        {
          goto LABEL_60;
        }

        displayString2 = [v8 symbolStyle];
        [displayString2 setFontName:@"UIKBRenderFactoryWordsSystemCompactFontName"];
LABEL_59:

        goto LABEL_60;
      }
    }

    lightKeycapsFontName4 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
    symbolStyle44 = [v8 symbolStyle];
    [symbolStyle44 setFontName:lightKeycapsFontName4];

    lightKeycapsFontFallbackName4 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    symbolStyle45 = [v8 symbolStyle];
    [symbolStyle45 setKeycapsFallback:lightKeycapsFontFallbackName4];

    goto LABEL_232;
  }

  lightKeycapsFontName5 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  symbolStyle46 = [v8 symbolStyle];
  [symbolStyle46 setFontName:lightKeycapsFontName5];

  lightKeycapsFontFallbackName5 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  symbolStyle47 = [v8 symbolStyle];
  [symbolStyle47 setKeycapsFallback:lightKeycapsFontFallbackName5];

  lightKeycapsFontName6 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
  [v39 setFontName:lightKeycapsFontName6];

  lightKeycapsFontFallbackName6 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
  [v39 setKeycapsFallback:lightKeycapsFontFallbackName6];

  renderingContext16 = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard4 = [renderingContext16 isColorAdaptiveNonLinearCarplayKeyboard];
  v77 = 10.0;
  if (!isColorAdaptiveNonLinearCarplayKeyboard4)
  {
    v77 = 14.0;
  }

  [v39 setFontSize:v77];

  [(UIKBRenderFactory10Key *)self longVowelSignKeyTextOffset];
  [v39 setTextOffset:?];
LABEL_60:
  name15 = [keyCopy name];
  if ([name15 hasSuffix:@"At-Sign-Number-Sign-Solidus-Ampersand-Underline"])
  {
LABEL_63:

LABEL_64:
    [v8 setSecondarySymbolStyles:0];
    goto LABEL_65;
  }

  name16 = [keyCopy name];
  if ([name16 hasSuffix:@"Case-Swap"])
  {

    goto LABEL_63;
  }

  name17 = [keyCopy name];
  v126 = [name17 hasSuffix:@"Chinese-Digit-Symbols"];

  if (v126)
  {
    goto LABEL_64;
  }

LABEL_65:
  secondarySymbolStyles = [v8 secondarySymbolStyles];
  firstObject = [secondarySymbolStyles firstObject];

  v107 = [keyCopy state] & 0xC;
  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig5 whiteText])
  {
    v109 = @"UIKBColorWhite";
  }

  else
  {
    v109 = @"UIKBColorBlack";
  }

  symbolStyle48 = [v8 symbolStyle];
  [symbolStyle48 setTextColor:v109];

  symbolStyle49 = [v8 symbolStyle];
  textColor = [symbolStyle49 textColor];
  v362 = firstObject;
  [firstObject setTextColor:textColor];

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
  defaultKeyDividerColorName = [(UIKBRenderFactory10Key *)self defaultKeyDividerColorName];
  renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig6 lightKeyboard];

  if (lightKeyboard)
  {
    if ([objc_opt_class() _isActiveKeyplaneSwitchKey:keyCopy])
    {
      renderConfig7 = [(UIKBRenderFactory *)self renderConfig];
      activatedKeyplaneSwitchControlKeyBackgroundName = [renderConfig7 activatedKeyplaneSwitchControlKeyBackgroundName];
      v123 = [UIKBGradient gradientWithFlatColor:activatedKeyplaneSwitchControlKeyBackgroundName];
      [v8 setBackgroundGradient:v123];

      controlKeyDividerColorName = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];

      [(UIKBRenderFactory *)self suppressLayoutSegments];
      defaultKeyDividerColorName = controlKeyDividerColorName;
    }

    else if (v107)
    {
      v113 = 15;
    }
  }

  if ([objc_opt_class() _isActiveKeyplaneSwitchKey:keyCopy])
  {
    [v8 setBlurBlending:0];
  }

  if ([keyCopy state] == 1)
  {
    symbolStyle50 = [v8 symbolStyle];
    [symbolStyle50 setTextOpacity:0.35];
  }

  if (v113 && ([keyCopy state] & 0x10) == 0)
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
      geometry8 = [v8 geometry];
      [geometry8 frame];
      v134 = v133;
      geometry9 = [v8 geometry];
      [geometry9 paddedFrame];
      v128 = v134 - v136;
    }

    v117 = [UIKBEdgeEffect effectWithColor:defaultKeyDividerColorName edges:v113 insets:v129 weight:v128, v130, v131, v117];
    [v8 addRenderEffect:v117];
  }

  if (-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", keyCopy) && [keyCopy state] == 2)
  {
    [(UIKBRenderFactory *)self suppressLayoutSegments];
    v138 = [UIKBGradient gradientWithFlatColor:@"UIKBColorKeyBlueKeyBackground"];
    [v8 setLayeredForegroundGradient:v138];

    controlKeyDividerColorName2 = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
    v140 = [UIKBEdgeEffect effectWithColor:controlKeyDividerColorName2 edges:15 inset:-v117 weight:v117];
    [v8 addRenderEffect:v140];

    renderConfig8 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(controlKeyDividerColorName2) = [renderConfig8 lightKeyboard];

    if (controlKeyDividerColorName2)
    {
      symbolStyle51 = [v8 symbolStyle];
      [symbolStyle51 setTextColor:@"UIKBColorWhite"];
LABEL_108:
    }
  }

  else if ([(UIKBRenderFactory *)self useBlueThemingForKey:keyCopy])
  {
    if ([keyCopy state] == 1)
    {
      renderConfig9 = [(UIKBRenderFactory *)self renderConfig];
      colorAdaptiveBackground = [renderConfig9 colorAdaptiveBackground];

      if (colorAdaptiveBackground)
      {
        symbolStyle51 = [(UIKBRenderFactory *)self renderConfig];
        lightKeyboard2 = [symbolStyle51 lightKeyboard];
        v146 = UIKBColorBlack_Alpha25;
        if (!lightKeyboard2)
        {
          v146 = UIKBColorWhite_Alpha40;
        }

        v147 = [UIKBGradient gradientWithFlatColor:*v146];
        [v8 setLayeredForegroundGradient:v147];

        goto LABEL_108;
      }
    }
  }

  v359 = defaultKeyDividerColorName;
  if (displayType <= 0xD && ((1 << displayType) & 0x2030) != 0)
  {
    [keyCopy state];
    v148 = 1;
    goto LABEL_112;
  }

  if ([keyCopy state] == 16)
  {
    symbolStyle52 = [v8 symbolStyle];
    v184 = [symbolStyle52 copy];
    v151 = [UIKBRenderTraits traitsWithSymbolStyle:v184];

    symbolStyle53 = [v8 symbolStyle];
    textColor2 = [symbolStyle53 textColor];
    symbolStyle54 = [v151 symbolStyle];
    [symbolStyle54 setTextColor:textColor2];

    symbolStyle55 = [v151 symbolStyle];
    [symbolStyle55 setFontSize:26.0];

    v189 = *MEMORY[0x1E695EFF8];
    v190 = *(MEMORY[0x1E695EFF8] + 8);
    symbolStyle56 = [v151 symbolStyle];
    [symbolStyle56 setTextOffset:{v189, v190}];

    [v8 setVariantTraits:v151];
    symbolStyle57 = [v151 symbolStyle];
    v193 = [symbolStyle57 copy];
    v166 = [UIKBRenderTraits traitsWithSymbolStyle:v193];

    v194 = [UIKBGradient gradientWithFlatColor:@"UIKBColorKeyBlueKeyBackground"];
    [v166 setLayeredForegroundGradient:v194];

    symbolStyle58 = [v166 symbolStyle];
    [symbolStyle58 setTextColor:@"UIKBColorWhite"];

    [v8 setHighlightedVariantTraits:v166];
    geometry10 = [v8 geometry];
    [geometry10 setRoundRectCorners:0];

    geometry11 = [v8 geometry];
    [(UIKBRenderFactory *)self scale];
    [UIKBRenderFactory10Key populateFlickGuide:v8 forKey:keyCopy from:geometry11 scale:?];

    flickDirection = [keyCopy flickDirection];
    geometry12 = [v8 geometry];
    [geometry12 setFlickDirection:flickDirection];

    renderConfig10 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(geometry12) = [renderConfig10 colorAdaptiveBackground];

    if ((geometry12 & 1) == 0)
    {
      v201 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha40" offset:0.0 insets:4.0 weight:1.0, 1.0, 1.0, 1.0, 15.0];
      [v8 addRenderEffect:v201];
    }

    renderConfig11 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard3 = [renderConfig11 lightKeyboard];

    if (lightKeyboard3)
    {
      if ([keyCopy dynamicLayout])
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

    renderConfig12 = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground2 = [renderConfig12 colorAdaptiveBackground];

    if ((colorAdaptiveBackground2 & 1) == 0)
    {
      renderConfig12 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha20" edges:15 inset:0.0 weight:v117];
      [v8 addRenderEffect:renderConfig12];
    }

    [v8 setBlurBlending:1];
    renderConfig13 = [(UIKBRenderFactory *)self renderConfig];
    animatedBackground = [renderConfig13 animatedBackground];
    if (animatedBackground & 1) != 0 || (-[UIKBRenderFactory renderConfig](self, "renderConfig"), renderConfig12 = objc_claimAutoreleasedReturnValue(), ([renderConfig12 colorAdaptiveBackground]))
    {
      [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
      if (animatedBackground)
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
  if ([keyCopy state] == 20)
  {
    symbolStyle59 = [v8 symbolStyle];
    v150 = [symbolStyle59 copy];
    v151 = [UIKBRenderTraits traitsWithSymbolStyle:v150];

    defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
    v153 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
    [v151 setBackgroundGradient:v153];

    symbolStyle60 = [v151 symbolStyle];
    [symbolStyle60 setFontSize:30.0];

    v155 = *MEMORY[0x1E695EFF8];
    v156 = *(MEMORY[0x1E695EFF8] + 8);
    symbolStyle61 = [v151 symbolStyle];
    [symbolStyle61 setTextOffset:{v155, v156}];

    symbolStyle62 = [v8 symbolStyle];
    textColor3 = [symbolStyle62 textColor];
    symbolStyle63 = [v151 symbolStyle];
    [symbolStyle63 setTextColor:textColor3];

    renderConfig14 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(textColor3) = [renderConfig14 colorAdaptiveBackground];

    if ((textColor3 & 1) == 0)
    {
      v162 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha40" offset:0.0 insets:4.0 weight:1.0, 1.0, 1.0, 1.0, 15.0];
      [v151 addRenderEffect:v162];

      v163 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha15" edges:15 inset:-v117 weight:v117];
      [v151 addRenderEffect:v163];
    }

    geometry13 = [v8 geometry];
    flickDirection2 = [keyCopy flickDirection];
    [(UIKBRenderFactory *)self scale];
    v166 = [geometry13 copyForFlickDirection:flickDirection2 scale:?];

    geometry14 = [v8 geometry];
    [geometry14 paddedFrame];
    MidX = CGRectGetMidX(v371);
    geometry15 = [v8 geometry];
    [geometry15 paddedFrame];
    [v166 setPopupSource:{MidX, CGRectGetMidY(v372)}];

    [v166 displayFrame];
    v374 = CGRectInset(v373, -20.0, -20.0);
    [v166 setDisplayFrame:{v374.origin.x, v374.origin.y, v374.size.width, v374.size.height}];
    [v166 setFlickDirection:{objc_msgSend(keyCopy, "flickDirection")}];
    [v166 setRoundRectCorners:-1];
    [v151 setGeometry:v166];
    [v8 setVariantTraits:v151];
    [v166 displayFrame];
    v171 = v170;
    v173 = v172;
    v175 = v174;
    v177 = v176;
    geometry16 = [v8 geometry];
    [geometry16 setDisplayFrame:{v171, v173, v175, v177}];

    flickDirection3 = [keyCopy flickDirection];
    geometry17 = [v8 geometry];
    [geometry17 setFlickDirection:flickDirection3];

    [v151 setBlurBlending:1];
    renderConfig15 = [(UIKBRenderFactory *)self renderConfig];
    animatedBackground2 = [renderConfig15 animatedBackground];
    if (animatedBackground2 & 1) != 0 || (-[UIKBRenderFactory renderConfig](self, "renderConfig"), geometry17 = objc_claimAutoreleasedReturnValue(), ([geometry17 colorAdaptiveBackground]))
    {
      [v8 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];
      if (animatedBackground2)
      {
        goto LABEL_136;
      }
    }

    else
    {
      [v8 setBlendForm:0];
    }

LABEL_136:
    renderConfig16 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard4 = [renderConfig16 lightKeyboard];

    if (!lightKeyboard4)
    {
LABEL_150:
      [(UIKBRenderFactory *)self suppressLayoutSegments];

      goto LABEL_151;
    }

    if ([keyCopy dynamicLayout])
    {
      v212 = @"UIKBColorWhite";
    }

    else
    {
      v212 = @"UIKBColorLightBackdropTint";
    }

    renderConfig13 = [UIKBGradient gradientWithFlatColor:v212];
    [v8 setLayeredBackgroundGradient:renderConfig13];
LABEL_149:

    goto LABEL_150;
  }

LABEL_151:
  state = [keyCopy state];
  if (v148 && (state & 0x10) != 0)
  {
    renderingContext17 = [(UIKBRenderFactory *)self renderingContext];
    lightKeycapsFontName7 = [(UIKBRenderFactory10Key *)self lightKeycapsFontName];
    lightKeycapsFontFallbackName7 = [(UIKBRenderFactory10Key *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactory *)self _customizeTraits:v8 forPopupForKey:keyCopy withRenderingContext:renderingContext17 keycapsFontName:lightKeycapsFontName7 fallbackFontName:lightKeycapsFontFallbackName7];

    [(UIKBRenderFactory *)self suppressLayoutSegments];
  }

  v235 = v363;
  if (([objc_opt_class() _isActiveKeyplaneSwitchKey:keyCopy] & 1) == 0)
  {
    v366 = 0u;
    v367 = 0u;
    v364 = 0u;
    v365 = 0u;
    subtrees = [v363 subtrees];
    v237 = [subtrees countByEnumeratingWithState:&v364 objects:v369 count:16];
    if (v237)
    {
      v238 = v237;
      v358 = keyCopy;
      v239 = *v365;
LABEL_157:
      v240 = 0;
      while (1)
      {
        if (*v365 != v239)
        {
          objc_enumerationMutation(subtrees);
        }

        v241 = *(*(&v364 + 1) + 8 * v240);
        name18 = [v241 name];
        v243 = [name18 _containsSubstring:@"Assist"];

        if (v243)
        {
          break;
        }

        if (v238 == ++v240)
        {
          v238 = [subtrees countByEnumeratingWithState:&v364 objects:v369 count:16];
          if (v238)
          {
            goto LABEL_157;
          }

          v244 = 0;
          keyCopy = v358;
          v235 = v363;
          goto LABEL_174;
        }
      }

      v244 = v241;

      if (!v244)
      {
        keyCopy = v358;
        v235 = v363;
        goto LABEL_175;
      }

      keys = [v244 keys];
      keyCopy = v358;
      v246 = [keys containsObject:v358];

      v235 = v363;
      if (!v246)
      {
        goto LABEL_175;
      }

      if (([v358 state] & 3) != 0)
      {
        controlKeyTraits = [(UIKBRenderFactory10Key *)self controlKeyTraits];
      }

      else
      {
        if (([v358 state] & 4) == 0)
        {
LABEL_173:
          subtrees = [v8 symbolStyle];
          [subtrees setUsesSymbolImage:1];
          goto LABEL_174;
        }

        controlKeyTraits = [(UIKBRenderFactory10Key *)self activeControlKeyTraits];
      }

      v248 = controlKeyTraits;
      [v8 overlayWithTraits:controlKeyTraits];

      goto LABEL_173;
    }

    v244 = 0;
LABEL_174:

LABEL_175:
  }

  symbolStyle64 = [v8 symbolStyle];
  usesSymbolImage = [symbolStyle64 usesSymbolImage];

  if (usesSymbolImage)
  {
    [(UIKBRenderFactory10Key *)self symbolImageControlKeyFontSize];
    v252 = v251;
    symbolStyle65 = [v8 symbolStyle];
    [symbolStyle65 setFontSizeForSymbolImage:v252];

    v254 = *off_1E70ECD18;
    symbolStyle66 = [v8 symbolStyle];
    [symbolStyle66 setFontWeightForSymbolImage:v254];
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
  controlKeyBackgroundColorName = [(UIKBRenderFactory10Key *)self controlKeyBackgroundColorName];
  v7 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
  [v5 setBackgroundGradient:v7];

  controlKeyDividerColorName = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
  v9 = [UIKBEdgeEffect effectWithColor:controlKeyDividerColorName edges:15 inset:-v4 weight:v4];
  [v5 addRenderEffect:v9];

  return v5;
}

- (id)activeControlKeyTraits
{
  [(UIKBRenderFactory *)self translucentGapWidth];
  v4 = v3;
  v5 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v5 setControlOpacities:0];
  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v7 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [v5 setBackgroundGradient:v7];

  controlKeyDividerColorName = [(UIKBRenderFactory10Key *)self controlKeyDividerColorName];
  v9 = [UIKBEdgeEffect effectWithColor:controlKeyDividerColorName edges:15 inset:-v4 weight:v4];
  [v5 addRenderEffect:v9];

  return v5;
}

- (id)shiftedControlKeyTraits
{
  controlKeyTraits = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  v6 = blackKeycapColor;

  v7 = [UIKBTextStyle styleWithTextColor:v6];
  [controlKeyTraits setSymbolStyle:v7];

  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v9 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [controlKeyTraits setBackgroundGradient:v9];

  return controlKeyTraits;
}

- (id)shiftedWhiteControlKeyTraits
{
  controlKeyTraits = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    blackKeycapColor = [(UIKBRenderFactory *)self blackKeycapColor];
  }

  else
  {
    blackKeycapColor = @"UIKBColorWhite";
  }

  v6 = blackKeycapColor;

  v7 = [UIKBTextStyle styleWithTextColor:v6];
  [controlKeyTraits setSymbolStyle:v7];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig2 lightKeyboard];
  v10 = UIKBColor10KeyWhiteShiftedBackground;
  if (!lightKeyboard)
  {
    v10 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v11 = *v10;

  v12 = [UIKBGradient gradientWithFlatColor:v11];

  [controlKeyTraits setBackgroundGradient:v12];

  return controlKeyTraits;
}

- (void)setupColumnLayoutSegmentsWithControlWidth:(double)width
{
  controlKeyTraits = [(UIKBRenderFactory10Key *)self controlKeyTraits];
  v12 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];

  [v12 setKeyStates:3];
  [v12 addLayoutRect:0 asTriangle:{0.0, 0.0, width, 1.0}];
  [v12 addLayoutRect:0 asTriangle:{1.0 - width, 0.0, width, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v12];
  activeControlKeyTraits = [(UIKBRenderFactory10Key *)self activeControlKeyTraits];
  v7 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];

  [v7 setKeyStates:4];
  [v7 addLayoutRect:0 asTriangle:{0.0, 0.0, width, 1.0}];
  [v7 addLayoutRect:0 asTriangle:{1.0 - width, 0.0, width, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v7];
  shiftedControlKeyTraits = [(UIKBRenderFactory10Key *)self shiftedControlKeyTraits];
  v9 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftedControlKeyTraits];

  [v9 setKeyStates:108];
  [v9 setRequireAllMatches:1];
  [v9 addLayoutRect:0 asTriangle:{0.0, 0.0, width, 1.0}];
  [v9 addLayoutRect:0 asTriangle:{1.0 - width, 0.0, width, 1.0}];
  [v9 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v9];
  shiftedWhiteControlKeyTraits = [(UIKBRenderFactory10Key *)self shiftedWhiteControlKeyTraits];
  v11 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:shiftedWhiteControlKeyTraits];

  [v11 setKeyStates:108];
  [v11 setRequireAllMatches:1];
  [v11 addLayoutRect:0 asTriangle:{width, 0.0, 1.0 - width - width, 1.0}];
  [v11 addRelativeLayoutRectFromEdge:10 ofCachedKey:@"Shift-Key"];
  [(UIKBRenderFactory *)self addLayoutSegment:v11];
}

+ (BOOL)_isActiveKeyplaneSwitchKey:(id)key
{
  keyCopy = key;
  if (([keyCopy state] & 0xC) != 0)
  {
    displayType = [keyCopy displayType];
    v6 = displayType == 14 || displayType == 11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)populateFlickGuide:(id)guide forKey:(id)key from:(id)from scale:(double)scale
{
  guideCopy = guide;
  keyCopy = key;
  fromCopy = from;
  [fromCopy displayFrame];
  x = v11;
  y = v13;
  width = v15;
  height = v17;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
  v20 = [fromCopy copy];
  [v20 makeIntegralWithScale:scale];
  [v19 addObject:v20];
  v21 = 0;
  do
  {
    subtrees = [keyCopy subtrees];
    v23 = v21 + 1;
    v24 = [subtrees objectAtIndex:v21 + 1];

    null = [MEMORY[0x1E695DFB0] null];

    if (v24 == null)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      null2 = [v20 copyForPopupDirection:v21 scale:scale];
      [null2 displayFrame];
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

    [v19 addObject:null2];

    v21 = v23;
  }

  while (v23 != 4);
  [guideCopy setVariantGeometries:v19];
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v41 = CGRectInset(v40, -20.0, -20.0);
  v31 = v41.origin.x;
  v32 = v41.origin.y;
  v33 = v41.size.width;
  v34 = v41.size.height;
  geometry = [guideCopy geometry];
  [geometry setDisplayFrame:{v31, v32, v33, v34}];
}

@end