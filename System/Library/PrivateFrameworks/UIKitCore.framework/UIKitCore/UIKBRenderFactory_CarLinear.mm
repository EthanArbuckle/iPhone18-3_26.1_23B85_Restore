@interface UIKBRenderFactory_CarLinear
- (double)activeLetterFontSize;
- (double)carKeyRadius;
- (double)controlKeyFontSize;
- (double)controlKeyRadius;
- (double)defaultKeyFontSize;
- (double)letterLineFontSize;
- (id)_traitsForColorAdaptiveKey:(id)key onKeyplane:(id)keyplane;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)activeKeyColor;
- (id)enabledKeyColor;
- (id)highlightedKeyColor;
- (id)lightTextFontName;
- (id)variantGeometriesForGeometry:(id)geometry key:(id)key maxWidthForVariant:(double)variant letterWidth:(double)width highlightedWidth:(double)highlightedWidth;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactory_CarLinear

- (double)carKeyRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 6.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 8.0 / v5;
  }

  return v4;
}

- (double)controlKeyRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 16.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 8.0 / v5;
  }

  return v4;
}

- (double)defaultKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 11.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 32.0 / v5;
  }

  return v4;
}

- (double)letterLineFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 11.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 18.0 / v5;
  }

  return v4;
}

- (double)activeLetterFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 16.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 40.0 / v5;
  }

  return v4;
}

- (double)controlKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  v4 = 13.0;
  if (([renderConfig colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 32.0 / v5;
  }

  return v4;
}

- (id)lightTextFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!usesCompactKeycapsFont)
  {
    v4 = UIKBRenderFactorySystemFontName;
  }

  v5 = *v4;

  return v5;
}

- (id)enabledKeyColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    enabledKeyColor = @"UIKBColorClear";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactory_CarLinear;
    enabledKeyColor = [(UIKBRenderFactory_Car *)&v7 enabledKeyColor];
  }

  v5 = enabledKeyColor;

  return v5;
}

- (id)activeKeyColor
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig2 lightKeyboard];
  v7 = UIKBColorBlack;
  if (!colorAdaptiveBackground)
  {
    v7 = UIKBColorKeyBlueKeyBackground;
  }

  v8 = UIKBColorWhite;
  if (!colorAdaptiveBackground)
  {
    v8 = UIKBColorCarTeal;
  }

  if (!lightKeyboard)
  {
    v7 = v8;
  }

  v9 = *v7;
  v10 = *v7;

  return v9;
}

- (id)highlightedKeyColor
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

- (id)variantGeometriesForGeometry:(id)geometry key:(id)key maxWidthForVariant:(double)variant letterWidth:(double)width highlightedWidth:(double)highlightedWidth
{
  keyCopy = key;
  [geometry paddedFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  selectedVariantIndex = [keyCopy selectedVariantIndex];
  subtrees = [keyCopy subtrees];
  v20 = [subtrees count];

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
  if (v20)
  {
    v22 = 0;
    v38 = *off_1E70EC918;
    v23 = v17 + 10.0;
    do
    {
      if (selectedVariantIndex == v22)
      {
        widthCopy = highlightedWidth;
      }

      else
      {
        widthCopy = width;
      }

      subtrees2 = [keyCopy subtrees];
      [subtrees2 objectAtIndexedSubscript:v22];
      v27 = v26 = keyCopy;

      v28 = MEMORY[0x1E695DF20];
      [(UIKBRenderFactory_CarLinear *)self letterLineFontSize];
      v29 = [off_1E70ECC18 systemFontOfSize:?];
      v30 = [v28 dictionaryWithObjectsAndKeys:{v29, v38, 0}];

      displayString = [v27 displayString];
      [displayString sizeWithAttributes:v30];
      if (v32 > width)
      {
        widthCopy2 = widthCopy + 2.0;
      }

      else
      {
        widthCopy2 = width;
      }

      if (selectedVariantIndex == v22)
      {
        highlightedWidthCopy2 = highlightedWidth;
      }

      else
      {
        highlightedWidthCopy2 = widthCopy2;
      }

      v35 = [UIKBRenderGeometry geometryWithFrame:v13 paddedFrame:v15, highlightedWidthCopy2, v17, v13, v15, highlightedWidthCopy2, v17];
      [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
      [v35 setRoundRectRadius:?];
      [v35 setRoundRectCorners:-1];
      [v35 setSymbolFrame:{v13 + -10.0, v15 + -10.0, highlightedWidthCopy2 + 10.0 + 10.0, v17 + 10.0 + 10.0}];
      similarShape = [v35 similarShape];
      [v27 setShape:similarShape];

      [v21 addObject:v35];
      v13 = v13 + highlightedWidthCopy2;

      keyCopy = v26;
      ++v22;
    }

    while (v20 != v22);
  }

  return v21;
}

- (id)_traitsForColorAdaptiveKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v119.receiver = self;
  v119.super_class = UIKBRenderFactory_CarLinear;
  keyplaneCopy = keyplane;
  v8 = [(UIKBRenderFactory_Car *)&v119 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  geometry = [v8 geometry];
  [geometry setRoundRectCorners:-1];

  v10 = [keyCopy state] & 0xC;
  if (v10)
  {
    [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  }

  else
  {
    [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  }
  v11 = ;
  symbolStyle = [v8 symbolStyle];
  [symbolStyle setTextColor:v11];

  [keyplaneCopy frame];
  v14 = v13;

  if ([keyCopy interactionType] == 9)
  {
    [(UIKBRenderFactory_CarLinear *)self internationalKeyRadius];
    v16 = v15;
    geometry2 = [v8 geometry];
    [geometry2 setRoundRectRadius:v16];

    geometry3 = [v8 geometry];
    [geometry3 paddedFrame];
    v20 = v19 + 6.0;
    v22 = v21 + -12.0;
    v24 = v23 + 6.0;
    v26 = v25 + -12.0;
    geometry4 = [v8 geometry];
    v28 = geometry4;
    v29 = v20;
    v30 = v24;
    v31 = v22;
LABEL_12:
    [geometry4 setSymbolFrame:{v29, v30, v31, v26}];

    geometry5 = [v8 geometry];
    [geometry5 paddedFrame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    geometry6 = [v8 geometry];
    [geometry6 setDisplayFrame:{v50, v52, v54, v56}];
    goto LABEL_13;
  }

  if ([keyCopy interactionType] == 11)
  {
    [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
    v33 = v32;
    geometry7 = [v8 geometry];
    [geometry7 setRoundRectRadius:v33];

    [(UIKBRenderFactory_CarLinear *)self defaultKeyFontSize];
LABEL_11:
    v39 = v35;
    symbolStyle2 = [v8 symbolStyle];
    [symbolStyle2 setFontSize:v39];

    geometry3 = [v8 geometry];
    [geometry3 paddedFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v26 = v47;
    geometry4 = [v8 geometry];
    v28 = geometry4;
    v29 = v42;
    v30 = v44;
    v31 = v46;
    goto LABEL_12;
  }

  if ([keyCopy interactionType] == 15 || objc_msgSend(keyCopy, "interactionType") == 13)
  {
    [(UIKBRenderFactory_CarLinear *)self controlKeyRadius];
    v37 = v36;
    geometry8 = [v8 geometry];
    [geometry8 setRoundRectRadius:v37];

    [(UIKBRenderFactory_CarLinear *)self controlKeyFontSize];
    goto LABEL_11;
  }

  if ([keyCopy displayType] != 38)
  {
    goto LABEL_14;
  }

  v73 = v14 + -60.0;
  geometry9 = [v8 geometry];
  [geometry9 paddedFrame];
  v76 = v75 + -12.0;
  v78 = v77 + 12.0 + 12.0;
  v80 = v79 + -12.0;
  v82 = v81 + 12.0 + 12.0;
  geometry10 = [v8 geometry];
  [geometry10 setSymbolFrame:{v76, v80, v78, v82}];

  geometry11 = [v8 geometry];
  [geometry11 paddedFrame];
  v86 = v85 + -12.0;
  v88 = v87 + 12.0 + 12.0;
  v90 = v89 + -12.0;
  v92 = v91 + 12.0 + 12.0;
  geometry12 = [v8 geometry];
  [geometry12 setDisplayFrame:{v86, v90, v88, v92}];

  subtrees = [keyCopy subtrees];
  v95 = [subtrees count];

  v96 = (v73 + -24.0) / v95;
  v97 = fmin(v96, 24.0);
  geometry13 = [v8 geometry];
  v99 = [(UIKBRenderFactory_CarLinear *)self variantGeometriesForGeometry:geometry13 key:keyCopy maxWidthForVariant:v96 letterWidth:v97 highlightedWidth:24.0];
  [v8 setVariantGeometries:v99];

  [(UIKBRenderFactory_CarLinear *)self letterLineFontSize];
  v101 = 9.0;
  if (v97 > 7.0)
  {
    v101 = v100;
    if (v97 <= 8.0)
    {
      v101 = 10.0;
    }
  }

  lightTextFontName = [(UIKBRenderFactory_CarLinear *)self lightTextFontName];
  geometry5 = [UIKBTextStyle styleWithFontName:lightTextFontName withFontSize:v101];

  activeKeyColor = [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  [geometry5 setTextColor:activeKeyColor];

  [geometry5 fontSize];
  if (v104 <= v96)
  {
    [geometry5 fontSize];
    v96 = v105;
  }

  [geometry5 setFontSize:v96];
  v106 = [UIKBRenderTraits traitsWithSymbolStyle:geometry5];
  [v8 setVariantTraits:v106];

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v108 = v107;
  geometry14 = [v8 geometry];
  [geometry14 setRoundRectRadius:v108];

  enabledKeyColor = [(UIKBRenderFactory_CarLinear *)self enabledKeyColor];
  v111 = [UIKBGradient gradientWithFlatColor:enabledKeyColor];
  [v8 setBackgroundGradient:v111];

  [(UIKBRenderFactory_CarLinear *)self activeLetterFontSize];
  geometry6 = [UIKBTextStyle styleWithFontName:0 withFontSize:?];
  highlightedKeyColor = [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  [geometry6 setTextColor:highlightedKeyColor];

  v113 = [UIKBRenderTraits traitsWithSymbolStyle:geometry6];
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  lightKeyboard = [renderConfig lightKeyboard];
  v116 = UIKBColorBlack_Alpha50;
  if (!lightKeyboard)
  {
    v116 = UIKBColorWhite_Alpha70;
  }

  v117 = *v116;

  v118 = [UIKBGradient gradientWithFlatColor:v117];

  [v113 setLayeredForegroundGradient:v118];
  [v8 setHighlightedVariantTraits:v113];

LABEL_13:
LABEL_14:
  if ([keyCopy interactionType] == 9 || objc_msgSend(keyCopy, "interactionType") == 11 || objc_msgSend(keyCopy, "interactionType") == 15 || objc_msgSend(keyCopy, "interactionType") == 13)
  {
    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    lightKeyboard2 = [renderConfig2 lightKeyboard];
    v60 = UIKBColorCarLightDivider;
    if (!lightKeyboard2)
    {
      v60 = UIKBColorCarDarkDivider;
    }

    v61 = *v60;

    if (v10)
    {
      renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig3 lightKeyboard])
      {
        v63 = @"UIKBColorBlack_Alpha50";
      }

      else
      {
        v63 = @"UIKBColorWhite_Alpha70";
      }

      v64 = v63;

      v61 = v64;
    }

    v65 = [UIKBGradient gradientWithFlatColor:v61];
    [v8 setBackgroundGradient:v65];

    [(UIKBRenderFactory_CarLinear *)self activeLetterFontSize];
    v66 = [UIKBTextStyle styleWithFontName:0 withFontSize:?];
    highlightedKeyColor2 = [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
    [v66 setTextColor:highlightedKeyColor2];

    v68 = [UIKBRenderTraits traitsWithSymbolStyle:v66];
    renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig4 lightKeyboard])
    {
      v70 = @"UIKBColorBlack_Alpha50";
    }

    else
    {
      v70 = @"UIKBColorWhite_Alpha70";
    }

    v71 = [UIKBGradient gradientWithFlatColor:v70];
    [v68 setLayeredForegroundGradient:v71];

    [v8 setHighlightedVariantTraits:v68];
  }

  return v8;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    v10 = [(UIKBRenderFactory_CarLinear *)self _traitsForColorAdaptiveKey:keyCopy onKeyplane:keyplaneCopy];
    goto LABEL_39;
  }

  v80.receiver = self;
  v80.super_class = UIKBRenderFactory_CarLinear;
  v10 = [(UIKBRenderFactory_Car *)&v80 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  geometry = [v10 geometry];
  [geometry setRoundRectCorners:-1];

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v13 = v12;
  geometry2 = [v10 geometry];
  [geometry2 setRoundRectRadius:v13];

  if (([keyCopy state] & 0xC) != 0)
  {
    [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  }

  else
  {
    [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  }
  v15 = ;
  symbolStyle = [v10 symbolStyle];
  [symbolStyle setTextColor:v15];

  if ([keyCopy interactionType] == 9)
  {
    v17 = 5;
LABEL_8:
    geometry3 = [v10 geometry];
    [geometry3 setRoundRectCorners:v17];

    goto LABEL_12;
  }

  if ([keyCopy interactionType] == 15)
  {
    v19 = [keyplaneCopy firstCachedKeyWithName:@"International-Key"];
    visible = [v19 visible];

    if (visible)
    {
      v17 = 10;
      goto LABEL_8;
    }
  }

LABEL_12:
  if ([keyCopy displayType] != 38)
  {
    goto LABEL_39;
  }

  enabledKeyColor = [(UIKBRenderFactory_CarLinear *)self enabledKeyColor];
  v22 = [UIKBGradient gradientWithFlatColor:enabledKeyColor];
  [v10 setBackgroundGradient:v22];

  geometry4 = [v10 geometry];
  [geometry4 paddedFrame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v33 = v29 - v32;
  v34 = floor(v33 * 0.095);
  geometry5 = [v10 geometry];
  [geometry5 paddedFrame];
  MidX = CGRectGetMidX(v82);
  [keyplaneCopy frame];
  v37 = CGRectGetMidX(v83);

  v38 = 0.0;
  if (MidX < v37)
  {
    [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  }

  v39 = v34 * 0.2;
  v40 = v25 + v38;
  subtrees = [keyCopy subtrees];
  v42 = [subtrees count];

  v43 = ([keyCopy selectedVariantIndex] & 0x8000000000000000) == 0 && objc_msgSend(keyCopy, "selectedVariantIndex") < v42;
  v79 = keyplaneCopy;
  selectedVariantIndex = [keyCopy selectedVariantIndex];
  v84.origin.x = v25;
  v84.origin.y = v27;
  v84.size.width = v33;
  v84.size.height = v31;
  v45 = CGRectGetMaxX(v84) - v40 - v39;
  if (v43)
  {
    v46 = v39 + v39 - v34 + -2.0 + v45;
  }

  else
  {
    v46 = v45;
  }

  v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:v42];
  if (v42 >= 1)
  {
    v48 = 0;
    v49 = v46 / v42;
    if (selectedVariantIndex)
    {
      v40 = v39 + v40;
    }

    do
    {
      if (v48 == [keyCopy selectedVariantIndex])
      {
        v50 = v34;
      }

      else
      {
        v50 = v49;
      }

      v51 = [UIKBRenderGeometry geometryWithFrame:v40 paddedFrame:v27, v50, v31, v40, v27, v50, v31];
      [v51 symbolFrame];
      [v51 setSymbolFrame:{v52 + -2.0, v54 + 0.0, v53 + 4.0}];
      [v47 addObject:v51];
      v55 = v39 + v40;
      if (v48 | selectedVariantIndex)
      {
        v55 = v40;
      }

      v40 = v55 + v50;

      ++v48;
    }

    while (v42 != v48);
    [v10 setVariantGeometries:v47];
    goto LABEL_32;
  }

  [v10 setVariantGeometries:v47];
  if (v42)
  {
LABEL_32:
    for (i = 0; i != v42; ++i)
    {
      subtrees2 = [keyCopy subtrees];
      v58 = [subtrees2 objectAtIndex:i];
      variantGeometries = [v10 variantGeometries];
      v60 = [variantGeometries objectAtIndex:i];
      similarShape = [v60 similarShape];
      [v58 setShape:similarShape];
    }
  }

  lightTextFontName = [v78 lightTextFontName];
  [v78 letterLineFontSize];
  v63 = [UIKBTextStyle styleWithFontName:lightTextFontName withFontSize:?];

  activeKeyColor = [v78 activeKeyColor];
  [v63 setTextColor:activeKeyColor];

  v65 = [UIKBRenderTraits traitsWithSymbolStyle:v63];
  [v10 setVariantTraits:v65];

  [v78 activeLetterFontSize];
  v66 = [UIKBTextStyle styleWithFontName:0 withFontSize:?];
  highlightedKeyColor = [v78 highlightedKeyColor];
  [v66 setTextColor:highlightedKeyColor];

  [v66 setTextOffset:{0.0, 2.0}];
  v68 = [UIKBRenderTraits traitsWithSymbolStyle:v66];
  activeKeyColor2 = [v78 activeKeyColor];
  renderConfig2 = [v78 renderConfig];
  colorAdaptiveBackground2 = [renderConfig2 colorAdaptiveBackground];

  if (colorAdaptiveBackground2)
  {
    renderConfig3 = [v78 renderConfig];
    lightKeyboard = [renderConfig3 lightKeyboard];
    v74 = UIKBColorCarDarkTeal;
    if (!lightKeyboard)
    {
      v74 = UIKBColorCarLightTeal;
    }

    v75 = *v74;

    activeKeyColor2 = v75;
  }

  keyplaneCopy = v79;
  v76 = [UIKBGradient gradientWithFlatColor:activeKeyColor2];
  [v68 setLayeredForegroundGradient:v76];

  [v10 setHighlightedVariantTraits:v68];
LABEL_39:

  return v10;
}

- (void)setupLayoutSegments
{
  v8 = [UIKBRenderGeometry geometryWithShape:0];
  [v8 setRoundRectCorners:5];
  v3 = [UIKBRenderTraits traitsWithGeometry:v8];
  v4 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v3];
  [v4 addLayoutRect:0 asTriangle:{0.0, 0.0, 0.5, 0.5}];
  [(UIKBRenderFactory *)self addLayoutSegment:v4];
  v5 = [UIKBRenderGeometry geometryWithShape:0];
  [v5 setRoundRectCorners:10];
  v6 = [UIKBRenderTraits traitsWithGeometry:v5];
  v7 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v6];
  [v7 addLayoutRect:0 asTriangle:{0.5, 0.0, 0.5, 0.5}];
  [(UIKBRenderFactory *)self addLayoutSegment:v7];
}

@end