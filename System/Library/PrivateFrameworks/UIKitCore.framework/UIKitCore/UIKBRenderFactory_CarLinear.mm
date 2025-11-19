@interface UIKBRenderFactory_CarLinear
- (double)activeLetterFontSize;
- (double)carKeyRadius;
- (double)controlKeyFontSize;
- (double)controlKeyRadius;
- (double)defaultKeyFontSize;
- (double)letterLineFontSize;
- (id)_traitsForColorAdaptiveKey:(id)a3 onKeyplane:(id)a4;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)activeKeyColor;
- (id)enabledKeyColor;
- (id)highlightedKeyColor;
- (id)lightTextFontName;
- (id)variantGeometriesForGeometry:(id)a3 key:(id)a4 maxWidthForVariant:(double)a5 letterWidth:(double)a6 highlightedWidth:(double)a7;
- (void)setupLayoutSegments;
@end

@implementation UIKBRenderFactory_CarLinear

- (double)carKeyRadius
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 6.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 8.0 / v5;
  }

  return v4;
}

- (double)controlKeyRadius
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 16.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 8.0 / v5;
  }

  return v4;
}

- (double)defaultKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 11.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 32.0 / v5;
  }

  return v4;
}

- (double)letterLineFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 11.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 18.0 / v5;
  }

  return v4;
}

- (double)activeLetterFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 16.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 40.0 / v5;
  }

  return v4;
}

- (double)controlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 13.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    [(UIKBRenderFactory_Car *)self carScale];
    v4 = 32.0 / v5;
  }

  return v4;
}

- (id)lightTextFontName
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];

  v4 = UIKBRenderFactorySystemCompactFontName;
  if (!v3)
  {
    v4 = UIKBRenderFactorySystemFontName;
  }

  v5 = *v4;

  return v5;
}

- (id)enabledKeyColor
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  if ([v3 colorAdaptiveBackground])
  {
    v4 = @"UIKBColorClear";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactory_CarLinear;
    v4 = [(UIKBRenderFactory_Car *)&v7 enabledKeyColor];
  }

  v5 = v4;

  return v5;
}

- (id)activeKeyColor
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 colorAdaptiveBackground];

  v5 = [(UIKBRenderFactory *)self renderConfig];
  v6 = [v5 lightKeyboard];
  v7 = UIKBColorBlack;
  if (!v4)
  {
    v7 = UIKBColorKeyBlueKeyBackground;
  }

  v8 = UIKBColorWhite;
  if (!v4)
  {
    v8 = UIKBColorCarTeal;
  }

  if (!v6)
  {
    v7 = v8;
  }

  v9 = *v7;
  v10 = *v7;

  return v9;
}

- (id)highlightedKeyColor
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

- (id)variantGeometriesForGeometry:(id)a3 key:(id)a4 maxWidthForVariant:(double)a5 letterWidth:(double)a6 highlightedWidth:(double)a7
{
  v11 = a4;
  [a3 paddedFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v11 selectedVariantIndex];
  v19 = [v11 subtrees];
  v20 = [v19 count];

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
  if (v20)
  {
    v22 = 0;
    v38 = *off_1E70EC918;
    v23 = v17 + 10.0;
    do
    {
      if (v18 == v22)
      {
        v24 = a7;
      }

      else
      {
        v24 = a6;
      }

      v25 = [v11 subtrees];
      [v25 objectAtIndexedSubscript:v22];
      v27 = v26 = v11;

      v28 = MEMORY[0x1E695DF20];
      [(UIKBRenderFactory_CarLinear *)self letterLineFontSize];
      v29 = [off_1E70ECC18 systemFontOfSize:?];
      v30 = [v28 dictionaryWithObjectsAndKeys:{v29, v38, 0}];

      v31 = [v27 displayString];
      [v31 sizeWithAttributes:v30];
      if (v32 > a6)
      {
        v33 = v24 + 2.0;
      }

      else
      {
        v33 = a6;
      }

      if (v18 == v22)
      {
        v34 = a7;
      }

      else
      {
        v34 = v33;
      }

      v35 = [UIKBRenderGeometry geometryWithFrame:v13 paddedFrame:v15, v34, v17, v13, v15, v34, v17];
      [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
      [v35 setRoundRectRadius:?];
      [v35 setRoundRectCorners:-1];
      [v35 setSymbolFrame:{v13 + -10.0, v15 + -10.0, v34 + 10.0 + 10.0, v17 + 10.0 + 10.0}];
      v36 = [v35 similarShape];
      [v27 setShape:v36];

      [v21 addObject:v35];
      v13 = v13 + v34;

      v11 = v26;
      ++v22;
    }

    while (v20 != v22);
  }

  return v21;
}

- (id)_traitsForColorAdaptiveKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v119.receiver = self;
  v119.super_class = UIKBRenderFactory_CarLinear;
  v7 = a4;
  v8 = [(UIKBRenderFactory_Car *)&v119 _traitsForKey:v6 onKeyplane:v7];
  v9 = [v8 geometry];
  [v9 setRoundRectCorners:-1];

  v10 = [v6 state] & 0xC;
  if (v10)
  {
    [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  }

  else
  {
    [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  }
  v11 = ;
  v12 = [v8 symbolStyle];
  [v12 setTextColor:v11];

  [v7 frame];
  v14 = v13;

  if ([v6 interactionType] == 9)
  {
    [(UIKBRenderFactory_CarLinear *)self internationalKeyRadius];
    v16 = v15;
    v17 = [v8 geometry];
    [v17 setRoundRectRadius:v16];

    v18 = [v8 geometry];
    [v18 paddedFrame];
    v20 = v19 + 6.0;
    v22 = v21 + -12.0;
    v24 = v23 + 6.0;
    v26 = v25 + -12.0;
    v27 = [v8 geometry];
    v28 = v27;
    v29 = v20;
    v30 = v24;
    v31 = v22;
LABEL_12:
    [v27 setSymbolFrame:{v29, v30, v31, v26}];

    v48 = [v8 geometry];
    [v48 paddedFrame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = [v8 geometry];
    [v57 setDisplayFrame:{v50, v52, v54, v56}];
    goto LABEL_13;
  }

  if ([v6 interactionType] == 11)
  {
    [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
    v33 = v32;
    v34 = [v8 geometry];
    [v34 setRoundRectRadius:v33];

    [(UIKBRenderFactory_CarLinear *)self defaultKeyFontSize];
LABEL_11:
    v39 = v35;
    v40 = [v8 symbolStyle];
    [v40 setFontSize:v39];

    v18 = [v8 geometry];
    [v18 paddedFrame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v26 = v47;
    v27 = [v8 geometry];
    v28 = v27;
    v29 = v42;
    v30 = v44;
    v31 = v46;
    goto LABEL_12;
  }

  if ([v6 interactionType] == 15 || objc_msgSend(v6, "interactionType") == 13)
  {
    [(UIKBRenderFactory_CarLinear *)self controlKeyRadius];
    v37 = v36;
    v38 = [v8 geometry];
    [v38 setRoundRectRadius:v37];

    [(UIKBRenderFactory_CarLinear *)self controlKeyFontSize];
    goto LABEL_11;
  }

  if ([v6 displayType] != 38)
  {
    goto LABEL_14;
  }

  v73 = v14 + -60.0;
  v74 = [v8 geometry];
  [v74 paddedFrame];
  v76 = v75 + -12.0;
  v78 = v77 + 12.0 + 12.0;
  v80 = v79 + -12.0;
  v82 = v81 + 12.0 + 12.0;
  v83 = [v8 geometry];
  [v83 setSymbolFrame:{v76, v80, v78, v82}];

  v84 = [v8 geometry];
  [v84 paddedFrame];
  v86 = v85 + -12.0;
  v88 = v87 + 12.0 + 12.0;
  v90 = v89 + -12.0;
  v92 = v91 + 12.0 + 12.0;
  v93 = [v8 geometry];
  [v93 setDisplayFrame:{v86, v90, v88, v92}];

  v94 = [v6 subtrees];
  v95 = [v94 count];

  v96 = (v73 + -24.0) / v95;
  v97 = fmin(v96, 24.0);
  v98 = [v8 geometry];
  v99 = [(UIKBRenderFactory_CarLinear *)self variantGeometriesForGeometry:v98 key:v6 maxWidthForVariant:v96 letterWidth:v97 highlightedWidth:24.0];
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

  v102 = [(UIKBRenderFactory_CarLinear *)self lightTextFontName];
  v48 = [UIKBTextStyle styleWithFontName:v102 withFontSize:v101];

  v103 = [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  [v48 setTextColor:v103];

  [v48 fontSize];
  if (v104 <= v96)
  {
    [v48 fontSize];
    v96 = v105;
  }

  [v48 setFontSize:v96];
  v106 = [UIKBRenderTraits traitsWithSymbolStyle:v48];
  [v8 setVariantTraits:v106];

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v108 = v107;
  v109 = [v8 geometry];
  [v109 setRoundRectRadius:v108];

  v110 = [(UIKBRenderFactory_CarLinear *)self enabledKeyColor];
  v111 = [UIKBGradient gradientWithFlatColor:v110];
  [v8 setBackgroundGradient:v111];

  [(UIKBRenderFactory_CarLinear *)self activeLetterFontSize];
  v57 = [UIKBTextStyle styleWithFontName:0 withFontSize:?];
  v112 = [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  [v57 setTextColor:v112];

  v113 = [UIKBRenderTraits traitsWithSymbolStyle:v57];
  v114 = [(UIKBRenderFactory *)self renderConfig];
  v115 = [v114 lightKeyboard];
  v116 = UIKBColorBlack_Alpha50;
  if (!v115)
  {
    v116 = UIKBColorWhite_Alpha70;
  }

  v117 = *v116;

  v118 = [UIKBGradient gradientWithFlatColor:v117];

  [v113 setLayeredForegroundGradient:v118];
  [v8 setHighlightedVariantTraits:v113];

LABEL_13:
LABEL_14:
  if ([v6 interactionType] == 9 || objc_msgSend(v6, "interactionType") == 11 || objc_msgSend(v6, "interactionType") == 15 || objc_msgSend(v6, "interactionType") == 13)
  {
    v58 = [(UIKBRenderFactory *)self renderConfig];
    v59 = [v58 lightKeyboard];
    v60 = UIKBColorCarLightDivider;
    if (!v59)
    {
      v60 = UIKBColorCarDarkDivider;
    }

    v61 = *v60;

    if (v10)
    {
      v62 = [(UIKBRenderFactory *)self renderConfig];
      if ([v62 lightKeyboard])
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
    v67 = [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
    [v66 setTextColor:v67];

    v68 = [UIKBRenderTraits traitsWithSymbolStyle:v66];
    v69 = [(UIKBRenderFactory *)self renderConfig];
    if ([v69 lightKeyboard])
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

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBRenderFactory *)self renderConfig];
  v9 = [v8 colorAdaptiveBackground];

  if (v9)
  {
    v10 = [(UIKBRenderFactory_CarLinear *)self _traitsForColorAdaptiveKey:v6 onKeyplane:v7];
    goto LABEL_39;
  }

  v80.receiver = self;
  v80.super_class = UIKBRenderFactory_CarLinear;
  v10 = [(UIKBRenderFactory_Car *)&v80 _traitsForKey:v6 onKeyplane:v7];
  v11 = [v10 geometry];
  [v11 setRoundRectCorners:-1];

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v13 = v12;
  v14 = [v10 geometry];
  [v14 setRoundRectRadius:v13];

  if (([v6 state] & 0xC) != 0)
  {
    [(UIKBRenderFactory_CarLinear *)self highlightedKeyColor];
  }

  else
  {
    [(UIKBRenderFactory_CarLinear *)self activeKeyColor];
  }
  v15 = ;
  v16 = [v10 symbolStyle];
  [v16 setTextColor:v15];

  if ([v6 interactionType] == 9)
  {
    v17 = 5;
LABEL_8:
    v18 = [v10 geometry];
    [v18 setRoundRectCorners:v17];

    goto LABEL_12;
  }

  if ([v6 interactionType] == 15)
  {
    v19 = [v7 firstCachedKeyWithName:@"International-Key"];
    v20 = [v19 visible];

    if (v20)
    {
      v17 = 10;
      goto LABEL_8;
    }
  }

LABEL_12:
  if ([v6 displayType] != 38)
  {
    goto LABEL_39;
  }

  v21 = [(UIKBRenderFactory_CarLinear *)self enabledKeyColor];
  v22 = [UIKBGradient gradientWithFlatColor:v21];
  [v10 setBackgroundGradient:v22];

  v23 = [v10 geometry];
  [v23 paddedFrame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  v33 = v29 - v32;
  v34 = floor(v33 * 0.095);
  v35 = [v10 geometry];
  [v35 paddedFrame];
  MidX = CGRectGetMidX(v82);
  [v7 frame];
  v37 = CGRectGetMidX(v83);

  v38 = 0.0;
  if (MidX < v37)
  {
    [(UIKBRenderFactory_CarLinear *)self carKeyRadius];
  }

  v39 = v34 * 0.2;
  v40 = v25 + v38;
  v41 = [v6 subtrees];
  v42 = [v41 count];

  v43 = ([v6 selectedVariantIndex] & 0x8000000000000000) == 0 && objc_msgSend(v6, "selectedVariantIndex") < v42;
  v79 = v7;
  v44 = [v6 selectedVariantIndex];
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
    if (v44)
    {
      v40 = v39 + v40;
    }

    do
    {
      if (v48 == [v6 selectedVariantIndex])
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
      if (v48 | v44)
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
      v57 = [v6 subtrees];
      v58 = [v57 objectAtIndex:i];
      v59 = [v10 variantGeometries];
      v60 = [v59 objectAtIndex:i];
      v61 = [v60 similarShape];
      [v58 setShape:v61];
    }
  }

  v62 = [v78 lightTextFontName];
  [v78 letterLineFontSize];
  v63 = [UIKBTextStyle styleWithFontName:v62 withFontSize:?];

  v64 = [v78 activeKeyColor];
  [v63 setTextColor:v64];

  v65 = [UIKBRenderTraits traitsWithSymbolStyle:v63];
  [v10 setVariantTraits:v65];

  [v78 activeLetterFontSize];
  v66 = [UIKBTextStyle styleWithFontName:0 withFontSize:?];
  v67 = [v78 highlightedKeyColor];
  [v66 setTextColor:v67];

  [v66 setTextOffset:{0.0, 2.0}];
  v68 = [UIKBRenderTraits traitsWithSymbolStyle:v66];
  v69 = [v78 activeKeyColor];
  v70 = [v78 renderConfig];
  v71 = [v70 colorAdaptiveBackground];

  if (v71)
  {
    v72 = [v78 renderConfig];
    v73 = [v72 lightKeyboard];
    v74 = UIKBColorCarDarkTeal;
    if (!v73)
    {
      v74 = UIKBColorCarLightTeal;
    }

    v75 = *v74;

    v69 = v75;
  }

  v7 = v79;
  v76 = [UIKBGradient gradientWithFlatColor:v69];
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