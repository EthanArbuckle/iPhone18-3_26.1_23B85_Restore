@interface PUReviewScreenUtilities
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBarFrame:(SEL)a3 inReferenceBounds:(CGRect)a4 orientation:(CGRect)a5;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForCameraTopBarFrame:(SEL)a3 inReferenceBounds:(CGRect)a4 forContentSize:(CGRect)a5 orientation:(CGSize)a6;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraBottomBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraContentGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5 shouldShiftPreviewForUtilityBar:(int64_t)a6;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraTopBarGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenContentGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenControlBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenScrubberBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenScrubberBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4 safeAreaInsets:(int64_t)a5;
+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenTopBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4;
+ (BOOL)useCompactControlBarButtonsForReferenceBounds:(CGRect)a3;
+ (CGAffineTransform)_transformForRotationAboutCenterOfReferenceBounds:(SEL)a3 withOrientationTransform:(CGRect)a4;
+ (CGRect)_orientedBoundsForReferenceBounds:(CGRect)result sizeClass:(unint64_t)a4;
+ (CGRect)_portraitBoundsForReferenceBounds:(CGRect)a3;
+ (CGRect)cameraBottomBarFrameForReferenceBounds:(CGRect)a3;
+ (CGRect)cameraContentFrameForContentAspectRatio:(double)a3 referenceBounds:(CGRect)a4;
+ (CGRect)cameraContentFrameForContentAspectRatio:(double)a3 referenceBounds:(CGRect)a4 shouldShiftPreviewForUtilityBar:(BOOL)a5;
+ (CGRect)cameraTopBarFrameForReferenceBounds:(CGRect)a3;
+ (CGRect)reviewScreenControlBarFrameForReferenceBounds:(CGRect)a3;
+ (CGRect)reviewScreenScrubberBarFrameForReferenceBounds:(CGRect)a3;
+ (CGRect)reviewScreenScrubberBarFrameForReferenceBounds:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4;
+ (CGRect)reviewScreenTopBarFrameForReferenceBounds:(CGRect)a3;
+ (UIEdgeInsets)_layoutMarginInsetsForSizeSpec:(id *)a3;
+ (double)_cameraBottomBarHeightForSizeSpec:(id *)a3;
+ (double)_cameraBottomBarWidthForSizeSpec:(id *)a3;
+ (double)_cameraTopBarHeightForSizeSpec:(id *)a3;
+ (double)_reviewScreenControlBarHeightForSizeSpec:(id *)a3;
+ (double)_reviewScreenControlBarWidthForSizeSpec:(id *)a3;
+ (double)_reviewScreenScrubberBarHeightForSizeClass:(unint64_t)a3;
+ (double)_reviewScreenTopBarHeightForSizeSpec:(id *)a3;
+ (unint64_t)doneButtonStyleForReferenceBounds:(CGRect)a3;
@end

@implementation PUReviewScreenUtilities

+ (CGRect)_orientedBoundsForReferenceBounds:(CGRect)result sizeClass:(unint64_t)a4
{
  if (a4 <= 6)
  {
    [a1 _portraitBoundsForReferenceBounds:{result.origin.x, result.origin.y, result.size.width, result.size.height, v4, v5}];
  }

  return result;
}

+ (CGAffineTransform)_transformForRotationAboutCenterOfReferenceBounds:(SEL)a3 withOrientationTransform:(CGRect)a4
{
  [a2 _portraitBoundsForReferenceBounds:?];
  UIRectGetCenter();
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, -v7, -v8);
  v9 = *&v22.a;
  v10 = *&v22.c;
  *&retstr->a = *&v22.a;
  *&retstr->c = v10;
  v11 = *&v22.tx;
  *&retstr->tx = *&v22.tx;
  *&t1.a = v9;
  *&t1.c = v10;
  *&t1.tx = v11;
  v12 = *&a5->c;
  *&t2.a = *&a5->a;
  *&t2.c = v12;
  *&t2.tx = *&a5->tx;
  CGAffineTransformConcat(retstr, &t1, &t2);
  UIRectGetCenter();
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeTranslation(&t1, v13, v14);
  v15 = *&retstr->c;
  *&v19.a = *&retstr->a;
  *&v19.c = v15;
  *&v19.tx = *&retstr->tx;
  v18 = t1;
  result = CGAffineTransformConcat(&t2, &v19, &v18);
  v17 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v17;
  *&retstr->tx = *&t2.tx;
  return result;
}

+ (CGRect)_portraitBoundsForReferenceBounds:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = fmin(a3.size.width, a3.size.height);
  v6 = fmax(a3.size.width, a3.size.height);
  v7 = v5;
  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForCameraTopBarFrame:(SEL)a3 inReferenceBounds:(CGRect)a4 forContentSize:(CGRect)a5 orientation:(CGSize)a6
{
  width = a6.width;
  height = a5.size.height;
  v9 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  result = PUReviewScreenSizeClassForReferenceSize(a5.size.width, a5.size.height);
  if (result == 7)
  {
    retstr->var1 = xmmword_1B3D0D6B0;
    *&retstr->var2.a = unk_1B3D0D6C0;
    *&retstr->var2.c = xmmword_1B3D0D6D0;
    *&retstr->var2.tx = unk_1B3D0D6E0;
    retstr->var0.origin = PUReviewScreenGeometryZero;
    retstr->var0.size = unk_1B3D0D6A0;
    return result;
  }

  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  retstr->var0.origin = 0u;
  *&retstr->var2.a = 0u;
  retstr->var2.a = 1.0;
  retstr->var2.d = 1.0;
  v19 = v34 == 0.0 || v33 == 0.0;
  v20 = v33 / v34;
  if (v19)
  {
    v20 = 1.0;
  }

  [a2 cameraContentFrameForContentAspectRatio:v20 referenceBounds:{x, y, v9, height}];
  v31.origin.x = v21;
  v31.origin.y = v22;
  v31.size.width = v23;
  v31.size.height = v24;
  *v32 = v9;
  *&v32[1] = height;
  v32[2] = PUReviewScreenSizeClassForReferenceSize(v9, height);
  result = [a2 _cameraTopBarHeightForSizeSpec:v32];
  if (*&width < 3uLL)
  {
    return [a2 _geometryForBarFrame:1 inReferenceBounds:v15 orientation:{v14, v13, v12, x, y, v9, height}];
  }

  if (*&width == 3)
  {
    retstr->var0.origin.x = 0.0;
    retstr->var0.origin.y = 0.0;
    retstr->var0.size.width = v13;
    retstr->var0.size.height = v12;
    v29 = CGRectGetMaxX(v31) + -8.0 + v25 * -0.5;
    MidY = CGRectGetMidY(v31);
    retstr->var1.x = v29;
    retstr->var1.y = MidY;
    v28 = 1.57079633;
  }

  else
  {
    if (*&width != 4)
    {
      return result;
    }

    retstr->var0.origin.x = 0.0;
    retstr->var0.origin.y = 0.0;
    retstr->var0.size.width = v13;
    retstr->var0.size.height = v12;
    v26 = v25 * 0.5 + CGRectGetMinX(v31) + 8.0;
    v27 = CGRectGetMidY(v31);
    retstr->var1.x = v26;
    retstr->var1.y = v27;
    v28 = -1.57079633;
  }

  return CGAffineTransformMakeRotation(&retstr->var2, v28);
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)_geometryForBarFrame:(SEL)a3 inReferenceBounds:(CGRect)a4 orientation:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v15 = *MEMORY[0x1E695EFF8];
  v16 = *(MEMORY[0x1E695EFF8] + 8);
  UIRectGetCenter();
  v24 = v18;
  v26 = v17;
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  *&v31.a = *MEMORY[0x1E695EFD0];
  *&v31.c = v19;
  *&v31.tx = *(MEMORY[0x1E695EFD0] + 32);
  result = PUReviewScreenSizeClassForReferenceSize(width, height);
  v21.x = v26;
  v21.y = v24;
  if ((~result & 6) != 0)
  {
    v25 = v21;
    PUReviewScreenAffineTransformForOrientation(&v31, a6);
    v29 = 0u;
    v30 = 0u;
    v27 = v31;
    v28 = 0u;
    result = [a2 _transformForRotationAboutCenterOfReferenceBounds:&v27 withOrientationTransform:{x, y, width, height}];
    v21 = vaddq_f64(v30, vmlaq_n_f64(vmulq_laneq_f64(v29, v25, 1), v28, v26));
  }

  v22 = *&v31.a;
  v23 = *&v31.tx;
  *&retstr->var2.c = *&v31.c;
  *&retstr->var2.tx = v23;
  retstr->var1 = v21;
  *&retstr->var2.a = v22;
  retstr->var0.origin.x = v15;
  retstr->var0.origin.y = v16;
  retstr->var0.size.width = v12;
  retstr->var0.size.height = v11;
  return result;
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenScrubberBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4 safeAreaInsets:(int64_t)a5
{
  [a2 reviewScreenScrubberBarFrameForReferenceBounds:a4.origin.x safeAreaInsets:{a4.origin.y, a4.size.width, a4.size.height, a6.top, a6.left, a6.bottom, a6.right}];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;

  return [a2 _geometryForBarFrame:a5 inReferenceBounds:? orientation:?];
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenScrubberBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4
{
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  return [a2 reviewScreenScrubberBarGeometryForReferenceBounds:a5 withOrientation:a4.origin.x safeAreaInsets:{a4.origin.y, a4.size.width, a4.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenControlBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4
{
  [a2 reviewScreenControlBarFrameForReferenceBounds:?];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;

  return [a2 _geometryForBarFrame:a5 inReferenceBounds:? orientation:?];
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenTopBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4
{
  [a2 reviewScreenTopBarFrameForReferenceBounds:?];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;

  return [a2 _geometryForBarFrame:a5 inReferenceBounds:? orientation:?];
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)reviewScreenContentGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = PUReviewScreenSizeClassForReferenceSize(a4.size.width, a4.size.height);
  v16 = v15 < 6;
  v17 = (a6 - 3) < 2;
  v18 = v17 && v16;
  if (v17 && v16)
  {
    v19 = width;
  }

  else
  {
    v19 = height;
  }

  if (v17 && v16)
  {
    v20 = height;
  }

  else
  {
    v20 = width;
  }

  v21 = v19 == 0.0 || v20 == 0.0;
  v22 = v20 / v19;
  if (v21)
  {
    v22 = 1.0;
  }

  [a2 cameraContentFrameForContentAspectRatio:v15 == 0 referenceBounds:v22 shouldShiftPreviewForUtilityBar:{x, y, v10, v9}];
  v24 = v23;
  v26 = v25;
  v27 = *MEMORY[0x1E695EFF8];
  v28 = *(MEMORY[0x1E695EFF8] + 8);
  result = UIRectGetCenter();
  v32.x = v30;
  v32.y = v31;
  if (v18)
  {
    memset(&v44, 0, sizeof(v44));
    v38 = v32;
    v39 = v30;
    PUReviewScreenAffineTransformForOrientation(&v44, a6);
    v42 = 0u;
    v43 = 0u;
    v40 = v44;
    v41 = 0u;
    result = [a2 _transformForRotationAboutCenterOfReferenceBounds:&v40 withOrientationTransform:{x, y, v10, v9}];
    v32 = vaddq_f64(v43, vmlaq_n_f64(vmulq_laneq_f64(v42, v38, 1), v41, v39));
    v33 = v26;
  }

  else
  {
    v33 = v24;
    v24 = v26;
  }

  retstr->var0.origin.x = v27;
  retstr->var0.origin.y = v28;
  retstr->var0.size.width = v33;
  retstr->var0.size.height = v24;
  v34 = MEMORY[0x1E695EFD0];
  v35 = *MEMORY[0x1E695EFD0];
  v36 = *(MEMORY[0x1E695EFD0] + 16);
  retstr->var1 = v32;
  *&retstr->var2.a = v35;
  v37 = *(v34 + 32);
  *&retstr->var2.c = v36;
  *&retstr->var2.tx = v37;
  return result;
}

+ (CGRect)reviewScreenScrubberBarFrameForReferenceBounds:(CGRect)a3 safeAreaInsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  [a1 _orientedBoundsForReferenceBounds:v10 sizeClass:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a1 _reviewScreenScrubberBarHeightForSizeClass:v10];
  v20 = v19;
  v21 = bottom + v19;
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  v22 = CGRectGetMaxY(v26) - v20;
  v23 = v12;
  v24 = v16;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

+ (CGRect)reviewScreenScrubberBarFrameForReferenceBounds:(CGRect)a3
{
  [a1 reviewScreenScrubberBarFrameForReferenceBounds:a3.origin.x safeAreaInsets:{a3.origin.y, a3.size.width, a3.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (double)_reviewScreenScrubberBarHeightForSizeClass:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 7)
  {
    if (PUPixelWidth_onceToken != -1)
    {
      dispatch_once(&PUPixelWidth_onceToken, &__block_literal_global_2);
    }

    return *&PUPixelWidth_pixelWidth + 47.5;
  }

  return result;
}

+ (CGRect)reviewScreenControlBarFrameForReferenceBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  [a1 _orientedBoundsForReferenceBounds:v8 sizeClass:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25 = width;
  v26 = height;
  v27 = v8;
  [a1 _reviewScreenControlBarHeightForSizeSpec:&v25];
  v18 = v17;
  v25 = width;
  v26 = height;
  v27 = v8;
  [a1 _reviewScreenControlBarWidthForSizeSpec:&v25];
  v20 = v19;
  if (v18 == 0.0)
  {
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v10 = CGRectGetMaxX(v28) - v20;
    v14 = v20;
  }

  else if (v19 == 0.0)
  {
    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    v12 = CGRectGetMaxY(v29) - v18;
    v16 = v18;
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (double)_reviewScreenControlBarWidthForSizeSpec:(id *)a3
{
  v4 = *a3;
  [a1 _cameraBottomBarWidthForSizeSpec:&v4];
  return result;
}

+ (double)_reviewScreenControlBarHeightForSizeSpec:(id *)a3
{
  if (!a3->var1)
  {
    return 141.0;
  }

  v9 = *a3;
  [a1 _cameraBottomBarHeightForSizeSpec:&v9];
  v6 = v5;
  v9 = *a3;
  [a1 _layoutMarginInsetsForSizeSpec:&v9];
  return v6 + v7;
}

+ (CGRect)reviewScreenTopBarFrameForReferenceBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [a1 _orientedBoundsForReferenceBounds:PUReviewScreenSizeClassForReferenceSize(a3.size.width sizeClass:{a3.size.height), a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *v17 = width;
  *&v17[1] = height;
  v17[2] = PUReviewScreenSizeClassForReferenceSize(width, height);
  [a1 _reviewScreenTopBarHeightForSizeSpec:v17];
  v13 = v12;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

+ (double)_reviewScreenTopBarHeightForSizeSpec:(id *)a3
{
  v9 = *a3;
  [a1 _cameraTopBarHeightForSizeSpec:&v9];
  if (result == 0.0)
  {
    result = 98.0;
  }

  var1 = a3->var1;
  v6 = var1 > 5;
  v7 = (1 << var1) & 0x32;
  if (!v6 && v7 != 0)
  {
    return 105.0;
  }

  return result;
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraContentGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5 shouldShiftPreviewForUtilityBar:(int64_t)a6
{
  v7 = a7;
  height = a5.height;
  width = a5.width;
  v10 = a4.size.height;
  v11 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  memset(&v28, 0, sizeof(v28));
  PUReviewScreenAffineTransformForOrientation(&v28, a6);
  v16 = height == 0.0 || width == 0.0;
  v17 = width / height;
  if (v16)
  {
    v17 = 1.0;
  }

  [a2 cameraContentFrameForContentAspectRatio:v7 referenceBounds:v17 shouldShiftPreviewForUtilityBar:{x, y, v11, v10}];
  v19 = v18;
  v21 = v20;
  v22 = *MEMORY[0x1E695EFF8];
  v23 = *(MEMORY[0x1E695EFF8] + 8);
  result = UIRectGetCenter();
  v25 = *&v28.c;
  *&retstr->var2.a = *&v28.a;
  *&retstr->var2.c = v25;
  *&retstr->var2.tx = *&v28.tx;
  retstr->var1.x = v26;
  retstr->var1.y = v27;
  retstr->var0.origin.x = v22;
  retstr->var0.origin.y = v23;
  retstr->var0.size.width = v19;
  retstr->var0.size.height = v21;
  return result;
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraBottomBarGeometryForReferenceBounds:(SEL)a3 withOrientation:(CGRect)a4
{
  [a2 cameraBottomBarFrameForReferenceBounds:?];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;

  return [a2 _geometryForBarFrame:a5 inReferenceBounds:? orientation:?];
}

+ ($3B1716E7537CC2F16D6737AAC3CCCADB)cameraTopBarGeometryForReferenceBounds:(SEL)a3 forContentSize:(CGRect)a4 withOrientation:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  [a2 cameraTopBarFrameForReferenceBounds:?];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  *&retstr->var2.a = 0u;
  *&retstr->var2.c = 0u;
  *&retstr->var2.tx = 0u;
  return [a2 _geometryForCameraTopBarFrame:a6 inReferenceBounds:*&width forContentSize:*&height orientation:?];
}

+ (CGRect)cameraContentFrameForContentAspectRatio:(double)a3 referenceBounds:(CGRect)a4 shouldShiftPreviewForUtilityBar:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = PUReviewScreenSizeClassForReferenceSize(a4.size.width, a4.size.height);
  [a1 _orientedBoundsForReferenceBounds:v12 sizeClass:{x, y, width, height}];
  v61 = PURectWithAspectRatioFittingRect(a3, v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = PXFloatEqualToFloatWithTolerance();
  v24 = PXFloatEqualToFloatWithTolerance();
  v25 = PXFloatEqualToFloatWithTolerance();
  if (v12 > 5 || ((1 << v12) & 0x32) == 0)
  {
    v30 = 0;
    v29 = v12 < 6;
    v26 = v12 == 6;
    goto LABEL_6;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  v30 = 1;
  v31 = 1;
  if ((v25 & 1) == 0)
  {
LABEL_6:
    v28 = v30 | v24 & v29 ^ 1;
    v27 = v26;
    v31 = v30;
  }

  v32 = v27 | v29 | v31;
  if (!v23)
  {
    v32 = v27;
  }

  if (((v27 | v28) & 1) == 0)
  {
    [a1 cameraTopBarFrameForReferenceBounds:{x, y, width, height}];
    if (v5)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      MinY = CGRectGetMinY(v63);
LABEL_16:
      v18 = MinY;
      goto LABEL_17;
    }

LABEL_15:
    MinY = CGRectGetMaxY(*&v35);
    goto LABEL_16;
  }

  if ((v24 & v31) != 0)
  {
    [a1 cameraBottomBarFrameForReferenceBounds:{x, y, width, height}];
    v34 = v33;
    [a1 cameraTopBarFrameForReferenceBounds:{x, y, width, height}];
    if (!v5)
    {
      v18 = v34 - v22;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v32)
  {
    [a1 cameraTopBarFrameForReferenceBounds:{x, y, width, height}];
    v45 = v44;
    v47 = v46;
    v59 = v49;
    v60 = v48;
    [a1 cameraBottomBarFrameForReferenceBounds:{x, y, width, height}];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v64.origin.x = v45;
    v64.origin.y = v47;
    v64.size.height = v59;
    v64.size.width = v60;
    MaxY = CGRectGetMaxY(v64);
    v65.origin.x = v51;
    v65.origin.y = v53;
    v65.size.width = v55;
    v65.size.height = v57;
    v18 = (MaxY + CGRectGetMinY(v65)) * 0.5 - v22 * 0.5;
  }

LABEL_17:

  v40 = PURoundRectToPixel(v61, v18, v20, v22);
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

+ (CGRect)cameraContentFrameForContentAspectRatio:(double)a3 referenceBounds:(CGRect)a4
{
  [a1 cameraContentFrameForContentAspectRatio:0 referenceBounds:a3 shouldShiftPreviewForUtilityBar:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)cameraBottomBarFrameForReferenceBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  [a1 _orientedBoundsForReferenceBounds:v8 sizeClass:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27 = width;
  v28 = height;
  v29 = v8;
  [a1 _cameraBottomBarWidthForSizeSpec:&v27];
  v18 = v17;
  v27 = width;
  v28 = height;
  v29 = v8;
  [a1 _cameraBottomBarHeightForSizeSpec:&v27];
  v20 = v19;
  v27 = width;
  v28 = height;
  v29 = v8;
  [a1 _layoutMarginInsetsForSizeSpec:&v27];
  if (v18 == 0.0)
  {
    v22 = v21;
    v30.origin.x = v10;
    v30.origin.y = v12;
    v30.size.width = v14;
    v30.size.height = v16;
    v12 = CGRectGetMaxY(v30) - v22 - v20;
  }

  else if (v20 == 0.0)
  {
    v31.origin.x = v10;
    v31.origin.y = v12;
    v31.size.width = v14;
    v31.size.height = v16;
    v10 = CGRectGetMaxX(v31) - v18;
    v14 = v18;
    v20 = v16;
  }

  else
  {
    v14 = v18;
  }

  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v20;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (double)_cameraBottomBarWidthForSizeSpec:(id *)a3
{
  result = 0.0;
  if (a3->var1 == 7)
  {
    result = a3->var0.width * 0.109375 + 18.0;
    if (result > 130.0)
    {
      result = 130.0;
    }

    if (result < 102.0)
    {
      return 102.0;
    }
  }

  return result;
}

+ (double)_cameraBottomBarHeightForSizeSpec:(id *)a3
{
  var1 = a3->var1;
  result = 0.0;
  if (var1 <= 2)
  {
    if (var1)
    {
      if (var1 == 1)
      {
        if (PUPixelWidth_onceToken != -1)
        {
          dispatch_once(&PUPixelWidth_onceToken, &__block_literal_global_2);
        }

        return 119.0 - *&PUPixelWidth_pixelWidth;
      }

      else if (var1 == 2)
      {
        return 123.0;
      }
    }

    else
    {
      if (PUPixelWidth_onceToken != -1)
      {
        dispatch_once(&PUPixelWidth_onceToken, &__block_literal_global_2);
      }

      return *&PUPixelWidth_pixelWidth + 101.0;
    }
  }

  else if (var1 > 4)
  {
    if (var1 == 5)
    {
      return 145.0;
    }

    else if (var1 == 6)
    {
      if (PUPixelWidth_onceToken != -1)
      {
        v6 = a3;
        dispatch_once(&PUPixelWidth_onceToken, &__block_literal_global_2);
        a3 = v6;
      }

      result = *&PUPixelWidth_pixelWidth + 101.0;
      v5 = a3->var0.width * 0.409574 + -29.5638;
      if (v5 > 140.0)
      {
        v5 = 140.0;
      }

      if (v5 >= result)
      {
        return v5;
      }
    }
  }

  else if (var1 == 3)
  {
    return 140.0;
  }

  else
  {
    return 135.0;
  }

  return result;
}

+ (CGRect)cameraTopBarFrameForReferenceBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  [a1 _orientedBoundsForReferenceBounds:v8 sizeClass:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25 = width;
  v26 = height;
  v27 = v8;
  [a1 _cameraTopBarHeightForSizeSpec:&v25];
  v18 = v17;
  v25 = width;
  v26 = height;
  v27 = v8;
  [a1 _layoutMarginInsetsForSizeSpec:&v25];
  v20 = v19;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v21 = v20 + CGRectGetMinY(v28);
  v22 = v10;
  v23 = v14;
  v24 = v18;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

+ (double)_cameraTopBarHeightForSizeSpec:(id *)a3
{
  var1 = a3->var1;
  if (var1 - 1 < 5)
  {
    return 44.0;
  }

  if (var1 == 6)
  {
    result = a3->var0.width * 0.0727273 + 16.7273;
    if (result > 44.0)
    {
      result = 44.0;
    }

    if (result < 40.0)
    {
      return 40.0;
    }
  }

  else
  {
    result = 0.0;
    if (!var1)
    {
      return 40.0;
    }
  }

  return result;
}

+ (BOOL)useCompactControlBarButtonsForReferenceBounds:(CGRect)a3
{
  width = a3.size.width;
  v4 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  if (v4 != 6)
  {
    return v4 == 0;
  }

  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 _referenceBounds];
  v5 = width < v7 * 0.5;

  return v5;
}

+ (unint64_t)doneButtonStyleForReferenceBounds:(CGRect)a3
{
  v3 = PUReviewScreenSizeClassForReferenceSize(a3.size.width, a3.size.height);
  if (v3 >= 2)
  {
    return v3 != 7;
  }

  else
  {
    return 2;
  }
}

+ (UIEdgeInsets)_layoutMarginInsetsForSizeSpec:(id *)a3
{
  var1 = a3->var1;
  switch(var1)
  {
    case 5uLL:
      v10 = *a3;
      [a1 _cameraBottomBarHeightForSizeSpec:&v10];
      v5 = 230.0;
      break;
    case 4uLL:
      v10 = *a3;
      [a1 _cameraBottomBarHeightForSizeSpec:&v10];
      v5 = 203.0;
      break;
    case 1uLL:
      v10 = *a3;
      [a1 _cameraBottomBarHeightForSizeSpec:&v10];
      v5 = 154.0;
      break;
    default:
      v7 = *MEMORY[0x1E69DDCE0];
      v9 = *(MEMORY[0x1E69DDCE0] + 8);
      v6 = *(MEMORY[0x1E69DDCE0] + 16);
      v8 = *(MEMORY[0x1E69DDCE0] + 24);
      goto LABEL_9;
  }

  v6 = v5 - v4;
  v7 = 30.0;
  v8 = 0.0;
  v9 = 0.0;
LABEL_9:
  result.right = v8;
  result.bottom = v6;
  result.left = v9;
  result.top = v7;
  return result;
}

@end