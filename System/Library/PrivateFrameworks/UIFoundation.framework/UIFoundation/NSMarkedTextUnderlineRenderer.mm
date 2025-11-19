@interface NSMarkedTextUnderlineRenderer
@end

@implementation NSMarkedTextUnderlineRenderer

void __93____NSMarkedTextUnderlineRenderer__renderUnderlineInTextRange_alphaValue_adjustmentCallback___block_invoke(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5 = a5.n128_f64[0];
  v6 = a4.n128_f64[0];
  v7 = a3.n128_f64[0];
  v8 = a2.n128_f64[0];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 40);
  if (v10)
  {
    v8 = (*(v10 + 16))(a2, a3, a4, a5);
    v7 = v13;
    v6 = v14;
    v5 = v15;
    v11 = *(a1 + 32);
  }

  v16 = (*(v11 + 48) >> 12) & 3;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v26 = *(v11 + 32);
      v23 = *(a1 + 64) == 1;
      v24 = v26 - v7;
      v25 = v7 + v26;
LABEL_13:
      if (v23)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      goto LABEL_19;
    }
  }

  else if (v16 || (v17 = [*(v11 + 8) textLayoutFragment], (v18 = objc_msgSend(objc_msgSend(v17, "textLayoutManager"), "textContainerForLocation:", objc_msgSend(objc_msgSend(objc_msgSend(v17, "textElement"), "elementRange"), "location"))) == 0) || !objc_msgSend(v18, "layoutOrientation"))
  {
    [*(*(a1 + 32) + 8) glyphOrigin];
    v20 = (v5 - v19) * 0.5;
    v21 = floor(v20);
    if (v20 >= 4.0)
    {
      v22 = (v20 - v12) * 0.666;
    }

    else
    {
      v22 = v21;
    }

    v23 = *(a1 + 64) == 1;
    v24 = v7 + v22;
    v25 = v5 + v7 - v22;
    goto LABEL_13;
  }

  if (*(a1 + 64) == 1)
  {
    v27 = v5 + v7 + *(*(a1 + 32) + 32);
  }

  else
  {
    v27 = *(*(a1 + 32) + 32) - (v5 + v7);
  }

LABEL_19:
  CGContextSaveGState(*(a1 + 48));
  [*(*(a1 + 32) + 8) _setColor:*(*(a1 + 32) + 56) inGraphicsContext:*(*(a1 + 32) + 16)];
  v28 = v6 + v8;
  if (v6 + v8 - v8 > 1.0)
  {
    v8 = v8 + 1.0;
  }

  if (v28 - v8 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + -1.0;
  }

  CGContextSetLineWidth(*(a1 + 48), v12);
  CGContextSetLineCap(*(a1 + 48), kCGLineCapRound);
  CGContextSetAlpha(*(a1 + 48), *(a1 + 56));
  CGContextMoveToPoint(*(a1 + 48), v8, v27);
  CGContextAddLineToPoint(*(a1 + 48), v29, v27);
  CGContextStrokePath(*(a1 + 48));
  v30 = *(a1 + 48);

  CGContextRestoreGState(v30);
}

@end