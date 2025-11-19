@interface UIBezierPath
@end

@implementation UIBezierPath

__n128 __50__UIBezierPath_Utilities__vk_lengthIgnoringCurves__block_invoke(void *a1, int *a2)
{
  v3 = *a2;
  *(*(a1[4] + 8) + 48) = VKMPointInfinity;
  if ((v3 - 2) >= 2)
  {
    if (v3 != 1)
    {
      if (v3)
      {
        goto LABEL_7;
      }

      *(*(a1[5] + 8) + 48) = VKMPointInfinity;
    }

    *(*(a1[4] + 8) + 48) = **(a2 + 1);
  }

  *(*(a1[4] + 8) + 48) = **(a2 + 1);
LABEL_7:
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v10 = v9 == INFINITY && v8 == INFINITY;
  v11 = v6 == INFINITY && v5 == INFINITY;
  if (!v11 && !v10)
  {
    *(*(a1[6] + 8) + 24) = VKMDistance(v5, v6, v8, v9) + *(*(a1[6] + 8) + 24);
  }

  if (v10)
  {
    v12 = &VKMPointInfinity;
  }

  else
  {
    v12 = (*(a1[4] + 8) + 48);
  }

  result = *v12;
  *(*(a1[5] + 8) + 48) = *v12;
  return result;
}

void __50__UIBezierPath_Utilities__vk_allPointsFromCGPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 1)
  {
    if (v2 != 2 && v2 != 3)
    {
      return;
    }

    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696B098] vk_valueWithPoint:{*(*(a2 + 8) + 32), *(*(a2 + 8) + 40)}];
    [v4 addObject:?];
  }

  else
  {
    if (v2 > 1)
    {
      return;
    }

    v3 = *(a1 + 32);
    v5 = [MEMORY[0x1E696B098] vk_valueWithPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    [v3 addObject:?];
  }
}

uint64_t __53__UIBezierPath_Utilities__vk_pathFromFlippingInRect___block_invoke(uint64_t result, int *a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v6 = *(result + 32);
        VKMFlipPoint();
        v8 = v7;
        v10 = v9;
        VKMFlipPoint();

        return [v6 vk_addCurveToPoint:v8 controlPoint1:v10 controlPoint2:?];
      }

      else if (v3 == 4)
      {
        v4 = *(result + 32);

        return [v4 closePath];
      }

      return result;
    }

    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[UIBezierPath(Utilities) vk_pathFromFlippingInRect:]_block_invoke" simulateCrash:0 showAlert:0 format:@"kCGPathElementAddQuadCurveToPoint not supported."];
    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

LABEL_12:
    v5 = *(v2 + 32);
    VKMFlipPoint();

    return [v5 vk_addLineToPoint:?];
  }

  v11 = *(result + 32);
  VKMFlipPoint();

  return [v11 moveToPoint:?];
}

void __53__UIBezierPath_Utilities__vk_subpathArrayFromCGPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v12 = *(*(*(a1 + 40) + 8) + 40);
        v13 = *(a2 + 8);
        v14 = v13[4];
        v15 = v13[5];
        v16 = *v13;
        v17 = v13[1];
        v18 = v13[2];
        v19 = v13[3];

        [v12 vk_addCurveToPoint:v14 controlPoint1:v15 controlPoint2:{v16, v17, v18, v19}];
      }

      else if (v4 == 4)
      {
        [*(*(*(a1 + 40) + 8) + 40) closePath];
        [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 40)];
        v5 = objc_alloc_init(MEMORY[0x1E69DC728]);
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }

      return;
    }

    +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[UIBezierPath(Utilities) vk_subpathArrayFromCGPath:]_block_invoke", 0, 0, @"kCGPathElementAddQuadCurveToPoint not supported.");
    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return;
    }

LABEL_12:
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = *(a2 + 8);
    v10 = *v9;
    v11 = v9[1];

    [v8 vk_addLineToPoint:{v10, v11}];
    return;
  }

  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = *(a2 + 8);
  v22 = *v21;
  v23 = v21[1];

  [v20 moveToPoint:{v22, v23}];
}

uint64_t __63__UIBezierPath_Utilities__vk_groupAndRoundPaths_radius_offset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) vk_cgPathcontainsAnyCurveToPoints:{objc_msgSend(v3, "vk_CGPath")}];

  return v4;
}

void __63__UIBezierPath_Utilities__vk_groupAndRoundPaths_radius_offset___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 40) vk_allPointsFromCGPath:{objc_msgSend(v10, "vk_CGPath")}];
  v4 = [v3 lastObject];
  v5 = [v3 firstObject];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v3 removeLastObject];
  }

  v7 = [*(a1 + 40) vk_newRoundedPathWithRadius:v3 points:*(a1 + 48)];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E69DC728] vk_pathFromCGPath:v7];
  [v8 vk_appendBezierPath:v9];

  CGPathRelease(v7);
}

uint64_t __61__UIBezierPath_Utilities__vk_cgPathcontainsAnyCurveToPoints___block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 & 0xFFFFFFFE) == 2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __64__UIBezierPath_Utilities___processPointsForRounding_withRadius___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v18 = v6;
  if (!a3)
  {
    v11 = a1 + 32;
    goto LABEL_7;
  }

  [v6 vk_pointValue];
  v8 = v7;
  v10 = v9;
  v11 = a1 + 32;
  [*(*(*(a1 + 32) + 8) + 40) vk_pointValue];
  if (!VKMNearlyEqualPointsWithThreshold(v8, v10, v12, v13, *(a1 + 48)))
  {
LABEL_7:
    objc_storeStrong((*(*v11 + 8) + 40), a2);
    goto LABEL_8;
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (!v14)
  {
    v15 = [MEMORY[0x1E696AD50] indexSet];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v14 = *(*(*(a1 + 40) + 8) + 40);
  }

  [v14 addIndex:a3];
LABEL_8:
}

void __121__UIBezierPath_Utilities__vk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 quadMultipliedBySize:{*(a1 + 40), *(a1 + 48)}];
  [v2 addObject:?];
}

void __121__UIBezierPath_Utilities__vk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 sideLength];
  [v2 path];
  v3 = [objc_claimAutoreleasedReturnValue() vk_CGPath];
  VKMClipperPathsFromCGPath(v3, 1.0);
}

void __121__UIBezierPath_Utilities__vk_roundAndGroupNormalizedQuadsForHighlight_aspectRatio_expansionScale_radiusToAvgHeightRatio___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 48) vk_allPointsFromCGPath:{objc_msgSend(v11, "vk_CGPath")}];
  v4 = [v3 lastObject];
  v5 = [v3 firstObject];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [v3 removeLastObject];
  }

  v7 = [*(a1 + 32) objectForKey:v11];
  [*(a1 + 48) radiusForQuads:v7 radiusRatio:*(a1 + 56)];
  v8 = [*(a1 + 48) vk_newRoundedPathWithRadius:v3 points:?];
  v9 = *(a1 + 40);
  v10 = [MEMORY[0x1E69DC728] vk_pathFromCGPath:v8];
  [v9 vk_appendBezierPath:v10];

  CGPathRelease(v8);
}

void __44__UIBezierPath_Utilities__mapPaths_toQuads___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 vertexCentroid];
        if ([v3 containsPoint:?])
        {
          v9 = [*(a1 + 40) objectForKey:v3];
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 40) setObject:? forKey:?];
          }

          [v9 addObject:v8];
          [*(a1 + 32) removeObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

@end