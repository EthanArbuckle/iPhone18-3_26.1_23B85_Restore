@interface UIKBRenderFactory_MonolithLinearSlim
- (CGPoint)_textOffsetForKey:(id)key;
- (CGSize)internationalControlKeySize;
- (id)_enabledTraitsForControlKey:(id)key;
- (id)_highlightedTraitsForControlKey:(id)key;
- (id)_variantTraitsForControlKey:(id)key onKeyplane:(id)keyplane;
- (void)configureGeometry:(id)geometry forControlKey:(id)key;
- (void)configureSymbolStyle:(id)style forControlKey:(id)key;
@end

@implementation UIKBRenderFactory_MonolithLinearSlim

- (CGSize)internationalControlKeySize
{
  v2 = 54.0;
  v3 = 64.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)_textOffsetForKey:(id)key
{
  v11.receiver = self;
  v11.super_class = UIKBRenderFactory_MonolithLinearSlim;
  keyCopy = key;
  [(UIKBRenderFactory_Monolith *)&v11 _textOffsetForKey:keyCopy];
  v5 = v4;
  v7 = v6;
  interactionType = [keyCopy interactionType];

  v9 = 0.0;
  if (interactionType == 4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  if (interactionType != 4)
  {
    v9 = v7;
  }

  result.y = v9;
  result.x = v10;
  return result;
}

- (void)configureGeometry:(id)geometry forControlKey:(id)key
{
  geometryCopy = geometry;
  v26.receiver = self;
  v26.super_class = UIKBRenderFactory_MonolithLinearSlim;
  keyCopy = key;
  [(UIKBRenderFactory_MonolithLinear *)&v26 configureGeometry:geometryCopy forControlKey:keyCopy];
  interactionType = [keyCopy interactionType];

  if (interactionType != 9)
  {
    if (interactionType != 10)
    {
      goto LABEL_7;
    }

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

    if ((colorAdaptiveBackground & 1) == 0)
    {
      [geometryCopy displayFrame];
      v12 = v11;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyHeight];
      v14 = (v12 - v13) * 0.5;
      [geometryCopy displayFrame];
      [geometryCopy setDisplayFrame:{v15 + 0.0, v16 + v14}];
    }
  }

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground2 = [renderConfig2 colorAdaptiveBackground];

  if (colorAdaptiveBackground2)
  {
    [geometryCopy displayFrame];
    [(UIKBRenderFactory_MonolithLinearSlim *)self internationalControlKeySize];
    [geometryCopy displayFrame];
    v20 = v19;
    [(UIKBRenderFactory_MonolithLinearSlim *)self internationalControlKeySize];
    v22 = (v20 - v21) * 0.5;
    [geometryCopy displayFrame];
    [geometryCopy setDisplayFrame:{v23 + v22, v25 + 0.0, v24 - (v22 + v22)}];
  }

LABEL_7:
}

- (void)configureSymbolStyle:(id)style forControlKey:(id)key
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactory_MonolithLinearSlim;
  keyCopy = key;
  [(UIKBRenderFactory_MonolithLinear *)&v9 configureSymbolStyle:styleCopy forControlKey:keyCopy];
  interactionType = [keyCopy interactionType];

  if (interactionType == 10)
  {
    [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFontSize];
    [styleCopy setFontSize:?];
  }
}

- (id)_enabledTraitsForControlKey:(id)key
{
  v14.receiver = self;
  v14.super_class = UIKBRenderFactory_MonolithLinearSlim;
  keyCopy = key;
  v5 = [(UIKBRenderFactory_MonolithLinear *)&v14 _enabledTraitsForControlKey:keyCopy];
  interactionType = [keyCopy interactionType];

  if (interactionType == 10)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v8 = v7;
    geometry = [v5 geometry];
    [geometry setRoundRectRadius:v8];

    pillControlKeyPillBackgroundColor = [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyPillBackgroundColor];
    v11 = [UIKBGradient gradientWithFlatColor:pillControlKeyPillBackgroundColor];
    [v5 setBackgroundGradient:v11];

    [v5 setRenderFlags:&unk_1EFE2C640];
    symbolStyle = [v5 symbolStyle];
    [symbolStyle setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
  }

  else if (interactionType == 9)
  {
    [v5 setRenderFlags:&unk_1EFE2C628];
    [v5 setBackgroundGradient:0];
  }

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)key
{
  v18.receiver = self;
  v18.super_class = UIKBRenderFactory_MonolithLinearSlim;
  keyCopy = key;
  v5 = [(UIKBRenderFactory_MonolithLinear *)&v18 _highlightedTraitsForControlKey:keyCopy];
  interactionType = [keyCopy interactionType];

  if (interactionType == 9)
  {
    geometry = [v5 geometry];
    [geometry displayFrame];
    [v5 setFloatingContentViewControlFocusedBaseSize:{v15, v16}];

    [(UIKBRenderFactory_Monolith *)self letterKeyFocusIncreaseSize];
    [v5 setFloatingContentViewFocusedIncreaseSize:?];
    [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
    [v5 setFloatingContentViewCornerRadius:?];
  }

  else if (interactionType == 10)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v8 = v7;
    geometry2 = [v5 geometry];
    [geometry2 setRoundRectRadius:v8];

    highlightedVariantPillBackgroundColor = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantPillBackgroundColor];
    v11 = [UIKBGradient gradientWithFlatColor:highlightedVariantPillBackgroundColor];
    [v5 setBackgroundGradient:v11];

    [v5 setRenderFlags:&unk_1EFE2C658];
    symbolStyle = [v5 symbolStyle];
    [symbolStyle setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(symbolStyle) = [renderConfig colorAdaptiveBackground];

    if ((symbolStyle & 1) == 0)
    {
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusIncreaseSize];
      [v5 setFloatingContentViewControlFocusedIncreaseSize:?];
    }
  }

  return v5;
}

- (id)_variantTraitsForControlKey:(id)key onKeyplane:(id)keyplane
{
  v89 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  if ([keyCopy interactionType] == 10)
  {
    v83 = keyplaneCopy;
    [(UIKBRenderFactory_MonolithLinearSlim *)self variantKeyPaddingH];
    v9 = v8;
    v10 = -v8;
    [(UIKBRenderFactory_MonolithLinearSlim *)self variantKeyPaddingV];
    v12 = v11;
    v13 = -v11;
    [keyCopy paddedFrame];
    v15 = v14 - v9;
    v17 = v16 - (v10 - v9);
    v19 = v18 - v12;
    v21 = v20 - (v13 - v12);
    [keyCopy paddedFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [UIKBRenderGeometry geometryWithFrame:v15 paddedFrame:v19, v17, v21, v15, v19, v17, v21];
    [(UIKBRenderFactory_Monolith *)self variantPlatterCornerRadius];
    [v30 setRoundRectRadius:?];
    [v30 setRoundRectCorners:-1];
    [v30 paddedFrame];
    v74 = v31;
    v76 = v32;
    v78 = v33;
    v80 = v34;
    subtrees = [keyCopy subtrees];
    [v30 setPaddedFrame:{v74 + 0.0, v78 + 0.0, v76 - (0.0 - v17 * (objc_msgSend(subtrees, "count") - 1)), v80}];

    [v30 paddedFrame];
    v75 = v37;
    v77 = v36;
    v79 = v39;
    v81 = v38;
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    v73 = v40;
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    v72 = v41;
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    v70 = v42;
    [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
    v71 = -(v70 + v43);
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    [v30 setDisplayFrame:{v77 - v44, v81 - v73, v75 - (-v44 - v72), v79 - (v71 - v73)}];
    v45 = [UIKBRenderTraits traitsWithGeometry:v30];
    variantPlatterBackgroundColor = [(UIKBRenderFactory_Monolith *)self variantPlatterBackgroundColor];
    v47 = [UIKBGradient gradientWithFlatColor:variantPlatterBackgroundColor];
    [v45 setBackgroundGradient:v47];

    [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
    v82 = v48;
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    v50 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha25" offset:0.0 insets:v82 weight:0.0, 0.0, 0.0, 0.0, v49];
    [v45 addRenderEffect:v50];

    [v45 setBlurBlending:1];
    array = [MEMORY[0x1E695DF70] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    subtrees2 = [keyCopy subtrees];
    v53 = [subtrees2 countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v85;
      while (1)
      {
        if (*v85 != v55)
        {
          objc_enumerationMutation(subtrees2);
        }

        v56 = [UIKBRenderGeometry geometryWithFrame:v15 paddedFrame:v19, v17, v21, v23, v25, v27, v29];
        [v56 frame];
        [v56 setDisplayFrame:?];
        [v56 frame];
        [v56 setPaddedFrame:?];
        [v56 setRoundRectCorners:-1];
        [(UIKBRenderFactory_Monolith *)self variantPlatterCornerRadius];
        [v56 setRoundRectRadius:?];
        [v56 setLayeredForegroundPaddedFrame:{v23, v25, v27, v29}];
        [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
        [v56 setLayeredForegroundRoundRectRadius:?];
        [array addObject:v56];
        v15 = v17 + v15;
        v23 = v17 + v23;

        if (!--v54)
        {
          v54 = [subtrees2 countByEnumeratingWithState:&v84 objects:v88 count:16];
          if (!v54)
          {
            break;
          }
        }
      }
    }

    [v45 setVariantGeometries:array];
    v57 = [(UIKBRenderFactory_MonolithLinearSlim *)self _enabledTraitsForControlKey:keyCopy];
    [v57 setBackgroundGradient:0];
    variantPillBackgroundColor = [(UIKBRenderFactory_MonolithLinearSlim *)self variantPillBackgroundColor];
    v59 = [UIKBGradient gradientWithFlatColor:variantPillBackgroundColor];
    [v57 setLayeredForegroundGradient:v59];

    variantTextColor = [(UIKBRenderFactory_MonolithLinearSlim *)self variantTextColor];
    symbolStyle = [v57 symbolStyle];
    [symbolStyle setTextColor:variantTextColor];

    [v45 setVariantTraits:v57];
    v62 = [(UIKBRenderFactory_MonolithLinearSlim *)self _highlightedTraitsForControlKey:keyCopy];
    highlightedVariantLayeredBackgroundColor = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantLayeredBackgroundColor];
    v64 = [UIKBGradient gradientWithFlatColor:highlightedVariantLayeredBackgroundColor];
    [v62 setBackgroundGradient:v64];

    highlightedVariantPillBackgroundColor = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantPillBackgroundColor];
    v66 = [UIKBGradient gradientWithFlatColor:highlightedVariantPillBackgroundColor];
    [v62 setLayeredForegroundGradient:v66];

    variantTextColor2 = [(UIKBRenderFactory_MonolithLinearSlim *)self variantTextColor];
    symbolStyle2 = [v62 symbolStyle];
    [symbolStyle2 setTextColor:variantTextColor2];

    [v45 setHighlightedVariantTraits:v62];
    keyplaneCopy = v83;
  }

  else
  {
    v45 = [(UIKBRenderFactory_Monolith *)self _variantTraitsForLetterKey:keyCopy onKeyplane:keyplaneCopy];
  }

  return v45;
}

@end