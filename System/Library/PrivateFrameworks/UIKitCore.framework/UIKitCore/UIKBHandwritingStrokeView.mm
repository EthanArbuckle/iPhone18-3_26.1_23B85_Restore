@interface UIKBHandwritingStrokeView
- ($89C9DF7554150EC42DA90319EED2ADED)viewPointFromDataPoint:(SEL)point;
- (CGRect)aggregateInvalidRect;
- (CGRect)convertRectToBitmapCoordinates:(CGRect)coordinates;
- (CGRect)convertRectToViewCoordinates:(CGRect)coordinates;
- (CGRect)handwritingPointToRect:(id *)rect;
- (UIKBHandwritingView)keyView;
- (void)addHandwritingPoint:(id *)point;
- (void)addTrapezoidFromFirstPoint:(id *)point secondPoint:(id *)secondPoint;
- (void)clearRect:(CGRect)rect;
- (void)createBitmapIfNeeded;
- (void)dealloc;
- (void)displayAggregateInvalidRect;
- (void)drawRect:(CGRect)rect;
- (void)redrawStrokesInRect:(CGRect)rect;
- (void)updateInkColor;
@end

@implementation UIKBHandwritingStrokeView

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CFRelease(bitmapContext);
    self->_bitmapContext = 0;
  }

  v4.receiver = self;
  v4.super_class = UIKBHandwritingStrokeView;
  [(UIView *)&v4 dealloc];
}

- (CGRect)handwritingPointToRect:(id *)rect
{
  v6 = fmin(fmax(v5 * 1.10000002, 1.20000005), 2.5999999) + -0.200000003;
  v7 = v3 - v6;
  v8 = v4 - v6;
  v9 = v6 + v6;
  v10 = v9;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)createBitmapIfNeeded
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    Height = CGBitmapContextGetHeight(bitmapContext);
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v7 = v6;
    [(UIView *)self bounds];
    v8 = Height;
    v10 = v7 * v9;

    if (v10 - Height < 1.0)
    {
      return;
    }

    v12 = self->_bitmapContext;
    if (v12)
    {
      Image = CGBitmapContextCreateImage(v12);
      CFRelease(self->_bitmapContext);
      self->_bitmapContext = 0;
    }

    else
    {
      Image = 0;
    }
  }

  else
  {
    Image = 0;
    v8 = 0.0;
  }

  mainScreen2 = [objc_opt_self() mainScreen];
  [mainScreen2 scale];
  self->_scaleFactor = v14;

  [(UIView *)self bounds];
  v16 = v15;
  v18 = v17;
  scaleFactor = self->_scaleFactor;
  v21 = scaleFactor * v20;
  v23 = scaleFactor * v22;
  v24 = *(MEMORY[0x1E695F050] + 16);
  self->_aggregateInvalidRect.origin = *MEMORY[0x1E695F050];
  self->_aggregateInvalidRect.size = v24;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  self->_bitmapContext = CGBitmapContextCreate(0, v21, v23, 8uLL, 0, DeviceGray, 1u);
  CFRelease(DeviceGray);
  v26 = self->_bitmapContext;
  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v21;
  v28.size.height = v23;
  v29 = CGRectOffset(v28, -v16, -v18);
  CGContextClearRect(v26, v29);
  if (Image)
  {
    v30.origin.x = v16;
    v30.origin.y = v18;
    v30.size.width = v21;
    v30.size.height = v8;
    CGContextDrawImage(self->_bitmapContext, v30, Image);
    CFRelease(Image);
  }

  [(UIKBHandwritingStrokeView *)self updateInkColor];
}

- (void)updateInkColor
{
  bitmapContext = self->_bitmapContext;
  keyView = [(UIKBHandwritingStrokeView *)self keyView];
  CGContextSetFillColorWithColor(bitmapContext, [keyView inkColor]);
}

- (CGRect)convertRectToBitmapCoordinates:(CGRect)coordinates
{
  scaleFactor = self->_scaleFactor;
  v4 = coordinates.origin.x * scaleFactor;
  v5 = coordinates.origin.y * scaleFactor;
  v6 = coordinates.size.width * scaleFactor;
  v7 = coordinates.size.height * scaleFactor;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRectToViewCoordinates:(CGRect)coordinates
{
  scaleFactor = self->_scaleFactor;
  v4 = coordinates.origin.x / scaleFactor;
  v5 = coordinates.origin.y / scaleFactor;
  v6 = coordinates.size.width / scaleFactor;
  v7 = coordinates.size.height / scaleFactor;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)addHandwritingPoint:(id *)point
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  [(UIKBHandwritingStrokeView *)self createBitmapIfNeeded];
  [(UIKBHandwritingStrokeView *)self viewPointFromDataPoint:v8, v7, v6];
  [(UIKBHandwritingStrokeView *)self handwritingPointToRect:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  bitmapContext = self->_bitmapContext;
  [(UIKBHandwritingStrokeView *)self convertRectToBitmapCoordinates:?];
  CGContextFillEllipseInRect(bitmapContext, v19);
  v20.origin.x = v11;
  v20.origin.y = v13;
  v20.size.width = v15;
  v20.size.height = v17;
  self->_aggregateInvalidRect = CGRectUnion(self->_aggregateInvalidRect, v20);
}

- (void)addTrapezoidFromFirstPoint:(id *)point secondPoint:(id *)secondPoint
{
  if (v4 != v7 || v5 != v8)
  {
    v11 = v9;
    v12 = v8;
    v13 = v7;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    [(UIKBHandwritingStrokeView *)self createBitmapIfNeeded:point];
    [(UIKBHandwritingStrokeView *)self viewPointFromDataPoint:v16, v15, v14];
    v52 = v19;
    v54 = v18;
    v21 = v20;
    [(UIKBHandwritingStrokeView *)self viewPointFromDataPoint:v13, v12, v11];
    v22 = fmin(fmax(v21 * 1.10000002, 1.20000005), 2.5999999) + -0.200000003;
    v24.f64[0] = v54;
    v24.f64[1] = v52;
    *&v23 = fmin(fmax(v23 * 1.10000002, 1.20000005), 2.5999999) + -0.200000003;
    *&v24.f64[0] = vcvt_f32_f64(v24);
    v26.f64[1] = v25;
    *&v26.f64[0] = vcvt_f32_f64(v26);
    v27 = vsub_f32(*&v26.f64[0], *&v24.f64[0]);
    v28 = vmul_f32(v27, v27);
    v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
    v29 = vrsqrte_f32(v28.u32[0]);
    v30 = vmul_f32(v29, vrsqrts_f32(v28.u32[0], vmul_f32(v29, v29)));
    v31 = vmul_n_f32(v27, vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30))).f32[0]);
    v32 = v31.f32[0];
    v33 = v31.f32[0] * 6.123234e-17;
    v34 = v31.f32[1];
    *&v33 = v33 - v34;
    *&v34 = v32 - v34 * 6.123234e-17;
    HIDWORD(v33) = LODWORD(v34);
    *&v34 = self->_scaleFactor;
    v35 = vmul_n_f32(*&v33, v22 + 0.2);
    v36 = vmul_n_f32(*&v33, *&v23 + 0.2);
    v50 = vmul_n_f32(vadd_f32(v35, *&v24.f64[0]), *&v34);
    v51 = vmul_n_f32(vadd_f32(v36, *&v26.f64[0]), *&v34);
    v53 = vmul_n_f32(vsub_f32(*&v26.f64[0], v36), *&v34);
    v55 = vmul_n_f32(vsub_f32(*&v24.f64[0], v35), *&v34);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v50.f32[0], v50.f32[1]);
    CGPathAddLineToPoint(Mutable, 0, v51.f32[0], v51.f32[1]);
    CGPathAddLineToPoint(Mutable, 0, v53.f32[0], v53.f32[1]);
    CGPathAddLineToPoint(Mutable, 0, v55.f32[0], v55.f32[1]);
    CGPathCloseSubpath(Mutable);
    BoundingBox = CGPathGetBoundingBox(Mutable);
    x = BoundingBox.origin.x;
    y = BoundingBox.origin.y;
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    CGContextAddPath(self->_bitmapContext, Mutable);
    CGPathRelease(Mutable);
    CGContextFillPath(self->_bitmapContext);
    v42 = self->_aggregateInvalidRect.origin.x;
    v43 = self->_aggregateInvalidRect.origin.y;
    v44 = self->_aggregateInvalidRect.size.width;
    v45 = self->_aggregateInvalidRect.size.height;
    [(UIKBHandwritingStrokeView *)self convertRectToViewCoordinates:x, y, width, height];
    v58.origin.x = v46;
    v58.origin.y = v47;
    v58.size.width = v48;
    v58.size.height = v49;
    v57.origin.x = v42;
    v57.origin.y = v43;
    v57.size.width = v44;
    v57.size.height = v45;
    self->_aggregateInvalidRect = CGRectUnion(v57, v58);
  }
}

- (void)clearRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(UIKBHandwritingStrokeView *)self createBitmapIfNeeded];
  [(UIView *)self bounds];
  v20.origin.x = v8;
  v20.origin.y = v9;
  v20.size.width = v10;
  v20.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (CGRectEqualToRect(v14, v20))
  {
    ClipBoundingBox = CGContextGetClipBoundingBox(self->_bitmapContext);
    bitmapContext = self->_bitmapContext;
    v16 = CGRectOffset(ClipBoundingBox, -ClipBoundingBox.origin.x, -ClipBoundingBox.origin.y);
    CGContextClearRect(bitmapContext, v16);

    [(UIView *)self setNeedsDisplay];
  }

  else
  {
    [(UIKBHandwritingStrokeView *)self convertRectToBitmapCoordinates:x, y, width, height];
    v18 = CGRectIntegral(v17);
    CGContextClearRect(self->_bitmapContext, v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    self->_aggregateInvalidRect = CGRectIntegral(v19);
    [(UIKBHandwritingStrokeView *)self redrawStrokesInRect:x, y, width, height];

    [(UIKBHandwritingStrokeView *)self displayAggregateInvalidRect];
  }
}

- ($89C9DF7554150EC42DA90319EED2ADED)viewPointFromDataPoint:(SEL)point
{
  keyView = [(UIKBHandwritingStrokeView *)self keyView];
  [keyView pageOffset];

  return result;
}

- (void)redrawStrokesInRect:(CGRect)rect
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  keyView = [(UIKBHandwritingStrokeView *)self keyView];
  interpolatedPoints = [keyView interpolatedPoints];

  obj = interpolatedPoints;
  v6 = [interpolatedPoints countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = v9;
        v11 = 0;
        v12 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v12)
        {
          v13 = *v38;
          do
          {
            v14 = 0;
            v15 = v11;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v37 + 1) + 8 * v14);
              [v16 UIKBHandwritingPointValue];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              [(UIKBHandwritingStrokeView *)self viewPointFromDataPoint:?];
              [(UIKBHandwritingStrokeView *)self handwritingPointToRect:?];
              x = v23;
              y = v25;
              width = v27;
              height = v29;
              if (v15)
              {
                [v15 UIKBHandwritingPointValue];
                [(UIKBHandwritingStrokeView *)self viewPointFromDataPoint:?];
                [(UIKBHandwritingStrokeView *)self handwritingPointToRect:?];
                v51.origin.x = v31;
                v51.origin.y = v32;
                v51.size.width = v33;
                v51.size.height = v34;
                v48.origin.x = x;
                v48.origin.y = y;
                v48.size.width = width;
                v48.size.height = height;
                v49 = CGRectUnion(v48, v51);
                v50 = CGRectInset(v49, -0.200000003, -0.200000003);
                x = v50.origin.x;
                y = v50.origin.y;
                width = v50.size.width;
                height = v50.size.height;
              }

              v52.origin.x = x;
              v52.origin.y = y;
              v52.size.width = width;
              v52.size.height = height;
              if (CGRectIntersectsRect(rect, v52))
              {
                if (v15)
                {
                  [v15 UIKBHandwritingPointValue];
                  [UIKBHandwritingStrokeView addTrapezoidFromFirstPoint:"addTrapezoidFromFirstPoint:secondPoint:" secondPoint:?];
                }

                [(UIKBHandwritingStrokeView *)self addHandwritingPoint:v18, v20, v22];
              }

              v11 = v16;

              ++v14;
              v15 = v11;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v12);
        }
      }

      interpolatedPoints = obj;
      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }
}

- (void)displayAggregateInvalidRect
{
  p_aggregateInvalidRect = &self->_aggregateInvalidRect;
  v5 = CGRectIntegral(self->_aggregateInvalidRect);
  [(UIView *)self setNeedsDisplayInRect:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  v4 = *(MEMORY[0x1E695F050] + 16);
  p_aggregateInvalidRect->origin = *MEMORY[0x1E695F050];
  p_aggregateInvalidRect->size = v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v63 = *MEMORY[0x1E69E9840];
  keyView = [(UIKBHandwritingStrokeView *)self keyView];

  if (keyView)
  {
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v10);
    keyView2 = [(UIKBHandwritingStrokeView *)self keyView];
    inkColor = [keyView2 inkColor];

    if (inkColor)
    {
      keyView3 = [(UIKBHandwritingStrokeView *)self keyView];
      [keyView3 recreateInkMaskIfNeeded];

      [(UIView *)self bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      keyView4 = [(UIKBHandwritingStrokeView *)self keyView];
      inkMask = [keyView4 inkMask];
      v64.origin.x = v15;
      v64.origin.y = v17;
      v64.size.width = v19;
      v64.size.height = v21;
      CGContextClipToMask(v10, v64, inkMask);
    }

    keyView5 = [(UIKBHandwritingStrokeView *)self keyView];
    bezierPathFIFO = [keyView5 bezierPathFIFO];

    if (bezierPathFIFO)
    {
      keyView6 = [(UIKBHandwritingStrokeView *)self keyView];
      [keyView6 pageOffset];
      v28 = x + v27;

      v61 = 0;
      info[0] = v10;
      *&info[1] = v28;
      *&info[2] = y;
      *&info[3] = width;
      *&info[4] = height;
      info[5] = 0;
      info[6] = 0;
      keyView7 = [(UIKBHandwritingStrokeView *)self keyView];
      [keyView7 inkWidth];
      info[7] = v30;

      keyView8 = [(UIKBHandwritingStrokeView *)self keyView];
      [keyView8 pageOffset];
      CGContextTranslateCTM(v10, -v32, 0.0);

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      keyView9 = [(UIKBHandwritingStrokeView *)self keyView];
      interpolatedPoints = [keyView9 interpolatedPoints];

      v35 = [interpolatedPoints countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v35)
      {
        v36 = *v57;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(interpolatedPoints);
            }

            v38 = *(*(&v56 + 1) + 8 * i);
            LOBYTE(v61) = 0;
            CGPathApply([v38 CGPath], info, clipHandwritingPath);
          }

          v35 = [interpolatedPoints countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v35);
      }

      LOBYTE(v61) = 0;
      keyView10 = [(UIKBHandwritingStrokeView *)self keyView];
      currentPath = [keyView10 currentPath];
      v41 = currentPath == 0;

      if (!v41)
      {
        keyView11 = [(UIKBHandwritingStrokeView *)self keyView];
        currentPath2 = [keyView11 currentPath];
        v44 = currentPath2;
        CGPathApply([currentPath2 CGPath], info, clipHandwritingPath);
      }

      keyView12 = [(UIKBHandwritingStrokeView *)self keyView];
      [keyView12 inkWidth];
      CGContextSetLineWidth(v10, v46);

      CGContextSetLineCap(v10, kCGLineCapRound);
      CGContextSetLineJoin(v10, kCGLineJoinRound);
      keyView13 = [(UIKBHandwritingStrokeView *)self keyView];
      CGContextSetStrokeColorWithColor(v10, [keyView13 inkColor]);

      CGContextStrokePath(v10);
    }

    else
    {
      bitmapContext = self->_bitmapContext;
      if (bitmapContext)
      {
        Image = CGBitmapContextCreateImage(bitmapContext);
        v50 = CGBitmapContextGetWidth(self->_bitmapContext);
        v51 = CGBitmapContextGetHeight(self->_bitmapContext);
        [(UIView *)self bounds];
        if (v51 && v50)
        {
          v55 = v54 * v51 / v50;
        }

        CGContextDrawImage(v10, *&v52, Image);
        CFRelease(Image);
      }
    }

    CGContextRestoreGState(v10);
  }
}

- (UIKBHandwritingView)keyView
{
  WeakRetained = objc_loadWeakRetained(&self->_keyView);

  return WeakRetained;
}

- (CGRect)aggregateInvalidRect
{
  x = self->_aggregateInvalidRect.origin.x;
  y = self->_aggregateInvalidRect.origin.y;
  width = self->_aggregateInvalidRect.size.width;
  height = self->_aggregateInvalidRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end