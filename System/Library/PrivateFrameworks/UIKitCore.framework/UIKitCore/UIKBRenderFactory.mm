@interface UIKBRenderFactory
+ (BOOL)couldUseGlyphSelectorForDisplayString:(id)string;
+ (Class)factoryClassForVisualStyle:(id)style renderingContext:(id)context;
+ (id)_characterSetForGlyphSelectors;
+ (id)cacheKeyForString:(id)string withRenderFlags:(int64_t)flags renderConfig:(id)config;
+ (id)factoryForVisualStyle:(id)style renderingContext:(id)context skipLayoutSegments:(BOOL)segments;
+ (id)lightweightFactoryForVisualStyle:(id)style renderingContext:(id)context;
+ (id)segmentedControlColor:(BOOL)color;
- (BOOL)allowsPaddleForKey:(id)key;
- (BOOL)keyIsRightToLeftSensitive:(id)sensitive;
- (BOOL)popupKeyUsesCustomKeyContentView:(id)view;
- (BOOL)shouldOverlayTraitsForKey:(id)key onKeyplane:(id)keyplane;
- (BOOL)useBlueThemingForKey:(id)key;
- (CGPoint)RivenPointFactor:(CGPoint)factor;
- (CGPoint)dualStringKeyBottomTextOffset:(id)offset keyplane:(id)keyplane;
- (CGPoint)dualStringKeyTopTextOffset:(id)offset keyplane:(id)keyplane;
- (CGSize)stretchFactor;
- (NSString)shortClassNameForCaching;
- (UIEdgeInsets)dynamicInsets;
- (UIKBRenderConfig)renderConfig;
- (UIKBRenderFactory)initWithRenderingContext:(id)context skipLayoutSegments:(BOOL)segments;
- (double)RivenFactor:(double)factor;
- (double)keyCornerRadius;
- (id)_controlKeyBackgroundColorName;
- (id)_defaultControlKeyBackgroundColorName;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)contentViewClassNameForPopupKey:(id)key;
- (id)controlKeyForegroundColorName;
- (id)defaultKeyBackgroundColorName;
- (id)defaultKeyShadowColorName;
- (id)displayContentsForKey:(id)key;
- (id)extraPasscodePaddleTraits;
- (id)hashStringElement;
- (id)keyImageNameWithSkinnyVariation:(id)variation;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)lowQualityLayeredBackgroundColorName;
- (id)passcodeActiveControlKeyTraits;
- (id)passcodeBackgroundTraitsForKeyplane:(id)keyplane;
- (id)passcodeControlKeyTraits;
- (id)passcodeShiftedControlKeyTraits;
- (id)returnKeyImageNameForKey:(id)key;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (id)traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)traitsHashStringForKey:(id)key withGeometry:(id)geometry withSymbolStyle:(id)style controlOpacities:(BOOL)opacities blendForm:(int64_t)form blurBlending:(BOOL)blending renderConfig:(id)config;
- (int64_t)enabledBlendForm;
- (int64_t)glyphSelectorForDisplayString:(id)string;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
- (void)addLayoutSegment:(id)segment;
- (void)applyBoldTextForContent:(id)content withKey:(id)key;
- (void)customizeLanguageIndicatorTraitsForTraits:(id)traits;
- (void)customizeMicOnTraitsForTraits:(id)traits lightKeyboard:(BOOL)keyboard keyState:(int)state;
- (void)lowQualityTraits:(id)traits;
- (void)modifyKeyTraitsForPasscode:(id)passcode forKey:(id)key onKeyplane:(id)keyplane;
- (void)modifyTraitsForDetachedInputSwitcher:(id)switcher withKey:(id)key;
- (void)modifyTraitsForDividerVariant:(id)variant withKey:(id)key;
- (void)scaleTraits:(id)traits;
@end

@implementation UIKBRenderFactory

- (id)defaultKeyBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  animatedBackground = [renderConfig animatedBackground];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  renderConfig3 = renderConfig2;
  if (animatedBackground)
  {
    lightKeyboard = [renderConfig2 lightKeyboard];
    v8 = UIKBColorWhite;
    v9 = UIKBColorWhite_Alpha65;
  }

  else
  {
    if ([renderConfig2 colorAdaptiveBackground])
    {
      increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];

      if (!increasedContrastEnabled)
      {
        v11 = @"UIKBColorWhite";
        goto LABEL_11;
      }
    }

    else
    {
    }

    renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig3 lightKeyboard];
    v8 = UIKBColorWhite;
    v9 = UIKBColorWhite_Alpha30;
  }

  if (!lightKeyboard)
  {
    v8 = v9;
  }

  v11 = *v8;

LABEL_11:

  return v11;
}

- (id)hashStringElement
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig lightKeyboard])
  {
    v3 = @"Light";
  }

  else
  {
    v3 = @"Dark";
  }

  v4 = v3;

  return v3;
}

- (id)_controlKeyBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  controlKeyBackgroundName = [renderConfig controlKeyBackgroundName];

  if (controlKeyBackgroundName)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    controlKeyBackgroundName2 = [renderConfig2 controlKeyBackgroundName];
  }

  else
  {
    controlKeyBackgroundName2 = [(UIKBRenderFactory *)self _defaultControlKeyBackgroundColorName];
  }

  return controlKeyBackgroundName2;
}

- (int64_t)enabledBlendForm
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  animatedBackground = [renderConfig animatedBackground];

  if (animatedBackground)
  {
    return 8;
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig2 colorAdaptiveBackground])
  {
    increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];

    if (!increasedContrastEnabled)
    {
      renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig3 lightKeyboard])
      {
        v5 = 11;
      }

      else
      {
        v5 = 10;
      }

      return v5;
    }
  }

  else
  {
  }

  renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
  emptyBackground = [renderConfig4 emptyBackground];

  if (emptyBackground)
  {
    return 7;
  }

  renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig5 lightKeyboard];

  if (!lightKeyboard || +[UIKBRenderFactory _graphicsQuality]!= 100)
  {
    return 0;
  }

  return [(UIKBRenderFactory *)self lightHighQualityEnabledBlendForm];
}

- (id)defaultKeyShadowColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  animatedBackground = [renderConfig animatedBackground];

  if (animatedBackground)
  {
    v5 = @"UIKBColorBlack_Alpha10";
  }

  else
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard = [renderConfig2 lightKeyboard];
    v8 = UIKBColorBlack_Alpha35;
    if (!lightKeyboard)
    {
      v8 = UIKBColorBlack_Alpha40;
    }

    v5 = *v8;
  }

  return v5;
}

- (UIKBRenderConfig)renderConfig
{
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  renderConfig = [renderingContext renderConfig];

  return renderConfig;
}

- (CGSize)stretchFactor
{
  width = self->_stretchFactor.width;
  height = self->_stretchFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (Class)factoryClassForVisualStyle:(id)style renderingContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  if ([contextCopy isColorAdaptiveNonLinearCarplayKeyboard])
  {
    styleCopy = *&style & 0xFFFFFFC0;
  }

  else
  {
    styleCopy = style;
  }

  v8 = styleCopy << 26;
  v9 = 1;
  if ((styleCopy << 26) <= 1610612735)
  {
    if (v8 == 0x4000000)
    {
      goto LABEL_12;
    }

    v10 = 1543503872;
  }

  else
  {
    if (v8 == 1610612736 || v8 == 1677721600)
    {
      goto LABEL_12;
    }

    v10 = 1744830464;
  }

  if (v8 != v10)
  {
    v9 = 0;
  }

LABEL_12:
  isFloating = [contextCopy isFloating];

  if (isFloating)
  {
    goto LABEL_13;
  }

  if (!v8 || v8 == 1476395008 || v8 == 1409286144)
  {
    if (((BYTE2(styleCopy) < 0x23u) & (0x600000802uLL >> SBYTE2(styleCopy))) != 0)
    {
      v14 = (styleCopy & 0x40) != 0 && +[UIKBRenderFactory _graphicsQuality]== 100;
      v6 = objc_opt_class();
      if (v8 == 1409286144 && (styleCopy & 0x40) != 0 || v8 == 1476395008 && (styleCopy & 0x40) != 0)
      {
        goto LABEL_13;
      }

      v15 = !v14;
      if (v8 != 1409286144)
      {
        v15 = 0;
      }

      if (v15)
      {
        goto LABEL_13;
      }

      if (v8 == 1476395008 && !v14)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (BYTE2(styleCopy) != 38 && BYTE2(styleCopy) != 27)
    {
      if (BYTE2(styleCopy) == 9)
      {
        if ((styleCopy & 0x40) == 0)
        {
          v12 = objc_opt_class();
          if (v8 != 1409286144 && v8 != 1476395008)
          {
            goto LABEL_14;
          }
        }
      }

      else if ((styleCopy & 0xFF00) == 0x7F00)
      {
        v12 = objc_opt_class();
        if (v8 != 1409286144 && v8 != 1476395008)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = objc_opt_class();
        if (v8 != 1476395008 && v8 != 1409286144)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_13:
    v12 = objc_opt_class();
LABEL_14:
    v6 = v12;
    goto LABEL_15;
  }

  if (v9)
  {
    if ((styleCopy & 0x80) == 0)
    {
      if (BYTE2(styleCopy) > 0x1Au)
      {
        if (BYTE2(styleCopy) == 27 || BYTE2(styleCopy) == 38)
        {
          goto LABEL_13;
        }
      }

      else if (BYTE2(styleCopy) == 9 || BYTE2(styleCopy) == 11)
      {
        goto LABEL_13;
      }

      if ((styleCopy & 0xFF00) != 0x7F00)
      {
        v12 = objc_opt_class();
        if (v8 != 1610612736 && v8 != 1543503872)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v8 == 0x8000000 || v8 == 201326592)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v6;
}

+ (id)factoryForVisualStyle:(id)style renderingContext:(id)context skipLayoutSegments:(BOOL)segments
{
  segmentsCopy = segments;
  v6 = *&style;
  contextCopy = context;
  renderConfig = [contextCopy renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard && (v6 & 0xFF00) == 0x7F00)
  {
    v11 = +[UIKBRenderConfig darkConfig];
    [contextCopy setRenderConfig:v11];
  }

  renderConfig2 = [contextCopy renderConfig];
  colorAdaptiveBackground = [renderConfig2 colorAdaptiveBackground];
  v14 = (v6 & 0x3F) == 3 && (v6 & 0xFF0000) != 2752512;
  if (colorAdaptiveBackground)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [contextCopy setIsColorAdaptiveNonLinearCarplayKeyboard:v15];

  v16 = [self factoryClassForVisualStyle:v6 renderingContext:contextCopy];
  if ([contextCopy handBias])
  {
    if (v16 == objc_opt_class() || v16 == objc_opt_class())
    {
      v17 = objc_opt_class();
    }

    else
    {
      v17 = [self factoryClassForVisualStyle:v6 & 0xFFFFFFFFFFFFFFC0 renderingContext:contextCopy];
    }

    v16 = v17;
  }

  v18 = [[v16 alloc] initWithRenderingContext:contextCopy skipLayoutSegments:segmentsCopy];

  return v18;
}

+ (id)lightweightFactoryForVisualStyle:(id)style renderingContext:(id)context
{
  v4 = [UIKBRenderFactory factoryForVisualStyle:*&style renderingContext:context skipLayoutSegments:1];
  [v4 setLightweightFactory:1];

  return v4;
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

- (CGPoint)dualStringKeyTopTextOffset:(id)offset keyplane:(id)keyplane
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset:(id)offset keyplane:(id)keyplane
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (UIEdgeInsets)dynamicInsets
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

- (void)modifyTraitsForDetachedInputSwitcher:(id)switcher withKey:(id)key
{
  v47[1] = *MEMORY[0x1E69E9840];
  switcherCopy = switcher;
  keyCopy = key;
  geometry = [switcherCopy geometry];
  [geometry setDetachedVariants:1];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    [switcherCopy setBlendForm:0];
    v11 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [switcherCopy addRenderEffect:v11];
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig2 colorAdaptiveBackground] || objc_msgSend(keyCopy, "displayType") == 13 || objc_msgSend(keyCopy, "displayType") == 5)
  {
  }

  else
  {
    displayType = [keyCopy displayType];

    if (displayType != 4)
    {
      [switcherCopy setBlurBlending:1];
    }
  }

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

  v15 = inputSwitcherView;

  [v15 popupRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  layoutView = [renderingContext2 layoutView];
  [layoutView convertRect:v15 fromView:{v17, v19, v21, v23}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  geometry2 = [switcherCopy geometry];
  [geometry2 displayFrame];
  v50.origin.x = v27;
  v50.origin.y = v29;
  v50.size.width = v31;
  v50.size.height = v33;
  v49 = CGRectUnion(v48, v50);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;

  geometry3 = [switcherCopy geometry];
  [geometry3 setDisplayFrame:{x, y, width, height}];

  v40 = [UIKBRenderGeometry geometryWithFrame:v27 paddedFrame:v29, v31, v33, v27, v29, v31, v33];
  v47[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [switcherCopy setVariantGeometries:v41];

  geometry4 = [switcherCopy geometry];
  [geometry4 setPopupBias:40];

  [(UIKBRenderFactory *)self keyCornerRadius];
  v44 = v43;
  geometry5 = [switcherCopy geometry];
  [geometry5 setRoundRectRadius:v44];
}

- (void)modifyTraitsForDividerVariant:(id)variant withKey:(id)key
{
  variantCopy = variant;
  keyCopy = key;
  variantPopupBias = [keyCopy variantPopupBias];

  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0x7FFFFFFFFFFFFFFFLL;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x4010000000;
  v71[3] = "";
  v72 = 0u;
  v73 = 0u;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v9 = keyCopy;
  subtrees = [keyCopy subtrees];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke;
  v59[3] = &unk_1E7114268;
  v11 = variantCopy;
  v60 = v11;
  selfCopy = self;
  v66 = variantPopupBias == @"fixed-left";
  v62 = &v67;
  v63 = v71;
  v64 = &v74;
  v65 = &v78;
  [subtrees enumerateObjectsUsingBlock:v59];

  if (v79[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *(v75 + 24);
    v13 = v68[3];
    v14 = -v13;
    if (v12 == 1)
    {
      v15 = 0.0;
      v16 = -v13;
      v14 = v68[3];
    }

    else
    {
      v15 = v68[3];
      v13 = 0.0;
      v16 = v15;
    }

    subtrees2 = [v9 subtrees];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke_2;
    v51[3] = &unk_1E7114290;
    v58 = v12 != (variantPopupBias == @"fixed-left");
    v53 = &v78;
    v18 = v11;
    v52 = v18;
    v54 = 0;
    v55 = v16;
    v56 = 0;
    v57 = v14;
    [subtrees2 enumerateObjectsUsingBlock:v51];

    geometry = [v18 geometry];
    [geometry displayFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    geometry2 = [v18 geometry];
    [geometry2 setDisplayFrame:{v15 + v21, v23 + 0.0, v25 - (v15 + v13), v27 - (0.0 + 0.0)}];

    geometry3 = [v18 geometry];
    LODWORD(geometry2) = [geometry3 popupBias];

    if (geometry2 == 2)
    {
      variantGeometries = [v18 variantGeometries];
      if (variantPopupBias == v50)
      {
        lastObject = [variantGeometries lastObject];

        variantGeometries2 = [v18 variantGeometries];
        [variantGeometries2 firstObject];
      }

      else
      {
        lastObject = [variantGeometries firstObject];

        variantGeometries2 = [v18 variantGeometries];
        [variantGeometries2 lastObject];
      }
      v33 = ;

      [lastObject frame];
      MinX = CGRectGetMinX(v82);
      geometry4 = [v18 geometry];
      [geometry4 displayFrame];
      v36 = CGRectGetMinX(v83);

      [v33 frame];
      MaxX = CGRectGetMaxX(v84);
      geometry5 = [v18 geometry];
      [geometry5 displayFrame];
      v39 = CGRectGetMaxX(v85);

      geometry6 = [v18 geometry];
      [geometry6 displayFrame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      geometry7 = [v18 geometry];
      [geometry7 setDisplayFrame:{(MinX - v36 + MaxX - v39) * 0.5 + v42, v44 + 0.0, v46 - ((MinX - v36 + MaxX - v39) * 0.5 - (MinX - v36 + MaxX - v39) * 0.5), v48}];
    }
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
}

void __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 variantGeometries];
  v34 = [v9 objectAtIndex:a3];

  LODWORD(v9) = [v8 displayType];
  [v34 frame];
  v14 = v12;
  if (v9 == 50)
  {
    [*(a1 + 40) emojiPopupDividerKeyOffset];
    *(*(*(a1 + 48) + 8) + 24) = v14 * v15;
    v16 = *(*(*(a1 + 48) + 8) + 24);
    v17 = *(*(a1 + 56) + 8);
    if (*(a1 + 80) == 1)
    {
      *(v17 + 40) = v16;
      [v34 frame];
      MidX = CGRectGetMidX(v36);
      v19 = [*(a1 + 32) geometry];
      [v19 frame];
      v20 = MidX > CGRectGetMidX(v37);
    }

    else
    {
      *(v17 + 56) = v16;
      [v34 frame];
      v29 = CGRectGetMidX(v38);
      v19 = [*(a1 + 32) geometry];
      [v19 frame];
      v20 = v29 >= CGRectGetMidX(v39);
    }

    *(*(*(a1 + 64) + 8) + 24) = v20;

    [v34 applyInsets:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
    *(*(*(a1 + 72) + 8) + 24) = a3;
    *a4 = 1;
  }

  else if (CGRectIsEmpty(*&v10))
  {
    v21 = [*(a1 + 32) variantGeometries];
    v22 = v21;
    if (a3)
    {
      v23 = [v21 objectAtIndex:a3 - 1];

      v24 = [v23 copy];
      [v23 frame];
      v26 = v25;
      [v23 frame];
      v28 = -v27;
    }

    else
    {
      v23 = [v21 objectAtIndex:1];

      v24 = [v23 copy];
      [v23 frame];
      v26 = -v30;
      [v23 frame];
      v28 = v31;
    }

    [v24 applyInsets:{0.0, v26, 0.0, v28}];
    v32 = [*(a1 + 32) variantGeometries];
    v33 = [v32 mutableCopy];

    [v33 replaceObjectAtIndex:a3 withObject:v24];
    [*(a1 + 32) setVariantGeometries:v33];
  }
}

void __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ((((*(*(*(a1 + 40) + 8) + 24) < a3) ^ *(a1 + 80)) & 1) == 0)
  {
    v8 = v5;
    v6 = [*(a1 + 32) variantGeometries];
    v7 = [v6 objectAtIndex:a3];

    [v7 applyInsets:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v5 = v8;
  }
}

- (UIKBRenderFactory)initWithRenderingContext:(id)context skipLayoutSegments:(BOOL)segments
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = UIKBRenderFactory;
  v8 = [(UIKBRenderFactory *)&v21 init];
  if (v8)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    *(v8 + 6) = v10;

    v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v11 preferencesActions];
    [preferencesActions rivenSizeFactor:1.0];
    *(v8 + 4) = v13;

    __asm { FMOV            V0.2D, #1.0 }

    *(v8 + 56) = _Q0;
    objc_storeStrong(v8 + 1, context);
    v8[75] = 0;
    if (!segments)
    {
      [v8 setupLayoutSegments];
    }

    v8[72] = _AXSEnhanceTextLegibilityEnabled() != 0;
    if (_AXSEnhanceBackgroundContrastEnabled())
    {
      v19 = 1;
    }

    else
    {
      v19 = _AXDarkenSystemColors() != 0;
    }

    v8[73] = v19;
  }

  return v8;
}

- (double)RivenFactor:(double)factor
{
  v3 = round(self->_rivenSizeFactor * factor);
  if (factor == 1.0)
  {
    rivenSizeFactor = self->_rivenSizeFactor;
  }

  else
  {
    rivenSizeFactor = v3;
  }

  return self->_stretchFactor.height * rivenSizeFactor;
}

- (CGPoint)RivenPointFactor:(CGPoint)factor
{
  y = factor.y;
  [(UIKBRenderFactory *)self RivenFactor:factor.x];
  v6 = v5;
  [(UIKBRenderFactory *)self RivenFactor:y];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)scaleTraits:(id)traits
{
  v34 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  geometry = [traitsCopy geometry];
  [geometry roundRectRadius];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v7 = v6;
  geometry2 = [traitsCopy geometry];
  [geometry2 setRoundRectRadius:v7];

  symbolStyle = [traitsCopy symbolStyle];
  [symbolStyle fontSize];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v11 = v10;
  symbolStyle2 = [traitsCopy symbolStyle];
  [symbolStyle2 setFontSize:v11];

  symbolStyle3 = [traitsCopy symbolStyle];
  [symbolStyle3 minFontSize];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v15 = v14;
  symbolStyle4 = [traitsCopy symbolStyle];
  [symbolStyle4 setMinFontSize:v15];

  symbolStyle5 = [traitsCopy symbolStyle];
  [symbolStyle5 kerning];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v19 = v18;
  symbolStyle6 = [traitsCopy symbolStyle];
  [symbolStyle6 setKerning:v19];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  secondarySymbolStyles = [traitsCopy secondarySymbolStyles];
  v22 = [secondarySymbolStyles countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(secondarySymbolStyles);
        }

        v26 = *(*(&v29 + 1) + 8 * i);
        [v26 fontSize];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [v26 setFontSize:?];
        [v26 kerning];
        [(UIKBRenderFactory *)self RivenFactor:?];
        [v26 setKerning:?];
        [v26 textOffset];
        [(UIKBRenderFactory *)self RivenPointFactor:?];
        [v26 setTextOffset:?];
      }

      v23 = [secondarySymbolStyles countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  variantTraits = [traitsCopy variantTraits];

  if (variantTraits)
  {
    variantTraits2 = [traitsCopy variantTraits];
    [(UIKBRenderFactory *)self scaleTraits:variantTraits2];
  }
}

- (void)lowQualityTraits:(id)traits
{
  traitsCopy = traits;
  if ([traitsCopy blurBlending])
  {
    lowQualityLayeredBackgroundColorName = [(UIKBRenderFactory *)self lowQualityLayeredBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:lowQualityLayeredBackgroundColorName];
    [traitsCopy setLayeredBackgroundGradient:v5];
  }

  variantTraits = [traitsCopy variantTraits];

  if (variantTraits)
  {
    variantTraits2 = [traitsCopy variantTraits];
    [(UIKBRenderFactory *)self lowQualityTraits:variantTraits2];
  }
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  v5 = +[UIKBRenderTraits emptyTraits];
  [keyplaneCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [keyplaneCopy frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [UIKBRenderGeometry geometryWithFrame:v7 paddedFrame:v9, v11, v13, v15, v17, v19, v21];
  [v5 setGeometry:v22];

  [v5 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];

  return v5;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v5 = +[UIKBRenderTraits emptyTraits];
  shape = [keyCopy shape];

  v7 = [UIKBRenderGeometry geometryWithShape:shape];
  [v5 setGeometry:v7];

  return v5;
}

- (void)customizeLanguageIndicatorTraitsForTraits:(id)traits
{
  traitsCopy = traits;
  defaultKeyBackgroundColorName = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v5 = [UIKBGradient gradientWithFlatColor:defaultKeyBackgroundColorName];
  [traitsCopy setBackgroundGradient:v5];

  [(UIKBRenderFactory *)self keyCornerRadius];
  v7 = v6;
  geometry = [traitsCopy geometry];
  [geometry setRoundRectRadius:v7];

  [traitsCopy setBlurBlending:1];
}

- (void)customizeMicOnTraitsForTraits:(id)traits lightKeyboard:(BOOL)keyboard keyState:(int)state
{
  keyboardCopy = keyboard;
  traitsCopy = traits;
  if (state == 4)
  {
    v15 = traitsCopy;
    v9 = UIKBMicOnDarkModeBackgroundColor;
    if (keyboardCopy)
    {
      v9 = UIKBMicOnLightModeBackgroundColor;
      v10 = UIKBMicOnLightModeGlyphColor;
    }

    else
    {
      v10 = UIKBMicOnDarkModeGlyphColor;
    }

    v11 = [UIKBGradient gradientWithFlatColor:*v9];
    v12 = *v10;
    symbolStyle = [v15 symbolStyle];
    [symbolStyle setTextColor:v12];

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v12) = [renderConfig colorAdaptiveBackground];

    if (v12)
    {
      [v15 setLayeredForegroundGradient:v11];
    }

    else
    {
      [v15 setBackgroundGradient:v11];
    }

    traitsCopy = v15;
  }
}

- (BOOL)shouldOverlayTraitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  if (![keyCopy dynamicLayout])
  {
    goto LABEL_27;
  }

  if ([keyCopy displayType] == 21 || objc_msgSend(keyCopy, "displayType") == 18 || objc_msgSend(keyCopy, "displayType") == 3 || objc_msgSend(keyCopy, "displayType") == 5 || objc_msgSend(keyCopy, "displayType") == 26 || objc_msgSend(keyCopy, "displayType") == 53 || objc_msgSend(keyCopy, "displayType") == 32 || objc_msgSend(keyCopy, "displayType") == 33 || objc_msgSend(keyCopy, "interactionType") == 44 || objc_msgSend(keyCopy, "interactionType") == 41 || objc_msgSend(keyCopy, "interactionType") == 38 || objc_msgSend(keyCopy, "interactionType") == 9 || objc_msgSend(keyCopy, "interactionType") == 10 || objc_msgSend(keyCopy, "interactionType") == 14 || objc_msgSend(keyCopy, "interactionType") == 12 || objc_msgSend(keyCopy, "interactionType") == 17 || (objc_msgSend(keyCopy, "usesControlKeyAppearance") & 1) != 0 || objc_msgSend(keyCopy, "displayType") == 4 && -[UIKBRenderFactory shouldOverlayDictationKey:onKeyplane:](self, "shouldOverlayDictationKey:onKeyplane:", keyCopy, keyplaneCopy) || -[UIKBRenderFactory shouldOverlayAlternateTagKey:onKeyplane:](self, "shouldOverlayAlternateTagKey:onKeyplane:", keyCopy, keyplaneCopy))
  {
    goto LABEL_22;
  }

  if ([keyCopy displayType] != 20)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if ([keyCopy interactionType] != 4 && objc_msgSend(keyCopy, "interactionType"))
  {
    name = [keyCopy name];
    v8 = [name hasSuffix:@"Dot"];

    goto LABEL_28;
  }

LABEL_22:
  v8 = 1;
LABEL_28:

  return v8;
}

- (id)traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v80 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v8 = [(UIKBRenderFactory *)self _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  v9 = MEMORY[0x1E695F058];
  if (self->_suppressSegmentTraits)
  {
    segmentTraits = 0;
  }

  else
  {
    segmentTraits = [(UIKBRenderFactory *)self segmentTraits];
  }

  v12 = *v9;
  v11 = v9[1];
  v14 = v9[2];
  v13 = v9[3];
  if ([segmentTraits count])
  {
    if (![keyplaneCopy isSplit] || (objc_msgSend(keyplaneCopy, "isGenerated") & 1) != 0 || (-[UIKBRenderFactory RivenFactor:](self, "RivenFactor:", 1.0), v15 <= 1.0))
    {
      [keyplaneCopy frame];
      v12 = v24;
      v11 = v25;
      v27 = v26;
      v29 = v28;
      [keyCopy frame];
    }

    else
    {
      [keyplaneCopy originalFrame];
      v85.origin.x = v16;
      v85.origin.y = v17;
      v85.size.width = v18;
      v85.size.height = v19;
      v82.origin.x = v12;
      v82.origin.y = v11;
      v82.size.width = v14;
      v82.size.height = v13;
      if (CGRectEqualToRect(v82, v85))
      {
        [keyplaneCopy frame];
      }

      else
      {
        [keyplaneCopy originalFrame];
      }

      v66 = v20;
      v67 = v21;
      v27 = v22;
      v29 = v23;
      [keyCopy originalFrame];
      v86.origin.x = v68;
      v86.origin.y = v69;
      v86.size.width = v70;
      v86.size.height = v71;
      v84.origin.x = v12;
      v84.origin.y = v11;
      v84.size.width = v14;
      v84.size.height = v13;
      if (CGRectEqualToRect(v84, v86))
      {
        [keyCopy frame];
      }

      else
      {
        [keyCopy originalFrame];
      }

      v12 = v66;
      v11 = v67;
    }

    v34 = v30 + v32 * 0.5;
    v35 = v31 + v33 * 0.5;
    v13 = v29;
    v14 = v27;
  }

  else
  {
    v34 = *MEMORY[0x1E695EFF8];
    v35 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [keyCopy frame];
  if (!CGRectIsEmpty(v83) || [keyCopy dynamicLayout])
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    handBias = [renderingContext handBias];

    if (handBias)
    {
      [keyplaneCopy primaryKeylayoutOffset];
      v12 = v38;
      [keyplaneCopy primaryKeylayoutWidthRatio];
      v14 = v14 * v39;
    }

    [keyplaneCopy resizingOffset];
    if (v40 > 0.0)
    {
      [keyplaneCopy resizingOffset];
      v11 = v41;
      [keyplaneCopy resizingOffset];
      v13 = v13 - v42;
    }

    if (!_UISolariumEnabled() || (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v43 = objc_claimAutoreleasedReturnValue(), [v43 preferencesActions], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "colorAdaptiveKeyboardEnabled"), v44, v43, (v45 & 1) == 0))
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = segmentTraits;
      v46 = segmentTraits;
      v47 = [v46 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (!v47)
      {
        goto LABEL_35;
      }

      v48 = v47;
      v49 = *v76;
      while (1)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v75 + 1) + 8 * i);
          if ([v51 keyStates])
          {
            keyStates = [v51 keyStates];
            if (([keyCopy state] & keyStates) == 0)
            {
              continue;
            }
          }

          if (![keyCopy dynamicLayout])
          {
            if (![v51 containsPoint:keyplaneCopy inRect:v34 withKeyplane:{v35, v12, v11, v14, v13}])
            {
              continue;
            }

LABEL_32:
            traits = [v51 traits];
            [v8 overlayWithTraits:traits];

            continue;
          }

          if ([(UIKBRenderFactory *)self shouldOverlayTraitsForKey:keyCopy onKeyplane:keyplaneCopy])
          {
            goto LABEL_32;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v75 objects:v79 count:16];
        if (!v48)
        {
LABEL_35:

          segmentTraits = v73;
          break;
        }
      }
    }
  }

  name = [keyCopy name];
  if ([name hasSuffix:@"LanguageIndicator"])
  {
    blendForm = [v8 blendForm];

    if (blendForm != 3)
    {
      [(UIKBRenderFactory *)self customizeLanguageIndicatorTraitsForTraits:v8];
    }
  }

  else
  {
  }

  if ([keyCopy interactionType] == 5)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    -[UIKBRenderFactory customizeMicOnTraitsForTraits:lightKeyboard:keyState:](self, "customizeMicOnTraitsForTraits:lightKeyboard:keyState:", v8, [renderConfig lightKeyboard], objc_msgSend(keyCopy, "state"));
  }

  if (+[UIKBRenderFactory _graphicsQuality]== 10)
  {
    [(UIKBRenderFactory *)self lowQualityTraits:v8];
  }

  if (!-[UIKBRenderFactory lightweightFactory](self, "lightweightFactory") && [keyCopy displayTypeHint] != 12)
  {
    geometry = [v8 geometry];
    symbolStyle = [v8 symbolStyle];
    controlOpacities = [v8 controlOpacities];
    blendForm2 = [v8 blendForm];
    v59 = segmentTraits;
    blurBlending = [v8 blurBlending];
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    v62 = symbolStyle;
    v63 = blurBlending;
    segmentTraits = v59;
    v64 = [(UIKBRenderFactory *)self traitsHashStringForKey:keyCopy withGeometry:geometry withSymbolStyle:symbolStyle controlOpacities:controlOpacities blendForm:blendForm2 blurBlending:v63 renderConfig:renderConfig2];
    [v8 setHashString:v64];
  }

  self->_suppressSegmentTraits = 0;

  return v8;
}

- (NSString)shortClassNameForCaching
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 substringFromIndex:{objc_msgSend(@"UIKBRenderFactory", "length")}];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"ortrait" withString:&stru_1EFB14550];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"andscape" withString:&stru_1EFB14550];

  return v6;
}

- (BOOL)keyIsRightToLeftSensitive:(id)sensitive
{
  isRightToLeftSensitive = [sensitive isRightToLeftSensitive];
  if (isRightToLeftSensitive)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    currentLinguisticInputMode = [v4 currentLinguisticInputMode];
    isDefaultRightToLeft = [currentLinguisticInputMode isDefaultRightToLeft];

    LOBYTE(isRightToLeftSensitive) = isDefaultRightToLeft;
  }

  return isRightToLeftSensitive;
}

- (id)traitsHashStringForKey:(id)key withGeometry:(id)geometry withSymbolStyle:(id)style controlOpacities:(BOOL)opacities blendForm:(int64_t)form blurBlending:(BOOL)blending renderConfig:(id)config
{
  blendingCopy = blending;
  opacitiesCopy = opacities;
  configCopy = config;
  styleCopy = style;
  geometryCopy = geometry;
  keyCopy = key;
  displayType = [keyCopy displayType];
  if (displayType - 7 >= 2)
  {
    v20 = displayType;
  }

  else
  {
    v20 = 0;
  }

  [geometryCopy displayFrame];
  v22 = v21;
  v24 = v23;
  [geometryCopy displayInsets];
  v26 = v25;
  [geometryCopy displayInsets];
  v28 = v27;
  [geometryCopy displayInsets];
  v30 = v29;
  [geometryCopy displayInsets];
  v76 = CFStringCreateWithFormat(0, 0, @"{%.*g,%.*g,%.*g,%.*g}", 2, v26, 2, v28, 2, v30, 2, v31);
  v68 = MEMORY[0x1E695DF70];
  shortClassNameForCaching = [(UIKBRenderFactory *)self shortClassNameForCaching];
  hashStringElement = [(UIKBRenderFactory *)self hashStringElement];
  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
  v72 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configCopy, "colorAdaptiveBackground")}];
  v71 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configCopy, "animatedBackground")}];
  v32 = MEMORY[0x1E696AD98];
  controlKeyBackgroundColorName = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
  v66 = [v32 numberWithInt:{objc_msgSend(controlKeyBackgroundColorName, "hash")}];
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", keyCopy)}];
  v63 = [MEMORY[0x1E696AD98] numberWithBool:opacitiesCopy];
  v61 = [MEMORY[0x1E696AD98] numberWithBool:blendingCopy];
  v60 = [MEMORY[0x1E696AD98] numberWithInteger:form];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", keyCopy)}];
  v34 = [keyCopy numberForProperty:@"KBinteractionType"];
  v64 = v34;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = &unk_1EFE31180;
  }

  v58 = v35;
  v36 = [keyCopy numberForProperty:@"rendering"];
  v62 = v36;
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = &unk_1EFE31180;
  }

  v57 = v37;
  v38 = [keyCopy numberForProperty:@"state"];

  v59 = v38;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = &unk_1EFE31180;
  }

  v56 = v39;
  v40 = MEMORY[0x1E696AD98];
  [geometryCopy roundRectRadius];
  v55 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  roundRectCorners = [geometryCopy roundRectCorners];

  v54 = [v41 numberWithUnsignedInteger:roundRectCorners & 0xF];
  v43 = MEMORY[0x1E696AD98];
  anchorCorner = [styleCopy anchorCorner];

  v45 = [v43 numberWithUnsignedInteger:anchorCorner & 0xF];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  v48 = MEMORY[0x1E696AD98];
  usesCompactKeycapsFont = [configCopy usesCompactKeycapsFont];

  v50 = [v48 numberWithBool:usesCompactKeycapsFont];
  v69 = [v68 arrayWithObjects:{shortClassNameForCaching, hashStringElement, v73, v72, v71, v66, v65, v63, v61, v60, v33, v58, v57, v56, v55, v54, v76, v45, v46, v47, v50, 0}];

  v51 = [[UIKBCacheToken alloc] initWithComponents:v69 name:0];
  string = [(UIKBCacheToken *)v51 string];

  return string;
}

- (id)returnKeyImageNameForKey:(id)key
{
  v3 = [key displayTypeHint] - 1;
  if (v3 > 0xA)
  {
    return @"return";
  }

  else
  {
    return off_1E7114320[v3];
  }
}

- (id)keyImageNameWithSkinnyVariation:(id)variation
{
  variationCopy = variation;
  displayType = [variationCopy displayType];
  interactionType = [variationCopy interactionType];
  if (displayType == 3 || interactionType == 4)
  {
    if ([variationCopy state] < 4)
    {
      [(UIKBRenderFactory *)self deleteKeyImageName];
    }

    else
    {
      [(UIKBRenderFactory *)self deleteOnKeyImageName];
    }
  }

  else
  {
    if (displayType != 23 || (UIKBShiftKeyStringForActiveInputMode(variationCopy), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = 0;
      goto LABEL_11;
    }

    if ([variationCopy state] <= 3)
    {
      shiftKeyImageName = [(UIKBRenderFactory *)self shiftKeyImageName];
      goto LABEL_10;
    }

    if ([variationCopy state] == 8)
    {
      [(UIKBRenderFactory *)self shiftLockImageName];
    }

    else
    {
      [(UIKBRenderFactory *)self shiftOnKeyImageName];
    }
  }
  shiftKeyImageName = ;
LABEL_10:
  v8 = shiftKeyImageName;
LABEL_11:

  return v8;
}

- (id)displayContentsForKey:(id)key
{
  v120[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = +[UIKBKeyDisplayContents displayContents];
  v6 = +[UIKBKeyDisplayContents displayContents];
  [v5 setFallbackContents:v6];

  displayType = [keyCopy displayType];
  interactionType = [keyCopy interactionType];
  v9 = interactionType;
  if (displayType == 3 || interactionType == 4)
  {
    [v5 setDisplayPathType:2];
    v14 = [(UIKBRenderFactory *)self keyImageNameWithSkinnyVariation:keyCopy];
    [v5 setDisplayStringImage:v14];

    displayString = [keyCopy displayString];
    [v5 setDisplayString:displayString];
LABEL_11:

    [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", keyCopy)}];
    goto LABEL_39;
  }

  if (displayType <= 22)
  {
    if (displayType == 5)
    {
      if ([keyCopy displayTypeHint] != 11)
      {
        dismissKeyImageName = [(UIKBRenderFactory *)self dismissKeyImageName];
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    if (displayType == 13)
    {
      representedString = [keyCopy representedString];
      v17 = [representedString isEqualToString:@"EmojiInternational"];

      if (!v17)
      {
        overrideDisplayString = [keyCopy overrideDisplayString];
        v25 = [overrideDisplayString isEqualToString:@"emoji"];

        if (!v25)
        {
          dismissKeyImageName = [(UIKBRenderFactory *)self globalKeyImageName];
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      displayString2 = [keyCopy displayString];

      if (displayString2 != @"")
      {
        if ([keyCopy displayTypeHint] != 11)
        {
          [v5 setStringKeycapOverImage:1];
          goto LABEL_18;
        }

        goto LABEL_20;
      }

LABEL_26:
      dismissKeyImageName = [(UIKBRenderFactory *)self handwritingMoreKeyImageName];
      goto LABEL_36;
    }
  }

  else
  {
    switch(displayType)
    {
      case 0x35:
        goto LABEL_20;
      case 0x25:
        goto LABEL_39;
      case 0x17:
        v10 = UIKBShiftKeyStringForActiveInputMode(keyCopy);

        if (v10)
        {
LABEL_18:
          displayString3 = [keyCopy displayString];
          [v5 setDisplayString:displayString3];
LABEL_38:

          goto LABEL_39;
        }

        [v5 setDisplayPathType:1];
        v11 = [(UIKBRenderFactory *)self keyImageNameWithSkinnyVariation:keyCopy];
        [v5 setDisplayStringImage:v11];

        displayStringImage = [v5 displayStringImage];
        fallbackContents = [v5 fallbackContents];
        [fallbackContents setDisplayStringImage:displayStringImage];

LABEL_9:
        goto LABEL_18;
    }
  }

  displayString4 = [keyCopy displayString];

  if (displayString4 == @"")
  {
    goto LABEL_26;
  }

  if ([keyCopy interactionType] == 44)
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    displayString3 = [renderConfig imageNameForType:displayType];

    if (!displayString3)
    {
      if ([keyCopy displayType] == 4)
      {
        [keyCopy setInteractionType:5];
        dictationKeyImageName = [(UIKBRenderFactory *)self dictationKeyImageName];
        [v5 setDisplayStringImage:dictationKeyImageName];
      }

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (displayType == 4 || [keyCopy interactionType] == 5)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    displayString3 = [renderConfig2 imageNameForType:displayType];

    if (displayString3)
    {
      [keyCopy setInteractionType:44];
LABEL_37:
      [v5 setDisplayStringImage:displayString3];
      goto LABEL_38;
    }

    dismissKeyImageName = [(UIKBRenderFactory *)self dictationKeyImageName];
LABEL_36:
    displayString3 = dismissKeyImageName;
    goto LABEL_37;
  }

  if (displayType <= 43)
  {
    if (displayType != 9)
    {
      if (displayType == 42)
      {
        cutKeyImageName = [(UIKBRenderFactory *)self cutKeyImageName];
        goto LABEL_113;
      }

      if (displayType == 43)
      {
        cutKeyImageName = [(UIKBRenderFactory *)self copyKeyImageName];
LABEL_113:
        displayStringImage = cutKeyImageName;
        [v5 setDisplayStringImage:cutKeyImageName];
        goto LABEL_9;
      }

      goto LABEL_104;
    }

LABEL_29:
    dismissKeyImageName = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
    goto LABEL_36;
  }

  switch(displayType)
  {
    case ',':
      cutKeyImageName = [(UIKBRenderFactory *)self pasteKeyImageName];
      goto LABEL_113;
    case '.':
      dismissKeyImageName = [(UIKBRenderFactory *)self rightArrowKeyImageName];
      goto LABEL_36;
    case '-':
      dismissKeyImageName = [(UIKBRenderFactory *)self leftArrowKeyImageName];
      goto LABEL_36;
  }

LABEL_104:
  switch(v9)
  {
    case 0x1Cu:
      cutKeyImageName = [(UIKBRenderFactory *)self boldKeyImageName];
      goto LABEL_113;
    case 0x11u:
      if ([keyCopy displayTypeHint] != 11)
      {
        displayString5 = [keyCopy displayString];
        if ([displayString5 isEqualToString:@"undo"])
        {
          renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
          colorAdaptiveBackground = [renderConfig3 colorAdaptiveBackground];

          if (colorAdaptiveBackground)
          {
LABEL_120:
            undoKeyImageName = [(UIKBRenderFactory *)self undoKeyImageName];
            goto LABEL_121;
          }

          displayString5 = [keyCopy displayString];
          [v5 setDisplayString:displayString5];
        }

        goto LABEL_120;
      }

LABEL_20:
      dismissKeyImageName = [(UIKBRenderFactory *)self messagesWriteboardKeyImageName];
      goto LABEL_36;
    case 0xCu:
      displayString6 = [keyCopy displayString];
      if ([displayString6 isEqualToString:@"redo"])
      {
        renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground2 = [renderConfig4 colorAdaptiveBackground];

        if (colorAdaptiveBackground2)
        {
LABEL_111:
          undoKeyImageName = [(UIKBRenderFactory *)self redoKeyImageName];
LABEL_121:
          displayString = undoKeyImageName;
          [v5 setDisplayStringImage:undoKeyImageName];
          goto LABEL_11;
        }

        displayString6 = [keyCopy displayString];
        [v5 setDisplayString:displayString6];
      }

      goto LABEL_111;
  }

  v74 = v9;
  if (displayType <= 32)
  {
    if (displayType > 30)
    {
      if (displayType == 31)
      {
        overrideDisplayString2 = [keyCopy overrideDisplayString];
        if (overrideDisplayString2)
        {
        }

        else
        {
          displayString7 = [keyCopy displayString];
          v106 = [displayString7 isEqualToString:@"゛゜小"];

          if (!v106)
          {
            goto LABEL_129;
          }
        }

        [v5 setDisplayString:@"小"];
        [v5 setSecondaryDisplayStrings:&unk_1EFE2C598];
        goto LABEL_168;
      }

      multitapCompleteKeyImageName = [(UIKBRenderFactory *)self multitapCompleteKeyImageName];
LABEL_148:
      displayImage = multitapCompleteKeyImageName;
      [v5 setDisplayStringImage:multitapCompleteKeyImageName];
      goto LABEL_167;
    }

    if (displayType == 7)
    {
      secondaryDisplayStrings = [keyCopy secondaryDisplayStrings];
      v85 = [secondaryDisplayStrings count];

      if (v85)
      {
        goto LABEL_142;
      }

      overrideDisplayString3 = [keyCopy overrideDisplayString];
      v103 = overrideDisplayString3;
      if (overrideDisplayString3)
      {
        displayString8 = overrideDisplayString3;
      }

      else
      {
        displayString8 = [keyCopy displayString];
      }

      displayImage = displayString8;

      if ([displayImage length] != 2)
      {
        _firstGrapheme = [displayImage _firstGrapheme];
        [v5 setDisplayString:_firstGrapheme];
        v101 = [displayImage substringFromIndex:{objc_msgSend(_firstGrapheme, "length")}];
        v118 = v101;
        v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
        [v5 setSecondaryDisplayStrings:v109];

        goto LABEL_165;
      }

      v108 = [displayImage substringToIndex:1];
      [v5 setDisplayString:v108];

      _firstGrapheme = [displayImage substringFromIndex:1];
      v119 = _firstGrapheme;
      v98 = MEMORY[0x1E695DEC8];
      v99 = &v119;
LABEL_164:
      v101 = [v98 arrayWithObjects:v99 count:1];
      [v5 setSecondaryDisplayStrings:v101];
LABEL_165:

      goto LABEL_166;
    }

    if (displayType != 20)
    {
      goto LABEL_142;
    }

    overrideDisplayString4 = [keyCopy overrideDisplayString];
    v78 = overrideDisplayString4;
    if (overrideDisplayString4)
    {
      displayString9 = overrideDisplayString4;
    }

    else
    {
      displayString9 = [keyCopy displayString];
    }

    displayImage = displayString9;

    displayString10 = [keyCopy displayString];
    v93 = [displayString10 rangeOfString:@"/"];

    displayString11 = [keyCopy displayString];
    v95 = [displayString11 length];

    if (v93 == 0x7FFFFFFFFFFFFFFFLL || v95 < 2)
    {
      [v5 setDisplayString:displayImage];
      if (v93 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v96 = [displayImage substringToIndex:v93];
      [v5 setDisplayString:v96];
    }

    if (v93 + 1 < v95)
    {
      _firstGrapheme = [displayImage substringFromIndex:?];
      v120[0] = _firstGrapheme;
      v98 = MEMORY[0x1E695DEC8];
      v99 = v120;
      goto LABEL_164;
    }

LABEL_161:
    _firstGrapheme = [keyCopy secondaryDisplayStrings];
    [v5 setSecondaryDisplayStrings:_firstGrapheme];
LABEL_166:

    goto LABEL_167;
  }

  if (displayType <= 48)
  {
    if (displayType == 33)
    {
      multitapCompleteKeyImageName = [(UIKBRenderFactory *)self muttitapReverseKeyImageName];
      goto LABEL_148;
    }

    if (displayType != 34)
    {
      goto LABEL_142;
    }

    overrideDisplayString5 = [keyCopy overrideDisplayString];
    v82 = overrideDisplayString5;
    if (overrideDisplayString5)
    {
      displayString12 = overrideDisplayString5;
    }

    else
    {
      displayString12 = [keyCopy displayString];
    }

    displayImage = displayString12;

    _firstGrapheme2 = [displayImage _firstGrapheme];
    [v5 setDisplayString:_firstGrapheme2];

    _firstGrapheme = [displayImage _lastGrapheme];
    v117 = _firstGrapheme;
    v98 = MEMORY[0x1E695DEC8];
    v99 = &v117;
    goto LABEL_164;
  }

  switch(displayType)
  {
    case '9':
      displayImage = [keyCopy displayImage];
      [v5 setDisplayImage:displayImage];
      goto LABEL_167;
    case '2':
      [v5 setDisplayPathType:4];
      goto LABEL_168;
    case '1':
      biuKeyImageName = [(UIKBRenderFactory *)self biuKeyImageName];
      [v5 setDisplayStringImage:biuKeyImageName];

LABEL_129:
      displayImage = [keyCopy displayString];
      [v5 setDisplayString:displayImage];
LABEL_167:

      goto LABEL_168;
  }

LABEL_142:
  representedString2 = [keyCopy representedString];
  v87 = [representedString2 isEqualToString:@"‌"];

  if (v87)
  {
    multitapCompleteKeyImageName = [(UIKBRenderFactory *)self ZWNJKeyImageName];
    goto LABEL_148;
  }

  displayString13 = [keyCopy displayString];
  v90 = [displayString13 isEqualToString:@"Search"];

  if (!v90)
  {
    overrideDisplayString6 = [keyCopy overrideDisplayString];
    if (overrideDisplayString6)
    {
      [v5 setDisplayString:overrideDisplayString6];
    }

    else
    {
      displayString14 = [keyCopy displayString];
      [v5 setDisplayString:displayString14];
    }

    displayImage = [keyCopy secondaryDisplayStrings];
    [v5 setSecondaryDisplayStrings:displayImage];
    goto LABEL_167;
  }

  [v5 setDisplayStringImage:@"magnifyingglass"];
LABEL_168:
  v9 = v74;
LABEL_39:
  if ([keyCopy state] == 16 && (v9 > 0x10 || ((1 << v9) & 0x10260) == 0) && objc_msgSend(keyCopy, "variantType") != 12 && objc_msgSend(keyCopy, "variantType") != 13 && (!_os_feature_enabled_impl() || objc_msgSend(keyCopy, "variantType") != 10 && objc_msgSend(keyCopy, "variantType") != 11))
  {
    v110 = v9;
    v32 = MEMORY[0x1E695DF70];
    subtrees = [keyCopy subtrees];
    v34 = [v32 arrayWithCapacity:{objc_msgSend(subtrees, "count")}];

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    subtrees2 = [keyCopy subtrees];
    v36 = [subtrees2 countByEnumeratingWithState:&v111 objects:v116 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v112;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v112 != v38)
          {
            objc_enumerationMutation(subtrees2);
          }

          v40 = [(UIKBRenderFactory *)self displayContentsForKey:*(*(&v111 + 1) + 8 * i)];
          [v34 addObject:v40];
        }

        v37 = [subtrees2 countByEnumeratingWithState:&v111 objects:v116 count:16];
      }

      while (v37);
    }

    [v5 setVariantDisplayContents:v34];
    highlightedVariantsList = [keyCopy highlightedVariantsList];
    if ([keyCopy selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(keyCopy, "selectedVariantIndex")}];
      v43 = v42;
      if (highlightedVariantsList)
      {
        v44 = [highlightedVariantsList mutableCopy];
        if ([v44 containsObject:v43])
        {
          [v44 removeObject:v43];
        }

        else
        {
          [v44 addObject:v43];
        }
      }

      else
      {
        v115 = v42;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
      }

      highlightedVariantsList = v44;
    }

    v9 = v110;
    [v5 setHighlightedVariantsList:highlightedVariantsList];
    if ([(UIKBRenderFactory *)self shouldClearBaseDisplayStringForVariants:keyCopy])
    {
      [v5 setDisplayString:0];
      [v5 setDisplayStringImage:0];
    }
  }

  displayString15 = [v5 displayString];
  if (displayString15)
  {
    displayString16 = [v5 displayString];
    v29 = [displayString16 hasSuffix:@".png"];
  }

  else
  {
    v29 = 0;
  }

  if (displayType == 25 || v9 == 15)
  {
    fallbackContents2 = [v5 fallbackContents];
    [fallbackContents2 setDisplayString:@"␣"];

    goto LABEL_82;
  }

  if (displayType == 21 || v9 == 13)
  {
    [v5 setStringKeycapOverImage:v29 ^ 1u];
    overrideDisplayString7 = [keyCopy overrideDisplayString];
    if (overrideDisplayString7)
    {
      [v5 setDisplayString:overrideDisplayString7];
    }

    else
    {
      displayString17 = [keyCopy displayString];
      [v5 setDisplayString:displayString17];
    }

    fallbackContents3 = [v5 fallbackContents];
    [fallbackContents3 setDisplayString:@"⮐"];

    displayString18 = [v5 displayString];
    v48 = [displayString18 containsString:@"Emoji"];

    if (v48)
    {
      [v5 setForceImageKeycap:1];
      globalEmojiKeyImageName = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
      [v5 setDisplayString:globalEmojiKeyImageName];

      globalEmojiKeyImageName2 = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
LABEL_81:
      v63 = globalEmojiKeyImageName2;
      [v5 setDisplayStringImage:globalEmojiKeyImageName2];

      goto LABEL_82;
    }

    overrideDisplayString8 = [keyCopy overrideDisplayString];
    if (!overrideDisplayString8 || (v52 = overrideDisplayString8, [keyCopy overrideDisplayString], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(keyCopy, "displayString"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v53, "isEqualToString:", v54), v54, v53, v52, (v55 & 1) != 0))
    {
      renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig5 colorAdaptiveBackground])
      {
LABEL_76:

        goto LABEL_77;
      }

      displayString19 = [v5 displayString];
      if ([displayString19 isEqualToString:@"⮐"])
      {

        goto LABEL_76;
      }

      displayString20 = [v5 displayString];
      v62 = [displayString20 isEqualToString:@"⮑"];

      if (v62)
      {
LABEL_77:
        [v5 setStringKeycapOverImage:0];
        v58 = [(UIKBRenderFactory *)self returnKeyImageNameForKey:keyCopy];
        [v5 setDisplayStringImage:v58];

        [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", keyCopy)}];
        renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
        colorAdaptiveBackground3 = [renderConfig6 colorAdaptiveBackground];

        if (colorAdaptiveBackground3)
        {
          [v5 setForceImageKeycap:1];
        }

        goto LABEL_82;
      }
    }

    [v5 setStringKeycapOverImage:1];
    globalEmojiKeyImageName2 = [v5 displayString];
    goto LABEL_81;
  }

LABEL_82:
  if (v29)
  {
    displayString21 = [v5 displayString];
    [v5 setDisplayStringImage:displayString21];
  }

  [(UIKBRenderFactory *)self applyBoldTextForContent:v5 withKey:keyCopy];

  return v5;
}

- (void)applyBoldTextForContent:(id)content withKey:(id)key
{
  contentCopy = content;
  keyCopy = key;
  if (self->_boldTextEnabled)
  {
    displayStringImage = [contentCopy displayStringImage];
    if (!displayStringImage || ([contentCopy forceImageKeycap] & 1) != 0)
    {
      goto LABEL_14;
    }

    if ([keyCopy displayType] == 23)
    {
      if ([keyCopy displayType] != 23)
      {
LABEL_14:

        goto LABEL_15;
      }

      state = [keyCopy state];

      if (state > 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    displayStringImage2 = [contentCopy displayStringImage];
    v10 = [displayStringImage2 copy];
    fallbackContents = [contentCopy fallbackContents];
    [fallbackContents setDisplayStringImage:v10];

    displayStringImage = [contentCopy displayStringImage];
    displayString = [contentCopy displayString];
    if ([displayString hasSuffix:@".png"])
    {
      displayStringImage3 = [contentCopy displayStringImage];
      v14 = [displayStringImage3 hasPrefix:@"bold_"];

      if (v14)
      {
LABEL_13:
        [contentCopy setDisplayStringImage:displayStringImage];
        goto LABEL_14;
      }

      displayString = [contentCopy displayStringImage];
      v15 = [@"bold_" stringByAppendingString:displayString];

      displayStringImage = v15;
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (BOOL)useBlueThemingForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy displayType] == 21 && ((v4 = objc_msgSend(keyCopy, "displayTypeHint"), v4 <= 0xA) && ((1 << v4) & 0x7EE) != 0 || v4 == 124))
  {
    overrideDisplayString = [keyCopy overrideDisplayString];
    if (overrideDisplayString)
    {
      v6 = overrideDisplayString;
      overrideDisplayString2 = [keyCopy overrideDisplayString];
      displayString = [keyCopy displayString];
      v9 = [overrideDisplayString2 isEqualToString:displayString];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)addLayoutSegment:(id)segment
{
  segmentCopy = segment;
  segmentTraits = self->_segmentTraits;
  v8 = segmentCopy;
  if (!segmentTraits)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_segmentTraits;
    self->_segmentTraits = v6;

    segmentCopy = v8;
    segmentTraits = self->_segmentTraits;
  }

  [(NSMutableArray *)segmentTraits addObject:segmentCopy];
}

+ (id)cacheKeyForString:(id)string withRenderFlags:(int64_t)flags renderConfig:(id)config
{
  configCopy = config;
  stringCopy = string;
  v9 = [UIKBCacheToken alloc];
  v10 = [MEMORY[0x1E695DF70] arrayWithObject:stringCopy];

  v11 = [(UIKBCacheToken *)v9 initWithComponents:v10 name:0];
  v12 = [(UIKBCacheToken *)v11 stringForRenderFlags:flags renderConfig:configCopy];

  return v12;
}

- (id)_defaultControlKeyBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  if (lightKeyboard)
  {
    v4 = +[UIKBRenderFactory _graphicsQuality];
    v5 = UIKBColorKeyGrayKeyLightBackgroundMedium;
    if (v4 == 100)
    {
      v5 = UIKBColorGray_Percent55;
    }
  }

  else
  {
    v5 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v6 = *v5;

  return v6;
}

- (id)lowQualityLayeredBackgroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v4 = UIKBColorWhite;
  if (!lightKeyboard)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)controlKeyForegroundColorName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig emptyBackground])
  {
    goto LABEL_4;
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig2 animatedBackground])
  {

    goto LABEL_4;
  }

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig3 colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    goto LABEL_5;
  }

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig lightKeyboard])
  {
LABEL_4:

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v9 = +[UIKBRenderFactory _graphicsQuality];

  if (v9 != 100)
  {
    goto LABEL_5;
  }

  v5 = @"UIKBColorKeyGrayKeyLightForeground";
LABEL_6:

  return v5;
}

+ (id)segmentedControlColor:(BOOL)color
{
  v3 = UIKBColorKeyGrayKeyLightBackground;
  if (!color)
  {
    v3 = UIKBColorKeyGrayKeyDarkBackground;
  }

  v4 = UIKBGetNamedColor(*v3);

  return [UIColor colorWithCGColor:v4];
}

- (id)lightKeycapsFontName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".Keycaps-Keys";
  }
}

- (id)thinKeycapsFontName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".Keycaps-Popups";
  }
}

- (id)lightPadKeycapsFontName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".KeycapsPad-Keys";
  }
}

- (id)lightTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    return @"UIKBRenderFactoryWordsSystemCompactFontName";
  }

  else
  {
    return @"UIKBRenderFactorySystemFontName";
  }
}

- (id)thinTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    return @"UIKBRenderFactoryWordsSystemCompactFontName";
  }

  else
  {
    return @"UIKBRenderFactorySystemFontName";
  }
}

- (id)lightKeycapsFontFallbackName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".Keycaps-Keys";
  }
}

- (id)thinKeycapsFontFallbackName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".Keycaps-Popups";
  }
}

- (id)lightPadKeycapsFontFallbackName
{
  if (self->_boldTextEnabled)
  {
    return @".PhoneKeyCaps";
  }

  else
  {
    return @".KeycapsPad-Keys";
  }
}

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  rect_24 = traits;
  keyCopy = key;
  fontNameCopy = fontName;
  nameCopy = name;
  contextCopy = context;
  renderConfig = [contextCopy renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];

  v18 = UIKBColorGray_Percent37;
  if (lightKeyboard)
  {
    v18 = UIKBColorWhite;
  }

  v19 = [UIKBGradient gradientWithFlatColor:*v18];
  [rect_24 setBackgroundGradient:v19];

  [rect_24 removeAllRenderEffects];
  renderConfig2 = [contextCopy renderConfig];

  if (![renderConfig2 lightKeyboard])
  {
    goto LABEL_6;
  }

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig3 colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    v23 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha8" offset:0.0 insets:1.0 weight:1.0, 0.5, 0.0, 0.5, 4.5];
    [rect_24 addRenderEffect:v23];

    renderConfig2 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha29" offset:0.0 insets:-1.0 weight:1.0, 0.5, 0.0, 0.5, 4.5];
    [rect_24 addRenderEffect:renderConfig2];
LABEL_6:
  }

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

  v26 = inputSwitcherView;

  renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
  layoutView = [renderingContext2 layoutView];

  [layoutView bounds];
  [layoutView convertRect:0 toView:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  window = [layoutView window];
  [window frame];
  v39 = v38;
  rect = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v84.origin.x = v30;
  v84.origin.y = v32;
  v84.size.width = v34;
  v84.size.height = v36;
  rect_16 = CGRectGetMinY(v84);
  v85.origin.x = v30;
  v85.origin.y = v32;
  v85.size.width = v34;
  v85.size.height = v36;
  rect_8 = CGRectGetMinX(v85);
  v86.origin.x = v39;
  v86.origin.y = v41;
  v86.size.width = v43;
  v86.size.height = v45;
  Height = CGRectGetHeight(v86);
  v87.origin.x = v30;
  v87.origin.y = v32;
  v87.size.width = v34;
  v87.size.height = v36;
  v47 = Height - CGRectGetMaxY(v87);
  v88.origin.x = rect;
  v88.origin.y = v41;
  v88.size.width = v43;
  v88.size.height = v45;
  Width = CGRectGetWidth(v88);
  v89.origin.x = v30;
  v89.origin.y = v32;
  v89.size.width = v34;
  v89.size.height = v36;
  v49 = Width - CGRectGetMaxX(v89);
  geometry = [rect_24 geometry];
  [geometry setLayoutMargins:{rect_16, rect_8, v47, v49}];

  [v26 popupRect];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [keyCopy paddedFrame];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  [layoutView convertRect:v26 fromView:{v52, v54, v56, v58}];
  v93.origin.x = v67;
  v93.origin.y = v68;
  v93.size.width = v69;
  v93.size.height = v70;
  v90.origin.x = v60;
  v90.origin.y = v62;
  v90.size.width = v64;
  v90.size.height = v66;
  v91 = CGRectUnion(v90, v93);
  v92 = CGRectInset(v91, -12.0, -6.0);
  x = v92.origin.x;
  y = v92.origin.y;
  v73 = v92.size.width;
  v74 = v92.size.height;
  geometry2 = [rect_24 geometry];
  [geometry2 setDisplayFrame:{x, y, v73, v74}];

  [rect_24 setBlurBlending:1];
  geometry3 = [rect_24 geometry];
  [geometry3 setPopupBias:40];

  v77 = [UIKBTextStyle styleWithFontName:nameCopy withFallbackFontName:fontNameCopy withFontSize:22.0];

  [rect_24 setSymbolStyle:v77];
  symbolStyle = [rect_24 symbolStyle];
  [symbolStyle setTextColor:@"UIKBColorClear"];

  if (+[UIKBRenderFactory _graphicsQuality]== 10)
  {
    [rect_24 removeAllRenderEffects];
  }
}

+ (id)_characterSetForGlyphSelectors
{
  if (qword_1ED49F110 != -1)
  {
    dispatch_once(&qword_1ED49F110, &__block_literal_global_355);
  }

  v3 = _MergedGlobals_1175;

  return v3;
}

void __51__UIKBRenderFactory__characterSetForGlyphSelectors__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"‘’“”, "}];;
  v1 = _MergedGlobals_1175;
  _MergedGlobals_1175 = v0;
}

+ (BOOL)couldUseGlyphSelectorForDisplayString:(id)string
{
  if (!string)
  {
    return 0;
  }

  stringCopy = string;
  _characterSetForGlyphSelectors = [self _characterSetForGlyphSelectors];
  v6 = [stringCopy rangeOfCharacterFromSet:_characterSetForGlyphSelectors];

  v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  return v7;
}

- (int64_t)glyphSelectorForDisplayString:(id)string
{
  stringCopy = string;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKBRenderFactory_glyphSelectorForDisplayString___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED49F120 != -1)
  {
    dispatch_once(&qword_1ED49F120, block);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = qword_1ED49F118;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__UIKBRenderFactory_glyphSelectorForDisplayString___block_invoke_332;
  v9[3] = &unk_1E71142B8;
  v6 = stringCopy;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __51__UIKBRenderFactory_glyphSelectorForDisplayString___block_invoke()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DF58];
  v1 = _UIKitBundle();
  v2 = [v1 preferredLocalizations];
  v3 = [v2 firstObject];
  v4 = [v0 canonicalLanguageIdentifierFromString:v3];

  v5 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v4];
  v6 = [v5 objectForKey:*MEMORY[0x1E695D9B0]];
  LODWORD(v3) = [v6 isEqualToString:@"zh"];

  if (v3)
  {
    v7 = [objc_opt_class() _characterSetForGlyphSelectors];
    v10 = v7;
    v11[0] = &unk_1EFE31198;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = qword_1ED49F118;
    qword_1ED49F118 = v8;
  }
}

void __51__UIKBRenderFactory_glyphSelectorForDisplayString___block_invoke_332(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) rangeOfCharacterFromSet:a2] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

- (BOOL)popupKeyUsesCustomKeyContentView:(id)view
{
  v3 = [(UIKBRenderFactory *)self contentViewClassNameForPopupKey:view];
  v4 = v3 != 0;

  return v4;
}

- (id)contentViewClassNameForPopupKey:(id)key
{
  keyCopy = key;
  if ([keyCopy variantType] == 12 || objc_msgSend(keyCopy, "variantType") == 13)
  {
    v4 = @"UIKeyboardEmojiFamilyConfigurationView";
  }

  else if (_os_feature_enabled_impl() && ([keyCopy variantType] == 10 || objc_msgSend(keyCopy, "variantType") == 11))
  {
    v4 = @"UIKeyboardEmojiVariantView";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allowsPaddleForKey:(id)key
{
  keyCopy = key;
  if ([(UIKBRenderFactory *)self allowsPaddles])
  {
    v5 = [keyCopy preventPaddle] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)modifyKeyTraitsForPasscode:(id)passcode forKey:(id)key onKeyplane:(id)keyplane
{
  passcodeCopy = passcode;
  keyCopy = key;
  if (([(UIKBRenderFactory *)self _popupStyleForKey:keyCopy]& 1) == 0 && ([(UIKBRenderFactory *)self _popupMenuStyleForKey:keyCopy]& 1) == 0)
  {
    [passcodeCopy setBlendForm:3];
    v8 = [(UIKBRenderFactory *)self useBlueThemingForKey:keyCopy];
    [passcodeCopy removeAllRenderEffects];
    if (!v8)
    {
      [passcodeCopy setBackgroundGradient:0];
      [passcodeCopy setLayeredBackgroundGradient:0];
      [passcodeCopy setLayeredForegroundGradient:0];
      controlKeyTraits = [(UIKBRenderFactory *)self controlKeyTraits];
      [passcodeCopy overlayWithTraits:controlKeyTraits];

      if ([keyCopy displayType] == 25)
      {
        [(UIKBRenderFactory *)self suppressLayoutSegments];
        if (([keyCopy state] & 4) != 0)
        {
          activeControlKeyTraits = [(UIKBRenderFactory *)self activeControlKeyTraits];
          [passcodeCopy overlayWithTraits:activeControlKeyTraits];
        }
      }
    }
  }
}

- (id)passcodeBackgroundTraitsForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  [keyplaneCopy frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [keyplaneCopy frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [UIKBRenderGeometry geometryWithFrame:v5 paddedFrame:v7, v9, v11, v13, v15, v17, v19];
  v21 = [UIKBRenderTraits traitsWithGeometry:v20];

  [v21 setControlOpacities:1];
  [v21 setBlendForm:3];

  return v21;
}

- (id)passcodeControlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v3 setBlendForm:3];
  [v3 setControlOpacities:1];
  [(UIKBRenderFactory *)self passcodeEdgeWeight];
  v5 = v4;
  passcodeKeyEdgeColorName = [(UIKBRenderFactory *)self passcodeKeyEdgeColorName];
  v7 = [UIKBEdgeEffect effectWithColor:passcodeKeyEdgeColorName edges:15 inset:v5 * 0.5 weight:v5];

  [v3 addRenderEffect:v7];
  v8 = [UIKBEdgeEffect effectWithColor:@"UIKBColorWhite" edges:15 inset:v5 * 0.5 weight:v5];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig keycapOpacity];
  [v8 setOpacity:?];

  [v3 addForegroundRenderEffect:v8];

  return v3;
}

- (id)passcodeActiveControlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v3 setBlendForm:3];
  [v3 setControlOpacities:1];
  passcodeKeyEdgeColorName = [(UIKBRenderFactory *)self passcodeKeyEdgeColorName];
  v5 = [UIKBGradient gradientWithFlatColor:passcodeKeyEdgeColorName];
  [v3 setBackgroundGradient:v5];

  v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite"];
  [v3 setLayeredForegroundGradient:v6];

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  [renderConfig keycapOpacity];
  v9 = v8;
  layeredForegroundGradient = [v3 layeredForegroundGradient];
  [layeredForegroundGradient setOpacity:v9];

  v11 = [UIKBEdgeEffect effectWithColor:0 edges:0 inset:0.0 weight:0.0];
  [v3 addRenderEffect:v11];

  v12 = [UIKBEdgeEffect effectWithColor:0 edges:0 inset:0.0 weight:0.0];
  [v3 addForegroundRenderEffect:v12];

  return v3;
}

- (id)passcodeShiftedControlKeyTraits
{
  passcodeActiveControlKeyTraits = [(UIKBRenderFactory *)self passcodeActiveControlKeyTraits];
  v3 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
  [passcodeActiveControlKeyTraits setSymbolStyle:v3];

  return passcodeActiveControlKeyTraits;
}

- (id)extraPasscodePaddleTraits
{
  v2 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  v3 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha30"];
  [v2 setBackgroundGradient:v3];

  return v2;
}

void __48__UIKBRenderFactory_Monolith__textOffsetForKey___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
  v1 = _MergedGlobals_1176;
  _MergedGlobals_1176 = v0;
}

uint64_t __68__UIKBRenderFactory_Monolith__variantTraitsForLetterKey_onKeyplane___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 name];
  v6 = [v5 containsString:@"Delete"];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

@end