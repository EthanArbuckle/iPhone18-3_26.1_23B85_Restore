@interface UIAccessibilityPathForPathUIKitFallback
@end

@implementation UIAccessibilityPathForPathUIKitFallback

void ___UIAccessibilityPathForPathUIKitFallback_block_invoke(uint64_t a1, int a2, double *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a3 + 1;
    do
    {
      *(v8 - 1) = (*(*(a1 + 32) + 16))(*(v8 - 1), *v8);
      *v8 = v9;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = *(a1 + 40);
        v12 = *a3;
        v13 = a3[1];

        CGPathAddLineToPoint(v11, 0, v12, v13);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = *a3;
      v28 = a3[1];

      CGPathMoveToPoint(v26, 0, v27, v28);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v14 = *(a1 + 40);
        v15 = *a3;
        v16 = a3[1];
        v17 = a3[2];
        v18 = a3[3];

        CGPathAddQuadCurveToPoint(v14, 0, v15, v16, v17, v18);
        break;
      case 3:
        v19 = *(a1 + 40);
        v20 = *a3;
        v21 = a3[1];
        v22 = a3[2];
        v23 = a3[3];
        v24 = a3[4];
        v25 = a3[5];

        CGPathAddCurveToPoint(v19, 0, v20, v21, v22, v23, v24, v25);
        break;
      case 4:
        v10 = *(a1 + 40);

        CGPathCloseSubpath(v10);
        break;
    }
  }
}

@end