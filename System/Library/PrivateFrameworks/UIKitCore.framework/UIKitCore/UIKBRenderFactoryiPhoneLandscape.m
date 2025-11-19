@interface UIKBRenderFactoryiPhoneLandscape
- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)a3 isPrimary:(id)a4 withFrame:(BOOL)a5;
- (BOOL)isTallPopup;
- (CGPoint)gurmukhiEkOnkarOffset;
- (CGPoint)more123KeyOffset;
- (CGPoint)moreABCKeyOffset;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)stringKeyOffsetBengali;
- (CGPoint)stringKeyOffsetMalayalam;
- (CGPoint)variantAnnotationTextOffset;
- (CGPoint)variantSymbolTextOffset;
- (UIEdgeInsets)dynamicInsets;
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3;
- (UIEdgeInsets)variantDisplayFrameInsets;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)emojiPopupDividerKeyOffset;
- (double)gurmukhiEkOnkarFontSize;
- (double)moreABCKeyFontSize;
- (double)popupFontSize;
- (double)skinnyKeyThreshold;
- (double)stringKeyFontSizeBengali;
- (double)stringKeyFontSizeDevanagari;
- (double)stringKeyFontSizeGujarati;
- (double)stringKeyFontSizeGurmukhi;
- (double)stringKeyFontSizeKannada;
- (double)stringKeyFontSizeMalayalam;
- (double)stringKeyFontSizeOriya;
- (double)stringKeyFontSizeTamil;
- (double)stringKeyFontSizeTelugu;
- (double)symbolImageControlKeyFontSize;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6;
@end

@implementation UIKBRenderFactoryiPhoneLandscape

- (double)skinnyKeyThreshold
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 60.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPhoneLandscape;
  [(UIKBRenderFactoryiPhone *)&v4 skinnyKeyThreshold];
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v7 wideShadowPaddleInsets];
  }

  else
  {
    v4 = 6.0;
    v5 = 22.0;
    v3 = 18.0;
    v6 = 6.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)variantPaddedFrameInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v7 variantPaddedFrameInsets];
  }

  else
  {
    v4 = 0.0;
    v3 = -3.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)variantDisplayFrameInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v7 variantDisplayFrameInsets];
  }

  else
  {
    v4 = 0.0;
    v5 = 1.0;
    v3 = 7.0;
    v6 = 0.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)variantSymbolFrameInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v7 variantSymbolFrameInsets];
  }

  else
  {
    v4 = 0.0;
    v5 = -4.5;
    v3 = 8.0;
    v6 = 0.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 variantSymbolTextOffset];
  }

  else
  {
    v4 = 1.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)variantAnnotationTextOffset
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  v4 = 4.0;
  v5 = 4.0;
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v6 variantAnnotationTextOffset:4.0];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 popupSymbolTextOffset];
  }

  else
  {
    v4 = -2.5;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (double)popupFontSize
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 42.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPhoneLandscape;
  [(UIKBRenderFactoryiPhone *)&v4 popupFontSize];
  return result;
}

- (BOOL)isTallPopup
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    LOBYTE(v3) = [(UIKBRenderFactoryiPhone *)&v5 isTallPopup];
  }

  return v3;
}

- (double)emojiPopupDividerKeyOffset
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 0.8;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPhoneLandscape;
  [(UIKBRenderFactory *)&v4 emojiPopupDividerKeyOffset];
  return result;
}

- (double)symbolImageControlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 18.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 symbolImageControlKeyFontSize];
  }

  return result;
}

- (double)gurmukhiEkOnkarFontSize
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v4.receiver = self;
    v4.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v4 gurmukhiEkOnkarFontSize];
  }

  else
  {

    [(UIKBRenderFactoryiPhone *)self stringKeyFontSize];
  }

  return result;
}

- (CGPoint)gurmukhiEkOnkarOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 gurmukhiEkOnkarOffset];
  }

  else
  {

    [(UIKBRenderFactoryiPhone *)self stringKeyOffset];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (double)stringKeyFontSizeBengali
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeBengali];
  }

  return result;
}

- (double)stringKeyFontSizeDevanagari
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeDevanagari];
  }

  return result;
}

- (double)stringKeyFontSizeGujarati
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeGujarati];
  }

  return result;
}

- (double)stringKeyFontSizeGurmukhi
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeGurmukhi];
  }

  return result;
}

- (double)stringKeyFontSizeKannada
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeKannada];
  }

  return result;
}

- (double)stringKeyFontSizeMalayalam
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeMalayalam];
  }

  return result;
}

- (double)stringKeyFontSizeOriya
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeOriya];
  }

  return result;
}

- (double)stringKeyFontSizeTamil
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeTamil];
  }

  return result;
}

- (double)stringKeyFontSizeTelugu
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeTelugu];
  }

  return result;
}

- (CGPoint)stringKeyOffsetBengali
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyOffsetBengali];
  }

  else
  {
    v4 = -1.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)stringKeyOffsetMalayalam
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyOffsetMalayalam];
  }

  else
  {
    v4 = -1.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v2 = 12.0;
  }

  else
  {
    v2 = 4.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3
{
  if (a3 > 4)
  {
    v8 = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (v8)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (v8)
    {
      v9 = 2.0;
    }

    if (a3 == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (a3 == 5)
    {
      v6 = v9;
    }

    v4 = 0.0;
  }

  else
  {
    [(UIKBRenderFactoryiPhoneLandscape *)self dynamicInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)moreABCKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 15.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 moreABCKeyFontSize];
  }

  return result;
}

- (CGPoint)more123KeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 more123KeyOffset];
  }

  else
  {
    v4 = 0.5;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)moreABCKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 moreABCKeyOffset];
  }

  else
  {
    v4 = 0.5;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (id)variantGeometriesForGeometry:(id)a3 variantCount:(unint64_t)a4 rowLimit:(int64_t)a5 annotationIndex:(unint64_t)a6
{
  v10 = a3;
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v17.receiver = self;
    v17.super_class = UIKBRenderFactoryiPhoneLandscape;
    v11 = [(UIKBRenderFactoryiPhone *)&v17 variantGeometriesForGeometry:v10 variantCount:a4 rowLimit:a5 annotationIndex:a6];
  }

  else
  {
    v12 = [v10 copy];

    [v12 paddedFrame];
    [v12 setPaddedFrame:{v13 + -0.5, v15 + 0.0, v14 + 1.0}];
    v11 = [v12 iPhoneVariantGeometries:a4 annotationIndex:a6];
  }

  return v11;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = UIKBRenderFactoryiPhoneLandscape;
  v8 = [(UIKBRenderFactoryiPhone *)&v34 _traitsForKey:v6 onKeyplane:v7];
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    if (!-[UIKBRenderFactoryiPhone _popupStyleForKey:](self, "_popupStyleForKey:", v6) && ![v6 displayType])
    {
      v9 = [v6 name];
      v10 = [v9 hasPrefix:@"Burmese-"];

      if (v10)
      {
        v11 = [v8 symbolStyle];
        [v11 fontSize];
        v13 = round(v12 * 0.9);
        v14 = [v8 symbolStyle];
        [v14 setFontSize:v13];
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v7 subtrees];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v28 = v8;
      v29 = v7;
      v18 = *v31;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        v21 = [v20 name];
        v22 = [v21 _containsSubstring:@"Assist"];

        if (v22)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          v23 = 0;
          v8 = v28;
          v7 = v29;
          goto LABEL_24;
        }
      }

      v23 = v20;

      if (!v23)
      {
        v8 = v28;
        v7 = v29;
        goto LABEL_25;
      }

      v24 = [v23 keys];
      v25 = [v24 containsObject:v6];

      v8 = v28;
      v7 = v29;
      if (!v25)
      {
        goto LABEL_25;
      }

      if (([v6 state] & 3) != 0)
      {
        v26 = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
      }

      else
      {
        if (([v6 state] & 4) == 0)
        {
          goto LABEL_25;
        }

        v26 = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
      }

      v15 = v26;
      [v28 overlayWithTraits:v26];
    }

    else
    {
      v23 = 0;
    }

LABEL_24:

LABEL_25:
  }

  return v8;
}

- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)a3 isPrimary:(id)a4 withFrame:(BOOL)a5
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v12 = a4;
  v14.receiver = self;
  v14.super_class = UIKBRenderFactoryiPhoneLandscape;
  [($89C9DF7554150EC42DA90319EED2ADED *)&v14 customizedOffsetForString:v12 isPrimary:v10 isLandscape:[(UIKBRenderFactory *)self dynamicFactory]^ 1 withFrame:x, y, width, height];

  return result;
}

@end