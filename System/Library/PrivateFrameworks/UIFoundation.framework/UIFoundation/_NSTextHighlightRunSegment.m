@interface _NSTextHighlightRunSegment
- (BOOL)anyRunHasBottomBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (BOOL)anyRunHasTopBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (BOOL)doesAnySegmentHaveBottomBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (BOOL)doesAnySegmentHaveTopBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (BOOL)isLastSegmentOfRun;
- (BOOL)isSecondFromLastSegmentOfRun;
- (BOOL)nextSegmentInCurrentRunIsOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (BOOL)previousSegmentInCurrentRunIsOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5;
- (CGPath)createCornerExtensionWithOrigin:(CGPoint)a3 radius:(double)a4 firstPoint:(CGPoint)a5 secondPoint:(CGPoint)a6 arcCenter:(CGPoint)a7 startAngle:(double)a8 endAngle:(double)a9;
- (CGPoint)bottomLeftCornerPoint;
- (CGPoint)bottomRightCornerPoint;
- (CGPoint)topLeftCornerPoint;
- (CGPoint)topRightCornerPoint;
- (id)description;
- (id)nextSegment;
- (uint64_t)calculateCGPath;
- (uint64_t)initWithTextSegmentFrame:withRun:;
- (uint64_t)needsLeftOutset;
- (uint64_t)needsRightOutset;
- (void)_calculateHighlightSegmentShape;
- (void)cornerOutset;
- (void)cornerRadius;
- (void)prevSegment;
- (void)setTextRange:(uint64_t)a1;
@end

@implementation _NSTextHighlightRunSegment

- (CGPoint)bottomLeftCornerPoint
{
  x = self->_highlightFrame.origin.x;
  v3 = self->_highlightFrame.origin.y + self->_highlightFrame.size.height;
  result.y = v3;
  result.x = x;
  return result;
}

- (CGPoint)bottomRightCornerPoint
{
  v2 = vaddq_f64(self->_highlightFrame.origin, self->_highlightFrame.size);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)topRightCornerPoint
{
  y = self->_highlightFrame.origin.y;
  v3 = self->_highlightFrame.origin.x + self->_highlightFrame.size.width;
  result.y = y;
  result.x = v3;
  return result;
}

- (CGPoint)topLeftCornerPoint
{
  x = self->_highlightFrame.origin.x;
  y = self->_highlightFrame.origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (uint64_t)calculateCGPath
{
  v1 = a1;
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 _calculateHighlightSegmentShape];
    v13.val[0] = *(v1 + 48);
    v13.val[1] = v13.val[0];
    v2 = &v10;
    vst2q_f64(v2, v13);
    v2 += 4;
    v13.val[0] = *(v1 + 32);
    *v2 = vdupq_laneq_s64(v13.val[0], 1);
    v11 = vdupq_lane_s64(*&v13.val[0].f64[0], 0);
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = CGPathCreateWithUnevenCornersRoundedRect();
    v3 = *(v1 + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45___NSTextHighlightRunSegment_calculateCGPath__block_invoke;
    v5[3] = &unk_1E7267140;
    v5[4] = &v6;
    [v3 enumerateObjectsUsingBlock:v5];

    v1 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  return v1;
}

- (CGPath)createCornerExtensionWithOrigin:(CGPoint)a3 radius:(double)a4 firstPoint:(CGPoint)a5 secondPoint:(CGPoint)a6 arcCenter:(CGPoint)a7 startAngle:(double)a8 endAngle:(double)a9
{
  y = a6.y;
  x = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  v13 = a3.y;
  v14 = a3.x;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v12, v11);
  CGPathAddLineToPoint(Mutable, 0, v14, v13);
  CGPathAddLineToPoint(Mutable, 0, x, y);
  CGPathAddArc(Mutable, 0, a7.x, a7.y, a4, a8, a9, 0);
  CGPathCloseSubpath(Mutable);
  v16 = MEMORY[0x193AD3410](Mutable);
  CFRelease(Mutable);
  return v16;
}

- (BOOL)doesAnySegmentHaveBottomBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  y = a3.y;
  x = a3.x;
  if (!self)
  {
LABEL_4:

    return [_NSTextHighlightRunSegment previousSegmentInCurrentRunIsOnPoint:"previousSegmentInCurrentRunIsOnPoint:withLeftCornerExtensionDistance:withRightCornerExtensionDistance:" withLeftCornerExtensionDistance:? withRightCornerExtensionDistance:?];
  }

  segmentIndex = self->_segmentIndex;
  if (segmentIndex == 1)
  {
    if ([(_NSTextHighlightRunSegment *)self previousSegmentInCurrentRunIsOnPoint:a4 withLeftCornerExtensionDistance:a5 withRightCornerExtensionDistance:a3.x, a3.y])
    {
      return 1;
    }
  }

  else if (segmentIndex)
  {
    goto LABEL_4;
  }

  return [(_NSTextHighlightRunSegment *)self anyRunHasBottomBorderOnPoint:a4 withLeftCornerExtensionDistance:a5 withRightCornerExtensionDistance:x, y];
}

- (uint64_t)initWithTextSegmentFrame:withRun:
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v7 = v6;
  if (v5)
  {
    v15.receiver = v5;
    v15.super_class = _NSTextHighlightRunSegment;
    v8 = objc_msgSendSuper2(&v15, sel_init);
    v5 = v8;
    if (v8)
    {
      v9 = objc_storeWeak(v8 + 2, v7);
      if (v7)
      {
        v10 = v7[7];
      }

      else
      {
        v10 = 0;
      }

      *(v5 + 24) = [v10 count];

      *(v5 + 96) = v3;
      *(v5 + 104) = v2;
      *(v5 + 112) = v1;
      *(v5 + 120) = v0;
      *(v5 + 128) = v3;
      *(v5 + 136) = v2;
      *(v5 + 144) = v1;
      *(v5 + 152) = v0;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = *(v5 + 64);
      *(v5 + 64) = v11;

      if (*(v5 + 112) == 0.0)
      {
        [(_NSTextHighlightRunSegment *)v5 cornerOutset];
        *(v5 + 144) = v14 + v14;
      }
    }
  }

  return v5;
}

- (void)cornerOutset
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = WeakRetained[7];
    }

    v4 = [WeakRetained count];

    if (v4)
    {
      v6 = objc_loadWeakRetained((a1 + 16));
      [(_NSTextHighlightRun *)v6 cornerOutset];
    }

    else
    {
      v8 = 0;
      v5 = objc_loadWeakRetained((a1 + 16));
      [(_NSTextHighlightRun *)v5 getMetricsForTextSize:&v8 cornerRadius:*(a1 + 144) cornerOutset:*(a1 + 152)];
    }
  }
}

- (void)cornerRadius
{
  if (a1)
  {
    if (*(a1 + 112) == 0.0)
    {
      [(_NSTextHighlightRunSegment *)a1 cornerOutset];
    }

    else
    {
      v2 = *(a1 + 144);
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v4 = [(_NSTextHighlightRun *)WeakRetained cornerRadius];
      v5 = v4 + v4;

      if (v2 >= v5)
      {
        v6 = objc_loadWeakRetained((a1 + 16));
        [(_NSTextHighlightRun *)v6 cornerRadius];
      }
    }
  }
}

- (uint64_t)needsLeftOutset
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 24))
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v1 = WeakRetained && (WeakRetained[32] & 1) != 0 || *(v1 + 112) == 0.0;
    }
  }

  return v1;
}

- (uint64_t)needsRightOutset
{
  v1 = a1;
  if (a1)
  {
    if ([(_NSTextHighlightRunSegment *)a1 isLastSegmentOfRun])
    {
      WeakRetained = objc_loadWeakRetained((v1 + 16));
      v1 = WeakRetained && (WeakRetained[33] & 1) != 0 || *(v1 + 112) == 0.0;
    }

    else
    {
      return 1;
    }
  }

  return v1;
}

- (BOOL)isLastSegmentOfRun
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[7];
  }

  v4 = v1 == [WeakRetained count] - 1;

  return v4;
}

- (BOOL)isSecondFromLastSegmentOfRun
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[7];
  }

  v4 = v1 == [WeakRetained count] - 2;

  return v4;
}

- (void)prevSegment
{
  v1 = a1;
  if (a1)
  {
    if (a1[3])
    {
      WeakRetained = objc_loadWeakRetained(a1 + 2);
      v3 = WeakRetained;
      if (WeakRetained)
      {
        WeakRetained = WeakRetained[7];
      }

      v1 = [WeakRetained objectAtIndex:v1[3] - 1];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)nextSegment
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[3];
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = WeakRetained[7];
    }

    v5 = [WeakRetained count] - 1;

    if (v2 == v5)
    {
      v1 = 0;
    }

    else
    {
      v6 = objc_loadWeakRetained(v1 + 2);
      v7 = v6;
      if (v6)
      {
        v6 = v6[7];
      }

      v1 = [v6 objectAtIndex:v1[3] + 1];
    }
  }

  return v1;
}

- (void)_calculateHighlightSegmentShape
{
  [(_NSTextHighlightRunSegment *)self cornerRadius];
  if (self)
  {
    self->_bottomLeftCornerRadius = v5;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    self->_bottomRightCornerRadius = v6;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    self->_topRightCornerRadius = v7;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    self->_topLeftCornerRadius = v8;
    if (![(_NSTextHighlightRunSegment *)self needsLeftOutset])
    {
      self->_topLeftCornerRadius = 0.0;
      self->_bottomLeftCornerRadius = 0.0;
      if (![(_NSTextHighlightRunSegment *)self needsRightOutset])
      {
        goto LABEL_5;
      }

LABEL_12:
      WeakRetained = objc_loadWeakRetained(&self->_run);
LABEL_13:
      self->_highlightFrame.size.width = [(_NSTextHighlightRun *)WeakRetained cornerOutset]+ self->_highlightFrame.size.width;

      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_run);
LABEL_4:
    self->_highlightFrame.origin.x = self->_highlightFrame.origin.x - [(_NSTextHighlightRun *)WeakRetained cornerOutset];

    WeakRetained = objc_loadWeakRetained(&self->_run);
    self->_highlightFrame.size.width = [(_NSTextHighlightRun *)WeakRetained cornerOutset]+ self->_highlightFrame.size.width;

    if (([(_NSTextHighlightRunSegment *)self needsRightOutset]& 1) == 0)
    {
LABEL_5:
      self->_topRightCornerRadius = 0.0;
      self->_bottomRightCornerRadius = 0.0;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [(_NSTextHighlightRunSegment *)0 cornerRadius];
  [(_NSTextHighlightRunSegment *)0 cornerRadius];
  [(_NSTextHighlightRunSegment *)0 cornerRadius];
  WeakRetained = 0;
  if (([(_NSTextHighlightRunSegment *)0 needsLeftOutset]& 1) != 0)
  {
    goto LABEL_4;
  }

  if (([(_NSTextHighlightRunSegment *)0 needsRightOutset]& 1) != 0)
  {
    WeakRetained = 0;
    goto LABEL_13;
  }

LABEL_6:
  v32 = 0;
  v31 = 0.0;
  [(_NSTextHighlightRunSegment *)self topRightCornerPoint];
  if (![(_NSTextHighlightRunSegment *)self doesAnySegmentHaveBottomBorderOnPoint:&v32 withLeftCornerExtensionDistance:&v31 withRightCornerExtensionDistance:?])
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v3 >= v9 || v31 >= 0.0)
  {
    v10 = 0.0;
    if (self)
    {
      goto LABEL_31;
    }
  }

  else if (self)
  {
    v10 = v31 * -0.5;
LABEL_31:
    self->_topRightCornerRadius = v10;
    v17 = objc_loadWeakRetained(&self->_run);
    WeakRetained = v17;
    if (v17 && (*(v17 + 33) & 1) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_58;
  }

  WeakRetained = 0;
LABEL_58:
  if ([(_NSTextHighlightRunSegment *)self isLastSegmentOfRun])
  {

    goto LABEL_7;
  }

LABEL_33:
  v3 = v31;

  if (v3 > 0.0)
  {
    v3 = v31 * 0.5;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    v18 = [OUTLINED_FUNCTION_7_1() createTopRightCornerExtensionWithRadius:?];
    OUTLINED_FUNCTION_10_1(v18);
    CFRelease(WeakRetained);
  }

LABEL_7:
  v29 = 0;
  v30 = 0.0;
  [(_NSTextHighlightRunSegment *)self topLeftCornerPoint];
  if (![(_NSTextHighlightRunSegment *)self doesAnySegmentHaveBottomBorderOnPoint:&v30 withLeftCornerExtensionDistance:&v29 withRightCornerExtensionDistance:?])
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_3_1();
  v12 = v30;
  if (v3 < v11 && v30 < 0.0)
  {
    if (self)
    {
      v11 = v30 * 0.5;
      goto LABEL_36;
    }

LABEL_60:
    OUTLINED_FUNCTION_5_1(v11, v30);
    goto LABEL_39;
  }

  v11 = 0.0;
  if (!self)
  {
    goto LABEL_60;
  }

LABEL_36:
  self->_topLeftCornerRadius = v11;
  OUTLINED_FUNCTION_5_1(v11, v12);
  v19 = objc_loadWeakRetained(&self->_run);
  if ((!v19 || (v19[32] & 1) == 0) && !self->_segmentIndex)
  {

    goto LABEL_8;
  }

LABEL_39:

  if (v3 > 0.0)
  {
    v3 = v3 * 0.5;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    v20 = [OUTLINED_FUNCTION_7_1() createTopLeftCornerExtensionWithRadius:?];
    OUTLINED_FUNCTION_10_1(v20);
    CFRelease(WeakRetained);
  }

LABEL_8:
  v27 = 0.0;
  v28 = 0;
  [(_NSTextHighlightRunSegment *)self bottomRightCornerPoint];
  if (![(_NSTextHighlightRunSegment *)self doesAnySegmentHaveTopBorderOnPoint:&v28 withLeftCornerExtensionDistance:&v27 withRightCornerExtensionDistance:?])
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_1();
  if (v3 >= v13 || v27 >= 0.0)
  {
    v14 = 0.0;
    if (self)
    {
      goto LABEL_42;
    }
  }

  else if (self)
  {
    v14 = v27 * -0.5;
LABEL_42:
    self->_bottomRightCornerRadius = v14;
    v21 = objc_loadWeakRetained(&self->_run);
    WeakRetained = v21;
    if (v21 && (*(v21 + 33) & 1) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_62;
  }

  WeakRetained = 0;
LABEL_62:
  if ([(_NSTextHighlightRunSegment *)self isLastSegmentOfRun])
  {

    goto LABEL_9;
  }

LABEL_44:
  v3 = v27;

  if (v3 > 0.0)
  {
    v3 = v27 * 0.5;
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    v22 = [OUTLINED_FUNCTION_7_1() createBottomRightCornerExtensionWithRadius:?];
    OUTLINED_FUNCTION_10_1(v22);
    CFRelease(WeakRetained);
  }

LABEL_9:
  v26 = 0.0;
  [(_NSTextHighlightRunSegment *)self bottomLeftCornerPoint];
  if (![(_NSTextHighlightRunSegment *)self doesAnySegmentHaveTopBorderOnPoint:&v26 withLeftCornerExtensionDistance:&v25 withRightCornerExtensionDistance:?])
  {
    return;
  }

  OUTLINED_FUNCTION_3_1();
  v16 = v26;
  if (v3 >= v15 || v26 >= 0.0)
  {
    v15 = 0.0;
    if (self)
    {
LABEL_47:
      self->_bottomLeftCornerRadius = v15;
      OUTLINED_FUNCTION_5_1(v15, v16);
      v23 = objc_loadWeakRetained(&self->_run);
      if ((!v23 || (v23[32] & 1) == 0) && !self->_segmentIndex)
      {

        return;
      }

      goto LABEL_50;
    }
  }

  else if (self)
  {
    v15 = v26 * 0.5;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_5_1(v15, v26);
LABEL_50:

  if (v3 > 0.0)
  {
    [(_NSTextHighlightRunSegment *)self cornerRadius];
    v24 = [OUTLINED_FUNCTION_7_1() createBottomLeftCornerExtensionWithRadius:?];
    OUTLINED_FUNCTION_10_1(v24);
    CFRelease(WeakRetained);
  }
}

- (BOOL)doesAnySegmentHaveTopBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  if (![(_NSTextHighlightRunSegment *)v5 isLastSegmentOfRun])
  {
    SegmentOf = [(_NSTextHighlightRunSegment *)v6 isSecondFromLastSegmentOfRun];
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_16_0();
    v11 = [v10 nextSegmentInCurrentRunIsOnPoint:? withLeftCornerExtensionDistance:? withRightCornerExtensionDistance:?];
    if (!SegmentOf || (v11 & 1) != 0)
    {
      return (SegmentOf | v11) & 1;
    }
  }

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16_0();

  return [v7 anyRunHasTopBorderOnPoint:? withLeftCornerExtensionDistance:? withRightCornerExtensionDistance:?];
}

- (BOOL)anyRunHasBottomBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 16));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_4;
  }

  v11 = objc_loadWeakRetained(WeakRetained + 5);
LABEL_4:
  [(_NSTextHighlightRunSegment *)v8 cornerRadius];
  v12 = OUTLINED_FUNCTION_9_1();
  v16 = [(_NSTextHighlightCluster *)v13 topNeighborExistsAtPoint:v6 withinDistance:v5 withLeftCornerExtensionDistance:v12 withRightCornerExtensionDistance:v14, v15];

  return v16;
}

- (BOOL)anyRunHasTopBorderOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((v7 + 16));
  v10 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_4;
  }

  v11 = objc_loadWeakRetained(WeakRetained + 5);
LABEL_4:
  [(_NSTextHighlightRunSegment *)v8 cornerRadius];
  v12 = OUTLINED_FUNCTION_9_1();
  v16 = [(_NSTextHighlightCluster *)v13 bottomNeighborExistsAtPoint:v6 withinDistance:v5 withLeftCornerExtensionDistance:v12 withRightCornerExtensionDistance:v14, v15];

  return v16;
}

- (BOOL)previousSegmentInCurrentRunIsOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v7 = [(_NSTextHighlightRunSegment *)v5 prevSegment];

  if (!v7)
  {
    return 0;
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 2);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(WeakRetained + 5);
      v12 = v11;
      if (v11)
      {
        v13 = objc_loadWeakRetained(v11 + 3);
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = 0;
LABEL_7:
  [(_NSTextHighlightRunSegment *)v6 cornerRadius];
  v14 = [(_NSTextHighlightRunSegment *)v6 prevSegment];
  if (!v14)
  {
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16_0();
  v16 = [v15 isPoint:? withinHorizontalDistance:? onRect:? leftDistance:? rightDistance:?];

  return (v16 & 1) != 0;
}

- (BOOL)nextSegmentInCurrentRunIsOnPoint:(CGPoint)a3 withLeftCornerExtensionDistance:(double *)a4 withRightCornerExtensionDistance:(double *)a5
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v7 = [(_NSTextHighlightRunSegment *)v5 nextSegment];

  if (!v7)
  {
    return 0;
  }

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 2);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(WeakRetained + 5);
      v12 = v11;
      if (v11)
      {
        v13 = objc_loadWeakRetained(v11 + 3);
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = 0;
LABEL_7:
  [(_NSTextHighlightRunSegment *)v6 cornerRadius];
  v14 = [(_NSTextHighlightRunSegment *)v6 nextSegment];
  if (!v14)
  {
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_16_0();
  v16 = [v15 isPoint:? withinHorizontalDistance:? onRect:? leftDistance:? rightDistance:?];

  return (v16 & 1) != 0;
}

- (id)description
{
  p_isa = &self->super.isa;
  v3 = MEMORY[0x1E696AEC0];
  [(_NSTextHighlightRunSegment *)self topLeftCornerPoint];
  v5 = v4;
  [p_isa topLeftCornerPoint];
  v7 = v6;
  [p_isa topRightCornerPoint];
  v9 = v8;
  [p_isa topRightCornerPoint];
  v11 = v10;
  [p_isa bottomLeftCornerPoint];
  v13 = v12;
  [p_isa bottomLeftCornerPoint];
  v15 = v14;
  [p_isa bottomRightCornerPoint];
  v17 = v16;
  [p_isa bottomRightCornerPoint];
  v19 = [v3 stringWithFormat:@"(%.02f, %.02f)\t-------\t(%.02f, %.02f)\n\t\t\t | \t\t\t | \n\t\t\t | \t\t\t | \n(%.02f, %.02f)\t-------\t(%.02f, %.02f)", v5, v7, v9, v11, v13, v15, v17, v18];
  v20 = MEMORY[0x1E696AEC0];
  if (p_isa)
  {
    v21 = p_isa[3];
    p_isa = objc_loadWeakRetained(p_isa + 2);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v20 stringWithFormat:@"_NSTextHighlightRunSegment\n\tSegment Index:%lu\nCorners:\n%@\n%@", v21, v19, p_isa];

  return v22;
}

- (void)setTextRange:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

@end