@interface UIFocusLinearMovementDebugViewLineSegment
@end

@implementation UIFocusLinearMovementDebugViewLineSegment

void __61___UIFocusLinearMovementDebugViewLineSegment__calculatePaths__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  [v7 point];
  v9 = v8;
  v11 = v10;
  if ([v7 type])
  {
    if ([v7 type] == 1)
    {
      if (*(a1 + 48) - 2 == a3 || hypot(*(a1 + 56) - v9, *(a1 + 64) - v11) <= 10.0)
      {
        v12 = *(*(a1 + 40) + 8);
        *(v12 + 32) = v9;
        *(v12 + 40) = v11;
        v13 = *(a1 + 56);
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 32);
        v16 = v13 - v15;
        v22 = v13;
        v21 = *(a1 + 64);
        if (v13 >= v15)
        {
          v17 = atan((v21 - *(v14 + 40)) / v16);
        }

        else
        {
          v17 = atan((v21 - *(v14 + 40)) / v16) + 3.14159265;
        }

        CGAffineTransformMakeRotation(&v23, v17);
        v18.f64[0] = v23.a;
        v18.f64[1] = v23.d;
        v19 = vmulq_f64(*&v23.b, xmmword_18A67E3A0);
        v20.f64[0] = v22;
        v20.f64[1] = v21;
        [*(a1 + 32) addLineToPoint:{vsubq_f64(v20, vaddq_f64(*&v23.tx, vaddq_f64(vmulq_f64(v18, xmmword_18A67E3A0), vextq_s8(v19, v19, 8uLL))))}];
        *a4 = 1;
      }

      else
      {
        [*(a1 + 32) addLineToPoint:{v9, v11}];
      }
    }
  }

  else
  {
    [*(a1 + 32) moveToPoint:{v9, v11}];
  }
}

void __68___UIFocusLinearMovementDebugViewLineSegment__pathElementsFromPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_UIFocusLinearMovementDebugViewLineElement elementWithCGPathElement:a2];
  [v2 addObject:v3];
}

void __81___UIFocusLinearMovementDebugViewLineSegment__flattenedBezierPathFromBezierPath___block_invoke(uint64_t *a1, void *a2)
{
  v23 = a2;
  v3 = [v23 type];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = a1[4];
      v7 = a1[5];
      v9 = *(a1[6] + 8);
      [v23 cp1];
      v11 = v10;
      v13 = v12;
      [v23 cp2];
      v15 = v14;
      v17 = v16;
      [v23 point];
      [v7 _subdivideBezier:v8 startPoint:*(v9 + 32) controlPoint1:*(v9 + 40) controlPoint2:v11 endPoint:{v13, v15, v17, v18, v19}];
    }

    else
    {
      v5 = v23;
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      [a1[4] closePath];
    }
  }

  else if ((v3 - 1) >= 2)
  {
    v5 = v23;
    if (v3)
    {
      goto LABEL_11;
    }

    v6 = a1[4];
    [v23 point];
    [v6 moveToPoint:?];
  }

  else
  {
    v4 = a1[4];
    [v23 point];
    [v4 addLineToPoint:?];
  }

  v5 = v23;
LABEL_11:
  [v5 point];
  v20 = *(a1[6] + 8);
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
}

@end