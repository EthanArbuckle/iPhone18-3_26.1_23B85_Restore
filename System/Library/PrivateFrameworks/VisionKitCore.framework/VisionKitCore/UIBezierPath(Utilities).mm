@interface UIBezierPath(Utilities)
+ (CGPath)_cgPathFromClipperPath:()Utilities;
+ (CGPath)vk_newRoundedPathWithRadius:()Utilities points:;
+ (VKLineSegment)vk_shiftLinePerpendicularlyFromPoint:()Utilities to:radius:;
+ (double)radiusForQuads:()Utilities radiusRatio:;
+ (double)vk_projectPoint:()Utilities lineStart:lineEnd:;
+ (id)mapPaths:()Utilities toQuads:;
+ (id)vk_allPointsFromCGPath:()Utilities;
+ (id)vk_groupAndRoundPaths:()Utilities radius:offset:;
+ (id)vk_subpathArrayFromCGPath:()Utilities;
+ (uint64_t)vk_cgPathcontainsAnyCurveToPoints:()Utilities;
+ (void)_processPointsForNarrowAngles:()Utilities;
+ (void)_processPointsForRounding:()Utilities withRadius:;
+ (void)vk_calculateCenterForPoints:()Utilities p2:p3:radius:;
+ (void)vk_roundAndGroupNormalizedQuadsForHighlight:()Utilities aspectRatio:expansionScale:radiusToAvgHeightRatio:;
+ (void)vk_signForRadiusWithVectorStart:()Utilities end:otherPoint:;
- (double)vk_centroid;
- (double)vk_lengthIgnoringCurves;
- (id)_vk_flattenWithPath:()Utilities clipType:;
- (id)debugQuickLookObject;
- (id)vk_expandWithOffset:()Utilities;
- (id)vk_intersectAndFlattenWithPath:()Utilities;
- (id)vk_pathByFittingToRect:()Utilities;
- (id)vk_pathFromFlippingInRect:()Utilities;
- (id)vk_unionAndFlattenWithPath:()Utilities;
- (uint64_t)vk_CGPath;
- (uint64_t)vk_allPoints;
- (uint64_t)vk_applyTransform:()Utilities;
- (uint64_t)vk_subpathArray;
- (void)vk_appendBezierPath:()Utilities;
- (void)vk_appendRect:()Utilities;
@end

@implementation UIBezierPath(Utilities)

- (uint64_t)vk_CGPath
{
  v1 = a1;

  return [v1 CGPath];
}

- (void)vk_appendRect:()Utilities
{
  v3 = [VKQuad quadFromCGRect:?];
  v2 = [v3 path];
  [a1 vk_appendBezierPath:v2];
}

- (void)vk_appendBezierPath:()Utilities
{
  v4 = a3;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    [a1 appendPath:v4];
  }
}

- (double)vk_centroid
{
  v1 = [a1 vk_allPoints];
  v2 = [v1 count];
  v3 = v2;
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  if (v2 >= 3)
  {
    v6 = 0;
    v7 = v2 - 1;
    v8 = 0.0;
    do
    {
      v9 = [v1 objectAtIndexedSubscript:v6];
      [v9 vk_pointValue];
      v11 = v10;
      v13 = v12;

      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = v6 + 1;
      }

      v15 = [v1 objectAtIndexedSubscript:v14];
      [v15 vk_pointValue];
      v17 = v16;
      v19 = v18;
      ++v6;

      v20 = VKMCrossPoints(v17, v19, v11, v13);
      v4 = v4 + (v11 + v17) * v20;
      v5 = v5 + (v13 + v19) * v20;
      v8 = v8 + v20 * 0.5;
    }

    while (v3 != v6);
    v21 = VKMMultiplyPointScalar(v4, v5, 1.0 / (v8 * 6.0));
    if (v21 >= 0.0)
    {
      v4 = v21;
    }

    else
    {
      v4 = -v21;
    }
  }

  return v4;
}

- (double)vk_lengthIgnoringCurves
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4012000000;
  v7[3] = __Block_byref_object_copy__15;
  v7[4] = __Block_byref_object_dispose__15;
  v7[5] = &unk_1B44420A2;
  v8 = VKMPointInfinity;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x4012000000;
  v5[3] = __Block_byref_object_copy__15;
  v5[4] = __Block_byref_object_dispose__15;
  v5[5] = &unk_1B44420A2;
  v6 = VKMPointInfinity;
  v1 = [a1 vk_CGPath];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIBezierPath_Utilities__vk_lengthIgnoringCurves__block_invoke;
  block[3] = &unk_1E7BE6B48;
  block[4] = v5;
  block[5] = v7;
  block[6] = &v9;
  CGPathApplyWithBlock(v1, block);
  v2 = v10[3];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

- (uint64_t)vk_allPoints
{
  v2 = objc_opt_class();
  v3 = [a1 vk_CGPath];

  return [v2 vk_allPointsFromCGPath:v3];
}

+ (id)vk_allPointsFromCGPath:()Utilities
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIBezierPath_Utilities__vk_allPointsFromCGPath___block_invoke;
  block[3] = &unk_1E7BE6B70;
  v5 = v4;
  v8 = v5;
  CGPathApplyWithBlock(a3, block);

  return v5;
}

- (uint64_t)vk_applyTransform:()Utilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [a1 applyTransform:v5];
}

- (id)vk_pathFromFlippingInRect:()Utilities
{
  v10 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v11 = [a1 vk_CGPath];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIBezierPath_Utilities__vk_pathFromFlippingInRect___block_invoke;
  block[3] = &unk_1E7BE6B98;
  v12 = v10;
  v15 = v12;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  CGPathApplyWithBlock(v11, block);

  return v12;
}

- (id)debugQuickLookObject
{
  v1 = a1;
  [v1 bounds];
  if (v2 >= 2.0)
  {
    [v1 bounds];
    if (v3 < 20.0)
    {
      CGAffineTransformMakeScale(&v5, 20.0, 20.0);
      [v1 vk_applyTransform:&v5];
    }
  }

  else
  {
    CGAffineTransformMakeScale(&v5, 150.0, 150.0);
    [v1 vk_applyTransform:&v5];
  }

  return v1;
}

- (uint64_t)vk_subpathArray
{
  v2 = objc_opt_class();
  v3 = [a1 vk_CGPath];

  return [v2 vk_subpathArrayFromCGPath:v3];
}

+ (id)vk_subpathArrayFromCGPath:()Utilities
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__8;
  v12[4] = __Block_byref_object_dispose__9;
  v13 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__UIBezierPath_Utilities__vk_subpathArrayFromCGPath___block_invoke;
  v9[3] = &unk_1E7BE6BC0;
  v11 = v12;
  v5 = v4;
  v10 = v5;
  CGPathApplyWithBlock(a3, v9);
  v6 = v10;
  v7 = v5;

  _Block_object_dispose(v12, 8);

  return v7;
}

- (id)vk_pathByFittingToRect:()Utilities
{
  [a1 bounds];
  v11 = v10;
  v15 = VKMCenterOfRect(v12, v13, v10, v14);
  v17 = v16;
  v30 = a2;
  v31 = a3;
  v18 = VKMCenterOfRect(a2, a3, a4, a5);
  v20 = v19;
  v21 = VKMSizeRatioFromSizes(a4, a5, v11);
  v23 = v22;
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, -v15, -v17);
  t1 = v35;
  CGAffineTransformMakeScale(&t2, v21, v23);
  CGAffineTransformConcat(&v34, &t1, &t2);
  v35 = v34;
  t1 = v34;
  CGAffineTransformMakeTranslation(&t2, v18, v20);
  CGAffineTransformConcat(&v34, &t1, &t2);
  v35 = v34;
  v24 = [a1 copy];
  v34 = v35;
  [v24 vk_applyTransform:&v34];
  [v24 bounds];
  if (!VKMNearlyEqualRects(v30, v31, a4, a5, v25, v26, v27, v28))
  {
    [VKAssert handleFailedAssertWithCondition:"VKMNearlyEqualRects(endBounds functionName:result.bounds)" simulateCrash:"[UIBezierPath(Utilities) vk_pathByFittingToRect:]" showAlert:0 format:0, @"path vk_transformToFitRect did not give a correct result"];
  }

  return v24;
}

- (id)vk_unionAndFlattenWithPath:()Utilities
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v6 = [a1 _vk_flattenWithPath:v5 clipType:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)vk_intersectAndFlattenWithPath:()Utilities
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    v6 = [a1 _vk_flattenWithPath:v5 clipType:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_vk_flattenWithPath:()Utilities clipType:
{
  v19[18] = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v10, 0, sizeof(v10));
  ClipperLib::Clipper::Clipper(&v11, 0);
  v5 = a1;
  if (v4 && ([v4 isEmpty] & 1) == 0)
  {
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, 10000.0, 10000.0);
    if (([v5 isEmpty] & 1) == 0)
    {
      v6 = MEMORY[0x1B8C75EB0]([v5 vk_CGPath], &v9);
      VKMClipperPathsFromCGPath(v6, 1.0);
    }

    v7 = MEMORY[0x1B8C75EB0]([v4 vk_CGPath], &v9);
    VKMClipperPathsFromCGPath(v7, 1.0);
  }

  std::__list_imp<long long>::clear(v18);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  ClipperLib::ClipperBase::~ClipperBase(v19);
  v11 = v10;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v5;
}

- (id)vk_expandWithOffset:()Utilities
{
  v1 = [a1 vk_CGPath];
  if (([objc_opt_class() vk_cgPathcontainsAnyCurveToPoints:v1] & 1) == 0)
  {
    VKMClipperPathsFromCGPath(v1, 1.0);
  }

  return 0;
}

+ (id)vk_groupAndRoundPaths:()Utilities radius:offset:
{
  v16[36] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__UIBezierPath_Utilities__vk_groupAndRoundPaths_radius_offset___block_invoke;
  v9[3] = &__block_descriptor_40_e29_B32__0__UIBezierPath_8Q16_B24l;
  v9[4] = a1;
  if (([v4 vk_containsObjectPassingTest:v9] & 1) == 0)
  {
    memset(v8, 0, sizeof(v8));
    v10 = 0;
    v11 = &v10;
    v12 = 0x15012000000;
    v13 = __Block_byref_object_copy__16;
    v14 = __Block_byref_object_dispose__17;
    v15 = &unk_1B44420A2;
    v5 = ClipperLib::Clipper::Clipper(v16, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__UIBezierPath_Utilities__vk_groupAndRoundPaths_radius_offset___block_invoke_19;
    v7[3] = &unk_1E7BE6C08;
    v7[4] = &v10;
    [v4 enumerateObjectsUsingBlock:{v7, v5}];
    ClipperLib::Clipper::Execute((v11 + 6), 1, v8, 0);
    operator new();
  }

  return 0;
}

+ (uint64_t)vk_cgPathcontainsAnyCurveToPoints:()Utilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__UIBezierPath_Utilities__vk_cgPathcontainsAnyCurveToPoints___block_invoke;
  block[3] = &unk_1E7BE6C58;
  block[4] = &v6;
  CGPathApplyWithBlock(path, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (CGPath)_cgPathFromClipperPath:()Utilities
{
  Mutable = CGPathCreateMutable();
  v6 = *a3;
  v5 = a3[1];
  while (v6 != v5)
  {
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      v9 = 1;
      do
      {
        if (v9)
        {
          CGPathMoveToPoint(Mutable, 0, **v6, (*v6)[1]);
        }

        else
        {
          CGPathAddLineToPoint(Mutable, 0, *v7, v7[1]);
        }

        v9 = 0;
        v7 += 3;
      }

      while (v7 != v8);
    }

    CGPathCloseSubpath(Mutable);
    v6 += 3;
  }

  return Mutable;
}

+ (CGPath)vk_newRoundedPathWithRadius:()Utilities points:
{
  v6 = a4;
  v7 = [v6 mutableCopy];
  [a1 _processPointsForRounding:v7 withRadius:a2];
  [a1 _processPointsForNarrowAngles:v7];
  v8 = v7;

  Mutable = CGPathCreateMutable();
  v10 = 0;
  v55 = a2;
  while ([v8 count] > v10)
  {
    v11 = [v8 objectAtIndex:v10];
    [v11 vk_pointValue];
    v13 = v12;
    v15 = v14;

    v16 = [v8 objectAtIndex:{(v10 + 1) % objc_msgSend(v8, "count")}];
    [v16 vk_pointValue];
    v18 = v17;
    v20 = v19;

    v21 = [v8 objectAtIndex:{(v10 + 2) % objc_msgSend(v8, "count")}];
    [v21 vk_pointValue];
    v23 = v22;
    v25 = v24;

    v26 = [v8 objectAtIndex:{(v10 + 3) % objc_msgSend(v8, "count")}];
    [v26 vk_pointValue];
    v60 = v28;
    v61 = v27;

    v29 = a2;
    v30 = a2;
    v31 = v15;
    [MEMORY[0x1E69DC728] vk_clampedRadius:v29 p1:v13 p2:v15 p3:{v18, v20, v23, v25}];
    v33 = v32;
    [MEMORY[0x1E69DC728] vk_clampedRadius:v30 p1:v18 p2:v20 p3:{v23, v25, v61, v60}];
    v35 = v34;
    radius = fmin(v33, v34);
    [MEMORY[0x1E69DC728] vk_calculateCenterForPoints:v13 p2:v31 p3:v18 radius:{v20, v23, v25}];
    v37 = v36;
    v39 = v38;
    [MEMORY[0x1E69DC728] vk_projectPoint:? lineStart:? lineEnd:?];
    x = v40;
    v42 = v41;
    [MEMORY[0x1E69DC728] vk_projectPoint:v37 lineStart:v39 lineEnd:{v18, v20, v23, v25}];
    v56 = v44;
    v57 = v43;
    if (!v10)
    {
      CGPathMoveToPoint(Mutable, 0, x, v42);
    }

    [MEMORY[0x1E69DC728] vk_calculateCenterForPoints:v18 p2:v20 p3:v23 radius:{v25, v61, v60, v35}];
    [MEMORY[0x1E69DC728] vk_projectPoint:? lineStart:? lineEnd:?];
    v46 = v45;
    v48 = v47;
    v49 = VKMAngleBetweenPoints(v37 + 10.0, v39, v37, v39, x, v42);
    v50 = VKMAngleBetweenPoints(v37 + 10.0, v39, v37, v39, v57, v56);
    VKMNormalizeAngleInRadians(v50 - v49);
    v52 = v51;
    VKMNormalizeAngleInRadians(v49 - v50);
    CGPathAddArc(Mutable, 0, v37, v39, radius, v49, v50, v52 >= v53);
    a2 = v55;
    ++v10;
    CGPathAddLineToPoint(Mutable, 0, v46, v48);
  }

  CGPathCloseSubpath(Mutable);

  return Mutable;
}

+ (void)_processPointsForNarrowAngles:()Utilities
{
  v24 = a3;
  for (i = 0; [v24 count] > i; ++i)
  {
    v4 = [v24 count];
    v5 = [v24 count];
    v6 = [v24 objectAtIndex:i];
    [v6 vk_pointValue];
    v8 = v7;
    v10 = v9;
    v11 = (i + 1) % v4;

    v12 = [v24 objectAtIndex:v11];
    [v12 vk_pointValue];
    v14 = v13;
    v16 = v15;

    v17 = [v24 objectAtIndex:(i + 2) % v5];
    [v17 vk_pointValue];
    v19 = v18;
    v21 = v20;

    v22 = fabs(VKMAngleBetweenPoints(v8, v10, v14, v16, v19, v21));
    if (v22 < 0.785398163 || v22 > 5.49778714)
    {
      [MEMORY[0x1E69DC728] vk_projectPoint:v8 lineStart:v10 lineEnd:{v14, v16, v19, v21}];
      v23 = [MEMORY[0x1E696B098] vk_valueWithPoint:?];
      [v24 setObject:v23 atIndexedSubscript:v11];
    }
  }
}

+ (void)_processPointsForRounding:()Utilities withRadius:
{
  v5 = a4;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__8;
  v24[4] = __Block_byref_object_dispose__9;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  v6 = [v5 copy];
  v17[1] = 3221225472;
  v17[0] = MEMORY[0x1E69E9820];
  v17[2] = __64__UIBezierPath_Utilities___processPointsForRounding_withRadius___block_invoke;
  v17[3] = &unk_1E7BE6C80;
  v7 = a1 / 3.0;
  *&v17[6] = v7;
  v17[4] = v24;
  v17[5] = &v18;
  [v6 enumerateObjectsUsingBlock:v17];

  if (v19[5])
  {
    [v5 removeObjectsAtIndexes:?];
  }

  v8 = [v5 firstObject];
  [v8 vk_pointValue];
  v10 = v9;
  v12 = v11;
  v13 = [v5 lastObject];
  [v13 vk_pointValue];
  v16 = VKMNearlyEqualPointsWithThreshold(v10, v12, v14, v15, v7);

  if (v16)
  {
    [v5 removeLastObject];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(v24, 8);
}

+ (VKLineSegment)vk_shiftLinePerpendicularlyFromPoint:()Utilities to:radius:
{
  v10 = objc_alloc_init(VKLineSegment);
  if (a1 == a3)
  {
    v11 = a5;
  }

  else
  {
    v11 = 0.0;
    if (a2 != a4)
    {
      v12 = VKMSlopeOfLine(a1, a2, a3, a4);
      v13 = atan(fabs(v12));
      cos(v13);
    }
  }

  [(VKLineSegment *)v10 setStartPoint:VKMAddPoints(a1, a2, v11)];
  [(VKLineSegment *)v10 setEndPoint:VKMAddPoints(a3, a4, v11)];

  return v10;
}

+ (void)vk_signForRadiusWithVectorStart:()Utilities end:otherPoint:
{
  if (a1 != a3)
  {
    VKMSlopeOfLine(a1, a2, a3, a4);
  }
}

+ (void)vk_calculateCenterForPoints:()Utilities p2:p3:radius:
{
  v31[4] = *MEMORY[0x1E69E9840];
  [a1 vk_signForRadiusWithVectorStart:? end:? otherPoint:?];
  v16 = [MEMORY[0x1E69DC728] vk_shiftLinePerpendicularlyFromPoint:a2 to:a3 radius:{a4, a5, v15 * a8}];
  [MEMORY[0x1E69DC728] vk_signForRadiusWithVectorStart:a6 end:a7 otherPoint:{a4, a5, a2, a3}];
  v18 = [MEMORY[0x1E69DC728] vk_shiftLinePerpendicularlyFromPoint:a6 to:a7 radius:{a4, a5, v17 * a8}];
  [v16 startPoint];
  v31[0] = v19;
  v31[1] = v20;
  [v16 endPoint];
  v31[2] = v21;
  v31[3] = v22;
  [v18 startPoint];
  v30[0] = v23;
  v30[1] = v24;
  [v18 endPoint];
  v30[2] = v25;
  v30[3] = v26;
  v27 = 0;
  v28 = 0;
  VKMIntersectionOfLines(v31, v30, &v27, &v28, &v29, 1, 1);
}

+ (double)vk_projectPoint:()Utilities lineStart:lineEnd:
{
  v6 = a3;
  v14 = *MEMORY[0x1E695EFF8];
  if (a3 != a5)
  {
    if (a4 == a6)
    {
      return a1;
    }

    else
    {
      v10 = VKMSlopeOfLine(a3, a4, a5, a6);
      v11 = objc_alloc_init(VKLine);
      [(VKLine *)v11 setA:v10];
      [(VKLine *)v11 setB:a4 - v10 * v6];
      v12 = objc_alloc_init(VKLine);
      [(VKLine *)v12 setA:-1.0 / v10];
      [(VKLine *)v12 setB:a2 + 1.0 / v10 * a1];
      VKMIntersectsLine(v11, v12, &v14);

      return *&v14;
    }
  }

  return v6;
}

+ (void)vk_roundAndGroupNormalizedQuadsForHighlight:()Utilities aspectRatio:expansionScale:radiusToAvgHeightRatio:
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x13812000000;
  v6[3] = __Block_byref_object_copy__25;
  v6[4] = __Block_byref_object_dispose__26;
  v6[5] = &unk_1B44420A2;
  ClipperLib::ClipperOffset::ClipperOffset(&v7, 2.0, 0.25);
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  operator new();
}

+ (double)radiusForQuads:()Utilities radiusRatio:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 count];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * i) sideLength];
        v10 = v10 + v12;
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10 / v6 * a1;
}

+ (id)mapPaths:()Utilities toQuads:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__UIBezierPath_Utilities__mapPaths_toQuads___block_invoke;
  v14[3] = &unk_1E7BE6D20;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v8;
  [v5 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

@end