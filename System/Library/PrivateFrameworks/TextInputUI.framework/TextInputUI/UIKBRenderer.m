@interface UIKBRenderer
+ (CGContext)imageContextWithSize:(CGSize)a3 scale:(double)a4 colorFormat:(int64_t)a5 opaque:(BOOL)a6 invert:(BOOL)a7;
+ (id)rendererWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8;
+ (void)clearInternalCaches;
- (BOOL)_drawKeyString:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5;
- (BOOL)_drawSingleSymbol:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5;
- (BOOL)loadCachedImageForHashString:(id)a3;
- (BOOL)renderKeyPathContents:(id)a3 withTraits:(id)a4;
- (CGContext)context;
- (CGPath)_deleteGlyphPaths;
- (CGPath)_thickShiftGlyphPath;
- (CGPath)_thinShiftGlyphPath;
- (CGPoint)centroidOfGlyph:(CGPath *)a3;
- (CGRect)_layerPaddedFrame;
- (CGSize)size;
- (NSData)contextData;
- (UIColor)singleColor;
- (UIImage)renderedImage;
- (UIKBRenderer)initWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8;
- (id)defaultPathForRenderGeometry:(id)a3;
- (id)description;
- (id)pathForConcaveCornerWithGeometry:(id)a3;
- (id)pathForFlickGeometry:(id)a3;
- (id)pathForFlickPopupGeometries:(id)a3;
- (id)pathForFlickWidth:(double)a3 height:(double)a4 handleLength:(double)a5 keyMiddle:(CGPoint)a6 angle:(double)a7 radius:(double)a8;
- (id)pathForRenderGeometry:(id)a3;
- (id)pathForSplitGeometry:(id)a3;
- (id)symbolImageConfigForKey:(id)a3 traitCollection:(id)a4;
- (id)watchPathForRenderGeometry:(id)a3;
- (int64_t)contentColorFormat;
- (unint64_t)renderKeyImageContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5;
- (unint64_t)renderKeyStringContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5;
- (void)_addDetectedColor:(CGColor *)a3;
- (void)_completeCacheImageWithTraitsIfNecessary:(id)a3;
- (void)_drawKeyImage:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5 force1xImages:(BOOL)a6 flipHorizontally:(BOOL)a7 isRGBImage:(BOOL)a8;
- (void)_drawLinearGradient:(id)a3 inRect:(CGRect)a4;
- (void)_renderVariantsFromKeyContents:(id)a3 withTraits:(id)a4;
- (void)addPathForFlickGeometry:(id)a3;
- (void)addPathForFlickPopupGeometries:(id)a3;
- (void)addPathForRenderGeometry:(id)a3;
- (void)addPathForSplitGeometry:(id)a3;
- (void)addPathForTraits:(id)a3 displayRect:(CGRect *)a4;
- (void)addRoundRect:(CGRect)a3 radius:(double)a4 corners:(unint64_t)a5;
- (void)dealloc;
- (void)detectColorsForEffect:(id)a3;
- (void)detectColorsForGradient:(id)a3;
- (void)detectColorsForNamedColor:(id)a3;
- (void)drawPath:(CGPath *)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6 fill:(BOOL)a7;
- (void)drawShiftPath:(BOOL)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6;
- (void)ensureContext;
- (void)renderBackgroundTraits:(id)a3;
- (void)renderBackgroundTraits:(id)a3 allowCaching:(BOOL)a4;
- (void)renderDivotEffect:(id)a3 withTraits:(id)a4;
- (void)renderEdgeEffect:(id)a3 withTraits:(id)a4;
- (void)renderKeyContents:(id)a3 withTraits:(id)a4;
- (void)renderShadowEffect:(id)a3 withTraits:(id)a4;
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

- (id)pathForSplitGeometry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 splitLeftRect], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "splitRightRect"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v5 splitLeftRect];
    [v9 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v5 splitRightRect];
    [v18 CGRectValue];
    v34 = v20;
    v35 = v19;
    v22 = v21;

    [(UIKBRenderer *)self size];
    v24 = v23 - v22;
    LOBYTE(v18) = [v5 roundRectCorners];
    v25 = [v5 roundRectCorners];
    [v5 roundRectRadius];
    v27 = v26;
    [v5 roundRectRadius];
    v29 = v28;
    v30 = [MEMORY[0x1E69DC728] bezierPath];
    v31 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v18 & 0xA byRoundingCorners:v11 cornerRadii:{v13, v15, v17, v27, v29}];
    [v30 appendPath:v31];

    v32 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v25 & 5 byRoundingCorners:v24 cornerRadii:{v35, v22, v34, v27, v29}];
    [v30 appendPath:v32];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)pathForFlickPopupGeometries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count] >= 2)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:4];
    v8 = [MEMORY[0x1E695DFB0] null];
    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v4 objectAtIndex:2];
    v12 = [MEMORY[0x1E695DFB0] null];
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v4 objectAtIndex:1];
    v16 = [MEMORY[0x1E695DFB0] null];
    if (v15 == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v4 objectAtIndex:3];
    v20 = [MEMORY[0x1E695DFB0] null];
    if (v19 == v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21;

    v5 = [MEMORY[0x1E69DC728] bezierPath];
    [v6 paddedFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v23 + v29;
    [v5 moveToPoint:?];
    if (v18)
    {
      [v18 paddedFrame];
      v32 = v31;
      v35 = v33 + v34;
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:? clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v35 clockwise:{v32, 8.0, 8.0}];
    }

    v36 = v26 + v28;
    [v5 addLineToPoint:{v30, v26}];
    if (v14)
    {
      [v14 paddedFrame];
      v39 = v37 + v38;
      v42 = v40 + v41;
      [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 + v38 clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v39 clockwise:{v42, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v30, v36}];
    if (v22)
    {
      [v22 paddedFrame];
      v44 = v43;
      v48 = v46 + v47;
      [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v43 + v45 clockwise:{v46 + v47, 8.0, 8.0}];
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v44 clockwise:{v48, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v24, v36}];
    if (v10)
    {
      [v10 paddedFrame];
      v50 = v49;
      v52 = v51;
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:? clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v50 clockwise:{v52, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v24, v26}];
    [v5 closePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pathForFlickGeometry:(id)a3
{
  v4 = a3;
  [v4 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 popupSource];
  v14 = v13;
  v16 = v15;
  if (![v4 flickDirection])
  {
    v17 = v16 - (v8 + v12);
    v18 = 0.0;
LABEL_8:
    v19 = 8.0;
    v20 = self;
    v21 = v10;
    v22 = v12;
    goto LABEL_9;
  }

  if ([v4 flickDirection] == 1)
  {
    v17 = v6 - v14;
    v18 = 1.57079633;
LABEL_4:
    v19 = 8.0;
    v20 = self;
    v21 = v12;
    v22 = v10;
LABEL_9:
    v23 = [(UIKBRenderer *)v20 pathForFlickWidth:v21 height:v22 handleLength:v17 keyMiddle:v14 angle:v16 radius:v18, v19];
    goto LABEL_10;
  }

  if ([v4 flickDirection] == 2)
  {
    v17 = v8 - v16;
    v18 = 3.14159265;
    goto LABEL_8;
  }

  if ([v4 flickDirection] == 3)
  {
    v17 = v14 - (v6 + v10);
    v18 = -1.57079633;
    goto LABEL_4;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (id)pathForFlickWidth:(double)a3 height:(double)a4 handleLength:(double)a5 keyMiddle:(CGPoint)a6 angle:(double)a7 radius:(double)a8
{
  v11 = [MEMORY[0x1E69DC728] bezierPath];
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
      v22 = -a4 - v18;
      [v11 moveToPoint:{v21.__sinval * a8, -(a8 - a8 * v21.__cosval)}];
      [v11 addArcWithCenter:1 radius:0.0 startAngle:-a8 endAngle:a8 clockwise:?];
      [v11 addLineToPoint:{v13 * -0.5 + v21.__sinval * -8.0, -(v18 - v21.__cosval * 8.0)}];
      [v11 addArcWithCenter:1 radius:v13 * -0.5 startAngle:-v18 endAngle:8.0 clockwise:{v20 + 1.57079633, 3.14159265}];
      [v11 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v13 * -0.5 + -8.0 clockwise:{v22, 8.0, 8.0}];
      [v11 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v13 * 0.5 + 8.0 clockwise:{v22, 8.0, 8.0}];
      [v11 addLineToPoint:{v13 * 0.5 + 8.0, -v18}];
      [v11 addArcWithCenter:1 radius:v13 * 0.5 startAngle:-v18 endAngle:8.0 clockwise:{0.0, 1.57079633 - v20}];
      [v11 closePath];
      memset(&v31, 0, sizeof(v31));
      UIRoundToScale();
      v24 = v23;
      UIRoundToScale();
      CGAffineTransformMakeTranslation(&v31, v24, v25);
      v29 = v31;
      CGAffineTransformRotate(&v30, &v29, a7);
      v31 = v30;
      UIRoundToScale();
      v29 = v31;
      CGAffineTransformTranslate(&v30, &v29, 0.0, v26);
      v31 = v30;
      [v11 applyTransform:&v30];
      v17 = v11;
    }
  }

  return v17;
}

- (id)watchPathForRenderGeometry:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC728] bezierPath];
  [v3 paddedFrame];
  v6 = v5;
  v41 = v8;
  v43 = v7;
  v10 = v9;
  [v3 displayFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 roundRectRadius];
  v20 = v19;
  [v3 roundRectRadius];
  v22 = v21;
  v23 = [v3 popupBias];
  if (v23 > 28)
  {
    if (v23 == 29)
    {
      v36 = v6 + v10 * 0.5;
      v24 = v14 + v18;
      v37 = v12 + v16;
      v38 = v6 + v10;
      v39 = v36;
      [v4 moveToPoint:?];
      [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v24, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 clockwise:{v14, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v37 clockwise:{v43, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v38 clockwise:{v43, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v38 clockwise:{v24, v20, v22}];
      v33 = v4;
      v34 = v39;
      goto LABEL_11;
    }

    if (v23 != 30)
    {
LABEL_9:
      v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:objc_msgSend(v3 byRoundingCorners:"roundRectCorners") cornerRadii:{v6, v43, v10, v41, v20, v22}];

      v4 = v35;
      goto LABEL_12;
    }

LABEL_7:
    v24 = v14 + v18;
    v42 = v6 + v10 * 0.5;
    v25 = v6 + v10;
    [v4 moveToPoint:?];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v12 + v16 clockwise:{v14, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v12 + v16 clockwise:{v43, v20, v22}];
    v26 = v4;
    v27 = v25;
    v28 = v43;
    v29 = v20;
    v30 = v22;
    v32 = 1;
    v31 = 1;
    goto LABEL_8;
  }

  if (v23 == 2)
  {
    goto LABEL_7;
  }

  if (v23 != 21)
  {
    goto LABEL_9;
  }

  v42 = v6 + v10 * 0.5;
  v24 = v14 + v18;
  v25 = v6 + v10;
  [v4 moveToPoint:?];
  [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
  v26 = v4;
  v27 = v12 + v16;
  v28 = v14;
  v29 = v20;
  v30 = v22;
  v31 = 0;
  v32 = 2;
LABEL_8:
  [v26 _addRoundedCornerWithTrueCorner:v32 radius:v31 corner:v27 clockwise:{v28, v29, v30}];
  [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v25 clockwise:{v24, v20, v22}];
  v33 = v4;
  v34 = v42;
LABEL_11:
  [v33 addLineToPoint:{v34, v24}];
LABEL_12:
  [v4 closePath];

  return v4;
}

- (id)defaultPathForRenderGeometry:(id)a3
{
  v4 = a3;
  [v4 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v82 = v11;
  [v4 displayFrame];
  v13 = v12;
  v86 = v14;
  v16 = v15;
  v84 = v17;
  v18 = [v4 roundRectCorners];
  [v4 roundRectRadius];
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
  if ([v4 popupDirection] == 2)
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

  [v4 symbolFrame];
  v31 = v30;
  v33 = v32;
  v34 = [v4 popupBias];
  if ([v4 tallPopup])
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 7.0;
  }

  v36 = v13 + v16 - (v31 + v33) > v33 + 8.0 || v34 == 40;
  v37 = v31 - v13 > v33 + 8.0 || v34 == 40;
  if (v34)
  {
    v38 = v85;
    if (v37)
    {
      if (v34 == 40)
      {
        [v4 layoutMargins];
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
      v34 = 2;
    }
  }

  else
  {
    v38 = v85;
  }

  if (v34)
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
    if (![v4 concaveCorner])
    {
      v34 = 2;
      goto LABEL_34;
    }

LABEL_28:
    v46 = [(UIKBRenderer *)self pathForConcaveCornerWithGeometry:v4];
LABEL_29:
    v47 = v46;
    goto LABEL_30;
  }

  if ([v4 concaveCorner])
  {
    goto LABEL_28;
  }

  v45 = v10;
  v43 = v85;
  if (!v34)
  {
LABEL_35:
    if (v18)
    {
      v46 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:objc_msgSend(v4 byRoundingCorners:"roundRectCorners") cornerRadii:{v85, v8, v10, v82, v81, v81}];
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
  if ([v4 popupDirection] == 3)
  {
    goto LABEL_35;
  }

  rect = v85 + v10 * 0.5;
  v83 = v86 + v84 + -6.0;
  if (v34 > 28)
  {
    if (v34 == 29)
    {
      v47 = [MEMORY[0x1E69DC728] bezierPath];
      v69 = v86 + v35;
      v53 = v85 + v10;
      v88 = v8 + 15.0;
      v70 = v45 + v43;
      v71 = v8 + -19.0;
      [v47 moveToPoint:{rect, v83}];
      [v47 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
      [v47 addLineToPoint:{v85, v69 + 10.0}];
      [v47 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v85 clockwise:{v69, 10.0, 10.0}];
      [v47 addLineToPoint:{v70 + 26.0 + -10.0, v69}];
      [v47 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v70 + 26.0 clockwise:{v69, 10.0, 10.0}];
      [v47 addLineToPoint:{v70 + 26.0, v8 + -19.0}];
      if (!v36)
      {
        [v47 addQuadCurveToPoint:v70 + 23.75 controlPoint:{v8 + -12.5, v70 + 26.0 + -0.5, v71 + 5.0}];
        [v47 addLineToPoint:{v53 + 2.75, v8 + 7.5}];
        [v47 addQuadCurveToPoint:v53 controlPoint:{v88, v53 + 0.5, v88 + -5.0}];
        goto LABEL_61;
      }

      [v47 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v70 + 26.0 clockwise:{(v88 + v71) * 0.5 + -1.5, 10.0, 10.0}];
      [v47 addLineToPoint:{v53 + 10.0, (v88 + v71) * 0.5 + -1.5}];
      v72 = 10.0;
      v73 = 10.0;
      v74 = v47;
      v75 = v53;
      v76 = (v88 + v71) * 0.5 + -1.5;
      v77 = 1;
      v78 = 1;
LABEL_59:
      [v74 _addRoundedCornerWithTrueCorner:v77 radius:v78 corner:v75 clockwise:{v76, v72, v73}];
LABEL_61:
      [v47 addLineToPoint:{v53, v83 - v81}];
      [v47 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v53 clockwise:{v83, v81, v81}];
      [v47 addLineToPoint:{rect, v83}];
      [v47 closePath];
      goto LABEL_30;
    }

    if (v34 != 30)
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

  else if (v34 != 2)
  {
    if (v34 == 21)
    {
      v47 = [MEMORY[0x1E69DC728] bezierPath];
      v49 = v8 + 15.0;
      v50 = v38 + -26.0;
      v51 = v8 + -19.0;
      v52 = v86 + v35;
      v53 = v85 + v10;
      [v47 moveToPoint:{rect, v83}];
      [v47 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
      [v47 addLineToPoint:{v85, v8 + 15.0}];
      if (v37)
      {
        v54 = (v49 + v51) * 0.5 + -1.5;
        [v47 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v85 clockwise:{v54, 10.0, 10.0}];
        [v47 addLineToPoint:{v50 + 10.0, v54}];
        [v47 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v50 clockwise:{v54, 10.0, 10.0}];
      }

      else
      {
        [v47 addQuadCurveToPoint:v85 + -2.75 controlPoint:{v8 + 7.5, v85 + -0.5, v49 + -5.0}];
        [v47 addLineToPoint:{v38 + -23.75, v8 + -12.5}];
        [v47 addQuadCurveToPoint:v50 controlPoint:{v51, v50 + 0.5, v51 + 5.0}];
      }

      [v47 addLineToPoint:{v50, v52 + 10.0}];
      [v47 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v50 clockwise:{v52, 10.0, 10.0}];
      [v47 addLineToPoint:{v53 + -10.0, v52}];
      v72 = 10.0;
      v73 = 10.0;
      v74 = v47;
      v75 = v53;
      v76 = v86 + v35;
      v77 = 2;
      v78 = 0;
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v80 = v10;
  v47 = [MEMORY[0x1E69DC728] bezierPath];
  v60 = v38 + -13.0;
  v61 = v86 + v35;
  v87 = v8 + -20.0;
  v62 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
  v63 = v45 + v43 + 13.0;
  [v47 moveToPoint:{rect, v83}];
  [v47 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v85 clockwise:{v83, v81, v81}];
  [v47 addLineToPoint:{v85, v8 + 1.5}];
  if (v37)
  {
    [v47 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v85 clockwise:{v62, 10.0, 10.0}];
    [v47 addLineToPoint:{v60 + 10.0, v62}];
    [v47 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v60 clockwise:{v62, 10.0, 10.0}];
    v64 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
    v65 = v8 + -8.0;
  }

  else
  {
    v65 = v8 + -8.0;
    [v47 addCurveToPoint:v60 controlPoint1:v87 controlPoint2:{v85, v8 + -9.0, v60, v8 + -8.0}];
    v64 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
  }

  v66 = v85 + v80;
  [v47 addLineToPoint:{v60, v61 + 10.0}];
  [v47 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v60 clockwise:{v61, 10.0, 10.0}];
  [v47 addLineToPoint:{v63 + -10.0, v61}];
  [v47 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v63 clockwise:{v61, 10.0, 10.0}];
  [v47 addLineToPoint:{v63, v87}];
  if (v36)
  {
    [v47 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v63 clockwise:{v64, 10.0, 10.0}];
    [v47 addLineToPoint:{v66 + 10.0, v64}];
    [v47 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v66 clockwise:{v64, 10.0, 10.0}];
  }

  else
  {
    [v47 addCurveToPoint:v66 controlPoint1:v8 + 1.5 controlPoint2:{v63, v65, v66, v8 + -9.0}];
  }

  [v47 addLineToPoint:{v66, v83 - v81}];
  [v47 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v66 clockwise:{v83, v81, v81}];
  [v47 addLineToPoint:{rect, v83}];
  [v47 closePath];
  if ([v4 popupDirection] == 2)
  {
    memset(&v91, 0, sizeof(v91));
    CGAffineTransformMakeScale(&v91, 1.0, -1.0);
    memset(&v90, 0, sizeof(v90));
    [v47 bounds];
    v67 = CGRectGetMinY(v100);
    [v47 bounds];
    v68 = CGRectGetMaxY(v101);
    CGAffineTransformMakeTranslation(&v90, 0.0, v67 + v68);
    v89 = v91;
    [v47 applyTransform:&v89];
    v89 = v90;
    [v47 applyTransform:&v89];
  }

LABEL_30:

  return v47;
}

- (id)pathForRenderGeometry:(id)a3
{
  v4 = MEMORY[0x1E69DC938];
  v5 = a3;
  v6 = [v4 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 4)
  {
    [(UIKBRenderer *)self watchPathForRenderGeometry:v5];
  }

  else
  {
    [(UIKBRenderer *)self defaultPathForRenderGeometry:v5];
  }
  v8 = ;

  return v8;
}

- (id)pathForConcaveCornerWithGeometry:(id)a3
{
  v3 = MEMORY[0x1E69DC728];
  v4 = a3;
  v5 = [v3 bezierPath];
  [v4 paddedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v4 roundRectRadius];
  v15 = v14;
  [v4 roundRectRadius];
  v17 = v16;
  v18 = [v4 concaveCorner];
  [v4 concaveCornerOffset];
  v20 = v19;
  v22 = v21;

  v23 = 0;
  if (v18 <= 3)
  {
    if (v18 == 1)
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
      [v5 moveToPoint:{MidX, MaxY}];
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:{v72, v15, v17}];
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v76 clockwise:{v64, v15, v17}];
      [v5 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v68 clockwise:{v60, v15, v17}];
      v27 = v5;
      v28 = v56;
      v29 = MinY;
      v30 = v15;
      v31 = v17;
      v33 = 0;
      v32 = 1;
    }

    else
    {
      if (v18 != 2)
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
      [v5 moveToPoint:{v86, v82}];
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v78 clockwise:{v70, v15, v17}];
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v74 clockwise:{v62, v15, v17}];
      [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v66 clockwise:{v54, v15, v17}];
      v27 = v5;
      v28 = v58;
      v29 = v47;
      v30 = v15;
      v31 = v17;
      v32 = 4;
      v33 = 1;
    }

    [v27 _addRoundedCornerWithTrueCorner:v32 radius:v33 corner:v28 clockwise:{v29, v30, v31}];
    [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v24, v15, v17}];
    v37 = v5;
    v38 = v25;
    v39 = v26;
    v40 = v15;
    v41 = v17;
    v42 = 8;
LABEL_10:
    [v37 _addRoundedCornerWithTrueCorner:v42 radius:0 corner:v38 clockwise:{v39, v40, v41}];
    [v5 closePath];
    v23 = v5;
    goto LABEL_12;
  }

  if (v18 != 8)
  {
    if (v18 != 4)
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
    [v5 moveToPoint:{v87, v83}];
    [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v79 clockwise:{v71, v15, v17}];
    [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v75 clockwise:{v63, v15, v17}];
    [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v67 clockwise:{v55, v15, v17}];
    [v5 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v59 clockwise:{v48, v15, v17}];
    [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v52 clockwise:{v34, v15, v17}];
    v37 = v5;
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
  [v5 moveToPoint:{v89, v85}];
  [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v81 clockwise:{v73, v15, v17}];
  [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v77 clockwise:{v65, v15, v17}];
  [v5 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v69 clockwise:{v61, v15, v17}];
  [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v57 clockwise:{v50, v15, v17}];
  [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v53 clockwise:{v43, v15, v17}];
  [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v44 clockwise:{v45, v15, v17}];
  [v5 closePath];
  v23 = 0;
LABEL_12:

  return v23;
}

- (void)addPathForSplitGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForSplitGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickPopupGeometries:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForFlickPopupGeometries:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForFlickGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForRenderGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForRenderGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForTraits:(id)a3 displayRect:(CGRect *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!self->_colorDetectMode)
  {
    v8 = [v6 geometry];
    v9 = [v8 flickDirection];

    if (v9 == -3)
    {
      v10 = [v7 geometry];
      v11 = [v10 splitLeftRect];
      if (v11)
      {
        v12 = v11;
        v13 = [v7 geometry];
        v14 = [v13 splitRightRect];

        if (v14)
        {
          v15 = [v7 geometry];
          [(UIKBRenderer *)self addPathForSplitGeometry:v15];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      v17 = [v7 geometry];
      if ([v17 detachedVariants])
      {
        v18 = [v7 variantGeometries];

        if (v18)
        {
          v19 = [v7 geometry];
          v15 = [v19 copy];

          [v15 setPopupBias:0];
          [(UIKBRenderer *)self addPathForRenderGeometry:v15];
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v24 = [v7 variantGeometries];
          v25 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
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
                  objc_enumerationMutation(v24);
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

              v26 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
            }

            while (v26);
          }

          v39 = [v7 geometry];
          if ([v39 roundRectCorners])
          {
          }

          else
          {
            v50 = [v7 geometry];
            [v50 roundRectRadius];
            v52 = v51;

            if (v52 != 0.0)
            {
LABEL_30:
              [v15 setFrame:{x, y, width, height}];
              [v15 setPaddedFrame:{x, y, width, height}];
              [v15 setDisplayFrame:{x, y, width, height}];
              [v15 setRoundRectCorners:-1];
              v57 = [v7 geometry];
              [v57 roundRectRadius];
              [v15 setRoundRectRadius:?];

              goto LABEL_31;
            }
          }

          [v15 roundRectRadius];
          v54 = -v53;
          [v15 roundRectRadius];
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

      v15 = [v7 geometry];
LABEL_31:
      [(UIKBRenderer *)self addPathForRenderGeometry:v15];
      goto LABEL_32;
    }

    v16 = [v7 variantGeometries];

    if (v16)
    {
      v15 = [v7 variantGeometries];
      [(UIKBRenderer *)self addPathForFlickPopupGeometries:v15];
      goto LABEL_32;
    }

    v40 = [v7 variantTraits];
    v41 = [v40 geometry];

    v42 = [v7 geometry];
    if (v41)
    {
      [(UIKBRenderer *)self addPathForRenderGeometry:v42];
    }

    else
    {
      [(UIKBRenderer *)self addPathForFlickGeometry:v42];

      if (a4)
      {
        v43 = [v7 geometry];
        [v43 popupSource];
        v45 = v44;
        v47 = v46;
        v48 = *MEMORY[0x1E695F060];
        v49 = *(MEMORY[0x1E695F060] + 8);

        v68.origin.x = v45;
        v68.origin.y = v47;
        v68.size.width = v48;
        v68.size.height = v49;
        *a4 = CGRectUnion(*a4, v68);
      }
    }
  }

LABEL_33:
}

- (void)addRoundRect:(CGRect)a3 radius:(double)a4 corners:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 <= 0.0 || a5 == 0)
  {
    v11 = [(UIKBRenderer *)self context];
    v12 = x;
    v13 = y;
    v14 = width;
    v15 = height;

    CGContextAddRect(v11, *&v12);
  }

  else
  {
    v18 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:a5 byRoundingCorners:a3.origin.x cornerRadii:{a3.origin.y, a3.size.width, a3.size.height, a4, a4}];
    v16 = [(UIKBRenderer *)self context];
    v17 = v18;
    CGContextAddPath(v16, [v18 CGPath]);
  }
}

- (BOOL)renderKeyPathContents:(id)a3 withTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayPathType];
  v9 = [(UIKBRenderer *)self renderFlags];
  v10 = 0;
  if (v7 && (v9 & 4) != 0 && v8)
  {
    if (self->_colorDetectMode)
    {
      v11 = [v7 symbolStyle];
      v12 = [v11 textColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:v12];

      v10 = 1;
      goto LABEL_30;
    }

    v13 = [v7 symbolStyle];
    v14 = [v13 textColor];
    v15 = [v14 isEqualToString:@"UIKBColorWhite"];

    switch(v8)
    {
      case 1:
        if (v15)
        {
          v16 = [(UIKBRenderer *)self _thickShiftGlyphPath];
          v17 = 0.0;
        }

        else
        {
          v16 = [(UIKBRenderer *)self _thinShiftGlyphPath];
          v17 = 0.12;
        }

        BoundingBox = CGPathGetBoundingBox(v16);
        width = BoundingBox.size.width;
        height = v17 + BoundingBox.size.height;
        break;
      case 4:
        v56 = [MEMORY[0x1E69DC728] bezierPath];
        height = 10.0;
        [v56 moveToPoint:{1.0, 10.0}];
        [v56 addLineToPoint:{1.0, 0.0}];
        [v56 closePath];
        v16 = [v56 CGPath];

        width = 2.0;
        break;
      case 3:
        v55 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 15.0, 15.0}];
        [v55 moveToPoint:{4.25, 10.75}];
        [v55 addLineToPoint:{10.75, 4.25}];
        [v55 moveToPoint:{4.25, 4.25}];
        [v55 addLineToPoint:{10.75, 10.75}];
        [v55 closePath];
        v16 = [v55 CGPath];
        v64 = CGPathGetBoundingBox(v16);
        width = v64.size.width;
        height = v64.size.height;

        break;
      case 2:
        v16 = [(UIKBRenderer *)self _deleteGlyphPaths];
        v62 = CGPathGetBoundingBox(v16);
        width = v62.size.width;
        height = v62.size.height;
        break;
      default:
        v16 = 0;
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
        break;
    }

    v20 = [v7 geometry];
    [v20 symbolFrame];
    v22 = v21;

    if (width <= v22)
    {
      v26 = floor(height);
      v27 = [v7 symbolStyle];
      [v27 fontSize];
      v29 = v28;

      v25 = 1.0;
      if (v26 >= v29)
      {
        goto LABEL_20;
      }

      v23 = [v7 symbolStyle];
      [v23 fontSize];
      v25 = v30 / v26;
    }

    else
    {
      v23 = [v7 geometry];
      [v23 symbolFrame];
      v25 = v24 / width;
    }

LABEL_20:
    memset(&v61, 0, sizeof(v61));
    CGAffineTransformMakeScale(&v61, v25, v25);
    v31 = [v7 symbolStyle];
    [v31 textOffset];
    v33 = v32;
    v58 = v34;

    v35 = [v7 geometry];
    [v35 symbolFrame];
    [(UIKBRenderer *)self scale];
    v57 = v36;
    UIRectCenteredIntegralRectScale();
    v38 = v37;
    v40 = v39;

    v59 = v61;
    CGAffineTransformTranslate(&v60, &v59, (v33 + v38) / v25, (v58 + v40 + -1.0) / v25);
    v61 = v60;
    v41 = [v7 symbolStyle];
    v42 = [v41 textColor];
    CopyWithAlpha = UIKBGetNamedColor(v42);

    v44 = [v7 symbolStyle];
    [v44 textOpacity];
    v46 = v45;

    if (v46 == 1.0)
    {
      CGColorRetain(CopyWithAlpha);
    }

    else
    {
      v47 = [v7 symbolStyle];
      [v47 textOpacity];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v48);
    }

    if ([v6 fillPath])
    {
      v49 = [v7 symbolStyle];
      [v49 pathWeight];
      v60 = v61;
      v50 = self;
      v51 = v16;
      v52 = CopyWithAlpha;
      v53 = 1;
    }

    else
    {
      if ([v6 fillPath])
      {
        v10 = 0;
        goto LABEL_29;
      }

      v49 = [v7 symbolStyle];
      [v49 pathWeight];
      if (v8 == 1)
      {
        v60 = v61;
        [(UIKBRenderer *)self drawShiftPath:v15 weight:&v60 transform:CopyWithAlpha color:?];
        goto LABEL_26;
      }

      v60 = v61;
      v50 = self;
      v51 = v16;
      v52 = CopyWithAlpha;
      v53 = 0;
    }

    [(UIKBRenderer *)v50 drawPath:v51 weight:&v60 transform:v52 color:v53 fill:?];
LABEL_26:

    v10 = 1;
LABEL_29:
    CGColorRelease(CopyWithAlpha);
  }

LABEL_30:

  return v10;
}

- (void)drawShiftPath:(BOOL)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a3)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.12;
    }

    MutablePathWithPoints = createMutablePathWithPoints(dbl_1900C1250, 7, 0, 15.0);
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(MutablePathWithPoints, a5);
    v15 = xmmword_1900C0EC0;
    v16 = 0x3FE0000000000000;
    v17 = 6.0 - v10;
    v18 = 0x4023000000000000;
    v19 = 15.0 - v10;
    v20 = 0x4032800000000000;
    v21 = 6.0 - v10;
    v22 = xmmword_1900C0ED0;
    v13 = createMutablePathWithPoints(&v15, 5, 0, 15.0);
    v14 = CGPathCreateMutableCopyByTransformingPath(v13, a5);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapButt);
    CGContextSetLineWidth(self->_ctx, a4);
    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
    CGContextStrokePath(self->_ctx);
    CGContextSetLineWidth(self->_ctx, a4 - v10);
    CGContextAddPath(self->_ctx, v14);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
    CGContextStrokePath(self->_ctx);
    CGContextRestoreGState(self->_ctx);
    CGPathRelease(MutableCopyByTransformingPath);
    CGPathRelease(v14);
    CGPathRelease(MutablePathWithPoints);
    CGPathRelease(v13);
  }
}

- (void)drawPath:(CGPath *)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6 fill:(BOOL)a7
{
  if (a3 && a6)
  {
    v8 = a7;
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(a3, a5);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineWidth(self->_ctx, a4);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapSquare);
    if (v8)
    {
      CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
      CGContextSetFillColorWithColor(self->_ctx, a6);
      CGContextFillPath(self->_ctx);
    }

    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
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

- (unint64_t)renderKeyStringContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = a5;
  v10 = [v8 displayString];
  v11 = [(UIKBRenderer *)self renderFlags];
  if (!v9 || (v11 & 0x34) == 0 || !v10)
  {
    goto LABEL_42;
  }

  if ([v9 renderSecondarySymbolsSeparately])
  {
    v12 = 4;
  }

  else
  {
    v12 = 52;
  }

  if ((a5 & 2) == 0)
  {
    v13 = [v8 secondaryDisplayStrings];
    if ([v13 count])
    {
      v14 = [v9 secondarySymbolStyles];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [v8 displayString];
        v17 = [v16 length];
        v18 = v17 != 0;

        if (v17)
        {
          v19 = [v8 displayStringImage];
          if ([v19 length])
          {
          }

          else
          {
            v46 = [(UIKBRenderer *)self renderFlags]& v12;

            if (v46)
            {
              v47 = [v8 displayString];
              v48 = [v9 geometry];
              [v48 symbolFrame];
              v50 = v49;
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v57 = [v9 symbolStyle];
              [(UIKBRenderer *)self _drawKeyString:v47 inRect:v57 withStyle:v50, v52, v54, v56];

              v79[3] |= 1uLL;
            }
          }
        }

        v58 = [v8 secondaryDisplayStrings];
        v59 = [v58 count];

        v60 = [v9 secondarySymbolStyles];
        v61 = [v60 count];

        if (![v9 renderSecondarySymbolsSeparately])
        {
          v63 = [v8 secondaryDisplayStrings];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __58__UIKBRenderer_renderKeyStringContents_withTraits_status___block_invoke;
          v72[3] = &unk_1E72D2D00;
          v72[4] = self;
          v75 = 52;
          v76 = v61;
          v77 = v18;
          v73 = v9;
          v74 = &v78;
          [v63 enumerateObjectsUsingBlock:v72];

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
          v64 = [v8 secondaryDisplayStrings];
          v65 = [v64 objectAtIndex:v62];
        }

        if (v62 >= v61 || ([v9 secondarySymbolStyles], v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "objectAtIndex:", v62), v67 = objc_claimAutoreleasedReturnValue(), v66, !v67))
        {
          v68 = [v9 secondarySymbolStyles];
          v67 = [v68 lastObject];
        }

        if ([v65 length])
        {
          if (!v17)
          {
            [v67 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          v69 = [v9 geometry];
          [v69 symbolFrame];
          [(UIKBRenderer *)self _drawKeyString:v65 inRect:v67 withStyle:?];

          v79[3] = 3;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  if ((a5 & 1) == 0)
  {
    v20 = [v9 geometry];
    [v20 symbolFrame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v9 symbolStyle];
    v30 = [(UIKBRenderer *)self _drawKeyString:v10 inRect:v29 withStyle:v22, v24, v26, v28];

    if ([v8 stringKeycapOverImage])
    {
      v31 = 0;
    }

    else
    {
      v32 = [v8 displayStringImage];
      v31 = v32 != 0;
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
      v33 = [v8 fallbackContents];
      v34 = [v33 displayString];
      v35 = [v9 geometry];
      [v35 symbolFrame];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = [v9 fallbackSymbolStyle];
      v45 = [(UIKBRenderer *)self _drawKeyString:v34 inRect:v44 withStyle:v37, v39, v41, v43];

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

- (BOOL)_drawKeyString:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5
{
  rect = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v8 = a3;
  v9 = a5;
  if (![v8 length])
  {
    goto LABEL_17;
  }

  CopyWithAlpha = [v9 fontName];

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
      v11 = [v9 textColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:v11];

      v12 = [v9 etchColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:v12];

      if (self->_contentColorFormat)
      {
        v13 = [v9 fontName];
        v14 = [v13 isEqualToString:@"AppleColorEmoji"];

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

    if ([v9 anchorCorner] != 1 && objc_msgSend(v9, "anchorCorner") != 4)
    {
      if ([v9 anchorCorner] != 2 && objc_msgSend(v9, "anchorCorner") != 8)
      {
LABEL_15:
        if (![v9 selector] && -[UIKBRenderer _drawSingleSymbol:inRect:withStyle:](self, "_drawSingleSymbol:inRect:withStyle:", v8, v9, x, y, width, rect))
        {
LABEL_17:
          LOBYTE(CopyWithAlpha) = 1;
          goto LABEL_18;
        }

        v169[0] = 0.0;
        v148 = self;
        v155 = width;
        if ([v8 rangeOfString:@"\n" options:2] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 fontSize];
          v20 = v19;
          v21 = 0;
          v168 = v19;
          v22 = 1;
        }

        else
        {
          v21 = [v8 componentsSeparatedByString:@"\n"];
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

          [v9 fontSize];
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
          v29 = [v9 isVertical];
          if (v29)
          {
            v30 = x + width * v26 / v153;
          }

          else
          {
            v30 = x;
          }

          if (v29)
          {
            v31 = y;
          }

          else
          {
            v31 = y + rect * v26 / v153;
          }

          v32 = v151;
          if (v29)
          {
            v33 = v149;
          }

          else
          {
            v33 = width;
          }

          if (v29)
          {
            v34 = rect;
          }

          else
          {
            v34 = v151;
          }

          v35 = v20;
          *buf = v20;
          v36 = v8;
          v37 = v8;
          if (v21)
          {
            v37 = [v21 objectAtIndex:{v26, v151}];
            leading = v37;
          }

          v38 = [v9 fontName];
          [v9 fontWeight];
          v40 = v39;
          [v9 fontWidth];
          v42 = v41;
          [v9 kerning];
          v44 = v43;
          v45 = v21;
          v46 = [v9 selector];
          v47 = [v9 ignoreTextMarginOnKey];
          v48 = [v9 isVertical];
          v49 = [v9 keycapsFallback];
          v50 = v46;
          v21 = v45;
          v51 = UIKBCreateFitCTLine(v37, v38, buf, v169, v50, v47, v48, v49, v30, v31, v33, v34, v40, v42, v44);

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

          v8 = v36;
          width = v155;
          ++v26;
        }

        while (v157 != v26);
        v55 = 1;
        v20 = v28;
LABEL_50:
        v168 = v27;
        v169[0] = v20;
        [v9 minFontSize];
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
          v57 = [v9 textColor];
          v58 = UIKBGetNamedColor(v57);

          [v9 textOpacity];
          v147 = v8;
          v139 = CopyWithAlpha;
          if (v59 == 1.0)
          {
            CGColorRetain(v58);
            CopyWithAlpha = v58;
          }

          else
          {
            [v9 textOpacity];
            CopyWithAlpha = CGColorCreateCopyWithAlpha(v58, v60);
          }

          if (v55)
          {
            v61 = v148;
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
              if ([v9 isVertical])
              {
                v65 = v63;
              }

              else
              {
                v65 = v62;
              }

              v66 = [v9 isVertical];
              v67 = v65;
              if (v66)
              {
                v68 = x + width * v65 / v154;
              }

              else
              {
                v68 = x;
              }

              if (v66)
              {
                v69 = y;
              }

              else
              {
                v69 = y + rect * v65 / v154;
              }

              v70 = v152;
              if (v66)
              {
                v71 = v150;
              }

              else
              {
                v71 = width;
              }

              if (v66)
              {
                v72 = rect;
              }

              else
              {
                v72 = v152;
              }

              if (v54 != 1)
              {
                v73 = v147;
                if (v21)
                {
                  v73 = [v21 objectAtIndex:{v62, v152}];
                  v146 = v73;
                }

                v74 = [v9 fontName];
                [v9 fontWeight];
                v76 = v75;
                [v9 fontWidth];
                v78 = v77;
                [v9 kerning];
                v80 = v79;
                v81 = [v9 selector];
                v82 = [v9 ignoreTextMarginOnKey];
                v83 = [v9 isVertical];
                v84 = [v9 keycapsFallback];
                v51 = UIKBCreateFitCTLine(v73, v74, &v168, v169, v81, v82, v83, v84, v68, v69, v71, v72, v76, v78, v80);

                v21 = v160;
                if (v160)
                {
                }

                v61 = v148;
                width = v155;
                CopyWithAlpha = v144;
              }

              v85 = CTLineGetTypographicBounds(v51, 0, 0, 0);
              if ([v9 isVertical])
              {
                if ([v9 anchorCorner] || objc_msgSend(v9, "alignment") != 1)
                {
                  if (os_variant_has_internal_diagnostics())
                  {
                    v138 = __TUIFaultDebugAssertLog();
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_18FFDC000, v138, OS_LOG_TYPE_FAULT, "only alignment center is supported in vertical orientation", buf, 2u);
                    }

                    v61 = v148;
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
                [v9 textOffset];
                v88 = PenOffsetForFlush + v87;
                [v9 etchOffset];
                v90 = y + v88 + v89;
                [v9 textOffset];
                v92 = v91;
                [v9 etchOffset];
                v94 = ceil(v141 + v165 * v67) + v92 + v93;
                v21 = v160;
                goto LABEL_104;
              }

              v90 = ceil(v143 + v142 * v67);
              if (![v9 anchorCorner])
              {
                break;
              }

              if ([v9 anchorCorner] == 1)
              {
                [v9 textOffset];
                v96 = v95;
                [v9 etchOffset];
                v98 = v96 + v97;
                goto LABEL_87;
              }

              if ([v9 anchorCorner] == 4)
              {
                [v9 textOffset];
                v104 = v103;
                [v9 etchOffset];
                v106 = v104 + v105;
              }

              else
              {
                if ([v9 anchorCorner] == 2)
                {
                  [v9 textOffset];
                  v113 = width - v112 - v85;
                  [v9 etchOffset];
                  v98 = v114 + v113;
LABEL_87:
                  v94 = v145 + v98;
                  v99 = v169[0];
                  [v9 textOffset];
                  v101 = v99 + v100;
LABEL_102:
                  [v9 etchOffset];
                  v111 = v101 + v119;
                  goto LABEL_103;
                }

                if ([v9 anchorCorner] != 8)
                {
                  v94 = v145;
                  goto LABEL_104;
                }

                [v9 textOffset];
                v134 = width - v133 - v85;
                [v9 etchOffset];
                v106 = v135 + v134;
              }

              v94 = v145 + v106;
              v107 = rect - v169[0];
              [v9 textOffset];
              v109 = v107 - v108;
              [v9 etchOffset];
              v111 = v109 - v110;
LABEL_103:
              v90 = v90 + v111;
LABEL_104:
              v120 = [v9 etchColor];

              if (v120)
              {
                ctx = v61->_ctx;
                v122 = [v9 etchColor];
                v123 = v62;
                v124 = v63;
                v125 = CopyWithAlpha;
                v126 = v61;
                v127 = UIKBGetNamedColor(v122);
                v128 = [v9 isVertical];
                v129 = v127;
                v61 = v126;
                CopyWithAlpha = v125;
                v63 = v124;
                v62 = v123;
                UIKBDrawCTLineAtPoint(ctx, v51, v129, v128, v94, v90);
              }

              [v9 etchOffset];
              v131 = v94 - v130;
              [v9 etchOffset];
              UIKBDrawCTLineAtPoint(v61->_ctx, v51, CopyWithAlpha, [v9 isVertical], v131, v90 - v132);
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

            if ([v9 alignment] == 1)
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
              if ([v9 alignment])
              {
                v94 = v145;
                if ([v9 alignment] != 2)
                {
LABEL_101:
                  [v9 textOffset];
                  v101 = rect * 0.5 + v118;
                  goto LABEL_102;
                }

                v102 = v140 - v85;
              }
            }

            [v9 textOffset];
            v116 = v102 + v115;
            [v9 etchOffset];
            v94 = v145 + v116 + v117;
            goto LABEL_101;
          }

LABEL_121:
          CGColorRelease(CopyWithAlpha);
          v8 = v147;
          LOBYTE(CopyWithAlpha) = v139;
        }

        goto LABEL_18;
      }

      [v9 textOffset];
      x = x + v16;
    }

    [v9 textOffset];
    width = width - v17;
    goto LABEL_15;
  }

LABEL_18:

  return CopyWithAlpha;
}

- (BOOL)_drawSingleSymbol:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  if ([v11 length] == 1)
  {
    v13 = [v11 characterAtIndex:0];
    v14 = [v12 fontName];
    [v12 fontSize];
    v16 = v15;
    [v12 fontWeight];
    v18 = v17;
    [v12 fontWidth];
    v20 = v19;
    v21 = [v12 keycapsFallback];
    v22 = UIKBGlyphForCharacter(v14, v13, v21, v16, v18, v20);

    glyphs = v22;
    if (!v22)
    {
      goto LABEL_16;
    }

    v52 = x;
    do
    {
      v23 = [v12 keycapsFallback];
      v24 = UIKBCreateCTFont(v14, v23, v16, v18, v20);

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
    [v12 minFontSize];
    if (v16 >= v27)
    {
      XHeight = UIKBGetXHeight(v14, v16);
      if (XHeight == 0.0)
      {
        XHeight = CTFontGetXHeight(v24);
      }

      v29 = y + height * 0.5 + XHeight * 0.5;
      v30 = [v12 textColor];
      CopyWithAlpha = UIKBGetNamedColor(v30);

      [v12 textOpacity];
      if (v32 == 1.0)
      {
        CGColorRetain(CopyWithAlpha);
      }

      else
      {
        [v12 textOpacity];
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
      [v12 textOffset];
      v40 = v39;
      [v12 etchOffset];
      v53.a = v37 + v40 + v41;
      [v12 textOffset];
      v43 = v42;
      [v12 etchOffset];
      v53.b = v35 - (v43 + v44);
      v45 = [v12 etchColor];

      if (v45)
      {
        v46 = self->_ctx;
        v47 = [v12 etchColor];
        v48 = UIKBGetNamedColor(v47);
        CGContextSetFillColorWithColor(v46, v48);

        CTFontDrawGlyphs(v24, &glyphs, &v53, 1uLL, self->_ctx);
      }

      [v12 etchOffset];
      v53.a = v53.a - v49;
      [v12 etchOffset];
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

- (CGPoint)centroidOfGlyph:(CGPath *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  CopyByFlattening = CGPathCreateCopyByFlattening(a3, 1.0);
  CopyByNormalizing = CGPathCreateCopyByNormalizing(CopyByFlattening, 0);
  v5 = [MEMORY[0x1E695DF70] array];
  CGPathApply(CopyByNormalizing, v5, centroidCGPathApplierFunction);
  CGPathRelease(CopyByNormalizing);
  CGPathRelease(CopyByFlattening);
  v7 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
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

- (id)symbolImageConfigForKey:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 symbolStyle];
  v8 = MEMORY[0x193AE8160]([v7 fontWeightForSymbolImage]);

  if (!v8)
  {
    v9 = [v5 symbolStyle];
    v10 = MEMORY[0x193AE8160]([v9 fontWeight]);

    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 4;
    }
  }

  v11 = [v5 symbolStyle];
  [v11 fontSizeForSymbolImage];
  v13 = v12;

  if (v13 == 0.0)
  {
    v14 = [v5 symbolStyle];
    [v14 fontSize];
    v13 = v15;
  }

  v16 = MEMORY[0x1E69DCAD8];
  v17 = [v5 symbolStyle];
  v18 = [v16 configurationWithPointSize:v8 weight:objc_msgSend(v17 scale:{"symbolScale"), v13}];

  v19 = [v18 configurationWithTraitCollection:v6];

  return v19;
}

- (unint64_t)renderKeyImageContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = a5;
  if (([(UIKBRenderer *)self renderFlags]& 0x34) != 0)
  {
    v10 = MEMORY[0x1E69DD1B8];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke;
    v62[3] = &unk_1E72D2CB0;
    v62[4] = self;
    v11 = v9;
    v63 = v11;
    v12 = [v10 traitCollectionWithTraits:v62];
    if ((a5 & 2) == 0)
    {
      v13 = [v8 secondaryDisplayStringImages];
      if ([v13 count])
      {
        v14 = [v11 secondarySymbolStyles];
        v15 = [v14 count];

        if (v15)
        {
          v16 = [v8 secondaryDisplayStringImages];
          v17 = [v16 count];

          v18 = [v11 secondarySymbolStyles];
          v19 = [v18 count];

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
                v41 = [v8 secondaryDisplayStringImages];
                v42 = [v41 objectAtIndex:v20];

                if (v42)
                {
                  v43 = [MEMORY[0x1E69DCAB8] _kitImageNamed:v42 withTrait:v12];
                }

                else
                {
                  v43 = 0;
                }
              }

              if (v20 >= v19 || ([v11 secondarySymbolStyles], v44 = v12, v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "objectAtIndex:", v20), v46 = objc_claimAutoreleasedReturnValue(), v45, v12 = v44, !v46))
              {
                v47 = [v11 secondarySymbolStyles];
                v46 = [v47 lastObject];
              }

              if (v43)
              {
                v48 = [v11 geometry];
                [v48 symbolFrame];
                -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", v43, v46, [v8 force1xImages], objc_msgSend(v8, "flipImageHorizontally"), 0, v49, v50, v51, v52);

                v65[3] = 3;
              }
            }
          }

          else
          {
            v35 = [v8 secondaryDisplayStringImages];
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke_2;
            v55[3] = &unk_1E72D2CD8;
            v55[4] = self;
            v60 = 52;
            v61 = v19;
            v56 = v11;
            v57 = v12;
            v58 = v8;
            v59 = &v64;
            [v35 enumerateObjectsUsingBlock:v55];
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

    if (a5)
    {
      goto LABEL_43;
    }

    v22 = [v8 displayStringImage];
    v23 = [v11 symbolStyle];
    v54 = v12;
    if ([v23 usesSymbolImage])
    {
      v24 = [(UIKBRenderer *)self symbolImageConfigForKey:v11 traitCollection:v12];
      v25 = [v8 bundlePathOverride];

      if (v25)
      {
        v26 = MEMORY[0x1E696AAE8];
        v27 = [v8 bundlePathOverride];
        v28 = [v26 bundleWithPath:v27];

        v29 = [MEMORY[0x1E69DCAB8] imageNamed:v22 inBundle:v28 withConfiguration:v24];
        v30 = [v29 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }

      else
      {
        v28 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v22 withConfiguration:v24];
        v30 = [v28 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }
    }

    else
    {
      v31 = [v8 displayImage];

      if (v31)
      {
        v30 = [v8 displayImage];
        v32 = 1;
        if (v30)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      v30 = [MEMORY[0x1E69DCAB8] _kitImageNamed:v22 withTrait:v12];
    }

    v32 = 0;
    if (v30)
    {
LABEL_24:
      v34 = v22;
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_17:
    v33 = [v8 fallbackContents];
    v34 = [v33 displayStringImage];

    if ([v23 usesSymbolImage])
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:v34 compatibleWithTraitCollection:v54];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] _kitImageNamed:v34 withTrait:v54];
    }
    v30 = ;
    if (!v23)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (v30)
    {
      v36 = [v11 geometry];
      [v36 symbolFrame];
      -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", v30, v23, [v8 force1xImages], objc_msgSend(v8, "flipImageHorizontally"), v32, v37, v38, v39, v40);

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

- (void)_drawKeyImage:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5 force1xImages:(BOOL)a6 flipHorizontally:(BOOL)a7 isRGBImage:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v53 = a3;
  v17 = a5;
  colorDetectMode = self->_colorDetectMode;
  v19 = [v17 textColor];
  v20 = v19;
  if (!colorDetectMode)
  {
    v21 = UIKBGetNamedColor(v19);

    v20 = [MEMORY[0x1E69DC888] colorWithCGColor:v21];
    [v17 textOpacity];
    if (v22 != 1.0)
    {
      [v17 textOpacity];
      v23 = [v20 colorWithAlphaComponent:?];

      v20 = v23;
    }

    if (v8)
    {
      v24 = v53;
    }

    else
    {
      v24 = [v53 _flatImageWithColor:v20];
    }

    v25 = v24;
    [v53 scale];
    v27 = v26;
    [v25 size];
    v29 = v28;
    v31 = v30;
    [v53 isSymbolImage];
    if (v10)
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

    [v17 imageScale];
    if (v34 != 1.0)
    {
      [v17 imageScale];
      v29 = v29 * v35;
      [v17 imageScale];
      v31 = v31 * v36;
    }

    if (![v17 anchorCorner])
    {
      v40 = v27 * (width - v29) * 0.5;
      v41 = x + fabsf(roundf(v40)) / v27;
      [v17 textOffset];
      v38 = v41 + v42;
      *&v42 = v27 * (height - v31) * 0.5;
      v39 = fabsf(roundf(*&v42)) / v27 - y;
      goto LABEL_24;
    }

    if ([v17 anchorCorner] == 1)
    {
      [v17 textOffset];
      v38 = x + v37;
LABEL_22:
      v39 = height - y - v31;
LABEL_24:
      [v17 textOffset];
      v44 = v39 - v43;
LABEL_28:
      if (v9)
      {
        v47 = -v38 - v29;
      }

      else
      {
        v47 = v38;
      }

      if (v9)
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
      v50 = [v25 CGImage];
      v55.origin.x = v47;
      v55.origin.y = v44;
      v55.size.width = v29;
      v55.size.height = v31;
      CGContextDrawImage(ctx, v55, v50);
      CGContextRestoreGState(self->_ctx);

      goto LABEL_35;
    }

    if ([v17 anchorCorner] == 4)
    {
      [v17 textOffset];
      v38 = x + v45;
    }

    else
    {
      if ([v17 anchorCorner] == 2)
      {
        [v17 textOffset];
        v38 = x + width - v29 - v51;
        goto LABEL_22;
      }

      v44 = 0.0;
      v38 = 0.0;
      if ([v17 anchorCorner] != 8)
      {
        goto LABEL_28;
      }

      [v17 textOffset];
      v38 = x + width - v29 - v52;
    }

    [v17 textOffset];
    v44 = v46 - y;
    goto LABEL_28;
  }

  [(UIKBRenderer *)self detectColorsForNamedColor:v19];
LABEL_35:
}

- (void)_renderVariantsFromKeyContents:(id)a3 withTraits:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 variantDisplayContents];
  v8 = [v7 count];
  v9 = [v6 variantGeometries];
  v10 = [v9 count];

  if (v8 != v10)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v27 = __TUIFaultDebugAssertLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v30 = v5;
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
        v30 = v5;
        _os_log_impl(&dword_18FFDC000, v26, OS_LOG_TYPE_ERROR, "keyboard: number of popups didn't match number of geometries: %@", buf, 0xCu);
      }
    }
  }

  v11 = [v5 variantDisplayContents];
  v12 = [v11 count];

  v13 = [v6 variantGeometries];
  v14 = [v13 count];

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
      v17 = [v5 variantDisplayContents];
      v18 = [v17 objectAtIndex:i];

      v19 = [MEMORY[0x1E695DFB0] null];

      if (v18 != v19)
      {
        v20 = [v5 highlightedVariantsList];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        if ([v20 containsObject:v21])
        {
          [v6 highlightedVariantTraits];
        }

        else
        {
          [v6 variantTraits];
        }
        v22 = ;

        v23 = [v6 variantGeometries];
        v24 = [v23 objectAtIndex:i];
        [v22 setGeometry:v24];

        [(UIKBRenderer *)self renderKeyContents:v18 withTraits:v22];
      }
    }
  }
}

- (void)renderKeyContents:(id)a3 withTraits:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(UIKBRenderer *)self ensureContext];
  ctx = self->_ctx;
  if (ctx)
  {
    CGContextSaveGState(ctx);
  }

  [(UIKBRenderer *)self renderBackgroundTraits:v7 allowCaching:1];
  if ([v6 stringKeycapOverImage])
  {
    v9 = [(UIKBRenderer *)self renderKeyStringContents:v6 withTraits:v7 status:0];
    if (v9 != 3 && ![(UIKBRenderer *)self renderKeyImageContents:v6 withTraits:v7 status:v9])
    {
LABEL_9:
      [(UIKBRenderer *)self renderKeyPathContents:v6 withTraits:v7];
    }
  }

  else
  {
    v10 = [(UIKBRenderer *)self renderKeyImageContents:v6 withTraits:v7 status:0];
    if (v10 != 3 && ![(UIKBRenderer *)self renderKeyStringContents:v6 withTraits:v7 status:v10])
    {
      goto LABEL_9;
    }
  }

  v11 = self->_ctx;
  if (v11)
  {
    CGContextRestoreGState(v11);
  }

  v12 = [v7 geometry];
  if (!v12 || (v13 = v12, [v7 geometry], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "flickDirection"), v14, v13, v15 == -3))
  {
    v16 = [v6 variantDisplayContents];

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = [v7 variantGeometries];
  if (v17)
  {
    v18 = v17;
    v19 = [v6 variantDisplayContents];

    if (v19)
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
LABEL_19:
      [(UIKBRenderer *)self _renderVariantsFromKeyContents:v6 withTraits:v7];
      goto LABEL_20;
    }
  }

  v20 = [v7 variantTraits];
  v21 = [v20 geometry];

  if (v21)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [v6 highlightedVariantsList];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v31 + 1) + 8 * v26);
          v28 = [v6 variantDisplayContents];
          v29 = [v28 objectAtIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];

          v30 = [v7 variantTraits];
          [(UIKBRenderer *)self renderKeyContents:v29 withTraits:v30];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
  }

LABEL_20:
}

- (void)renderBackgroundTraits:(id)a3
{
  v4 = a3;
  [(UIKBRenderer *)self ensureContext];
  [(UIKBRenderer *)self renderBackgroundTraits:v4 allowCaching:0];
}

- (void)_completeCacheImageWithTraitsIfNecessary:(id)a3
{
  v4 = [a3 hashString];
  if (v4)
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

- (BOOL)loadCachedImageForHashString:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (v4 && __UIKBBGCache)
  {
    v6 = [(UIKBRenderer *)self cacheKey];

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIKBRenderer renderFlags](self, "renderFlags")}];
      v8 = [v7 stringValue];
      v9 = [v4 stringByAppendingString:v8];

      v10 = [__UIKBBGCache objectForKey:v9];
      if (v10)
      {
        v11 = [UIKBCachedImage alloc];
        v12 = [v10 CGImage];
        [(UIKBRenderer *)self scale];
        v13 = [(UIKBCachedImage *)v11 initWithCGImage:v12 scale:1 orientation:?];
        renderedImage = self->_renderedImage;
        self->_renderedImage = v13;
      }

      v5 = self->_renderedImage != 0;
    }
  }

  return v5;
}

- (void)renderBackgroundTraits:(id)a3 allowCaching:(BOOL)a4
{
  v4 = a4;
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIKBRenderer *)self renderFlags];
  v8 = [(UIKBRenderer *)self renderFlags];
  v71 = [(UIKBRenderer *)self renderFlags];
  v9 = [v6 backgroundGradient];
  v10 = [v6 layeredBackgroundGradient];
  v11 = [v6 layeredForegroundGradient];
  v73 = [v6 renderEffects];
  v12 = (v8 >> 1) & 1;
  if ([v6 blendForm] != 3)
  {
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 2)
  {
    LODWORD(v12) = 0;
    v7 = 1;
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 1)
  {

    v13 = [v6 foregroundRenderEffects];
    v9 = v11;
  }

  else
  {
    if ([(UIKBRenderer *)self renderFlags]!= 4)
    {
      goto LABEL_9;
    }

    v13 = 0;
  }

  v11 = 0;
  v73 = v13;
LABEL_9:
  if (v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v70 = v14;
  v72 = v11;
  v15 = (v11 != 0) & (v71 >> 2);
  if ([v6 blendForm] == 1)
  {
    v15 &= [v6 controlOpacities] ^ 1;
  }

  if (((v7 | v12) & 1) == 0 && !v15)
  {
    goto LABEL_89;
  }

  v16 = [v6 geometry];
  [v16 displayFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *&v88 = v17;
  *(&v88 + 1) = v19;
  *&v89 = v21;
  *(&v89 + 1) = v23;

  v25 = [(UIKBRenderer *)self renderFlags];
  v69 = v10;
  if (self->_colorDetectMode)
  {
LABEL_17:
    v68 = 0;
    goto LABEL_18;
  }

  v27 = v25;
  v68 = 0;
  if (![(UIKBRenderer *)self disableInternalCaching])
  {
    v28 = v27 & 3;
    if ((v27 & 3) != 0 && v4)
    {
      v29 = [v6 hashString];
      if (v29)
      {
        cachingContext = self->_cachingContext;

        if (!cachingContext)
        {
          if (renderBackgroundTraits_allowCaching__onceToken != -1)
          {
            dispatch_once(&renderBackgroundTraits_allowCaching__onceToken, &__block_literal_global_2534);
          }

          v31 = [v6 hashString];
          v32 = [v31 stringByAppendingFormat:@"%d", v28];

          v33 = [__UIKBBGCache objectForKey:v32];
          if (v33)
          {
            v34 = v33;
            BlendMode = CGContextGetBlendMode();
            CGContextSetBlendMode(self->_ctx, kCGBlendModeCopy);
            ctx = self->_ctx;
            v37 = [v34 CGImage];
            v93.origin.x = v18;
            v93.origin.y = v20;
            v93.size.width = v22;
            v93.size.height = v24;
            CGContextDrawImage(ctx, v93, v37);
            CGContextSetBlendMode(self->_ctx, BlendMode);
            [v34 CGImage];
            v38 = CGImageGetProperty();
            v39 = [v38 integerValue];
            if (v39 < self->_contentColorFormat)
            {
              self->_contentColorFormat = v39;
            }

            v10 = v69;
            if ([v34 hasFormatColor])
            {
              v40 = [v34 formatColor];
              -[UIKBRenderer _addDetectedColor:](self, "_addDetectedColor:", [v40 CGColor]);
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
  if (v7)
  {
    v26 = ([v6 blurBlending] & 1) != 0 || objc_msgSend(v6, "blendForm") == 3;
  }

  else
  {
    v26 = 0;
  }

  v10 = v69;
  v41 = v12 && ([v6 blurBlending] & 1) == 0 && objc_msgSend(v6, "blendForm") != 3;
  if ([v6 renderFlagsForAboveEffects])
  {
    v42 = [v6 renderFlagsForAboveEffects];
    v65 = ([(UIKBRenderer *)self renderFlags]& v42) != 0;
    v66 = (v42 >> 1) & 1;
    v67 = v42;
  }

  else
  {
    LODWORD(v66) = v41;
    v67 = v26;
    v65 = 0;
  }

  v43 = v7 | v70 | v15;
  if (!v12)
  {
    goto LABEL_62;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v44 = v73;
  v45 = [v44 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (!v45)
  {

    v43 = v7 | v70 | v15;
    goto LABEL_62;
  }

  v46 = v45;
  v64 = v9;
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
          v51 = [(UIKBRenderer *)self context];
          v94.origin.x = v18;
          v94.origin.y = v20;
          v94.size.width = v22;
          v94.size.height = v24;
          CGContextAddRect(v51, v94);
          [(UIKBRenderer *)self addPathForTraits:v6 displayRect:0];
          CGContextEOClip([(UIKBRenderer *)self context]);
LABEL_53:
          v47 = 1;
        }

        else
        {
          v47 = 0;
        }

        [v50 renderEffectWithRenderer:self traits:v6];
      }

      ++v49;
    }

    while (v46 != v49);
    v52 = [v44 countByEnumeratingWithState:&v83 objects:v91 count:16];
    v46 = v52;
  }

  while (v52);

  v9 = v64;
  v10 = v69;
  v43 = v7 | v70 | v15;
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
      [(UIKBRenderer *)self addPathForTraits:v6 displayRect:&v88];
      if (!CGContextIsPathEmpty([(UIKBRenderer *)self context]))
      {
        CGContextClip([(UIKBRenderer *)self context]);
      }
    }

    if (!v70)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_91:
      [(UIKBRenderer *)self _drawLinearGradient:v9 inRect:v88, v89];
      if (!v15)
      {
        goto LABEL_70;
      }

LABEL_69:
      [(UIKBRenderer *)self _drawLinearGradient:v72 inRect:v88, v89];
      goto LABEL_70;
    }

    [(UIKBRenderer *)self _drawLinearGradient:v10 inRect:v88, v89];
    if (v7)
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
    v53 = v73;
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
            [v58 renderEffectWithRenderer:self traits:v6];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v55);
    }

    v10 = v69;
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

    if ((v71 & 4) != 0)
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v6];
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

- (void)_drawLinearGradient:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (v9)
  {
    v16 = v9;
    v10 = [v9 horizontal];
    v11 = y + height;
    if (v10)
    {
      v12 = x + width;
    }

    else
    {
      v12 = x;
    }

    if (v10)
    {
      v13 = y;
    }

    else
    {
      v13 = v11;
    }

    v14 = [v16 CGGradient];
    if (self->_colorDetectMode)
    {
      [(UIKBRenderer *)self detectColorsForGradient:v16];
    }

    else if ([(UIKBRenderer *)self context])
    {
      v15 = [(UIKBRenderer *)self context];
      v18.x = x;
      v18.y = y;
      v19.x = v12;
      v19.y = v13;
      CGContextDrawLinearGradient(v15, v14, v18, v19, 0);
    }

    CGGradientRelease(v14);
    v9 = v16;
  }
}

- (void)renderDivotEffect:(id)a3 withTraits:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v26 = [v5 _kitImageNamed:@"spacekey_grabber_handles.png" withTrait:0];
  v7 = [v6 geometry];

  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v26 size];
  v17 = v16;
  v19 = v18;
  v20 = v11 + (v15 - v18) * 0.5 + -1.0;
  v21 = [(UIKBRenderer *)self context];
  v22 = v26;
  v23 = [v26 CGImage];
  v28.origin.x = v9 + 8.0;
  v28.origin.y = v20;
  v28.size.width = v17;
  v28.size.height = v19;
  CGContextDrawImage(v21, v28, v23);
  v24 = v26;
  v25 = [v26 CGImage];
  v29.origin.x = v9 + v13 - v17 + -8.0;
  v29.origin.y = v20;
  v29.size.width = v17;
  v29.size.height = v19;
  CGContextDrawImage(v21, v29, v25);
}

- (void)renderShadowEffect:(id)a3 withTraits:(id)a4
{
  v54 = a3;
  v6 = a4;
  v7 = [v6 geometry];
  if ([v54 isValid])
  {
    [v7 displayFrame];
    if (!CGRectIsEmpty(v57))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:v54];
        goto LABEL_32;
      }

      v8 = [(UIKBRenderer *)self context];
      CGContextSaveGState(v8);
      v9 = [v54 CGColor];
      [v54 offset];
      v11 = v10;
      v13 = v12;
      [v54 weight];
      v15 = v14;
      v56.width = v11;
      v56.height = v13;
      CGContextSetShadowWithColor(v8, v56, v15, v9);
      CGColorRelease(v9);
      v16 = [MEMORY[0x1E69DC888] whiteColor];
      CGContextSetFillColorWithColor(v8, [v16 CGColor]);

      v17 = v6;
      [v54 insets];
      v19.f64[1] = v18;
      v21.f64[1] = v20;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *MEMORY[0x1E69DDCE0]), vceqq_f64(v21, *(MEMORY[0x1E69DDCE0] + 16))))))
      {
        goto LABEL_31;
      }

      v22 = [v7 copy];
      v23 = [v17 variantGeometries];
      if (!v23 || [v7 popupBias])
      {
        [v54 insets];
        [v22 applyShadowInsets:?];
        v24 = v23;
LABEL_30:
        v51 = [MEMORY[0x1E69DCB58] traitsWithGeometry:v22];

        [v51 setVariantGeometries:v24];
        v17 = v51;
LABEL_31:
        [(UIKBRenderer *)self addPathForTraits:v17 displayRect:0];
        CGContextFillPath(v8);
        CGContextRestoreGState(v8);

        goto LABEL_32;
      }

      v52 = v17;
      v53 = v22;
      v24 = [MEMORY[0x1E695DF70] array];
      if (![v23 count])
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
        v27 = [v23 objectAtIndex:v25];
        v28 = [*(v26 + 4016) null];

        if (v27 != v28)
        {
          break;
        }

        v38 = [*(v26 + 4016) null];
LABEL_28:
        [v24 addObject:v38];

        ++v25;
        v26 = 0x1E695D000;
        if (v25 >= [v23 count])
        {
          goto LABEL_29;
        }
      }

      if (!v25)
      {
        v38 = [v27 copy];
        [v54 concaveInsets];
        v43 = v38;
LABEL_27:
        [v43 applyInsets:{v39, v40, v41, v42}];
        goto LABEL_28;
      }

      [v54 insets];
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
            [v54 concaveInsets];
            v36 = -v44;
            goto LABEL_22;
          }

LABEL_26:
          v43 = [v27 copy];
          v38 = v43;
          v39 = v30;
          v40 = v32;
          v41 = v34;
          v42 = v36;
          goto LABEL_27;
        }

        [v54 concaveInsets];
        v30 = -v48;
      }

      else
      {
        if (v25 != 1)
        {
          if (v25 == 2)
          {
            [v54 concaveInsets];
            v32 = -v37;
LABEL_22:
            [v54 concaveInsets];
            v30 = v45;
            [v54 concaveInsets];
            v34 = v46;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        [v54 concaveInsets];
        v34 = -v47;
      }

      [v54 concaveInsets];
      v32 = v49;
      [v54 concaveInsets];
      v36 = v50;
      goto LABEL_26;
    }
  }

LABEL_32:
}

- (void)renderEdgeEffect:(id)a3 withTraits:(id)a4
{
  v111 = a3;
  v6 = a4;
  v7 = [v6 geometry];
  [v7 paddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([v111 isValid])
  {
    v113.origin.x = v9;
    v113.origin.y = v11;
    v113.size.width = v13;
    v113.size.height = v15;
    if (!CGRectIsEmpty(v113))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:v111];
        goto LABEL_42;
      }

      v16 = [(UIKBRenderer *)self context];
      v17 = [v7 roundRectCorners];
      [v7 roundRectRadius];
      v110 = v18;
      [v111 insets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v7 displayFrame];
      UIRectInset();
      v109.origin.x = v27;
      v109.origin.y = v28;
      v109.size.width = v29;
      v109.size.height = v30;
      if ([v111 edges] == 15)
      {
        if ((v17 + 1) < 2)
        {
          CGContextSaveGState(v16);
          v31 = [v111 CGColor];
          CGContextSetStrokeColorWithColor(v16, v31);
          v32 = [v6 variantGeometries];
          if (v32)
          {
            v33 = v32;
            if ([v7 detachedVariants])
            {

LABEL_33:
              if ([v7 flickDirection] != -3)
              {
                UIRectInset();
                v98 = v97;
                v100 = v99;
                v102 = v101;
                v104 = v103;
                v105 = [(UIKBRenderer *)self context];
                v116.origin.x = v98;
                v116.origin.y = v100;
                v116.size.width = v102;
                v116.size.height = v104;
                CGContextAddRect(v105, v116);
              }

              [(UIKBRenderer *)self addPathForTraits:v6 displayRect:0];
              [v111 weight];
              CGContextSetLineWidth(v16, v106);
              CGContextStrokePath(v16);
              goto LABEL_39;
            }

            v96 = [v7 flickDirection];

            if (v96 != -3)
            {
              goto LABEL_33;
            }
          }

          if ([v7 flickDirection] == -3)
          {
            if (v110 == 0.0 && !v17)
            {
              [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v11 + v20, v13 - (v22 + v26), v15 - (v20 + v24), 0.0];
              [v111 edges];
              [v111 weight];
              UIRectInsetEdges();
              [UIKBRenderer addRoundRect:"addRoundRect:radius:corners:" radius:0 corners:?];
              CGContextEOClip(v16);
              CGContextSetFillColorWithColor(v16, v31);
              CGContextFillRect(v16, v109);
LABEL_39:
              v95 = v31;
              goto LABEL_40;
            }

            v107 = [v7 copy];
            [v107 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForRenderGeometry:v107];
          }

          else
          {
            v107 = [v7 copy];
            [v107 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForFlickGeometry:v107];
          }

          [v111 weight];
          CGContextSetLineWidth(v16, v108);
          CGContextStrokePath(v16);

          goto LABEL_39;
        }

        v34 = 0;
        v35 = v110 == 0.0;
      }

      else
      {
        v34 = v17 == 0;
        v35 = v110 == 0.0;
        if (v110 == 0.0 && !v17)
        {
          CGContextSaveGState(v16);
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 corners:v11, v13, v15, 0.0];
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v11 + v20, v13 - (v22 + v26), v15 - (v20 + v24), 0.0];
          CGContextEOClip(v16);
          v36 = [v111 gradient];

          if (v36)
          {
            v37 = [v111 gradient];
            [v7 displayFrame];
            v42 = self;
            v43 = v37;
LABEL_26:
            [(UIKBRenderer *)v42 _drawLinearGradient:v43 inRect:x, y, width, height];

LABEL_41:
            CGContextRestoreGState(v16);
            goto LABEL_42;
          }

LABEL_27:
          v94 = [v111 CGColor];
          CGContextSetFillColorWithColor(v16, v94);
          CGContextFillRect(v16, v109);
          v95 = v94;
LABEL_40:
          CGColorRelease(v95);
          goto LABEL_41;
        }
      }

      CGContextSaveGState(v16);
      [v111 insets];
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
        [v111 edges];
        [v111 weight];
        UIRectInsetEdges();
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v114.origin.x = v81;
        v114.origin.y = v82;
        v114.size.width = v83;
        v114.size.height = v84;
        CGContextAddRect(v16, v114);
        v115.origin.x = v86;
        v115.origin.y = v88;
        v115.size.width = v90;
        v115.size.height = v92;
        CGContextAddRect(v16, v115);
      }

      else
      {
        v52 = 0.0;
        if ([v7 popupBias])
        {
          v53 = 0.0;
        }

        else
        {
          v53 = v48;
        }

        v54 = [v7 copy];
        [v54 paddedFrame];
        v57 = v49 + v51;
        [v54 setPaddedFrame:{v49 + v55, v53 + v56, v58 - v57, v59 - (v50 + v53)}];
        [v54 displayFrame];
        [v54 setDisplayFrame:{v49 + v60, v48 + v61, v62 - v57, v63 - (v48 + v50)}];
        [(UIKBRenderer *)self addPathForRenderGeometry:v54];
        [v111 edges];
        [v111 weight];
        UIEdgeInsetsMakeWithEdges();
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        if (![v7 popupBias])
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

      CGContextEOClip(v16);
      v93 = [v111 gradient];

      if (v93)
      {
        v37 = [v111 gradient];
        v42 = self;
        v43 = v37;
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
      v8 = [(UIKBRenderer *)self singleColor];
      [(UIImage *)v7 setFormatColor:v8];

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

- (void)detectColorsForEffect:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [v4 gradient];
    [(UIKBRenderer *)self detectColorsForGradient:v6];

    v7 = [v8 CGColor];
    [(UIKBRenderer *)self _addDetectedColor:v7];
    CGColorRelease(v7);
    v5 = v8;
    if (self->_contentColorFormat == 1)
    {
      v4 = [v8 usesRGBColors];
      v5 = v8;
      if (v4)
      {
        self->_contentColorFormat = 0;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)detectColorsForGradient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 flatColorName];
    [(UIKBRenderer *)self detectColorsForNamedColor:v5];
    if (self->_contentColorFormat == 1 && [v7 usesRGBColors])
    {
      self->_contentColorFormat = 0;
    }

    if (!v5)
    {
      self->_colorCount = 2;
      singleColor = self->_singleColor;
      self->_singleColor = 0;
    }

    v4 = v7;
  }
}

- (void)detectColorsForNamedColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = UIKBGetNamedColor(v4);
    v4 = [(UIKBRenderer *)self _addDetectedColor:v6];
    v5 = v7;
    if (self->_contentColorFormat == 1)
    {
      v4 = UIKBColorUsesRGB(v6);
      v5 = v7;
      if (v4)
      {
        self->_contentColorFormat = 0;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_addDetectedColor:(CGColor *)a3
{
  if (!a3 || self->_colorCount > 1)
  {
    return;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(a3, 1.0);
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
  v3 = [(UIKBRenderer *)self singleColor];

  if (v3)
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

- (UIKBRenderer)initWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8
{
  height = a4.height;
  width = a4.width;
  v19.receiver = self;
  v19.super_class = UIKBRenderer;
  v15 = [(UIKBRenderer *)&v19 init];
  if (v15)
  {
    v15->_ctx = CGContextRetain(a3);
    v15->_size.width = width;
    v15->_size.height = height;
    v15->_scale = a5;
    v15->_opaque = a6;
    v15->_renderFlags = a7;
    v15->_forceColorFormat = 0;
    v15->_colorCount = 0;
    v16 = MEMORY[0x1E695F050];
    v15->_contentColorFormat = 1;
    v15->_assetIdiom = a8;
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

+ (CGContext)imageContextWithSize:(CGSize)a3 scale:(double)a4 colorFormat:(int64_t)a5 opaque:(BOOL)a6 invert:(BOOL)a7
{
  LODWORD(v8) = vcvtpd_s64_f64(a3.width * a4);
  LODWORD(v7) = vcvtpd_s64_f64(a3.height * a4);
  if (v8 < 1 || v7 < 1)
  {
    return 0;
  }

  v11 = a7;
  if (a5 == 2)
  {
    DeviceGray = 0;
    v15 = 7;
  }

  else
  {
    v13 = a6;
    if (a5 == 1)
    {
      DeviceGray = UIKBColorSpaceDeviceGray_colorspace;
      if (!UIKBColorSpaceDeviceGray_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
        UIKBColorSpaceDeviceGray_colorspace = DeviceGray;
      }

      v15 = !v13;
    }

    else
    {
      DeviceGray = UIKBColorSpaceDeviceRGB_colorspace;
      if (!UIKBColorSpaceDeviceRGB_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
        UIKBColorSpaceDeviceRGB_colorspace = DeviceGray;
      }

      if (v13)
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
    if (v11)
    {
      CGContextTranslateCTM(v17, 0.0, v7);
      CGContextScaleCTM(v10, a4, -a4);
      CGContextGetCTM(&v19, v10);
      CGContextSetBaseCTM();
    }

    else
    {
      CGContextScaleCTM(v17, a4, a4);
    }
  }

  return v10;
}

+ (id)rendererWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8
{
  v8 = [[a1 alloc] initWithContext:a3 withSize:a6 withScale:a7 opaque:a8 renderFlags:a4.width assetIdiom:{a4.height, a5}];

  return v8;
}

@end