@interface UIKBRenderFactory_MonolithLinearSlim
- (CGPoint)_textOffsetForKey:(id)a3;
- (CGSize)internationalControlKeySize;
- (id)_enabledTraitsForControlKey:(id)a3;
- (id)_highlightedTraitsForControlKey:(id)a3;
- (id)_variantTraitsForControlKey:(id)a3 onKeyplane:(id)a4;
- (void)configureGeometry:(id)a3 forControlKey:(id)a4;
- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4;
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

- (CGPoint)_textOffsetForKey:(id)a3
{
  v11.receiver = self;
  v11.super_class = UIKBRenderFactory_MonolithLinearSlim;
  v3 = a3;
  [(UIKBRenderFactory_Monolith *)&v11 _textOffsetForKey:v3];
  v5 = v4;
  v7 = v6;
  v8 = [v3 interactionType];

  v9 = 0.0;
  if (v8 == 4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  if (v8 != 4)
  {
    v9 = v7;
  }

  result.y = v9;
  result.x = v10;
  return result;
}

- (void)configureGeometry:(id)a3 forControlKey:(id)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = UIKBRenderFactory_MonolithLinearSlim;
  v7 = a4;
  [(UIKBRenderFactory_MonolithLinear *)&v26 configureGeometry:v6 forControlKey:v7];
  v8 = [v7 interactionType];

  if (v8 != 9)
  {
    if (v8 != 10)
    {
      goto LABEL_7;
    }

    v9 = [(UIKBRenderFactory *)self renderConfig];
    v10 = [v9 colorAdaptiveBackground];

    if ((v10 & 1) == 0)
    {
      [v6 displayFrame];
      v12 = v11;
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyHeight];
      v14 = (v12 - v13) * 0.5;
      [v6 displayFrame];
      [v6 setDisplayFrame:{v15 + 0.0, v16 + v14}];
    }
  }

  v17 = [(UIKBRenderFactory *)self renderConfig];
  v18 = [v17 colorAdaptiveBackground];

  if (v18)
  {
    [v6 displayFrame];
    [(UIKBRenderFactory_MonolithLinearSlim *)self internationalControlKeySize];
    [v6 displayFrame];
    v20 = v19;
    [(UIKBRenderFactory_MonolithLinearSlim *)self internationalControlKeySize];
    v22 = (v20 - v21) * 0.5;
    [v6 displayFrame];
    [v6 setDisplayFrame:{v23 + v22, v25 + 0.0, v24 - (v22 + v22)}];
  }

LABEL_7:
}

- (void)configureSymbolStyle:(id)a3 forControlKey:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactory_MonolithLinearSlim;
  v7 = a4;
  [(UIKBRenderFactory_MonolithLinear *)&v9 configureSymbolStyle:v6 forControlKey:v7];
  v8 = [v7 interactionType];

  if (v8 == 10)
  {
    [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFontSize];
    [v6 setFontSize:?];
  }
}

- (id)_enabledTraitsForControlKey:(id)a3
{
  v14.receiver = self;
  v14.super_class = UIKBRenderFactory_MonolithLinearSlim;
  v4 = a3;
  v5 = [(UIKBRenderFactory_MonolithLinear *)&v14 _enabledTraitsForControlKey:v4];
  v6 = [v4 interactionType];

  if (v6 == 10)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v8 = v7;
    v9 = [v5 geometry];
    [v9 setRoundRectRadius:v8];

    v10 = [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyPillBackgroundColor];
    v11 = [UIKBGradient gradientWithFlatColor:v10];
    [v5 setBackgroundGradient:v11];

    [v5 setRenderFlags:&unk_1EFE2C640];
    v12 = [v5 symbolStyle];
    [v12 setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
  }

  else if (v6 == 9)
  {
    [v5 setRenderFlags:&unk_1EFE2C628];
    [v5 setBackgroundGradient:0];
  }

  return v5;
}

- (id)_highlightedTraitsForControlKey:(id)a3
{
  v18.receiver = self;
  v18.super_class = UIKBRenderFactory_MonolithLinearSlim;
  v4 = a3;
  v5 = [(UIKBRenderFactory_MonolithLinear *)&v18 _highlightedTraitsForControlKey:v4];
  v6 = [v4 interactionType];

  if (v6 == 9)
  {
    v14 = [v5 geometry];
    [v14 displayFrame];
    [v5 setFloatingContentViewControlFocusedBaseSize:{v15, v16}];

    [(UIKBRenderFactory_Monolith *)self letterKeyFocusIncreaseSize];
    [v5 setFloatingContentViewFocusedIncreaseSize:?];
    [(UIKBRenderFactory_Monolith *)self keyRectCornerRadius];
    [v5 setFloatingContentViewCornerRadius:?];
  }

  else if (v6 == 10)
  {
    [(UIKBRenderFactory_Monolith *)self controlKeyRectCornerRadius];
    v8 = v7;
    v9 = [v5 geometry];
    [v9 setRoundRectRadius:v8];

    v10 = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantPillBackgroundColor];
    v11 = [UIKBGradient gradientWithFlatColor:v10];
    [v5 setBackgroundGradient:v11];

    [v5 setRenderFlags:&unk_1EFE2C658];
    v12 = [v5 symbolStyle];
    [v12 setTextColor:@"UIKBColorBlack"];

    [v5 setBlendForm:4];
    v13 = [(UIKBRenderFactory *)self renderConfig];
    LOBYTE(v12) = [v13 colorAdaptiveBackground];

    if ((v12 & 1) == 0)
    {
      [(UIKBRenderFactory_MonolithLinear *)self pillControlKeyFocusIncreaseSize];
      [v5 setFloatingContentViewControlFocusedIncreaseSize:?];
    }
  }

  return v5;
}

- (id)_variantTraitsForControlKey:(id)a3 onKeyplane:(id)a4
{
  v89 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 interactionType] == 10)
  {
    v83 = v7;
    [(UIKBRenderFactory_MonolithLinearSlim *)self variantKeyPaddingH];
    v9 = v8;
    v10 = -v8;
    [(UIKBRenderFactory_MonolithLinearSlim *)self variantKeyPaddingV];
    v12 = v11;
    v13 = -v11;
    [v6 paddedFrame];
    v15 = v14 - v9;
    v17 = v16 - (v10 - v9);
    v19 = v18 - v12;
    v21 = v20 - (v13 - v12);
    [v6 paddedFrame];
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
    v35 = [v6 subtrees];
    [v30 setPaddedFrame:{v74 + 0.0, v78 + 0.0, v76 - (0.0 - v17 * (objc_msgSend(v35, "count") - 1)), v80}];

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
    v46 = [(UIKBRenderFactory_Monolith *)self variantPlatterBackgroundColor];
    v47 = [UIKBGradient gradientWithFlatColor:v46];
    [v45 setBackgroundGradient:v47];

    [(UIKBRenderFactory_Monolith *)self shadowVerticalOffset];
    v82 = v48;
    [(UIKBRenderFactory_Monolith *)self shadowRadius];
    v50 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha25" offset:0.0 insets:v82 weight:0.0, 0.0, 0.0, 0.0, v49];
    [v45 addRenderEffect:v50];

    [v45 setBlurBlending:1];
    v51 = [MEMORY[0x1E695DF70] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v52 = [v6 subtrees];
    v53 = [v52 countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v85;
      while (1)
      {
        if (*v85 != v55)
        {
          objc_enumerationMutation(v52);
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
        [v51 addObject:v56];
        v15 = v17 + v15;
        v23 = v17 + v23;

        if (!--v54)
        {
          v54 = [v52 countByEnumeratingWithState:&v84 objects:v88 count:16];
          if (!v54)
          {
            break;
          }
        }
      }
    }

    [v45 setVariantGeometries:v51];
    v57 = [(UIKBRenderFactory_MonolithLinearSlim *)self _enabledTraitsForControlKey:v6];
    [v57 setBackgroundGradient:0];
    v58 = [(UIKBRenderFactory_MonolithLinearSlim *)self variantPillBackgroundColor];
    v59 = [UIKBGradient gradientWithFlatColor:v58];
    [v57 setLayeredForegroundGradient:v59];

    v60 = [(UIKBRenderFactory_MonolithLinearSlim *)self variantTextColor];
    v61 = [v57 symbolStyle];
    [v61 setTextColor:v60];

    [v45 setVariantTraits:v57];
    v62 = [(UIKBRenderFactory_MonolithLinearSlim *)self _highlightedTraitsForControlKey:v6];
    v63 = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantLayeredBackgroundColor];
    v64 = [UIKBGradient gradientWithFlatColor:v63];
    [v62 setBackgroundGradient:v64];

    v65 = [(UIKBRenderFactory_MonolithLinearSlim *)self highlightedVariantPillBackgroundColor];
    v66 = [UIKBGradient gradientWithFlatColor:v65];
    [v62 setLayeredForegroundGradient:v66];

    v67 = [(UIKBRenderFactory_MonolithLinearSlim *)self variantTextColor];
    v68 = [v62 symbolStyle];
    [v68 setTextColor:v67];

    [v45 setHighlightedVariantTraits:v62];
    v7 = v83;
  }

  else
  {
    v45 = [(UIKBRenderFactory_Monolith *)self _variantTraitsForLetterKey:v6 onKeyplane:v7];
  }

  return v45;
}

@end