@interface UIBoundingPathBitmapDataImageRepresentation
@end

@implementation UIBoundingPathBitmapDataImageRepresentation

void ___UIBoundingPathBitmapDataImageRepresentation_block_invoke(unint64_t *a1, void *a2)
{
  v37 = a2;
  if (a1[5])
  {
    v3 = 0;
    v4 = 0x1E70E9000uLL;
    while (v3 == a1[6] && a1[7])
    {
      v5 = [*(v4 + 1736) blackColor];
      [v5 setFill];

      [v37 fillRect:{0.0, v3, a1[4], a1[7]}];
      v3 = a1[7] + a1[6];
LABEL_34:
      if (v3 >= a1[5])
      {
        goto LABEL_35;
      }
    }

    v6 = a1[4];
    if (!v6)
    {
LABEL_33:
      ++v3;
      goto LABEL_34;
    }

    v7 = 0;
    v8 = v3;
    v32 = v3;
    while (1)
    {
      v9 = a1[5];
      if (!v9 || (v3 & 0x8000000000000000) != 0)
      {
        v10 = 0xFFFFLL;
      }

      else
      {
        v10 = 0xFFFFLL;
        if (v3 <= v9)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            v10 = -v7;
          }

          else
          {
            v11 = a1[6];
            v12 = a1[7];
            v14 = a1[8];
            v13 = a1[9];
            v15 = a1[10];
            if (v3 >= v9 - 1)
            {
              v16 = v9 - 1;
            }

            else
            {
              v16 = v3;
            }

            if (v16 >= v11)
            {
              if (v16 < v12 + v11)
              {
                v10 = v6 - v7;
LABEL_32:
                v27 = [*(v4 + 1736) blackColor];
                goto LABEL_30;
              }

              v16 -= v12;
            }

            if (v13)
            {
              v17 = 0;
              v18 = v16 * v13;
              v19 = a1[9];
              while (1)
              {
                if (v18 >= v14)
                {
                  v33 = v11;
                  v35 = v16;
                  v30 = v13;
                  v31 = v12;
                  v21 = [MEMORY[0x1E696AAA8] currentHandler];
                  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
                  [v21 handleFailureInFunction:v29 file:@"_UIBoundingPathBitmapData.h" lineNumber:248 description:{@"Bitmap data is invalid: width=%lu; height=%lu; skipRegionY=%lu; skipRegionHeight=%lu; nodeCount=%lu; maximumNodesPerRow=%lu", v6, v9, v33, v31, v14, v30}];

                  v13 = v30;
                  v12 = v31;
                  v11 = v33;
                  v16 = v35;
                }

                v20 = *(v15 + 2 * v18);
                v17 += v20 & 0x7FFF;
                v10 = v17 - v7;
                if (v17 > v7)
                {
                  break;
                }

                ++v18;
                if (!--v19)
                {
                  goto LABEL_27;
                }
              }

              v4 = 0x1E70E9000uLL;
              v3 = v32;
              if (v20 < 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
LABEL_27:
              v36 = v16;
              v22 = v11;
              v23 = v12;
              v24 = v13;
              v34 = [MEMORY[0x1E696AAA8] currentHandler];
              v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIBoundingPathBitmapDataRowHitTestResult _UIBoundingPathBitmapDataRowHitTest(const _UIBoundingPathBitmapData, const _UIIntegralPoint)"}];
              v38[0] = v6;
              v38[1] = v9;
              v38[2] = v22;
              v38[3] = v23;
              v38[4] = v14;
              v38[5] = v24;
              v38[6] = v15;
              v26 = _UIBoundingPathBitmapDataDescription(v38);
              [v34 handleFailureInFunction:v25 file:@"_UIBoundingPathBitmapData.h" lineNumber:260 description:{@"Bitmap is invalid: column %lu is missing for row %lu of bitmap data: %@", v7, v36, v26}];

              v10 = 1;
              v4 = 0x1E70E9000;
              v3 = v32;
            }
          }
        }
      }

      v27 = [*(v4 + 1736) whiteColor];
LABEL_30:
      v28 = v27;
      [v27 setFill];

      [v37 fillRect:{v7, v8, v10, 1.0}];
      v7 += v10;
      v6 = a1[4];
      if (v7 >= v6)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_35:
}

@end