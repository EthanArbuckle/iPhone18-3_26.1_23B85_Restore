@interface PLSlalomRegionEditor
- (BOOL)_isTouch:(id)a3 inHandleIsStart:(BOOL)a4 outTouchOffset:(double *)a5;
- (BOOL)_isZoomed;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_handleFrameForValue:(double)a3 isStart:(BOOL)a4;
- (CGRect)_trackFrame;
- (CGRect)_trackFrameNoZoom;
- (CGRect)endHandleFrame;
- (CGRect)startHandleFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (PLSlalomRegionEditor)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)trackInsets;
- (double)_trackScale;
- (double)_trimHandleWidth;
- (double)_valueFromHandleFrame:(CGRect)a3 isStart:(BOOL)a4;
- (double)_zoomMaxValue;
- (id)_handleImage;
- (id)_handleTintColor;
- (id)_tickColor;
- (id)_trackColor;
- (id)_trackImageForZoom:(BOOL)a3;
- (void)_beginTrackingZoomWithTouch:(id)a3;
- (void)_cancelTrackingZoom;
- (void)_cancelZoom;
- (void)_cancelZoomTrackingIfNeccessaryWithTouch:(id)a3;
- (void)_drawCurveWithFlatEndsFromX:(double)a3 fromY:(double)a4 toX:(double)a5 toY:(double)a6;
- (void)_stopTrackingAndSendControlEvents:(unint64_t)a3;
- (void)_updateSlidersWithTouch:(id)a3;
- (void)_updateTrack;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setEndValue:(double)minValue notify:(BOOL)a4;
- (void)setMaxValue:(double)maxValue;
- (void)setMinValue:(double)minValue;
- (void)setRegionEditorStyle:(unint64_t)a3;
- (void)setStartValue:(double)minValue notify:(BOOL)a4;
- (void)setTrackInsets:(UIEdgeInsets)a3;
- (void)setZoomAnimating:(BOOL)a3;
- (void)setZoomMinValue:(double)a3 maxValue:(double)a4;
@end

@implementation PLSlalomRegionEditor

- (UIEdgeInsets)trackInsets
{
  top = self->_trackInsets.top;
  left = self->_trackInsets.left;
  bottom = self->_trackInsets.bottom;
  right = self->_trackInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_handleImage
{
  v2 = PLPhotoLibraryFrameworkBundle();
  v3 = [MEMORY[0x277D755B8] imageNamed:@"PLSlalomGrabberHandle.png" inBundle:v2];
  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

- (void)_drawCurveWithFlatEndsFromX:(double)a3 fromY:(double)a4 toX:(double)a5 toY:(double)a6
{
  CurrentContext = UIGraphicsGetCurrentContext();

  CGContextAddCurveToPoint(CurrentContext, a5 * 0.5 + a3 * 0.5, a4, a5 * 0.5 + a3 * 0.5, a6, a5, a6);
}

- (id)_handleTintColor
{
  v2 = [(PLSlalomRegionEditor *)self regionEditorStyle];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75348] blackColor];
  }

  return v3;
}

- (id)_trackColor
{
  v2 = [(PLSlalomRegionEditor *)self regionEditorStyle];
  if (!v2)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
LABEL_5:
    v4 = v3;
    v5 = [v3 colorWithAlphaComponent:0.1];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_tickColor
{
  v2 = [(PLSlalomRegionEditor *)self regionEditorStyle];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  return v3;
}

- (id)_trackImageForZoom:(BOOL)a3
{
  [(PLSlalomRegionEditor *)self _trackFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PLSlalomRegionEditor *)self startHandleFrame];
  v13 = v12;
  v15 = v14;
  v57 = v17;
  v58 = v16;
  [(PLSlalomRegionEditor *)self endHandleFrame];
  v55 = v19;
  v56 = v18;
  v20 = v13 - v5;
  v21 = v15 - v7;
  v53 = v23 - v7;
  v54 = v22 - v5;
  v25 = *MEMORY[0x277CBF348];
  v24 = *(MEMORY[0x277CBF348] + 8);
  [(PLSlalomRegionEditor *)self _trackScale];
  v27 = v26;
  v28 = [(PLSlalomRegionEditor *)self px_screen];
  [v28 scale];
  v30 = v29;
  v60.width = v9;
  v60.height = v11;
  UIGraphicsBeginImageContextWithOptions(v60, 0, v30);

  CurrentContext = UIGraphicsGetCurrentContext();
  v32 = [(PLSlalomRegionEditor *)self _trackColor];
  [v32 setFill];

  v61.origin.x = v25;
  v61.origin.y = v24;
  v61.size.width = v9;
  v61.size.height = v11;
  CGContextFillRect(CurrentContext, v61);
  CGContextSetLineWidth(CurrentContext, 1.0);
  CGContextSetLineCap(CurrentContext, kCGLineCapSquare);
  v62.origin.x = v25;
  v62.origin.y = v24;
  v62.size.width = v9;
  v62.size.height = v11;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = v25;
  v63.origin.y = v24;
  v63.size.width = v9;
  v63.size.height = v11;
  MaxX = CGRectGetMaxX(v63);
  v64.origin.x = v20;
  v64.origin.y = v21;
  v64.size.height = v57;
  v64.size.width = v58;
  MidX = CGRectGetMidX(v64);
  v65.origin.y = v53;
  v65.origin.x = v54;
  v65.size.height = v55;
  v65.size.width = v56;
  v36 = CGRectGetMidX(v65);
  v37 = v27 * 3.0;
  v38 = v27 * 9.0;
  v39 = 1.0 / v9;
  startValue = self->_startValue;
  if (v9 == 0.0)
  {
    v39 = 0.0;
  }

  v41 = startValue - self->_minValue;
  endValue = self->_endValue;
  v43 = endValue - startValue;
  v44 = v43 >= v39 && self->_maxValue - endValue < v39;
  if (v41 >= v39 || v43 < v39)
  {
    for (i = v37 * floor(MinX / v37); i <= MidX; i = v37 + i)
    {
      CGContextMoveToPoint(CurrentContext, i, 0.0);
      CGContextAddLineToPoint(CurrentContext, i, 7.0);
    }

    MinX = MidX;
  }

  if (v44)
  {
    v47 = MaxX;
  }

  else
  {
    v47 = v36;
  }

  for (j = v38 * ceil(MinX / v38); j <= v47; j = v38 + j)
  {
    CGContextMoveToPoint(CurrentContext, j, 0.0);
    CGContextAddLineToPoint(CurrentContext, j, 7.0);
  }

  if (!v44)
  {
    for (k = v37 * ceil(v36 / v37); k <= MaxX; k = v37 + k)
    {
      CGContextMoveToPoint(CurrentContext, k, 0.0);
      CGContextAddLineToPoint(CurrentContext, k, 7.0);
    }
  }

  v49 = [(PLSlalomRegionEditor *)self _tickColor];
  [v49 setStroke];

  CGContextStrokePath(CurrentContext);
  v50 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v50;
}

- (void)_updateTrack
{
  v3 = [(PLSlalomRegionEditor *)self _trackImageForZoom:0];
  [(UIImageView *)self->_trackImageView setImage:v3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_draggingStart && !self->_draggingEnd)
  {
    goto LABEL_15;
  }

  v6 = [v4 view];

  if (v6 == self)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 numberOfTouchesRequired] != 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 minimumNumberOfTouches] <= 1)
    {
      [v5 translationInView:self];
      v17 = fabs(v18) <= fabs(v19);
      goto LABEL_16;
    }

LABEL_15:
    v17 = 1;
    goto LABEL_16;
  }

  v7 = [v5 view];
  [(PLSlalomRegionEditor *)self convertPoint:v7 toView:10.0, 10.0];
  v9 = v8;
  v11 = v10;

  v12 = [v5 view];
  [(PLSlalomRegionEditor *)self convertPoint:v12 toView:20.0, 10.0];
  v14 = v13;
  v16 = v15;

  if (([v5 direction] & 3) == 0 || (v17 = 0, v9 >= v14) && v9 <= v14)
  {
    v17 = ([v5 direction] & 0xC) == 0 || v11 == v16;
  }

LABEL_16:

  return v17;
}

- (void)_cancelZoom
{
  if (self->_zoomed)
  {
    self->_zoomed = 0;
    [(PLSlalomRegionEditorDelegate *)self->_delegate slalomRegionEditorRequestForceUnzoom:self];
  }
}

- (void)_cancelTrackingZoom
{
  if (self->_trackingZoom && !self->_zoomed)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__zoomPressWasHeld object:0];
    self->_trackingZoom = 0;
  }
}

- (void)_cancelZoomTrackingIfNeccessaryWithTouch:(id)a3
{
  [a3 locationInView:self];
  if (vabdd_f64(v4, self->_touchLocationWhenTrackingZoomBegan.x) > 4.0)
  {

    [(PLSlalomRegionEditor *)self _cancelTrackingZoom];
  }
}

- (void)_beginTrackingZoomWithTouch:(id)a3
{
  v4 = a3;
  if (!self->_trackingZoom && !self->_zoomed)
  {
    self->_trackingZoom = 1;
    v7 = v4;
    [v4 locationInView:self];
    self->_touchLocationWhenTrackingZoomBegan.x = v5;
    self->_touchLocationWhenTrackingZoomBegan.y = v6;
    [(PLSlalomRegionEditor *)self performSelector:sel__zoomPressWasHeld withObject:0 afterDelay:self->_zoomDelay];
    v4 = v7;
  }
}

- (void)_updateSlidersWithTouch:(id)a3
{
  v4 = a3;
  if (v4 && (self->_draggingStart || self->_draggingEnd))
  {
    v16 = v4;
    if (![(PLSlalomRegionEditor *)self isZoomAnimating])
    {
      if (self->_draggingStart)
      {
        [(PLSlalomRegionEditor *)self startHandleFrame];
      }

      else
      {
        [(PLSlalomRegionEditor *)self endHandleFrame];
      }

      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      [v16 locationInView:self];
      v14 = v13;
      v18.origin.x = v9;
      v18.origin.y = v10;
      v18.size.width = v11;
      v18.size.height = v12;
      v15 = v9 + v14 - CGRectGetMidX(v18) - self->_touchOffset;
      if (self->_draggingStart)
      {
        [(PLSlalomRegionEditor *)self _valueFromStartHandleFrame:v15, v10, v11, v12];
        [(PLSlalomRegionEditor *)self setStartValue:1 notify:?];
      }

      else
      {
        [(PLSlalomRegionEditor *)self _valueFromEndHandleFrame:v15, v10, v11, v12];
        [(PLSlalomRegionEditor *)self setEndValue:1 notify:?];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_stopTrackingAndSendControlEvents:(unint64_t)a3
{
  if (self->_draggingStart)
  {
    self->_draggingStart = 0;
    self->_draggingEnd = 0;
  }

  else
  {
    draggingEnd = self->_draggingEnd;
    self->_draggingStart = 0;
    self->_draggingEnd = 0;
    if (!draggingEnd)
    {
      goto LABEL_5;
    }
  }

  [(PLSlalomRegionEditorDelegate *)self->_delegate slalomRegionEditorDidEndEditing:self];
  [(PLSlalomRegionEditor *)self sendActionsForControlEvents:a3];
LABEL_5:
  [(PLSlalomRegionEditor *)self _cancelTrackingZoom];

  [(PLSlalomRegionEditor *)self _cancelZoom];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(PLSlalomRegionEditor *)self _updateSlidersWithTouch:a3, a4];

  [(PLSlalomRegionEditor *)self _stopTrackingAndSendControlEvents:64];
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(PLSlalomRegionEditor *)self _updateSlidersWithTouch:v5];
  if (self->_draggingStart || self->_draggingEnd)
  {
    [(PLSlalomRegionEditor *)self _cancelZoomTrackingIfNeccessaryWithTouch:v5];
    [(PLSlalomRegionEditor *)self _beginTrackingZoomWithTouch:v5];
  }

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v17 = 1.79769313e308;
  v18 = 1.79769313e308;
  v6 = [(PLSlalomRegionEditor *)self _isTouch:v5 inHandleIsStart:1 outTouchOffset:&v18];
  v7 = [(PLSlalomRegionEditor *)self _isTouch:v5 inHandleIsStart:0 outTouchOffset:&v17];
  v9 = v17;
  v8 = v18;
  v10 = fabs(v18);
  v11 = fabs(v17);
  v12 = v10 >= v11;
  if (v7)
  {
    v13 = v10 < v11;
  }

  else
  {
    v12 = 0;
    v13 = v6;
  }

  if (v6)
  {
    v14 = v12;
  }

  else
  {
    v14 = v7;
  }

  v15 = v6 && v13;
  self->_draggingStart = v15;
  self->_draggingEnd = v14;
  if (!v15)
  {
    v8 = v9;
  }

  self->_touchOffset = v8;
  if (self->_draggingStart || v14)
  {
    [(PLSlalomRegionEditor *)self _beginTrackingZoomWithTouch:v5];
    [(PLSlalomRegionEditorDelegate *)self->_delegate slalomRegionEditorDidBeginEditing:self withStartHandle:self->_draggingStart];
    [(PLSlalomRegionEditor *)self sendActionsForControlEvents:1];
  }

  return 1;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PLSlalomRegionEditor *)self isEnabled]!= a3)
  {
    v6.receiver = self;
    v6.super_class = PLSlalomRegionEditor;
    [(PLSlalomRegionEditor *)&v6 setEnabled:v3];
    if ([(PLSlalomRegionEditor *)self isEnabled])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.5;
    }

    [(UIImageView *)self->_startHandleView setAlpha:v5];
    [(UIImageView *)self->_endHandleView setAlpha:v5];
    [(UIImageView *)self->_trackImageView setAlpha:v5];
    [(UIImageView *)self->_trackSnapshotView setAlpha:v5];
  }
}

- (BOOL)_isTouch:(id)a3 inHandleIsStart:(BOOL)a4 outTouchOffset:(double *)a5
{
  v6 = a4;
  [a3 locationInView:self];
  v9 = v8;
  v11 = v10;
  if (v6)
  {
    [(PLSlalomRegionEditor *)self startHandleFrame];
  }

  else
  {
    [(PLSlalomRegionEditor *)self endHandleFrame];
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  MidX = CGRectGetMidX(*&v12);
  v24.origin.x = v16;
  v24.origin.y = v17;
  v24.size.width = v18;
  v24.size.height = v19;
  MidY = CGRectGetMidY(v24);
  v22 = vabdd_f64(v9, MidX) <= 44.0;
  result = vabdd_f64(v11, MidY) <= 44.0 && v22;
  *a5 = v9 - MidX;
  return result;
}

- (double)_valueFromHandleFrame:(CGRect)a3 isStart:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PLSlalomRegionEditor *)self _trackFrame];
  if (v10 <= 0.0)
  {
    return 0.0;
  }

  v11 = v9;
  v12 = v10;
  [(PLSlalomRegionEditor *)self _trimHandleWidth];
  v14 = v13;
  v15 = v12 + v13 * -2.0;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  return self->_minValue + (CGRectGetMidX(v17) - (v11 + v14)) / v15 * (self->_maxValue - self->_minValue);
}

- (CGRect)_handleFrameForValue:(double)a3 isStart:(BOOL)a4
{
  [(PLSlalomRegionEditor *)self _trackFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  minValue = self->_minValue;
  maxValue = self->_maxValue;
  if (minValue == maxValue)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = (a3 - minValue) / (maxValue - minValue);
  }

  v17 = [(UIImageView *)self->_startHandleView image];
  [v17 size];
  v19 = v18;
  v21 = v20;

  [(PLSlalomRegionEditor *)self _trimHandleWidth];
  v23 = v19 * -0.5 + (v11 + v22 * -2.0) * v16;
  v24 = v7 + v22 + roundf(v23);
  v25 = (v13 - v21) * 0.5;
  v26 = v9 + roundf(v25);
  v27 = v19;
  v28 = v21;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v24;
  return result;
}

- (double)_trimHandleWidth
{
  trimHandleWidth = self->_trimHandleWidth;
  [(PLSlalomRegionEditor *)self _trackScale];
  return trimHandleWidth * v3;
}

- (double)_trackScale
{
  [(PLSlalomRegionEditor *)self _zoomMinValue];
  v4 = v3;
  [(PLSlalomRegionEditor *)self _zoomMaxValue];
  v6 = v5 - v4;
  v7 = self->_maxValue - self->_minValue;
  v8 = v7 == 0.0 || v6 == 0.0;
  result = v7 / v6;
  if (v8)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)_trackFrame
{
  [(PLSlalomRegionEditor *)self _trackFrameNoZoom];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(PLSlalomRegionEditor *)self _isZoomed])
  {
    [(PLSlalomRegionEditor *)self _zoomMinValue];
    v12 = v11;
    [(PLSlalomRegionEditor *)self _zoomMaxValue];
    v14 = v13 - v12;
    if (v14 != 0.0)
    {
      minValue = self->_minValue;
      v16 = self->_maxValue - minValue;
      if (v16 != 0.0)
      {
        v17 = v16 / v14;
        v22.size.width = width * v17;
        v22.origin.x = x - ((v12 - minValue) / v16 * (width * v17 + v17 * -2.0 * self->_trimHandleWidth) + (v17 + -1.0) * self->_trimHandleWidth);
        v22.origin.y = y;
        v22.size.height = height;
        v23 = CGRectIntegral(v22);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
      }
    }
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_trackFrameNoZoom
{
  [(PLSlalomRegionEditor *)self bounds];
  top = self->_trackInsets.top;
  left = self->_trackInsets.left;
  v6 = v5 + left;
  v9 = v8 - (left + self->_trackInsets.right);
  *&v10 = (v10 - (top + self->_trackInsets.bottom) + -7.0) * 0.5;
  v11 = v7 + top + roundf(*&v10);
  v12 = 7.0;

  return CGRectIntegral(*&v6);
}

- (CGRect)endHandleFrame
{
  [(PLSlalomRegionEditor *)self _handleFrameForValue:0 isStart:self->_endValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)startHandleFrame
{
  [(PLSlalomRegionEditor *)self _handleFrameForValue:1 isStart:self->_startValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setRegionEditorStyle:(unint64_t)a3
{
  if (self->_regionEditorStyle != a3)
  {
    self->_regionEditorStyle = a3;
    v5 = [(PLSlalomRegionEditor *)self _handleTintColor];
    [(UIImageView *)self->_startHandleView setTintColor:v5];
    [(UIImageView *)self->_endHandleView setTintColor:v5];
    self->_forceLayout = 1;
    [(PLSlalomRegionEditor *)self setNeedsLayout];
    [(PLSlalomRegionEditor *)self layoutIfNeeded];
  }
}

- (void)setZoomAnimating:(BOOL)a3
{
  if (self->_zoomAnimating != a3)
  {
    self->_zoomAnimating = a3;
    if (!a3)
    {
      [(UIImageView *)self->_trackSnapshotView setImage:0];
    }
  }
}

- (BOOL)_isZoomed
{
  [(PLSlalomRegionEditor *)self _zoomMinValue];
  v4 = v3;
  [(PLSlalomRegionEditor *)self _zoomMaxValue];
  return v4 > self->_minValue || v5 < self->_maxValue;
}

- (double)_zoomMaxValue
{
  result = self->_zoomMaxValue;
  if (result == 0.0)
  {
    return self->_maxValue;
  }

  return result;
}

- (void)setZoomMinValue:(double)a3 maxValue:(double)a4
{
  if (self->_zoomMinValue == a3)
  {
    p_zoomMaxValue = &self->_zoomMaxValue;
    if (self->_zoomMaxValue == a4)
    {
      return;
    }
  }

  else
  {
    self->_zoomMinValue = a3;
    p_zoomMaxValue = &self->_zoomMaxValue;
    if (self->_zoomMaxValue == a4)
    {
      goto LABEL_6;
    }
  }

  *p_zoomMaxValue = a4;
LABEL_6:
  v6 = self->_trackSnapshotView;
  objc_storeStrong(&self->_trackSnapshotView, self->_trackImageView);
  trackImageView = self->_trackImageView;
  self->_trackImageView = v6;
  v8 = v6;

  self->_forceLayout = 1;
  [(PLSlalomRegionEditor *)self setNeedsLayout];
  [(PLSlalomRegionEditor *)self layoutIfNeeded];
  [(UIImageView *)self->_trackImageView setAlpha:1.0];
  [(UIImageView *)self->_trackSnapshotView setAlpha:0.0];
}

- (void)setEndValue:(double)minValue notify:(BOOL)a4
{
  if (self->_minValue > minValue)
  {
    minValue = self->_minValue;
  }

  if (minValue > self->_maxValue)
  {
    minValue = self->_maxValue;
  }

  if (self->_endValue != minValue)
  {
    v4 = a4;
    self->_endValue = minValue;
    if (self->_startValue > minValue)
    {
      [(PLSlalomRegionEditor *)self setStartValue:a4 notify:?];
    }

    [(PLSlalomRegionEditor *)self setNeedsLayout];
    if (v4)
    {
      delegate = self->_delegate;

      [(PLSlalomRegionEditorDelegate *)delegate slalomRegionEditorEndValueChanged:self];
    }
  }
}

- (void)setStartValue:(double)minValue notify:(BOOL)a4
{
  if (self->_minValue > minValue)
  {
    minValue = self->_minValue;
  }

  if (minValue > self->_maxValue)
  {
    minValue = self->_maxValue;
  }

  if (self->_startValue != minValue)
  {
    v4 = a4;
    self->_startValue = minValue;
    if (self->_endValue < minValue)
    {
      [(PLSlalomRegionEditor *)self setEndValue:a4 notify:?];
    }

    [(PLSlalomRegionEditor *)self setNeedsLayout];
    if (v4)
    {
      delegate = self->_delegate;

      [(PLSlalomRegionEditorDelegate *)delegate slalomRegionEditorStartValueChanged:self];
    }
  }
}

- (void)setMaxValue:(double)maxValue
{
  if (self->_maxValue != maxValue)
  {
    self->_maxValue = maxValue;
    if (self->_minValue > maxValue)
    {
      [(PLSlalomRegionEditor *)self setMinValue:?];
      maxValue = self->_maxValue;
    }

    if (self->_endValue > maxValue)
    {
      [(PLSlalomRegionEditor *)self setEndValue:?];
    }

    [(PLSlalomRegionEditor *)self setNeedsLayout];
  }
}

- (void)setMinValue:(double)minValue
{
  if (self->_minValue != minValue)
  {
    self->_minValue = minValue;
    if (self->_maxValue < minValue)
    {
      [(PLSlalomRegionEditor *)self setMaxValue:?];
      minValue = self->_minValue;
    }

    if (self->_startValue < minValue)
    {
      [(PLSlalomRegionEditor *)self setStartValue:?];
    }

    [(PLSlalomRegionEditor *)self setNeedsLayout];
  }
}

- (void)setTrackInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_trackInsets.top), vceqq_f64(v4, *&self->_trackInsets.bottom)))) & 1) == 0)
  {
    self->_trackInsets = a3;
    [(PLSlalomRegionEditor *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PLSlalomRegionEditor *)self bounds];

  [(PLSlalomRegionEditor *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = fmax(result.height, 21.0);
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PLSlalomRegionEditor;
  [(PLSlalomRegionEditor *)&v13 layoutSubviews];
  if (self->_forceLayout || !self->_zoomAnimating)
  {
    [(PLSlalomRegionEditor *)self _updateTrack];
    [(PLSlalomRegionEditor *)self _trackFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIImageView *)self->_trackImageView setFrame:?];
    [(UIImageView *)self->_trackSnapshotView setFrame:v4, v6, v8, v10];
    startHandleView = self->_startHandleView;
    [(PLSlalomRegionEditor *)self startHandleFrame];
    [(UIImageView *)startHandleView setFrame:?];
    endHandleView = self->_endHandleView;
    [(PLSlalomRegionEditor *)self endHandleFrame];
    [(UIImageView *)endHandleView setFrame:?];
    self->_forceLayout = 0;
  }
}

- (PLSlalomRegionEditor)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = PLSlalomRegionEditor;
  v3 = [(PLSlalomRegionEditor *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLSlalomRegionEditor *)v3 setOpaque:0];
    v4->_regionEditorStyle = 0;
    v5 = [(PLSlalomRegionEditor *)v4 _handleImage];
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    trackSnapshotView = v4->_trackSnapshotView;
    v4->_trackSnapshotView = v11;

    [(UIImageView *)v4->_trackSnapshotView setAlpha:0.0];
    [(PLSlalomRegionEditor *)v4 addSubview:v4->_trackSnapshotView];
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
    trackImageView = v4->_trackImageView;
    v4->_trackImageView = v13;

    [(PLSlalomRegionEditor *)v4 addSubview:v4->_trackImageView];
    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    startHandleView = v4->_startHandleView;
    v4->_startHandleView = v15;

    v17 = v4->_startHandleView;
    v18 = [(PLSlalomRegionEditor *)v4 _handleTintColor];
    [(UIImageView *)v17 setTintColor:v18];

    [(PLSlalomRegionEditor *)v4 addSubview:v4->_startHandleView];
    v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    endHandleView = v4->_endHandleView;
    v4->_endHandleView = v19;

    v21 = v4->_endHandleView;
    v22 = [(PLSlalomRegionEditor *)v4 _handleTintColor];
    [(UIImageView *)v21 setTintColor:v22];

    [(PLSlalomRegionEditor *)v4 addSubview:v4->_endHandleView];
    v4->_minValue = 0.0;
    v4->_maxValue = 1.0;
    v4->_startValue = v4->_minValue;
    v4->_endValue = v4->_maxValue;
    v4->_zoomDelay = 0.5;
  }

  return v4;
}

@end