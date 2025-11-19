@interface UIComplexBoundingPath
@end

@implementation UIComplexBoundingPath

id __91___UIComplexBoundingPath_boundingPathForCoordinateSpace_withCornerRadii_orientation_scale___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = NSStringFromCGRect(*(a1 + 48));
  v5 = [v1 stringWithFormat:@"source=%@ dest=%@; boundsInSource=%@", v2, v3, v4];;

  return v5;
}

void __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(*(a1 + 32) + 8); *(i + 48) > 0.0; i = *(*(a1 + 32) + 8))
  {
    if (*(i + 56) <= 0.0)
    {
      break;
    }

    if (v5[2]())
    {
      break;
    }

    *(*(*(a1 + 32) + 8) + 32) = CGRectInset(*(*(*(a1 + 32) + 8) + 32), *(a1 + 48), *(a1 + 56));
    v7 = CGRectIntegral(*(*(*(a1 + 32) + 8) + 32));
    v4 = *(*(a1 + 40) + 8);
    v4[4] = v7.origin.x;
    v4[5] = v7.origin.y;
    v4[6] = v7.size.width;
    v4[7] = v7.size.height;
  }
}

uint64_t __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  v7 = *(a1 + 88);
  return _UIBoundingPathBitmapDataRowHitTest(v6, v2, v3) & 1;
}

uint64_t __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  v7[2] = *(a1 + 72);
  v8 = *(a1 + 88);
  return _UIBoundingPathBitmapDataRowHitTest(v7, v4 + v3, v2) & 1;
}

uint64_t __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[7];
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  v7[2] = *(a1 + 72);
  v8 = *(a1 + 88);
  return _UIBoundingPathBitmapDataRowHitTest(v7, v2, v4 + v3) & 1;
}

uint64_t __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_5(uint64_t a1)
{
  v1 = vaddq_s64(*(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 32));
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  v5 = *(a1 + 88);
  return _UIBoundingPathBitmapDataRowHitTest(v4, v1.u64[0], v1.u64[1]) & 1;
}

BOOL __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_6(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v20 = *(a1 + 40);
  v21 = *(a1 + 56);
  v22 = *(a1 + 72);
  v23 = *(a1 + 88);
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6] + v2;
  v5 = v1[7] + v3;
  v6 = v2 + 1;
  v7 = v4 - 1;
  v8 = v2 + 1;
  while (v8 < v7)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v9 = _UIBoundingPathBitmapDataRowHitTest(&v24, v8, v3);
    v8 += v10;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  while (v6 < v7)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v11 = _UIBoundingPathBitmapDataRowHitTest(&v24, v6, v5);
    v6 += v12;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v3 + 1;
  v14 = v5 - 1;
  v15 = v13;
  while (v15 < v14)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v16 = _UIBoundingPathBitmapDataRowHitTest(&v24, v2, v15++);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  do
  {
    v17 = v13 >= v14;
    if (v13 >= v14)
    {
      break;
    }

    v24 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v19 = _UIBoundingPathBitmapDataRowHitTest(&v24, v4, v13++);
  }

  while ((v19 & 1) != 0);
  return v17;
}

void __46___UIComplexBoundingPath__imageRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  CGContextTranslateCTM([v10 CGContext], *(a1 + 48) * 0.5, *(a1 + 56) * 0.5);
  CGContextScaleCTM([v10 CGContext], 1.0, -1.0);
  v3 = [v10 CGContext];
  v4 = *(*(a1 + 32) + 24);
  switch(v4)
  {
    case 1:
      v5 = 0.0;
      break;
    case 3:
      v5 = 1.57079633;
      break;
    case 4:
      v5 = -1.57079633;
      break;
    default:
      v5 = 3.14159265;
      if (v4 != 2)
      {
        v5 = 0.0;
      }

      break;
  }

  CGContextRotateCTM(v3, v5);
  v6 = [v10 CGContext];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = [*(a1 + 40) CGImage];
  v12.origin.x = v7 * -0.5;
  v12.origin.y = v8 * -0.5;
  v12.size.width = v7;
  v12.size.height = v8;
  CGContextDrawImage(v6, v12, v9);
}

@end