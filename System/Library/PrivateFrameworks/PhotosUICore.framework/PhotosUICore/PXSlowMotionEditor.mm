@interface PXSlowMotionEditor
- (BOOL)_isPoint:(CGPoint)point inHandleIsStart:(BOOL)start outTouchOffset:(double *)offset;
- (BOOL)_isZoomed;
- (CGRect)_handleFrameForValue:(double)value isStart:(BOOL)start;
- (CGRect)_trackFrame;
- (CGRect)_trackFrameNoZoom;
- (CGRect)endHandleFrame;
- (CGRect)startHandleFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (PXSlowMotionEditor)initWithFrame:(CGRect)frame;
- (PXSlowMotionEditorDelegate)delegate;
- (UIEdgeInsets)trackInsets;
- (double)_trackScale;
- (double)_trimHandleWidth;
- (double)_valueFromHandleFrame:(CGRect)frame isStart:(BOOL)start;
- (double)_zoomMaxValue;
- (id)_handleTintColor;
- (id)_tickColor;
- (id)_trackColor;
- (id)_trackImageForZoom:(BOOL)zoom;
- (void)_beginTrackingZoomWithPoint:(CGPoint)point;
- (void)_cancelTrackingZoom;
- (void)_cancelZoom;
- (void)_cancelZoomTrackingIfNeccessaryWithPoint:(CGPoint)point;
- (void)_drawCurveWithFlatEndsFromX:(double)x fromY:(double)y toX:(double)toX toY:(double)toY;
- (void)_updateSlidersWithPoint:(CGPoint)point;
- (void)_updateTrack;
- (void)_zoomPressWasHeld;
- (void)handleBeginTrackingAtLocation:(CGPoint)location;
- (void)handleChangeTrackingAtLocation:(CGPoint)location;
- (void)handleEndTrackingAtLocation:(CGPoint)location;
- (void)layoutSubviews;
- (void)setEndValue:(double)minValue notify:(BOOL)notify;
- (void)setMaxValue:(double)maxValue;
- (void)setMinValue:(double)minValue;
- (void)setRegionEditorStyle:(unint64_t)style;
- (void)setStartValue:(double)minValue notify:(BOOL)notify;
- (void)setTrackInsets:(UIEdgeInsets)insets;
- (void)setZoomAnimating:(BOOL)animating;
- (void)setZoomMinValue:(double)value maxValue:(double)maxValue;
@end

@implementation PXSlowMotionEditor

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

- (PXSlowMotionEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_drawCurveWithFlatEndsFromX:(double)x fromY:(double)y toX:(double)toX toY:(double)toY
{
  CurrentContext = UIGraphicsGetCurrentContext();

  CGContextAddCurveToPoint(CurrentContext, toX * 0.5 + x * 0.5, y, toX * 0.5 + x * 0.5, toY, toX, toY);
}

- (id)_handleTintColor
{
  regionEditorStyle = [(PXSlowMotionEditor *)self regionEditorStyle];
  if (regionEditorStyle)
  {
    if (regionEditorStyle == 2 || regionEditorStyle == 1)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = 0;
    }
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  return labelColor;
}

- (id)_trackColor
{
  regionEditorStyle = [(PXSlowMotionEditor *)self regionEditorStyle];
  switch(regionEditorStyle)
  {
    case 0uLL:
      labelColor = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
      goto LABEL_7;
    case 2uLL:
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      goto LABEL_9;
    case 1uLL:
      labelColor = [MEMORY[0x1E69DC888] labelColor];
LABEL_7:
      v5 = labelColor;
      clearColor = [labelColor colorWithAlphaComponent:0.1];

      goto LABEL_9;
  }

  clearColor = 0;
LABEL_9:

  return clearColor;
}

- (id)_tickColor
{
  regionEditorStyle = [(PXSlowMotionEditor *)self regionEditorStyle];
  if (regionEditorStyle)
  {
    if (regionEditorStyle == 2 || regionEditorStyle == 1)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = 0;
    }
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  return labelColor;
}

- (id)_trackImageForZoom:(BOOL)zoom
{
  [(PXSlowMotionEditor *)self _trackFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXSlowMotionEditor *)self startHandleFrame];
  v13 = v12;
  v15 = v14;
  v60 = v17;
  v61 = v16;
  [(PXSlowMotionEditor *)self endHandleFrame];
  rect_24 = v19;
  v59 = v18;
  v20 = v15 - v7;
  rect_16 = v21 - v5;
  rect = v13 - v5;
  rect_8 = v22 - v7;
  v23 = *MEMORY[0x1E695EFF8];
  v24 = *(MEMORY[0x1E695EFF8] + 8);
  [(PXSlowMotionEditor *)self _trackScale];
  v26 = v25;
  [(PXSlowMotionEditor *)self px_screenScale];
  v28 = v27;
  v29 = vcvtpd_s64_f64(v9 * v27);
  v30 = vcvtpd_s64_f64(v11 * v27);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v32 = CGBitmapContextCreate(0, v29, v30, 8uLL, 0, DeviceRGB, 2u);
  CGColorSpaceRelease(DeviceRGB);
  if (v32)
  {
    v64.size.width = v29;
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    v64.size.height = v30;
    CGContextClearRect(v32, v64);
    CGContextTranslateCTM(v32, 0.0, v30);
    CGContextScaleCTM(v32, v28, -v28);
    CGContextGetCTM(&v62, v32);
    CGContextSetBaseCTM();
  }

  _trackColor = [(PXSlowMotionEditor *)self _trackColor];
  CGContextSetFillColorWithColor(v32, [_trackColor CGColor]);

  v65.origin.x = v23;
  v65.origin.y = v24;
  v65.size.width = v9;
  v65.size.height = v11;
  CGContextFillRect(v32, v65);
  CGContextSetLineWidth(v32, 1.0);
  CGContextSetLineCap(v32, kCGLineCapSquare);
  v66.origin.x = v23;
  v66.origin.y = v24;
  v66.size.width = v9;
  v66.size.height = v11;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v23;
  v67.origin.y = v24;
  v67.size.width = v9;
  v67.size.height = v11;
  MaxX = CGRectGetMaxX(v67);
  v68.origin.x = rect;
  v68.origin.y = v20;
  v68.size.height = v60;
  v68.size.width = v61;
  MidX = CGRectGetMidX(v68);
  v69.origin.y = rect_8;
  v69.origin.x = rect_16;
  v69.size.height = rect_24;
  v69.size.width = v59;
  v37 = CGRectGetMidX(v69);
  v38 = v26 * 3.0;
  v39 = v26 * 9.0;
  v40 = 1.0 / v9;
  startValue = self->_startValue;
  if (v9 == 0.0)
  {
    v40 = 0.0;
  }

  v42 = startValue - self->_minValue;
  endValue = self->_endValue;
  v44 = endValue - startValue;
  v45 = v44 >= v40 && self->_maxValue - endValue < v40;
  if (v42 >= v40 || v44 < v40)
  {
    for (i = v38 * floor(MinX / v38); i <= MidX; i = v38 + i)
    {
      CGContextMoveToPoint(v32, i, 0.0);
      CGContextAddLineToPoint(v32, i, 7.0);
    }

    MinX = MidX;
  }

  if (v45)
  {
    v48 = MaxX;
  }

  else
  {
    v48 = v37;
  }

  for (j = v39 * ceil(MinX / v39); j <= v48; j = v39 + j)
  {
    CGContextMoveToPoint(v32, j, 0.0);
    CGContextAddLineToPoint(v32, j, 7.0);
  }

  if (!v45)
  {
    for (k = v38 * ceil(v37 / v38); k <= MaxX; k = v38 + k)
    {
      CGContextMoveToPoint(v32, k, 0.0);
      CGContextAddLineToPoint(v32, k, 7.0);
    }
  }

  _tickColor = [(PXSlowMotionEditor *)self _tickColor];
  CGContextSetStrokeColorWithColor(v32, [_tickColor CGColor]);

  CGContextStrokePath(v32);
  Image = CGBitmapContextCreateImage(v32);
  CGContextRelease(v32);
  v52 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v28];
  CGImageRelease(Image);

  return v52;
}

- (void)_updateTrack
{
  v3 = [(PXSlowMotionEditor *)self _trackImageForZoom:0];
  [(UIImageView *)self->_trackImageView setImage:v3];
}

- (void)_cancelZoom
{
  if (self->_zoomed)
  {
    self->_zoomed = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained slowMotionEditorRequestForceUnzoom:self];
  }
}

- (void)_zoomPressWasHeld
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_zoomed = [WeakRetained slowMotionEditorRequestForceZoom:self];
}

- (void)_cancelTrackingZoom
{
  if (self->_trackingZoom && !self->_zoomed)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__zoomPressWasHeld object:0];
    self->_trackingZoom = 0;
  }
}

- (void)_cancelZoomTrackingIfNeccessaryWithPoint:(CGPoint)point
{
  if (vabdd_f64(point.x, self->_touchLocationWhenTrackingZoomBegan.x) > 4.0)
  {
    [(PXSlowMotionEditor *)self _cancelTrackingZoom];
  }
}

- (void)_beginTrackingZoomWithPoint:(CGPoint)point
{
  if (!self->_trackingZoom && !self->_zoomed)
  {
    self->_trackingZoom = 1;
    self->_touchLocationWhenTrackingZoomBegan = point;
    [(PXSlowMotionEditor *)self performSelector:sel__zoomPressWasHeld withObject:0 afterDelay:self->_zoomDelay];
  }
}

- (void)_updateSlidersWithPoint:(CGPoint)point
{
  x = point.x;
  if ((self->_draggingStart || self->_draggingEnd) && ![(PXSlowMotionEditor *)self isZoomAnimating:point.x])
  {
    if (self->_draggingStart)
    {
      [(PXSlowMotionEditor *)self startHandleFrame];
    }

    else
    {
      [(PXSlowMotionEditor *)self endHandleFrame];
    }

    v9 = v6;
    v10 = v7;
    v11 = v8;
    v12 = v5 + x - CGRectGetMidX(*&v5) - self->_touchOffset;
    if (self->_draggingStart)
    {
      [(PXSlowMotionEditor *)self _valueFromStartHandleFrame:v12, v9, v10, v11];

      [(PXSlowMotionEditor *)self setStartValue:1 notify:?];
    }

    else
    {
      [(PXSlowMotionEditor *)self _valueFromEndHandleFrame:v12, v9, v10, v11];

      [(PXSlowMotionEditor *)self setEndValue:1 notify:?];
    }
  }
}

- (void)handleEndTrackingAtLocation:(CGPoint)location
{
  [(PXSlowMotionEditor *)self _updateSlidersWithPoint:location.x, location.y];
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

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained slowMotionEditorDidEndEditing:self];

LABEL_5:
  [(PXSlowMotionEditor *)self _cancelTrackingZoom];

  [(PXSlowMotionEditor *)self _cancelZoom];
}

- (void)handleChangeTrackingAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(PXSlowMotionEditor *)self _updateSlidersWithPoint:?];
  if (self->_draggingStart || self->_draggingEnd)
  {
    [(PXSlowMotionEditor *)self _cancelZoomTrackingIfNeccessaryWithPoint:x, y];

    [(PXSlowMotionEditor *)self _beginTrackingZoomWithPoint:x, y];
  }
}

- (void)handleBeginTrackingAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v17 = 1.79769313e308;
  v18 = 1.79769313e308;
  v6 = [(PXSlowMotionEditor *)self _isPoint:1 inHandleIsStart:&v18 outTouchOffset:?];
  v7 = [(PXSlowMotionEditor *)self _isPoint:0 inHandleIsStart:&v17 outTouchOffset:x, y];
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
    [(PXSlowMotionEditor *)self _beginTrackingZoomWithPoint:x, y];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained slowMotionEditorDidBeginEditing:self withStartHandle:self->_draggingStart];
  }
}

- (BOOL)_isPoint:(CGPoint)point inHandleIsStart:(BOOL)start outTouchOffset:(double *)offset
{
  y = point.y;
  x = point.x;
  if (start)
  {
    [(PXSlowMotionEditor *)self startHandleFrame];
  }

  else
  {
    [(PXSlowMotionEditor *)self endHandleFrame];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  MidX = CGRectGetMidX(*&v8);
  v20.origin.x = v12;
  v20.origin.y = v13;
  v20.size.width = v14;
  v20.size.height = v15;
  MidY = CGRectGetMidY(v20);
  v18 = vabdd_f64(x, MidX) <= 44.0;
  result = vabdd_f64(y, MidY) <= 44.0 && v18;
  *offset = x - MidX;
  return result;
}

- (double)_valueFromHandleFrame:(CGRect)frame isStart:(BOOL)start
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PXSlowMotionEditor *)self _trackFrame];
  if (v10 <= 0.0)
  {
    return 0.0;
  }

  v11 = v9;
  v12 = v10;
  [(PXSlowMotionEditor *)self _trimHandleWidth];
  v14 = v13;
  v15 = v12 + v13 * -2.0;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  return self->_minValue + (CGRectGetMidX(v17) - (v11 + v14)) / v15 * (self->_maxValue - self->_minValue);
}

- (CGRect)_handleFrameForValue:(double)value isStart:(BOOL)start
{
  [(PXSlowMotionEditor *)self _trackFrame];
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
    v16 = (value - minValue) / (maxValue - minValue);
  }

  image = [(UIImageView *)self->_startHandleView image];
  [image size];
  v19 = v18;
  v21 = v20;

  [(PXSlowMotionEditor *)self _trimHandleWidth];
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
  [(PXSlowMotionEditor *)self _trackScale];
  return trimHandleWidth * v3;
}

- (double)_trackScale
{
  [(PXSlowMotionEditor *)self _zoomMinValue];
  v4 = v3;
  [(PXSlowMotionEditor *)self _zoomMaxValue];
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
  [(PXSlowMotionEditor *)self _trackFrameNoZoom];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ([(PXSlowMotionEditor *)self _isZoomed])
  {
    [(PXSlowMotionEditor *)self _zoomMinValue];
    v12 = v11;
    [(PXSlowMotionEditor *)self _zoomMaxValue];
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
  [(PXSlowMotionEditor *)self bounds];
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
  [(PXSlowMotionEditor *)self _handleFrameForValue:0 isStart:self->_endValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)startHandleFrame
{
  [(PXSlowMotionEditor *)self _handleFrameForValue:1 isStart:self->_startValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setRegionEditorStyle:(unint64_t)style
{
  if (self->_regionEditorStyle != style)
  {
    self->_regionEditorStyle = style;
    _handleTintColor = [(PXSlowMotionEditor *)self _handleTintColor];
    [(UIImageView *)self->_startHandleView setTintColor:_handleTintColor];
    [(UIImageView *)self->_endHandleView setTintColor:_handleTintColor];
    self->_forceLayout = 1;
    [(PXSlowMotionEditor *)self setNeedsLayout];
    [(PXSlowMotionEditor *)self layoutIfNeeded];
  }
}

- (void)setZoomAnimating:(BOOL)animating
{
  if (self->_zoomAnimating != animating)
  {
    self->_zoomAnimating = animating;
    if (!animating)
    {
      [(UIImageView *)self->_trackSnapshotView setImage:0];
    }
  }
}

- (BOOL)_isZoomed
{
  [(PXSlowMotionEditor *)self _zoomMinValue];
  v4 = v3;
  [(PXSlowMotionEditor *)self _zoomMaxValue];
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

- (void)setZoomMinValue:(double)value maxValue:(double)maxValue
{
  if (self->_zoomMinValue == value)
  {
    p_zoomMaxValue = &self->_zoomMaxValue;
    if (self->_zoomMaxValue == maxValue)
    {
      return;
    }
  }

  else
  {
    self->_zoomMinValue = value;
    p_zoomMaxValue = &self->_zoomMaxValue;
    if (self->_zoomMaxValue == maxValue)
    {
      goto LABEL_6;
    }
  }

  *p_zoomMaxValue = maxValue;
LABEL_6:
  v6 = self->_trackSnapshotView;
  objc_storeStrong(&self->_trackSnapshotView, self->_trackImageView);
  trackImageView = self->_trackImageView;
  self->_trackImageView = v6;
  v8 = v6;

  self->_forceLayout = 1;
  [(PXSlowMotionEditor *)self setNeedsLayout];
  [(PXSlowMotionEditor *)self layoutIfNeeded];
  [(UIImageView *)self->_trackImageView setAlpha:1.0];
  [(UIImageView *)self->_trackSnapshotView setAlpha:0.0];
}

- (void)setEndValue:(double)minValue notify:(BOOL)notify
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
    notifyCopy = notify;
    self->_endValue = minValue;
    if (self->_startValue > minValue)
    {
      [(PXSlowMotionEditor *)self setStartValue:notify notify:?];
    }

    [(PXSlowMotionEditor *)self setNeedsLayout];
    if (notifyCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained slowMotionEditorEndValueChanged:self];
    }
  }
}

- (void)setStartValue:(double)minValue notify:(BOOL)notify
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
    notifyCopy = notify;
    self->_startValue = minValue;
    if (self->_endValue < minValue)
    {
      [(PXSlowMotionEditor *)self setEndValue:notify notify:?];
    }

    [(PXSlowMotionEditor *)self setNeedsLayout];
    if (notifyCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained slowMotionEditorStartValueChanged:self];
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
      [(PXSlowMotionEditor *)self setMinValue:?];
      maxValue = self->_maxValue;
    }

    if (self->_endValue > maxValue)
    {
      [(PXSlowMotionEditor *)self setEndValue:?];
    }

    [(PXSlowMotionEditor *)self setNeedsLayout];
  }
}

- (void)setMinValue:(double)minValue
{
  if (self->_minValue != minValue)
  {
    self->_minValue = minValue;
    if (self->_maxValue < minValue)
    {
      [(PXSlowMotionEditor *)self setMaxValue:?];
      minValue = self->_minValue;
    }

    if (self->_startValue < minValue)
    {
      [(PXSlowMotionEditor *)self setStartValue:?];
    }

    [(PXSlowMotionEditor *)self setNeedsLayout];
  }
}

- (void)setTrackInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_trackInsets.top), vceqq_f64(v4, *&self->_trackInsets.bottom)))) & 1) == 0)
  {
    self->_trackInsets = insets;
    [(PXSlowMotionEditor *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PXSlowMotionEditor *)self bounds];

  [(PXSlowMotionEditor *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = fmax(result.height, 22.0);
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PXSlowMotionEditor;
  [(PXSlowMotionEditor *)&v13 layoutSubviews];
  if (self->_forceLayout || !self->_zoomAnimating)
  {
    [(PXSlowMotionEditor *)self _updateTrack];
    [(PXSlowMotionEditor *)self _trackFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIImageView *)self->_trackImageView setFrame:?];
    [(UIImageView *)self->_trackSnapshotView setFrame:v4, v6, v8, v10];
    startHandleView = self->_startHandleView;
    [(PXSlowMotionEditor *)self startHandleFrame];
    [(UIImageView *)startHandleView setFrame:?];
    endHandleView = self->_endHandleView;
    [(PXSlowMotionEditor *)self endHandleFrame];
    [(UIImageView *)endHandleView setFrame:?];
    self->_forceLayout = 0;
  }
}

- (PXSlowMotionEditor)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = PXSlowMotionEditor;
  v3 = [(PXSlowMotionEditor *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXSlowMotionEditor *)v3 setOpaque:0];
    v4->_regionEditorStyle = 0;
    handleImage = [objc_opt_class() handleImage];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    trackSnapshotView = v4->_trackSnapshotView;
    v4->_trackSnapshotView = v11;

    [(UIImageView *)v4->_trackSnapshotView setAlpha:0.0];
    [(PXSlowMotionEditor *)v4 addSubview:v4->_trackSnapshotView];
    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    trackImageView = v4->_trackImageView;
    v4->_trackImageView = v13;

    [(PXSlowMotionEditor *)v4 addSubview:v4->_trackImageView];
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:handleImage];
    startHandleView = v4->_startHandleView;
    v4->_startHandleView = v15;

    [(PXSlowMotionEditor *)v4 addSubview:v4->_startHandleView];
    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:handleImage];
    endHandleView = v4->_endHandleView;
    v4->_endHandleView = v17;

    [(PXSlowMotionEditor *)v4 addSubview:v4->_endHandleView];
    v4->_minValue = 0.0;
    v4->_maxValue = 1.0;
    v4->_startValue = v4->_minValue;
    v4->_endValue = v4->_maxValue;
    v4->_zoomDelay = 0.5;
  }

  return v4;
}

@end