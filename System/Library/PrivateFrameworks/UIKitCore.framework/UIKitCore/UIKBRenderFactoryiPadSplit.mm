@interface UIKBRenderFactoryiPadSplit
- (CGPoint)deleteKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)shiftKeyOffset;
- (CGPoint)variantAnnotationTextOffset;
- (UIEdgeInsets)dynamicInsets;
- (double)keyInsetBottom;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
@end

@implementation UIKBRenderFactoryiPadSplit

- (CGPoint)internationalKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v3 = v2 == 2.0;
  v4 = 0.0;
  if (v3)
  {
    v4 = -0.5;
  }

  v5 = v4;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v3 = v2 == 2.0;
  v4 = 0.0;
  if (v3)
  {
    v4 = -0.5;
  }

  v5 = v4;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)deleteKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v2 = -1.5;
  if (v3 != 2.0)
  {
    v2 = -1.0;
  }

  v4 = 0.0;
  result.y = v2;
  result.x = v4;
  return result;
}

- (CGPoint)shiftKeyOffset
{
  [(UIKBRenderFactory *)self scale];
  v2 = -2.5;
  if (v3 != 2.0)
  {
    v2 = -2.0;
  }

  v4 = 0.0;
  result.y = v2;
  result.x = v4;
  return result;
}

- (id)multitapCompleteKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_complete_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_complete_arrow-163r.png";
  }

  return v3;
}

- (id)muttitapReverseKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_reverse_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_reverse_arrow-163r.png";
  }

  return v3;
}

- (CGPoint)variantAnnotationTextOffset
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 6.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v20.receiver = self;
  v20.super_class = UIKBRenderFactoryiPadSplit;
  v3 = a3;
  v4 = [(UIKBRenderFactory *)&v20 backgroundTraitsForKeyplane:v3];
  v5 = MEMORY[0x1E696B098];
  [v3 frameForKeylayoutName:{@"split-left", v20.receiver, v20.super_class}];
  v6 = [v5 valueWithCGRect:?];
  v7 = [v4 geometry];
  [v7 setSplitLeftRect:v6];

  v8 = MEMORY[0x1E696B098];
  [v3 frameForKeylayoutName:@"split-right"];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v8 valueWithCGRect:{v10, v12, v14, v16}];
  v18 = [v4 geometry];
  [v18 setSplitRightRect:v17];

  return v4;
}

- (double)keyInsetBottom
{
  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPadSplit;
  [(UIKBRenderFactoryiPad *)&v4 keyInsetBottom];
  [(UIKBRenderFactory *)self RivenFactor:?];
  return result;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v19.receiver = self;
  v19.super_class = UIKBRenderFactoryiPadSplit;
  [(UIKBRenderFactoryiPad *)&v19 _customizeTraits:v12 forPopupForKey:v13 withRenderingContext:a5 keycapsFontName:a6 fallbackFontName:a7];
  if ([v13 displayType] == 13)
  {
    [(UIKBRenderFactoryiPadSplit *)self internationalKeyOffset];
LABEL_10:
    v16 = v14;
    v17 = v15;
    v18 = [v12 symbolStyle];
    [v18 setTextOffset:{v16, v17}];

    goto LABEL_11;
  }

  if ([v13 displayType] == 5)
  {
    [(UIKBRenderFactoryiPadSplit *)self dismissKeyOffset];
    goto LABEL_10;
  }

  if ([v13 displayType] == 3)
  {
    [(UIKBRenderFactoryiPadSplit *)self deleteKeyOffset];
    goto LABEL_10;
  }

  if ([v13 displayType] == 23 || objc_msgSend(v13, "interactionType") == 14)
  {
    [(UIKBRenderFactoryiPadSplit *)self shiftKeyOffset];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = UIKBRenderFactoryiPadSplit;
  v9 = a4;
  [(UIKBRenderFactoryiPad *)&v20 _customizeGeometry:v8 forKey:v9 contents:a5];
  LODWORD(a5) = [v9 displayType];

  if (a5 == 2)
  {
    [v8 symbolFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIKBRenderFactoryiPadSplit *)self symbolFrameInset];
    v19 = v18;
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    v22 = CGRectInset(v21, v19, 0.0);
    [v8 setSymbolFrame:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  }
}

- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6
{
  v9 = [a3 copy];
  [v9 paddedInsets];
  v43 = v10;
  v44 = v11;
  v41 = v12;
  v42 = v13;
  [(UIKBRenderFactory *)self RivenFactor:50.0];
  v15 = v14;
  [(UIKBRenderFactory *)self RivenFactor:54.0];
  v17 = v16;
  [v9 frame];
  v19 = v18;
  v21 = v20;
  [v9 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(UIKBRenderFactory *)self scale];
  UIRectCenteredXInRectScale(v19, v21, v15, v17, v23, v25, v27, v29, v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [v9 setFrame:?];
  [v9 setPaddedFrame:{v41 + v32, v43 + v34, v36 - (v41 + v42), v38 - (v43 + v44)}];
  [v9 paddedFrame];
  [v9 setSymbolFrame:?];
  v39 = [v9 iPadVariantGeometries:a4 rowLimit:a5];

  return v39;
}

- (void)_customizeSymbolStyle:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11.receiver = self;
  v11.super_class = UIKBRenderFactoryiPadSplit;
  [(UIKBRenderFactoryiPad *)&v11 _customizeSymbolStyle:v8 forKey:v9 contents:a5];
  [v8 setFontSize:18.0];
  if ([v9 displayType] == 23)
  {
    [(UIKBRenderFactory *)self RivenFactor:1.0];
LABEL_3:
    v10 = 16.0;
LABEL_6:
    [v8 setFontSize:v10];
    goto LABEL_14;
  }

  if ([v9 displayType] == 3)
  {
    v10 = 15.0;
    goto LABEL_6;
  }

  if ([v9 displayType] == 13)
  {
    [(UIKBRenderFactoryiPadSplit *)self internationalKeyOffset];
LABEL_13:
    [v8 setTextOffset:?];
    goto LABEL_14;
  }

  if ([v9 displayType] == 4)
  {
    [(UIKBRenderFactoryiPad *)self dictationKeyOffset];
    goto LABEL_13;
  }

  if ([v9 displayType] == 5)
  {
    [(UIKBRenderFactoryiPadSplit *)self dismissKeyOffset];
    goto LABEL_13;
  }

  if ([v9 displayType] == 21 || objc_msgSend(v9, "displayType") == 18)
  {
    goto LABEL_3;
  }

LABEL_14:
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = UIKBRenderFactoryiPadSplit;
  v7 = [(UIKBRenderFactoryiPad *)&v19 _traitsForKey:v6 onKeyplane:a4];
  v8 = [v6 displayString];
  v9 = [v8 isEqualToString:{@", !"}];

  if (v9)
  {
    v10 = [v7 symbolStyle];
    [v10 textOffset];
    v12 = v11;
    v14 = v13;

    v15 = [v7 symbolStyle];
    [v15 setTextOffset:{v12 + 1.0, v14}];
  }

  [(UIKBRenderFactory *)self scaleTraits:v7];
  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:v6])
  {
    v16 = [v7 secondarySymbolStyles];
    v17 = [v16 firstObject];

    [v17 setFontSize:11.0];
    [v17 setTextOffset:{8.0, 8.0}];
  }

  return v7;
}

@end