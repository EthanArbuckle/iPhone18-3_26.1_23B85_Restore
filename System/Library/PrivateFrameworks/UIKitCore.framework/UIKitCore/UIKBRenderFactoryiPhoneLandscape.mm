@interface UIKBRenderFactoryiPhoneLandscape
- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)string isPrimary:(id)primary withFrame:(BOOL)frame;
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
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows;
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
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index;
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v4 = 4.0;
  v5 = 4.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    LOBYTE(dynamicFactory) = [(UIKBRenderFactoryiPhone *)&v5 isTallPopup];
  }

  return dynamicFactory;
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 18.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeBengali];
  }

  return result;
}

- (double)stringKeyFontSizeDevanagari
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeDevanagari];
  }

  return result;
}

- (double)stringKeyFontSizeGujarati
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeGujarati];
  }

  return result;
}

- (double)stringKeyFontSizeGurmukhi
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeGurmukhi];
  }

  return result;
}

- (double)stringKeyFontSizeKannada
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeKannada];
  }

  return result;
}

- (double)stringKeyFontSizeMalayalam
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeMalayalam];
  }

  return result;
}

- (double)stringKeyFontSizeOriya
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeOriya];
  }

  return result;
}

- (double)stringKeyFontSizeTamil
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSizeTamil];
  }

  return result;
}

- (double)stringKeyFontSizeTelugu
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (dynamicFactory)
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

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows
{
  if (rows > 4)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (dynamicFactory)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (dynamicFactory)
    {
      v9 = 2.0;
    }

    if (rows == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (rows == 5)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 15.0;
  if (dynamicFactory)
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

- (id)variantGeometriesForGeometry:(id)geometry variantCount:(unint64_t)count rowLimit:(int64_t)limit annotationIndex:(unint64_t)index
{
  geometryCopy = geometry;
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v17.receiver = self;
    v17.super_class = UIKBRenderFactoryiPhoneLandscape;
    v11 = [(UIKBRenderFactoryiPhone *)&v17 variantGeometriesForGeometry:geometryCopy variantCount:count rowLimit:limit annotationIndex:index];
  }

  else
  {
    v12 = [geometryCopy copy];

    [v12 paddedFrame];
    [v12 setPaddedFrame:{v13 + -0.5, v15 + 0.0, v14 + 1.0}];
    v11 = [v12 iPhoneVariantGeometries:count annotationIndex:index];
  }

  return v11;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v34.receiver = self;
  v34.super_class = UIKBRenderFactoryiPhoneLandscape;
  v8 = [(UIKBRenderFactoryiPhone *)&v34 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    if (!-[UIKBRenderFactoryiPhone _popupStyleForKey:](self, "_popupStyleForKey:", keyCopy) && ![keyCopy displayType])
    {
      name = [keyCopy name];
      v10 = [name hasPrefix:@"Burmese-"];

      if (v10)
      {
        symbolStyle = [v8 symbolStyle];
        [symbolStyle fontSize];
        v13 = round(v12 * 0.9);
        symbolStyle2 = [v8 symbolStyle];
        [symbolStyle2 setFontSize:v13];
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    subtrees = [keyplaneCopy subtrees];
    v16 = [subtrees countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v28 = v8;
      v29 = keyplaneCopy;
      v18 = *v31;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(subtrees);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        name2 = [v20 name];
        v22 = [name2 _containsSubstring:@"Assist"];

        if (v22)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [subtrees countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          v23 = 0;
          v8 = v28;
          keyplaneCopy = v29;
          goto LABEL_24;
        }
      }

      v23 = v20;

      if (!v23)
      {
        v8 = v28;
        keyplaneCopy = v29;
        goto LABEL_25;
      }

      keys = [v23 keys];
      v25 = [keys containsObject:keyCopy];

      v8 = v28;
      keyplaneCopy = v29;
      if (!v25)
      {
        goto LABEL_25;
      }

      if (([keyCopy state] & 3) != 0)
      {
        controlKeyTraits = [(UIKBRenderFactoryiPhone *)self controlKeyTraits];
      }

      else
      {
        if (([keyCopy state] & 4) == 0)
        {
          goto LABEL_25;
        }

        controlKeyTraits = [(UIKBRenderFactoryiPhone *)self activeControlKeyTraits];
      }

      subtrees = controlKeyTraits;
      [v28 overlayWithTraits:controlKeyTraits];
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

- ($89C9DF7554150EC42DA90319EED2ADED)customizedOffsetForString:(SEL)string isPrimary:(id)primary withFrame:(BOOL)frame
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  frameCopy = frame;
  primaryCopy = primary;
  v14.receiver = self;
  v14.super_class = UIKBRenderFactoryiPhoneLandscape;
  [($89C9DF7554150EC42DA90319EED2ADED *)&v14 customizedOffsetForString:primaryCopy isPrimary:frameCopy isLandscape:[(UIKBRenderFactory *)self dynamicFactory]^ 1 withFrame:x, y, width, height];

  return result;
}

@end