@interface UIScreenComplexBoundingPathUtilities
@end

@implementation UIScreenComplexBoundingPathUtilities

uint64_t __67___UIScreenComplexBoundingPathUtilities__loadBitmapForScreen_type___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 24);
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [result bitmapData];
  if (!v23)
  {
    return 0;
  }

  result = 0;
  if (!*(&v23 + 1))
  {
    return result;
  }

  v9 = (v8 * a3);
  if ((v9 & 0x8000000000000000) != 0)
  {
    return result;
  }

  if (*(&v23 + 1) < v9)
  {
    return result;
  }

  result = 0;
  v10 = v7 * a2;
  v11 = v10;
  if (v10 < 0 || v23 < v11)
  {
    return result;
  }

  if (v11 >= v23 - 1)
  {
    v12 = v23 - 1;
  }

  else
  {
    v12 = v10;
  }

  if (v9 >= *(&v23 + 1) - 1)
  {
    v13 = *(&v23 + 1) - 1;
  }

  else
  {
    v13 = (v8 * a3);
  }

  if (v13 >= v24)
  {
    if (v13 < *(&v24 + 1) + v24)
    {
      return 1;
    }

    v13 -= *(&v24 + 1);
  }

  if (!*(&v25 + 1))
  {
LABEL_24:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v28 = v26;
    v20 = _UIBoundingPathBitmapDataDescription(v27);
    [v18 handleFailureInFunction:v19 file:@"_UIBoundingPathBitmapData.h" lineNumber:260 description:{@"Bitmap is invalid: column %lu is missing for row %lu of bitmap data: %@", v12, v13, v20}];

    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(&v25 + 1) * v13;
  while (1)
  {
    if (v16 >= v25)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
      [v22 handleFailureInFunction:v21 file:@"_UIBoundingPathBitmapData.h" lineNumber:248 description:{@"Bitmap data is invalid: width=%lu; height=%lu; skipRegionY=%lu; skipRegionHeight=%lu; nodeCount=%lu; maximumNodesPerRow=%lu", v23, v24, v25}];
    }

    v17 = *(v26 + 2 * v16);
    v15 += v17 & 0x7FFF;
    if (v12 < v15)
    {
      return v17 < 0;
    }

    ++v14;
    ++v16;
    if (v14 >= *(&v25 + 1))
    {
      goto LABEL_24;
    }
  }
}

@end