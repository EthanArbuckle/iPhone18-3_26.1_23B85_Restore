@interface TSDSwatchCache
+ (id)swatchCache;
- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)a3 atScale:(double)a4 ofSize:(CGSize)a5 overImage:(CGImage *)a6;
- (CGSize)imageSizeForPreset:(id)a3 swatchSize:(CGSize)a4;
- (CGSize)shapeSwatchInset;
- (TSDSwatchCache)init;
- (id)imageForImagePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 imageInfo:(id)a6 shouldClipVertically:(BOOL)a7 documentRoot:(id)a8;
- (id)imageForImagePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 imageInfo:(id)a7 shouldClipVertically:(BOOL)a8 documentRoot:(id)a9;
- (id)imageForMoviePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 movieInfo:(id)a6 shouldClipVertically:(BOOL)a7 documentRoot:(id)a8;
- (id)imageForMoviePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 movieInfo:(id)a7 shouldClipVertically:(BOOL)a8 documentRoot:(id)a9;
- (id)imageForShapePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 shapeType:(int)a6 angle:(double)a7 documentRoot:(id)a8;
- (id)imageForShapePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 shapeType:(int)a7 angle:(double)a8 documentRoot:(id)a9;
- (id)p_maskInfoForMovieInfo:(id)a3 context:(id)a4;
- (id)p_thumbnailImageDataForImageData:(id)a3;
- (void)applyFakeShadowForWhitePresetsIfNecessary:(id)a3 documentRoot:(id)a4;
- (void)dealloc;
- (void)warmStyle:(id)a3 withFillProperty:(int)a4 documentRoot:(id)a5;
@end

@implementation TSDSwatchCache

+ (id)swatchCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__TSDSwatchCache_swatchCache__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = a1;
  if (swatchCache_sSwatchCacheOnce != -1)
  {
    dispatch_once(&swatchCache_sSwatchCacheOnce, block);
  }

  return swatchCache_sSwatchCache;
}

id __29__TSDSwatchCache_swatchCache__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  swatchCache_sSwatchCache = result;
  return result;
}

- (TSDSwatchCache)init
{
  v4.receiver = self;
  v4.super_class = TSDSwatchCache;
  v2 = [(TSDSwatchCache *)&v4 init];
  if (v2)
  {
    v2->mOperationQueue = objc_alloc_init(MEMORY[0x277CCABD8]);
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->mOperationQueue cancelAllOperations];

  v3.receiver = self;
  v3.super_class = TSDSwatchCache;
  [(TSDSwatchCache *)&v3 dealloc];
}

- (void)warmStyle:(id)a3 withFillProperty:(int)a4 documentRoot:(id)a5
{
  v6 = -[TSDStyleWarmingOperation initWithStyle:property:accessController:]([TSDStyleWarmingOperation alloc], "initWithStyle:property:accessController:", a3, *&a4, [a5 accessController]);
  [(NSOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (CGSize)shapeSwatchInset
{
  if (!TSUPhoneUI() || (v2 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")], v3 = 4.0, (v2 - 5) <= 0xFFFFFFFFFFFFFFFDLL))
  {
    v3 = 8.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)applyFakeShadowForWhitePresetsIfNecessary:(id)a3 documentRoot:(id)a4
{
  if (([objc_msgSend(a3 "fill")] && (objc_msgSend(objc_msgSend(a3, "stroke"), "isNullStroke") & 1) != 0 || objc_msgSend(a3, "stroke") && objc_msgSend(objc_msgSend(a3, "stroke"), "isNearlyWhite")) && (!objc_msgSend(a3, "shadow") || (objc_msgSend(objc_msgSend(a3, "shadow"), "isEnabled") & 1) == 0))
  {
    v6 = [objc_msgSend(a3 "style")];
    [v6 setBoxedValue:+[TSDShadow shadowWithAngle:offset:radius:opacity:color:enabled:](TSDShadow forProperty:{"shadowWithAngle:offset:radius:opacity:color:enabled:", objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "blackColor"), "CGColor"), 1, 0.0, 0.0, 4.0, 0.45), 520}];

    [a3 setStyle:v6];
  }
}

- (id)imageForShapePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 shapeType:(int)a6 angle:(double)a7 documentRoot:(id)a8
{
  v10 = *&a6;
  height = a4.height;
  width = a4.width;
  objc_opt_class();
  v14 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a8, "context")}];
  [(TSDSwatchCache *)self shapeSwatchInset];
  v16 = v15;
  v18 = v17;
  v19 = [v14 boxedValueForProperty:520];
  if (!v19 || v19 == [MEMORY[0x277CBEB68] null])
  {
    v20 = 0;
  }

  else
  {
    [v14 constrainShadowForSwatchGeneration];
    v20 = 1;
  }

  v21 = [v14 boxedValueForProperty:517];
  if (!v21 || v21 == [MEMORY[0x277CBEB68] null])
  {
    v22 = 0;
  }

  else
  {
    [v14 constrainStrokeForSwatchGeneration];
    v22 = 1;
  }

  v23 = [v14 boxedObjectForProperty:519];
  if (v23 && v23 != [MEMORY[0x277CBEB68] null])
  {
    [v14 fadeReflectionForSwatchGeneration];
  }

  if ((v20 & 1) != 0 || v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    v16 = v16 + 3.0;
    v18 = v18 + 3.0;
  }

  v24 = width - v16 * 2.0;
  v25 = height - v18 * 2.0;
  v26 = 1.0;
  if (v22 && [v21 isFrame])
  {
    v27 = [v14 boxedValueForProperty:517];
    [v27 coverageRect:TSDRectWithSize()];
    v30 = v29 - width <= v16 + v16 && v28 - height <= v18 + v18;
    if (!v30 || ([v27 coverageRect:TSDRectWithSize()], (objc_msgSend(v27, "shouldRenderForSizeIncludingCoverage:", v53, v54) & 1) == 0))
    {
      v26 = 2.0;
      v24 = TSDMultiplySizeScalar(width - v16 * 2.0, height - v18 * 2.0, 2.0);
      v25 = v31;
      v16 = TSDMultiplySizeScalar(v16, v18, 2.0);
      v18 = v32;
    }
  }

  [v14 fixImageFillTechniqueForSwatchOfSize:{v24, v25}];
  if (v10 > 0x13)
  {
    goto LABEL_33;
  }

  if (((1 << v10) & 0xD8006) == 0)
  {
    if (v10 == 9)
    {
      v37 = 0.0;
      if (v20)
      {
        v37 = 3.0;
      }

      v24 = v24 + 8.0;
      v33 = v25 + v37 * -2.0;
      v16 = v16 + -4.0;
      v18 = v37 + v18;
      goto LABEL_48;
    }

LABEL_33:
    v38 = v10 - 13;
    v39 = 7.0;
    if (v20)
    {
      v39 = 9.0;
    }

    v40 = v24 - v39;
    v41 = v25 + 0.0;
    v42 = v39 + v16;
    if (v10 != 12)
    {
      v40 = v24;
      v41 = v25;
      v42 = v16;
    }

    v43 = 4.0;
    if (v20)
    {
      v43 = 2.0;
    }

    v44 = v24 + v43 * 2.0;
    v45 = v25 + v43 * 2.0;
    v46 = v16 - v43;
    if (v38 <= 1)
    {
      v24 = v44;
    }

    else
    {
      v24 = v40;
    }

    if (v38 <= 1)
    {
      v33 = v45;
    }

    else
    {
      v33 = v41;
    }

    if (v38 <= 1)
    {
      v16 = v46;
    }

    else
    {
      v16 = v42;
    }

    goto LABEL_48;
  }

  v18 = v25 * 0.5 + v18;
  if (a7 != 0.0)
  {
    v24 = hypot(v24, v25);
    v16 = 0.0;
  }

  v33 = 0.0;
  v34 = [[TSDInfoGeometry alloc] initWithPosition:v16 size:v18 angle:v24, 0.0, a7];
  if (v34)
  {
    v35 = v34;
    v36 = a5;
    goto LABEL_49;
  }

LABEL_48:
  v36 = a5;
  v35 = [[TSDInfoGeometry alloc] initWithPosition:v16 size:v18, v24, v33];
LABEL_49:
  v47 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(a8 geometry:"context") style:v35 pathSource:{v14, +[TSDPathSource pathSourceForShapeType:naturalSize:](TSDPathSource, "pathSourceForShapeType:naturalSize:", v10, v24, v33)}];
  if (v10 == 15)
  {
    [v47 setHeadLineEnd:{+[TSDLineEnd openArrow](TSDLineEnd, "openArrow")}];
    [v47 setTailLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  else if (v10 == 16)
  {
    [v47 setHeadLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  [(TSDSwatchCache *)self applyFakeShadowForWhitePresetsIfNecessary:v47 documentRoot:a8];
  v48 = [[TSDImager alloc] initWithDocumentRoot:a8];
  [(TSDImager *)v48 setScaledImageSize:TSDMultiplySizeScalar(width, height, v36)];
  TSDMultiplySizeScalar(width, height, v26);
  [(TSDImager *)v48 setUnscaledClipRect:TSDRectWithSize()];
  -[TSDImager setInfos:](v48, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v47]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v49 = [(TSDImager *)v48 newImage];
  if (v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    objc_opt_class();
    v50 = [(TSDSwatchCache *)self p_newImageWithConnectionLineKnobsForShape:TSUDynamicCast() atScale:v49 ofSize:v36 overImage:width, height];
    CGImageRelease(v49);
    v49 = v50;
  }

  v51 = [MEMORY[0x277D6C2F8] imageWithCGImage:v49 scale:0 orientation:v36];
  CGImageRelease(v49);
  [MEMORY[0x277CD9FF0] commit];

  return v51;
}

- (id)imageForImagePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 imageInfo:(id)a6 shouldClipVertically:(BOOL)a7 documentRoot:(id)a8
{
  height = a4.height;
  width = a4.width;
  v14 = TSUPhoneUI();
  if (v14)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.0;
  }

  v16 = 30.0;
  if (v14)
  {
    v16 = 8.0;
  }

  v17 = v16 + (width - width) * 0.5;
  if (v14)
  {
    v18 = (v16 + (height - height) * 0.25) * 3.0;
  }

  else
  {
    v18 = v16 + (height - height) * 0.25;
  }

  v19 = v15 * (width - v16);
  v116 = v15;
  v20 = v15 * (height - v16);
  objc_opt_class();
  v21 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a8, "context")}];
  [objc_msgSend(a6 "geometry")];
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  [v21 valueForProperty:517];
  v26 = TSUDynamicCast();
  if (v26)
  {
    [v26 coverageRect:{v17, v18, v19, v20}];
    v29 = v28 < 0.0;
    *&v28 = v28;
    v30 = roundf(*&v28);
    v31 = v18 - v30;
    v32 = v20 + v30;
    if (v29)
    {
      v20 = v32;
    }

    if (v29)
    {
      v18 = v31;
    }

    v33 = v27 < 0.0;
    v34 = v27;
    v35 = roundf(v34);
    v36 = v17 - v35;
    v37 = v19 + v35;
    if (v33)
    {
      v19 = v37;
    }

    if (v33)
    {
      v17 = v36;
    }
  }

  objc_opt_class();
  [v21 valueForProperty:520];
  if (TSUDynamicCast())
  {
    [v21 constrainShadowForSwatchGeneration];
    objc_opt_class();
    [v21 valueForProperty:520];
    v38 = TSUDynamicCast();
    if ([v38 isDropShadow])
    {
      [v38 shadowBoundsForRect:{v17, v18, v19, v20}];
      v29 = v40 < 0.0;
      *&v40 = v40;
      v41 = v20 + roundf(*&v40);
      if (v29)
      {
        v20 = v41;
      }

      v29 = v39 < 0.0;
      v42 = v39;
      v43 = v19 + roundf(v42);
      if (v29)
      {
        v19 = v43;
      }
    }
  }

  v44 = [a6 maskInfo];
  v117 = height;
  if (v44)
  {
    if (a7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (![a6 instantAlphaPath])
    {
      if (a7)
      {
        goto LABEL_39;
      }

      v44 = 0;
      goto LABEL_43;
    }

    v44 = [a6 defaultMaskInfoWithContext:{objc_msgSend(a8, "context")}];
    if (a7)
    {
LABEL_32:
      if (v44)
      {
        v45 = [(TSDDrawableInfo *)v44 geometry];
        [(TSDInfoGeometry *)v45 size];
        v48 = TSDScaleSizeWithinSize(v19, v20, v46, v47);
        v50 = v49;
        [(TSDInfoGeometry *)v45 center];
        v52 = v51;
        v53 = width;
        v55 = v54;
        v56 = [TSDScalarPathSource rectangleWithNaturalSize:v48, v50];
        v57 = [TSDInfoGeometry alloc];
        v58 = v52;
        v59 = v55;
        width = v53;
        v60 = v48;
        v61 = v50;
        goto LABEL_40;
      }

LABEL_39:
      v64 = TSDScaleSizeWithinSize(v19, v20, v23, v25);
      v65 = v25;
      v67 = v66;
      v68 = width;
      v69 = v23 * 0.5;
      v70 = v65 * 0.5;
      v56 = [TSDScalarPathSource rectangleWithNaturalSize:v64];
      v57 = [TSDInfoGeometry alloc];
      v58 = v69;
      width = v68;
      v59 = v70;
      v60 = v64;
      v61 = v67;
LABEL_40:
      v71 = [(TSDInfoGeometry *)v57 initWithCenter:v58 size:v59, v60, v61];
      v44 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a8 context], v71, v56);

      if (!v44)
      {
        goto LABEL_57;
      }

      goto LABEL_48;
    }
  }

  if (v44)
  {
    [(TSDInfoGeometry *)[(TSDDrawableInfo *)v44 geometry] size];
    goto LABEL_44;
  }

LABEL_43:
  v63 = v25;
  v62 = v23;
LABEL_44:
  v72 = v62 / v63;
  if (v72 <= width / height)
  {
    v19 = v20 * v72;
    if (!v44)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v20 = v19 / v72;
    if (!v44)
    {
      goto LABEL_57;
    }
  }

LABEL_48:
  v73 = [(TSDDrawableInfo *)v44 geometry];
  [(TSDInfoGeometry *)v73 size];
  v76 = v19 / v75;
  v77 = v75 <= 0.0;
  v78 = 1.0;
  if (v77)
  {
    v76 = 1.0;
  }

  if (v74 > 0.0)
  {
    v78 = v20 / v74;
  }

  if (v76 <= v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v76;
  }

  [(TSDInfoGeometry *)v73 position];
  v82 = TSDMultiplyPointScalar(v80, v81, v79);
  v83 = width;
  v85 = v84;
  v86 = [TSDScalarPathSource rectangleWithNaturalSize:v19, v20];
  v87 = [[TSDInfoGeometry alloc] initWithPosition:v82 size:v85, v19, v20];
  v44 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a8 context], v87, v86);

  width = v83;
LABEL_57:
  v88 = TSDRoundedSize();
  v90 = v89;
  v91 = TSDRoundedPoint();
  v93 = v92;
  v94 = [v21 boxedObjectForProperty:519];
  if (v94 && v94 != [MEMORY[0x277CBEB68] null])
  {
    [v21 fadeReflectionForSwatchGeneration];
  }

  v95 = [[TSDInfoGeometry alloc] initWithPosition:v91 size:v93, v88, v90];
  v96 = [a6 thumbnailImageData];
  if (!v96)
  {
    v96 = -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", [a6 imageData]);
  }

  v97 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [a8 context], v95, v21, v96, 0);
  [(TSDImageInfo *)v97 setMaskInfo:v44];
  if ([a6 instantAlphaPath])
  {
    [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v99 = v98;
    v101 = v100;
    [a6 naturalSize];
    v103 = v99 / v102;
    v105 = v101 / v104;
    v106 = [objc_msgSend(a6 "instantAlphaPath")];
    CGAffineTransformMakeScale(&v119, v103, v105);
    [v106 transformUsingAffineTransform:&v119];
    [(TSDImageInfo *)v97 setInstantAlphaPath:v106];
  }

  v107 = [[TSDImager alloc] initWithDocumentRoot:a8];
  [(TSDImager *)v107 setScaledImageSize:TSDMultiplySizeScalar(width, v117, a5)];
  v108.n128_u64[0] = TSDMultiplySizeScalar(width, v117, v116);
  v110.n128_u64[0] = v109;
  v111.n128_u64[0] = *MEMORY[0x277CBF348];
  [(TSDImager *)v107 setUnscaledClipRect:TSDRectWithOriginAndSize(v112, v111, *(MEMORY[0x277CBF348] + 8), v108, v110)];
  -[TSDImager setInfos:](v107, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v97]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v113 = [(TSDImager *)v107 newImage];
  v114 = [MEMORY[0x277D6C2F8] imageWithCGImage:v113 scale:0 orientation:a5];
  CGImageRelease(v113);
  [MEMORY[0x277CD9FF0] commit];

  return v114;
}

- (id)imageForShapePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 shapeType:(int)a7 angle:(double)a8 documentRoot:(id)a9
{
  v10 = *&a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = a4.height;
  v17 = a4.width;
  objc_opt_class();
  v19 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a9, "context")}];
  v20 = [v19 boxedValueForProperty:520];
  if (v20)
  {
    if (v20 == [MEMORY[0x277CBEB68] null])
    {
      LODWORD(v20) = 0;
    }

    else
    {
      [v19 constrainShadowForSwatchGeneration];
      LODWORD(v20) = 1;
    }
  }

  [v19 fixImageFillTechniqueForSwatchOfSize:{width, height}];
  v21 = (v10 & 0xFFFFFFEF) == 2 || v10 == 19;
  if (v10 > 0x13)
  {
    goto LABEL_41;
  }

  if (((1 << v10) & 0x18002) != 0)
  {
    v28 = hypot(width, height);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    y = CGRectGetMidY(v81);
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    x = CGRectGetMidX(v82) + v28 * -0.5;
    height = 0.0;
    width = v28;
    goto LABEL_15;
  }

  if (((1 << v10) & 0xC0004) != 0)
  {
    v22 = 6.0;
    v23 = 6.0;
LABEL_12:
    v24 = x;
    v25 = y;
    v26 = width;
LABEL_13:
    v27 = height;
    v80 = CGRectInset(*&v24, v22, v23);
    x = v80.origin.x;
    y = v80.origin.y;
    width = v80.size.width;
    height = v80.size.height;
    goto LABEL_15;
  }

  if (v10 == 9)
  {
    x = 0.0;
    if (v20)
    {
      v24 = 0.0;
      v22 = 4.0;
      v23 = 0.0;
      v25 = y;
      v26 = v17;
      goto LABEL_13;
    }

    width = v17;
  }

  else
  {
LABEL_41:
    if ((v10 - 13) > 1)
    {
      if (v10 == 12)
      {
        [objc_msgSend(+[TSDPathSource pathSourceForShapeType:naturalSize:](TSDPathSource pathSourceForShapeType:12 naturalSize:{width, height), "bezierPath"), "bounds"}];
        v71 = v52;
        v54 = x + v53;
        v72 = x + v53;
        v73 = v55;
        v74 = y + v56;
        v70 = TSDRectWithSize();
        v77 = v58;
        v78 = v57;
        rect = v59;
        v83.origin.x = v54;
        v83.size.width = v73;
        v83.origin.y = v74;
        v83.size.height = v71;
        MinX = CGRectGetMinX(v83);
        v84.origin.x = v70;
        v84.size.width = v77;
        v84.origin.y = v78;
        v84.size.height = rect;
        v69 = MinX - CGRectGetMinX(v84);
        v85.origin.x = v72;
        v85.size.width = v73;
        v85.origin.y = v74;
        v85.size.height = v71;
        MaxX = CGRectGetMaxX(v85);
        v86.origin.x = v70;
        v86.size.width = v77;
        v86.origin.y = v78;
        v86.size.height = rect;
        v67 = MaxX - CGRectGetMaxX(v86);
        v87.origin.x = v72;
        v87.size.width = v73;
        v87.origin.y = v74;
        v87.size.height = v71;
        MinY = CGRectGetMinY(v87);
        v88.origin.x = v70;
        v88.size.width = v77;
        v88.origin.y = v78;
        v88.size.height = rect;
        v60 = MinY - CGRectGetMinY(v88);
        v89.origin.x = v72;
        v89.size.width = v73;
        v89.origin.y = v74;
        v89.size.height = v71;
        MaxY = CGRectGetMaxY(v89);
        v90.origin.x = v70;
        v90.size.width = v77;
        v90.origin.y = v78;
        v90.size.height = rect;
        v61 = MaxY - CGRectGetMaxY(v90);
        v62 = x - v69;
        v63 = width + v69;
        if (v69 >= 0.0)
        {
          v62 = x;
          v63 = width;
        }

        if (v67 > 0.0)
        {
          v63 = v63 - v67;
        }

        if (v60 >= 0.0)
        {
          v64 = height;
        }

        else
        {
          y = y - v60;
          v64 = height + v60;
        }

        if (v61 <= 0.0)
        {
          height = v64;
        }

        else
        {
          height = v64 - v61;
        }

        if (v20)
        {
          x = v62 + 4.0;
        }

        else
        {
          x = v62;
        }

        if (v20)
        {
          width = v63 + -4.0;
        }

        else
        {
          width = v63;
        }
      }
    }

    else
    {
      x = TSDRectWithSize();
      y = v49;
      width = v50;
      height = v51;
      if (v20)
      {
        v22 = 4.0;
        v23 = 4.0;
        goto LABEL_12;
      }
    }
  }

LABEL_15:
  objc_opt_class();
  [v19 valueForProperty:517];
  v29 = TSUDynamicCast();
  if (v29)
  {
    if (v10 > 0x13 || (v30 = 2.0, ((1 << v10) & 0xD8006) == 0))
    {
      [v29 width];
    }

    if (v30 >= width)
    {
      v31 = width;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= height)
    {
      v30 = height;
    }

    x = x + v31;
    width = width - v31 * 2.0;
    y = y + v30;
    height = height - v30 * 2.0;
  }

  v32 = TSDRoundedRect(x, y, width, height);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [v19 boxedObjectForProperty:519];
  if (v39 && v39 != [MEMORY[0x277CBEB68] null])
  {
    [v19 fadeReflectionForSwatchGeneration];
  }

  if (v21)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = a8;
  }

  v41 = [(TSDInfoGeometry *)[TSDMutableInfoGeometry alloc] initWithPosition:v32 size:v34 angle:v36, v38, v40];
  [(TSDInfoGeometry *)v41 size];
  v42 = [TSDPathSource pathSourceForShapeType:v10 naturalSize:?];
  [v42 naturalSize];
  [(TSDMutableInfoGeometry *)v41 setSize:?];
  v43 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(a9 geometry:"context") style:v41 pathSource:{v19, v42}];
  if (v10 == 15)
  {
    [v43 setHeadLineEnd:{+[TSDLineEnd openArrow](TSDLineEnd, "openArrow")}];
    [v43 setTailLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  else if (v10 == 16)
  {
    [v43 setHeadLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  [(TSDSwatchCache *)self applyFakeShadowForWhitePresetsIfNecessary:v43 documentRoot:a9, *&MinY];
  v44 = [[TSDImager alloc] initWithDocumentRoot:a9];
  [(TSDImager *)v44 setScaledImageSize:TSDMultiplySizeScalar(v17, v16, a5)];
  [(TSDImager *)v44 setUnscaledClipRect:0.0, 0.0, v17, v16];
  -[TSDImager setInfos:](v44, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v43]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v45 = [(TSDImager *)v44 newImage];
  if (v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    objc_opt_class();
    v46 = [(TSDSwatchCache *)self p_newImageWithConnectionLineKnobsForShape:TSUDynamicCast() atScale:v45 ofSize:a5 overImage:v17, v16];
    CGImageRelease(v45);
    v45 = v46;
  }

  v47 = [MEMORY[0x277D6C2F8] imageWithCGImage:v45 scale:0 orientation:a5];
  CGImageRelease(v45);
  [MEMORY[0x277CD9FF0] commit];

  return v47;
}

- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)a3 atScale:(double)a4 ofSize:(CGSize)a5 overImage:(CGImage *)a6
{
  v9 = TSDMultiplySizeScalar(a5.width, a5.height, a4);
  v11 = v10;
  v12 = TSDBitmapContextCreate(3, v9);
  v13 = [MEMORY[0x277D6C2F8] imageNamed:@"sf-ios-canvas-knob-blue" inBundle:TSDBundle()];
  v14 = [MEMORY[0x277D6C2F8] imageNamed:@"sf-ios-canvas-knob-green" inBundle:TSDBundle()];
  [v13 size];
  v16 = v15;
  v18 = v17;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3010000000;
  v68 = &unk_26CAC6BB9;
  v69 = *MEMORY[0x277CBF348];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3010000000;
  v63 = &unk_26CAC6BB9;
  v64 = v69;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3010000000;
  v58 = &unk_26CAC6BB9;
  v59 = v69;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __85__TSDSwatchCache_p_newImageWithConnectionLineKnobsForShape_atScale_ofSize_overImage___block_invoke;
  v54[3] = &unk_279D48D00;
  v54[4] = &v65;
  v54[5] = &v60;
  v54[6] = &v55;
  *&v54[7] = a4;
  *&v54[8] = v9;
  v54[9] = v11;
  [a3 performBlockWithTemporaryLayout:v54];
  v19 = TSDRectWithSize();
  v52 = v20;
  v53 = v19;
  v50 = v22;
  v51 = v21;
  v23 = TSDMultiplySizeScalar(v16, v18, a4);
  TSDRectWithCenterAndSize(v61[4], v61[5], v23);
  v47 = v25;
  v48 = v24;
  TSDRectWithCenterAndSize(v66[4], v66[5], v23);
  v45 = v27;
  v46 = v26;
  TSDRectWithCenterAndSize(v56[4], v56[5], v23);
  v29 = v28;
  rect = v30;
  v31 = TSDRoundedPoint();
  v33 = v32;
  v34 = TSDRoundedPoint();
  v44 = v35;
  v36 = TSDRoundedPoint();
  v38 = v37;
  v70.origin.y = v52;
  v70.origin.x = v53;
  v70.size.height = v50;
  v70.size.width = v51;
  CGContextDrawImage(v12, v70, a6);
  v39 = [v13 CGImageForContentsScale:a4];
  v71.origin.x = v36;
  v71.origin.y = v38;
  v71.size.width = v29;
  v71.size.height = rect;
  CGContextDrawImage(v12, v71, v39);
  v40 = [v14 CGImageForContentsScale:a4];
  v72.origin.x = v31;
  v72.origin.y = v33;
  v72.size.height = v47;
  v72.size.width = v48;
  CGContextDrawImage(v12, v72, v40);
  v41 = [v13 CGImageForContentsScale:a4];
  v73.origin.x = v34;
  v73.origin.y = v44;
  v73.size.height = v45;
  v73.size.width = v46;
  CGContextDrawImage(v12, v73, v41);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v65, 8);
  return Image;
}

float64x2_t __85__TSDSwatchCache_p_newImageWithConnectionLineKnobsForShape_atScale_ofSize_overImage___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  [v2 tailPoint];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  [v2 getControlKnobPosition:12];
  v6 = *(*(a1 + 40) + 8);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  [v2 headPoint];
  v9 = *(*(a1 + 48) + 8);
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  memset(&v23, 0, sizeof(v23));
  if (v2)
  {
    [v2 transformInRoot];
  }

  CGAffineTransformMakeScale(&t2, *(a1 + 56), *(a1 + 56));
  v20 = v23;
  CGAffineTransformConcat(&v22, &v20, &t2);
  v23 = v22;
  v12 = TSDRectWithSize();
  TSDAffineTransformForFlips(0, 1, &t2, v12, v13, v14, v15);
  v20 = v23;
  CGAffineTransformConcat(&v22, &v20, &t2);
  v23 = v22;
  v16 = *&v22.a;
  v17 = *&v22.c;
  *(*(*(a1 + 32) + 8) + 32) = vaddq_f64(*&v22.tx, vmlaq_n_f64(vmulq_n_f64(*&v22.c, *(*(*(a1 + 32) + 8) + 40)), *&v22.a, *(*(*(a1 + 32) + 8) + 32)));
  *(*(*(a1 + 40) + 8) + 32) = vaddq_f64(*&v23.tx, vmlaq_n_f64(vmulq_n_f64(v17, *(*(*(a1 + 40) + 8) + 40)), v16, *(*(*(a1 + 40) + 8) + 32)));
  v18 = *(*(a1 + 48) + 8);
  result = vaddq_f64(*&v23.tx, vmlaq_n_f64(vmulq_n_f64(v17, *(v18 + 40)), v16, *(v18 + 32)));
  *(v18 + 32) = result;
  return result;
}

- (id)imageForImagePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 imageInfo:(id)a7 shouldClipVertically:(BOOL)a8 documentRoot:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a4.height;
  v83 = a4.width;
  if (a4.width < CGRectGetMaxX(a6) || (v87.origin.x = x, v87.origin.y = y, v87.size.width = width, v87.size.height = height, v15 < CGRectGetMaxY(v87)))
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSwatchCache imageForImagePreset:imageSize:imageScale:swatchFrame:imageInfo:shouldClipVertically:documentRoot:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSwatchCache.m"), 1059, @"imageSize must enclose swatchFrame"}];
  }

  v18 = TSDMultiplyRectScalar(x, y, width, height, 2.0);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_opt_class();
  v25 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a9, "context")}];
  [objc_msgSend(a7 "geometry")];
  v81 = v27;
  v82 = v26;
  v28 = [v25 boxedValueForProperty:520];
  if (v28 && v28 != [MEMORY[0x277CBEB68] null])
  {
    [v25 constrainShadowForSwatchGeneration];
  }

  v84 = v15;
  v29 = [a7 maskInfo];
  if (!v29)
  {
    v29 = [a7 defaultMaskInfoWithContext:{objc_msgSend(a9, "context")}];
  }

  v30 = [v29 geometry];
  [v30 size];
  v33 = TSDScaleSizeWithinSize(v22, v24, v31, v32);
  v35 = v34;
  [v30 center];
  v38 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a9 context], -[TSDInfoGeometry initWithCenter:size:]([TSDInfoGeometry alloc], "initWithCenter:size:", v36, v37, v33, v35), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v33, v35));
  if (v38)
  {
    v39 = [(TSDDrawableInfo *)v38 geometry];
    [(TSDInfoGeometry *)v39 size];
    v41 = v22 / v40;
    v43 = v24 / v42;
    if (v41 <= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    [(TSDInfoGeometry *)v39 position];
    v47 = TSDMultiplyPointScalar(v45, v46, v44);
    v49 = v48;
    v50 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a9 context], -[TSDInfoGeometry initWithPosition:size:]([TSDInfoGeometry alloc], "initWithPosition:size:", v47, v48, v22, v24), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v22, v24));
    v22 = v82 * v44;
    v24 = v81 * v44;
    v18 = v18 - v47;
    v20 = v20 - v49;
  }

  else
  {
    v50 = 0;
  }

  v51 = TSDRoundedRect(v18, v20, v22, v24);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [v25 boxedObjectForProperty:519];
  if (v58 && v58 != [MEMORY[0x277CBEB68] null])
  {
    [v25 fadeReflectionForSwatchGeneration];
  }

  v59 = [[TSDInfoGeometry alloc] initWithPosition:v51 size:v53, v55, v57];
  v60 = [a7 thumbnailImageData];
  if (!v60)
  {
    v60 = -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", [a7 imageData]);
  }

  v61 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [a9 context], v59, v25, v60, 0);
  [(TSDImageInfo *)v61 setMaskInfo:v50];
  if ([a7 instantAlphaPath])
  {
    [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v63 = v62;
    v65 = v64;
    [a7 naturalSize];
    v67 = v63 / v66;
    v69 = v65 / v68;
    v70 = [objc_msgSend(a7 "instantAlphaPath")];
    CGAffineTransformMakeScale(&v86, v67, v69);
    [v70 transformUsingAffineTransform:&v86];
    [(TSDImageInfo *)v61 setInstantAlphaPath:v70];
  }

  v71 = [[TSDImager alloc] initWithDocumentRoot:a9];
  [(TSDImager *)v71 setScaledImageSize:TSDMultiplySizeScalar(v83, v84, a5)];
  v72.n128_u64[0] = TSDMultiplySizeScalar(v83, v84, 2.0);
  v74.n128_u64[0] = v73;
  v75.n128_u64[0] = *MEMORY[0x277CBF348];
  [(TSDImager *)v71 setUnscaledClipRect:TSDRectWithOriginAndSize(v76, v75, *(MEMORY[0x277CBF348] + 8), v72, v74)];
  -[TSDImager setInfos:](v71, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v61]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v77 = [(TSDImager *)v71 newImage];
  v78 = [MEMORY[0x277D6C2F8] imageWithCGImage:v77 scale:0 orientation:a5];
  CGImageRelease(v77);
  [MEMORY[0x277CD9FF0] commit];

  return v78;
}

- (CGSize)imageSizeForPreset:(id)a3 swatchSize:(CGSize)a4
{
  v4 = TSDRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = TSUDynamicCast();
  v12 = [v11 copyWithContext:{objc_msgSend(v11, "context")}];
  if (v12)
  {
    v13 = v12;
    v14 = TSDMultiplyRectScalar(v4, v6, v8, v10, 2.0);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    objc_opt_class();
    [v13 valueForProperty:517];
    v21 = TSUDynamicCast();
    if (v21)
    {
      v22 = v21;
      if (([objc_msgSend(objc_msgSend(v21 "frameSpec")] & 1) == 0)
      {
        [v22 coverageRect:{v14, v16, v18, v20}];
        v14 = v23;
        v16 = v24;
        v18 = v25;
        v20 = v26;
      }
    }

    objc_opt_class();
    [v13 valueForProperty:519];
    TSUDynamicCast();
    objc_opt_class();
    [v13 valueForProperty:520];
    if (TSUDynamicCast())
    {
      [v13 constrainShadowForSwatchGeneration];
      objc_opt_class();
      [v13 valueForProperty:520];
      [TSUDynamicCast() shadowBoundsForRect:{v14, v16, v18, v20}];
      v14 = v27;
      v16 = v28;
      v18 = v29;
      v20 = v30;
    }

    TSDMultiplyRectScalar(v14, v16, v18, v20, 0.5);
    v8 = v31;
    v10 = v32;
  }

  v33 = v8;
  v34 = v10;
  result.height = v34;
  result.width = v33;
  return result;
}

- (id)p_maskInfoForMovieInfo:(id)a3 context:(id)a4
{
  v5 = [a3 geometry];
  [v5 center];
  v7 = v6;
  v9 = v8;
  [v5 position];
  v11 = TSDSubtractPoints(v7, v9, v10);
  v13 = v12;
  [v5 size];
  v15 = v14;
  v17 = v16;
  v18 = [TSDScalarPathSource rectangleWithNaturalSize:?];
  v19 = [[TSDInfoGeometry alloc] initWithCenter:v11 size:v13, v15, v17];
  v20 = [[TSDMaskInfo alloc] initWithContext:a4 geometry:v19 pathSource:v18];

  return v20;
}

- (id)p_thumbnailImageDataForImageData:(id)a3
{
  if (p_thumbnailImageDataForImageData__sOnce != -1)
  {
    [TSDSwatchCache p_thumbnailImageDataForImageData:];
  }

  v4 = p_thumbnailImageDataForImageData__sCache;
  objc_sync_enter(p_thumbnailImageDataForImageData__sCache);
  v5 = [p_thumbnailImageDataForImageData__sCache objectForKey:a3];
  objc_sync_exit(v4);
  if (a3 && !v5)
  {
    v5 = TSDResampleImageData(a3, 0, 0, 256.0, 256.0);
  }

  if (!v5 || v5 == a3)
  {
    return a3;
  }

  v6 = p_thumbnailImageDataForImageData__sCache;
  objc_sync_enter(p_thumbnailImageDataForImageData__sCache);
  [p_thumbnailImageDataForImageData__sCache setObject:v5 forKey:a3];
  objc_sync_exit(v6);
  return v5;
}

uint64_t __51__TSDSwatchCache_p_thumbnailImageDataForImageData___block_invoke()
{
  result = [objc_alloc(MEMORY[0x277D6C308]) initWithMaxSize:1];
  p_thumbnailImageDataForImageData__sCache = result;
  return result;
}

- (id)imageForMoviePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 swatchFrame:(CGRect)a6 movieInfo:(id)a7 shouldClipVertically:(BOOL)a8 documentRoot:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a4.height;
  v65 = a4.width;
  if (a4.width < CGRectGetMaxX(a6) || (v68.origin.x = x, v68.origin.y = y, v68.size.width = width, v68.size.height = height, v15 < CGRectGetMaxY(v68)))
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSwatchCache imageForMoviePreset:imageSize:imageScale:swatchFrame:movieInfo:shouldClipVertically:documentRoot:]"];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSwatchCache.m"), 1392, @"imageSize must enclose swatchFrame"}];
  }

  v19 = TSDMultiplyRectScalar(x, y, width, height, 2.0);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  v26 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a9, "context")}];
  [objc_msgSend(a7 "geometry")];
  v28 = v27;
  v30 = v29;
  v31 = [v26 boxedValueForProperty:520];
  if (v31 && v31 != [MEMORY[0x277CBEB68] null])
  {
    [v26 constrainShadowForSwatchGeneration];
  }

  v66 = v15;
  v32 = -[TSDSwatchCache p_maskInfoForMovieInfo:context:](self, "p_maskInfoForMovieInfo:context:", a7, [a9 context]);
  if (v32)
  {
    v33 = [v32 geometry];
    [v33 size];
    v35 = v23 / v34;
    v37 = v25 / v36;
    if (v35 <= v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    [v33 position];
    v64 = v19;
    v41 = v21;
    v42 = v28;
    v43 = TSDMultiplyPointScalar(v39, v40, v38);
    v45 = v44;
    v46 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a9 context], -[TSDInfoGeometry initWithPosition:size:]([TSDInfoGeometry alloc], "initWithPosition:size:", v43, v44, v23, v25), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v23, v25));
    v23 = v42 * v38;
    v47 = v41;
    v25 = v30 * v38;
    v19 = v64 - v43;
    v21 = v47 - v45;
  }

  else
  {
    v46 = 0;
  }

  v48 = [v26 boxedObjectForProperty:519];
  if (v48 && v48 != [MEMORY[0x277CBEB68] null])
  {
    [v26 fadeReflectionForSwatchGeneration];
  }

  v49 = TSDRoundedRect(v19, v21, v23, v25);
  v53 = [[TSDInfoGeometry alloc] initWithPosition:v49 size:v50, v51, v52];
  v54 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [a9 context], v53, v26, -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", objc_msgSend(a7, "posterImageData")), 0);
  [(TSDImageInfo *)v54 setMaskInfo:v46];
  v55 = [[TSDImager alloc] initWithDocumentRoot:a9];
  [(TSDImager *)v55 setScaledImageSize:TSDMultiplySizeScalar(v65, v66, a5)];
  v56.n128_u64[0] = TSDMultiplySizeScalar(v65, v66, 2.0);
  v58.n128_u64[0] = v57;
  v59.n128_u64[0] = *MEMORY[0x277CBF348];
  [(TSDImager *)v55 setUnscaledClipRect:TSDRectWithOriginAndSize(v60, v59, *(MEMORY[0x277CBF348] + 8), v56, v58)];
  -[TSDImager setInfos:](v55, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v54]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v61 = [(TSDImager *)v55 newImage];
  v62 = [MEMORY[0x277D6C2F8] imageWithCGImage:v61 scale:0 orientation:a5];
  CGImageRelease(v61);
  [MEMORY[0x277CD9FF0] commit];

  return v62;
}

- (id)imageForMoviePreset:(id)a3 imageSize:(CGSize)a4 imageScale:(double)a5 movieInfo:(id)a6 shouldClipVertically:(BOOL)a7 documentRoot:(id)a8
{
  height = a4.height;
  width = a4.width;
  v14 = TSUPhoneUI();
  if (v14)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.0;
  }

  v16 = 30.0;
  if (v14)
  {
    v16 = 8.0;
  }

  v17 = v16 + (width - width) * 0.5;
  if (v14)
  {
    v18 = (v16 + (height - height) * 0.25) * 3.0;
  }

  else
  {
    v18 = v16 + (height - height) * 0.25;
  }

  v19 = v15 * (width - v16);
  v83 = v15;
  v20 = v15 * (height - v16);
  objc_opt_class();
  v21 = [TSUDynamicCast() copyWithContext:{objc_msgSend(a8, "context")}];
  [objc_msgSend(a6 "geometry")];
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  [v21 valueForProperty:517];
  v26 = TSUDynamicCast();
  if (v26)
  {
    [v26 coverageRect:{v17, v18, v19, v20}];
    v29 = v28 < 0.0;
    *&v28 = v28;
    v30 = roundf(*&v28);
    v31 = v18 - v30;
    v32 = v20 + v30;
    if (v29)
    {
      v20 = v32;
    }

    if (v29)
    {
      v18 = v31;
    }

    v33 = v27 < 0.0;
    v34 = v27;
    v35 = roundf(v34);
    v36 = v17 - v35;
    v37 = v19 + v35;
    if (v33)
    {
      v19 = v37;
    }

    if (v33)
    {
      v17 = v36;
    }
  }

  objc_opt_class();
  [v21 valueForProperty:520];
  if (TSUDynamicCast())
  {
    [v21 constrainShadowForSwatchGeneration];
    objc_opt_class();
    [v21 valueForProperty:520];
    v38 = TSUDynamicCast();
    if ([v38 isDropShadow])
    {
      [v38 shadowBoundsForRect:{v17, v18, v19, v20}];
      if (v40 < 0.0)
      {
        v41 = v40;
        v20 = v20 + roundf(v41);
      }

      if (v39 < 0.0)
      {
        v42 = v39;
        v19 = v19 + roundf(v42);
      }
    }
  }

  v84 = width;
  v85 = height;
  if (a7)
  {
    v43 = TSDScaleSizeWithinSize(v19, v20, v23, v25);
    v44 = v25;
    v46 = v45;
    v47 = v23 * 0.5;
    v48 = v44 * 0.5;
    v49 = [TSDScalarPathSource rectangleWithNaturalSize:v43];
    v50 = [[TSDInfoGeometry alloc] initWithCenter:v47 size:v48, v43, v46];
    v51 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a8 context], v50, v49);

    if (v51)
    {
      v52 = [(TSDDrawableInfo *)v51 geometry];
      [(TSDInfoGeometry *)v52 size];
      v54 = v19 / v53;
      v56 = v20 / v55;
      if (v54 <= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v54;
      }

      [(TSDInfoGeometry *)v52 position];
      v60 = TSDMultiplyPointScalar(v58, v59, v57);
      v62 = v61;
      v63 = [TSDScalarPathSource rectangleWithNaturalSize:v19, v20];
      v64 = [[TSDInfoGeometry alloc] initWithPosition:v60 size:v62, v19, v20];
      v65 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [a8 context], v64, v63);
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  v66 = [v21 boxedObjectForProperty:519];
  if (v66 && v66 != [MEMORY[0x277CBEB68] null])
  {
    [v21 fadeReflectionForSwatchGeneration];
  }

  v67 = TSDRoundedPoint();
  v69 = v68;
  v70 = TSDRoundedSize();
  v72 = [[TSDInfoGeometry alloc] initWithPosition:v67 size:v69, v70, v71];
  v73 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [a8 context], v72, v21, -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", objc_msgSend(a6, "posterImageData")), 0);
  [(TSDImageInfo *)v73 setMaskInfo:v65];
  v74 = [[TSDImager alloc] initWithDocumentRoot:a8];
  [(TSDImager *)v74 setScaledImageSize:TSDMultiplySizeScalar(v84, v85, a5)];
  v75.n128_u64[0] = TSDMultiplySizeScalar(v84, v85, v83);
  v77.n128_u64[0] = v76;
  v78.n128_u64[0] = *MEMORY[0x277CBF348];
  [(TSDImager *)v74 setUnscaledClipRect:TSDRectWithOriginAndSize(v79, v78, *(MEMORY[0x277CBF348] + 8), v75, v77)];
  -[TSDImager setInfos:](v74, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v73]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v80 = [(TSDImager *)v74 newImage];
  v81 = [MEMORY[0x277D6C2F8] imageWithCGImage:v80 scale:0 orientation:a5];
  CGImageRelease(v80);
  [MEMORY[0x277CD9FF0] commit];

  return v81;
}

@end