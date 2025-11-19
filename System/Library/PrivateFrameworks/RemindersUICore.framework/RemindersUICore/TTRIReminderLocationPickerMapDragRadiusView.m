@interface TTRIReminderLocationPickerMapDragRadiusView
- (BOOL)_usesMetric;
- (CAShapeLayer)shapeLayer;
- (CGPoint)_maxPoint;
- (CGPoint)_minPoint;
- (CGPoint)_pointForRadius:(double)a3;
- (CGPoint)initialHandleCenterForDraggin;
- (CGRect)accessibilityFrame;
- (TTRIReminderLocationPickerMapDragRadiusView)initWithFrame:(CGRect)a3 mapView:(id)a4;
- (TTRIReminderLocationPickerMapDragRadiusViewDelegate)delegate;
- (double)_currentHandleDistance;
- (double)_radiusForPoint:(CGPoint)a3;
- (double)_ttriAccessibilityRadiusIncrement;
- (double)radius;
- (id)_bezierPathWithEndPoint:(CGPoint)a3;
- (id)_currentHandleDistanceMeasurement;
- (id)_measurementFor:(double)a3 fromUnit:(id)a4 toUnit:(id)a5 normalized:(BOOL)a6;
- (id)_shapeLayerWithEndPoint:(CGPoint)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_animateHandleIn:(BOOL)a3;
- (void)_centerAndZoomToFitRegion:(id)a3 animated:(BOOL)a4;
- (void)_hideCircleAfterDelay;
- (void)_popAnimateHandle;
- (void)_removeHandle;
- (void)_updateHandleImageView;
- (void)_updateHandleImageViewWithPoint:(CGPoint)a3;
- (void)_updateRegionWithPoint:(CGPoint)a3;
- (void)_updateRegionWithRadius:(double)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)drawRect:(CGRect)a3;
- (void)handlePanGesture:(id)a3;
- (void)setHandleColor:(id)a3;
- (void)startEditingRegion:(id)a3;
- (void)stopEditing;
@end

@implementation TTRIReminderLocationPickerMapDragRadiusView

- (TTRIReminderLocationPickerMapDragRadiusView)initWithFrame:(CGRect)a3 mapView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = TTRIReminderLocationPickerMapDragRadiusView;
  v11 = [(TTRIReminderLocationPickerMapDragRadiusView *)&v27 initWithFrame:x, y, width, height];
  if (v11)
  {
    [MEMORY[0x277D44868] minimumRegionMonitoringDistance];
    v11->_minimumRadius = v12;
    v11->_maximumRadius = 241401.0;
    v11->_radiusPaddingMultiplier = 3.5;
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    handleImageView = v11->_handleImageView;
    v11->_handleImageView = v13;

    v15 = [(UIImageView *)v11->_handleImageView layer];
    [v15 setZPosition:50.0];

    objc_storeStrong(&v11->_mapView, a4);
    v16 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v11->_measurementFormatter;
    v11->_measurementFormatter = v16;

    if ([(TTRIReminderLocationPickerMapDragRadiusView *)v11 _usesMetric])
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    [(NSMeasurementFormatter *)v11->_measurementFormatter setUnitOptions:v18];
    v19 = [(NSMeasurementFormatter *)v11->_measurementFormatter numberFormatter];
    [v19 setMinimumFractionDigits:0];

    v20 = [(NSMeasurementFormatter *)v11->_measurementFormatter numberFormatter];
    [v20 setMaximumFractionDigits:1];

    v21 = [MEMORY[0x277D75348] blueColor];
    circleColor = v11->_circleColor;
    v11->_circleColor = v21;

    v23 = [MEMORY[0x277D75348] blueColor];
    handleColor = v11->_handleColor;
    v11->_handleColor = v23;

    [(TTRIReminderLocationPickerMapDragRadiusView *)v11 _updateHandleImageView];
    v25 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v11 action:sel_handlePanGesture_];
    [(TTRIReminderLocationPickerMapDragRadiusView *)v11 addGestureRecognizer:v25];
  }

  return v11;
}

- (void)drawRect:(CGRect)a3
{
  v44[3] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = TTRIReminderLocationPickerMapDragRadiusView;
  [(TTRIReminderLocationPickerMapDragRadiusView *)&v42 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self isDragging])
  {
    v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    v5 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [v5 center];
    [v4 convertCoordinate:self toPointToView:?];
    v7 = v6;
    v9 = v8;

    v10 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v10 center];
    v12 = v11 - v7;

    v13 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v13 center];
    v15 = v14 - (v12 + v12);
    v16 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v16 center];
    v18 = v17 - v12;

    v19 = [(TTRIReminderLocationPickerMapDragRadiusView *)self circleColor];
    v20 = [(TTRIReminderLocationPickerMapDragRadiusView *)self circleColor];
    v21 = [v20 colorWithAlphaComponent:0.15];

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
    v24 = CGColorGetComponents([v19 CGColor]);
    CGContextSetStrokeColor(CurrentContext, v24);
    CGContextSetLineWidth(CurrentContext, 3.0);
    CGContextStrokePath(CurrentContext);
    v25 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistanceMeasurement];
    v26 = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
    v27 = [v26 stringFromMeasurement:v25];

    v47.origin.y = v9 + -16.0;
    v47.size.width = v12 + -14.0;
    v47.size.height = 16.0;
    v47.origin.x = v7;
    v48 = CGRectIntegral(v47);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    [v19 set];
    v32 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    [v19 set];
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
    v44[1] = v19;
    v43[2] = *MEMORY[0x277D74118];
    v44[2] = v33;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
    [v27 drawInRect:v35 withAttributes:{x, y, width, height}];

    v36 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v36 center];
    v38 = v37;
    v40 = v39;

    v41 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _shapeLayerWithEndPoint:v38, v40];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [v7 frame];
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
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  [v4 translationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];

  if ((v9 - 3) < 2)
  {
    v14 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v14 setHighlighted:0];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v16 = v6 + v15;
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v18 = v8 + v17;

    [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateRegionWithPoint:v16, v18];
  }

  else if (v9 == 2)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v20 = v6 + v19;
    [(TTRIReminderLocationPickerMapDragRadiusView *)self initialHandleCenterForDraggin];
    v22 = v8 + v21;

    [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateHandleImageViewWithPoint:v20, v22];
  }

  else if (v9 == 1)
  {
    v10 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v10 center];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self setInitialHandleCenterForDraggin:?];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsDragging:1];
    v11 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v11 setHighlighted:1];

    v12 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    v13 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
    [v12 removeOverlay:v13];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  }
}

- (void)startEditingRegion:(id)a3
{
  v14 = a3;
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  v5 = [v4 isEqual:v14];

  if ((v5 & 1) == 0)
  {
    [(TTRIReminderLocationPickerMapDragRadiusView *)self stopEditing];
  }

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:v14];
  [v14 center];
  v7 = v6;
  v9 = v8;
  [v14 radius];
  v11 = [TTRIWorldBoundingMKCircle circleWithCenterCoordinate:v7 radius:v9, v10];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:v11];

  v12 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  v13 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [v12 addOverlay:v13];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _centerAndZoomToFitRegion:v14 animated:0];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _animateHandleIn:v5];
}

- (void)stopEditing
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:0];
  v3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [v3 removeOverlay:v4];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:0];
}

- (CAShapeLayer)shapeLayer
{
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v5 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleColor];
    [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];

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

- (void)setHandleColor:(id)a3
{
  objc_storeStrong(&self->_handleColor, a3);

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _updateHandleImageView];
}

- (double)radius
{
  v2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v2 radius];
  v4 = v3;

  return v4;
}

- (void)_updateHandleImageView
{
  v3 = MEMORY[0x277D755B8];
  v4 = RemindersUICoreBundleGet();
  v5 = [v3 imageNamed:@"locationDragHandle" inBundle:v4 compatibleWithTraitCollection:0];
  v6 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleColor];
  v10 = [v5 ttr_tintedImageWithColor:v6];

  v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [v7 setImage:v10];

  v8 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [v8 setHighlightedImage:v10];

  v9 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [v9 sizeToFit];
}

- (void)_updateHandleImageViewWithPoint:(CGPoint)a3
{
  x = a3.x;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _minPoint:a3.x];
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
    v11 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v11 frame];
    v18.size.width = 24.0;
    v18.size.height = 24.0;
    v18.origin.x = v10;
    v19 = CGRectIntegral(v18);
    v12 = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    v16 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v16 setFrame:{v12, y, width, height}];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  }
}

- (void)_updateRegionWithPoint:(CGPoint)a3
{
  x = a3.x;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _minPoint:a3.x];
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

- (void)_updateRegionWithRadius:(double)a3
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self minimumRadius];
  v6 = v5;
  [(TTRIReminderLocationPickerMapDragRadiusView *)self maximumRadius];
  if (v7 >= a3)
  {
    v7 = a3;
  }

  if (v6 >= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_alloc(MEMORY[0x277CBFBC8]);
  v10 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v10 center];
  v12 = v11;
  v14 = v13;
  v15 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  v16 = [v15 identifier];
  v27 = [v9 initWithCenter:v16 radius:v12 identifier:{v14, v8}];

  [v27 center];
  v18 = v17;
  v20 = v19;
  [v27 radius];
  v22 = [TTRIWorldBoundingMKCircle circleWithCenterCoordinate:v18 radius:v20, v21];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _centerAndZoomToFitRegion:v27 animated:0];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setRegion:v27];
  v23 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];

  if (v23)
  {
    v24 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    v25 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
    [v24 removeOverlay:v25];

    [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:0];
  }

  v26 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v26 addOverlay:v22];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setOverlay:v22];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self performSelector:sel__hideCircleAfterDelay withObject:0 afterDelay:0.01];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self _popAnimateHandle];
}

- (void)_popAnimateHandle
{
  v2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  v3 = [v2 layer];

  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  [v4 setDuration:0.35];
  memset(&v30, 0, sizeof(v30));
  if (v3)
  {
    [v3 transform];
    CATransform3DScale(&v30, &v29, 0.5, 0.5, 1.0);
    memset(&v29, 0, sizeof(v29));
    [v3 transform];
    CATransform3DScale(&v29, &v28, 1.2, 1.2, 1.0);
    memset(&v28, 0, sizeof(v28));
    [v3 transform];
    CATransform3DScale(&v28, &v27, 0.9, 0.9, 1.0);
    memset(&v27, 0, sizeof(v27));
    [v3 transform];
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
  [v3 addAnimation:v4 forKey:@"transform"];
}

- (id)_bezierPathWithEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x277D85DE8];
  v6 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];

  if (v6)
  {
    v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    v8 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [v8 center];
    [v7 convertCoordinate:self toPointToView:?];
    v10 = v9;
    v12 = v11;

    v13 = [MEMORY[0x277D75208] bezierPath];
    v15 = xmmword_21DC05FE0;
    [v13 setLineDash:&v15 count:2 phase:0.0];
    [v13 setLineWidth:2.0];
    [v13 setLineCapStyle:1];
    [v13 moveToPoint:{floor(v10), floor(v12)}];
    [v13 addLineToPoint:{floor(x), floor(y)}];
    [v13 stroke];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_shapeLayerWithEndPoint:(CGPoint)a3
{
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _bezierPathWithEndPoint:a3.x, a3.y];
  v5 = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
  [v5 setPath:{objc_msgSend(v4, "CGPath")}];
  v6 = [v5 superlayer];

  if (!v6)
  {
    v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self layer];
    [v7 addSublayer:v5];
  }

  return v5;
}

- (void)_animateHandleIn:(BOOL)a3
{
  v3 = a3;
  v5 = [(TTRIReminderLocationPickerMapDragRadiusView *)self overlay];
  [v5 originalBoundingMapRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v14 visibleMapRect];
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
    v20 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    v21 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
    [v21 center];
    [v20 convertCoordinate:self toPointToView:?];
    v23 = v22;
    v25 = v24;

    v26 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v26 setCenter:{floor(v23), floor(v25)}];

    v27 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [(TTRIReminderLocationPickerMapDragRadiusView *)self addSubview:v27];

    v57.origin.x = v7;
    v57.origin.y = v9;
    v57.size.width = v11;
    v57.size.height = v13;
    v58 = MKCoordinateRegionForMapRect(v57);
    latitude = v58.center.latitude;
    longitude = v58.center.longitude;
    latitudeDelta = v58.span.latitudeDelta;
    longitudeDelta = v58.span.longitudeDelta;
    v32 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
    [v32 convertRegion:self toRectToView:{latitude, longitude, latitudeDelta, longitudeDelta}];
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
    v43 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    v51 = v43;
    if (v41 - v23 >= 12.0)
    {
      v44 = floor(MidY);
      [v43 setAlpha:1.0];

      [(TTRIReminderLocationPickerMapDragRadiusView *)self frame];
      v55.width = v45;
      v55.height = v46;
      UIGraphicsBeginImageContext(v55);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      v48 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _shapeLayerWithEndPoint:v41, v44];
      CGContextRestoreGState(CurrentContext);
      UIGraphicsEndImageContext();
      if (v3)
      {
        v49 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
        [v49 setDuration:0.35];
        [v49 setFromValue:&unk_282F1B240];
        [v49 setToValue:&unk_282F1B250];
        v50 = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
        [v50 addAnimation:v49 forKey:@"strokeEndAnimation"];

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

      v51 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
      [v51 setCenter:{v41, v44}];
    }

    else
    {
      [v43 setAlpha:0.0];
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
    v3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
    [v3 removeFromSuperview];

    v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self shapeLayer];
    [v4 removeFromSuperlayer];
  }
}

- (void)_hideCircleAfterDelay
{
  [(TTRIReminderLocationPickerMapDragRadiusView *)self setIsDragging:0];
  v3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self delegate];
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v3 mapDragRadiusView:self didUpdateRegion:v4];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self setNeedsDisplay];

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _animateHandleIn:0];
}

- (CGPoint)_pointForRadius:(double)a3
{
  v5 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v5 center];
  v7 = v6;

  v8 = MEMORY[0x223D456B0](v7);
  v9 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v9 center];
  v10 = MKMapPointForCoordinate(v19);

  v20.x = v10.x + v8 * a3;
  v20.y = v10.y;
  v11 = MKCoordinateForMapPoint(v20);
  v12 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v12 convertCoordinate:self toPointToView:{v11.latitude, v11.longitude}];
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
  v3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self handleImageView];
  [v3 center];
  v5 = v4;
  v7 = v6;

  [(TTRIReminderLocationPickerMapDragRadiusView *)self _radiusForPoint:v5, v7];
  return result;
}

- (double)_radiusForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v6 convertPoint:self toCoordinateFromView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v8 longitude:v10];
  v12 = [(TTRIReminderLocationPickerMapDragRadiusView *)self region];
  [v12 center];
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
  v5 = [MEMORY[0x277CCAE20] meters];
  if ([(TTRIReminderLocationPickerMapDragRadiusView *)self _usesMetric])
  {
    [MEMORY[0x277CCAE20] meters];
  }

  else
  {
    [MEMORY[0x277CCAE20] feet];
  }
  v6 = ;
  v7 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _measurementFor:v5 fromUnit:v6 toUnit:1 normalized:v4];

  return v7;
}

- (id)_measurementFor:(double)a3 fromUnit:(id)a4 toUnit:(id)a5 normalized:(BOOL)a6
{
  v6 = a6;
  v9 = MEMORY[0x277CCAB10];
  v10 = a5;
  v11 = a4;
  v12 = [[v9 alloc] initWithDoubleValue:v11 unit:a3];

  v13 = [v12 measurementByConvertingToUnit:v10];

  v14 = v13;
  v15 = v14;
  v16 = v14;
  if (v6)
  {
    [v14 doubleValue];
    v18 = floor(v17 / 10.0) * 10.0;
    v19 = objc_alloc(MEMORY[0x277CCAB10]);
    v20 = [v15 unit];
    v16 = [v19 initWithDoubleValue:v20 unit:v18];
  }

  return v16;
}

- (BOOL)_usesMetric
{
  v2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
  v3 = [v2 locale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE718]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_centerAndZoomToFitRegion:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 radius];
  [(TTRIReminderLocationPickerMapDragRadiusView *)self radiusPaddingMultiplier];
  v7 = MEMORY[0x223D45690]([v6 center]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v14 regionThatFits:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v6 center];
  v25 = v24;
  v27 = v26;

  [v23 setCenterCoordinate:v4 animated:{v25, v27}];
  v28 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v28 setRegion:v4 animated:{v16, v18, v20, v22}];
}

- (CGRect)accessibilityFrame
{
  v2 = [(TTRIReminderLocationPickerMapDragRadiusView *)self mapView];
  [v2 accessibilityFrame];
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
  v3 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _currentHandleDistanceMeasurement];
  v4 = [(TTRIReminderLocationPickerMapDragRadiusView *)self measurementFormatter];
  v5 = [v4 stringFromMeasurement:v3];

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

  v4 = [MEMORY[0x277CCAE20] feet];
  v5 = [MEMORY[0x277CCAE20] meters];
  v6 = [(TTRIReminderLocationPickerMapDragRadiusView *)self _measurementFor:v4 fromUnit:v5 toUnit:0 normalized:200.0];
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