@interface UIKBRenderer
+ (CGContext)imageContextWithSize:(CGSize)size scale:(double)scale colorFormat:(int64_t)format opaque:(BOOL)opaque invert:(BOOL)invert;
+ (id)rendererWithContext:(CGContext *)context withSize:(CGSize)size withScale:(double)scale opaque:(BOOL)opaque renderFlags:(int64_t)flags assetIdiom:(int64_t)idiom;
+ (void)clearInternalCaches;
- (BOOL)_drawKeyString:(id)string inRect:(CGRect)rect withStyle:(id)style;
- (BOOL)_drawSingleSymbol:(id)symbol inRect:(CGRect)rect withStyle:(id)style;
- (BOOL)loadCachedImageForHashString:(id)string;
- (BOOL)renderKeyPathContents:(id)contents withTraits:(id)traits;
- (CGContext)context;
- (CGPath)_deleteGlyphPaths;
- (CGPath)_thickShiftGlyphPath;
- (CGPath)_thinShiftGlyphPath;
- (CGPoint)centroidOfGlyph:(CGPath *)glyph;
- (CGRect)_layerPaddedFrame;
- (CGSize)size;
- (NSData)contextData;
- (UIColor)singleColor;
- (UIImage)renderedImage;
- (UIKBRenderer)initWithContext:(CGContext *)context withSize:(CGSize)size withScale:(double)scale opaque:(BOOL)opaque renderFlags:(int64_t)flags assetIdiom:(int64_t)idiom;
- (id)defaultPathForRenderGeometry:(id)geometry;
- (id)description;
- (id)pathForConcaveCornerWithGeometry:(id)geometry;
- (id)pathForFlickGeometry:(id)geometry;
- (id)pathForFlickPopupGeometries:(id)geometries;
- (id)pathForFlickWidth:(double)width height:(double)height handleLength:(double)length keyMiddle:(CGPoint)middle angle:(double)angle radius:(double)radius;
- (id)pathForRenderGeometry:(id)geometry;
- (id)pathForSplitGeometry:(id)geometry;
- (id)symbolImageConfigForKey:(id)key traitCollection:(id)collection;
- (id)watchPathForRenderGeometry:(id)geometry;
- (int64_t)contentColorFormat;
- (unint64_t)renderKeyImageContents:(id)contents withTraits:(id)traits status:(unint64_t)status;
- (unint64_t)renderKeyStringContents:(id)contents withTraits:(id)traits status:(unint64_t)status;
- (void)_addDetectedColor:(CGColor *)color;
- (void)_completeCacheImageWithTraitsIfNecessary:(id)necessary;
- (void)_drawKeyImage:(id)image inRect:(CGRect)rect withStyle:(id)style force1xImages:(BOOL)images flipHorizontally:(BOOL)horizontally isRGBImage:(BOOL)bImage;
- (void)_drawLinearGradient:(id)gradient inRect:(CGRect)rect;
- (void)_renderVariantsFromKeyContents:(id)contents withTraits:(id)traits;
- (void)addPathForFlickGeometry:(id)geometry;
- (void)addPathForFlickPopupGeometries:(id)geometries;
- (void)addPathForRenderGeometry:(id)geometry;
- (void)addPathForSplitGeometry:(id)geometry;
- (void)addPathForTraits:(id)traits displayRect:(CGRect *)rect;
- (void)addRoundRect:(CGRect)rect radius:(double)radius corners:(unint64_t)corners;
- (void)dealloc;
- (void)detectColorsForEffect:(id)effect;
- (void)detectColorsForGradient:(id)gradient;
- (void)detectColorsForNamedColor:(id)color;
- (void)drawPath:(CGPath *)path weight:(double)weight transform:(CGAffineTransform *)transform color:(CGColor *)color fill:(BOOL)fill;
- (void)drawShiftPath:(BOOL)path weight:(double)weight transform:(CGAffineTransform *)transform color:(CGColor *)color;
- (void)ensureContext;
- (void)renderBackgroundTraits:(id)traits;
- (void)renderBackgroundTraits:(id)traits allowCaching:(BOOL)caching;
- (void)renderDivotEffect:(id)effect withTraits:(id)traits;
- (void)renderEdgeEffect:(id)effect withTraits:(id)traits;
- (void)renderKeyContents:(id)contents withTraits:(id)traits;
- (void)renderShadowEffect:(id)effect withTraits:(id)traits;
@end

@implementation UIKBRenderer

- (CGRect)_layerPaddedFrame
{
  x = self->__layerPaddedFrame.origin.x;
  y = self->__layerPaddedFrame.origin.y;
  width = self->__layerPaddedFrame.size.width;
  height = self->__layerPaddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)pathForSplitGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = geometryCopy;
  if (geometryCopy && ([geometryCopy splitLeftRect], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "splitRightRect"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    splitLeftRect = [v5 splitLeftRect];
    [splitLeftRect CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    splitRightRect = [v5 splitRightRect];
    [splitRightRect CGRectValue];
    v34 = v20;
    v35 = v19;
    v22 = v21;

    [(UIKBRenderer *)self size];
    v24 = v23 - v22;
    LOBYTE(splitRightRect) = [v5 roundRectCorners];
    roundRectCorners = [v5 roundRectCorners];
    [v5 roundRectRadius];
    v27 = v26;
    [v5 roundRectRadius];
    v29 = v28;
    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    v31 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:splitRightRect & 0xA byRoundingCorners:v11 cornerRadii:{v13, v15, v17, v27, v29}];
    [bezierPath appendPath:v31];

    v32 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:roundRectCorners & 5 byRoundingCorners:v24 cornerRadii:{v35, v22, v34, v27, v29}];
    [bezierPath appendPath:v32];
  }

  else
  {
    bezierPath = 0;
  }

  return bezierPath;
}

- (id)pathForFlickPopupGeometries:(id)geometries
{
  geometriesCopy = geometries;
  v4 = geometriesCopy;
  if (geometriesCopy && [geometriesCopy count] >= 2)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:4];
    null = [MEMORY[0x1E695DFB0] null];
    if (v7 == null)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v4 objectAtIndex:2];
    null2 = [MEMORY[0x1E695DFB0] null];
    if (v11 == null2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v4 objectAtIndex:1];
    null3 = [MEMORY[0x1E695DFB0] null];
    if (v15 == null3)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v4 objectAtIndex:3];
    null4 = [MEMORY[0x1E695DFB0] null];
    if (v19 == null4)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21;

    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    [v6 paddedFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v23 + v29;
    [bezierPath moveToPoint:?];
    if (v18)
    {
      [v18 paddedFrame];
      v32 = v31;
      v35 = v33 + v34;
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:? clockwise:?];
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v35 clockwise:{v32, 8.0, 8.0}];
    }

    v36 = v26 + v28;
    [bezierPath addLineToPoint:{v30, v26}];
    if (v14)
    {
      [v14 paddedFrame];
      v39 = v37 + v38;
      v42 = v40 + v41;
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 + v38 clockwise:?];
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v39 clockwise:{v42, 8.0, 8.0}];
    }

    [bezierPath addLineToPoint:{v30, v36}];
    if (v22)
    {
      [v22 paddedFrame];
      v44 = v43;
      v48 = v46 + v47;
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v43 + v45 clockwise:{v46 + v47, 8.0, 8.0}];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v44 clockwise:{v48, 8.0, 8.0}];
    }

    [bezierPath addLineToPoint:{v24, v36}];
    if (v10)
    {
      [v10 paddedFrame];
      v50 = v49;
      v52 = v51;
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:? clockwise:?];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v50 clockwise:{v52, 8.0, 8.0}];
    }

    [bezierPath addLineToPoint:{v24, v26}];
    [bezierPath closePath];
  }

  else
  {
    bezierPath = 0;
  }

  return bezierPath;
}

- (id)pathForFlickGeometry:(id)geometry
{
  geometryCopy = geometry;
  [geometryCopy paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [geometryCopy popupSource];
  v14 = v13;
  v16 = v15;
  if (![geometryCopy flickDirection])
  {
    v17 = v16 - (v8 + v12);
    v18 = 0.0;
LABEL_8:
    v19 = 8.0;
    selfCopy2 = self;
    v21 = v10;
    v22 = v12;
    goto LABEL_9;
  }

  if ([geometryCopy flickDirection] == 1)
  {
    v17 = v6 - v14;
    v18 = 1.57079633;
LABEL_4:
    v19 = 8.0;
    selfCopy2 = self;
    v21 = v12;
    v22 = v10;
LABEL_9:
    v23 = [(UIKBRenderer *)selfCopy2 pathForFlickWidth:v21 height:v22 handleLength:v17 keyMiddle:v14 angle:v16 radius:v18, v19];
    goto LABEL_10;
  }

  if ([geometryCopy flickDirection] == 2)
  {
    v17 = v8 - v16;
    v18 = 3.14159265;
    goto LABEL_8;
  }

  if ([geometryCopy flickDirection] == 3)
  {
    v17 = v14 - (v6 + v10);
    v18 = -1.57079633;
    goto LABEL_4;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (id)pathForFlickWidth:(double)width height:(double)height handleLength:(double)length keyMiddle:(CGPoint)middle angle:(double)angle radius:(double)radius
{
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [(UIKBRenderer *)self scale];
  UIRoundToScale();
  v13 = v12 + v12;
  UIRoundToScale();
  v15 = v14;
  UIRoundToScale();
  v17 = 0;
  if (v13 > 0.0 && v15 > 0.0)
  {
    v18 = v16;
    if (v16 > 0.0 && v16 > 8.0)
    {
      v20 = atan((v16 + -8.0 + v16 + -8.0) / v13);
      v21 = __sincos_stret(v20);
      v22 = -height - v18;
      [bezierPath moveToPoint:{v21.__sinval * radius, -(radius - radius * v21.__cosval)}];
      [bezierPath addArcWithCenter:1 radius:0.0 startAngle:-radius endAngle:radius clockwise:?];
      [bezierPath addLineToPoint:{v13 * -0.5 + v21.__sinval * -8.0, -(v18 - v21.__cosval * 8.0)}];
      [bezierPath addArcWithCenter:1 radius:v13 * -0.5 startAngle:-v18 endAngle:8.0 clockwise:{v20 + 1.57079633, 3.14159265}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v13 * -0.5 + -8.0 clockwise:{v22, 8.0, 8.0}];
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v13 * 0.5 + 8.0 clockwise:{v22, 8.0, 8.0}];
      [bezierPath addLineToPoint:{v13 * 0.5 + 8.0, -v18}];
      [bezierPath addArcWithCenter:1 radius:v13 * 0.5 startAngle:-v18 endAngle:8.0 clockwise:{0.0, 1.57079633 - v20}];
      [bezierPath closePath];
      memset(&v31, 0, sizeof(v31));
      UIRoundToScale();
      v24 = v23;
      UIRoundToScale();
      CGAffineTransformMakeTranslation(&v31, v24, v25);
      v29 = v31;
      CGAffineTransformRotate(&v30, &v29, angle);
      v31 = v30;
      UIRoundToScale();
      v29 = v31;
      CGAffineTransformTranslate(&v30, &v29, 0.0, v26);
      v31 = v30;
      [bezierPath applyTransform:&v30];
      v17 = bezierPath;
    }
  }

  return v17;
}

- (id)watchPathForRenderGeometry:(id)geometry
{
  geometryCopy = geometry;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [geometryCopy paddedFrame];
  v6 = v5;
  v41 = v8;
  v43 = v7;
  v10 = v9;
  [geometryCopy displayFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [geometryCopy roundRectRadius];
  v20 = v19;
  [geometryCopy roundRectRadius];
  v22 = v21;
  popupBias = [geometryCopy popupBias];
  if (popupBias > 28)
  {
    if (popupBias == 29)
    {
      v36 = v6 + v10 * 0.5;
      v24 = v14 + v18;
      v37 = v12 + v16;
      v38 = v6 + v10;
      v39 = v36;
      [bezierPath moveToPoint:?];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v24, v20, v22}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 clockwise:{v14, v20, v22}];
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v37 clockwise:{v43, v20, v22}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:1 corner:v38 clockwise:{v43, v20, v22}];
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v38 clockwise:{v24, v20, v22}];
      v33 = bezierPath;
      v34 = v39;
      goto LABEL_11;
    }

    if (popupBias != 30)
    {
LABEL_9:
      v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:objc_msgSend(geometryCopy byRoundingCorners:"roundRectCorners") cornerRadii:{v6, v43, v10, v41, v20, v22}];

      bezierPath = v35;
      goto LABEL_12;
    }

LABEL_7:
    v24 = v14 + v18;
    v42 = v6 + v10 * 0.5;
    v25 = v6 + v10;
    [bezierPath moveToPoint:?];
    [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
    [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
    [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v12 + v16 clockwise:{v14, v20, v22}];
    [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v12 + v16 clockwise:{v43, v20, v22}];
    v26 = bezierPath;
    v27 = v25;
    v28 = v43;
    v29 = v20;
    v30 = v22;
    v32 = 1;
    v31 = 1;
    goto LABEL_8;
  }

  if (popupBias == 2)
  {
    goto LABEL_7;
  }

  if (popupBias != 21)
  {
    goto LABEL_9;
  }

  v42 = v6 + v10 * 0.5;
  v24 = v14 + v18;
  v25 = v6 + v10;
  [bezierPath moveToPoint:?];
  [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
  [bezierPath _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
  [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
  [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
  v26 = bezierPath;
  v27 = v12 + v16;
  v28 = v14;
  v29 = v20;
  v30 = v22;
  v31 = 0;
  v32 = 2;
LABEL_8:
  [v26 _addRoundedCornerWithTrueCorner:v32 radius:v31 corner:v27 clockwise:{v28, v29, v30}];
  [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v25 clockwise:{v24, v20, v22}];
  v33 = bezierPath;
  v34 = v42;
LABEL_11:
  [v33 addLineToPoint:{v34, v24}];
LABEL_12:
  [bezierPath closePath];

  return bezierPath;
}

- (id)defaultPathForRenderGeometry:(id)geometry
{
  geometryCopy = geometry;
  [geometryCopy paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v82 = v11;
  [geometryCopy displayFrame];
  v13 = v12;
  v86 = v14;
  v16 = v15;
  v84 = v17;
  roundRectCorners = [geometryCopy roundRectCorners];
  [geometryCopy roundRectRadius];
  v20 = v19;
  [(UIKBRenderer *)self _layerPaddedFrame];
  if (!CGRectIsNull(v93))
  {
    [(UIKBRenderer *)self _layerPaddedFrame];
    v6 = v21;
    v8 = v22;
    v10 = v23;
    v82 = v24;
    [(UIKBRenderer *)self _layerRoundRectRadius];
    v20 = v25;
  }

  v81 = v20;
  v85 = v6;
  if ([geometryCopy popupDirection] == 2)
  {
    v94.origin.x = v6;
    v94.origin.y = v8;
    v94.size.width = v10;
    v94.size.height = v82;
    MinY = CGRectGetMinY(v94);
    v95.origin.x = v13;
    v95.origin.y = v86;
    v95.size.width = v16;
    v95.size.height = v84;
    v27 = CGRectGetMinY(v95);
    v96.size.height = v84;
    v28 = MinY - v27;
    v96.origin.x = v13;
    v96.origin.y = v86;
    v96.size.width = v16;
    MaxY = CGRectGetMaxY(v96);
    v97.origin.x = v6;
    v97.origin.y = v8;
    v97.size.width = v10;
    v97.size.height = v82;
    v8 = MaxY - CGRectGetHeight(v97) - v28;
  }

  [geometryCopy symbolFrame];
  v31 = v30;
  v33 = v32;
  popupBias = [geometryCopy popupBias];
  if ([geometryCopy tallPopup])
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 7.0;
  }

  v36 = v13 + v16 - (v31 + v33) > v33 + 8.0 || popupBias == 40;
  v37 = v31 - v13 > v33 + 8.0 || popupBias == 40;
  if (popupBias)
  {
    v38 = v85;
    if (v37)
    {
      if (popupBias == 40)
      {
        [geometryCopy layoutMargins];
        if (v13 + v39 <= -8.0)
        {
          v13 = v13 + -20.0;
          v16 = v16 + 20.0;
        }
      }

      v98.origin.x = v13;
      v98.origin.y = v86;
      v98.size.width = v16;
      v98.size.height = v84;
      CGRectInset(v98, 24.0, 0.0);
      UIRectInset();
      v38 = v40;
      popupBias = 2;
    }
  }

  else
  {
    v38 = v85;
  }

  if (popupBias)
  {
    v41 = v36;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v99.origin.x = v13;
    v99.origin.y = v86;
    v99.size.width = v16;
    v99.size.height = v84;
    CGRectInset(v99, 24.0, 0.0);
    UIRectInset();
    v43 = v42;
    v45 = v44;
    if (![geometryCopy concaveCorner])
    {
      popupBias = 2;
      goto LABEL_34;
    }

LABEL_28:
    v46 = [(UIKBRenderer *)self pathForConcaveCornerWithGeometry:geometryCopy];
LABEL_29:
    bezierPath = v46;
    goto LABEL_30;
  }

  if ([geometryCopy concaveCorner])
  {
    goto LABEL_28;
  }

  v45 = v10;
  v43 = v85;
  if (!popupBias)
  {
LABEL_35:
    if (roundRectCorners)
    {
      v46 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:objc_msgSend(geometryCopy byRoundingCorners:"roundRectCorners") cornerRadii:{v85, v8, v10, v82, v81, v81}];
      goto LABEL_29;
    }

    v55 = MEMORY[0x1E69DC728];
    v56 = v85;
    v57 = v8;
    v58 = v10;
    v59 = v82;
LABEL_48:
    v46 = [v55 bezierPathWithRect:{v56, v57, v58, v59}];
    goto LABEL_29;
  }

LABEL_34:
  if ([geometryCopy popupDirection] == 3)
  {
    goto LABEL_35;
  }

  rect = v85 + v10 * 0.5;
  v83 = v86 + v84 + -6.0;
  if (popupBias > 28)
  {
    if (popupBias == 29)
    {
      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      v69 = v86 + v35;
      v53 = v85 + v10;
      v88 = v8 + 15.0;
      v70 = v45 + v43;
      v71 = v8 + -19.0;
      [bezierPath moveToPoint:{rect, v83}];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
      [bezierPath addLineToPoint:{v85, v69 + 10.0}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v85 clockwise:{v69, 10.0, 10.0}];
      [bezierPath addLineToPoint:{v70 + 26.0 + -10.0, v69}];
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v70 + 26.0 clockwise:{v69, 10.0, 10.0}];
      [bezierPath addLineToPoint:{v70 + 26.0, v8 + -19.0}];
      if (!v36)
      {
        [bezierPath addQuadCurveToPoint:v70 + 23.75 controlPoint:{v8 + -12.5, v70 + 26.0 + -0.5, v71 + 5.0}];
        [bezierPath addLineToPoint:{v53 + 2.75, v8 + 7.5}];
        [bezierPath addQuadCurveToPoint:v53 controlPoint:{v88, v53 + 0.5, v88 + -5.0}];
        goto LABEL_61;
      }

      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v70 + 26.0 clockwise:{(v88 + v71) * 0.5 + -1.5, 10.0, 10.0}];
      [bezierPath addLineToPoint:{v53 + 10.0, (v88 + v71) * 0.5 + -1.5}];
      v72 = 10.0;
      v73 = 10.0;
      v74 = bezierPath;
      v75 = v53;
      v76 = (v88 + v71) * 0.5 + -1.5;
      v77 = 1;
      v78 = 1;
LABEL_59:
      [v74 _addRoundedCornerWithTrueCorner:v77 radius:v78 corner:v75 clockwise:{v76, v72, v73}];
LABEL_61:
      [bezierPath addLineToPoint:{v53, v83 - v81}];
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v53 clockwise:{v83, v81, v81}];
      [bezierPath addLineToPoint:{rect, v83}];
      [bezierPath closePath];
      goto LABEL_30;
    }

    if (popupBias != 30)
    {
LABEL_47:
      v55 = MEMORY[0x1E69DC728];
      v56 = v13;
      v57 = v86;
      v58 = v16;
      v59 = v84;
      goto LABEL_48;
    }
  }

  else if (popupBias != 2)
  {
    if (popupBias == 21)
    {
      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      v49 = v8 + 15.0;
      v50 = v38 + -26.0;
      v51 = v8 + -19.0;
      v52 = v86 + v35;
      v53 = v85 + v10;
      [bezierPath moveToPoint:{rect, v83}];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
      [bezierPath addLineToPoint:{v85, v8 + 15.0}];
      if (v37)
      {
        v54 = (v49 + v51) * 0.5 + -1.5;
        [bezierPath _addRoundedCornerWithTrueCorner:2 radius:1 corner:v85 clockwise:{v54, 10.0, 10.0}];
        [bezierPath addLineToPoint:{v50 + 10.0, v54}];
        [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v50 clockwise:{v54, 10.0, 10.0}];
      }

      else
      {
        [bezierPath addQuadCurveToPoint:v85 + -2.75 controlPoint:{v8 + 7.5, v85 + -0.5, v49 + -5.0}];
        [bezierPath addLineToPoint:{v38 + -23.75, v8 + -12.5}];
        [bezierPath addQuadCurveToPoint:v50 controlPoint:{v51, v50 + 0.5, v51 + 5.0}];
      }

      [bezierPath addLineToPoint:{v50, v52 + 10.0}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v50 clockwise:{v52, 10.0, 10.0}];
      [bezierPath addLineToPoint:{v53 + -10.0, v52}];
      v72 = 10.0;
      v73 = 10.0;
      v74 = bezierPath;
      v75 = v53;
      v76 = v86 + v35;
      v77 = 2;
      v78 = 0;
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v80 = v10;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v60 = v38 + -13.0;
  v61 = v86 + v35;
  v87 = v8 + -20.0;
  v62 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
  v63 = v45 + v43 + 13.0;
  [bezierPath moveToPoint:{rect, v83}];
  [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
  [bezierPath addLineToPoint:{v85, v8 + 1.5}];
  if (v37)
  {
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:1 corner:v85 clockwise:{v62, 10.0, 10.0}];
    [bezierPath addLineToPoint:{v60 + 10.0, v62}];
    [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v60 clockwise:{v62, 10.0, 10.0}];
    v64 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
    v65 = v8 + -8.0;
  }

  else
  {
    v65 = v8 + -8.0;
    [bezierPath addCurveToPoint:v60 controlPoint1:v87 controlPoint2:{v85, v8 + -9.0, v60, v8 + -8.0}];
    v64 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
  }

  v66 = v85 + v80;
  [bezierPath addLineToPoint:{v60, v61 + 10.0}];
  [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v60 clockwise:{v61, 10.0, 10.0}];
  [bezierPath addLineToPoint:{v63 + -10.0, v61}];
  [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v63 clockwise:{v61, 10.0, 10.0}];
  [bezierPath addLineToPoint:{v63, v87}];
  if (v36)
  {
    [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v63 clockwise:{v64, 10.0, 10.0}];
    [bezierPath addLineToPoint:{v66 + 10.0, v64}];
    [bezierPath _addRoundedCornerWithTrueCorner:1 radius:1 corner:v66 clockwise:{v64, 10.0, 10.0}];
  }

  else
  {
    [bezierPath addCurveToPoint:v66 controlPoint1:v8 + 1.5 controlPoint2:{v63, v65, v66, v8 + -9.0}];
  }

  [bezierPath addLineToPoint:{v66, v83 - v81}];
  [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v66 clockwise:{v83, v81, v81}];
  [bezierPath addLineToPoint:{rect, v83}];
  [bezierPath closePath];
  if ([geometryCopy popupDirection] == 2)
  {
    memset(&v91, 0, sizeof(v91));
    CGAffineTransformMakeScale(&v91, 1.0, -1.0);
    memset(&v90, 0, sizeof(v90));
    [bezierPath bounds];
    v67 = CGRectGetMinY(v100);
    [bezierPath bounds];
    v68 = CGRectGetMaxY(v101);
    CGAffineTransformMakeTranslation(&v90, 0.0, v67 + v68);
    v89 = v91;
    [bezierPath applyTransform:&v89];
    v89 = v90;
    [bezierPath applyTransform:&v89];
  }

LABEL_30:

  return bezierPath;
}

- (id)pathForRenderGeometry:(id)geometry
{
  v4 = MEMORY[0x1E69DC938];
  geometryCopy = geometry;
  currentDevice = [v4 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 4)
  {
    [(UIKBRenderer *)self watchPathForRenderGeometry:geometryCopy];
  }

  else
  {
    [(UIKBRenderer *)self defaultPathForRenderGeometry:geometryCopy];
  }
  v8 = ;

  return v8;
}

- (id)pathForConcaveCornerWithGeometry:(id)geometry
{
  v3 = MEMORY[0x1E69DC728];
  geometryCopy = geometry;
  bezierPath = [v3 bezierPath];
  [geometryCopy paddedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [geometryCopy roundRectRadius];
  v15 = v14;
  [geometryCopy roundRectRadius];
  v17 = v16;
  concaveCorner = [geometryCopy concaveCorner];
  [geometryCopy concaveCornerOffset];
  v20 = v19;
  v22 = v21;

  v23 = 0;
  if (concaveCorner <= 3)
  {
    if (concaveCorner == 1)
    {
      v119.origin.x = v7;
      v119.origin.y = v9;
      v119.size.width = v11;
      v119.size.height = v13;
      MidX = CGRectGetMidX(v119);
      v120.origin.x = v7;
      v120.origin.y = v9;
      v120.size.width = v11;
      v120.size.height = v13;
      MaxY = CGRectGetMaxY(v120);
      v121.origin.x = v7;
      v121.origin.y = v9;
      v121.size.width = v11;
      v121.size.height = v13;
      MinX = CGRectGetMinX(v121);
      v122.origin.x = v7;
      v122.origin.y = v9;
      v122.size.width = v11;
      v122.size.height = v13;
      v72 = CGRectGetMaxY(v122);
      v123.origin.x = v7;
      v123.origin.y = v9;
      v123.size.width = v11;
      v123.size.height = v13;
      v76 = CGRectGetMinX(v123);
      v124.origin.x = v7;
      v124.origin.y = v9;
      v124.size.width = v11;
      v124.size.height = v13;
      v64 = v22 + CGRectGetMinY(v124);
      v125.origin.x = v7;
      v125.origin.y = v9;
      v125.size.width = v11;
      v125.size.height = v13;
      v68 = v20 + CGRectGetMinX(v125);
      v126.origin.x = v7;
      v126.origin.y = v9;
      v126.size.width = v11;
      v126.size.height = v13;
      v60 = v22 + CGRectGetMinY(v126);
      v127.origin.x = v7;
      v127.origin.y = v9;
      v127.size.width = v11;
      v127.size.height = v13;
      v56 = v20 + CGRectGetMinX(v127);
      v128.origin.x = v7;
      v128.origin.y = v9;
      v128.size.width = v11;
      v128.size.height = v13;
      MinY = CGRectGetMinY(v128);
      v129.origin.x = v7;
      v129.origin.y = v9;
      v129.size.width = v11;
      v129.size.height = v13;
      MaxX = CGRectGetMaxX(v129);
      v130.origin.x = v7;
      v130.origin.y = v9;
      v130.size.width = v11;
      v130.size.height = v13;
      v24 = CGRectGetMinY(v130);
      v131.origin.x = v7;
      v131.origin.y = v9;
      v131.size.width = v11;
      v131.size.height = v13;
      v25 = CGRectGetMaxX(v131);
      v132.origin.x = v7;
      v132.origin.y = v9;
      v132.size.width = v11;
      v132.size.height = v13;
      v26 = CGRectGetMaxY(v132);
      [bezierPath moveToPoint:{MidX, MaxY}];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:{v72, v15, v17}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v76 clockwise:{v64, v15, v17}];
      [bezierPath _addRoundedCornerWithTrueCorner:8 radius:1 corner:v68 clockwise:{v60, v15, v17}];
      v27 = bezierPath;
      v28 = v56;
      v29 = MinY;
      v30 = v15;
      v31 = v17;
      v33 = 0;
      v32 = 1;
    }

    else
    {
      if (concaveCorner != 2)
      {
        goto LABEL_12;
      }

      v91.origin.x = v7;
      v91.origin.y = v9;
      v91.size.width = v11;
      v91.size.height = v13;
      v86 = CGRectGetMidX(v91);
      v92.origin.x = v7;
      v92.origin.y = v9;
      v92.size.width = v11;
      v92.size.height = v13;
      v82 = CGRectGetMaxY(v92);
      v93.origin.x = v7;
      v93.origin.y = v9;
      v93.size.width = v11;
      v93.size.height = v13;
      v78 = CGRectGetMinX(v93);
      v94.origin.x = v7;
      v94.origin.y = v9;
      v94.size.width = v11;
      v94.size.height = v13;
      v70 = CGRectGetMaxY(v94);
      v95.origin.x = v7;
      v95.origin.y = v9;
      v95.size.width = v11;
      v95.size.height = v13;
      v74 = CGRectGetMinX(v95);
      v96.origin.x = v7;
      v96.origin.y = v9;
      v96.size.width = v11;
      v96.size.height = v13;
      v62 = CGRectGetMinY(v96);
      v97.origin.x = v7;
      v97.origin.y = v9;
      v97.size.width = v11;
      v97.size.height = v13;
      v66 = CGRectGetMaxX(v97) - v20;
      v98.origin.x = v7;
      v98.origin.y = v9;
      v98.size.width = v11;
      v98.size.height = v13;
      v54 = CGRectGetMinY(v98);
      v99.origin.x = v7;
      v99.origin.y = v9;
      v99.size.width = v11;
      v99.size.height = v13;
      v58 = CGRectGetMaxX(v99) - v20;
      v100.origin.x = v7;
      v100.origin.y = v9;
      v100.size.width = v11;
      v100.size.height = v13;
      v47 = v22 + CGRectGetMinY(v100);
      v101.origin.x = v7;
      v101.origin.y = v9;
      v101.size.width = v11;
      v101.size.height = v13;
      MaxX = CGRectGetMaxX(v101);
      v102.origin.x = v7;
      v102.origin.y = v9;
      v102.size.width = v11;
      v102.size.height = v13;
      v24 = v22 + CGRectGetMinY(v102);
      v103.origin.x = v7;
      v103.origin.y = v9;
      v103.size.width = v11;
      v103.size.height = v13;
      v25 = CGRectGetMaxX(v103);
      v104.origin.x = v7;
      v104.origin.y = v9;
      v104.size.width = v11;
      v104.size.height = v13;
      v26 = CGRectGetMaxY(v104);
      [bezierPath moveToPoint:{v86, v82}];
      [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v78 clockwise:{v70, v15, v17}];
      [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v74 clockwise:{v62, v15, v17}];
      [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v66 clockwise:{v54, v15, v17}];
      v27 = bezierPath;
      v28 = v58;
      v29 = v47;
      v30 = v15;
      v31 = v17;
      v32 = 4;
      v33 = 1;
    }

    [v27 _addRoundedCornerWithTrueCorner:v32 radius:v33 corner:v28 clockwise:{v29, v30, v31}];
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v24, v15, v17}];
    v37 = bezierPath;
    v38 = v25;
    v39 = v26;
    v40 = v15;
    v41 = v17;
    v42 = 8;
LABEL_10:
    [v37 _addRoundedCornerWithTrueCorner:v42 radius:0 corner:v38 clockwise:{v39, v40, v41}];
    [bezierPath closePath];
    v23 = bezierPath;
    goto LABEL_12;
  }

  if (concaveCorner != 8)
  {
    if (concaveCorner != 4)
    {
      goto LABEL_12;
    }

    v105.origin.x = v7;
    v105.origin.y = v9;
    v105.size.width = v11;
    v105.size.height = v13;
    v87 = CGRectGetMidX(v105);
    v106.origin.x = v7;
    v106.origin.y = v9;
    v106.size.width = v11;
    v106.size.height = v13;
    v83 = CGRectGetMinY(v106);
    v107.origin.x = v7;
    v107.origin.y = v9;
    v107.size.width = v11;
    v107.size.height = v13;
    v79 = CGRectGetMaxX(v107);
    v108.origin.x = v7;
    v108.origin.y = v9;
    v108.size.width = v11;
    v108.size.height = v13;
    v71 = CGRectGetMinY(v108);
    v109.origin.x = v7;
    v109.origin.y = v9;
    v109.size.width = v11;
    v109.size.height = v13;
    v75 = CGRectGetMaxX(v109);
    v110.origin.x = v7;
    v110.origin.y = v9;
    v110.size.width = v11;
    v110.size.height = v13;
    v63 = CGRectGetMaxY(v110);
    v111.origin.x = v7;
    v111.origin.y = v9;
    v111.size.width = v11;
    v111.size.height = v13;
    v67 = v20 + CGRectGetMinX(v111);
    v112.origin.x = v7;
    v112.origin.y = v9;
    v112.size.width = v11;
    v112.size.height = v13;
    v55 = CGRectGetMaxY(v112);
    v113.origin.x = v7;
    v113.origin.y = v9;
    v113.size.width = v11;
    v113.size.height = v13;
    v59 = v20 + CGRectGetMinX(v113);
    v114.origin.x = v7;
    v114.origin.y = v9;
    v114.size.width = v11;
    v114.size.height = v13;
    v48 = CGRectGetMaxY(v114) - v22;
    v115.origin.x = v7;
    v115.origin.y = v9;
    v115.size.width = v11;
    v115.size.height = v13;
    v52 = CGRectGetMinX(v115);
    v116.origin.x = v7;
    v116.origin.y = v9;
    v116.size.width = v11;
    v116.size.height = v13;
    v34 = CGRectGetMaxY(v116) - v22;
    v117.origin.x = v7;
    v117.origin.y = v9;
    v117.size.width = v11;
    v117.size.height = v13;
    v35 = CGRectGetMinX(v117);
    v118.origin.x = v7;
    v118.origin.y = v9;
    v118.size.width = v11;
    v118.size.height = v13;
    v36 = CGRectGetMinY(v118);
    [bezierPath moveToPoint:{v87, v83}];
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v79 clockwise:{v71, v15, v17}];
    [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v75 clockwise:{v63, v15, v17}];
    [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v67 clockwise:{v55, v15, v17}];
    [bezierPath _addRoundedCornerWithTrueCorner:2 radius:1 corner:v59 clockwise:{v48, v15, v17}];
    [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v52 clockwise:{v34, v15, v17}];
    v37 = bezierPath;
    v38 = v35;
    v39 = v36;
    v40 = v15;
    v41 = v17;
    v42 = 1;
    goto LABEL_10;
  }

  v133.origin.x = v7;
  v133.origin.y = v9;
  v133.size.width = v11;
  v133.size.height = v13;
  v89 = CGRectGetMidX(v133);
  v134.origin.x = v7;
  v134.origin.y = v9;
  v134.size.width = v11;
  v134.size.height = v13;
  v85 = CGRectGetMinY(v134);
  v135.origin.x = v7;
  v135.origin.y = v9;
  v135.size.width = v11;
  v135.size.height = v13;
  v81 = CGRectGetMaxX(v135);
  v136.origin.x = v7;
  v136.origin.y = v9;
  v136.size.width = v11;
  v136.size.height = v13;
  v73 = CGRectGetMinY(v136);
  v137.origin.x = v7;
  v137.origin.y = v9;
  v137.size.width = v11;
  v137.size.height = v13;
  v77 = CGRectGetMaxX(v137);
  v138.origin.x = v7;
  v138.origin.y = v9;
  v138.size.width = v11;
  v138.size.height = v13;
  v65 = CGRectGetMaxY(v138) - v22;
  v139.origin.x = v7;
  v139.origin.y = v9;
  v139.size.width = v11;
  v139.size.height = v13;
  v69 = CGRectGetMaxX(v139) - v20;
  v140.origin.x = v7;
  v140.origin.y = v9;
  v140.size.width = v11;
  v140.size.height = v13;
  v61 = CGRectGetMaxY(v140) - v22;
  v141.origin.x = v7;
  v141.origin.y = v9;
  v141.size.width = v11;
  v141.size.height = v13;
  v57 = CGRectGetMaxX(v141) - v20;
  v142.origin.x = v7;
  v142.origin.y = v9;
  v142.size.width = v11;
  v142.size.height = v13;
  v50 = CGRectGetMaxY(v142);
  v143.origin.x = v7;
  v143.origin.y = v9;
  v143.size.width = v11;
  v143.size.height = v13;
  v53 = CGRectGetMinX(v143);
  v144.origin.x = v7;
  v144.origin.y = v9;
  v144.size.width = v11;
  v144.size.height = v13;
  v43 = CGRectGetMaxY(v144);
  v145.origin.x = v7;
  v145.origin.y = v9;
  v145.size.width = v11;
  v145.size.height = v13;
  v44 = CGRectGetMinX(v145);
  v146.origin.x = v7;
  v146.origin.y = v9;
  v146.size.width = v11;
  v146.size.height = v13;
  v45 = CGRectGetMinY(v146);
  [bezierPath moveToPoint:{v89, v85}];
  [bezierPath _addRoundedCornerWithTrueCorner:2 radius:0 corner:v81 clockwise:{v73, v15, v17}];
  [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v77 clockwise:{v65, v15, v17}];
  [bezierPath _addRoundedCornerWithTrueCorner:1 radius:1 corner:v69 clockwise:{v61, v15, v17}];
  [bezierPath _addRoundedCornerWithTrueCorner:8 radius:0 corner:v57 clockwise:{v50, v15, v17}];
  [bezierPath _addRoundedCornerWithTrueCorner:4 radius:0 corner:v53 clockwise:{v43, v15, v17}];
  [bezierPath _addRoundedCornerWithTrueCorner:1 radius:0 corner:v44 clockwise:{v45, v15, v17}];
  [bezierPath closePath];
  v23 = 0;
LABEL_12:

  return v23;
}

- (void)addPathForSplitGeometry:(id)geometry
{
  v4 = [(UIKBRenderer *)self pathForSplitGeometry:geometry];
  if (v4)
  {
    v7 = v4;
    context = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(context, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickPopupGeometries:(id)geometries
{
  v4 = [(UIKBRenderer *)self pathForFlickPopupGeometries:geometries];
  if (v4)
  {
    v7 = v4;
    context = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(context, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickGeometry:(id)geometry
{
  v4 = [(UIKBRenderer *)self pathForFlickGeometry:geometry];
  if (v4)
  {
    v7 = v4;
    context = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(context, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForRenderGeometry:(id)geometry
{
  v4 = [(UIKBRenderer *)self pathForRenderGeometry:geometry];
  if (v4)
  {
    v7 = v4;
    context = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(context, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForTraits:(id)traits displayRect:(CGRect *)rect
{
  v63 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  v7 = traitsCopy;
  if (!self->_colorDetectMode)
  {
    geometry = [traitsCopy geometry];
    flickDirection = [geometry flickDirection];

    if (flickDirection == -3)
    {
      geometry2 = [v7 geometry];
      splitLeftRect = [geometry2 splitLeftRect];
      if (splitLeftRect)
      {
        v12 = splitLeftRect;
        geometry3 = [v7 geometry];
        splitRightRect = [geometry3 splitRightRect];

        if (splitRightRect)
        {
          geometry4 = [v7 geometry];
          [(UIKBRenderer *)self addPathForSplitGeometry:geometry4];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      geometry5 = [v7 geometry];
      if ([geometry5 detachedVariants])
      {
        variantGeometries = [v7 variantGeometries];

        if (variantGeometries)
        {
          geometry6 = [v7 geometry];
          geometry4 = [geometry6 copy];

          [geometry4 setPopupBias:0];
          [(UIKBRenderer *)self addPathForRenderGeometry:geometry4];
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          variantGeometries2 = [v7 variantGeometries];
          v25 = [variantGeometries2 countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v59;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v59 != v27)
                {
                  objc_enumerationMutation(variantGeometries2);
                }

                v29 = *(*(&v58 + 1) + 8 * i);
                v64.origin.x = x;
                v64.origin.y = y;
                v64.size.width = width;
                v64.size.height = height;
                IsNull = CGRectIsNull(v64);
                [v29 frame];
                v35 = v31;
                v36 = v32;
                v37 = v33;
                v38 = v34;
                if (!IsNull)
                {
                  v65.origin.x = x;
                  v65.origin.y = y;
                  v65.size.width = width;
                  v65.size.height = height;
                  *&v31 = CGRectUnion(v65, *&v35);
                }

                x = v31;
                y = v32;
                width = v33;
                height = v34;
              }

              v26 = [variantGeometries2 countByEnumeratingWithState:&v58 objects:v62 count:16];
            }

            while (v26);
          }

          geometry7 = [v7 geometry];
          if ([geometry7 roundRectCorners])
          {
          }

          else
          {
            geometry8 = [v7 geometry];
            [geometry8 roundRectRadius];
            v52 = v51;

            if (v52 != 0.0)
            {
LABEL_30:
              [geometry4 setFrame:{x, y, width, height}];
              [geometry4 setPaddedFrame:{x, y, width, height}];
              [geometry4 setDisplayFrame:{x, y, width, height}];
              [geometry4 setRoundRectCorners:-1];
              geometry9 = [v7 geometry];
              [geometry9 roundRectRadius];
              [geometry4 setRoundRectRadius:?];

              goto LABEL_31;
            }
          }

          [geometry4 roundRectRadius];
          v54 = -v53;
          [geometry4 roundRectRadius];
          v56 = -v55;
          v66.origin.x = x;
          v66.origin.y = y;
          v66.size.width = width;
          v66.size.height = height;
          v67 = CGRectInset(v66, v54, v56);
          x = v67.origin.x;
          y = v67.origin.y;
          width = v67.size.width;
          height = v67.size.height;
          goto LABEL_30;
        }
      }

      else
      {
      }

      geometry4 = [v7 geometry];
LABEL_31:
      [(UIKBRenderer *)self addPathForRenderGeometry:geometry4];
      goto LABEL_32;
    }

    variantGeometries3 = [v7 variantGeometries];

    if (variantGeometries3)
    {
      geometry4 = [v7 variantGeometries];
      [(UIKBRenderer *)self addPathForFlickPopupGeometries:geometry4];
      goto LABEL_32;
    }

    variantTraits = [v7 variantTraits];
    geometry10 = [variantTraits geometry];

    geometry11 = [v7 geometry];
    if (geometry10)
    {
      [(UIKBRenderer *)self addPathForRenderGeometry:geometry11];
    }

    else
    {
      [(UIKBRenderer *)self addPathForFlickGeometry:geometry11];

      if (rect)
      {
        geometry12 = [v7 geometry];
        [geometry12 popupSource];
        v45 = v44;
        v47 = v46;
        v48 = *MEMORY[0x1E695F060];
        v49 = *(MEMORY[0x1E695F060] + 8);

        v68.origin.x = v45;
        v68.origin.y = v47;
        v68.size.width = v48;
        v68.size.height = v49;
        *rect = CGRectUnion(*rect, v68);
      }
    }
  }

LABEL_33:
}

- (void)addRoundRect:(CGRect)rect radius:(double)radius corners:(unint64_t)corners
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (radius <= 0.0 || corners == 0)
  {
    context = [(UIKBRenderer *)self context];
    v12 = x;
    v13 = y;
    v14 = width;
    v15 = height;

    CGContextAddRect(context, *&v12);
  }

  else
  {
    v18 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:corners byRoundingCorners:rect.origin.x cornerRadii:{rect.origin.y, rect.size.width, rect.size.height, radius, radius}];
    context2 = [(UIKBRenderer *)self context];
    v17 = v18;
    CGContextAddPath(context2, [v18 CGPath]);
  }
}

- (BOOL)renderKeyPathContents:(id)contents withTraits:(id)traits
{
  contentsCopy = contents;
  traitsCopy = traits;
  displayPathType = [contentsCopy displayPathType];
  renderFlags = [(UIKBRenderer *)self renderFlags];
  v10 = 0;
  if (traitsCopy && (renderFlags & 4) != 0 && displayPathType)
  {
    if (self->_colorDetectMode)
    {
      symbolStyle = [traitsCopy symbolStyle];
      textColor = [symbolStyle textColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:textColor];

      v10 = 1;
      goto LABEL_30;
    }

    symbolStyle2 = [traitsCopy symbolStyle];
    textColor2 = [symbolStyle2 textColor];
    v15 = [textColor2 isEqualToString:@"UIKBColorWhite"];

    switch(displayPathType)
    {
      case 1:
        if (v15)
        {
          _thickShiftGlyphPath = [(UIKBRenderer *)self _thickShiftGlyphPath];
          v17 = 0.0;
        }

        else
        {
          _thickShiftGlyphPath = [(UIKBRenderer *)self _thinShiftGlyphPath];
          v17 = 0.12;
        }

        BoundingBox = CGPathGetBoundingBox(_thickShiftGlyphPath);
        width = BoundingBox.size.width;
        height = v17 + BoundingBox.size.height;
        break;
      case 4:
        bezierPath = [MEMORY[0x1E69DC728] bezierPath];
        height = 10.0;
        [bezierPath moveToPoint:{1.0, 10.0}];
        [bezierPath addLineToPoint:{1.0, 0.0}];
        [bezierPath closePath];
        _thickShiftGlyphPath = [bezierPath CGPath];

        width = 2.0;
        break;
      case 3:
        v55 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 15.0, 15.0}];
        [v55 moveToPoint:{4.25, 10.75}];
        [v55 addLineToPoint:{10.75, 4.25}];
        [v55 moveToPoint:{4.25, 4.25}];
        [v55 addLineToPoint:{10.75, 10.75}];
        [v55 closePath];
        _thickShiftGlyphPath = [v55 CGPath];
        v64 = CGPathGetBoundingBox(_thickShiftGlyphPath);
        width = v64.size.width;
        height = v64.size.height;

        break;
      case 2:
        _thickShiftGlyphPath = [(UIKBRenderer *)self _deleteGlyphPaths];
        v62 = CGPathGetBoundingBox(_thickShiftGlyphPath);
        width = v62.size.width;
        height = v62.size.height;
        break;
      default:
        _thickShiftGlyphPath = 0;
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
        break;
    }

    geometry = [traitsCopy geometry];
    [geometry symbolFrame];
    v22 = v21;

    if (width <= v22)
    {
      v26 = floor(height);
      symbolStyle3 = [traitsCopy symbolStyle];
      [symbolStyle3 fontSize];
      v29 = v28;

      v25 = 1.0;
      if (v26 >= v29)
      {
        goto LABEL_20;
      }

      symbolStyle4 = [traitsCopy symbolStyle];
      [symbolStyle4 fontSize];
      v25 = v30 / v26;
    }

    else
    {
      symbolStyle4 = [traitsCopy geometry];
      [symbolStyle4 symbolFrame];
      v25 = v24 / width;
    }

LABEL_20:
    memset(&v61, 0, sizeof(v61));
    CGAffineTransformMakeScale(&v61, v25, v25);
    symbolStyle5 = [traitsCopy symbolStyle];
    [symbolStyle5 textOffset];
    v33 = v32;
    v58 = v34;

    geometry2 = [traitsCopy geometry];
    [geometry2 symbolFrame];
    [(UIKBRenderer *)self scale];
    v57 = v36;
    UIRectCenteredIntegralRectScale();
    v38 = v37;
    v40 = v39;

    v59 = v61;
    CGAffineTransformTranslate(&v60, &v59, (v33 + v38) / v25, (v58 + v40 + -1.0) / v25);
    v61 = v60;
    symbolStyle6 = [traitsCopy symbolStyle];
    textColor3 = [symbolStyle6 textColor];
    CopyWithAlpha = UIKBGetNamedColor(textColor3);

    symbolStyle7 = [traitsCopy symbolStyle];
    [symbolStyle7 textOpacity];
    v46 = v45;

    if (v46 == 1.0)
    {
      CGColorRetain(CopyWithAlpha);
    }

    else
    {
      symbolStyle8 = [traitsCopy symbolStyle];
      [symbolStyle8 textOpacity];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v48);
    }

    if ([contentsCopy fillPath])
    {
      symbolStyle9 = [traitsCopy symbolStyle];
      [symbolStyle9 pathWeight];
      v60 = v61;
      selfCopy2 = self;
      v51 = _thickShiftGlyphPath;
      v52 = CopyWithAlpha;
      v53 = 1;
    }

    else
    {
      if ([contentsCopy fillPath])
      {
        v10 = 0;
        goto LABEL_29;
      }

      symbolStyle9 = [traitsCopy symbolStyle];
      [symbolStyle9 pathWeight];
      if (displayPathType == 1)
      {
        v60 = v61;
        [(UIKBRenderer *)self drawShiftPath:v15 weight:&v60 transform:CopyWithAlpha color:?];
        goto LABEL_26;
      }

      v60 = v61;
      selfCopy2 = self;
      v51 = _thickShiftGlyphPath;
      v52 = CopyWithAlpha;
      v53 = 0;
    }

    [(UIKBRenderer *)selfCopy2 drawPath:v51 weight:&v60 transform:v52 color:v53 fill:?];
LABEL_26:

    v10 = 1;
LABEL_29:
    CGColorRelease(CopyWithAlpha);
  }

LABEL_30:

  return v10;
}

- (void)drawShiftPath:(BOOL)path weight:(double)weight transform:(CGAffineTransform *)transform color:(CGColor *)color
{
  v23 = *MEMORY[0x1E69E9840];
  if (color)
  {
    if (path)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.12;
    }

    MutablePathWithPoints = createMutablePathWithPoints(dbl_1900C1250, 7, 0, 15.0);
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(MutablePathWithPoints, transform);
    v15 = xmmword_1900C0EC0;
    v16 = 0x3FE0000000000000;
    v17 = 6.0 - v10;
    v18 = 0x4023000000000000;
    v19 = 15.0 - v10;
    v20 = 0x4032800000000000;
    v21 = 6.0 - v10;
    v22 = xmmword_1900C0ED0;
    v13 = createMutablePathWithPoints(&v15, 5, 0, 15.0);
    v14 = CGPathCreateMutableCopyByTransformingPath(v13, transform);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapButt);
    CGContextSetLineWidth(self->_ctx, weight);
    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, color);
    CGContextStrokePath(self->_ctx);
    CGContextSetLineWidth(self->_ctx, weight - v10);
    CGContextAddPath(self->_ctx, v14);
    CGContextSetStrokeColorWithColor(self->_ctx, color);
    CGContextStrokePath(self->_ctx);
    CGContextRestoreGState(self->_ctx);
    CGPathRelease(MutableCopyByTransformingPath);
    CGPathRelease(v14);
    CGPathRelease(MutablePathWithPoints);
    CGPathRelease(v13);
  }
}

- (void)drawPath:(CGPath *)path weight:(double)weight transform:(CGAffineTransform *)transform color:(CGColor *)color fill:(BOOL)fill
{
  if (path && color)
  {
    fillCopy = fill;
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(path, transform);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineWidth(self->_ctx, weight);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapSquare);
    if (fillCopy)
    {
      CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
      CGContextSetFillColorWithColor(self->_ctx, color);
      CGContextFillPath(self->_ctx);
    }

    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, color);
    CGContextStrokePath(self->_ctx);
    CGPathRelease(MutableCopyByTransformingPath);
    ctx = self->_ctx;

    CGContextRestoreGState(ctx);
  }
}

- (CGPath)_deleteGlyphPaths
{
  if (_deleteGlyphPaths_onceToken != -1)
  {
    dispatch_once(&_deleteGlyphPaths_onceToken, &__block_literal_global_46);
  }

  return _deleteGlyphPaths_deletePaths;
}

CGMutablePathRef __33__UIKBRenderer__deleteGlyphPaths__block_invoke()
{
  result = createMutablePathWithPoints(dbl_1900C1180, 13, 1, 15.0);
  _deleteGlyphPaths_deletePaths = result;
  return result;
}

- (CGPath)_thickShiftGlyphPath
{
  if (_thickShiftGlyphPath_onceToken != -1)
  {
    dispatch_once(&_thickShiftGlyphPath_onceToken, &__block_literal_global_43_2514);
  }

  return _thickShiftGlyphPath_shiftPaths;
}

CGMutablePathRef __36__UIKBRenderer__thickShiftGlyphPath__block_invoke()
{
  result = createMutablePathWithPoints(dbl_1900C10E0, 10, 1, 15.0);
  _thickShiftGlyphPath_shiftPaths = result;
  return result;
}

- (CGPath)_thinShiftGlyphPath
{
  if (_thinShiftGlyphPath_onceToken != -1)
  {
    dispatch_once(&_thinShiftGlyphPath_onceToken, &__block_literal_global_41);
  }

  return _thinShiftGlyphPath_shiftPaths;
}

CGMutablePathRef __35__UIKBRenderer__thinShiftGlyphPath__block_invoke()
{
  result = createMutablePathWithPoints(dbl_1900C1040, 10, 1, 15.0);
  _thinShiftGlyphPath_shiftPaths = result;
  return result;
}

- (unint64_t)renderKeyStringContents:(id)contents withTraits:(id)traits status:(unint64_t)status
{
  contentsCopy = contents;
  traitsCopy = traits;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  statusCopy = status;
  displayString = [contentsCopy displayString];
  renderFlags = [(UIKBRenderer *)self renderFlags];
  if (!traitsCopy || (renderFlags & 0x34) == 0 || !displayString)
  {
    goto LABEL_42;
  }

  if ([traitsCopy renderSecondarySymbolsSeparately])
  {
    v12 = 4;
  }

  else
  {
    v12 = 52;
  }

  if ((status & 2) == 0)
  {
    secondaryDisplayStrings = [contentsCopy secondaryDisplayStrings];
    if ([secondaryDisplayStrings count])
    {
      secondarySymbolStyles = [traitsCopy secondarySymbolStyles];
      v15 = [secondarySymbolStyles count];

      if (v15)
      {
        displayString2 = [contentsCopy displayString];
        v17 = [displayString2 length];
        v18 = v17 != 0;

        if (v17)
        {
          displayStringImage = [contentsCopy displayStringImage];
          if ([displayStringImage length])
          {
          }

          else
          {
            v46 = [(UIKBRenderer *)self renderFlags]& v12;

            if (v46)
            {
              displayString3 = [contentsCopy displayString];
              geometry = [traitsCopy geometry];
              [geometry symbolFrame];
              v50 = v49;
              v52 = v51;
              v54 = v53;
              v56 = v55;
              symbolStyle = [traitsCopy symbolStyle];
              [(UIKBRenderer *)self _drawKeyString:displayString3 inRect:symbolStyle withStyle:v50, v52, v54, v56];

              v79[3] |= 1uLL;
            }
          }
        }

        secondaryDisplayStrings2 = [contentsCopy secondaryDisplayStrings];
        v59 = [secondaryDisplayStrings2 count];

        secondarySymbolStyles2 = [traitsCopy secondarySymbolStyles];
        v61 = [secondarySymbolStyles2 count];

        if (![traitsCopy renderSecondarySymbolsSeparately])
        {
          secondaryDisplayStrings3 = [contentsCopy secondaryDisplayStrings];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __58__UIKBRenderer_renderKeyStringContents_withTraits_status___block_invoke;
          v72[3] = &unk_1E72D2D00;
          v72[4] = self;
          v75 = 52;
          v76 = v61;
          v77 = v18;
          v73 = traitsCopy;
          v74 = &v78;
          [secondaryDisplayStrings3 enumerateObjectsUsingBlock:v72];

          goto LABEL_42;
        }

        if (([(UIKBRenderer *)self renderFlags]& 0x20) != 0)
        {
          v62 = 1;
        }

        else
        {
          if (([(UIKBRenderer *)self renderFlags]& 0x10) == 0)
          {
            goto LABEL_42;
          }

          v62 = 0;
        }

        if (v62 >= v59)
        {
          v65 = 0;
        }

        else
        {
          secondaryDisplayStrings4 = [contentsCopy secondaryDisplayStrings];
          v65 = [secondaryDisplayStrings4 objectAtIndex:v62];
        }

        if (v62 >= v61 || ([traitsCopy secondarySymbolStyles], v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "objectAtIndex:", v62), lastObject = objc_claimAutoreleasedReturnValue(), v66, !lastObject))
        {
          secondarySymbolStyles3 = [traitsCopy secondarySymbolStyles];
          lastObject = [secondarySymbolStyles3 lastObject];
        }

        if ([v65 length])
        {
          if (!v17)
          {
            [lastObject setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          geometry2 = [traitsCopy geometry];
          [geometry2 symbolFrame];
          [(UIKBRenderer *)self _drawKeyString:v65 inRect:lastObject withStyle:?];

          v79[3] = 3;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  if ((status & 1) == 0)
  {
    geometry3 = [traitsCopy geometry];
    [geometry3 symbolFrame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    symbolStyle2 = [traitsCopy symbolStyle];
    v30 = [(UIKBRenderer *)self _drawKeyString:displayString inRect:symbolStyle2 withStyle:v22, v24, v26, v28];

    if ([contentsCopy stringKeycapOverImage])
    {
      v31 = 0;
    }

    else
    {
      displayStringImage2 = [contentsCopy displayStringImage];
      v31 = displayStringImage2 != 0;
    }

    if (v30 || v31)
    {
      if (!v30)
      {
        goto LABEL_42;
      }
    }

    else
    {
      fallbackContents = [contentsCopy fallbackContents];
      displayString4 = [fallbackContents displayString];
      geometry4 = [traitsCopy geometry];
      [geometry4 symbolFrame];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      fallbackSymbolStyle = [traitsCopy fallbackSymbolStyle];
      v45 = [(UIKBRenderer *)self _drawKeyString:displayString4 inRect:fallbackSymbolStyle withStyle:v37, v39, v41, v43];

      if (!v45)
      {
        goto LABEL_42;
      }
    }

    v79[3] = 3;
  }

LABEL_42:
  v70 = v79[3];

  _Block_object_dispose(&v78, 8);
  return v70;
}

void __58__UIKBRenderer_renderKeyStringContents_withTraits_status___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  if ([v10 length] && (*(a1 + 56) & objc_msgSend(*(a1 + 32), "renderFlags")) != 0)
  {
    if (*(a1 + 64) <= a3 || ([*(a1 + 40) secondarySymbolStyles], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndex:", a3), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v7 = [*(a1 + 40) secondarySymbolStyles];
      v6 = [v7 lastObject];
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      [v6 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) geometry];
    [v9 symbolFrame];
    [v8 _drawKeyString:v10 inRect:v6 withStyle:?];

    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
  }
}

- (BOOL)_drawKeyString:(id)string inRect:(CGRect)rect withStyle:(id)style
{
  rect = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  stringCopy = string;
  styleCopy = style;
  if (![stringCopy length])
  {
    goto LABEL_17;
  }

  CopyWithAlpha = [styleCopy fontName];

  if (CopyWithAlpha)
  {
    v170.origin.x = x;
    v170.origin.y = y;
    v170.size.width = width;
    v170.size.height = rect;
    if (CGRectIsEmpty(v170))
    {
      LOBYTE(CopyWithAlpha) = 0;
      goto LABEL_18;
    }

    if (self->_colorDetectMode)
    {
      textColor = [styleCopy textColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:textColor];

      etchColor = [styleCopy etchColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:etchColor];

      if (self->_contentColorFormat)
      {
        fontName = [styleCopy fontName];
        v14 = [fontName isEqualToString:@"AppleColorEmoji"];

        if (v14)
        {
          self->_contentColorFormat = 0;
          self->_colorCount = 2;
          singleColor = self->_singleColor;
          self->_singleColor = 0;
        }
      }

      goto LABEL_17;
    }

    if ([styleCopy anchorCorner] != 1 && objc_msgSend(styleCopy, "anchorCorner") != 4)
    {
      if ([styleCopy anchorCorner] != 2 && objc_msgSend(styleCopy, "anchorCorner") != 8)
      {
LABEL_15:
        if (![styleCopy selector] && -[UIKBRenderer _drawSingleSymbol:inRect:withStyle:](self, "_drawSingleSymbol:inRect:withStyle:", stringCopy, styleCopy, x, y, width, rect))
        {
LABEL_17:
          LOBYTE(CopyWithAlpha) = 1;
          goto LABEL_18;
        }

        v169[0] = 0.0;
        selfCopy = self;
        v155 = width;
        if ([stringCopy rangeOfString:@"\n" options:2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [styleCopy fontSize];
          v20 = v19;
          v21 = 0;
          v168 = v19;
          v22 = 1;
        }

        else
        {
          v21 = [stringCopy componentsSeparatedByString:@"\n"];
          v23 = [v21 count];
          v24 = v23;
          if (v23 >= 3)
          {
            v22 = 3;
          }

          else
          {
            v22 = v23;
          }

          [styleCopy fontSize];
          v20 = v25;
          if (!v24)
          {
            v55 = 0;
            v54 = 0;
            v51 = 0;
            v165 = INFINITY;
            v27 = v25;
            goto LABEL_50;
          }
        }

        v26 = 0;
        v151 = rect / v22;
        v153 = v22;
        v165 = INFINITY;
        v27 = v20;
        v28 = v20;
        v149 = width / v22;
        v157 = v22;
        do
        {
          v159 = v28;
          v161 = v27;
          isVertical = [styleCopy isVertical];
          if (isVertical)
          {
            v30 = x + width * v26 / v153;
          }

          else
          {
            v30 = x;
          }

          if (isVertical)
          {
            v31 = y;
          }

          else
          {
            v31 = y + rect * v26 / v153;
          }

          v32 = v151;
          if (isVertical)
          {
            v33 = v149;
          }

          else
          {
            v33 = width;
          }

          if (isVertical)
          {
            rectCopy = rect;
          }

          else
          {
            rectCopy = v151;
          }

          v35 = v20;
          *buf = v20;
          v36 = stringCopy;
          v37 = stringCopy;
          if (v21)
          {
            v37 = [v21 objectAtIndex:{v26, v151}];
            leading = v37;
          }

          fontName2 = [styleCopy fontName];
          [styleCopy fontWeight];
          v40 = v39;
          [styleCopy fontWidth];
          v42 = v41;
          [styleCopy kerning];
          v44 = v43;
          v45 = v21;
          selector = [styleCopy selector];
          ignoreTextMarginOnKey = [styleCopy ignoreTextMarginOnKey];
          isVertical2 = [styleCopy isVertical];
          keycapsFallback = [styleCopy keycapsFallback];
          v50 = selector;
          v21 = v45;
          v51 = UIKBCreateFitCTLine(v37, fontName2, buf, v169, v50, ignoreTextMarginOnKey, isVertical2, keycapsFallback, v30, v31, v33, rectCopy, v40, v42, v44);

          if (v45)
          {
          }

          v20 = v35;
          v28 = v159;
          v27 = v161;
          if (v35 <= v161)
          {
            v28 = v169[0];
            v27 = v35;
          }

          TypographicBounds = CTLineGetTypographicBounds(v51, 0, 0, 0);
          v53 = v165;
          if (TypographicBounds < v165)
          {
            v53 = TypographicBounds;
          }

          v165 = v53;
          v54 = v157;
          if (v157 != 1)
          {
            CFRelease(v51);
            v51 = 0;
          }

          stringCopy = v36;
          width = v155;
          ++v26;
        }

        while (v157 != v26);
        v55 = 1;
        v20 = v28;
LABEL_50:
        v168 = v27;
        v169[0] = v20;
        [styleCopy minFontSize];
        LOBYTE(CopyWithAlpha) = v27 >= v56;
        if (v27 < v56)
        {
          if (v51)
          {
            CFRelease(v51);
          }
        }

        else
        {
          textColor2 = [styleCopy textColor];
          v58 = UIKBGetNamedColor(textColor2);

          [styleCopy textOpacity];
          v147 = stringCopy;
          v139 = CopyWithAlpha;
          if (v59 == 1.0)
          {
            CGColorRetain(v58);
            CopyWithAlpha = v58;
          }

          else
          {
            [styleCopy textOpacity];
            CopyWithAlpha = CGColorCreateCopyWithAlpha(v58, v60);
          }

          if (v55)
          {
            v61 = selfCopy;
            v62 = 0;
            v63 = v54 - 1;
            v142 = v20 + v20;
            v143 = y + v20 * (1.5 - v54);
            v152 = rect / v54;
            v154 = v54;
            v150 = width / v54;
            v145 = floor(x + 0.5);
            v140 = width * 0.5;
            v64 = -v54;
            v141 = x + (width - v165 * (v54 - 1)) * 0.5;
            v158 = v54;
            v160 = v21;
            v144 = CopyWithAlpha;
            while (1)
            {
              v162 = v64;
              if ([styleCopy isVertical])
              {
                v65 = v63;
              }

              else
              {
                v65 = v62;
              }

              isVertical3 = [styleCopy isVertical];
              v67 = v65;
              if (isVertical3)
              {
                v68 = x + width * v65 / v154;
              }

              else
              {
                v68 = x;
              }

              if (isVertical3)
              {
                v69 = y;
              }

              else
              {
                v69 = y + rect * v65 / v154;
              }

              v70 = v152;
              if (isVertical3)
              {
                v71 = v150;
              }

              else
              {
                v71 = width;
              }

              if (isVertical3)
              {
                rectCopy2 = rect;
              }

              else
              {
                rectCopy2 = v152;
              }

              if (v54 != 1)
              {
                v73 = v147;
                if (v21)
                {
                  v73 = [v21 objectAtIndex:{v62, v152}];
                  v146 = v73;
                }

                fontName3 = [styleCopy fontName];
                [styleCopy fontWeight];
                v76 = v75;
                [styleCopy fontWidth];
                v78 = v77;
                [styleCopy kerning];
                v80 = v79;
                selector2 = [styleCopy selector];
                ignoreTextMarginOnKey2 = [styleCopy ignoreTextMarginOnKey];
                isVertical4 = [styleCopy isVertical];
                keycapsFallback2 = [styleCopy keycapsFallback];
                v51 = UIKBCreateFitCTLine(v73, fontName3, &v168, v169, selector2, ignoreTextMarginOnKey2, isVertical4, keycapsFallback2, v68, v69, v71, rectCopy2, v76, v78, v80);

                v21 = v160;
                if (v160)
                {
                }

                v61 = selfCopy;
                width = v155;
                CopyWithAlpha = v144;
              }

              v85 = CTLineGetTypographicBounds(v51, 0, 0, 0);
              if ([styleCopy isVertical])
              {
                if ([styleCopy anchorCorner] || objc_msgSend(styleCopy, "alignment") != 1)
                {
                  if (os_variant_has_internal_diagnostics())
                  {
                    v138 = __TUIFaultDebugAssertLog();
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_18FFDC000, v138, OS_LOG_TYPE_FAULT, "only alignment center is supported in vertical orientation", buf, 2u);
                    }

                    v61 = selfCopy;
                    width = v155;
                  }

                  else
                  {
                    CategoryImpl = _drawKeyString_inRect_withStyle____s_category;
                    if (!_drawKeyString_inRect_withStyle____s_category)
                    {
                      CategoryImpl = __TUILogGetCategoryImpl("Assert");
                      atomic_store(CategoryImpl, &_drawKeyString_inRect_withStyle____s_category);
                    }

                    v137 = *(CategoryImpl + 8);
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_18FFDC000, v137, OS_LOG_TYPE_ERROR, "only alignment center is supported in vertical orientation", buf, 2u);
                    }
                  }
                }

                PenOffsetForFlush = CTLineGetPenOffsetForFlush(v51, 0.5, rect);
                [styleCopy textOffset];
                v88 = PenOffsetForFlush + v87;
                [styleCopy etchOffset];
                v90 = y + v88 + v89;
                [styleCopy textOffset];
                v92 = v91;
                [styleCopy etchOffset];
                v94 = ceil(v141 + v165 * v67) + v92 + v93;
                v21 = v160;
                goto LABEL_104;
              }

              v90 = ceil(v143 + v142 * v67);
              if (![styleCopy anchorCorner])
              {
                break;
              }

              if ([styleCopy anchorCorner] == 1)
              {
                [styleCopy textOffset];
                v96 = v95;
                [styleCopy etchOffset];
                v98 = v96 + v97;
                goto LABEL_87;
              }

              if ([styleCopy anchorCorner] == 4)
              {
                [styleCopy textOffset];
                v104 = v103;
                [styleCopy etchOffset];
                v106 = v104 + v105;
              }

              else
              {
                if ([styleCopy anchorCorner] == 2)
                {
                  [styleCopy textOffset];
                  v113 = width - v112 - v85;
                  [styleCopy etchOffset];
                  v98 = v114 + v113;
LABEL_87:
                  v94 = v145 + v98;
                  v99 = v169[0];
                  [styleCopy textOffset];
                  v101 = v99 + v100;
LABEL_102:
                  [styleCopy etchOffset];
                  v111 = v101 + v119;
                  goto LABEL_103;
                }

                if ([styleCopy anchorCorner] != 8)
                {
                  v94 = v145;
                  goto LABEL_104;
                }

                [styleCopy textOffset];
                v134 = width - v133 - v85;
                [styleCopy etchOffset];
                v106 = v135 + v134;
              }

              v94 = v145 + v106;
              v107 = rect - v169[0];
              [styleCopy textOffset];
              v109 = v107 - v108;
              [styleCopy etchOffset];
              v111 = v109 - v110;
LABEL_103:
              v90 = v90 + v111;
LABEL_104:
              etchColor2 = [styleCopy etchColor];

              if (etchColor2)
              {
                ctx = v61->_ctx;
                etchColor3 = [styleCopy etchColor];
                v123 = v62;
                v124 = v63;
                v125 = CopyWithAlpha;
                v126 = v61;
                v127 = UIKBGetNamedColor(etchColor3);
                isVertical5 = [styleCopy isVertical];
                v129 = v127;
                v61 = v126;
                CopyWithAlpha = v125;
                v63 = v124;
                v62 = v123;
                UIKBDrawCTLineAtPoint(ctx, v51, v129, isVertical5, v94, v90);
              }

              [styleCopy etchOffset];
              v131 = v94 - v130;
              [styleCopy etchOffset];
              UIKBDrawCTLineAtPoint(v61->_ctx, v51, CopyWithAlpha, [styleCopy isVertical], v131, v90 - v132);
              if (v51)
              {
                CFRelease(v51);
              }

              ++v62;
              --v63;
              v64 = v162 + 1;
              v54 = v158;
              if (v162 == -1)
              {
                goto LABEL_121;
              }
            }

            if ([styleCopy alignment] == 1)
            {
              if (width - v85 >= 0.0)
              {
                v102 = CTLineGetPenOffsetForFlush(v51, 0.5, width);
              }

              else
              {
                v102 = (width - v85) * 0.5;
              }
            }

            else
            {
              v102 = v140;
              if ([styleCopy alignment])
              {
                v94 = v145;
                if ([styleCopy alignment] != 2)
                {
LABEL_101:
                  [styleCopy textOffset];
                  v101 = rect * 0.5 + v118;
                  goto LABEL_102;
                }

                v102 = v140 - v85;
              }
            }

            [styleCopy textOffset];
            v116 = v102 + v115;
            [styleCopy etchOffset];
            v94 = v145 + v116 + v117;
            goto LABEL_101;
          }

LABEL_121:
          CGColorRelease(CopyWithAlpha);
          stringCopy = v147;
          LOBYTE(CopyWithAlpha) = v139;
        }

        goto LABEL_18;
      }

      [styleCopy textOffset];
      x = x + v16;
    }

    [styleCopy textOffset];
    width = width - v17;
    goto LABEL_15;
  }

LABEL_18:

  return CopyWithAlpha;
}

- (BOOL)_drawSingleSymbol:(id)symbol inRect:(CGRect)rect withStyle:(id)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  symbolCopy = symbol;
  styleCopy = style;
  if ([symbolCopy length] == 1)
  {
    v13 = [symbolCopy characterAtIndex:0];
    fontName = [styleCopy fontName];
    [styleCopy fontSize];
    v16 = v15;
    [styleCopy fontWeight];
    v18 = v17;
    [styleCopy fontWidth];
    v20 = v19;
    keycapsFallback = [styleCopy keycapsFallback];
    v22 = UIKBGlyphForCharacter(fontName, v13, keycapsFallback, v16, v18, v20);

    glyphs = v22;
    if (!v22)
    {
      goto LABEL_16;
    }

    v52 = x;
    do
    {
      keycapsFallback2 = [styleCopy keycapsFallback];
      v24 = UIKBCreateCTFont(fontName, keycapsFallback2, v16, v18, v20);

      OpticalBoundsForGlyphs = CTFontGetOpticalBoundsForGlyphs(v24, &glyphs, 0, 1, 0);
      v25 = OpticalBoundsForGlyphs.size.width;
      v26 = OpticalBoundsForGlyphs.size.width > width + -4.0;
      if (OpticalBoundsForGlyphs.size.height > height)
      {
        v26 = 1;
      }

      if (v26)
      {
        v16 = v16 + -1.0;
      }
    }

    while (v26 && v16 > 0.0);
    [styleCopy minFontSize];
    if (v16 >= v27)
    {
      XHeight = UIKBGetXHeight(fontName, v16);
      if (XHeight == 0.0)
      {
        XHeight = CTFontGetXHeight(v24);
      }

      v29 = y + height * 0.5 + XHeight * 0.5;
      textColor = [styleCopy textColor];
      CopyWithAlpha = UIKBGetNamedColor(textColor);

      [styleCopy textOpacity];
      if (v32 == 1.0)
      {
        CGColorRetain(CopyWithAlpha);
      }

      else
      {
        [styleCopy textOpacity];
        CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v33);
      }

      v35 = -ceil(v29);
      if (_UISolariumEnabled())
      {
        [(UIKBRenderer *)self centroidOfGlyph:CTFontCreatePathForGlyph(v24, glyphs, 0)];
        [(UIKBRenderer *)self scale];
        UIFloorToScale();
        v37 = v36;
      }

      else
      {
        v37 = floor(v52 + (width - ceil(v25)) * 0.5 + 0.5);
      }

      CGContextSaveGState(self->_ctx);
      ctx = self->_ctx;
      CGAffineTransformMakeScale(&v53, 1.0, -1.0);
      CGContextSetTextMatrix(ctx, &v53);
      [styleCopy textOffset];
      v40 = v39;
      [styleCopy etchOffset];
      v53.a = v37 + v40 + v41;
      [styleCopy textOffset];
      v43 = v42;
      [styleCopy etchOffset];
      v53.b = v35 - (v43 + v44);
      etchColor = [styleCopy etchColor];

      if (etchColor)
      {
        v46 = self->_ctx;
        etchColor2 = [styleCopy etchColor];
        v48 = UIKBGetNamedColor(etchColor2);
        CGContextSetFillColorWithColor(v46, v48);

        CTFontDrawGlyphs(v24, &glyphs, &v53, 1uLL, self->_ctx);
      }

      [styleCopy etchOffset];
      v53.a = v53.a - v49;
      [styleCopy etchOffset];
      v53.b = v53.b + v50;
      CGContextSetFillColorWithColor(self->_ctx, CopyWithAlpha);
      v34 = 1;
      CTFontDrawGlyphs(v24, &glyphs, &v53, 1uLL, self->_ctx);
      CGContextRestoreGState(self->_ctx);
      CGColorRelease(CopyWithAlpha);
    }

    else
    {
LABEL_16:
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (CGPoint)centroidOfGlyph:(CGPath *)glyph
{
  v34 = *MEMORY[0x1E69E9840];
  CopyByFlattening = CGPathCreateCopyByFlattening(glyph, 1.0);
  CopyByNormalizing = CGPathCreateCopyByNormalizing(CopyByFlattening, 0);
  array = [MEMORY[0x1E695DF70] array];
  CGPathApply(CopyByNormalizing, array, centroidCGPathApplierFunction);
  CGPathRelease(CopyByNormalizing);
  CGPathRelease(CopyByFlattening);
  v7 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = array;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if ([v14 count] >= 3 && objc_msgSend(v14, "count"))
        {
          v15 = 0;
          do
          {
            v16 = [v14 objectAtIndexedSubscript:v15];
            [v16 CGPointValue];
            v18 = v17;
            v20 = v19;

            v21 = [v14 objectAtIndexedSubscript:{++v15 % objc_msgSend(v14, "count")}];
            [v21 CGPointValue];
            v23 = v22;
            v25 = v24;

            v26 = (v18 * v25 - v20 * v23) * 0.5;
            v7 = v7 + (v18 + v23) / 3.0 * v26;
            v6 = v6 + (v20 + v25) / 3.0 * v26;
            v12 = v12 + v26;
          }

          while (v15 < [v14 count]);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v27 = v7 / v12;
  v28 = v6 / v12;
  result.y = v28;
  result.x = v27;
  return result;
}

- (id)symbolImageConfigForKey:(id)key traitCollection:(id)collection
{
  keyCopy = key;
  collectionCopy = collection;
  symbolStyle = [keyCopy symbolStyle];
  v8 = MEMORY[0x193AE8160]([symbolStyle fontWeightForSymbolImage]);

  if (!v8)
  {
    symbolStyle2 = [keyCopy symbolStyle];
    v10 = MEMORY[0x193AE8160]([symbolStyle2 fontWeight]);

    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 4;
    }
  }

  symbolStyle3 = [keyCopy symbolStyle];
  [symbolStyle3 fontSizeForSymbolImage];
  v13 = v12;

  if (v13 == 0.0)
  {
    symbolStyle4 = [keyCopy symbolStyle];
    [symbolStyle4 fontSize];
    v13 = v15;
  }

  v16 = MEMORY[0x1E69DCAD8];
  symbolStyle5 = [keyCopy symbolStyle];
  v18 = [v16 configurationWithPointSize:v8 weight:objc_msgSend(symbolStyle5 scale:{"symbolScale"), v13}];

  v19 = [v18 configurationWithTraitCollection:collectionCopy];

  return v19;
}

- (unint64_t)renderKeyImageContents:(id)contents withTraits:(id)traits status:(unint64_t)status
{
  contentsCopy = contents;
  traitsCopy = traits;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  statusCopy = status;
  if (([(UIKBRenderer *)self renderFlags]& 0x34) != 0)
  {
    v10 = MEMORY[0x1E69DD1B8];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke;
    v62[3] = &unk_1E72D2CB0;
    v62[4] = self;
    v11 = traitsCopy;
    v63 = v11;
    v12 = [v10 traitCollectionWithTraits:v62];
    if ((status & 2) == 0)
    {
      secondaryDisplayStringImages = [contentsCopy secondaryDisplayStringImages];
      if ([secondaryDisplayStringImages count])
      {
        secondarySymbolStyles = [v11 secondarySymbolStyles];
        v15 = [secondarySymbolStyles count];

        if (v15)
        {
          secondaryDisplayStringImages2 = [contentsCopy secondaryDisplayStringImages];
          v17 = [secondaryDisplayStringImages2 count];

          secondarySymbolStyles2 = [v11 secondarySymbolStyles];
          v19 = [secondarySymbolStyles2 count];

          if ([v11 renderSecondarySymbolsSeparately])
          {
            if (([(UIKBRenderer *)self renderFlags]& 0x20) != 0)
            {
              v20 = 1;
              goto LABEL_32;
            }

            if (([(UIKBRenderer *)self renderFlags]& 0x10) != 0)
            {
              v20 = 0;
LABEL_32:
              if (v20 >= v17)
              {
                v43 = 0;
                v42 = 0;
              }

              else
              {
                secondaryDisplayStringImages3 = [contentsCopy secondaryDisplayStringImages];
                v42 = [secondaryDisplayStringImages3 objectAtIndex:v20];

                if (v42)
                {
                  v43 = [MEMORY[0x1E69DCAB8] _kitImageNamed:v42 withTrait:v12];
                }

                else
                {
                  v43 = 0;
                }
              }

              if (v20 >= v19 || ([v11 secondarySymbolStyles], v44 = v12, v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "objectAtIndex:", v20), lastObject = objc_claimAutoreleasedReturnValue(), v45, v12 = v44, !lastObject))
              {
                secondarySymbolStyles3 = [v11 secondarySymbolStyles];
                lastObject = [secondarySymbolStyles3 lastObject];
              }

              if (v43)
              {
                geometry = [v11 geometry];
                [geometry symbolFrame];
                -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", v43, lastObject, [contentsCopy force1xImages], objc_msgSend(contentsCopy, "flipImageHorizontally"), 0, v49, v50, v51, v52);

                v65[3] = 3;
              }
            }
          }

          else
          {
            secondaryDisplayStringImages4 = [contentsCopy secondaryDisplayStringImages];
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke_2;
            v55[3] = &unk_1E72D2CD8;
            v55[4] = self;
            v60 = 52;
            v61 = v19;
            v56 = v11;
            v57 = v12;
            v58 = contentsCopy;
            v59 = &v64;
            [secondaryDisplayStringImages4 enumerateObjectsUsingBlock:v55];
          }

LABEL_43:
          v21 = v65[3];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if (status)
    {
      goto LABEL_43;
    }

    displayStringImage = [contentsCopy displayStringImage];
    symbolStyle = [v11 symbolStyle];
    v54 = v12;
    if ([symbolStyle usesSymbolImage])
    {
      v24 = [(UIKBRenderer *)self symbolImageConfigForKey:v11 traitCollection:v12];
      bundlePathOverride = [contentsCopy bundlePathOverride];

      if (bundlePathOverride)
      {
        v26 = MEMORY[0x1E696AAE8];
        bundlePathOverride2 = [contentsCopy bundlePathOverride];
        v28 = [v26 bundleWithPath:bundlePathOverride2];

        v29 = [MEMORY[0x1E69DCAB8] imageNamed:displayStringImage inBundle:v28 withConfiguration:v24];
        displayImage2 = [v29 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }

      else
      {
        v28 = [MEMORY[0x1E69DCAB8] _systemImageNamed:displayStringImage withConfiguration:v24];
        displayImage2 = [v28 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }
    }

    else
    {
      displayImage = [contentsCopy displayImage];

      if (displayImage)
      {
        displayImage2 = [contentsCopy displayImage];
        v32 = 1;
        if (displayImage2)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      displayImage2 = [MEMORY[0x1E69DCAB8] _kitImageNamed:displayStringImage withTrait:v12];
    }

    v32 = 0;
    if (displayImage2)
    {
LABEL_24:
      displayStringImage2 = displayStringImage;
      if (!symbolStyle)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_17:
    fallbackContents = [contentsCopy fallbackContents];
    displayStringImage2 = [fallbackContents displayStringImage];

    if ([symbolStyle usesSymbolImage])
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:displayStringImage2 compatibleWithTraitCollection:v54];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] _kitImageNamed:displayStringImage2 withTrait:v54];
    }
    displayImage2 = ;
    if (!symbolStyle)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (displayImage2)
    {
      geometry2 = [v11 geometry];
      [geometry2 symbolFrame];
      -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", displayImage2, symbolStyle, [contentsCopy force1xImages], objc_msgSend(contentsCopy, "flipImageHorizontally"), v32, v37, v38, v39, v40);

      v65[3] = 3;
      v12 = v54;
      goto LABEL_43;
    }

LABEL_30:
    v21 = v65[3];

    v12 = v54;
LABEL_44:

    goto LABEL_45;
  }

  v21 = v65[3];
LABEL_45:
  _Block_object_dispose(&v64, 8);

  return v21;
}

void __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setUserInterfaceIdiom:{objc_msgSend(v3, "assetIdiom")}];
  [*(a1 + 32) scale];
  [v5 setDisplayScale:?];
  if ([*(a1 + 40) usesDarkAppearance])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v5 setUserInterfaceStyle:v4];
  [v5 setLayoutDirection:0];
}

void __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if ([v15 length] && (*(a1 + 72) & objc_msgSend(*(a1 + 32), "renderFlags")) != 0)
  {
    if (*(a1 + 80) <= a3 || ([*(a1 + 40) secondarySymbolStyles], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndex:", a3), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v7 = [*(a1 + 40) secondarySymbolStyles];
      v6 = [v7 lastObject];
    }

    v8 = [MEMORY[0x1E69DCAB8] _kitImageNamed:v15 withTrait:*(a1 + 48)];
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) geometry];
      [v10 symbolFrame];
      [v9 _drawKeyImage:v8 inRect:v6 withStyle:objc_msgSend(*(a1 + 56) force1xImages:"force1xImages") flipHorizontally:objc_msgSend(*(a1 + 56) isRGBImage:{"flipImageHorizontally"), 0, v11, v12, v13, v14}];

      *(*(*(a1 + 64) + 8) + 24) |= 2uLL;
    }
  }
}

- (void)_drawKeyImage:(id)image inRect:(CGRect)rect withStyle:(id)style force1xImages:(BOOL)images flipHorizontally:(BOOL)horizontally isRGBImage:(BOOL)bImage
{
  bImageCopy = bImage;
  horizontallyCopy = horizontally;
  imagesCopy = images;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  styleCopy = style;
  colorDetectMode = self->_colorDetectMode;
  textColor = [styleCopy textColor];
  v20 = textColor;
  if (!colorDetectMode)
  {
    v21 = UIKBGetNamedColor(textColor);

    v20 = [MEMORY[0x1E69DC888] colorWithCGColor:v21];
    [styleCopy textOpacity];
    if (v22 != 1.0)
    {
      [styleCopy textOpacity];
      v23 = [v20 colorWithAlphaComponent:?];

      v20 = v23;
    }

    if (bImageCopy)
    {
      v24 = imageCopy;
    }

    else
    {
      v24 = [imageCopy _flatImageWithColor:v20];
    }

    v25 = v24;
    [imageCopy scale];
    v27 = v26;
    [v25 size];
    v29 = v28;
    v31 = v30;
    [imageCopy isSymbolImage];
    if (imagesCopy)
    {
      v31 = v27 * v31;
      v29 = v27 * v29;
    }

    if (v29 > width || v31 > height)
    {
      v33 = width / v29;
      if (width / v29 >= height / v31)
      {
        v33 = height / v31;
      }

      v29 = v29 * v33;
      v31 = v31 * v33;
    }

    [styleCopy imageScale];
    if (v34 != 1.0)
    {
      [styleCopy imageScale];
      v29 = v29 * v35;
      [styleCopy imageScale];
      v31 = v31 * v36;
    }

    if (![styleCopy anchorCorner])
    {
      v40 = v27 * (width - v29) * 0.5;
      v41 = x + fabsf(roundf(v40)) / v27;
      [styleCopy textOffset];
      v38 = v41 + v42;
      *&v42 = v27 * (height - v31) * 0.5;
      v39 = fabsf(roundf(*&v42)) / v27 - y;
      goto LABEL_24;
    }

    if ([styleCopy anchorCorner] == 1)
    {
      [styleCopy textOffset];
      v38 = x + v37;
LABEL_22:
      v39 = height - y - v31;
LABEL_24:
      [styleCopy textOffset];
      v44 = v39 - v43;
LABEL_28:
      if (horizontallyCopy)
      {
        v47 = -v38 - v29;
      }

      else
      {
        v47 = v38;
      }

      if (horizontallyCopy)
      {
        v48 = -1.0;
      }

      else
      {
        v48 = 1.0;
      }

      CGContextSaveGState(self->_ctx);
      CGContextTranslateCTM(self->_ctx, 0.0, height);
      CGContextScaleCTM(self->_ctx, v48, -1.0);
      ctx = self->_ctx;
      cGImage = [v25 CGImage];
      v55.origin.x = v47;
      v55.origin.y = v44;
      v55.size.width = v29;
      v55.size.height = v31;
      CGContextDrawImage(ctx, v55, cGImage);
      CGContextRestoreGState(self->_ctx);

      goto LABEL_35;
    }

    if ([styleCopy anchorCorner] == 4)
    {
      [styleCopy textOffset];
      v38 = x + v45;
    }

    else
    {
      if ([styleCopy anchorCorner] == 2)
      {
        [styleCopy textOffset];
        v38 = x + width - v29 - v51;
        goto LABEL_22;
      }

      v44 = 0.0;
      v38 = 0.0;
      if ([styleCopy anchorCorner] != 8)
      {
        goto LABEL_28;
      }

      [styleCopy textOffset];
      v38 = x + width - v29 - v52;
    }

    [styleCopy textOffset];
    v44 = v46 - y;
    goto LABEL_28;
  }

  [(UIKBRenderer *)self detectColorsForNamedColor:textColor];
LABEL_35:
}

- (void)_renderVariantsFromKeyContents:(id)contents withTraits:(id)traits
{
  v31 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  traitsCopy = traits;
  variantDisplayContents = [contentsCopy variantDisplayContents];
  v8 = [variantDisplayContents count];
  variantGeometries = [traitsCopy variantGeometries];
  v10 = [variantGeometries count];

  if (v8 != v10)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v27 = __TUIFaultDebugAssertLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v30 = contentsCopy;
        _os_log_fault_impl(&dword_18FFDC000, v27, OS_LOG_TYPE_FAULT, "keyboard: number of popups didn't match number of geometries: %@", buf, 0xCu);
      }
    }

    else
    {
      CategoryImpl = _renderVariantsFromKeyContents_withTraits____s_category;
      if (!_renderVariantsFromKeyContents_withTraits____s_category)
      {
        CategoryImpl = __TUILogGetCategoryImpl("Assert");
        atomic_store(CategoryImpl, &_renderVariantsFromKeyContents_withTraits____s_category);
      }

      v26 = *(CategoryImpl + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = contentsCopy;
        _os_log_impl(&dword_18FFDC000, v26, OS_LOG_TYPE_ERROR, "keyboard: number of popups didn't match number of geometries: %@", buf, 0xCu);
      }
    }
  }

  variantDisplayContents2 = [contentsCopy variantDisplayContents];
  v12 = [variantDisplayContents2 count];

  variantGeometries2 = [traitsCopy variantGeometries];
  v14 = [variantGeometries2 count];

  if (v12 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      variantDisplayContents3 = [contentsCopy variantDisplayContents];
      v18 = [variantDisplayContents3 objectAtIndex:i];

      null = [MEMORY[0x1E695DFB0] null];

      if (v18 != null)
      {
        highlightedVariantsList = [contentsCopy highlightedVariantsList];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        if ([highlightedVariantsList containsObject:v21])
        {
          [traitsCopy highlightedVariantTraits];
        }

        else
        {
          [traitsCopy variantTraits];
        }
        v22 = ;

        variantGeometries3 = [traitsCopy variantGeometries];
        v24 = [variantGeometries3 objectAtIndex:i];
        [v22 setGeometry:v24];

        [(UIKBRenderer *)self renderKeyContents:v18 withTraits:v22];
      }
    }
  }
}

- (void)renderKeyContents:(id)contents withTraits:(id)traits
{
  v36 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  traitsCopy = traits;
  [(UIKBRenderer *)self ensureContext];
  ctx = self->_ctx;
  if (ctx)
  {
    CGContextSaveGState(ctx);
  }

  [(UIKBRenderer *)self renderBackgroundTraits:traitsCopy allowCaching:1];
  if ([contentsCopy stringKeycapOverImage])
  {
    v9 = [(UIKBRenderer *)self renderKeyStringContents:contentsCopy withTraits:traitsCopy status:0];
    if (v9 != 3 && ![(UIKBRenderer *)self renderKeyImageContents:contentsCopy withTraits:traitsCopy status:v9])
    {
LABEL_9:
      [(UIKBRenderer *)self renderKeyPathContents:contentsCopy withTraits:traitsCopy];
    }
  }

  else
  {
    v10 = [(UIKBRenderer *)self renderKeyImageContents:contentsCopy withTraits:traitsCopy status:0];
    if (v10 != 3 && ![(UIKBRenderer *)self renderKeyStringContents:contentsCopy withTraits:traitsCopy status:v10])
    {
      goto LABEL_9;
    }
  }

  v11 = self->_ctx;
  if (v11)
  {
    CGContextRestoreGState(v11);
  }

  geometry = [traitsCopy geometry];
  if (!geometry || (v13 = geometry, [traitsCopy geometry], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "flickDirection"), v14, v13, v15 == -3))
  {
    variantDisplayContents = [contentsCopy variantDisplayContents];

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:traitsCopy];
    if (!variantDisplayContents)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  variantGeometries = [traitsCopy variantGeometries];
  if (variantGeometries)
  {
    v18 = variantGeometries;
    variantDisplayContents2 = [contentsCopy variantDisplayContents];

    if (variantDisplayContents2)
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:traitsCopy];
LABEL_19:
      [(UIKBRenderer *)self _renderVariantsFromKeyContents:contentsCopy withTraits:traitsCopy];
      goto LABEL_20;
    }
  }

  variantTraits = [traitsCopy variantTraits];
  geometry2 = [variantTraits geometry];

  if (geometry2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    highlightedVariantsList = [contentsCopy highlightedVariantsList];
    v23 = [highlightedVariantsList countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(highlightedVariantsList);
          }

          v27 = *(*(&v31 + 1) + 8 * v26);
          variantDisplayContents3 = [contentsCopy variantDisplayContents];
          v29 = [variantDisplayContents3 objectAtIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];

          variantTraits2 = [traitsCopy variantTraits];
          [(UIKBRenderer *)self renderKeyContents:v29 withTraits:variantTraits2];

          ++v26;
        }

        while (v24 != v26);
        v24 = [highlightedVariantsList countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:traitsCopy];
  }

LABEL_20:
}

- (void)renderBackgroundTraits:(id)traits
{
  traitsCopy = traits;
  [(UIKBRenderer *)self ensureContext];
  [(UIKBRenderer *)self renderBackgroundTraits:traitsCopy allowCaching:0];
}

- (void)_completeCacheImageWithTraitsIfNecessary:(id)necessary
{
  hashString = [necessary hashString];
  if (hashString)
  {
    cachingContextCompletion = self->_cachingContextCompletion;

    if (cachingContextCompletion)
    {
      (*(self->_cachingContextCompletion + 2))();
      v6 = self->_cachingContextCompletion;
      self->_cachingContextCompletion = 0;
    }
  }
}

- (BOOL)loadCachedImageForHashString:(id)string
{
  stringCopy = string;
  v5 = 0;
  if (stringCopy && __UIKBBGCache)
  {
    cacheKey = [(UIKBRenderer *)self cacheKey];

    if (cacheKey)
    {
      v5 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIKBRenderer renderFlags](self, "renderFlags")}];
      stringValue = [v7 stringValue];
      v9 = [stringCopy stringByAppendingString:stringValue];

      v10 = [__UIKBBGCache objectForKey:v9];
      if (v10)
      {
        v11 = [UIKBCachedImage alloc];
        cGImage = [v10 CGImage];
        [(UIKBRenderer *)self scale];
        v13 = [(UIKBCachedImage *)v11 initWithCGImage:cGImage scale:1 orientation:?];
        renderedImage = self->_renderedImage;
        self->_renderedImage = v13;
      }

      v5 = self->_renderedImage != 0;
    }
  }

  return v5;
}

- (void)renderBackgroundTraits:(id)traits allowCaching:(BOOL)caching
{
  cachingCopy = caching;
  v92 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  renderFlags = [(UIKBRenderer *)self renderFlags];
  renderFlags2 = [(UIKBRenderer *)self renderFlags];
  renderFlags3 = [(UIKBRenderer *)self renderFlags];
  backgroundGradient = [traitsCopy backgroundGradient];
  layeredBackgroundGradient = [traitsCopy layeredBackgroundGradient];
  layeredForegroundGradient = [traitsCopy layeredForegroundGradient];
  renderEffects = [traitsCopy renderEffects];
  v12 = (renderFlags2 >> 1) & 1;
  if ([traitsCopy blendForm] != 3)
  {
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 2)
  {
    LODWORD(v12) = 0;
    renderFlags = 1;
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 1)
  {

    foregroundRenderEffects = [traitsCopy foregroundRenderEffects];
    backgroundGradient = layeredForegroundGradient;
  }

  else
  {
    if ([(UIKBRenderer *)self renderFlags]!= 4)
    {
      goto LABEL_9;
    }

    foregroundRenderEffects = 0;
  }

  layeredForegroundGradient = 0;
  renderEffects = foregroundRenderEffects;
LABEL_9:
  if (layeredBackgroundGradient)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v70 = v14;
  v72 = layeredForegroundGradient;
  v15 = (layeredForegroundGradient != 0) & (renderFlags3 >> 2);
  if ([traitsCopy blendForm] == 1)
  {
    v15 &= [traitsCopy controlOpacities] ^ 1;
  }

  if (((renderFlags | v12) & 1) == 0 && !v15)
  {
    goto LABEL_89;
  }

  geometry = [traitsCopy geometry];
  [geometry displayFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *&v88 = v17;
  *(&v88 + 1) = v19;
  *&v89 = v21;
  *(&v89 + 1) = v23;

  renderFlags4 = [(UIKBRenderer *)self renderFlags];
  v69 = layeredBackgroundGradient;
  if (self->_colorDetectMode)
  {
LABEL_17:
    v68 = 0;
    goto LABEL_18;
  }

  v27 = renderFlags4;
  v68 = 0;
  if (![(UIKBRenderer *)self disableInternalCaching])
  {
    v28 = v27 & 3;
    if ((v27 & 3) != 0 && cachingCopy)
    {
      hashString = [traitsCopy hashString];
      if (hashString)
      {
        cachingContext = self->_cachingContext;

        if (!cachingContext)
        {
          if (renderBackgroundTraits_allowCaching__onceToken != -1)
          {
            dispatch_once(&renderBackgroundTraits_allowCaching__onceToken, &__block_literal_global_2534);
          }

          hashString2 = [traitsCopy hashString];
          v32 = [hashString2 stringByAppendingFormat:@"%d", v28];

          v33 = [__UIKBBGCache objectForKey:v32];
          if (v33)
          {
            v34 = v33;
            BlendMode = CGContextGetBlendMode();
            CGContextSetBlendMode(self->_ctx, kCGBlendModeCopy);
            ctx = self->_ctx;
            cGImage = [v34 CGImage];
            v93.origin.x = v18;
            v93.origin.y = v20;
            v93.size.width = v22;
            v93.size.height = v24;
            CGContextDrawImage(ctx, v93, cGImage);
            CGContextSetBlendMode(self->_ctx, BlendMode);
            [v34 CGImage];
            v38 = CGImageGetProperty();
            integerValue = [v38 integerValue];
            if (integerValue < self->_contentColorFormat)
            {
              self->_contentColorFormat = integerValue;
            }

            layeredBackgroundGradient = v69;
            if ([v34 hasFormatColor])
            {
              formatColor = [v34 formatColor];
              -[UIKBRenderer _addDetectedColor:](self, "_addDetectedColor:", [formatColor CGColor]);
            }

            goto LABEL_88;
          }

          v68 = v32;
          v61 = objc_opt_class();
          [(UIKBRenderer *)self scale];
          v63 = [v61 imageContextWithSize:self->_forceColorFormat scale:0 colorFormat:0 opaque:v22 invert:v24, v62];
          self->_cachingContext = v63;
          CGAffineTransformMakeTranslation(&location, -v18, -v20);
          CGContextConcatCTM(v63, &location);
          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  if (renderFlags)
  {
    v26 = ([traitsCopy blurBlending] & 1) != 0 || objc_msgSend(traitsCopy, "blendForm") == 3;
  }

  else
  {
    v26 = 0;
  }

  layeredBackgroundGradient = v69;
  v41 = v12 && ([traitsCopy blurBlending] & 1) == 0 && objc_msgSend(traitsCopy, "blendForm") != 3;
  if ([traitsCopy renderFlagsForAboveEffects])
  {
    renderFlagsForAboveEffects = [traitsCopy renderFlagsForAboveEffects];
    v65 = ([(UIKBRenderer *)self renderFlags]& renderFlagsForAboveEffects) != 0;
    v66 = (renderFlagsForAboveEffects >> 1) & 1;
    v67 = renderFlagsForAboveEffects;
  }

  else
  {
    LODWORD(v66) = v41;
    v67 = v26;
    v65 = 0;
  }

  v43 = renderFlags | v70 | v15;
  if (!v12)
  {
    goto LABEL_62;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v44 = renderEffects;
  v45 = [v44 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (!v45)
  {

    v43 = renderFlags | v70 | v15;
    goto LABEL_62;
  }

  v46 = v45;
  v64 = backgroundGradient;
  v47 = 0;
  v48 = *v84;
  do
  {
    v49 = 0;
    do
    {
      if (*v84 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v83 + 1) + 8 * v49);
      if ([v50 renderUnder])
      {
        if (v47)
        {
          goto LABEL_53;
        }

        if ([(UIKBRenderer *)self context])
        {
          CGContextSaveGState([(UIKBRenderer *)self context]);
          context = [(UIKBRenderer *)self context];
          v94.origin.x = v18;
          v94.origin.y = v20;
          v94.size.width = v22;
          v94.size.height = v24;
          CGContextAddRect(context, v94);
          [(UIKBRenderer *)self addPathForTraits:traitsCopy displayRect:0];
          CGContextEOClip([(UIKBRenderer *)self context]);
LABEL_53:
          v47 = 1;
        }

        else
        {
          v47 = 0;
        }

        [v50 renderEffectWithRenderer:self traits:traitsCopy];
      }

      ++v49;
    }

    while (v46 != v49);
    v52 = [v44 countByEnumeratingWithState:&v83 objects:v91 count:16];
    v46 = v52;
  }

  while (v52);

  backgroundGradient = v64;
  layeredBackgroundGradient = v69;
  v43 = renderFlags | v70 | v15;
  if (v47)
  {
    CGContextRestoreGState([(UIKBRenderer *)self context]);
  }

LABEL_62:
  v32 = v68;
  if (v43)
  {
    if ([(UIKBRenderer *)self context])
    {
      CGContextSaveGState([(UIKBRenderer *)self context]);
      [(UIKBRenderer *)self addPathForTraits:traitsCopy displayRect:&v88];
      if (!CGContextIsPathEmpty([(UIKBRenderer *)self context]))
      {
        CGContextClip([(UIKBRenderer *)self context]);
      }
    }

    if (!v70)
    {
      if ((renderFlags & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_91:
      [(UIKBRenderer *)self _drawLinearGradient:backgroundGradient inRect:v88, v89];
      if (!v15)
      {
        goto LABEL_70;
      }

LABEL_69:
      [(UIKBRenderer *)self _drawLinearGradient:v72 inRect:v88, v89];
      goto LABEL_70;
    }

    [(UIKBRenderer *)self _drawLinearGradient:layeredBackgroundGradient inRect:v88, v89];
    if (renderFlags)
    {
      goto LABEL_91;
    }

LABEL_68:
    if (v15)
    {
      goto LABEL_69;
    }

LABEL_70:
    if ([(UIKBRenderer *)self context])
    {
      CGContextRestoreGState([(UIKBRenderer *)self context]);
    }
  }

  if ((v66 | v67 | v65))
  {
    v82 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v53 = renderEffects;
    v54 = [v53 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v80;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v80 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v79 + 1) + 8 * i);
          if (([v58 renderUnder] & 1) == 0)
          {
            [v58 renderEffectWithRenderer:self traits:traitsCopy];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v55);
    }

    layeredBackgroundGradient = v69;
  }

  if (v68 && !self->_cachingContextCompletion)
  {
    objc_initWeak(&location, self);
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke_2;
    v74[3] = &unk_1E72D2C88;
    objc_copyWeak(&v76, &location);
    v74[4] = self;
    v32 = v68;
    v75 = v32;
    v77 = v88;
    v78 = v89;
    v59 = [v74 copy];
    cachingContextCompletion = self->_cachingContextCompletion;
    self->_cachingContextCompletion = v59;

    if ((renderFlags3 & 4) != 0)
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:traitsCopy];
    }

    objc_destroyWeak(&v76);
    objc_destroyWeak(&location);
  }

LABEL_88:

LABEL_89:
}

void __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    Image = CGBitmapContextCreateImage(WeakRetained[1]);
    CGContextRelease(v7[1]);
    v7[1] = 0;
    if (Image)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:v7[11]];
      CGImageSetProperty();
      v4 = [[UIKBCachedImage alloc] initWithCGImage:Image];
      if ([*(a1 + 32) contentColorFormat] == 2)
      {
        v5 = [(CGContextRef *)v7 singleColor];
        [(UIKBCachedImage *)v4 setFormatColor:v5];
      }

      [__UIKBBGCache setObject:v4 forKey:*(a1 + 40)];
      BlendMode = CGContextGetBlendMode();
      CGContextSetBlendMode(v7[6], kCGBlendModeCopy);
      CGContextDrawImage(v7[6], *(a1 + 56), Image);
      CGContextSetBlendMode(v7[6], BlendMode);
    }

    CGImageRelease(Image);
    WeakRetained = v7;
  }
}

uint64_t __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = __UIKBBGCache;
  __UIKBBGCache = v0;

  v2 = __UIKBBGCache;

  return [v2 setCountLimit:50];
}

- (void)_drawLinearGradient:(id)gradient inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  gradientCopy = gradient;
  if (gradientCopy)
  {
    v16 = gradientCopy;
    horizontal = [gradientCopy horizontal];
    v11 = y + height;
    if (horizontal)
    {
      v12 = x + width;
    }

    else
    {
      v12 = x;
    }

    if (horizontal)
    {
      v13 = y;
    }

    else
    {
      v13 = v11;
    }

    cGGradient = [v16 CGGradient];
    if (self->_colorDetectMode)
    {
      [(UIKBRenderer *)self detectColorsForGradient:v16];
    }

    else if ([(UIKBRenderer *)self context])
    {
      context = [(UIKBRenderer *)self context];
      v18.x = x;
      v18.y = y;
      v19.x = v12;
      v19.y = v13;
      CGContextDrawLinearGradient(context, cGGradient, v18, v19, 0);
    }

    CGGradientRelease(cGGradient);
    gradientCopy = v16;
  }
}

- (void)renderDivotEffect:(id)effect withTraits:(id)traits
{
  v5 = MEMORY[0x1E69DCAB8];
  traitsCopy = traits;
  v26 = [v5 _kitImageNamed:@"spacekey_grabber_handles.png" withTrait:0];
  geometry = [traitsCopy geometry];

  [geometry frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v26 size];
  v17 = v16;
  v19 = v18;
  v20 = v11 + (v15 - v18) * 0.5 + -1.0;
  context = [(UIKBRenderer *)self context];
  v22 = v26;
  cGImage = [v26 CGImage];
  v28.origin.x = v9 + 8.0;
  v28.origin.y = v20;
  v28.size.width = v17;
  v28.size.height = v19;
  CGContextDrawImage(context, v28, cGImage);
  v24 = v26;
  cGImage2 = [v26 CGImage];
  v29.origin.x = v9 + v13 - v17 + -8.0;
  v29.origin.y = v20;
  v29.size.width = v17;
  v29.size.height = v19;
  CGContextDrawImage(context, v29, cGImage2);
}

- (void)renderShadowEffect:(id)effect withTraits:(id)traits
{
  effectCopy = effect;
  traitsCopy = traits;
  geometry = [traitsCopy geometry];
  if ([effectCopy isValid])
  {
    [geometry displayFrame];
    if (!CGRectIsEmpty(v57))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:effectCopy];
        goto LABEL_32;
      }

      context = [(UIKBRenderer *)self context];
      CGContextSaveGState(context);
      cGColor = [effectCopy CGColor];
      [effectCopy offset];
      v11 = v10;
      v13 = v12;
      [effectCopy weight];
      v15 = v14;
      v56.width = v11;
      v56.height = v13;
      CGContextSetShadowWithColor(context, v56, v15, cGColor);
      CGColorRelease(cGColor);
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      CGContextSetFillColorWithColor(context, [whiteColor CGColor]);

      v17 = traitsCopy;
      [effectCopy insets];
      v19.f64[1] = v18;
      v21.f64[1] = v20;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *MEMORY[0x1E69DDCE0]), vceqq_f64(v21, *(MEMORY[0x1E69DDCE0] + 16))))))
      {
        goto LABEL_31;
      }

      v22 = [geometry copy];
      variantGeometries = [v17 variantGeometries];
      if (!variantGeometries || [geometry popupBias])
      {
        [effectCopy insets];
        [v22 applyShadowInsets:?];
        array = variantGeometries;
LABEL_30:
        v51 = [MEMORY[0x1E69DCB58] traitsWithGeometry:v22];

        [v51 setVariantGeometries:array];
        v17 = v51;
LABEL_31:
        [(UIKBRenderer *)self addPathForTraits:v17 displayRect:0];
        CGContextFillPath(context);
        CGContextRestoreGState(context);

        goto LABEL_32;
      }

      v52 = v17;
      v53 = v22;
      array = [MEMORY[0x1E695DF70] array];
      if (![variantGeometries count])
      {
LABEL_29:

        v17 = v52;
        v22 = v53;
        goto LABEL_30;
      }

      v25 = 0;
      v26 = 0x1E695D000uLL;
      while (1)
      {
        v27 = [variantGeometries objectAtIndex:v25];
        null = [*(v26 + 4016) null];

        if (v27 != null)
        {
          break;
        }

        null2 = [*(v26 + 4016) null];
LABEL_28:
        [array addObject:null2];

        ++v25;
        v26 = 0x1E695D000;
        if (v25 >= [variantGeometries count])
        {
          goto LABEL_29;
        }
      }

      if (!v25)
      {
        null2 = [v27 copy];
        [effectCopy concaveInsets];
        v43 = null2;
LABEL_27:
        [v43 applyInsets:{v39, v40, v41, v42}];
        goto LABEL_28;
      }

      [effectCopy insets];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if (v25 > 2)
      {
        if (v25 != 3)
        {
          if (v25 == 4)
          {
            [effectCopy concaveInsets];
            v36 = -v44;
            goto LABEL_22;
          }

LABEL_26:
          v43 = [v27 copy];
          null2 = v43;
          v39 = v30;
          v40 = v32;
          v41 = v34;
          v42 = v36;
          goto LABEL_27;
        }

        [effectCopy concaveInsets];
        v30 = -v48;
      }

      else
      {
        if (v25 != 1)
        {
          if (v25 == 2)
          {
            [effectCopy concaveInsets];
            v32 = -v37;
LABEL_22:
            [effectCopy concaveInsets];
            v30 = v45;
            [effectCopy concaveInsets];
            v34 = v46;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        [effectCopy concaveInsets];
        v34 = -v47;
      }

      [effectCopy concaveInsets];
      v32 = v49;
      [effectCopy concaveInsets];
      v36 = v50;
      goto LABEL_26;
    }
  }

LABEL_32:
}

- (void)renderEdgeEffect:(id)effect withTraits:(id)traits
{
  effectCopy = effect;
  traitsCopy = traits;
  geometry = [traitsCopy geometry];
  [geometry paddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([effectCopy isValid])
  {
    v113.origin.x = v9;
    v113.origin.y = v11;
    v113.size.width = v13;
    v113.size.height = v15;
    if (!CGRectIsEmpty(v113))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:effectCopy];
        goto LABEL_42;
      }

      context = [(UIKBRenderer *)self context];
      roundRectCorners = [geometry roundRectCorners];
      [geometry roundRectRadius];
      v110 = v18;
      [effectCopy insets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [geometry displayFrame];
      UIRectInset();
      v109.origin.x = v27;
      v109.origin.y = v28;
      v109.size.width = v29;
      v109.size.height = v30;
      if ([effectCopy edges] == 15)
      {
        if ((roundRectCorners + 1) < 2)
        {
          CGContextSaveGState(context);
          cGColor = [effectCopy CGColor];
          CGContextSetStrokeColorWithColor(context, cGColor);
          variantGeometries = [traitsCopy variantGeometries];
          if (variantGeometries)
          {
            v33 = variantGeometries;
            if ([geometry detachedVariants])
            {

LABEL_33:
              if ([geometry flickDirection] != -3)
              {
                UIRectInset();
                v98 = v97;
                v100 = v99;
                v102 = v101;
                v104 = v103;
                context2 = [(UIKBRenderer *)self context];
                v116.origin.x = v98;
                v116.origin.y = v100;
                v116.size.width = v102;
                v116.size.height = v104;
                CGContextAddRect(context2, v116);
              }

              [(UIKBRenderer *)self addPathForTraits:traitsCopy displayRect:0];
              [effectCopy weight];
              CGContextSetLineWidth(context, v106);
              CGContextStrokePath(context);
              goto LABEL_39;
            }

            flickDirection = [geometry flickDirection];

            if (flickDirection != -3)
            {
              goto LABEL_33;
            }
          }

          if ([geometry flickDirection] == -3)
          {
            if (v110 == 0.0 && !roundRectCorners)
            {
              [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v11 + v20, v13 - (v22 + v26), v15 - (v20 + v24), 0.0];
              [effectCopy edges];
              [effectCopy weight];
              UIRectInsetEdges();
              [UIKBRenderer addRoundRect:"addRoundRect:radius:corners:" radius:0 corners:?];
              CGContextEOClip(context);
              CGContextSetFillColorWithColor(context, cGColor);
              CGContextFillRect(context, v109);
LABEL_39:
              v95 = cGColor;
              goto LABEL_40;
            }

            v107 = [geometry copy];
            [v107 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForRenderGeometry:v107];
          }

          else
          {
            v107 = [geometry copy];
            [v107 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForFlickGeometry:v107];
          }

          [effectCopy weight];
          CGContextSetLineWidth(context, v108);
          CGContextStrokePath(context);

          goto LABEL_39;
        }

        v34 = 0;
        v35 = v110 == 0.0;
      }

      else
      {
        v34 = roundRectCorners == 0;
        v35 = v110 == 0.0;
        if (v110 == 0.0 && !roundRectCorners)
        {
          CGContextSaveGState(context);
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 corners:v11, v13, v15, 0.0];
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v11 + v20, v13 - (v22 + v26), v15 - (v20 + v24), 0.0];
          CGContextEOClip(context);
          gradient = [effectCopy gradient];

          if (gradient)
          {
            gradient2 = [effectCopy gradient];
            [geometry displayFrame];
            selfCopy2 = self;
            v43 = gradient2;
LABEL_26:
            [(UIKBRenderer *)selfCopy2 _drawLinearGradient:v43 inRect:x, y, width, height];

LABEL_41:
            CGContextRestoreGState(context);
            goto LABEL_42;
          }

LABEL_27:
          cGColor2 = [effectCopy CGColor];
          CGContextSetFillColorWithColor(context, cGColor2);
          CGContextFillRect(context, v109);
          v95 = cGColor2;
LABEL_40:
          CGColorRelease(v95);
          goto LABEL_41;
        }
      }

      CGContextSaveGState(context);
      [effectCopy insets];
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      if (v35 || v34)
      {
        v81 = v9 + v45;
        v82 = v11 + v44;
        v83 = v13 - (v45 + v47);
        v84 = v15 - (v44 + v46);
        [effectCopy edges];
        [effectCopy weight];
        UIRectInsetEdges();
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v114.origin.x = v81;
        v114.origin.y = v82;
        v114.size.width = v83;
        v114.size.height = v84;
        CGContextAddRect(context, v114);
        v115.origin.x = v86;
        v115.origin.y = v88;
        v115.size.width = v90;
        v115.size.height = v92;
        CGContextAddRect(context, v115);
      }

      else
      {
        v52 = 0.0;
        if ([geometry popupBias])
        {
          v53 = 0.0;
        }

        else
        {
          v53 = v48;
        }

        v54 = [geometry copy];
        [v54 paddedFrame];
        v57 = v49 + v51;
        [v54 setPaddedFrame:{v49 + v55, v53 + v56, v58 - v57, v59 - (v50 + v53)}];
        [v54 displayFrame];
        [v54 setDisplayFrame:{v49 + v60, v48 + v61, v62 - v57, v63 - (v48 + v50)}];
        [(UIKBRenderer *)self addPathForRenderGeometry:v54];
        [effectCopy edges];
        [effectCopy weight];
        UIEdgeInsetsMakeWithEdges();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        if (![geometry popupBias])
        {
          v52 = v65;
        }

        [v54 paddedFrame];
        v74 = v67 + v71;
        [v54 setPaddedFrame:{v67 + v72, v52 + v73, v75 - v74, v76 - (v69 + v52)}];
        [v54 displayFrame];
        [v54 setDisplayFrame:{v67 + v77, v65 + v78, v79 - v74, v80 - (v65 + v69)}];
        [(UIKBRenderer *)self addPathForRenderGeometry:v54];
      }

      CGContextEOClip(context);
      gradient3 = [effectCopy gradient];

      if (gradient3)
      {
        gradient2 = [effectCopy gradient];
        selfCopy2 = self;
        v43 = gradient2;
        x = v109.origin.x;
        y = v109.origin.y;
        width = v109.size.width;
        height = v109.size.height;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

LABEL_42:
}

- (NSData)contextData
{
  ctx = self->_ctx;
  if (ctx)
  {
    BytesPerRow = CGBitmapContextGetBytesPerRow(ctx);
    v5 = CGBitmapContextGetHeight(self->_ctx) * BytesPerRow;
    ctx = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:CGBitmapContextGetData(self->_ctx) length:v5 freeWhenDone:0];
  }

  return ctx;
}

- (UIImage)renderedImage
{
  renderedImage = self->_renderedImage;
  if (!renderedImage)
  {
    ctx = self->_ctx;
    if (ctx)
    {
      Image = CGBitmapContextCreateImage(ctx);
      v6 = [UIKBCachedImage alloc];
      [(UIKBRenderer *)self scale];
      v7 = [(UIKBCachedImage *)v6 initWithCGImage:Image scale:0 orientation:?];
      singleColor = [(UIKBRenderer *)self singleColor];
      [(UIImage *)v7 setFormatColor:singleColor];

      v9 = self->_renderedImage;
      self->_renderedImage = v7;

      CGImageRelease(Image);
      renderedImage = self->_renderedImage;
    }

    else
    {
      renderedImage = 0;
    }
  }

  v10 = renderedImage;

  return v10;
}

- (CGContext)context
{
  [(UIKBRenderer *)self ensureContext];
  result = self->_cachingContext;
  if (!result)
  {
    return self->_ctx;
  }

  return result;
}

- (void)ensureContext
{
  if (!self->_cachingContext && !self->_ctx && !self->_colorDetectMode)
  {
    [(UIKBRenderer *)self size];
    v4 = v3;
    v6 = v5;
    [(UIKBRenderer *)self scale];
    self->_ctx = [UIKBRenderer imageContextWithSize:self->_forceColorFormat scale:[(UIKBRenderer *)self opaque] colorFormat:1 opaque:v4 invert:v6, v7];
  }
}

- (void)detectColorsForEffect:(id)effect
{
  effectCopy = effect;
  v5 = effectCopy;
  if (effectCopy)
  {
    v8 = effectCopy;
    gradient = [effectCopy gradient];
    [(UIKBRenderer *)self detectColorsForGradient:gradient];

    cGColor = [v8 CGColor];
    [(UIKBRenderer *)self _addDetectedColor:cGColor];
    CGColorRelease(cGColor);
    v5 = v8;
    if (self->_contentColorFormat == 1)
    {
      effectCopy = [v8 usesRGBColors];
      v5 = v8;
      if (effectCopy)
      {
        self->_contentColorFormat = 0;
      }
    }
  }

  MEMORY[0x1EEE66BB8](effectCopy, v5);
}

- (void)detectColorsForGradient:(id)gradient
{
  gradientCopy = gradient;
  if (gradientCopy)
  {
    v7 = gradientCopy;
    flatColorName = [gradientCopy flatColorName];
    [(UIKBRenderer *)self detectColorsForNamedColor:flatColorName];
    if (self->_contentColorFormat == 1 && [v7 usesRGBColors])
    {
      self->_contentColorFormat = 0;
    }

    if (!flatColorName)
    {
      self->_colorCount = 2;
      singleColor = self->_singleColor;
      self->_singleColor = 0;
    }

    gradientCopy = v7;
  }
}

- (void)detectColorsForNamedColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (colorCopy)
  {
    v7 = colorCopy;
    v6 = UIKBGetNamedColor(colorCopy);
    colorCopy = [(UIKBRenderer *)self _addDetectedColor:v6];
    v5 = v7;
    if (self->_contentColorFormat == 1)
    {
      colorCopy = UIKBColorUsesRGB(v6);
      v5 = v7;
      if (colorCopy)
      {
        self->_contentColorFormat = 0;
      }
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v5);
}

- (void)_addDetectedColor:(CGColor *)color
{
  if (!color || self->_colorCount > 1)
  {
    return;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(color, 1.0);
  UISCreateCachedColorTransform();
  v5 = CGColorTransformConvertColor();
  CGColorTransformRelease();
  v9 = [MEMORY[0x1E69DC888] colorWithCGColor:v5];
  CGColorRelease(CopyWithAlpha);
  CGColorRelease(v5);
  colorCount = self->_colorCount;
  if (colorCount == 1)
  {
    if (([(UIColor *)self->_singleColor isEqual:v9]& 1) == 0)
    {
      ++self->_colorCount;
      singleColor = self->_singleColor;
      self->_singleColor = 0;
      goto LABEL_9;
    }
  }

  else if (!colorCount)
  {
    self->_colorCount = 1;
    v7 = v9;
    singleColor = self->_singleColor;
    self->_singleColor = v7;
LABEL_9:
  }
}

- (int64_t)contentColorFormat
{
  singleColor = [(UIKBRenderer *)self singleColor];

  if (singleColor)
  {
    return 2;
  }

  else
  {
    return self->_contentColorFormat;
  }
}

- (UIColor)singleColor
{
  if (self->_colorCount == 1)
  {
    return self->_singleColor;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIKBRenderer;
  v3 = [(UIKBRenderer *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" renderFlags = %d, forceColors = %d", -[UIKBRenderer renderFlags](self, "renderFlags"), self->_forceColorFormat];;

  return v4;
}

- (void)dealloc
{
  cachingContext = self->_cachingContext;
  if (cachingContext)
  {
    CGContextRelease(cachingContext);
  }

  ctx = self->_ctx;
  if (ctx)
  {
    CGContextRelease(ctx);
  }

  v5.receiver = self;
  v5.super_class = UIKBRenderer;
  [(UIKBRenderer *)&v5 dealloc];
}

- (UIKBRenderer)initWithContext:(CGContext *)context withSize:(CGSize)size withScale:(double)scale opaque:(BOOL)opaque renderFlags:(int64_t)flags assetIdiom:(int64_t)idiom
{
  height = size.height;
  width = size.width;
  v19.receiver = self;
  v19.super_class = UIKBRenderer;
  v15 = [(UIKBRenderer *)&v19 init];
  if (v15)
  {
    v15->_ctx = CGContextRetain(context);
    v15->_size.width = width;
    v15->_size.height = height;
    v15->_scale = scale;
    v15->_opaque = opaque;
    v15->_renderFlags = flags;
    v15->_forceColorFormat = 0;
    v15->_colorCount = 0;
    v16 = MEMORY[0x1E695F050];
    v15->_contentColorFormat = 1;
    v15->_assetIdiom = idiom;
    v17 = v16[1];
    v15->__layerPaddedFrame.origin = *v16;
    v15->__layerPaddedFrame.size = v17;
    v15->__layerRoundRectRadius = 0.0;
  }

  return v15;
}

+ (void)clearInternalCaches
{
  v2 = __UIKBBGCache;
  __UIKBBGCache = 0;
}

+ (CGContext)imageContextWithSize:(CGSize)size scale:(double)scale colorFormat:(int64_t)format opaque:(BOOL)opaque invert:(BOOL)invert
{
  LODWORD(v8) = vcvtpd_s64_f64(size.width * scale);
  LODWORD(v7) = vcvtpd_s64_f64(size.height * scale);
  if (v8 < 1 || v7 < 1)
  {
    return 0;
  }

  invertCopy = invert;
  if (format == 2)
  {
    DeviceGray = 0;
    v15 = 7;
  }

  else
  {
    opaqueCopy = opaque;
    if (format == 1)
    {
      DeviceGray = UIKBColorSpaceDeviceGray_colorspace;
      if (!UIKBColorSpaceDeviceGray_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
        UIKBColorSpaceDeviceGray_colorspace = DeviceGray;
      }

      v15 = !opaqueCopy;
    }

    else
    {
      DeviceGray = UIKBColorSpaceDeviceRGB_colorspace;
      if (!UIKBColorSpaceDeviceRGB_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
        UIKBColorSpaceDeviceRGB_colorspace = DeviceGray;
      }

      if (opaqueCopy)
      {
        v15 = 8198;
      }

      else
      {
        v15 = 8194;
      }
    }
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v17 = CGBitmapContextCreate(0, v8, v7, 8uLL, AlignedBytesPerRow, DeviceGray, v15);
  v10 = v17;
  if (v17)
  {
    if (invertCopy)
    {
      CGContextTranslateCTM(v17, 0.0, v7);
      CGContextScaleCTM(v10, scale, -scale);
      CGContextGetCTM(&v19, v10);
      CGContextSetBaseCTM();
    }

    else
    {
      CGContextScaleCTM(v17, scale, scale);
    }
  }

  return v10;
}

+ (id)rendererWithContext:(CGContext *)context withSize:(CGSize)size withScale:(double)scale opaque:(BOOL)opaque renderFlags:(int64_t)flags assetIdiom:(int64_t)idiom
{
  v8 = [[self alloc] initWithContext:context withSize:opaque withScale:flags opaque:idiom renderFlags:size.width assetIdiom:{size.height, scale}];

  return v8;
}

@end