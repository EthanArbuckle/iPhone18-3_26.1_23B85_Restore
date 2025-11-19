@interface PECleanupSegmentAnalyzer
- (BOOL)_strokeAppearsToBeClosedShape:(id)a3 imageToScreenSpaceScale:(double)a4 lassoDistance:(double)a5;
- (BOOL)shouldChooseSegment:(id)a3;
- (CGRect)scaleRect:(CGRect)a3 scaleFactor:(double)a4;
- (CGSize)cachedStrokeMaskSize;
- (PECleanupSegmentAnalyzer)init;
- (id)_brushStrokeToNormalizedSampledPointArray:(id)a3 maxPointCount:(int64_t)a4 originalImageSize:(CGSize)a5;
- (id)_evenlySampleArray:(id)a3 maxCount:(int64_t)a4;
- (id)_filledRegionOfFilledStrokeImage:(id)a3 withUnfilledStrokeImage:(id)a4;
- (id)_maskForStroke:(id)a3 imageSize:(CGSize)a4 maskSize:(CGSize)a5 filled:(BOOL)a6;
- (id)_strokeToNormalizedSampledPointArray:(id)a3 maxPointCount:(int64_t)a4 originalImageSize:(CGSize)a5 treatStrokeAsFilledCircle:(BOOL)a6;
- (void)_analyzeSegmentationResult:(id)a3 forStroke:(id)a4 treatStrokeAsFilledCircle:(BOOL)a5 maskContext:(id)a6 compositionController:(id)a7 geometry:(id)a8 usingTargetPoints:(BOOL)a9 completion:(id)a10;
- (void)_analyzeStrokeMaskIntersections:(id)a3 treatStrokeAsFilledCircle:(BOOL)a4 usingMaskContext:(id)a5 useTargetPoints:(BOOL)a6 compositionController:(id)a7 geometry:(id)a8 completion:(id)a9;
- (void)analyzeStrokeMaskIntersections:(id)a3 inpaintMaskContext:(id)a4 compositionController:(id)a5 geometry:(id)a6 imageToScreenSpaceScale:(double)a7 faceRects:(id)a8 completion:(id)a9;
- (void)hitTestSegmentation:(CGPoint)a3 radius:(double)a4 inpaintMaskContext:(id)a5 compositionController:(id)a6 geometry:(id)a7 completion:(id)a8;
@end

@implementation PECleanupSegmentAnalyzer

- (CGSize)cachedStrokeMaskSize
{
  width = self->_cachedStrokeMaskSize.width;
  height = self->_cachedStrokeMaskSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)hitTestSegmentation:(CGPoint)a3 radius:(double)a4 inpaintMaskContext:(id)a5 compositionController:(id)a6 geometry:(id)a7 completion:(id)a8
{
  y = a3.y;
  x = a3.x;
  v111 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a6;
  v92 = a7;
  v17 = a8;
  if (!v15)
  {
    v85 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v85, OS_LOG_TYPE_ERROR, "Cleanup: No mask context provided", buf, 2u);
    }

    (*(v17 + 2))(v17, 0, 0);
    goto LABEL_52;
  }

  v18 = [v15 segmentationResult];
  v19 = objc_alloc(MEMORY[0x277D2CFE0]);
  *&v20 = a4;
  memset(buf, 0, 32);
  LODWORD(v21) = 1.0;
  v22 = [v19 initWithRadius:buf softness:0 opacity:v20 clipRect:COERCE_DOUBLE(1045220557) pressureMode:v21];
  *&v23 = x;
  *&v24 = y;
  v93 = v22;
  [v22 appendPoint:{v23, v24, 0.0}];
  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [v18 backgroundInstances];
  v26 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v18 backgroundInstances];
    v28 = [v27 count];
    v29 = [v18 foregroundInstances];
    v30 = [v29 count];
    *buf = 134218240;
    *&buf[4] = v28;
    *&buf[12] = 2048;
    *&buf[14] = v30;
    _os_log_impl(&dword_25E6E9000, v26, OS_LOG_TYPE_DEBUG, "Cleanup: Attempting hit test; retrieved %lu background instances, %lu foreground instances", buf, 0x16u);
  }

  v31 = [v25 count];
  v32 = MEMORY[0x277D3A918];
  v33 = [v16 composition];
  v34 = [v32 removeOperationsFromInstances:v25 composition:v33 context:v15];

  v35 = [MEMORY[0x277D3A918] removeGatedInstances:v34 context:v15];

  v94 = v35;
  if (v31 != [v35 count])
  {
    v36 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v94 count];
      *buf = 134217984;
      *&buf[4] = v31 - v37;
      _os_log_impl(&dword_25E6E9000, v36, OS_LOG_TYPE_DEBUG, "Cleanup: %ld indices were removed from testing because those objects had previously been removed from the image", buf, 0xCu);
    }
  }

  v89 = v15;
  v90 = v17;
  v88 = v16;
  v38 = [v94 firstIndex];
  v39 = v92;
  v40 = v93;
  if (v38 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_31:
    v70 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v71 = v91;
    v72 = [v71 countByEnumeratingWithState:&v95 objects:v108 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = 0;
      v75 = *v96;
      v76 = 0.0;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v96 != v75)
          {
            objc_enumerationMutation(v71);
          }

          v78 = *(*(&v95 + 1) + 8 * i);
          v79 = [v78 mask];
          v80 = [v78 intersector];
          [v80 brushPercentInsideMask];
          v82 = v81;

          if (v82 > v76)
          {
            v83 = v79;

            [v70 removeAllIndexes];
            -[NSObject addIndex:](v70, "addIndex:", [v78 segmentIndex]);
            v74 = v83;
            v76 = v82;
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v95 objects:v108 count:16];
      }

      while (v73);

      if (v74)
      {
        v84 = PLPhotoEditGetLog();
        v16 = v88;
        v15 = v89;
        v17 = v90;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25E6E9000, v84, OS_LOG_TYPE_DEFAULT, "Cleanup: Successfully chose a mask", buf, 2u);
        }

LABEL_50:

        v87 = [v70 copy];
        (*(v17 + 2))(v17, v74, v87);

        goto LABEL_51;
      }
    }

    else
    {
    }

    v86 = PLPhotoEditGetLog();
    v16 = v88;
    v15 = v89;
    v17 = v90;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v86, OS_LOG_TYPE_DEBUG, "Cleanup: No segments sufficiently intersected the stroke", buf, 2u);
    }

    v74 = 0;
    v84 = v70;
    v70 = 0;
    goto LABEL_50;
  }

  v41 = v38;
  v42 = 0uLL;
  while (1)
  {
    *buf = v42;
    *&buf[16] = v42;
    if (v18)
    {
      [v18 tightBoundsForInstance:v41];
      v106 = 0u;
      v107 = 0u;
      [v18 fullExtentForInstance:v41];
    }

    else
    {
      v106 = v42;
      v107 = v42;
    }

    [v39 inputRect];
    NUScaleMake();
    NUScaleToDouble();
    if (v40)
    {
      [v40 extent];
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
    }

    NUPixelRectToCGRect();
    [PECleanupSegmentAnalyzer scaleRect:"scaleRect:scaleFactor:" scaleFactor:?];
    v104 = 0u;
    v105 = 0u;
    NUPixelRectFromCGRect();
    v102 = 0u;
    v103 = 0u;
    v100 = v104;
    v101 = v105;
    *v109 = *buf;
    *&v109[16] = *&buf[16];
    NUPixelRectIntersection();
    v100 = v102;
    v101 = v103;
    if (!NUPixelRectIsEmpty())
    {
      break;
    }

    v41 = [v94 indexGreaterThanIndex:v41];
LABEL_30:
    v42 = 0uLL;
    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }
  }

  v99 = 0;
  v43 = [v18 newMaskForInstance:v41 error:&v99];
  v44 = v99;
  v100 = 0u;
  v101 = 0u;
  if (v18)
  {
    [v18 tightBoundsForInstance:v41];
  }

  v45 = [MEMORY[0x277D3A918] maskIdentifierForSegmentIndex:v41];
  [v39 inputRect];
  [v43 size];
  v46 = NUScaleMake();
  v48 = v47;
  v49 = objc_alloc(MEMORY[0x277D3A8F8]);
  *v109 = v100;
  *&v109[16] = v101;
  v50 = [v49 initWithBuffer:v43 identifier:v45 extent:v109 scale:{v46, v48}];
  if (v44)
  {
    v51 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *v109 = 134218242;
      *&v109[4] = v41;
      *&v109[12] = 2112;
      *&v109[14] = v44;
      _os_log_impl(&dword_25E6E9000, v51, OS_LOG_TYPE_ERROR, "Cleanup: Error retrieving mask instance %lu: %@", v109, 0x16u);
    }

    goto LABEL_30;
  }

  [v39 inputRect];
  v53 = v52;
  v55 = v54;
  [v43 size];
  NUPixelSizeToCGSize();
  v58 = [(PECleanupSegmentAnalyzer *)self _maskForStroke:v40 imageSize:0 maskSize:v53 filled:v55, v56, v57];
  v59 = PLPhotoEditGetLog();
  v60 = v59;
  if (v58)
  {
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v61 = [v43 size];
      [v43 size];
      *v109 = 134218496;
      *&v109[4] = v41;
      *&v109[12] = 2048;
      *&v109[14] = v61;
      *&v109[22] = 2048;
      *&v109[24] = v62;
      _os_log_impl(&dword_25E6E9000, v60, OS_LOG_TYPE_DEBUG, "Cleanup: mask instance %lu has size %lu x %lu", v109, 0x20u);
    }

    v63 = objc_alloc(MEMORY[0x277D2CF80]);
    v64 = [v63 initWithBrushMask:v58 mask:v43 strokeScale:{*MEMORY[0x277D2CF78], *(MEMORY[0x277D2CF78] + 8)}];
    v65 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      [v64 brushPercentInsideMask];
      v67 = (v66 * 100.0);
      [v64 maskPercentInsideBrush];
      *v109 = 67109632;
      *&v109[4] = v67;
      v39 = v92;
      *&v109[8] = 2048;
      *&v109[10] = v41;
      *&v109[18] = 1024;
      *&v109[20] = (v68 * 100.0);
      _os_log_impl(&dword_25E6E9000, v65, OS_LOG_TYPE_DEBUG, "Cleanup: Stroke intersecting: %d%% / Segment %lu intersecting: %d%%", v109, 0x18u);
    }

    v69 = objc_alloc_init(_CleanupSegmentInfo);
    [(_CleanupSegmentInfo *)v69 setSegmentIndex:v41];
    [(_CleanupSegmentInfo *)v69 setIntersector:v64];
    [(_CleanupSegmentInfo *)v69 setMask:v50];
    [(_CleanupSegmentInfo *)v69 setUsingTargetPoints:0];
    [v91 addObject:v69];
    v41 = [v94 indexGreaterThanIndex:v41];

    v40 = v93;
    goto LABEL_30;
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    *v109 = 0;
    _os_log_impl(&dword_25E6E9000, v60, OS_LOG_TYPE_ERROR, "Cleanup: stroke mask creation failed", v109, 2u);
  }

  v17 = v90;
  (*(v90 + 2))(v90, 0, 0);

  v16 = v88;
  v15 = v89;
LABEL_51:

LABEL_52:
}

- (CGRect)scaleRect:(CGRect)a3 scaleFactor:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetMidY(v15) * a4;
  v11 = width * a4;
  v12 = height * a4;
  v13 = MidX * a4 - width * a4 * 0.5;
  v14 = v10 - height * a4 * 0.5;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)_strokeAppearsToBeClosedShape:(id)a3 imageToScreenSpaceScale:(double)a4 lassoDistance:(double)a5
{
  v287 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 pointCount] <= 5)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = [v7 pointCount];
      _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - rejected for having only %ld points", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_188;
  }

  v258 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PECleanupSegmentAnalyzer__strokeAppearsToBeClosedShape_imageToScreenSpaceScale_lassoDistance___block_invoke_2;
  aBlock[3] = &unk_279A30638;
  v269 = &__block_literal_global_628;
  v10 = _Block_copy(aBlock);
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = __96__PECleanupSegmentAnalyzer__strokeAppearsToBeClosedShape_imageToScreenSpaceScale_lassoDistance___block_invoke_4;
  v266[3] = &unk_279A30680;
  v267 = &__block_literal_global_79;
  v252 = _Block_copy(v266);
  v11 = [v7 pointCount];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11 - 1];
  [v7 pointAtIndex:0];
  v16 = 0.0;
  if (v11 >= 2)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = 1;
    do
    {
      [v7 pointAtIndex:v20];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v16 = v16 + v10[2](v10, v17, v18, v19, v21, v23, v25);
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v12 setObject:v27 atIndexedSubscript:v20 - 1];

      ++v20;
      v17 = v22;
      v18 = v24;
      v19 = v26;
    }

    while (v11 != v20);
  }

  if ([v12 count])
  {
    v28 = 0;
    while (1)
    {
      v29 = [v12 objectAtIndexedSubscript:v28];
      [v29 doubleValue];
      v31 = v30;

      if (v31 >= v16 / 10.0)
      {
        break;
      }

      if (++v28 >= [v12 count])
      {
        goto LABEL_17;
      }
    }

    v32 = v252[2](v252, v7, v12, v16 / 10.0);

    v11 = [v32 pointCount];
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11 - 1];

    [v32 pointAtIndex:0];
    v16 = 0.0;
    if (v11 >= 2)
    {
      v37 = v34;
      v38 = v35;
      v39 = v36;
      v40 = 1;
      do
      {
        [v32 pointAtIndex:v40];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v16 = v16 + v10[2](v10, v37, v38, v39, v41, v43, v45);
        v47 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v33 setObject:v47 atIndexedSubscript:v40 - 1];

        ++v40;
        v37 = v42;
        v38 = v44;
        v39 = v46;
      }

      while (v11 != v40);
    }

    v12 = v33;
    v7 = v32;
  }

LABEL_17:
  [v7 pointAtIndex:0];
  v50 = v48;
  v51 = v49;
  v52 = v11 - 2;
  if (v11 < 2)
  {
    v55 = v49;
    v54 = v48;
  }

  else
  {
    v53 = 1;
    v54 = v48;
    v55 = v49;
    do
    {
      [v7 pointAtIndex:v53];
      v58 = v57;
      if (v50 > v58)
      {
        v50 = v58;
      }

      if (v54 < v58)
      {
        v54 = v58;
      }

      if (v51 > v56)
      {
        v51 = v56;
      }

      if (v55 < v56)
      {
        v55 = v56;
      }

      ++v53;
    }

    while (v11 != v53);
  }

  v59 = (v55 - v51) * (v55 - v51) + (v54 - v50) * (v54 - v50);
  v60 = +[PEGlobalSettings globalSettings];
  [v60 cleanupLassoHeadTailFraction];
  v62 = v61;

  v63 = +[PEGlobalSettings globalSettings];
  [v63 cleanupLassoHeadTailMaxLength];
  v65 = v64 / a4;

  if (v16 * v62 >= v65)
  {
    v66 = v65;
  }

  else
  {
    v66 = v16 * v62;
  }

  v67 = 0.0;
  if (v11 >= 4)
  {
    v68 = 0;
    v69 = 0.0;
    while (1)
    {
      v70 = [v12 objectAtIndexedSubscript:v68];
      [v70 doubleValue];
      v69 = v69 + v71;

      ++v68;
      if (v69 >= v66)
      {
        break;
      }

      if (v11 - 3 == v68)
      {
        v68 = 0;
        break;
      }
    }
  }

  else
  {
    v68 = 0;
    v69 = 0.0;
  }

  v72 = sqrt(v59);
  if (v52 <= v68 + 1)
  {
LABEL_43:
    v76 = 0;
  }

  else
  {
    v67 = 0.0;
    v73 = v11 - 2;
    while (1)
    {
      v74 = [v12 objectAtIndexedSubscript:v73];
      [v74 doubleValue];
      v67 = v67 + v75;

      if (v67 >= v66)
      {
        break;
      }

      if (--v73 <= v68 + 1)
      {
        goto LABEL_43;
      }
    }

    v76 = v11 - v73;
  }

  v237 = v16 * a4;
  v77 = v72 * 0.125;
  v78 = v258 / a4;
  v79 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    v80 = [v7 pointCount];
    [v7 pointAtIndex:0];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    [v7 pointAtIndex:v11 - 1];
    v90 = v10[2](v10, v82, v84, v86, v87, v88, v89);
    *buf = 134220800;
    *&buf[4] = v80;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *&buf[24] = v237;
    *v272 = 2048;
    *&v272[2] = v68;
    *&v272[10] = 2048;
    *&v272[12] = v69;
    v273 = 2048;
    v274 = v69 / v16 * 100.0;
    v275 = 2048;
    v276 = v76;
    v277 = 2048;
    v278 = v67;
    v279 = 2048;
    v280 = v67 / v16 * 100.0;
    v281 = 2048;
    v282 = v77;
    v283 = 2048;
    v284 = v78;
    v285 = 2048;
    v286 = v90;
    _os_log_impl(&dword_25E6E9000, v79, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - stroke has %ld points, length (image): %f, length (screen): %f, will be comparing the first %ld segments of length %.2f (%.2f%%) with the last %ld segments of length %.2f (%.2f%%). Looking for points closer than: %f or %f. First and last points are %f apart.", buf, 0x7Au);
  }

  if (v68 < 1 || v76 <= 0)
  {
    v91 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v92 = "Cleanup: strokeAppearsToBeClosedShape - something went wrong and we didn't select segments to compare";
      goto LABEL_54;
    }

LABEL_55:
    v9 = 0;
    goto LABEL_187;
  }

  if (v76 + v68 > v52)
  {
    v91 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v92 = "Cleanup: strokeAppearsToBeClosedShape - something went wrong and we got too many segments to compare";
LABEL_54:
      _os_log_impl(&dword_25E6E9000, v91, OS_LOG_TYPE_DEBUG, v92, buf, 2u);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if (v77 >= v78)
  {
    v93 = v77;
  }

  else
  {
    v93 = v78;
  }

  v263[0] = MEMORY[0x277D85DD0];
  v263[1] = 3221225472;
  v263[2] = __96__PECleanupSegmentAnalyzer__strokeAppearsToBeClosedShape_imageToScreenSpaceScale_lassoDistance___block_invoke_83;
  v263[3] = &unk_279A306A8;
  v264 = &__block_literal_global_628;
  v256 = v93 * v93;
  v265 = v93 * v93;
  v251 = _Block_copy(v263);
  v261 = 0u;
  v262 = 0u;
  if (v7)
  {
    [v7 extent];
    v94 = v262;
  }

  else
  {
    v94 = 0.0;
  }

  [v7 radius];
  if (v94 / v95 < 4.0 || ([v7 radius], *(&v262 + 1) / v96 < 4.0))
  {
    v97 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v262;
      *&buf[12] = 2048;
      *&buf[14] = *(&v262 + 1);
      v98 = "Cleanup: strokeAppearsToBeClosedShape - rejected for having too small an extent: %ld x %ld";
      goto LABEL_66;
    }

    goto LABEL_68;
  }

  v101 = 0;
  v249 = v76;
  v257 = v11 - 2;
  v259 = v11 + ~v76;
  v247 = v10;
  do
  {
    v102 = v101 + 1;
    if (v257 >= v259)
    {
      v103 = v11 - 2;
      do
      {
        if (v103 > v257 || v103 < 0)
        {
          v118 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            *buf = 134219008;
            *&buf[4] = v11;
            *&buf[12] = 2048;
            *&buf[14] = v68;
            *&buf[22] = 2048;
            *&buf[24] = v249;
            *v272 = 2048;
            *&v272[2] = v101;
            *&v272[10] = 2048;
            *&v272[12] = v103;
            _os_log_impl(&dword_25E6E9000, v118, OS_LOG_TYPE_ERROR, "Cleanup: index outside of stroke point array: \n\t  ptCount: %ld \n\t  compareBeginSegCount: %ld \n\t  compareEndSegCount: %ld \n\t  startSegmentCompareIndex: %ld \n\t  endSegmentCompareIndex: %ld", buf, 0x34u);
          }
        }

        else
        {
          [v7 pointAtIndex:v101];
          v105 = v104;
          v107 = v106;
          [v7 pointAtIndex:v101 + 1];
          v109 = v108;
          v111 = v110;
          [v7 pointAtIndex:v103];
          v113 = v112;
          v115 = v114;
          [v7 pointAtIndex:v103 + 1];
          if (((v113 - v105) * (v117 - v107)) > ((v115 - v107) * (v116 - v105)) == ((v113 - v109) * (v117 - v111)) <= ((v115 - v111) * (v116 - v109)) && ((v109 - v105) * (v115 - v107)) > ((v111 - v107) * (v113 - v105)) != ((v109 - v105) * (v117 - v107)) > ((v111 - v107) * (v116 - v105)))
          {
            v177 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
            {
              v179 = [v7 pointCount];
              *buf = 134219008;
              *&buf[4] = v101;
              *&buf[12] = 2048;
              *&buf[14] = v101 + 1;
              *&buf[22] = 2048;
              *&buf[24] = v103;
              *v272 = 2048;
              *&v272[2] = v103 + 1;
              *&v272[10] = 2048;
              *&v272[12] = v179;
              _os_log_impl(&dword_25E6E9000, v177, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - line segments were intersecting in segments s = {%ld, %ld} and e = {%ld, %ld}, out of %ld points", buf, 0x34u);
            }

            v125 = 0x279A2E000uLL;
            goto LABEL_153;
          }
        }

        v119 = v103-- <= v259;
      }

      while (!v119);
    }

    ++v101;
  }

  while (v102 != v68);
  v120 = 0;
  LOBYTE(v121) = 0;
  v245 = -1;
  v122 = 3.40282347e38;
  v123 = -1;
  v124 = -1;
  v250 = -1;
  v125 = 0x279A2E000;
  v126 = v11 - 2;
  v234 = v12;
  v235 = v7;
  do
  {
    if (v121)
    {
      goto LABEL_143;
    }

    v248 = v120++;
    if (v126 < v259)
    {
      v121 = 0;
      continue;
    }

    v127 = v126;
    v236 = v120;
    while (1)
    {
      if (v127 > v126 || v127 < 0)
      {
        v159 = v120;
        v160 = v126;
        v161 = v123;
        v162 = v124;
        v163 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219008;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v68;
          *&buf[22] = 2048;
          *&buf[24] = v249;
          *v272 = 2048;
          *&v272[2] = v248;
          *&v272[10] = 2048;
          *&v272[12] = v127;
          _os_log_impl(&dword_25E6E9000, v163, OS_LOG_TYPE_ERROR, "Cleanup: index outside of stroke point array: \n\t  ptCount: %ld \n\t  compareBeginSegCount: %ld \n\t  compareEndSegCount: %ld \n\t  startSegmentCompareIndex: %ld \n\t  endSegmentCompareIndex: %ld", buf, 0x34u);
        }

        v124 = v162;
        v123 = v161;
        v126 = v160;
        v120 = v159;
        v10 = v247;
        goto LABEL_135;
      }

      [v7 pointAtIndex:v248];
      v243 = v122;
      v129 = v128;
      v240 = v130;
      v241 = v128;
      v131 = v130;
      v133 = v132;
      v239 = v132;
      [v7 pointAtIndex:v120];
      v242 = v134;
      v254 = v136;
      v255 = v135;
      [v7 pointAtIndex:v127];
      v138 = v137;
      v140 = v139;
      v238 = v139;
      v253 = v141;
      [v7 pointAtIndex:?];
      v143 = v142;
      v145 = v144;
      v147 = v146;
      *&buf[8] = 0;
      *buf = 0;
      v270.a = 0.0;
      v148 = v251[2](v251, buf, &v270, v129, v131, v133, v138, v140, v253);
      v149 = v148 < v243 && v148 < v256;
      if (v149)
      {
        v150 = v127 + 1;
      }

      else
      {
        v150 = v250;
      }

      if (v149)
      {
        v124 = v127;
        v123 = v248 + 1;
      }

      v151 = v245;
      if (v149)
      {
        v151 = v248;
      }

      v246 = v151;
      if (v149)
      {
        v152 = v148;
      }

      else
      {
        v152 = v243;
      }

      v244 = v143;
      v153 = v251[2](v251, buf, &v270, v242, v255, v254, v138, v238, v253);
      v154 = v153 < v256 && v153 < v152;
      if (v154)
      {
        LOBYTE(v149) = 1;
      }

      if (v154)
      {
        v155 = v127 + 1;
      }

      else
      {
        v155 = v150;
      }

      v250 = v155;
      if (v154)
      {
        v124 = v127;
      }

      if (v154)
      {
        v123 = v248 + 1;
      }

      if (v154)
      {
        v156 = v248;
      }

      else
      {
        v156 = v246;
      }

      if (v154)
      {
        v157 = v153;
      }

      else
      {
        v157 = v152;
      }

      v158 = v251[2](v251, buf, &v270, v138, v238, v253, v241, v240, v239);
      if (v158 >= v256)
      {
        v122 = v157;
        v10 = v247;
        v12 = v234;
      }

      else
      {
        v122 = v157;
        v10 = v247;
        v12 = v234;
        if (v158 < v157)
        {
          LOBYTE(v149) = 1;
          v123 = v236;
          v250 = v127 + 1;
          v124 = v127;
          v156 = v248;
          v122 = v158;
        }
      }

      v245 = v156;
      v164 = v251[2](v251, buf, &v270, v244, v145, v147, v241, v240, v239);
      v126 = v11 - 2;
      v7 = v235;
      if (v164 < v256 && v164 < v122)
      {
        v250 = v127 + 1;
        v121 = 1;
        v124 = v127;
        v120 = v236;
        v123 = v236;
        v245 = v248;
        v122 = v164;
        goto LABEL_139;
      }

      if (v149)
      {
        break;
      }

      v120 = v236;
LABEL_135:
      v119 = v127-- <= v259;
      if (v119)
      {
        v121 = 0;
LABEL_139:
        v125 = 0x279A2E000;
        goto LABEL_141;
      }
    }

    v121 = 1;
    v125 = 0x279A2E000uLL;
    v120 = v236;
LABEL_141:
    ;
  }

  while (v120 != v68);
  if (v121)
  {
LABEL_143:
    v165 = v124;
    v166 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
    {
      v167 = COERCE_DOUBLE([v7 pointCount]);
      *buf = 134219264;
      *&buf[4] = sqrt(v122);
      *&buf[12] = 2048;
      *&buf[14] = v245;
      *&buf[22] = 2048;
      *&buf[24] = v123;
      *v272 = 2048;
      *&v272[2] = v165;
      *&v272[10] = 2048;
      *&v272[12] = v250;
      v273 = 2048;
      v274 = v167;
      _os_log_impl(&dword_25E6E9000, v166, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - points and line segments from start and end of stroke found to be close enough (%.2f) at segments s = {%ld, %ld} and e = {%ld, %ld}, out of %ld points", buf, 0x3Eu);
    }

    v168 = [*(v125 + 3640) globalSettings];
    [v168 cleanupShortStrokeLengthThreshold];
    v170 = v169;

    if (v237 < v170)
    {
      v171 = PEExteriorAngleSum(v7) * 57.2957795;
      v172 = [*(v125 + 3640) globalSettings];
      [v172 cleanupShortStrokeAngleThreshold];
      if (v171 >= v173)
      {
      }

      else
      {
        v174 = [*(v125 + 3640) globalSettings];
        [v174 cleanupShortStrokeAngleThreshold];
        v176 = -v175;

        if (v171 > v176)
        {
          v97 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            *&buf[4] = v237;
            *&buf[12] = 2048;
            *&buf[14] = v171;
            v98 = "Cleanup: strokeAppearsToBeClosedShape stroke is short (%.2f) and isn't enough of a circle (%.2f)";
LABEL_66:
            v99 = v97;
            v100 = 22;
LABEL_67:
            _os_log_impl(&dword_25E6E9000, v99, OS_LOG_TYPE_DEBUG, v98, buf, v100);
          }

          goto LABEL_68;
        }
      }

      v177 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        *&buf[4] = v237;
        *&buf[12] = 2048;
        *&buf[14] = v171;
        _os_log_impl(&dword_25E6E9000, v177, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape stroke is short (%.2f) but it's enough of a circle (%.2f)", buf, 0x16u);
      }

LABEL_153:
    }

    Mutable = CGPathCreateMutable();
    if ([v7 pointCount] >= 1)
    {
      v181 = 0;
      do
      {
        [v7 pointAtIndex:v181];
        v183 = v182;
        v185 = v184;
        if (v181)
        {
          CGPathAddLineToPoint(Mutable, 0, v183, v185);
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, v183, v185);
        }

        ++v181;
      }

      while (v181 < [v7 pointCount]);
    }

    CGPathCloseSubpath(Mutable);
    PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
    v186 = PathBoundingBox.origin.x + PathBoundingBox.size.width * 0.5;
    *v272 = 0u;
    v187 = PathBoundingBox.origin.y + PathBoundingBox.size.height * 0.5;
    memset(buf, 0, sizeof(buf));
    CGAffineTransformMakeTranslation(buf, v186, v187);
    *&v260.a = *buf;
    *&v260.c = *&buf[16];
    *&v260.tx = *v272;
    CGAffineTransformScale(&v270, &v260, 1.05, 1.05);
    *&buf[16] = *&v270.c;
    *v272 = *&v270.tx;
    *buf = *&v270.a;
    v260 = v270;
    CGAffineTransformTranslate(&v270, &v260, -v186, -v187);
    *buf = *&v270.a;
    *&buf[16] = *&v270.c;
    *v272 = *&v270.tx;
    v188 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v270.a) = 134218240;
      *(&v270.a + 4) = v186;
      WORD2(v270.b) = 2048;
      *(&v270.b + 6) = v187;
      _os_log_impl(&dword_25E6E9000, v188, OS_LOG_TYPE_DEBUG, "Cleanup: Centerpoint: %f, %f", &v270, 0x16u);
    }

    if ([v7 pointCount] < 1)
    {
      v190 = 0;
    }

    else
    {
      v189 = 0;
      v190 = 0;
      do
      {
        [v7 pointAtIndex:v189];
        v288.x = v191;
        v288.y = v192;
        v190 += CGPathContainsPoint(Mutable, buf, v288, 0);
        ++v189;
      }

      while (v189 < [v7 pointCount]);
    }

    CGPathRelease(Mutable);
    v193 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
    {
      v194 = [v7 pointCount];
      v195 = v190;
      v196 = [v7 pointCount];
      LODWORD(v270.a) = 134218496;
      *(&v270.a + 4) = v194;
      WORD2(v270.b) = 2048;
      *(&v270.b + 6) = v190;
      HIWORD(v270.c) = 2048;
      *&v270.d = ((v190 / v196) * 100.0);
      _os_log_impl(&dword_25E6E9000, v193, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - path has %ld points; %ld are inside the path - %ld%%", &v270, 0x20u);
    }

    else
    {
      v195 = v190;
    }

    if ((v195 / [v7 pointCount]) > 0.3)
    {
      v197 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v270.a) = 0;
        _os_log_impl(&dword_25E6E9000, v197, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - rejected for too many points inside the shape", &v270, 2u);
      }

      goto LABEL_184;
    }

    v197 = [v7 mutableCopy];
    [v197 pointAtIndex:0];
    [v197 appendPoint:?];
    v198 = [v197 ciImageTiled:0 closed:1 pressureMode:2 filled:0];
    v199 = [v197 ciImageTiled:0 closed:1 pressureMode:2 filled:1];
    v200 = MEMORY[0x277D3A958];
    [v198 extent];
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v208 = v207;
    v209 = [MEMORY[0x277CBF740] context];
    [v200 computeMatteCoverageWithRect:v198 segmentationMatte:v209 context:{v202, v204, v206, v208}];
    v211 = v210;

    v212 = MEMORY[0x277D3A958];
    [v199 extent];
    v214 = v213;
    v216 = v215;
    v218 = v217;
    v220 = v219;
    v221 = [MEMORY[0x277CBF740] context];
    [v212 computeMatteCoverageWithRect:v199 segmentationMatte:v221 context:{v214, v216, v218, v220}];
    v223 = v222;

    v224 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v270.a) = 134217984;
      *(&v270.a + 4) = v211;
      _os_log_impl(&dword_25E6E9000, v224, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - strokeCoverage: %f", &v270, 0xCu);
    }

    v225 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v270.a) = 134217984;
      *(&v270.a + 4) = v223;
      _os_log_impl(&dword_25E6E9000, v225, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - filledCoverage: %f", &v270, 0xCu);
    }

    v226 = (v223 - v211) / v211;
    v227 = [*(v125 + 3640) globalSettings];
    [v227 cleanupFilledCoverageRatio];
    v229 = v228;

    v10 = v247;
    if (v226 < v229)
    {
      v230 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
      {
        v231 = [*(v125 + 3640) globalSettings];
        [v231 cleanupFilledCoverageRatio];
        LODWORD(v270.a) = 134218240;
        *(&v270.a + 4) = v226;
        WORD2(v270.b) = 2048;
        *(&v270.b + 6) = v232;
        _os_log_impl(&dword_25E6E9000, v230, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - rejected for too little fill: %f < %f", &v270, 0x16u);
      }

LABEL_184:
      v9 = 0;
    }

    else
    {

      v197 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v270.a) = 0;
        _os_log_impl(&dword_25E6E9000, v197, OS_LOG_TYPE_DEBUG, "Cleanup: strokeAppearsToBeClosedShape - stroke recognized as lasso", &v270, 2u);
      }

      v9 = 1;
    }
  }

  else
  {
    v97 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v98 = "Cleanup: strokeAppearsToBeClosedShape - rejected for head and tail of stroke not being close enough together";
      v99 = v97;
      v100 = 2;
      goto LABEL_67;
    }

LABEL_68:

    v9 = 0;
  }

  v91 = v264;
LABEL_187:

  v8 = v269;
LABEL_188:

  return v9;
}

id __96__PECleanupSegmentAnalyzer__strokeAppearsToBeClosedShape_imageToScreenSpaceScale_lassoDistance___block_invoke_4(uint64_t a1, void *a2, void *a3, double a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc(MEMORY[0x277D2CFE0]);
  [v6 radius];
  v10 = v9;
  [v6 softness];
  v12 = v11;
  [v6 opacity];
  v14 = v13;
  if (v6)
  {
    [v6 clipRect];
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  v15 = [v6 pressureMode];
  LODWORD(v16) = v10;
  LODWORD(v17) = v12;
  LODWORD(v18) = v14;
  v19 = [v8 initWithRadius:v40 softness:v15 opacity:v16 clipRect:v17 pressureMode:v18];
  if ([v6 pointCount] >= 2)
  {
    v20 = 0;
    do
    {
      [v6 pointAtIndex:v20];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v19 appendPoint:?];
      v27 = [v7 objectAtIndexedSubscript:v20];
      [v27 doubleValue];
      v29 = v28;

      ++v20;
      if (v29 >= a4)
      {
        [v6 pointAtIndex:v20];
        v33 = v32;
        v34 = vcvtmd_s64_f64(v29 / a4);
        if (v34 >= 1)
        {
          v35 = v30;
          v36 = v31;
          for (i = 0; i != v34; ++i)
          {
            (*(*(a1 + 32) + 16))(v22, v24, v26, v33, v35, v36, (i + 1.0) / (v34 + 1.0));
            [v19 appendPoint:?];
          }
        }
      }
    }

    while (v20 < [v6 pointCount] - 1);
  }

  [v6 pointAtIndex:{objc_msgSend(v6, "pointCount") - 1}];
  [v19 appendPoint:?];

  return v19;
}

void __96__PECleanupSegmentAnalyzer__strokeAppearsToBeClosedShape_imageToScreenSpaceScale_lassoDistance___block_invoke_83(uint64_t a1, uint64_t a2, double *a3, float a4, float a5, float a6, float a7, float a8, float a9, double a10, double a11, float a12, float a13, float a14)
{
  v20 = a8;
  v21 = a7;
  v25 = a14;
  v26 = (*(*(a1 + 32) + 16))(a7, a8, a9, a12, a13, a14);
  if (v26 >= *(a1 + 40))
  {
    v28 = a12 - v21;
    v29 = a13 - v20;
    v30 = fmax(fmin(((a5 - v20) * v29 + (a4 - v21) * v28) / v26, 1.0), 0.0);
    *&v28 = v21 + v30 * v28;
    *&v29 = v20 + v30 * v29;
    *a2 = LODWORD(v28);
    *(a2 + 4) = LODWORD(v29);
    *(a2 + 8) = a6;
    *a3 = v30;
  }

  else
  {
    v31 = (*(*(a1 + 32) + 16))(a4, a5, a6, v21, v20);
    if (v31 >= (*(*(a1 + 32) + 16))(a4, a5, a6, a12, a13, a14))
    {
      v27 = 1.0;
      v21 = a12;
      v20 = a13;
    }

    else
    {
      v27 = 0.0;
      v25 = a9;
    }

    *a2 = v21;
    *(a2 + 4) = v20;
    *(a2 + 8) = v25;
    *a3 = v27;
  }
}

- (BOOL)shouldChooseSegment:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isWire])
  {
    v4 = 0.2;
  }

  else if ([v3 usingTargetPoints])
  {
    v5 = +[PEGlobalSettings globalSettings];
    [v5 retouchTargetPointCoverageThreshold];
    v4 = v6;
  }

  else
  {
    v4 = 0.800000012;
  }

  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v3 intersector];
    [v8 maskPercentInsideBrush];
    v14 = 134218240;
    v15 = v4;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEBUG, "Cleanup: coverage threshold: %f - maskPercentInsideBrush: %f", &v14, 0x16u);
  }

  v10 = [v3 intersector];
  [v10 maskPercentInsideBrush];
  v12 = v11 > v4;

  return v12;
}

- (void)analyzeStrokeMaskIntersections:(id)a3 inpaintMaskContext:(id)a4 compositionController:(id)a5 geometry:(id)a6 imageToScreenSpaceScale:(double)a7 faceRects:(id)a8 completion:(id)a9
{
  v66 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v47 = a9;
  v21 = +[PEGlobalSettings globalSettings];
  [v21 cleanupLassoDistance];
  v23 = [(PECleanupSegmentAnalyzer *)self _strokeAppearsToBeClosedShape:v16 imageToScreenSpaceScale:a7 lassoDistance:v22];

  v24 = PLPhotoEditGetLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
  v48 = v17;
  v49 = v18;
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v26 = "Cleanup: Stroke appears to be a closed shape";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v26 = "Cleanup: Stroke is NOT a closed shape";
  }

  _os_log_impl(&dword_25E6E9000, v24, OS_LOG_TYPE_DEBUG, v26, buf, 2u);
LABEL_7:

  [v19 inputRect];
  v27 = NUPixelSizeFromCGSize();
  v29 = v28;
  v30 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = +[PEGlobalSettings sharedSettings];
    if ([v31 retouchPixellatesFaces])
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = [v20 count];
    *buf = 136315650;
    v61 = "[PECleanupSegmentAnalyzer analyzeStrokeMaskIntersections:inpaintMaskContext:compositionController:geometry:imageToScreenSpaceScale:faceRects:completion:]";
    v62 = 2112;
    v63 = v32;
    v64 = 2048;
    v65 = v33;
    _os_log_impl(&dword_25E6E9000, v30, OS_LOG_TYPE_DEFAULT, "%s: PIXELLATION: retouchPixellatesFaces: %@ faceRects.count: %lu", buf, 0x20u);
  }

  v34 = +[PEGlobalSettings sharedSettings];
  v35 = [v34 retouchPixellatesFaces];

  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = [v16 ciImageTiled:0 closed:0 pressureMode:2 filled:v23];
  v37 = [MEMORY[0x277D3A8E8] globalSettings];
  [v37 inpaintPixellationIntersectionAreaToMaskAreaThreshold];
  v39 = v38;

  v40 = [MEMORY[0x277D3A8E8] globalSettings];
  [v40 inpaintPixellationIntersectionAreaToFaceAreaThreshold];
  v42 = v41;

  if (![MEMORY[0x277D3A918] maskIsMostlyWithinFace:v36 imageSize:v27 imageOrientation:v29 intAreaOverMaskAreaThreshold:objc_msgSend(v49 intAreaOverFaceAreaThreshold:"imageOrientation") detectedFaces:{v20, v39, v42}])
  {

LABEL_16:
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __154__PECleanupSegmentAnalyzer_analyzeStrokeMaskIntersections_inpaintMaskContext_compositionController_geometry_imageToScreenSpaceScale_faceRects_completion___block_invoke;
    v50[3] = &unk_279A305F0;
    v51 = v16;
    v57 = v27;
    v58 = v29;
    v52 = v49;
    v53 = v20;
    v54 = self;
    v59 = v23;
    v55 = v19;
    v43 = v47;
    v56 = v47;
    v46 = self;
    v45 = v49;
    v44 = v48;
    [(PECleanupSegmentAnalyzer *)v46 _analyzeStrokeMaskIntersections:v51 treatStrokeAsFilledCircle:v23 usingMaskContext:v48 useTargetPoints:0 compositionController:v52 geometry:v55 completion:v50];

    v36 = v51;
    goto LABEL_17;
  }

  v43 = v47;
  (*(v47 + 2))(v47, 0, 0, 0, 0, v23, 1, 0);
  v44 = v48;
  v45 = v49;
LABEL_17:
}

void __154__PECleanupSegmentAnalyzer_analyzeStrokeMaskIntersections_inpaintMaskContext_compositionController_geometry_imageToScreenSpaceScale_faceRects_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([MEMORY[0x277D3A918] strokeIsEntirelyWithinFace:*(a1 + 32) imageSize:*(a1 + 80) imageOrientation:*(a1 + 88) detectedFaces:{objc_msgSend(*(a1 + 40), "imageOrientation"), *(a1 + 48)}])
  {
    v13 = +[PEGlobalSettings globalSettings];
    v14 = [v13 skipOnDemandSegmentationOnFaces];

    if (v14)
    {
      v15 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_25E6E9000, v15, OS_LOG_TYPE_DEBUG, "Brush stroke was entirely inside a detected face, so skipping target point segmentation", buf, 2u);
      }

      [v10 count];
      goto LABEL_7;
    }
  }

  if ([v10 count])
  {
LABEL_7:
    (*(*(a1 + 72) + 16))();
    goto LABEL_11;
  }

  v16 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v16, OS_LOG_TYPE_DEBUG, "Cleanup: Did not find intersections using mask context; attempting resegmentation using target points", buf, 2u);
  }

  v17 = *(a1 + 96);
  v18 = *(a1 + 32);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __154__PECleanupSegmentAnalyzer_analyzeStrokeMaskIntersections_inpaintMaskContext_compositionController_geometry_imageToScreenSpaceScale_faceRects_completion___block_invoke_74;
  v22[3] = &unk_279A305C8;
  v23 = *(a1 + 72);
  v24 = *(a1 + 96);
  [v19 _analyzeStrokeMaskIntersections:v18 treatStrokeAsFilledCircle:v17 usingMaskContext:0 useTargetPoints:1 compositionController:v21 geometry:v20 completion:v22];

LABEL_11:
}

- (void)_analyzeStrokeMaskIntersections:(id)a3 treatStrokeAsFilledCircle:(BOOL)a4 usingMaskContext:(id)a5 useTargetPoints:(BOOL)a6 compositionController:(id)a7 geometry:(id)a8 completion:(id)a9
{
  v11 = a6;
  v13 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v16)
  {
    v20 = [v16 segmentationResult];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __161__PECleanupSegmentAnalyzer__analyzeStrokeMaskIntersections_treatStrokeAsFilledCircle_usingMaskContext_useTargetPoints_compositionController_geometry_completion___block_invoke;
    v49[3] = &unk_279A30550;
    v50 = v19;
    v21 = v19;
    LOBYTE(v37) = v11;
    [(PECleanupSegmentAnalyzer *)self _analyzeSegmentationResult:v20 forStroke:v15 treatStrokeAsFilledCircle:v13 maskContext:v16 compositionController:v17 geometry:v18 usingTargetPoints:v37 completion:v49];

    v22 = v50;
  }

  else
  {
    v38 = v13;
    v23 = objc_alloc(MEMORY[0x277D2D050]);
    v24 = [v17 composition];
    v25 = [v23 initWithComposition:v24];

    v26 = [MEMORY[0x277D3A938] pipelineFiltersForPreInpaintSegmentation];
    [v25 setPipelineFilters:v26];

    v27 = [(PECleanupSegmentAnalyzer *)self analyzerQueue];
    [v25 setResponseQueue:v27];

    if (v11)
    {
      v28 = [MEMORY[0x277D3A938] pipelineFiltersForPostInpaintSegmentation];
      [v25 setPipelineFilters:v28];

      v29 = [MEMORY[0x277D2D050] maximumTargetPoints];
      [v18 inputRect];
      v32 = [(PECleanupSegmentAnalyzer *)self _strokeToNormalizedSampledPointArray:v15 maxPointCount:v29 originalImageSize:v38 treatStrokeAsFilledCircle:v30, v31];
      [v25 setTargetSamplePoints:v32];
    }

    v33 = objc_alloc(MEMORY[0x277D3A920]);
    v34 = [MEMORY[0x277D3A928] genEditIdentifier];
    v35 = [v33 initWithIdentifier:v34 operation:3];

    [v35 beginMeasuring];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __161__PECleanupSegmentAnalyzer__analyzeStrokeMaskIntersections_treatStrokeAsFilledCircle_usingMaskContext_useTargetPoints_compositionController_geometry_completion___block_invoke_2;
    v39[3] = &unk_279A305A0;
    v40 = v35;
    v41 = self;
    v42 = v15;
    v47 = v38;
    v43 = v17;
    v48 = v11;
    v45 = v25;
    v46 = v19;
    v44 = v18;
    v36 = v19;
    v22 = v25;
    v21 = v35;
    [v22 submit:v39];
  }
}

void __161__PECleanupSegmentAnalyzer__analyzeStrokeMaskIntersections_treatStrokeAsFilledCircle_usingMaskContext_useTargetPoints_compositionController_geometry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 endMeasuring];
  v18 = 0;
  v5 = [v4 result:&v18];

  v6 = v18;
  if (v6)
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_ERROR, "Cleanup: Error creating segmentation result: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 88);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 89);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __161__PECleanupSegmentAnalyzer__analyzeStrokeMaskIntersections_treatStrokeAsFilledCircle_usingMaskContext_useTargetPoints_compositionController_geometry_completion___block_invoke_65;
    v15[3] = &unk_279A30578;
    v17 = *(a1 + 80);
    v16 = *(a1 + 72);
    LOBYTE(v14) = v13;
    [v8 _analyzeSegmentationResult:v5 forStroke:v9 treatStrokeAsFilledCircle:v10 maskContext:0 compositionController:v11 geometry:v12 usingTargetPoints:v14 completion:v15];

    v7 = v17;
  }
}

void __161__PECleanupSegmentAnalyzer__analyzeStrokeMaskIntersections_treatStrokeAsFilledCircle_usingMaskContext_useTargetPoints_compositionController_geometry_completion___block_invoke_65(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 targetSamplePoints];
  (*(v6 + 16))(v6, v10, v9, v8, v11);
}

- (void)_analyzeSegmentationResult:(id)a3 forStroke:(id)a4 treatStrokeAsFilledCircle:(BOOL)a5 maskContext:(id)a6 compositionController:(id)a7 geometry:(id)a8 usingTargetPoints:(BOOL)a9 completion:(id)a10
{
  v95 = a5;
  v112 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v97 = a4;
  v16 = a6;
  v17 = a7;
  v98 = a8;
  v18 = a10;
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v99 = [v15 instances];
  v19 = PLPhotoEditGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  v94 = v15;
  v91 = v18;
  if (a9)
  {
    if (v20)
    {
      *buf = 134217984;
      *&buf[4] = [v99 count];
      _os_log_impl(&dword_25E6E9000, v19, OS_LOG_TYPE_DEBUG, "Cleanup: Attempting intersection with Target Points; retrieved %lu instances", buf, 0xCu);
    }

    v21 = v98;
LABEL_5:

    goto LABEL_9;
  }

  if (v20)
  {
    v22 = [v15 backgroundInstances];
    v23 = [v22 count];
    v24 = [v15 foregroundInstances];
    *buf = 134218240;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = [v24 count];
    _os_log_impl(&dword_25E6E9000, v19, OS_LOG_TYPE_DEBUG, "Cleanup: Attempting intersection; retrieved %lu background instances, %lu foreground instances", buf, 0x16u);
  }

  v25 = [v99 count];
  v26 = MEMORY[0x277D3A918];
  v27 = [v17 composition];
  v28 = [v26 removeOperationsFromInstances:v99 composition:v27 context:v16];

  v29 = [MEMORY[0x277D3A918] removeGatedInstances:v28 context:v16];

  v99 = v29;
  v21 = v98;
  if (v25 != [v29 count])
  {
    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v90 = [v99 count];
      *buf = 134217984;
      *&buf[4] = v25 - v90;
      _os_log_impl(&dword_25E6E9000, v19, OS_LOG_TYPE_DEBUG, "Cleanup: %ld indices were removed from testing because those objects had previously been removed from the image", buf, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_9:
  v102 = [v15 instancesForCategory:*MEMORY[0x277D2CF68]];
  v30 = [v99 firstIndex];
  v92 = v17;
  v93 = v16;
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v101 = 0;
    v31 = 0;
  }

  else
  {
    v32 = v30;
    v31 = 0;
    v101 = 0;
    do
    {
      v108 = 0;
      v33 = [v15 newMaskForInstance:v32 error:&v108];
      v34 = v108;

      memset(buf, 0, 32);
      if (v15)
      {
        [v15 tightBoundsForInstance:v32];
      }

      if (a9)
      {
        v35 = MEMORY[0x277CCACA8];
        v36 = [MEMORY[0x277CCAD78] UUID];
        v37 = [v35 stringWithFormat:@"targetPoints: %@", v36];
      }

      else
      {
        v37 = [MEMORY[0x277D3A918] maskIdentifierForSegmentIndex:v32];
      }

      [v21 inputRect];
      [v33 size];
      v38 = NUScaleMake();
      v40 = v39;
      v41 = objc_alloc(MEMORY[0x277D3A8F8]);
      *v110 = *buf;
      *&v110[16] = *&buf[16];
      v42 = [v41 initWithBuffer:v33 identifier:v37 extent:v110 scale:{v38, v40}];
      v43 = [v102 containsIndex:v32];
      if (v34)
      {
        v31 = v34;
        v44 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v110 = 134218242;
          *&v110[4] = v32;
          *&v110[12] = 2112;
          *&v110[14] = v34;
          _os_log_impl(&dword_25E6E9000, v44, OS_LOG_TYPE_ERROR, "Cleanup: Error retrieving mask instance %lu: %@", v110, 0x16u);
        }
      }

      else
      {
        v100 = v43;
        [v21 inputRect];
        v46 = v45;
        v48 = v47;
        [v33 size];
        NUPixelSizeToCGSize();
        v51 = [(PECleanupSegmentAnalyzer *)self _maskForStroke:v97 imageSize:v95 maskSize:v46 filled:v48, v49, v50];

        v52 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v53 = [v33 size];
          [v33 size];
          *v110 = 134218496;
          *&v110[4] = v32;
          *&v110[12] = 2048;
          *&v110[14] = v53;
          *&v110[22] = 2048;
          *&v110[24] = v54;
          _os_log_impl(&dword_25E6E9000, v52, OS_LOG_TYPE_DEBUG, "Cleanup: mask instance %lu has size %lu x %lu", v110, 0x20u);
        }

        v55 = objc_alloc(MEMORY[0x277D2CF80]);
        v56 = [v55 initWithBrushMask:v51 mask:v33 strokeScale:{*MEMORY[0x277D2CF78], *(MEMORY[0x277D2CF78] + 8)}];
        v57 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          [v56 brushPercentInsideMask];
          v59 = v51;
          v60 = (v58 * 100.0);
          [v56 maskPercentInsideBrush];
          *v110 = 67109632;
          *&v110[4] = v60;
          v51 = v59;
          v15 = v94;
          *&v110[8] = 2048;
          *&v110[10] = v32;
          *&v110[18] = 1024;
          *&v110[20] = (v61 * 100.0);
          _os_log_impl(&dword_25E6E9000, v57, OS_LOG_TYPE_DEBUG, "Cleanup: Stroke intersecting: %d%% / Segment %lu intersecting: %d%%", v110, 0x18u);
        }

        v62 = objc_alloc_init(_CleanupSegmentInfo);
        [(_CleanupSegmentInfo *)v62 setSegmentIndex:v32];
        [(_CleanupSegmentInfo *)v62 setIntersector:v56];
        [(_CleanupSegmentInfo *)v62 setMask:v42];
        [(_CleanupSegmentInfo *)v62 setUsingTargetPoints:a9];
        [(_CleanupSegmentInfo *)v62 setIsWire:v100];
        [v96 addObject:v62];

        v32 = [v99 indexGreaterThanIndex:v32];
        v101 = v51;
        v21 = v98;
        v31 = 0;
      }
    }

    while (v32 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v103 = v31;
  v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v66 = v96;
  v67 = [v66 countByEnumeratingWithState:&v104 objects:v109 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v105;
    v70 = 0.0;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v105 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v72 = *(*(&v104 + 1) + 8 * i);
        v73 = [v72 mask];
        if ([(PECleanupSegmentAnalyzer *)self shouldChooseSegment:v72])
        {
          [v63 addObject:v73];
          [v65 addIndex:{objc_msgSend(v72, "segmentIndex")}];
          v74 = [v72 intersector];
          [v74 brushPercentInsideMask];
          v70 = v70 + v75;
        }

        v76 = [v73 buffer];
        [v64 addObject:v76];
      }

      v68 = [v66 countByEnumeratingWithState:&v104 objects:v109 count:16];
    }

    while (v68);
  }

  else
  {
    v70 = 0.0;
  }

  if (![v63 count])
  {
    v87 = PLPhotoEditGetLog();
    v83 = v94;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v87, OS_LOG_TYPE_DEBUG, "Cleanup: No segments sufficiently intersected the stroke", buf, 2u);
    }

    goto LABEL_55;
  }

  v77 = +[PEGlobalSettings globalSettings];
  [v77 retouchStrokeIntersectionPercentage];
  v79 = v78 / 100.0;

  v80 = PLPhotoEditGetLog();
  v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
  v82 = v70 < v79 && !v95;
  v83 = v94;
  if (v82)
  {
    if (v81)
    {
      v88 = [v63 count];
      *buf = 134218240;
      *&buf[4] = v88;
      *&buf[12] = 2048;
      *&buf[14] = v70 * 100.0;
      _os_log_impl(&dword_25E6E9000, v80, OS_LOG_TYPE_DEFAULT, "Cleanup: %ld segments passed, but %f%% of stroke was over those segments, so not choosing any segments", buf, 0x16u);
    }

LABEL_55:
    v85 = v63;
    v63 = 0;
    goto LABEL_56;
  }

  if (v81)
  {
    v84 = [v63 count];
    *buf = 134218242;
    *&buf[4] = v84;
    *&buf[12] = 2112;
    *&buf[14] = v63;
    _os_log_impl(&dword_25E6E9000, v80, OS_LOG_TYPE_DEFAULT, "Cleanup: Successfully chose %ld segments (%@)", buf, 0x16u);
  }

  v85 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = @"No";
    if (v95)
    {
      v86 = @"Yes";
    }

    *buf = 134218242;
    *&buf[4] = v70 * 100.0;
    *&buf[12] = 2112;
    *&buf[14] = v86;
    _os_log_impl(&dword_25E6E9000, v85, OS_LOG_TYPE_DEFAULT, "Cleanup: %f%% of stroke was over mask segments. Stroke was a closed shape? %@", buf, 0x16u);
  }

LABEL_56:

  v89 = [v65 copy];
  (v91)[2](v91, v63, v89, v64);
}

- (id)_strokeToNormalizedSampledPointArray:(id)a3 maxPointCount:(int64_t)a4 originalImageSize:(CGSize)a5 treatStrokeAsFilledCircle:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = v11;
  v13 = v11;
  if (v6)
  {
    v13 = [v11 mutableCopy];
    [v13 setRadius:0.0];
  }

  v49 = 0u;
  v50 = 0u;
  if (v13)
  {
    [v13 extent];
  }

  v14 = sqrt(a4 / NUPixelSizeArea());
  v15 = v14 + v14;
  v16 = width * (v14 + v14);
  v17 = height * (v14 + v14);
  v18 = [(PECleanupSegmentAnalyzer *)self _maskForStroke:v13 imageSize:v6 maskSize:width filled:height, v16, v17];
  if (v18)
  {
    v19 = v18;
    v20 = +[PEGlobalSettings globalSettings];
    v21 = [v20 targetPointsFillStrategy];

    if (v6 && v21 == 1)
    {
      v22 = [(PECleanupSegmentAnalyzer *)self _maskForStroke:v12 imageSize:0 maskSize:width filled:height, v16, v17];
      v23 = [(PECleanupSegmentAnalyzer *)self _filledRegionOfFilledStrokeImage:v19 withUnfilledStrokeImage:v22];

      v19 = v23;
    }

    v47 = 0u;
    v48 = 0u;
    *&v45.a = v49;
    *&v45.c = v50;
    NUPixelRectScale();
    pixelBufferOut = 0;
    if (CVPixelBufferCreate(0, 0, 0, 0x4C303038u, 0, &pixelBufferOut))
    {
      v24 = 0;
    }

    else
    {
      v39 = a4;
      memset(&v45, 0, sizeof(v45));
      CGAffineTransformMakeTranslation(&v45, -v47, -*(&v47 + 1));
      NUPixelRectToCGRect();
      v25 = [v19 imageByCroppingToRect:?];

      v44 = v45;
      v19 = [v25 imageByApplyingTransform:&v44];

      v26 = [MEMORY[0x277CBF740] context];
      [v26 render:v19 toCVPixelBuffer:pixelBufferOut];

      v27 = [MEMORY[0x277CBEB18] array];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __123__PECleanupSegmentAnalyzer__strokeToNormalizedSampledPointArray_maxPointCount_originalImageSize_treatStrokeAsFilledCircle___block_invoke;
      aBlock[3] = &unk_279A30528;
      v42 = width;
      v43 = height;
      v38 = v27;
      v41 = v38;
      v28 = _Block_copy(aBlock);
      CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      if (*(&v48 + 1) >= 1)
      {
        v30 = BaseAddress;
        v31 = 0;
        do
        {
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          v33 = v48;
          if (v48 >= 1)
          {
            v34 = 0;
            v35 = v30 + BytesPerRow * v31;
            do
            {
              if (*(v35 + v34) < 0)
              {
                v28[2](v28, (v34 + v47) / v15, (*(&v48 + 1) - v31 + *(&v47 + 1)) / v15);
                v33 = v48;
              }

              ++v34;
            }

            while (v34 < v33);
          }

          ++v31;
        }

        while (v31 < *(&v48 + 1));
      }

      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 1uLL);
      CVPixelBufferRelease(pixelBufferOut);
      v36 = v38;
      v24 = v36;
      if ([v36 count] > v39)
      {
        v24 = [(PECleanupSegmentAnalyzer *)self _evenlySampleArray:v36 maxCount:?];
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __123__PECleanupSegmentAnalyzer__strokeToNormalizedSampledPointArray_maxPointCount_originalImageSize_treatStrokeAsFilledCircle___block_invoke(uint64_t a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  __asm { FMOV            V1.2D, #1.0 }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCAE60] nu_valueWithCGPoint:{vmaxnmq_f64(vminnmq_f64(vdivq_f64(a2, *(a1 + 40)), _Q1), 0)}];
  [v8 addObject:v9];
}

- (id)_filledRegionOfFilledStrokeImage:(id)a3 withUnfilledStrokeImage:(id)a4
{
  v43[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = thresholdImage(a3, 0.9999);
  v7 = thresholdImage(v5, 0.0001);

  v8 = v7;
  [v8 extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [MEMORY[0x277CBF738] cachedKernelWithString:@"kernel vec4 PECleanupSegmentAnalyzerInvertMask(__sample s) { return vec4(1.0 - s) }"];;
  v43[0] = v8;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];

  v19 = [v17 applyWithExtent:v18 arguments:{*MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];

  v20 = [v19 imageByCroppingToRect:{v10, v12, v14, v16}];

  v21 = v6;
  v22 = v20;
  [v21 extent];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v22 extent];
  v47.origin.x = v31;
  v47.origin.y = v32;
  v47.size.width = v33;
  v47.size.height = v34;
  v45.origin.x = v24;
  v45.origin.y = v26;
  v45.size.width = v28;
  v45.size.height = v30;
  v46 = CGRectIntersection(v45, v47);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  if (CGRectIsEmpty(v46))
  {
    v39 = [MEMORY[0x277CBF758] emptyImage];
  }

  else
  {
    v40 = [MEMORY[0x277CBF738] cachedKernelWithString:{@"kernel vec4 PECleanupSegmentAnalyzerAndMasks(__sample a, __sample b) { return vec4(clamp(a, 0.0, 1.0) * clamp(b, 0.0, 1.0)) }"}];;
    v43[0] = v21;
    v43[1] = v22;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v39 = [v40 applyWithExtent:v41 arguments:{x, y, width, height}];
  }

  return v39;
}

- (id)_brushStrokeToNormalizedSampledPointArray:(id)a3 maxPointCount:(int64_t)a4 originalImageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__PECleanupSegmentAnalyzer__brushStrokeToNormalizedSampledPointArray_maxPointCount_originalImageSize___block_invoke;
  aBlock[3] = &unk_279A30500;
  v25 = width;
  v26 = height;
  v11 = v10;
  v24 = v11;
  v12 = _Block_copy(aBlock);
  [v9 radius];
  v14 = v13;
  if ([v9 pointCount] >= 1)
  {
    v15 = 0;
    do
    {
      [v9 pointAtIndex:v15];
      v17 = v16;
      v19 = v18;
      v12[2](v12);
      (v12[2])(v12, v17 - v14, v19);
      (v12[2])(v12, v14 + v17, v19);
      (v12[2])(v12, v17, v19 - v14);
      (v12[2])(v12, v17, v14 + v19);
      ++v15;
    }

    while (v15 < [v9 pointCount]);
  }

  v20 = v11;
  v21 = v20;
  if ([v20 count] > a4)
  {
    v21 = [(PECleanupSegmentAnalyzer *)self _evenlySampleArray:v20 maxCount:a4];
  }

  return v21;
}

void __102__PECleanupSegmentAnalyzer__brushStrokeToNormalizedSampledPointArray_maxPointCount_originalImageSize___block_invoke(uint64_t a1, float32x2_t a2, float32_t a3)
{
  a2.f32[1] = a3;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAE60] nu_valueWithCGPoint:{vmaxnmq_f64(vminnmq_f64(vdivq_f64(vcvtq_f64_f32(a2), *(a1 + 40)), vdupq_n_s64(0x3FEFFF2E40000000uLL)), 0)}];
  [v3 addObject:v4];
}

- (id)_evenlySampleArray:(id)a3 maxCount:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 count];
  if (v6 <= a4)
  {
    v12 = v5;
  }

  else
  {
    v7 = v6;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
    if (a4 >= 1)
    {
      v9 = v7 / a4;
      v10 = 0.0;
      do
      {
        v11 = [v5 objectAtIndex:v10];
        [v8 addObject:v11];

        v10 = v9 + v10;
        --a4;
      }

      while (a4);
    }

    v12 = [v8 copy];
  }

  return v12;
}

- (id)_maskForStroke:(id)a3 imageSize:(CGSize)a4 maskSize:(CGSize)a5 filled:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v12 = a3;
  v13 = [(PECleanupSegmentAnalyzer *)self cachedBrushStroke];
  if (v13 != v12)
  {
    goto LABEL_8;
  }

  v14 = [(PECleanupSegmentAnalyzer *)self cachedStrokeMask];
  if (!v14 || ([(PECleanupSegmentAnalyzer *)self cachedStrokeMaskSize], width != v16) || height != v15)
  {

LABEL_8:
    goto LABEL_9;
  }

  v17 = [(PECleanupSegmentAnalyzer *)self cachedStrokeMaskFilled];

  if (v17 == v6)
  {
    v18 = [(PECleanupSegmentAnalyzer *)self cachedStrokeMask];
    goto LABEL_10;
  }

LABEL_9:
  v19 = [v12 mutableCopy];
  CGAffineTransformMakeScale(&v22, width / v10, height / v9);
  [v19 applyTransform:&v22];
  [(PECleanupSegmentAnalyzer *)self setCachedBrushStroke:v12];
  v20 = [v19 ciImageTiled:0 closed:0 pressureMode:2 filled:v6];
  [(PECleanupSegmentAnalyzer *)self setCachedStrokeMask:v20];

  [(PECleanupSegmentAnalyzer *)self setCachedStrokeMaskSize:width, height];
  [(PECleanupSegmentAnalyzer *)self setCachedStrokeMaskFilled:v6];
  v18 = [(PECleanupSegmentAnalyzer *)self cachedStrokeMask];

LABEL_10:

  return v18;
}

- (PECleanupSegmentAnalyzer)init
{
  v8.receiver = self;
  v8.super_class = PECleanupSegmentAnalyzer;
  v2 = [(PECleanupSegmentAnalyzer *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Cleanup Segment Analyzer", v3);
    analyzerQueue = v2->_analyzerQueue;
    v2->_analyzerQueue = v4;

    v6 = v2;
  }

  return v2;
}

@end