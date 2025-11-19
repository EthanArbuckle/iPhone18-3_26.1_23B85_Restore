@interface UIKBRenderFactory
+ (BOOL)couldUseGlyphSelectorForDisplayString:(id)a3;
+ (Class)factoryClassForVisualStyle:(id)a3 renderingContext:(id)a4;
+ (id)_characterSetForGlyphSelectors;
+ (id)cacheKeyForString:(id)a3 withRenderFlags:(int64_t)a4 renderConfig:(id)a5;
+ (id)factoryForVisualStyle:(id)a3 renderingContext:(id)a4 skipLayoutSegments:(BOOL)a5;
+ (id)lightweightFactoryForVisualStyle:(id)a3 renderingContext:(id)a4;
+ (id)segmentedControlColor:(BOOL)a3;
- (BOOL)allowsPaddleForKey:(id)a3;
- (BOOL)keyIsRightToLeftSensitive:(id)a3;
- (BOOL)popupKeyUsesCustomKeyContentView:(id)a3;
- (BOOL)shouldOverlayTraitsForKey:(id)a3 onKeyplane:(id)a4;
- (BOOL)useBlueThemingForKey:(id)a3;
- (CGPoint)RivenPointFactor:(CGPoint)a3;
- (CGPoint)dualStringKeyBottomTextOffset:(id)a3 keyplane:(id)a4;
- (CGPoint)dualStringKeyTopTextOffset:(id)a3 keyplane:(id)a4;
- (CGSize)stretchFactor;
- (NSString)shortClassNameForCaching;
- (UIEdgeInsets)dynamicInsets;
- (UIKBRenderConfig)renderConfig;
- (UIKBRenderFactory)initWithRenderingContext:(id)a3 skipLayoutSegments:(BOOL)a4;
- (double)RivenFactor:(double)a3;
- (double)keyCornerRadius;
- (id)_controlKeyBackgroundColorName;
- (id)_defaultControlKeyBackgroundColorName;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)contentViewClassNameForPopupKey:(id)a3;
- (id)controlKeyForegroundColorName;
- (id)defaultKeyBackgroundColorName;
- (id)defaultKeyShadowColorName;
- (id)displayContentsForKey:(id)a3;
- (id)extraPasscodePaddleTraits;
- (id)hashStringElement;
- (id)keyImageNameWithSkinnyVariation:(id)a3;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
- (id)lightPadKeycapsFontFallbackName;
- (id)lightPadKeycapsFontName;
- (id)lightTextFontName;
- (id)lowQualityLayeredBackgroundColorName;
- (id)passcodeActiveControlKeyTraits;
- (id)passcodeBackgroundTraitsForKeyplane:(id)a3;
- (id)passcodeControlKeyTraits;
- (id)passcodeShiftedControlKeyTraits;
- (id)returnKeyImageNameForKey:(id)a3;
- (id)thinKeycapsFontFallbackName;
- (id)thinKeycapsFontName;
- (id)thinTextFontName;
- (id)traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)traitsHashStringForKey:(id)a3 withGeometry:(id)a4 withSymbolStyle:(id)a5 controlOpacities:(BOOL)a6 blendForm:(int64_t)a7 blurBlending:(BOOL)a8 renderConfig:(id)a9;
- (int64_t)enabledBlendForm;
- (int64_t)glyphSelectorForDisplayString:(id)a3;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
- (void)addLayoutSegment:(id)a3;
- (void)applyBoldTextForContent:(id)a3 withKey:(id)a4;
- (void)customizeLanguageIndicatorTraitsForTraits:(id)a3;
- (void)customizeMicOnTraitsForTraits:(id)a3 lightKeyboard:(BOOL)a4 keyState:(int)a5;
- (void)lowQualityTraits:(id)a3;
- (void)modifyKeyTraitsForPasscode:(id)a3 forKey:(id)a4 onKeyplane:(id)a5;
- (void)modifyTraitsForDetachedInputSwitcher:(id)a3 withKey:(id)a4;
- (void)modifyTraitsForDividerVariant:(id)a3 withKey:(id)a4;
- (void)scaleTraits:(id)a3;
@end

@implementation UIKBRenderFactory

- (id)defaultKeyBackgroundColorName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 animatedBackground];

  v5 = [(UIKBRenderFactory *)self renderConfig];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 lightKeyboard];
    v8 = UIKBColorWhite;
    v9 = UIKBColorWhite_Alpha65;
  }

  else
  {
    if ([v5 colorAdaptiveBackground])
    {
      v10 = [(UIKBRenderFactory *)self increasedContrastEnabled];

      if (!v10)
      {
        v11 = @"UIKBColorWhite";
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = [(UIKBRenderFactory *)self renderConfig];
    v7 = [v6 lightKeyboard];
    v8 = UIKBColorWhite;
    v9 = UIKBColorWhite_Alpha30;
  }

  if (!v7)
  {
    v8 = v9;
  }

  v11 = *v8;

LABEL_11:

  return v11;
}

- (id)hashStringElement
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 lightKeyboard])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 controlKeyBackgroundName];

  if (v4)
  {
    v5 = [(UIKBRenderFactory *)self renderConfig];
    v6 = [v5 controlKeyBackgroundName];
  }

  else
  {
    v6 = [(UIKBRenderFactory *)self _defaultControlKeyBackgroundColorName];
  }

  return v6;
}

- (int64_t)enabledBlendForm
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 animatedBackground];

  if (v4)
  {
    return 8;
  }

  v6 = [(UIKBRenderFactory *)self renderConfig];
  if ([v6 colorAdaptiveBackground])
  {
    v7 = [(UIKBRenderFactory *)self increasedContrastEnabled];

    if (!v7)
    {
      v8 = [(UIKBRenderFactory *)self renderConfig];
      if ([v8 lightKeyboard])
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

  v9 = [(UIKBRenderFactory *)self renderConfig];
  v10 = [v9 emptyBackground];

  if (v10)
  {
    return 7;
  }

  v11 = [(UIKBRenderFactory *)self renderConfig];
  v12 = [v11 lightKeyboard];

  if (!v12 || +[UIKBRenderFactory _graphicsQuality]!= 100)
  {
    return 0;
  }

  return [(UIKBRenderFactory *)self lightHighQualityEnabledBlendForm];
}

- (id)defaultKeyShadowColorName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 animatedBackground];

  if (v4)
  {
    v5 = @"UIKBColorBlack_Alpha10";
  }

  else
  {
    v6 = [(UIKBRenderFactory *)self renderConfig];
    v7 = [v6 lightKeyboard];
    v8 = UIKBColorBlack_Alpha35;
    if (!v7)
    {
      v8 = UIKBColorBlack_Alpha40;
    }

    v5 = *v8;
  }

  return v5;
}

- (UIKBRenderConfig)renderConfig
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  v3 = [v2 renderConfig];

  return v3;
}

- (CGSize)stretchFactor
{
  width = self->_stretchFactor.width;
  height = self->_stretchFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (Class)factoryClassForVisualStyle:(id)a3 renderingContext:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  if ([v5 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v7 = *&a3 & 0xFFFFFFC0;
  }

  else
  {
    v7 = a3;
  }

  v8 = v7 << 26;
  v9 = 1;
  if ((v7 << 26) <= 1610612735)
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
  v11 = [v5 isFloating];

  if (v11)
  {
    goto LABEL_13;
  }

  if (!v8 || v8 == 1476395008 || v8 == 1409286144)
  {
    if (((BYTE2(v7) < 0x23u) & (0x600000802uLL >> SBYTE2(v7))) != 0)
    {
      v14 = (v7 & 0x40) != 0 && +[UIKBRenderFactory _graphicsQuality]== 100;
      v6 = objc_opt_class();
      if (v8 == 1409286144 && (v7 & 0x40) != 0 || v8 == 1476395008 && (v7 & 0x40) != 0)
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

    if (BYTE2(v7) != 38 && BYTE2(v7) != 27)
    {
      if (BYTE2(v7) == 9)
      {
        if ((v7 & 0x40) == 0)
        {
          v12 = objc_opt_class();
          if (v8 != 1409286144 && v8 != 1476395008)
          {
            goto LABEL_14;
          }
        }
      }

      else if ((v7 & 0xFF00) == 0x7F00)
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
    if ((v7 & 0x80) == 0)
    {
      if (BYTE2(v7) > 0x1Au)
      {
        if (BYTE2(v7) == 27 || BYTE2(v7) == 38)
        {
          goto LABEL_13;
        }
      }

      else if (BYTE2(v7) == 9 || BYTE2(v7) == 11)
      {
        goto LABEL_13;
      }

      if ((v7 & 0xFF00) != 0x7F00)
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

+ (id)factoryForVisualStyle:(id)a3 renderingContext:(id)a4 skipLayoutSegments:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v8 = a4;
  v9 = [v8 renderConfig];
  v10 = [v9 lightKeyboard];

  if (v10 && (v6 & 0xFF00) == 0x7F00)
  {
    v11 = +[UIKBRenderConfig darkConfig];
    [v8 setRenderConfig:v11];
  }

  v12 = [v8 renderConfig];
  v13 = [v12 colorAdaptiveBackground];
  v14 = (v6 & 0x3F) == 3 && (v6 & 0xFF0000) != 2752512;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v8 setIsColorAdaptiveNonLinearCarplayKeyboard:v15];

  v16 = [a1 factoryClassForVisualStyle:v6 renderingContext:v8];
  if ([v8 handBias])
  {
    if (v16 == objc_opt_class() || v16 == objc_opt_class())
    {
      v17 = objc_opt_class();
    }

    else
    {
      v17 = [a1 factoryClassForVisualStyle:v6 & 0xFFFFFFFFFFFFFFC0 renderingContext:v8];
    }

    v16 = v17;
  }

  v18 = [[v16 alloc] initWithRenderingContext:v8 skipLayoutSegments:v5];

  return v18;
}

+ (id)lightweightFactoryForVisualStyle:(id)a3 renderingContext:(id)a4
{
  v4 = [UIKBRenderFactory factoryForVisualStyle:*&a3 renderingContext:a4 skipLayoutSegments:1];
  [v4 setLightweightFactory:1];

  return v4;
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

- (CGPoint)dualStringKeyTopTextOffset:(id)a3 keyplane:(id)a4
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset:(id)a3 keyplane:(id)a4
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

- (void)modifyTraitsForDetachedInputSwitcher:(id)a3 withKey:(id)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geometry];
  [v8 setDetachedVariants:1];

  v9 = [(UIKBRenderFactory *)self renderConfig];
  v10 = [v9 lightKeyboard];

  if (v10)
  {
    [v6 setBlendForm:0];
    v11 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha12" edges:15 inset:-0.25 weight:0.5];
    [v6 addRenderEffect:v11];
  }

  v12 = [(UIKBRenderFactory *)self renderConfig];
  if (![v12 colorAdaptiveBackground] || objc_msgSend(v7, "displayType") == 13 || objc_msgSend(v7, "displayType") == 5)
  {
  }

  else
  {
    v46 = [v7 displayType];

    if (v46 != 4)
    {
      [v6 setBlurBlending:1];
    }
  }

  if ([v7 displayType] == 13 || objc_msgSend(v7, "displayType") == 4)
  {
    v13 = [(UIKBRenderFactory *)self renderingContext];
    v14 = [v13 inputSwitcherView];
  }

  else
  {
    v13 = [(UIKBRenderFactory *)self renderingContext];
    v14 = [v13 splitControlView];
  }

  v15 = v14;

  [v15 popupRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(UIKBRenderFactory *)self renderingContext];
  v25 = [v24 layoutView];
  [v25 convertRect:v15 fromView:{v17, v19, v21, v23}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [v6 geometry];
  [v34 displayFrame];
  v50.origin.x = v27;
  v50.origin.y = v29;
  v50.size.width = v31;
  v50.size.height = v33;
  v49 = CGRectUnion(v48, v50);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;

  v39 = [v6 geometry];
  [v39 setDisplayFrame:{x, y, width, height}];

  v40 = [UIKBRenderGeometry geometryWithFrame:v27 paddedFrame:v29, v31, v33, v27, v29, v31, v33];
  v47[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [v6 setVariantGeometries:v41];

  v42 = [v6 geometry];
  [v42 setPopupBias:40];

  [(UIKBRenderFactory *)self keyCornerRadius];
  v44 = v43;
  v45 = [v6 geometry];
  [v45 setRoundRectRadius:v44];
}

- (void)modifyTraitsForDividerVariant:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 variantPopupBias];

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
  v9 = v7;
  v10 = [v7 subtrees];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke;
  v59[3] = &unk_1E7114268;
  v11 = v6;
  v60 = v11;
  v61 = self;
  v66 = v8 == @"fixed-left";
  v62 = &v67;
  v63 = v71;
  v64 = &v74;
  v65 = &v78;
  [v10 enumerateObjectsUsingBlock:v59];

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

    v17 = [v9 subtrees];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __59__UIKBRenderFactory_modifyTraitsForDividerVariant_withKey___block_invoke_2;
    v51[3] = &unk_1E7114290;
    v58 = v12 != (v8 == @"fixed-left");
    v53 = &v78;
    v18 = v11;
    v52 = v18;
    v54 = 0;
    v55 = v16;
    v56 = 0;
    v57 = v14;
    [v17 enumerateObjectsUsingBlock:v51];

    v19 = [v18 geometry];
    [v19 displayFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v18 geometry];
    [v28 setDisplayFrame:{v15 + v21, v23 + 0.0, v25 - (v15 + v13), v27 - (0.0 + 0.0)}];

    v29 = [v18 geometry];
    LODWORD(v28) = [v29 popupBias];

    if (v28 == 2)
    {
      v30 = [v18 variantGeometries];
      if (v8 == v50)
      {
        v31 = [v30 lastObject];

        v32 = [v18 variantGeometries];
        [v32 firstObject];
      }

      else
      {
        v31 = [v30 firstObject];

        v32 = [v18 variantGeometries];
        [v32 lastObject];
      }
      v33 = ;

      [v31 frame];
      MinX = CGRectGetMinX(v82);
      v35 = [v18 geometry];
      [v35 displayFrame];
      v36 = CGRectGetMinX(v83);

      [v33 frame];
      MaxX = CGRectGetMaxX(v84);
      v38 = [v18 geometry];
      [v38 displayFrame];
      v39 = CGRectGetMaxX(v85);

      v40 = [v18 geometry];
      [v40 displayFrame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v18 geometry];
      [v49 setDisplayFrame:{(MinX - v36 + MaxX - v39) * 0.5 + v42, v44 + 0.0, v46 - ((MinX - v36 + MaxX - v39) * 0.5 - (MinX - v36 + MaxX - v39) * 0.5), v48}];
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

- (UIKBRenderFactory)initWithRenderingContext:(id)a3 skipLayoutSegments:(BOOL)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = UIKBRenderFactory;
  v8 = [(UIKBRenderFactory *)&v21 init];
  if (v8)
  {
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    *(v8 + 6) = v10;

    v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v12 = [v11 preferencesActions];
    [v12 rivenSizeFactor:1.0];
    *(v8 + 4) = v13;

    __asm { FMOV            V0.2D, #1.0 }

    *(v8 + 56) = _Q0;
    objc_storeStrong(v8 + 1, a3);
    v8[75] = 0;
    if (!a4)
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

- (double)RivenFactor:(double)a3
{
  v3 = round(self->_rivenSizeFactor * a3);
  if (a3 == 1.0)
  {
    rivenSizeFactor = self->_rivenSizeFactor;
  }

  else
  {
    rivenSizeFactor = v3;
  }

  return self->_stretchFactor.height * rivenSizeFactor;
}

- (CGPoint)RivenPointFactor:(CGPoint)a3
{
  y = a3.y;
  [(UIKBRenderFactory *)self RivenFactor:a3.x];
  v6 = v5;
  [(UIKBRenderFactory *)self RivenFactor:y];
  v8 = v7;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)scaleTraits:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 geometry];
  [v5 roundRectRadius];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v7 = v6;
  v8 = [v4 geometry];
  [v8 setRoundRectRadius:v7];

  v9 = [v4 symbolStyle];
  [v9 fontSize];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v11 = v10;
  v12 = [v4 symbolStyle];
  [v12 setFontSize:v11];

  v13 = [v4 symbolStyle];
  [v13 minFontSize];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v15 = v14;
  v16 = [v4 symbolStyle];
  [v16 setMinFontSize:v15];

  v17 = [v4 symbolStyle];
  [v17 kerning];
  [(UIKBRenderFactory *)self RivenFactor:?];
  v19 = v18;
  v20 = [v4 symbolStyle];
  [v20 setKerning:v19];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [v4 secondarySymbolStyles];
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v21);
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

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v23);
  }

  v27 = [v4 variantTraits];

  if (v27)
  {
    v28 = [v4 variantTraits];
    [(UIKBRenderFactory *)self scaleTraits:v28];
  }
}

- (void)lowQualityTraits:(id)a3
{
  v8 = a3;
  if ([v8 blurBlending])
  {
    v4 = [(UIKBRenderFactory *)self lowQualityLayeredBackgroundColorName];
    v5 = [UIKBGradient gradientWithFlatColor:v4];
    [v8 setLayeredBackgroundGradient:v5];
  }

  v6 = [v8 variantTraits];

  if (v6)
  {
    v7 = [v8 variantTraits];
    [(UIKBRenderFactory *)self lowQualityTraits:v7];
  }
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v4 = a3;
  v5 = +[UIKBRenderTraits emptyTraits];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v4 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [UIKBRenderGeometry geometryWithFrame:v7 paddedFrame:v9, v11, v13, v15, v17, v19, v21];
  [v5 setGeometry:v22];

  [v5 setBlendForm:{-[UIKBRenderFactory enabledBlendForm](self, "enabledBlendForm")}];

  return v5;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v4 = a3;
  v5 = +[UIKBRenderTraits emptyTraits];
  v6 = [v4 shape];

  v7 = [UIKBRenderGeometry geometryWithShape:v6];
  [v5 setGeometry:v7];

  return v5;
}

- (void)customizeLanguageIndicatorTraitsForTraits:(id)a3
{
  v9 = a3;
  v4 = [(UIKBRenderFactory *)self defaultKeyBackgroundColorName];
  v5 = [UIKBGradient gradientWithFlatColor:v4];
  [v9 setBackgroundGradient:v5];

  [(UIKBRenderFactory *)self keyCornerRadius];
  v7 = v6;
  v8 = [v9 geometry];
  [v8 setRoundRectRadius:v7];

  [v9 setBlurBlending:1];
}

- (void)customizeMicOnTraitsForTraits:(id)a3 lightKeyboard:(BOOL)a4 keyState:(int)a5
{
  v6 = a4;
  v8 = a3;
  if (a5 == 4)
  {
    v15 = v8;
    v9 = UIKBMicOnDarkModeBackgroundColor;
    if (v6)
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
    v13 = [v15 symbolStyle];
    [v13 setTextColor:v12];

    v14 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v12) = [v14 colorAdaptiveBackground];

    if (v12)
    {
      [v15 setLayeredForegroundGradient:v11];
    }

    else
    {
      [v15 setBackgroundGradient:v11];
    }

    v8 = v15;
  }
}

- (BOOL)shouldOverlayTraitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 dynamicLayout])
  {
    goto LABEL_27;
  }

  if ([v6 displayType] == 21 || objc_msgSend(v6, "displayType") == 18 || objc_msgSend(v6, "displayType") == 3 || objc_msgSend(v6, "displayType") == 5 || objc_msgSend(v6, "displayType") == 26 || objc_msgSend(v6, "displayType") == 53 || objc_msgSend(v6, "displayType") == 32 || objc_msgSend(v6, "displayType") == 33 || objc_msgSend(v6, "interactionType") == 44 || objc_msgSend(v6, "interactionType") == 41 || objc_msgSend(v6, "interactionType") == 38 || objc_msgSend(v6, "interactionType") == 9 || objc_msgSend(v6, "interactionType") == 10 || objc_msgSend(v6, "interactionType") == 14 || objc_msgSend(v6, "interactionType") == 12 || objc_msgSend(v6, "interactionType") == 17 || (objc_msgSend(v6, "usesControlKeyAppearance") & 1) != 0 || objc_msgSend(v6, "displayType") == 4 && -[UIKBRenderFactory shouldOverlayDictationKey:onKeyplane:](self, "shouldOverlayDictationKey:onKeyplane:", v6, v7) || -[UIKBRenderFactory shouldOverlayAlternateTagKey:onKeyplane:](self, "shouldOverlayAlternateTagKey:onKeyplane:", v6, v7))
  {
    goto LABEL_22;
  }

  if ([v6 displayType] != 20)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if ([v6 interactionType] != 4 && objc_msgSend(v6, "interactionType"))
  {
    v9 = [v6 name];
    v8 = [v9 hasSuffix:@"Dot"];

    goto LABEL_28;
  }

LABEL_22:
  v8 = 1;
LABEL_28:

  return v8;
}

- (id)traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBRenderFactory *)self _traitsForKey:v6 onKeyplane:v7];
  v9 = MEMORY[0x1E695F058];
  if (self->_suppressSegmentTraits)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(UIKBRenderFactory *)self segmentTraits];
  }

  v12 = *v9;
  v11 = v9[1];
  v14 = v9[2];
  v13 = v9[3];
  if ([v10 count])
  {
    if (![v7 isSplit] || (objc_msgSend(v7, "isGenerated") & 1) != 0 || (-[UIKBRenderFactory RivenFactor:](self, "RivenFactor:", 1.0), v15 <= 1.0))
    {
      [v7 frame];
      v12 = v24;
      v11 = v25;
      v27 = v26;
      v29 = v28;
      [v6 frame];
    }

    else
    {
      [v7 originalFrame];
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
        [v7 frame];
      }

      else
      {
        [v7 originalFrame];
      }

      v66 = v20;
      v67 = v21;
      v27 = v22;
      v29 = v23;
      [v6 originalFrame];
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
        [v6 frame];
      }

      else
      {
        [v6 originalFrame];
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

  [v6 frame];
  if (!CGRectIsEmpty(v83) || [v6 dynamicLayout])
  {
    v36 = [(UIKBRenderFactory *)self renderingContext];
    v37 = [v36 handBias];

    if (v37)
    {
      [v7 primaryKeylayoutOffset];
      v12 = v38;
      [v7 primaryKeylayoutWidthRatio];
      v14 = v14 * v39;
    }

    [v7 resizingOffset];
    if (v40 > 0.0)
    {
      [v7 resizingOffset];
      v11 = v41;
      [v7 resizingOffset];
      v13 = v13 - v42;
    }

    if (!_UISolariumEnabled() || (+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController, "sharedPreferencesController"), v43 = objc_claimAutoreleasedReturnValue(), [v43 preferencesActions], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "colorAdaptiveKeyboardEnabled"), v44, v43, (v45 & 1) == 0))
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = v10;
      v46 = v10;
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
            v52 = [v51 keyStates];
            if (([v6 state] & v52) == 0)
            {
              continue;
            }
          }

          if (![v6 dynamicLayout])
          {
            if (![v51 containsPoint:v7 inRect:v34 withKeyplane:{v35, v12, v11, v14, v13}])
            {
              continue;
            }

LABEL_32:
            v53 = [v51 traits];
            [v8 overlayWithTraits:v53];

            continue;
          }

          if ([(UIKBRenderFactory *)self shouldOverlayTraitsForKey:v6 onKeyplane:v7])
          {
            goto LABEL_32;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v75 objects:v79 count:16];
        if (!v48)
        {
LABEL_35:

          v10 = v73;
          break;
        }
      }
    }
  }

  v54 = [v6 name];
  if ([v54 hasSuffix:@"LanguageIndicator"])
  {
    v55 = [v8 blendForm];

    if (v55 != 3)
    {
      [(UIKBRenderFactory *)self customizeLanguageIndicatorTraitsForTraits:v8];
    }
  }

  else
  {
  }

  if ([v6 interactionType] == 5)
  {
    v56 = [(UIKBRenderFactory *)self renderConfig];
    -[UIKBRenderFactory customizeMicOnTraitsForTraits:lightKeyboard:keyState:](self, "customizeMicOnTraitsForTraits:lightKeyboard:keyState:", v8, [v56 lightKeyboard], objc_msgSend(v6, "state"));
  }

  if (+[UIKBRenderFactory _graphicsQuality]== 10)
  {
    [(UIKBRenderFactory *)self lowQualityTraits:v8];
  }

  if (!-[UIKBRenderFactory lightweightFactory](self, "lightweightFactory") && [v6 displayTypeHint] != 12)
  {
    v74 = [v8 geometry];
    v57 = [v8 symbolStyle];
    v72 = [v8 controlOpacities];
    v58 = [v8 blendForm];
    v59 = v10;
    v60 = [v8 blurBlending];
    v61 = [(UIKBRenderFactory *)self renderConfig];
    v62 = v57;
    v63 = v60;
    v10 = v59;
    v64 = [(UIKBRenderFactory *)self traitsHashStringForKey:v6 withGeometry:v74 withSymbolStyle:v57 controlOpacities:v72 blendForm:v58 blurBlending:v63 renderConfig:v61];
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

- (BOOL)keyIsRightToLeftSensitive:(id)a3
{
  v3 = [a3 isRightToLeftSensitive];
  if (v3)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 currentLinguisticInputMode];
    v6 = [v5 isDefaultRightToLeft];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (id)traitsHashStringForKey:(id)a3 withGeometry:(id)a4 withSymbolStyle:(id)a5 controlOpacities:(BOOL)a6 blendForm:(int64_t)a7 blurBlending:(BOOL)a8 renderConfig:(id)a9
{
  v9 = a8;
  v11 = a6;
  v16 = a9;
  v67 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v18 displayType];
  if (v19 - 7 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  [v17 displayFrame];
  v22 = v21;
  v24 = v23;
  [v17 displayInsets];
  v26 = v25;
  [v17 displayInsets];
  v28 = v27;
  [v17 displayInsets];
  v30 = v29;
  [v17 displayInsets];
  v76 = CFStringCreateWithFormat(0, 0, @"{%.*g,%.*g,%.*g,%.*g}", 2, v26, 2, v28, 2, v30, 2, v31);
  v68 = MEMORY[0x1E695DF70];
  v74 = [(UIKBRenderFactory *)self shortClassNameForCaching];
  v75 = [(UIKBRenderFactory *)self hashStringElement];
  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
  v72 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "colorAdaptiveBackground")}];
  v71 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "animatedBackground")}];
  v32 = MEMORY[0x1E696AD98];
  v70 = [(UIKBRenderFactory *)self controlKeyBackgroundColorName];
  v66 = [v32 numberWithInt:{objc_msgSend(v70, "hash")}];
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBRenderFactory useBlueThemingForKey:](self, "useBlueThemingForKey:", v18)}];
  v63 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v61 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v60 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", v18)}];
  v34 = [v18 numberForProperty:@"KBinteractionType"];
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
  v36 = [v18 numberForProperty:@"rendering"];
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
  v38 = [v18 numberForProperty:@"state"];

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
  [v17 roundRectRadius];
  v55 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  v42 = [v17 roundRectCorners];

  v54 = [v41 numberWithUnsignedInteger:v42 & 0xF];
  v43 = MEMORY[0x1E696AD98];
  v44 = [v67 anchorCorner];

  v45 = [v43 numberWithUnsignedInteger:v44 & 0xF];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  v48 = MEMORY[0x1E696AD98];
  v49 = [v16 usesCompactKeycapsFont];

  v50 = [v48 numberWithBool:v49];
  v69 = [v68 arrayWithObjects:{v74, v75, v73, v72, v71, v66, v65, v63, v61, v60, v33, v58, v57, v56, v55, v54, v76, v45, v46, v47, v50, 0}];

  v51 = [[UIKBCacheToken alloc] initWithComponents:v69 name:0];
  v52 = [(UIKBCacheToken *)v51 string];

  return v52;
}

- (id)returnKeyImageNameForKey:(id)a3
{
  v3 = [a3 displayTypeHint] - 1;
  if (v3 > 0xA)
  {
    return @"return";
  }

  else
  {
    return off_1E7114320[v3];
  }
}

- (id)keyImageNameWithSkinnyVariation:(id)a3
{
  v4 = a3;
  v5 = [v4 displayType];
  v6 = [v4 interactionType];
  if (v5 == 3 || v6 == 4)
  {
    if ([v4 state] < 4)
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
    if (v5 != 23 || (UIKBShiftKeyStringForActiveInputMode(v4), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = 0;
      goto LABEL_11;
    }

    if ([v4 state] <= 3)
    {
      v9 = [(UIKBRenderFactory *)self shiftKeyImageName];
      goto LABEL_10;
    }

    if ([v4 state] == 8)
    {
      [(UIKBRenderFactory *)self shiftLockImageName];
    }

    else
    {
      [(UIKBRenderFactory *)self shiftOnKeyImageName];
    }
  }
  v9 = ;
LABEL_10:
  v8 = v9;
LABEL_11:

  return v8;
}

- (id)displayContentsForKey:(id)a3
{
  v120[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIKBKeyDisplayContents displayContents];
  v6 = +[UIKBKeyDisplayContents displayContents];
  [v5 setFallbackContents:v6];

  v7 = [v4 displayType];
  v8 = [v4 interactionType];
  v9 = v8;
  if (v7 == 3 || v8 == 4)
  {
    [v5 setDisplayPathType:2];
    v14 = [(UIKBRenderFactory *)self keyImageNameWithSkinnyVariation:v4];
    [v5 setDisplayStringImage:v14];

    v15 = [v4 displayString];
    [v5 setDisplayString:v15];
LABEL_11:

    [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", v4)}];
    goto LABEL_39;
  }

  if (v7 <= 22)
  {
    if (v7 == 5)
    {
      if ([v4 displayTypeHint] != 11)
      {
        v20 = [(UIKBRenderFactory *)self dismissKeyImageName];
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    if (v7 == 13)
    {
      v16 = [v4 representedString];
      v17 = [v16 isEqualToString:@"EmojiInternational"];

      if (!v17)
      {
        v24 = [v4 overrideDisplayString];
        v25 = [v24 isEqualToString:@"emoji"];

        if (!v25)
        {
          v20 = [(UIKBRenderFactory *)self globalKeyImageName];
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      v18 = [v4 displayString];

      if (v18 != @"")
      {
        if ([v4 displayTypeHint] != 11)
        {
          [v5 setStringKeycapOverImage:1];
          goto LABEL_18;
        }

        goto LABEL_20;
      }

LABEL_26:
      v20 = [(UIKBRenderFactory *)self handwritingMoreKeyImageName];
      goto LABEL_36;
    }
  }

  else
  {
    switch(v7)
    {
      case 0x35:
        goto LABEL_20;
      case 0x25:
        goto LABEL_39;
      case 0x17:
        v10 = UIKBShiftKeyStringForActiveInputMode(v4);

        if (v10)
        {
LABEL_18:
          v19 = [v4 displayString];
          [v5 setDisplayString:v19];
LABEL_38:

          goto LABEL_39;
        }

        [v5 setDisplayPathType:1];
        v11 = [(UIKBRenderFactory *)self keyImageNameWithSkinnyVariation:v4];
        [v5 setDisplayStringImage:v11];

        v12 = [v5 displayStringImage];
        v13 = [v5 fallbackContents];
        [v13 setDisplayStringImage:v12];

LABEL_9:
        goto LABEL_18;
    }
  }

  v21 = [v4 displayString];

  if (v21 == @"")
  {
    goto LABEL_26;
  }

  if ([v4 interactionType] == 44)
  {
    v22 = [(UIKBRenderFactory *)self renderConfig];
    v19 = [v22 imageNameForType:v7];

    if (!v19)
    {
      if ([v4 displayType] == 4)
      {
        [v4 setInteractionType:5];
        v23 = [(UIKBRenderFactory *)self dictationKeyImageName];
        [v5 setDisplayStringImage:v23];
      }

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v7 == 4 || [v4 interactionType] == 5)
  {
    v26 = [(UIKBRenderFactory *)self renderConfig];
    v19 = [v26 imageNameForType:v7];

    if (v19)
    {
      [v4 setInteractionType:44];
LABEL_37:
      [v5 setDisplayStringImage:v19];
      goto LABEL_38;
    }

    v20 = [(UIKBRenderFactory *)self dictationKeyImageName];
LABEL_36:
    v19 = v20;
    goto LABEL_37;
  }

  if (v7 <= 43)
  {
    if (v7 != 9)
    {
      if (v7 == 42)
      {
        v66 = [(UIKBRenderFactory *)self cutKeyImageName];
        goto LABEL_113;
      }

      if (v7 == 43)
      {
        v66 = [(UIKBRenderFactory *)self copyKeyImageName];
LABEL_113:
        v12 = v66;
        [v5 setDisplayStringImage:v66];
        goto LABEL_9;
      }

      goto LABEL_104;
    }

LABEL_29:
    v20 = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
    goto LABEL_36;
  }

  switch(v7)
  {
    case ',':
      v66 = [(UIKBRenderFactory *)self pasteKeyImageName];
      goto LABEL_113;
    case '.':
      v20 = [(UIKBRenderFactory *)self rightArrowKeyImageName];
      goto LABEL_36;
    case '-':
      v20 = [(UIKBRenderFactory *)self leftArrowKeyImageName];
      goto LABEL_36;
  }

LABEL_104:
  switch(v9)
  {
    case 0x1Cu:
      v66 = [(UIKBRenderFactory *)self boldKeyImageName];
      goto LABEL_113;
    case 0x11u:
      if ([v4 displayTypeHint] != 11)
      {
        v71 = [v4 displayString];
        if ([v71 isEqualToString:@"undo"])
        {
          v72 = [(UIKBRenderFactory *)self renderConfig];
          v73 = [v72 colorAdaptiveBackground];

          if (v73)
          {
LABEL_120:
            v70 = [(UIKBRenderFactory *)self undoKeyImageName];
            goto LABEL_121;
          }

          v71 = [v4 displayString];
          [v5 setDisplayString:v71];
        }

        goto LABEL_120;
      }

LABEL_20:
      v20 = [(UIKBRenderFactory *)self messagesWriteboardKeyImageName];
      goto LABEL_36;
    case 0xCu:
      v67 = [v4 displayString];
      if ([v67 isEqualToString:@"redo"])
      {
        v68 = [(UIKBRenderFactory *)self renderConfig];
        v69 = [v68 colorAdaptiveBackground];

        if (v69)
        {
LABEL_111:
          v70 = [(UIKBRenderFactory *)self redoKeyImageName];
LABEL_121:
          v15 = v70;
          [v5 setDisplayStringImage:v70];
          goto LABEL_11;
        }

        v67 = [v4 displayString];
        [v5 setDisplayString:v67];
      }

      goto LABEL_111;
  }

  v74 = v9;
  if (v7 <= 32)
  {
    if (v7 > 30)
    {
      if (v7 == 31)
      {
        v88 = [v4 overrideDisplayString];
        if (v88)
        {
        }

        else
        {
          v105 = [v4 displayString];
          v106 = [v105 isEqualToString:@"゛゜小"];

          if (!v106)
          {
            goto LABEL_129;
          }
        }

        [v5 setDisplayString:@"小"];
        [v5 setSecondaryDisplayStrings:&unk_1EFE2C598];
        goto LABEL_168;
      }

      v80 = [(UIKBRenderFactory *)self multitapCompleteKeyImageName];
LABEL_148:
      v76 = v80;
      [v5 setDisplayStringImage:v80];
      goto LABEL_167;
    }

    if (v7 == 7)
    {
      v84 = [v4 secondaryDisplayStrings];
      v85 = [v84 count];

      if (v85)
      {
        goto LABEL_142;
      }

      v102 = [v4 overrideDisplayString];
      v103 = v102;
      if (v102)
      {
        v104 = v102;
      }

      else
      {
        v104 = [v4 displayString];
      }

      v76 = v104;

      if ([v76 length] != 2)
      {
        v97 = [v76 _firstGrapheme];
        [v5 setDisplayString:v97];
        v101 = [v76 substringFromIndex:{objc_msgSend(v97, "length")}];
        v118 = v101;
        v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
        [v5 setSecondaryDisplayStrings:v109];

        goto LABEL_165;
      }

      v108 = [v76 substringToIndex:1];
      [v5 setDisplayString:v108];

      v97 = [v76 substringFromIndex:1];
      v119 = v97;
      v98 = MEMORY[0x1E695DEC8];
      v99 = &v119;
LABEL_164:
      v101 = [v98 arrayWithObjects:v99 count:1];
      [v5 setSecondaryDisplayStrings:v101];
LABEL_165:

      goto LABEL_166;
    }

    if (v7 != 20)
    {
      goto LABEL_142;
    }

    v77 = [v4 overrideDisplayString];
    v78 = v77;
    if (v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = [v4 displayString];
    }

    v76 = v79;

    v92 = [v4 displayString];
    v93 = [v92 rangeOfString:@"/"];

    v94 = [v4 displayString];
    v95 = [v94 length];

    if (v93 == 0x7FFFFFFFFFFFFFFFLL || v95 < 2)
    {
      [v5 setDisplayString:v76];
      if (v93 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v96 = [v76 substringToIndex:v93];
      [v5 setDisplayString:v96];
    }

    if (v93 + 1 < v95)
    {
      v97 = [v76 substringFromIndex:?];
      v120[0] = v97;
      v98 = MEMORY[0x1E695DEC8];
      v99 = v120;
      goto LABEL_164;
    }

LABEL_161:
    v97 = [v4 secondaryDisplayStrings];
    [v5 setSecondaryDisplayStrings:v97];
LABEL_166:

    goto LABEL_167;
  }

  if (v7 <= 48)
  {
    if (v7 == 33)
    {
      v80 = [(UIKBRenderFactory *)self muttitapReverseKeyImageName];
      goto LABEL_148;
    }

    if (v7 != 34)
    {
      goto LABEL_142;
    }

    v81 = [v4 overrideDisplayString];
    v82 = v81;
    if (v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = [v4 displayString];
    }

    v76 = v83;

    v100 = [v76 _firstGrapheme];
    [v5 setDisplayString:v100];

    v97 = [v76 _lastGrapheme];
    v117 = v97;
    v98 = MEMORY[0x1E695DEC8];
    v99 = &v117;
    goto LABEL_164;
  }

  switch(v7)
  {
    case '9':
      v76 = [v4 displayImage];
      [v5 setDisplayImage:v76];
      goto LABEL_167;
    case '2':
      [v5 setDisplayPathType:4];
      goto LABEL_168;
    case '1':
      v75 = [(UIKBRenderFactory *)self biuKeyImageName];
      [v5 setDisplayStringImage:v75];

LABEL_129:
      v76 = [v4 displayString];
      [v5 setDisplayString:v76];
LABEL_167:

      goto LABEL_168;
  }

LABEL_142:
  v86 = [v4 representedString];
  v87 = [v86 isEqualToString:@"‌"];

  if (v87)
  {
    v80 = [(UIKBRenderFactory *)self ZWNJKeyImageName];
    goto LABEL_148;
  }

  v89 = [v4 displayString];
  v90 = [v89 isEqualToString:@"Search"];

  if (!v90)
  {
    v91 = [v4 overrideDisplayString];
    if (v91)
    {
      [v5 setDisplayString:v91];
    }

    else
    {
      v107 = [v4 displayString];
      [v5 setDisplayString:v107];
    }

    v76 = [v4 secondaryDisplayStrings];
    [v5 setSecondaryDisplayStrings:v76];
    goto LABEL_167;
  }

  [v5 setDisplayStringImage:@"magnifyingglass"];
LABEL_168:
  v9 = v74;
LABEL_39:
  if ([v4 state] == 16 && (v9 > 0x10 || ((1 << v9) & 0x10260) == 0) && objc_msgSend(v4, "variantType") != 12 && objc_msgSend(v4, "variantType") != 13 && (!_os_feature_enabled_impl() || objc_msgSend(v4, "variantType") != 10 && objc_msgSend(v4, "variantType") != 11))
  {
    v110 = v9;
    v32 = MEMORY[0x1E695DF70];
    v33 = [v4 subtrees];
    v34 = [v32 arrayWithCapacity:{objc_msgSend(v33, "count")}];

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v35 = [v4 subtrees];
    v36 = [v35 countByEnumeratingWithState:&v111 objects:v116 count:16];
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
            objc_enumerationMutation(v35);
          }

          v40 = [(UIKBRenderFactory *)self displayContentsForKey:*(*(&v111 + 1) + 8 * i)];
          [v34 addObject:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v111 objects:v116 count:16];
      }

      while (v37);
    }

    [v5 setVariantDisplayContents:v34];
    v41 = [v4 highlightedVariantsList];
    if ([v4 selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "selectedVariantIndex")}];
      v43 = v42;
      if (v41)
      {
        v44 = [v41 mutableCopy];
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

      v41 = v44;
    }

    v9 = v110;
    [v5 setHighlightedVariantsList:v41];
    if ([(UIKBRenderFactory *)self shouldClearBaseDisplayStringForVariants:v4])
    {
      [v5 setDisplayString:0];
      [v5 setDisplayStringImage:0];
    }
  }

  v27 = [v5 displayString];
  if (v27)
  {
    v28 = [v5 displayString];
    v29 = [v28 hasSuffix:@".png"];
  }

  else
  {
    v29 = 0;
  }

  if (v7 == 25 || v9 == 15)
  {
    v31 = [v5 fallbackContents];
    [v31 setDisplayString:@"␣"];

    goto LABEL_82;
  }

  if (v7 == 21 || v9 == 13)
  {
    [v5 setStringKeycapOverImage:v29 ^ 1u];
    v30 = [v4 overrideDisplayString];
    if (v30)
    {
      [v5 setDisplayString:v30];
    }

    else
    {
      v45 = [v4 displayString];
      [v5 setDisplayString:v45];
    }

    v46 = [v5 fallbackContents];
    [v46 setDisplayString:@"⮐"];

    v47 = [v5 displayString];
    v48 = [v47 containsString:@"Emoji"];

    if (v48)
    {
      [v5 setForceImageKeycap:1];
      v49 = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
      [v5 setDisplayString:v49];

      v50 = [(UIKBRenderFactory *)self globalEmojiKeyImageName];
LABEL_81:
      v63 = v50;
      [v5 setDisplayStringImage:v50];

      goto LABEL_82;
    }

    v51 = [v4 overrideDisplayString];
    if (!v51 || (v52 = v51, [v4 overrideDisplayString], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "displayString"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v53, "isEqualToString:", v54), v54, v53, v52, (v55 & 1) != 0))
    {
      v56 = [(UIKBRenderFactory *)self renderConfig];
      if ([v56 colorAdaptiveBackground])
      {
LABEL_76:

        goto LABEL_77;
      }

      v57 = [v5 displayString];
      if ([v57 isEqualToString:@"⮐"])
      {

        goto LABEL_76;
      }

      v61 = [v5 displayString];
      v62 = [v61 isEqualToString:@"⮑"];

      if (v62)
      {
LABEL_77:
        [v5 setStringKeycapOverImage:0];
        v58 = [(UIKBRenderFactory *)self returnKeyImageNameForKey:v4];
        [v5 setDisplayStringImage:v58];

        [v5 setFlipImageHorizontally:{-[UIKBRenderFactory keyIsRightToLeftSensitive:](self, "keyIsRightToLeftSensitive:", v4)}];
        v59 = [(UIKBRenderFactory *)self renderConfig];
        v60 = [v59 colorAdaptiveBackground];

        if (v60)
        {
          [v5 setForceImageKeycap:1];
        }

        goto LABEL_82;
      }
    }

    [v5 setStringKeycapOverImage:1];
    v50 = [v5 displayString];
    goto LABEL_81;
  }

LABEL_82:
  if (v29)
  {
    v64 = [v5 displayString];
    [v5 setDisplayStringImage:v64];
  }

  [(UIKBRenderFactory *)self applyBoldTextForContent:v5 withKey:v4];

  return v5;
}

- (void)applyBoldTextForContent:(id)a3 withKey:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (self->_boldTextEnabled)
  {
    v7 = [v16 displayStringImage];
    if (!v7 || ([v16 forceImageKeycap] & 1) != 0)
    {
      goto LABEL_14;
    }

    if ([v6 displayType] == 23)
    {
      if ([v6 displayType] != 23)
      {
LABEL_14:

        goto LABEL_15;
      }

      v8 = [v6 state];

      if (v8 > 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v9 = [v16 displayStringImage];
    v10 = [v9 copy];
    v11 = [v16 fallbackContents];
    [v11 setDisplayStringImage:v10];

    v7 = [v16 displayStringImage];
    v12 = [v16 displayString];
    if ([v12 hasSuffix:@".png"])
    {
      v13 = [v16 displayStringImage];
      v14 = [v13 hasPrefix:@"bold_"];

      if (v14)
      {
LABEL_13:
        [v16 setDisplayStringImage:v7];
        goto LABEL_14;
      }

      v12 = [v16 displayStringImage];
      v15 = [@"bold_" stringByAppendingString:v12];

      v7 = v15;
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (BOOL)useBlueThemingForKey:(id)a3
{
  v3 = a3;
  if ([v3 displayType] == 21 && ((v4 = objc_msgSend(v3, "displayTypeHint"), v4 <= 0xA) && ((1 << v4) & 0x7EE) != 0 || v4 == 124))
  {
    v5 = [v3 overrideDisplayString];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 overrideDisplayString];
      v8 = [v3 displayString];
      v9 = [v7 isEqualToString:v8];
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

- (void)addLayoutSegment:(id)a3
{
  v4 = a3;
  segmentTraits = self->_segmentTraits;
  v8 = v4;
  if (!segmentTraits)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_segmentTraits;
    self->_segmentTraits = v6;

    v4 = v8;
    segmentTraits = self->_segmentTraits;
  }

  [(NSMutableArray *)segmentTraits addObject:v4];
}

+ (id)cacheKeyForString:(id)a3 withRenderFlags:(int64_t)a4 renderConfig:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [UIKBCacheToken alloc];
  v10 = [MEMORY[0x1E695DF70] arrayWithObject:v8];

  v11 = [(UIKBCacheToken *)v9 initWithComponents:v10 name:0];
  v12 = [(UIKBCacheToken *)v11 stringForRenderFlags:a4 renderConfig:v7];

  return v12;
}

- (id)_defaultControlKeyBackgroundColorName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 lightKeyboard];
  v4 = UIKBColorWhite;
  if (!v3)
  {
    v4 = UIKBColorBlack;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)controlKeyForegroundColorName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  if ([v3 emptyBackground])
  {
    goto LABEL_4;
  }

  v4 = [(UIKBRenderFactory *)self renderConfig];
  if ([v4 animatedBackground])
  {

    goto LABEL_4;
  }

  v7 = [(UIKBRenderFactory *)self renderConfig];
  v8 = [v7 colorAdaptiveBackground];

  if (v8)
  {
    goto LABEL_5;
  }

  v3 = [(UIKBRenderFactory *)self renderConfig];
  if (![v3 lightKeyboard])
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

+ (id)segmentedControlColor:(BOOL)a3
{
  v3 = UIKBColorKeyGrayKeyLightBackground;
  if (!a3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  if (v3)
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
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  if (v3)
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

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  rect_24 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [v15 renderConfig];
  v17 = [v16 lightKeyboard];

  v18 = UIKBColorGray_Percent37;
  if (v17)
  {
    v18 = UIKBColorWhite;
  }

  v19 = [UIKBGradient gradientWithFlatColor:*v18];
  [rect_24 setBackgroundGradient:v19];

  [rect_24 removeAllRenderEffects];
  v20 = [v15 renderConfig];

  if (![v20 lightKeyboard])
  {
    goto LABEL_6;
  }

  v21 = [(UIKBRenderFactory *)self renderConfig];
  v22 = [v21 colorAdaptiveBackground];

  if ((v22 & 1) == 0)
  {
    v23 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha8" offset:0.0 insets:1.0 weight:1.0, 0.5, 0.0, 0.5, 4.5];
    [rect_24 addRenderEffect:v23];

    v20 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha29" offset:0.0 insets:-1.0 weight:1.0, 0.5, 0.0, 0.5, 4.5];
    [rect_24 addRenderEffect:v20];
LABEL_6:
  }

  if ([v12 displayType] == 13 || objc_msgSend(v12, "displayType") == 4)
  {
    v24 = [(UIKBRenderFactory *)self renderingContext];
    v25 = [v24 inputSwitcherView];
  }

  else
  {
    v24 = [(UIKBRenderFactory *)self renderingContext];
    v25 = [v24 splitControlView];
  }

  v26 = v25;

  v27 = [(UIKBRenderFactory *)self renderingContext];
  v28 = [v27 layoutView];

  [v28 bounds];
  [v28 convertRect:0 toView:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v28 window];
  [v37 frame];
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
  v50 = [rect_24 geometry];
  [v50 setLayoutMargins:{rect_16, rect_8, v47, v49}];

  [v26 popupRect];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [v12 paddedFrame];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  [v28 convertRect:v26 fromView:{v52, v54, v56, v58}];
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
  v75 = [rect_24 geometry];
  [v75 setDisplayFrame:{x, y, v73, v74}];

  [rect_24 setBlurBlending:1];
  v76 = [rect_24 geometry];
  [v76 setPopupBias:40];

  v77 = [UIKBTextStyle styleWithFontName:v14 withFallbackFontName:v13 withFontSize:22.0];

  [rect_24 setSymbolStyle:v77];
  v78 = [rect_24 symbolStyle];
  [v78 setTextColor:@"UIKBColorClear"];

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

+ (BOOL)couldUseGlyphSelectorForDisplayString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [a1 _characterSetForGlyphSelectors];
  v6 = [v4 rangeOfCharacterFromSet:v5];

  v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  return v7;
}

- (int64_t)glyphSelectorForDisplayString:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (BOOL)popupKeyUsesCustomKeyContentView:(id)a3
{
  v3 = [(UIKBRenderFactory *)self contentViewClassNameForPopupKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)contentViewClassNameForPopupKey:(id)a3
{
  v3 = a3;
  if ([v3 variantType] == 12 || objc_msgSend(v3, "variantType") == 13)
  {
    v4 = @"UIKeyboardEmojiFamilyConfigurationView";
  }

  else if (_os_feature_enabled_impl() && ([v3 variantType] == 10 || objc_msgSend(v3, "variantType") == 11))
  {
    v4 = @"UIKeyboardEmojiVariantView";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)allowsPaddleForKey:(id)a3
{
  v4 = a3;
  if ([(UIKBRenderFactory *)self allowsPaddles])
  {
    v5 = [v4 preventPaddle] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)modifyKeyTraitsForPasscode:(id)a3 forKey:(id)a4 onKeyplane:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (([(UIKBRenderFactory *)self _popupStyleForKey:v7]& 1) == 0 && ([(UIKBRenderFactory *)self _popupMenuStyleForKey:v7]& 1) == 0)
  {
    [v11 setBlendForm:3];
    v8 = [(UIKBRenderFactory *)self useBlueThemingForKey:v7];
    [v11 removeAllRenderEffects];
    if (!v8)
    {
      [v11 setBackgroundGradient:0];
      [v11 setLayeredBackgroundGradient:0];
      [v11 setLayeredForegroundGradient:0];
      v9 = [(UIKBRenderFactory *)self controlKeyTraits];
      [v11 overlayWithTraits:v9];

      if ([v7 displayType] == 25)
      {
        [(UIKBRenderFactory *)self suppressLayoutSegments];
        if (([v7 state] & 4) != 0)
        {
          v10 = [(UIKBRenderFactory *)self activeControlKeyTraits];
          [v11 overlayWithTraits:v10];
        }
      }
    }
  }
}

- (id)passcodeBackgroundTraitsForKeyplane:(id)a3
{
  v3 = a3;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 frame];
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
  v6 = [(UIKBRenderFactory *)self passcodeKeyEdgeColorName];
  v7 = [UIKBEdgeEffect effectWithColor:v6 edges:15 inset:v5 * 0.5 weight:v5];

  [v3 addRenderEffect:v7];
  v8 = [UIKBEdgeEffect effectWithColor:@"UIKBColorWhite" edges:15 inset:v5 * 0.5 weight:v5];
  v9 = [(UIKBRenderFactory *)self renderConfig];
  [v9 keycapOpacity];
  [v8 setOpacity:?];

  [v3 addForegroundRenderEffect:v8];

  return v3;
}

- (id)passcodeActiveControlKeyTraits
{
  v3 = [UIKBRenderTraits traitsWithSymbolStyle:0];
  [v3 setBlendForm:3];
  [v3 setControlOpacities:1];
  v4 = [(UIKBRenderFactory *)self passcodeKeyEdgeColorName];
  v5 = [UIKBGradient gradientWithFlatColor:v4];
  [v3 setBackgroundGradient:v5];

  v6 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite"];
  [v3 setLayeredForegroundGradient:v6];

  v7 = [(UIKBRenderFactory *)self renderConfig];
  [v7 keycapOpacity];
  v9 = v8;
  v10 = [v3 layeredForegroundGradient];
  [v10 setOpacity:v9];

  v11 = [UIKBEdgeEffect effectWithColor:0 edges:0 inset:0.0 weight:0.0];
  [v3 addRenderEffect:v11];

  v12 = [UIKBEdgeEffect effectWithColor:0 edges:0 inset:0.0 weight:0.0];
  [v3 addForegroundRenderEffect:v12];

  return v3;
}

- (id)passcodeShiftedControlKeyTraits
{
  v2 = [(UIKBRenderFactory *)self passcodeActiveControlKeyTraits];
  v3 = [UIKBTextStyle styleWithTextColor:@"UIKBColorWhite"];
  [v2 setSymbolStyle:v3];

  return v2;
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