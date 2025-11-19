@interface WFLocationTriggerEditorMapDragRadiusView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)usesMetric;
- (CAShapeLayer)shapeLayer;
- (CGPoint)center;
- (CGPoint)maxPoint;
- (CGPoint)minPoint;
- (WFLocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3;
- (WFLocationTriggerEditorMapDragRadiusViewDelegate)delegate;
- (double)currentHandleDistance;
- (double)currentHandleDistanceNormalized;
- (double)maximumRadiusNormalized;
- (double)minimumInMeters;
- (double)minimumRadiusNormalized;
- (id)bezierPathWithEndPoint:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)shapeLayerWithEndPoint:(CGPoint)a3;
- (void)addHandleForAnnotation:(id)a3 withOverlay:(id)a4;
- (void)animateHandleIn:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)popAnimateHandle;
- (void)removeHandle:(BOOL)a3;
- (void)resizeCircleAfterDelay;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation WFLocationTriggerEditorMapDragRadiusView

- (WFLocationTriggerEditorMapDragRadiusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)usesMetric
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE718]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)minimumRadiusNormalized
{
  v2 = [(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric];
  result = 328.084015;
  if (v2)
  {
    return 100.0;
  }

  return result;
}

- (double)maximumRadiusNormalized
{
  v2 = [(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric];
  result = 7920000.0;
  if (v2)
  {
    return 2414016.0;
  }

  return result;
}

- (double)currentHandleDistance
{
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v8 convertPoint:self toCoordinateFromView:{v5, v7}];
  v10 = v9;
  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v10 longitude:v12];
  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  v15 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  [v15 coordinate];
  v17 = v16;
  v18 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  [v18 coordinate];
  v19 = [v14 initWithLatitude:v17 longitude:?];

  [v13 distanceFromLocation:v19];
  v21 = v20;

  return v21;
}

- (double)currentHandleDistanceNormalized
{
  [(WFLocationTriggerEditorMapDragRadiusView *)self currentHandleDistance];
  v4 = v3;
  v5 = [(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric];
  v6 = v4 * 3.28083992;
  if (v5)
  {
    v6 = v4;
  }

  return floor(v6 / 10.0) * 10.0;
}

- (CGPoint)maxPoint
{
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  v4 = MEMORY[0x277C59360]([v3 coordinate]);

  [(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric];
  v5 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  [v5 coordinate];
  v6 = MKMapPointForCoordinate(v15);

  v16.x = v6.x + v4 * 2414016.0;
  v16.y = v6.y;
  v7 = MKCoordinateForMapPoint(v16);
  v8 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v8 convertCoordinate:self toPointToView:{v7.latitude, v7.longitude}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)minPoint
{
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  v4 = MEMORY[0x277C59360]([v3 coordinate]);

  if ([(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric])
  {
    v5 = 100.0;
  }

  else
  {
    v5 = 100.000008;
  }

  v6 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  [v6 coordinate];
  v7 = MKMapPointForCoordinate(v16);

  v17.x = v7.x + v4 * v5;
  v17.y = v7.y;
  v8 = MKCoordinateForMapPoint(v17);
  v9 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v9 convertCoordinate:self toPointToView:{v8.latitude, v8.longitude}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)resizeCircleAfterDelay
{
  [(WFLocationTriggerEditorMapDragRadiusView *)self setIsDragging:0];
  [(WFLocationTriggerEditorMapDragRadiusView *)self removeHandle:0];
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  v4 = [(WFLocationTriggerEditorMapDragRadiusView *)self overlay];
  [(WFLocationTriggerEditorMapDragRadiusView *)self addHandleForAnnotation:v3 withOverlay:v4];

  [(WFLocationTriggerEditorMapDragRadiusView *)self setNeedsDisplay];
}

- (double)minimumInMeters
{
  if ([(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric])
  {
    return 100.0;
  }

  [(WFLocationTriggerEditorMapDragRadiusView *)self feetToMeters:328.084015];
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  v7 = v6;

  [(WFLocationTriggerEditorMapDragRadiusView *)self minPoint];
  if (v7 > v8)
  {
    [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMinimum:0];
  }

  [(WFLocationTriggerEditorMapDragRadiusView *)self maxPoint];
  if (v7 < v9)
  {
    [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMaximum:0];
  }

  if ([(WFLocationTriggerEditorMapDragRadiusView *)self isMinimum])
  {
    [(WFLocationTriggerEditorMapDragRadiusView *)self minimumInMeters];
  }

  else
  {
    [(WFLocationTriggerEditorMapDragRadiusView *)self currentHandleDistance];
  }

  v11 = v10;
  if ([(WFLocationTriggerEditorMapDragRadiusView *)self isMaximum])
  {
    v11 = 2414016.0;
  }

  if ([(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric])
  {
    v12 = 114.0;
  }

  else
  {
    v12 = 104.0;
  }

  v13 = [(WFLocationTriggerEditorMapDragRadiusView *)self delegate];
  v14 = v13;
  if (v11 >= v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v23 = [v13 mapRadiusView:self overlayForRadius:v15];

  if (v23)
  {
    v16 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
    v17 = [(WFLocationTriggerEditorMapDragRadiusView *)self overlay];
    [v16 removeOverlay:v17];

    [(WFLocationTriggerEditorMapDragRadiusView *)self setNeedsDisplay];
    [(WFLocationTriggerEditorMapDragRadiusView *)self setOverlay:v23];
    v18 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
    v19 = [(WFLocationTriggerEditorMapDragRadiusView *)self overlay];
    [v18 addOverlay:v19];

    [(WFLocationTriggerEditorMapDragRadiusView *)self performSelector:sel_resizeCircleAfterDelay withObject:0 afterDelay:0.00999999978];
    [(WFLocationTriggerEditorMapDragRadiusView *)self popAnimateHandle];
  }

  v20 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v20 setScrollEnabled:1];

  v21 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v21 setZoomEnabled:1];

  v22 = [(WFLocationTriggerEditorMapDragRadiusView *)self delegate];
  [v22 mapRadiusView:self radiusDidChange:v11];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v20 = [a3 anyObject];
  [v20 locationInView:self];
  v6 = v5;
  [(WFLocationTriggerEditorMapDragRadiusView *)self minPoint];
  v8 = v7;
  [(WFLocationTriggerEditorMapDragRadiusView *)self maxPoint];
  if (v9 >= 0.0)
  {
    v10 = v9;
    [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMinimum:0];
    [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMaximum:0];
    v11 = v6;
    if (v6 <= v8)
    {
      [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMinimum:1];
      v11 = v8;
    }

    if (v6 >= v10)
    {
      [(WFLocationTriggerEditorMapDragRadiusView *)self setIsMaximum:1];
      v11 = v10;
    }

    v12 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v19 setFrame:{v11 + -12.0, v14, v16, v18}];

    [(WFLocationTriggerEditorMapDragRadiusView *)self setNeedsDisplay];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  [(WFLocationTriggerEditorMapDragRadiusView *)self setIsDragging:1, a4];
  v5 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  v6 = [(WFLocationTriggerEditorMapDragRadiusView *)self overlay];
  [v5 removeOverlay:v6];

  v7 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v7 setScrollEnabled:0];

  v8 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v8 setZoomEnabled:0];

  [(WFLocationTriggerEditorMapDragRadiusView *)self setNeedsDisplay];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (-[WFLocationTriggerEditorMapDragRadiusView isDragging](self, "isDragging") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 numberOfTouches] < 2)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFLocationTriggerEditorMapDragRadiusView;
    v5 = [(WFLocationTriggerEditorMapDragRadiusView *)&v7 gestureRecognizerShouldBegin:v4];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
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
  if (CGRectContainsPoint(v22, v21) && (-[WFLocationTriggerEditorMapDragRadiusView handleEndpointView](self, "handleEndpointView"), v16 = objc_claimAutoreleasedReturnValue(), [v16 superview], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v57[3] = *MEMORY[0x277D85DE8];
  *&rect.origin.y = self;
  *&rect.size.width = WFLocationTriggerEditorMapDragRadiusView;
  [(CGFloat *)&rect.origin.y drawRect:?];
  if ([(WFLocationTriggerEditorMapDragRadiusView *)self isDragging])
  {
    [(WFLocationTriggerEditorMapDragRadiusView *)self center];
    v9 = v8;
    v53 = v10;
    v11 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v11 center];
    rect.origin.x = v9;
    v13 = v12 - v9;

    v14 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v14 center];
    v16 = v15 - (v13 + v13);
    v17 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v17 center];
    v19 = v18 - v13;

    v20 = [MEMORY[0x277D75348] clearColor];
    v21 = [MEMORY[0x277D75348] systemBlueColor];
    v22 = [v21 colorWithAlphaComponent:0.15];

    CurrentContext = UIGraphicsGetCurrentContext();
    if ([(WFLocationTriggerEditorMapDragRadiusView *)self proximity]== 2)
    {
      CGContextSaveGState(CurrentContext);
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      CGContextAddRect(CurrentContext, v58);
    }

    v59.origin.x = v16;
    v59.origin.y = v19;
    v59.size.width = v13 + v13;
    v59.size.height = v13 + v13;
    CGContextAddEllipseInRect(CurrentContext, v59);
    if ([(WFLocationTriggerEditorMapDragRadiusView *)self proximity]== 2)
    {
      CGContextEOClip(CurrentContext);
    }

    CGContextSetFillColorWithColor(CurrentContext, [v22 CGColor]);
    if ([(WFLocationTriggerEditorMapDragRadiusView *)self proximity]== 2)
    {
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      CGContextFillRect(CurrentContext, v60);
      CGContextRestoreGState(CurrentContext);
    }

    else
    {
      CGContextFillPath(CurrentContext);
    }

    v61.origin.x = v16;
    v61.origin.y = v19;
    v61.size.width = v13 + v13;
    v61.size.height = v13 + v13;
    CGContextAddEllipseInRect(CurrentContext, v61);
    CGContextSetStrokeColorWithColor(CurrentContext, [v20 CGColor]);
    CGContextSetLineWidth(CurrentContext, 4.0);
    CGContextStrokePath(CurrentContext);
    v24 = [v20 colorWithAlphaComponent:0.5];
    CGContextSetStrokeColorWithColor(CurrentContext, [v24 CGColor]);

    [(WFLocationTriggerEditorMapDragRadiusView *)self currentHandleDistanceNormalized];
    v26 = v25;
    if ([(WFLocationTriggerEditorMapDragRadiusView *)self isMinimum])
    {
      [(WFLocationTriggerEditorMapDragRadiusView *)self minimumRadiusNormalized];
      v26 = v27;
    }

    if ([(WFLocationTriggerEditorMapDragRadiusView *)self isMaximum]|| (v28 = v26, [(WFLocationTriggerEditorMapDragRadiusView *)self maximumRadiusNormalized], v29 <= v28))
    {
      [(WFLocationTriggerEditorMapDragRadiusView *)self maximumRadiusNormalized];
      v28 = v30;
    }

    v31 = objc_alloc(MEMORY[0x277CCAB10]);
    if ([(WFLocationTriggerEditorMapDragRadiusView *)self usesMetric])
    {
      [MEMORY[0x277CCAE20] meters];
    }

    else
    {
      [MEMORY[0x277CCAE20] feet];
    }
    v32 = ;
    v33 = [v31 initWithDoubleValue:v32 unit:v28];

    v34 = [(WFLocationTriggerEditorMapDragRadiusView *)self measurmentFormatter];
    v35 = [v34 stringFromMeasurement:v33];

    v62.origin.y = v53 + -16.0;
    v62.size.height = 16.0;
    v62.origin.x = rect.origin.x;
    v62.size.width = v13;
    v63 = CGRectIntegral(v62);
    v36 = v63.origin.x;
    v37 = v63.origin.y;
    v38 = v63.size.width;
    v39 = v63.size.height;
    v40 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] addingSymbolicTraits:2 options:0];
    v41 = [MEMORY[0x277D74300] fontWithDescriptor:v40 size:0.0];
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    CGContextSetRGBFillColor(CurrentContext, 0.398999989, 0.125, 0.672999978, 1.0);
    CGContextSetRGBStrokeColor(CurrentContext, 1.0, 1.0, 1.0, 0.5);
    CGContextSetTextDrawingMode(CurrentContext, kCGTextFill);
    CGContextSetLineWidth(CurrentContext, 2.0);
    v42 = objc_alloc_init(MEMORY[0x277D74240]);
    [v42 setAlignment:1];
    v43 = *MEMORY[0x277D740A8];
    v57[0] = v41;
    v44 = *MEMORY[0x277D740C0];
    rect.size.height = v43;
    v55 = v44;
    v45 = [v22 colorWithAlphaComponent:1.0];
    v56 = *MEMORY[0x277D74118];
    v57[1] = v45;
    v57[2] = v42;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&rect.size.height count:3];

    [v35 drawWithRect:33 options:v46 attributes:0 context:{v36, v37 + -0.5, v38, v39}];
    v47 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v47 center];
    v49 = v48;
    v51 = v50;

    v52 = [(WFLocationTriggerEditorMapDragRadiusView *)self shapeLayerWithEndPoint:v49, v51];
  }
}

- (void)removeHandle:(BOOL)a3
{
  v3 = a3;
  if (![(WFLocationTriggerEditorMapDragRadiusView *)self isDragging])
  {
    if (v3)
    {
      [(WFLocationTriggerEditorMapDragRadiusView *)self setAnnotation:0];
      [(WFLocationTriggerEditorMapDragRadiusView *)self setOverlay:0];
    }

    v5 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v5 removeFromSuperview];

    v6 = [(WFLocationTriggerEditorMapDragRadiusView *)self shapeLayer];
    [v6 removeFromSuperlayer];
  }
}

- (void)addHandleForAnnotation:(id)a3 withOverlay:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
    v9 = v8 != v7;

    [(WFLocationTriggerEditorMapDragRadiusView *)self setAnnotation:v7];
    [(WFLocationTriggerEditorMapDragRadiusView *)self setOverlay:v6];

    [(WFLocationTriggerEditorMapDragRadiusView *)self animateHandleIn:v9];
  }
}

- (void)animateHandleIn:(BOOL)a3
{
  v3 = a3;
  [(WFLocationTriggerEditorMapDragRadiusView *)self center];
  v6 = v5;
  v8 = v7;
  v9 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
  [v9 setCenter:{v6, v8}];

  v10 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
  [(WFLocationTriggerEditorMapDragRadiusView *)self addSubview:v10];

  v11 = [(WFLocationTriggerEditorMapDragRadiusView *)self delegate];
  v12 = [(WFLocationTriggerEditorMapDragRadiusView *)self overlay];
  [v11 mapRadiusView:self boundingMapRectForOverlay:v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  v47 = MKCoordinateRegionForMapRect(v46);
  latitude = v47.center.latitude;
  longitude = v47.center.longitude;
  latitudeDelta = v47.span.latitudeDelta;
  longitudeDelta = v47.span.longitudeDelta;
  v25 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  [v25 convertRegion:self toRectToView:{latitude, longitude, latitudeDelta, longitudeDelta}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v48.origin.x = v27;
  v48.origin.y = v29;
  v48.size.width = v31;
  v48.size.height = v33;
  v34 = floor(CGRectGetMaxX(v48));
  v35 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
  v41 = v35;
  if (v34 - v6 >= 12.0)
  {
    [v35 setAlpha:1.0];

    [(WFLocationTriggerEditorMapDragRadiusView *)self frame];
    v45.width = v36;
    v45.height = v37;
    UIGraphicsBeginImageContext(v45);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v39 = [(WFLocationTriggerEditorMapDragRadiusView *)self shapeLayerWithEndPoint:v34, v8];
    CGContextRestoreGState(CurrentContext);
    UIGraphicsEndImageContext();
    if (v3)
    {
      v40 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v40 setDuration:0.35];
      [v40 setFromValue:&unk_288386AD8];
      [v40 setToValue:&unk_288386AE8];
      [(CAShapeLayer *)self->_shapeLayer addAnimation:v40 forKey:@"strokeEndAnimation"];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __60__WFLocationTriggerEditorMapDragRadiusView_animateHandleIn___block_invoke;
      v43[3] = &unk_279EDC0E0;
      v43[4] = self;
      *&v43[5] = v34;
      *&v43[6] = v8;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __60__WFLocationTriggerEditorMapDragRadiusView_animateHandleIn___block_invoke_2;
      v42[3] = &unk_279EDC108;
      v42[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v43 animations:v42 completion:0.349999994];

      return;
    }

    v41 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
    [v41 setCenter:{v34, v8}];
  }

  else
  {
    [v35 setAlpha:0.0];
  }
}

void __60__WFLocationTriggerEditorMapDragRadiusView_animateHandleIn___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) handleEndpointView];
  [v3 setCenter:{v1, v2}];
}

uint64_t __60__WFLocationTriggerEditorMapDragRadiusView_animateHandleIn___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) popAnimateHandle];
  }

  return result;
}

- (id)shapeLayerWithEndPoint:(CGPoint)a3
{
  v4 = [(WFLocationTriggerEditorMapDragRadiusView *)self bezierPathWithEndPoint:a3.x, a3.y];
  v5 = [(WFLocationTriggerEditorMapDragRadiusView *)self shapeLayer];
  [v5 setPath:{objc_msgSend(v4, "CGPath")}];
  v6 = [v5 superlayer];

  if (!v6)
  {
    v7 = [(WFLocationTriggerEditorMapDragRadiusView *)self layer];
    [v7 addSublayer:v5];
  }

  return v5;
}

- (CAShapeLayer)shapeLayer
{
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];
    [v4 setLineDashPattern:&unk_288386A70];
    [v4 setLineCap:@"round"];
    [v4 setLineWidth:2.0];
    [v4 setStrokeStart:0.0];
    [v4 setStrokeEnd:1.0];
    [v4 setZPosition:40.0];
    [(WFLocationTriggerEditorMapDragRadiusView *)self setShapeLayer:v4];

    shapeLayer = self->_shapeLayer;
  }

  return shapeLayer;
}

- (id)bezierPathWithEndPoint:(CGPoint)a3
{
  v12 = *MEMORY[0x277D85DE8];
  [(WFLocationTriggerEditorMapDragRadiusView *)self center];
  v3 = [MEMORY[0x277D75208] bezierPath];
  v11 = xmmword_274660700;
  [v3 setLineDash:&v11 count:2 phase:0.0];
  [v3 setLineWidth:2.0];
  [v3 setLineCapStyle:1];
  UIRoundToViewScale();
  v5 = v4;
  UIRoundToViewScale();
  [v3 moveToPoint:{v5, v6}];
  UIRoundToViewScale();
  v8 = v7;
  UIRoundToViewScale();
  [v3 addLineToPoint:{v8, v9}];
  [v3 stroke];

  return v3;
}

- (void)popAnimateHandle
{
  v2 = [(WFLocationTriggerEditorMapDragRadiusView *)self handleEndpointView];
  v3 = [v2 layer];

  v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  [v4 setDuration:0.349999994];
  memset(&v30, 0, sizeof(v30));
  if (v3)
  {
    [v3 transform];
    CATransform3DScale(&v30, &v29, 0.5, 0.5, 1.0);
    memset(&v29, 0, sizeof(v29));
    [v3 transform];
    CATransform3DScale(&v29, &v28, 1.20000005, 1.20000005, 1.0);
    memset(&v28, 0, sizeof(v28));
    [v3 transform];
    CATransform3DScale(&v28, &v27, 0.899999976, 0.899999976, 1.0);
    memset(&v27, 0, sizeof(v27));
    [v3 transform];
  }

  else
  {
    memset(&v29, 0, sizeof(v29));
    CATransform3DScale(&v30, &v29, 0.5, 0.5, 1.0);
    memset(&v29, 0, sizeof(v29));
    memset(&v28, 0, sizeof(v28));
    CATransform3DScale(&v29, &v28, 1.20000005, 1.20000005, 1.0);
    memset(&v28, 0, sizeof(v28));
    memset(&v27, 0, sizeof(v27));
    CATransform3DScale(&v28, &v27, 0.899999976, 0.899999976, 1.0);
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
  LODWORD(v15) = 1063675494;
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

- (CGPoint)center
{
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)self mapView];
  v4 = [(WFLocationTriggerEditorMapDragRadiusView *)self annotation];
  [v4 coordinate];
  [v3 convertCoordinate:self toPointToView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (WFLocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = WFLocationTriggerEditorMapDragRadiusView;
  v3 = [(WFLocationTriggerEditorMapDragRadiusView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 16.0, 16.0}];
    [(WFLocationTriggerEditorMapDragRadiusView *)v3 setHandleEndpointView:v4];

    v5 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 handleEndpointView];
    v6 = [v5 layer];
    [v6 setCornerRadius:8.0];

    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 handleEndpointView];
    [v8 setBackgroundColor:v7];

    v9 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 handleEndpointView];
    v10 = [v9 layer];
    [v10 setZPosition:50.0];

    v11 = objc_alloc_init(MEMORY[0x277CCAB18]);
    [(WFLocationTriggerEditorMapDragRadiusView *)v3 setMeasurmentFormatter:v11];

    v12 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 measurmentFormatter];
    [v12 setUnitOptions:3];

    v13 = [(WFLocationTriggerEditorMapDragRadiusView *)v3 measurmentFormatter];
    [v13 setUnitStyle:3];
  }

  return v3;
}

@end