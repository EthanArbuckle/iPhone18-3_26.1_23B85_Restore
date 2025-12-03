@interface UIKBRenderFactoryiPadSplit
- (CGPoint)deleteKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)shiftKeyOffset;
- (CGPoint)variantAnnotationTextOffset;
- (UIEdgeInsets)dynamicInsets;
- (double)keyInsetBottom;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents;
- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
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

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  v20.receiver = self;
  v20.super_class = UIKBRenderFactoryiPadSplit;
  keyplaneCopy = keyplane;
  v4 = [(UIKBRenderFactory *)&v20 backgroundTraitsForKeyplane:keyplaneCopy];
  v5 = MEMORY[0x1E696B098];
  [keyplaneCopy frameForKeylayoutName:{@"split-left", v20.receiver, v20.super_class}];
  v6 = [v5 valueWithCGRect:?];
  geometry = [v4 geometry];
  [geometry setSplitLeftRect:v6];

  v8 = MEMORY[0x1E696B098];
  [keyplaneCopy frameForKeylayoutName:@"split-right"];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v8 valueWithCGRect:{v10, v12, v14, v16}];
  geometry2 = [v4 geometry];
  [geometry2 setSplitRightRect:v17];

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

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  traitsCopy = traits;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = UIKBRenderFactoryiPadSplit;
  [(UIKBRenderFactoryiPad *)&v19 _customizeTraits:traitsCopy forPopupForKey:keyCopy withRenderingContext:context keycapsFontName:name fallbackFontName:fontName];
  if ([keyCopy displayType] == 13)
  {
    [(UIKBRenderFactoryiPadSplit *)self internationalKeyOffset];
LABEL_10:
    v16 = v14;
    v17 = v15;
    symbolStyle = [traitsCopy symbolStyle];
    [symbolStyle setTextOffset:{v16, v17}];

    goto LABEL_11;
  }

  if ([keyCopy displayType] == 5)
  {
    [(UIKBRenderFactoryiPadSplit *)self dismissKeyOffset];
    goto LABEL_10;
  }

  if ([keyCopy displayType] == 3)
  {
    [(UIKBRenderFactoryiPadSplit *)self deleteKeyOffset];
    goto LABEL_10;
  }

  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "interactionType") == 14)
  {
    [(UIKBRenderFactoryiPadSplit *)self shiftKeyOffset];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents
{
  geometryCopy = geometry;
  v20.receiver = self;
  v20.super_class = UIKBRenderFactoryiPadSplit;
  keyCopy = key;
  [(UIKBRenderFactoryiPad *)&v20 _customizeGeometry:geometryCopy forKey:keyCopy contents:contents];
  LODWORD(contents) = [keyCopy displayType];

  if (contents == 2)
  {
    [geometryCopy symbolFrame];
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
    [geometryCopy setSymbolFrame:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  }
}

- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index
{
  v9 = [geometry copy];
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
  v39 = [v9 iPadVariantGeometries:count rowLimit:limit];

  return v39;
}

- (void)_customizeSymbolStyle:(id)style forKey:(id)key contents:(id)contents
{
  styleCopy = style;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = UIKBRenderFactoryiPadSplit;
  [(UIKBRenderFactoryiPad *)&v11 _customizeSymbolStyle:styleCopy forKey:keyCopy contents:contents];
  [styleCopy setFontSize:18.0];
  if ([keyCopy displayType] == 23)
  {
    [(UIKBRenderFactory *)self RivenFactor:1.0];
LABEL_3:
    v10 = 16.0;
LABEL_6:
    [styleCopy setFontSize:v10];
    goto LABEL_14;
  }

  if ([keyCopy displayType] == 3)
  {
    v10 = 15.0;
    goto LABEL_6;
  }

  if ([keyCopy displayType] == 13)
  {
    [(UIKBRenderFactoryiPadSplit *)self internationalKeyOffset];
LABEL_13:
    [styleCopy setTextOffset:?];
    goto LABEL_14;
  }

  if ([keyCopy displayType] == 4)
  {
    [(UIKBRenderFactoryiPad *)self dictationKeyOffset];
    goto LABEL_13;
  }

  if ([keyCopy displayType] == 5)
  {
    [(UIKBRenderFactoryiPadSplit *)self dismissKeyOffset];
    goto LABEL_13;
  }

  if ([keyCopy displayType] == 21 || objc_msgSend(keyCopy, "displayType") == 18)
  {
    goto LABEL_3;
  }

LABEL_14:
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = UIKBRenderFactoryiPadSplit;
  v7 = [(UIKBRenderFactoryiPad *)&v19 _traitsForKey:keyCopy onKeyplane:keyplane];
  displayString = [keyCopy displayString];
  v9 = [displayString isEqualToString:{@", !"}];

  if (v9)
  {
    symbolStyle = [v7 symbolStyle];
    [symbolStyle textOffset];
    v12 = v11;
    v14 = v13;

    symbolStyle2 = [v7 symbolStyle];
    [symbolStyle2 setTextOffset:{v12 + 1.0, v14}];
  }

  [(UIKBRenderFactory *)self scaleTraits:v7];
  if ([(UIKBRenderFactoryiPhone *)self _shouldConfigureSecondarySymbolStyleForSpaceKey:keyCopy])
  {
    secondarySymbolStyles = [v7 secondarySymbolStyles];
    firstObject = [secondarySymbolStyles firstObject];

    [firstObject setFontSize:11.0];
    [firstObject setTextOffset:{8.0, 8.0}];
  }

  return v7;
}

@end