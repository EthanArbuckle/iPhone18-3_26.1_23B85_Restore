@interface TTRIReminderLocationPickerMapDragRadiusView
- (BOOL)_usesMetric;
- (CAShapeLayer)shapeLayer;
- (CGPoint)_maxPoint;
- (CGPoint)_minPoint;
- (CGPoint)_pointForRadius:(double)radius;
- (CGPoint)initialHandleCenterForDraggin;
- (CGRect)accessibilityFrame;
- (TTRIReminderLocationPickerMapDragRadiusView)initWithFrame:(CGRect)frame mapView:(id)view;
- (TTRIReminderLocationPickerMapDragRadiusViewDelegate)delegate;
- (double)_currentHandleDistance;
- (double)_radiusForPoint:(CGPoint)point;
- (double)_ttriAccessibilityRadiusIncrement;
- (double)radius;
- (id)_bezierPathWithEndPoint:(CGPoint)point;
- (id)_currentHandleDistanceMeasurement;
- (id)_measurementFor:(double)for fromUnit:(id)unit toUnit:(id)toUnit normalized:(BOOL)normalized;
- (id)_shapeLayerWithEndPoint:(CGPoint)point;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_animateHandleIn:(BOOL)in;
- (void)_centerAndZoomToFitRegion:(id)region animated:(BOOL)animated;
- (void)_hideCircleAfterDelay;
- (void)_popAnimateHandle;
- (void)_removeHandle;
- (void)_updateHandleImageView;
- (void)_updateHandleImageViewWithPoint:(CGPoint)point;
- (void)_updateRegionWithPoint:(CGPoint)point;
- (void)_updateRegionWithRadius:(double)radius;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)drawRect:(CGRect)rect;
- (void)handlePanGesture:(id)gesture;
- (void)setHandleColor:(id)color;
- (void)startEditingRegion:(id)region;
- (void)stopEditing;
@end

@implementation TTRIReminderLocationPickerMapDragRadiusView

- (TTRIReminderLocationPickerMapDragRadiusView)initWithFrame:(CGRect)frame mapView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v27.receiver = self;
  v27.super_class = TTRIReminderLocationPickerMapDragRadiusView;
  height = [(TTRIReminderLocationPickerMapDragRadiusView *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    [MEMORY[0x277D44868] minimumRegionMonitoringDistance];
    height->_minimumRadius = v12;
    height->_maximumRadius = 241401.0;
    height->_radiusPaddingMultiplier = 3.5;
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    handleImageView = height->_handleImageView;
    height->_handleImageView = v13;

    layer = [(UIImageView *)height->_handleImageView layer];
    [layer setZPosition:50.0];

    objc_storeStrong(&height->_mapView, view);
    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = height->_measurementFormatter;
    height->_measurementFormatter = v16;

    if ([(TTRIReminderLocationPickerMapDragRadiusView *)height _usesMetric])
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    [(NSMeasurementFormatter *)height->_measurementFormatter setUnitOptions:v18];
    numberFormatter = [(NSMeasurementFormatter *)height->_measurementFormatter numberFormatter];
    [numberFormatter setMinimumFractionDigits:0];

    numberFormatter2 = [(NSMeasurementFormatter *)height->_measurementFormatter numberFormatter];
    [numberFormatter2 setMaximumFractionDigits:1];

    blueColor = [MEMORY[0x277D75348] blueColor];
    circleColor = height->_circleColor;
    height->_circleColor = blueColor;

    blueColor2 = [MEMORY[0x277D75348] blueColor];
    handleColor = height->_handleColor;
    height->_handleColor = blueColor2;

    [(TTRIReminderLocationPickerMapDragRadiusView *)height _updateHandleImageView];
    v25 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:height action:sel_handlePanGesture_];
    [(TTRIReminderLocationPickerMapDragRadiusView *)height addGestureRecognizer:v25];
  }

  return height;
}

- (void)drawRect:(CGRect)rect
{
  v44[3] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = TTRIReminderLocationPickerMapDragRadiusView;
  [(TTRIReminderLocationPickerMapDragRadiusView *)&v42 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self isDragging])
  {
    mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [region center];
    [mapView convertCoordinate:self toPointToView:?];
    v7 = v6;
    v9 = v8;

    handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView center];
    v12 = v11 - v7;

    handleImageView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView2 center];
    v15 = v14 - (v12 + v12);
    handleImageView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView3 center];
    v18 = v17 - v12;

    circleColor = [(TTRIReminderLocationPickerMapDragRadiusView *)self circleColor];
    circleColor2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self circleColor];
    v21 = [circleColor2 colorWithAlphaComponent:0.15];

    CurrentContext = UIGraphicsGetCurrentContext();
    v45.origin.x = v15;
    v45.origin.y = v18;
    v45.size.width = v12 + v12;
    v45.size.height = v12 + v12;
    CGContextAddEllipseInRect(CurrentContext, v45);
    Components = CGColorGetComponents([v21 CGColor]);
    CGContextSetFillColor(CurrentContext, Components);
    CGContextFillPath(CurrentContext);
    v46.origin.x = v15;
    v46.origin.y = v18;
    v46.size.width = v12 + v12;
    v46.size.height = v12 + v12;
    CGContextAddEllipseInRect(CurrentContext, v46);
    v24 = CGColorGetComponents([circleColor CGColor]);
    CGContextSetStrokeColor(CurrentContext, v24);
    CGContextSetLineWidth(CurrentContext, 3.0);
    CGContextStrokePath(CurrentContext);
    _currentHandleDistanceMeasurement = [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistanceMeasurement];
    measurementFormatter = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
    v27 = [measurementFormatter stringFromMeasurement:_currentHandleDistanceMeasurement];

    v47.origin.y = v9 + -16.0;
    v47.size.width = v12 + -14.0;
    v47.size.height = 16.0;
    v47.origin.x = v7;
    v48 = CGRectIntegral(v47);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    [circleColor set];
    v32 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    [circleColor set];
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    CGContextSetRGBFillColor(CurrentContext, 0.937254902, 0.560784314, 0.0784313725, 1.0);
    CGContextSetRGBStrokeColor(CurrentContext, 1.0, 1.0, 1.0, 0.5);
    CGContextSetTextDrawingMode(CurrentContext, kCGTextFill);
    CGContextSetLineWidth(CurrentContext, 2.0);
    v33 = objc_alloc_init(MEMORY[0x277D74240]);
    [v33 setAlignment:1];
    [v33 setLineBreakMode:4];
    v34 = *MEMORY[0x277D740C0];
    v43[0] = *MEMORY[0x277D740A8];
    v43[1] = v34;
    v44[0] = v32;
    v44[1] = circleColor;
    v43[2] = *MEMORY[0x277D74118];
    v44[2] = v33;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
    [v27 drawInRect:v35 withAttributes:{x, y, width, height}];

    handleImageView4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView4 center];
    v38 = v37;
    v40 = v39;

    v41 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _shapeLayerWithEndPoint:v38, v40];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [handleImageView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9 + -15.0;
  v22.origin.y = v11 + -15.0;
  v22.size.width = v13 + 30.0;
  v22.size.height = v15 + 30.0;
  v21.x = x;
  v21.y = y;
  if (CGRectContainsPoint(v22, v21) && (-[TTRIReminderLocationPickerMapDragRadiusView handleImageView](self, "handleImageView"), v16 = objc_claimAutoreleasedReturnValue(), [v16 superview], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy translationInView:self];
  v6 = v5;
  v8 = v7;
  state = [gestureCopy state];

  if ((state - 3) < 2)
  {
    handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView setHighlighted:0];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v16 = v6 + v15;
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v18 = v8 + v17;

    [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateRegionWithPoint:v16, v18];
  }

  else if (state == 2)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v20 = v6 + v19;
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v22 = v8 + v21;

    [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateHandleImageViewWithPoint:v20, v22];
  }

  else if (state == 1)
  {
    handleImageView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView2 center];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setInitialHandleCenterForDraggin:?];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsDragging:1];
    handleImageView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView3 setHighlighted:1];

    mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    overlay = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
    [mapView removeOverlay:overlay];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  }
}

- (void)startEditingRegion:(id)region
{
  regionCopy = region;
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  v5 = [region isEqual:regionCopy];

  if ((v5 & 1) == 0)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self stopEditing];
  }

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:regionCopy];
  [regionCopy center];
  v7 = v6;
  v9 = v8;
  [regionCopy radius];
  v11 = [TTRIWorldBoundingMKCircle circleWithCenterCoordinate:v7 radius:v9, v10];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:v11];

  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  overlay = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [mapView addOverlay:overlay];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _centerAndZoomToFitRegion:regionCopy animated:0];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _animateHandleIn:v5];
}

- (void)stopEditing
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:0];
  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  overlay = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [mapView removeOverlay:overlay];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:0];
}

- (CAShapeLayer)shapeLayer
{
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    handleColor = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleColor];
    [v4 setStrokeColor:{objc_msgSend(handleColor, "CGColor")}];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v4 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [v4 setLineDashPattern:&unk_282F1B150];
    [v4 setLineCap:@"round"];
    [v4 setLineWidth:2.0];
    [v4 setStrokeStart:0.0];
    [v4 setStrokeEnd:1.0];
    [v4 setZPosition:40.0];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setShapeLayer:v4];

    shapeLayer = self->_shapeLayer;
  }

  return shapeLayer;
}

- (void)setHandleColor:(id)color
{
  objc_storeStrong(&self->_handleColor, color);

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateHandleImageView];
}

- (double)radius
{
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [region radius];
  v4 = v3;

  return v4;
}

- (void)_updateHandleImageView
{
  v3 = MEMORY[0x277D755B8];
  v4 = RemindersUICoreBundleGet();
  v5 = [v3 imageNamed:@"locationDragHandle" inBundle:v4 compatibleWithTraitCollection:0];
  handleColor = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleColor];
  v10 = [v5 ttr_tintedImageWithColor:handleColor];

  handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [handleImageView setImage:v10];

  handleImageView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [handleImageView2 setHighlightedImage:v10];

  handleImageView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [handleImageView3 sizeToFit];
}

- (void)_updateHandleImageViewWithPoint:(CGPoint)point
{
  x = point.x;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _minPoint:point.x];
  v6 = v5;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _maxPoint];
  if (v7 >= 0.0)
  {
    v8 = v7;
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMinimum:0];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMaximum:0];
    v9 = x;
    if (x <= v6)
    {
      [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMinimum:1, x];
      v9 = v6;
    }

    if (x >= v8)
    {
      [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMaximum:1, v9];
      v9 = v8;
    }

    v10 = v9 + -12.0;
    handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView frame];
    v18.size.width = 24.0;
    v18.size.height = 24.0;
    v18.origin.x = v10;
    v19 = CGRectIntegral(v18);
    v12 = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    handleImageView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView2 setFrame:{v12, y, width, height}];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  }
}

- (void)_updateRegionWithPoint:(CGPoint)point
{
  x = point.x;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _minPoint:point.x];
  if (x > v5)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMinimum:0];
  }

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _maxPoint];
  if (x < v6)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsMaximum:0];
  }

  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self isMinimum])
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self minimumRadius];
  }

  else
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistance];
  }

  v8 = v7;
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self isMaximum])
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self maximumRadius];
    v8 = v9;
  }

  v10 = 114.0;
  if (v8 >= 114.0)
  {
    v10 = v8;
  }

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateRegionWithRadius:v10];
}

- (void)_updateRegionWithRadius:(double)radius
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self minimumRadius];
  v6 = v5;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self maximumRadius];
  if (radiusCopy >= radius)
  {
    radiusCopy = radius;
  }

  if (v6 >= radiusCopy)
  {
    v8 = v6;
  }

  else
  {
    v8 = radiusCopy;
  }

  v9 = objc_alloc(MEMORY[0x277CBFBC8]);
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [region center];
  v12 = v11;
  v14 = v13;
  region2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  identifier = [region2 identifier];
  v27 = [v9 initWithCenter:identifier radius:v12 identifier:{v14, v8}];

  [v27 center];
  v18 = v17;
  v20 = v19;
  [v27 radius];
  v22 = [TTRIWorldBoundingMKCircle circleWithCenterCoordinate:v18 radius:v20, v21];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _centerAndZoomToFitRegion:v27 animated:0];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:v27];
  overlay = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];

  if (overlay)
  {
    mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    overlay2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
    [mapView removeOverlay:overlay2];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:0];
  }

  mapView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView2 addOverlay:v22];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:v22];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self performSelector:sel__hideCircleAfterDelay withObject:0 afterDelay:0.01];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _popAnimateHandle];
}

- (void)_popAnimateHandle
{
  handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  layer = [handleImageView layer];

  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  [v4 setDuration:0.35];
  memset(&v30, 0, sizeof(v30));
  if (layer)
  {
    [layer transform];
    CATransform3DScale(&v30, &v29, 0.5, 0.5, 1.0);
    memset(&v29, 0, sizeof(v29));
    [layer transform];
    CATransform3DScale(&v29, &v28, 1.2, 1.2, 1.0);
    memset(&v28, 0, sizeof(v28));
    [layer transform];
    CATransform3DScale(&v28, &v27, 0.9, 0.9, 1.0);
    memset(&v27, 0, sizeof(v27));
    [layer transform];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    CATransform3DScale(&v30, &v29, 0.5, 0.5, 1.0);
    memset(&v29, 0, sizeof(v29));
    memset(&v28, 0, sizeof(v28));
    CATransform3DScale(&v29, &v28, 1.2, 1.2, 1.0);
    memset(&v28, 0, sizeof(v28));
    memset(&v27, 0, sizeof(v27));
    CATransform3DScale(&v28, &v27, 0.9, 0.9, 1.0);
    memset(&v27, 0, sizeof(v27));
  }

  v5 = MEMORY[0x277CBEA60];
  v26 = v30;
  v6 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v26];
  v26 = v29;
  v7 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v26];
  v26 = v28;
  v8 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v26];
  v26 = v27;
  v9 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v26];
  v10 = [v5 arrayWithObjects:{v6, v7, v8, v9, 0}];

  [v4 setValues:v10];
  v11 = MEMORY[0x277CBEA60];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  LODWORD(v13) = 0.5;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  LODWORD(v15) = *"fff?";
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  LODWORD(v17) = 1.0;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v19 = [v11 arrayWithObjects:{v12, v14, v16, v18, 0}];

  [v4 setKeyTimes:v19];
  v20 = MEMORY[0x277CBEA60];
  v21 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  v22 = *MEMORY[0x277CDA7B8];
  v23 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v24 = [MEMORY[0x277CD9EF8] functionWithName:v22];
  v25 = [v20 arrayWithObjects:{v21, v23, v24, 0}];

  [v4 setTimingFunctions:v25];
  [v4 setFillMode:*MEMORY[0x277CDA238]];
  [v4 setRemovedOnCompletion:0];
  [layer addAnimation:v4 forKey:@"transform"];
}

- (id)_bezierPathWithEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v16 = *MEMORY[0x277D85DE8];
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];

  if (region)
  {
    mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    region2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [region2 center];
    [mapView convertCoordinate:self toPointToView:?];
    v10 = v9;
    v12 = v11;

    bezierPath = [MEMORY[0x277D75208] bezierPath];
    v15 = xmmword_21DC05FE0;
    [bezierPath setLineDash:&v15 count:2 phase:0.0];
    [bezierPath setLineWidth:2.0];
    [bezierPath setLineCapStyle:1];
    [bezierPath moveToPoint:{floor(v10), floor(v12)}];
    [bezierPath addLineToPoint:{floor(x), floor(y)}];
    [bezierPath stroke];
  }

  else
  {
    bezierPath = 0;
  }

  return bezierPath;
}

- (id)_shapeLayerWithEndPoint:(CGPoint)point
{
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _bezierPathWithEndPoint:point.x, point.y];
  shapeLayer = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
  [shapeLayer setPath:{objc_msgSend(v4, "CGPath")}];
  superlayer = [shapeLayer superlayer];

  if (!superlayer)
  {
    layer = [(TTRIReminderLocationPickerMapDragRadiusView *)self layer];
    [layer addSublayer:shapeLayer];
  }

  return shapeLayer;
}

- (void)_animateHandleIn:(BOOL)in
{
  inCopy = in;
  overlay = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [overlay originalBoundingMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView visibleMapRect];
  v61.origin.x = v15;
  v61.origin.y = v16;
  v61.size.width = v17;
  v61.size.height = v18;
  v56.origin.x = v7;
  v56.origin.y = v9;
  v56.size.width = v11;
  v56.size.height = v13;
  v19 = MKMapRectIntersectsRect(v56, v61);

  if (v19)
  {
    mapView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [region center];
    [mapView2 convertCoordinate:self toPointToView:?];
    v23 = v22;
    v25 = v24;

    handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView setCenter:{floor(v23), floor(v25)}];

    handleImageView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self addSubview:handleImageView2];

    v57.origin.x = v7;
    v57.origin.y = v9;
    v57.size.width = v11;
    v57.size.height = v13;
    v58 = MKCoordinateRegionForMapRect(v57);
    latitude = v58.center.latitude;
    longitude = v58.center.longitude;
    latitudeDelta = v58.span.latitudeDelta;
    longitudeDelta = v58.span.longitudeDelta;
    mapView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    [mapView3 convertRegion:self toRectToView:{latitude, longitude, latitudeDelta, longitudeDelta}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v59.origin.x = v34;
    v59.origin.y = v36;
    v59.size.width = v38;
    v59.size.height = v40;
    v41 = floor(CGRectGetMaxX(v59));
    v60.origin.x = v34;
    v60.origin.y = v36;
    v60.size.width = v38;
    v60.size.height = v40;
    MidY = CGRectGetMidY(v60);
    handleImageView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    handleImageView4 = handleImageView3;
    if (v41 - v23 >= 12.0)
    {
      v44 = floor(MidY);
      [handleImageView3 setAlpha:1.0];

      [(TTRIReminderLocationPickerMapDragRadiusView *)self frame];
      v55.width = v45;
      v55.height = v46;
      UIGraphicsBeginImageContext(v55);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      v48 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _shapeLayerWithEndPoint:v41, v44];
      CGContextRestoreGState(CurrentContext);
      UIGraphicsEndImageContext();
      if (inCopy)
      {
        v49 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
        [v49 setDuration:0.35];
        [v49 setFromValue:&unk_282F1B240];
        [v49 setToValue:&unk_282F1B250];
        shapeLayer = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
        [shapeLayer addAnimation:v49 forKey:@"strokeEndAnimation"];

        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __64__TTRIReminderLocationPickerMapDragRadiusView__animateHandleIn___block_invoke;
        v53[3] = &unk_27832D650;
        v53[4] = self;
        *&v53[5] = v41;
        *&v53[6] = v44;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __64__TTRIReminderLocationPickerMapDragRadiusView__animateHandleIn___block_invoke_2;
        v52[3] = &unk_27832D510;
        v52[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v53 animations:v52 completion:0.35];

        return;
      }

      handleImageView4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
      [handleImageView4 setCenter:{v41, v44}];
    }

    else
    {
      [handleImageView3 setAlpha:0.0];
    }
  }
}

void __64__TTRIReminderLocationPickerMapDragRadiusView__animateHandleIn___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) handleImageView];
  [v3 setCenter:{v1, v2}];
}

uint64_t __64__TTRIReminderLocationPickerMapDragRadiusView__animateHandleIn___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _popAnimateHandle];
  }

  return result;
}

- (void)_removeHandle
{
  if (![(TTRIReminderLocationPickerMapDragRadiusView *)self isDragging])
  {
    handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [handleImageView removeFromSuperview];

    shapeLayer = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
    [shapeLayer removeFromSuperlayer];
  }
}

- (void)_hideCircleAfterDelay
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsDragging:0];
  delegate = [(TTRIReminderLocationPickerMapDragRadiusView *)self delegate];
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [delegate mapDragRadiusView:self didUpdateRegion:region];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _animateHandleIn:0];
}

- (CGPoint)_pointForRadius:(double)radius
{
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [region center];
  v7 = v6;

  v8 = MEMORY[0x223D456B0](v7);
  region2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [region2 center];
  v10 = MKMapPointForCoordinate(v19);

  v20.x = v10.x + v8 * radius;
  v20.y = v10.y;
  v11 = MKCoordinateForMapPoint(v20);
  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView convertCoordinate:self toPointToView:{v11.latitude, v11.longitude}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)_minPoint
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self minimumRadius];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _pointForRadius:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_maxPoint
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self maximumRadius];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _pointForRadius:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)_currentHandleDistance
{
  handleImageView = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [handleImageView center];
  v5 = v4;
  v7 = v6;

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _radiusForPoint:v5, v7];
  return result;
}

- (double)_radiusForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView convertPoint:self toCoordinateFromView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
  region = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [region center];
  v14 = v13;
  v16 = v15;

  v17 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v14 longitude:v16];
  [v11 distanceFromLocation:v17];
  v19 = v18;

  return v19;
}

- (id)_currentHandleDistanceMeasurement
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistance];
  v4 = v3;
  meters = [MEMORY[0x277CCAE20] meters];
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self _usesMetric])
  {
    [MEMORY[0x277CCAE20] meters];
  }

  else
  {
    [MEMORY[0x277CCAE20] feet];
  }
  v6 = ;
  v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _measurementFor:meters fromUnit:v6 toUnit:1 normalized:v4];

  return v7;
}

- (id)_measurementFor:(double)for fromUnit:(id)unit toUnit:(id)toUnit normalized:(BOOL)normalized
{
  normalizedCopy = normalized;
  v9 = MEMORY[0x277CCAB10];
  toUnitCopy = toUnit;
  unitCopy = unit;
  v12 = [[v9 alloc] initWithDoubleValue:unitCopy unit:for];

  v13 = [v12 measurementByConvertingToUnit:toUnitCopy];

  v14 = v13;
  v15 = v14;
  v16 = v14;
  if (normalizedCopy)
  {
    [v14 doubleValue];
    v18 = floor(v17 / 10.0) * 10.0;
    v19 = objc_alloc(MEMORY[0x277CCAB10]);
    unit = [v15 unit];
    v16 = [v19 initWithDoubleValue:unit unit:v18];
  }

  return v16;
}

- (BOOL)_usesMetric
{
  measurementFormatter = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
  locale = [measurementFormatter locale];
  v4 = [locale objectForKey:*MEMORY[0x277CBE718]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_centerAndZoomToFitRegion:(id)region animated:(BOOL)animated
{
  animatedCopy = animated;
  regionCopy = region;
  [regionCopy radius];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self radiusPaddingMultiplier];
  v7 = MEMORY[0x223D45690]([regionCopy center]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView regionThatFits:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  mapView2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [regionCopy center];
  v25 = v24;
  v27 = v26;

  [mapView2 setCenterCoordinate:animatedCopy animated:{v25, v27}];
  mapView3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView3 setRegion:animatedCopy animated:{v16, v18, v20, v22}];
}

- (CGRect)accessibilityFrame
{
  mapView = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [mapView accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v10 + -16.0;
  v12 = v4;
  v13 = v6;
  v14 = v8;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)accessibilityLabel
{
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"Reminder radius" value:@"Reminder radius" table:@"Localizable"];

  return v3;
}

- (id)accessibilityValue
{
  _currentHandleDistanceMeasurement = [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistanceMeasurement];
  measurementFormatter = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
  v5 = [measurementFormatter stringFromMeasurement:_currentHandleDistanceMeasurement];

  return v5;
}

- (void)accessibilityIncrement
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _ttriAccessibilityRadiusIncrement];
  v4 = v3;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self radius];
  v6 = v4 + v5;

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _ttriAccessibilityUpdateWithRadius:v6];
}

- (void)accessibilityDecrement
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _ttriAccessibilityRadiusIncrement];
  v4 = v3;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self radius];
  v6 = v5 - v4;

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _ttriAccessibilityUpdateWithRadius:v6];
}

- (double)_ttriAccessibilityRadiusIncrement
{
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self _usesMetric])
  {
    return 200.0;
  }

  feet = [MEMORY[0x277CCAE20] feet];
  meters = [MEMORY[0x277CCAE20] meters];
  v6 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _measurementFor:feet fromUnit:meters toUnit:0 normalized:200.0];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (TTRIReminderLocationPickerMapDragRadiusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)initialHandleCenterForDraggin
{
  x = self->_initialHandleCenterForDraggin.x;
  y = self->_initialHandleCenterForDraggin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end