@interface UIFont(VideosUI)
+ (char)uifontWeightFromFontWeight:()VideosUI;
+ (id)_fontFromTextStyle:()VideosUI maximumContentSizeCategory:fontWeight:fontSize:fontWidth:symbolicTraits:fontFeature:;
+ (id)_uiFontAttributesForFeature:()VideosUI;
+ (id)uiFontTextStyleFromTextStyle:()VideosUI;
+ (id)uifontWidthFromFontWidth:()VideosUI;
+ (id)vui_fontFromTextLayout:()VideosUI;
+ (uint64_t)vui_fontFromTextStyle:()VideosUI fontWeight:fontSize:fontWidth:symbolicTraits:;
- (uint64_t)baselineHeight;
- (uint64_t)bottomMarginWithBaselineMargin:()VideosUI traitCollection:;
- (uint64_t)topMarginToFont:()VideosUI withBaselineMargin:traitCollection:;
- (uint64_t)topMarginWithBaselineMargin:()VideosUI traitCollection:;
@end

@implementation UIFont(VideosUI)

+ (uint64_t)vui_fontFromTextStyle:()VideosUI fontWeight:fontSize:fontWidth:symbolicTraits:
{
  v12 = objc_opt_class();
  v13 = *MEMORY[0x1E69DDC90];

  return [v12 _fontFromTextStyle:a4 maximumContentSizeCategory:v13 fontWeight:a5 fontSize:a6 fontWidth:a7 symbolicTraits:0 fontFeature:self];
}

+ (id)vui_fontFromTextLayout:()VideosUI
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  textStyle = [v3 textStyle];
  maximumContentSizeCategory = [v3 maximumContentSizeCategory];
  v6 = [MEMORY[0x1E69DF6D0] uiContentSizeCategoryFor:maximumContentSizeCategory];
  fontWeight = [v3 fontWeight];
  fontWidth = [v3 fontWidth];
  [v3 fontSize];
  v10 = v9;
  fontTraits = [v3 fontTraits];
  v12 = [objc_opt_class() _fontFromTextStyle:textStyle maximumContentSizeCategory:v6 fontWeight:fontWeight fontSize:fontWidth fontWidth:fontTraits symbolicTraits:objc_msgSend(v3 fontFeature:{"fontFeature"), v10}];
  if (v12)
  {
    goto LABEL_24;
  }

  fontFamily = [v3 fontFamily];
  v14 = [objc_opt_class() uifontWeightFromFontWeight:fontWeight];
  [v14 floatValue];
  v16 = v15;
  v17 = [objc_opt_class() uifontWidthFromFontWidth:fontWidth];
  [v17 floatValue];
  v19 = v18;
  v20 = 0x1E69DB000uLL;
  if (v10 <= 0.0)
  {
    [MEMORY[0x1E69DB878] systemFontSize];
    v10 = v21;
  }

  v22 = v16;
  if ([fontFamily length] && objc_msgSend(fontFamily, "isEqualToString:", @"SFRounded"))
  {
    v23 = MEMORY[0x1E69DB878];
    v24 = @"NSCTFontUIFontDesignRounded";
LABEL_14:
    v26 = [v23 systemFontOfSize:v24 weight:v10 design:v22];
    fontDescriptor = [v26 fontDescriptor];

    goto LABEL_15;
  }

  if ([fontFamily length] && objc_msgSend(fontFamily, "isEqualToString:", @"SFCompactRounded"))
  {
    v23 = MEMORY[0x1E69DB878];
    v25 = MEMORY[0x1E69658A8];
LABEL_13:
    v24 = *v25;
    goto LABEL_14;
  }

  if ([fontFamily length] && objc_msgSend(fontFamily, "isEqualToString:", @"SFPro"))
  {
    v23 = MEMORY[0x1E69DB878];
    v25 = MEMORY[0x1E69658B8];
    goto LABEL_13;
  }

  if (![fontFamily length])
  {
LABEL_31:
    v36 = [*(v20 + 2168) systemFontOfSize:v10 weight:v22];
    fontDescriptor = [v36 fontDescriptor];

    if (!fontTraits)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v14 || *MEMORY[0x1E69DB978] == v22)
  {
    fontDescriptor = [MEMORY[0x1E69DB880] fontDescriptorWithName:fontFamily size:v10];
  }

  else
  {
    v32 = objc_alloc(MEMORY[0x1E69DB880]);
    v33 = *MEMORY[0x1E69DB8F0];
    v46 = v14;
    v47[0] = v33;
    v45 = *MEMORY[0x1E69DB990];
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v47[1] = *MEMORY[0x1E69DB8A8];
    v48[0] = v34;
    v48[1] = fontFamily;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    fontDescriptor = [v32 initWithFontAttributes:v35];

    v20 = 0x1E69DB000;
  }

  if (v17 && fontDescriptor && *MEMORY[0x1E69DB9B8] != v19)
  {
    v41 = *MEMORY[0x1E69DB8F0];
    v37 = [fontDescriptor objectForKey:{v19, *MEMORY[0x1E69DB9B8]}];
    v38 = [v37 mutableCopy];

    v42 = v38;
    [v38 setObject:v17 forKey:*MEMORY[0x1E69DB9C0]];
    v43 = v41;
    v44 = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v40 = [fontDescriptor fontDescriptorByAddingAttributes:v39];

    fontDescriptor = v40;
    v20 = 0x1E69DB000;
  }

LABEL_15:
  if (!fontDescriptor)
  {
    goto LABEL_31;
  }

  if (fontTraits)
  {
LABEL_17:
    v28 = [fontDescriptor fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor, "symbolicTraits") | fontTraits}];

    fontDescriptor = v28;
  }

LABEL_18:
  v29 = [objc_opt_class() _uiFontAttributesForFeature:{objc_msgSend(v3, "fontFeature")}];
  if (v29)
  {
    v30 = [fontDescriptor fontDescriptorByAddingAttributes:v29];

    fontDescriptor = v30;
  }

  if (fontDescriptor)
  {
    v12 = [*(v20 + 2168) fontWithDescriptor:fontDescriptor size:v10];
  }

  else
  {
    v12 = 0;
  }

LABEL_24:

  return v12;
}

+ (id)_fontFromTextStyle:()VideosUI maximumContentSizeCategory:fontWeight:fontSize:fontWidth:symbolicTraits:fontFeature:
{
  v45[1] = *MEMORY[0x1E69E9840];
  v16 = a5;
  v17 = [self uiFontTextStyleFromTextStyle:a4];
  v18 = v17;
  if (a4 == 24 || a4 == 18)
  {
    if ([v17 length])
    {
      v19 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v18 variant:256 maximumContentSizeCategory:v16];
      goto LABEL_7;
    }

LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  if (![v17 length])
  {
    goto LABEL_22;
  }

  v19 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v18 maximumContentSizeCategory:v16];
LABEL_7:
  v20 = v19;
  if (!v19)
  {
LABEL_23:
    v34 = 0;
    goto LABEL_33;
  }

  fontDescriptor = [v19 fontDescriptor];
  [objc_opt_class() uifontWeightFromFontWeight:a6];
  v41 = v40 = v16;
  v39 = a9;
  if (v41 && fontDescriptor)
  {
    v22 = *MEMORY[0x1E69DB8F0];
    v23 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8F0]];
    v24 = [v23 mutableCopy];

    [v24 setObject:v41 forKey:*MEMORY[0x1E69DB990]];
    v44 = v22;
    v45[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v26 = [fontDescriptor fontDescriptorByAddingAttributes:v25];

    a9 = v39;
    fontDescriptor = v26;
    v16 = v40;
  }

  v27 = [objc_opt_class() uifontWidthFromFontWidth:a7];
  if (v27 && fontDescriptor)
  {
    v28 = *MEMORY[0x1E69DB8F0];
    v29 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8F0]];
    v30 = [v29 mutableCopy];

    [v30 setObject:v27 forKey:*MEMORY[0x1E69DB9C0]];
    v42 = v28;
    v43 = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v32 = [fontDescriptor fontDescriptorByAddingAttributes:v31];

    fontDescriptor = v32;
    a9 = v39;
    v16 = v40;
  }

  if (a6 == 10)
  {
    v33 = a8 | 2;
  }

  else
  {
    v33 = a8;
  }

  if (a9 == 4)
  {
    v33 |= 0x10000u;
  }

  else
  {
    if (a9 == 3)
    {
      v33 |= 0x8000u;
    }

    if (!v33)
    {
      goto LABEL_27;
    }
  }

  if (fontDescriptor)
  {
    v35 = [fontDescriptor fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor, "symbolicTraits") | v33}];

    fontDescriptor = v35;
  }

LABEL_27:
  v36 = [objc_opt_class() _uiFontAttributesForFeature:a9];
  if (v36)
  {
    v37 = [fontDescriptor fontDescriptorByAddingAttributes:v36];

    fontDescriptor = v37;
  }

  if (fontDescriptor)
  {
    v34 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:a2];
  }

  else
  {
    v34 = 0;
  }

LABEL_33:

  return v34;
}

+ (char)uifontWeightFromFontWeight:()VideosUI
{
  if (uifontWeightFromFontWeight__onceToken != -1)
  {
    +[UIFont(VideosUI) uifontWeightFromFontWeight:];
  }

  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  if ((a3 - 10) <= 0xFFFFFFFFFFFFFFFDLL && IsBoldTextEnabled)
  {
    a3 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
  }

  else if (a3)
  {
    v5 = uifontWeightFromFontWeight__sFontWeightMap;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    a3 = [v5 objectForKeyedSubscript:v6];
  }

  return a3;
}

+ (id)uifontWidthFromFontWidth:()VideosUI
{
  v3 = a3;
  if (uifontWidthFromFontWidth__onceToken == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  +[UIFont(VideosUI) uifontWidthFromFontWidth:];
  if (v3)
  {
LABEL_3:
    v4 = uifontWidthFromFontWidth__sFontWeightMap;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v3 = [v4 objectForKeyedSubscript:v5];
  }

LABEL_4:

  return v3;
}

+ (id)_uiFontAttributesForFeature:()VideosUI
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v18 = *MEMORY[0x1E69DB8B0];
    v5 = *MEMORY[0x1E69DB900];
    v15[0] = *MEMORY[0x1E69DB908];
    v4 = v15[0];
    v15[1] = v5;
    v16[0] = &unk_1F5E5CAE0;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v16[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v17[0] = v7;
    v13[1] = v5;
    v14[0] = &unk_1F5E5CAF8;
    v13[0] = v4;
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v17[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v19[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)uiFontTextStyleFromTextStyle:()VideosUI
{
  if (uiFontTextStyleFromTextStyle__onceToken != -1)
  {
    +[UIFont(VideosUI) uiFontTextStyleFromTextStyle:];
  }

  if (a3 == -1)
  {
    v6 = 0;
  }

  else
  {
    v4 = uiFontTextStyleFromTextStyle__sTextStyleMap;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v6 = [v4 objectForKeyedSubscript:v5];
  }

  return v6;
}

- (uint64_t)baselineHeight
{
  [self ascender];

  return VUIRoundValue();
}

- (uint64_t)topMarginWithBaselineMargin:()VideosUI traitCollection:
{
  [VUIUtilities scaleContentSizeValue:"scaleContentSizeValue:forTraitCollection:" forTraitCollection:?];
  [self ascender];

  return VUIRoundValue();
}

- (uint64_t)bottomMarginWithBaselineMargin:()VideosUI traitCollection:
{
  [VUIUtilities scaleContentSizeValue:"scaleContentSizeValue:forTraitCollection:" forTraitCollection:?];
  [self descender];

  return VUIRoundValue();
}

- (uint64_t)topMarginToFont:()VideosUI withBaselineMargin:traitCollection:
{
  v8 = a4;
  [VUIUtilities scaleContentSizeValue:a5 forTraitCollection:a2];
  [self ascender];
  [v8 descender];

  return VUIRoundValue();
}

@end