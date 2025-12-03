@interface SBFluidScrunchGestureRecognizer
+ (id)_panTemplatesForTouchType:(int64_t)type displayConfiguration:(id)configuration;
+ (id)_scrunchTemplatesForTouchType:(int64_t)type displayConfiguration:(id)configuration;
+ (void)_rotateTemplates:(id)templates forDisplayConfiguration:(id)configuration;
- (BOOL)_isMatchedTemplateScrunchTemplate;
- (CGPoint)_centroidInGestureViewForPolygon:(id)polygon;
- (CGPoint)absoluteTranslation;
- (CGPoint)additionalTranslationDueToChangingAnchorPoints;
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (CGPoint)centroid;
- (CGPoint)initialCentroid;
- (CGPoint)locationInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (CGPoint)translationWithoutConsideringScaleInView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (SBFluidScrunchGestureRecognizer)initWithTarget:(id)target action:(SEL)action displayConfiguration:(id)configuration;
- (double)incrementalGestureMotionForCandidate:(id)candidate withTransformAnalyzerInfo:(id)info;
- (id)_gestureView;
- (void)_computeGestureMotionWithTouches:(id)touches polygon:(id)polygon;
- (void)_installTemplatesForDisplayConfiguration:(id)configuration;
- (void)_setMatchedPolygon:(id)polygon;
- (void)_updateRecognizedTouchTypeIfNecessaryWithTouches:(id)touches;
- (void)reset;
- (void)setAllowedTouchTypes:(id)types;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBFluidScrunchGestureRecognizer

- (SBFluidScrunchGestureRecognizer)initWithTarget:(id)target action:(SEL)action displayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SBFluidScrunchGestureRecognizer;
  v10 = [(SBTouchTemplateGestureRecognizer *)&v15 initWithTarget:target action:action];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayConfiguration, configuration);
    [(SBFluidScrunchGestureRecognizer *)v11 _installTemplatesForDisplayConfiguration:configurationCopy];
    v12 = objc_alloc_init(SBTouchHistory);
    touchHistory = v11->_touchHistory;
    v11->_touchHistory = v12;
  }

  return v11;
}

- (void)setAllowedTouchTypes:(id)types
{
  v4.receiver = self;
  v4.super_class = SBFluidScrunchGestureRecognizer;
  [(SBFluidScrunchGestureRecognizer *)&v4 setAllowedTouchTypes:types];
  [(SBFluidScrunchGestureRecognizer *)self _installTemplatesForDisplayConfiguration:self->_displayConfiguration];
}

- (void)setState:(int64_t)state
{
  if (state == 1)
  {
    v5 = *MEMORY[0x277CBF348];
    self->_absoluteTranslation = *MEMORY[0x277CBF348];
    self->_absoluteScale = 1.0;
    self->_additionalTranslationDueToChangingAnchorPoints = v5;
    _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
    [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon];
    v8 = v7;
    v10 = v9;
    [_matchedPolygon _perimeter];
    self->_lastPerimeter = v11;
    self->_initialCentroid.x = v8;
    self->_initialCentroid.y = v10;
  }

  v12.receiver = self;
  v12.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v12 setState:state];
}

- (void)_setMatchedPolygon:(id)polygon
{
  polygonCopy = polygon;
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];

  if (polygonCopy && !_matchedPolygon)
  {
    [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:polygonCopy];
    self->_initialCentroid.x = v6;
    self->_initialCentroid.y = v7;
    [polygonCopy _perimeter];
    self->_lastPerimeter = v8;
  }

  v9.receiver = self;
  v9.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v9 _setMatchedPolygon:polygonCopy];
}

- (void)_computeGestureMotionWithTouches:(id)touches polygon:(id)polygon
{
  polygonCopy = polygon;
  touchesCopy = touches;
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:polygonCopy];
  v20 = v9;
  v21 = v8;
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  if (_matchedPolygon)
  {
    [(SBFluidScrunchGestureRecognizer *)self centroid];
    v11.f64[0] = v21;
    v11.f64[1] = v20;
    v13.f64[1] = v12;
    v14 = vsubq_f64(v11, v13);
  }

  else
  {
    v14 = *MEMORY[0x277CBF348];
  }

  v22 = v14;

  self->_absoluteTranslation = vaddq_f64(v22, self->_absoluteTranslation);
  if (self->_lastPerimeter != 0.0)
  {
    absoluteScale = self->_absoluteScale;
    if ([(SBFluidScrunchGestureRecognizer *)self _isMatchedTemplateScrunchTemplate])
    {
      v16 = self->_absoluteScale;
      [polygonCopy _perimeter];
      absoluteScale = v16 * v17 / self->_lastPerimeter;
    }

    if (absoluteScale > 1.0)
    {
      BSUIConstrainValueWithRubberBand();
      absoluteScale = v18 + 1.0;
    }

    self->_absoluteScale = absoluteScale;
  }

  [polygonCopy _perimeter];
  self->_lastPerimeter = v19;
  v23.receiver = self;
  v23.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v23 _computeGestureMotionWithTouches:touchesCopy polygon:polygonCopy];
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v4 reset];
  v3 = *MEMORY[0x277CBF348];
  self->_absoluteTranslation = *MEMORY[0x277CBF348];
  self->_absoluteScale = 1.0;
  self->_additionalTranslationDueToChangingAnchorPoints = v3;
  self->_initialCentroid = v3;
  self->_lastPerimeter = 0.0;
  [(SBTouchHistory *)self->_touchHistory reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  beganCopy = began;
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon];
  v11 = v10;
  v13 = v12;

  _matchedTemplate = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];
  if (_matchedTemplate)
  {
    v15 = _matchedTemplate;
    state = [(SBFluidScrunchGestureRecognizer *)self state];

    v30.receiver = self;
    v30.super_class = SBFluidScrunchGestureRecognizer;
    [(SBTouchTemplateGestureRecognizer *)&v30 touchesBegan:beganCopy withEvent:eventCopy];
    [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:beganCopy];

    if (state)
    {
      self->_absoluteTranslation = absoluteTranslation;
      self->_absoluteScale = absoluteScale;
      _matchedPolygon2 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
      [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon2];
      v19 = v18 - v11;
      v21 = v20 - v13;

      v22 = v21 + self->_additionalTranslationDueToChangingAnchorPoints.y;
      self->_additionalTranslationDueToChangingAnchorPoints.x = v19 + self->_additionalTranslationDueToChangingAnchorPoints.x;
      self->_additionalTranslationDueToChangingAnchorPoints.y = v22;
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = SBFluidScrunchGestureRecognizer;
    [(SBTouchTemplateGestureRecognizer *)&v30 touchesBegan:beganCopy withEvent:eventCopy];
    [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:beganCopy];
  }

  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self locationInView:_gestureView];
  v25 = v24;
  v27 = v26;

  touchHistory = self->_touchHistory;
  [(SBFluidScrunchGestureRecognizer *)self lastTouchTimestamp];
  [(SBTouchHistory *)touchHistory updateWithLocation:v25 timestamp:v27, v29];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBFluidScrunchGestureRecognizer;
  movedCopy = moved;
  [(SBTouchTemplateGestureRecognizer *)&v14 touchesMoved:movedCopy withEvent:event];
  [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:movedCopy, v14.receiver, v14.super_class];

  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self locationInView:_gestureView];
  v9 = v8;
  v11 = v10;

  touchHistory = self->_touchHistory;
  [(SBFluidScrunchGestureRecognizer *)self lastTouchTimestamp];
  [(SBTouchHistory *)touchHistory updateWithLocation:v9 timestamp:v11, v13];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  eventCopy = event;
  endedCopy = ended;
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon];
  v11 = v10;
  v13 = v12;

  v20.receiver = self;
  v20.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v20 touchesEnded:endedCopy withEvent:eventCopy];

  _matchedPolygon2 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon2];
  v16 = v15 - v11;
  v18 = v17 - v13;

  self->_absoluteTranslation = absoluteTranslation;
  self->_absoluteScale = absoluteScale;
  v19 = v18 + self->_additionalTranslationDueToChangingAnchorPoints.y;
  self->_additionalTranslationDueToChangingAnchorPoints.x = v16 + self->_additionalTranslationDueToChangingAnchorPoints.x;
  self->_additionalTranslationDueToChangingAnchorPoints.y = v19;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  eventCopy = event;
  cancelledCopy = cancelled;
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon];
  v11 = v10;
  v13 = v12;

  v20.receiver = self;
  v20.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v20 touchesCancelled:cancelledCopy withEvent:eventCopy];

  _matchedPolygon2 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon2];
  v16 = v15 - v11;
  v18 = v17 - v13;

  self->_absoluteTranslation = absoluteTranslation;
  self->_absoluteScale = absoluteScale;
  v19 = v18 + self->_additionalTranslationDueToChangingAnchorPoints.y;
  self->_additionalTranslationDueToChangingAnchorPoints.x = v16 + self->_additionalTranslationDueToChangingAnchorPoints.x;
  self->_additionalTranslationDueToChangingAnchorPoints.y = v19;
}

- (CGPoint)centroid
{
  _matchedPolygon = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:_matchedPolygon];
  v5 = v4;
  v7 = v6;

  v8 = v5 - self->_additionalTranslationDueToChangingAnchorPoints.x;
  v9 = v7 - self->_additionalTranslationDueToChangingAnchorPoints.y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self translationInView:_gestureView];
  v7 = v6;
  v9 = v8;
  [_gestureView bounds];
  v11 = v10 * 0.5;
  [_gestureView bounds];
  [_gestureView convertPoint:viewCopy toView:{v7 + v11, v9 + v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  viewCopy = view;
  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self absoluteScale];
  v7 = v6;
  [(SBFluidScrunchGestureRecognizer *)self initialCentroid];
  v9 = v8;
  v11 = v10;
  [(SBFluidScrunchGestureRecognizer *)self centroid];
  v14 = v13;
  if (v12 <= v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  [_gestureView bounds];
  v17 = v15 + (1.0 - v7) * v16 * -0.5;
  window = [_gestureView window];
  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  [_gestureView convertPoint:fixedCoordinateSpace toCoordinateSpace:{v9, v11}];
  v22 = v21;
  v24 = v23;
  [_gestureView convertPoint:fixedCoordinateSpace toCoordinateSpace:{v14, v17}];
  v26 = v25;
  v28 = v27;
  [viewCopy convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v22, v24}];
  v30 = v29;
  v32 = v31;
  [viewCopy convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v26, v28}];
  v34 = v33;
  v36 = v35;

  v37 = v34 - v30;
  v38 = v36 - v32;
  result.y = v38;
  result.x = v37;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  touchHistory = [(SBFluidScrunchGestureRecognizer *)self touchHistory];
  [touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)translationWithoutConsideringScaleInView:(id)view
{
  viewCopy = view;
  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self initialCentroid];
  v7 = v6;
  v9 = v8;
  [(SBFluidScrunchGestureRecognizer *)self centroid];
  v12 = v11;
  if (v10 <= v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  [_gestureView convertPoint:viewCopy toView:{v7, v9}];
  v15 = v14;
  v17 = v16;
  [_gestureView convertPoint:viewCopy toView:{v12, v13}];
  v19 = v18;
  v21 = v20;

  v22 = v19 - v15;
  v23 = v21 - v17;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:duration];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_gestureView
{
  delegate = [(SBFluidScrunchGestureRecognizer *)self delegate];
  v4 = [delegate viewForSystemGestureRecognizer:self];

  return v4;
}

- (CGPoint)_centroidInGestureViewForPolygon:(id)polygon
{
  polygonCopy = polygon;
  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  window = [_gestureView window];
  [polygonCopy _centroid];
  v8 = v7;
  v10 = v9;

  [window _convertPointFromSceneReferenceSpace:{v8, v10}];
  v12 = v11;
  v14 = v13;

  window2 = [_gestureView window];
  [window2 convertPoint:_gestureView toView:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)_installTemplatesForDisplayConfiguration:(id)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allowedTouchTypes = [(SBFluidScrunchGestureRecognizer *)self allowedTouchTypes];
  v6 = [allowedTouchTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allowedTouchTypes);
        }

        integerValue = [*(*(&v14 + 1) + 8 * v9) integerValue];
        array = [MEMORY[0x277CBEB18] array];
        v12 = [objc_opt_class() _panTemplatesForTouchType:integerValue displayConfiguration:configurationCopy];
        [array addObjectsFromArray:v12];

        v13 = [objc_opt_class() _scrunchTemplatesForTouchType:integerValue displayConfiguration:configurationCopy];
        [array addObjectsFromArray:v13];

        [(SBTouchTemplateGestureRecognizer *)self setTemplates:array forTouchType:integerValue];
        ++v9;
      }

      while (v7 != v9);
      v7 = [allowedTouchTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (BOOL)_isMatchedTemplateScrunchTemplate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  _matchedTemplate = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];
  if ([_matchedTemplate pointCount] >= 4)
  {
    [_matchedTemplate _pointAtIndex:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__SBFluidScrunchGestureRecognizer__isMatchedTemplateScrunchTemplate__block_invoke;
    v6[3] = &unk_2783BE278;
    v6[5] = v3;
    v6[4] = &v7;
    [_matchedTemplate enumeratePointsUsingBlock:v6];
  }

  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __68__SBFluidScrunchGestureRecognizer__isMatchedTemplateScrunchTemplate__block_invoke(uint64_t result, double a2, double a3)
{
  if (a3 != *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateRecognizedTouchTypeIfNecessaryWithTouches:(id)touches
{
  touchesCopy = touches;
  if ([(SBFluidScrunchGestureRecognizer *)self state]== 1)
  {
    anyObject = [touchesCopy anyObject];
    self->_recognizedTouchType = [anyObject type];
  }
}

- (double)incrementalGestureMotionForCandidate:(id)candidate withTransformAnalyzerInfo:(id)info
{
  infoCopy = info;
  _gestureView = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [_gestureView bounds];
  v8 = v7;

  [infoCopy scale];
  [infoCopy scale];
  v10 = v9 * v8 + 0.0;
  [infoCopy translation];
  v12 = v11;
  [infoCopy translation];
  v14 = v10 + hypot(v12, v13);

  return v14;
}

+ (void)_rotateTemplates:(id)templates forDisplayConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  templatesCopy = templates;
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v7 = +[SBSystemGestureManager mainDisplayManager];
    windowForSystemGestures = [v7 windowForSystemGestures];

    _fbsDisplayConfiguration = [windowForSystemGestures _fbsDisplayConfiguration];
    [_fbsDisplayConfiguration nativeOrientation];
    v11 = v10;

    [configurationCopy nativeOrientation];
    v13 = v12;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = templatesCopy;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = v11 - v13;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v19++) _rotate:{v17, v20}];
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }
}

+ (id)_scrunchTemplatesForTouchType:(int64_t)type displayConfiguration:(id)configuration
{
  v42 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  array = [MEMORY[0x277CBEB18] array];
  v38 = xmmword_21F8A7AF0;
  v39 = xmmword_21F8A7B00;
  v40 = xmmword_21F8A7B10;
  v41 = xmmword_21F8A7B20;
  v7 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v38 pointCount:4];
  [array addObject:v7];
  v34 = xmmword_21F8A7B30;
  v35 = xmmword_21F8A7B40;
  v36 = xmmword_21F8A7B50;
  v37 = xmmword_21F8A7B60;
  v8 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v34 pointCount:4];

  [array addObject:v8];
  v29 = xmmword_21F8A7B70;
  v30 = xmmword_21F8A7B80;
  v31 = xmmword_21F8A7B90;
  v32 = xmmword_21F8A7BA0;
  v33 = xmmword_21F8A7BB0;
  v9 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v29 pointCount:5];

  [array addObject:v9];
  v24 = xmmword_21F8A7BC0;
  v25 = xmmword_21F8A7BD0;
  v26 = xmmword_21F8A7BE0;
  v27 = xmmword_21F8A7BF0;
  v28 = xmmword_21F8A7C00;
  v10 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v24 pointCount:5];

  [array addObject:v10];
  v19 = xmmword_21F8A7C10;
  v20 = xmmword_21F8A7C20;
  v21 = xmmword_21F8A7C30;
  v22 = xmmword_21F8A7C40;
  v23 = xmmword_21F8A7C50;
  v11 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:5];

  [array addObject:v11];
  v14 = xmmword_21F8A7C60;
  v15 = xmmword_21F8A7C70;
  v16 = xmmword_21F8A7C80;
  v17 = xmmword_21F8A7C90;
  v18 = xmmword_21F8A7CA0;
  v12 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:5];

  [array addObject:{v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41}];
  if (type == 1 && configurationCopy)
  {
    [SBFluidScrunchGestureRecognizer _rotateTemplates:array forDisplayConfiguration:configurationCopy];
  }

  return array;
}

+ (id)_panTemplatesForTouchType:(int64_t)type displayConfiguration:(id)configuration
{
  v27 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  array = [MEMORY[0x277CBEB18] array];
  if (type == 1)
  {
    v14 = xmmword_21F8A7CB0;
    v15 = xmmword_21F8A7CC0;
    v16 = xmmword_21F8A7CD0;
    v7 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:3];
    [array addObject:v7];
    v23 = xmmword_21F8A7B80;
    v24 = xmmword_21F8A7B90;
    v25 = xmmword_21F8A7BA0;
    v8 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v23 pointCount:3];

    [array addObject:v8];
    v19 = xmmword_21F8A7CE0;
    v20 = xmmword_21F8A7B80;
    v21 = xmmword_21F8A7B90;
    v9 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:3];

    [array addObject:v9];
  }

  v23 = xmmword_21F8A7CF0;
  v24 = xmmword_21F8A7D00;
  v25 = xmmword_21F8A7D10;
  v26 = xmmword_21F8A7D20;
  v10 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v23 pointCount:4];
  [array addObject:v10];
  v19 = xmmword_21F8A7CE0;
  v20 = xmmword_21F8A7B80;
  v21 = xmmword_21F8A7B90;
  v22 = xmmword_21F8A7BA0;
  v11 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:4];

  [array addObject:v11];
  v14 = xmmword_21F8A7CE0;
  v15 = xmmword_21F8A7B80;
  v16 = xmmword_21F8A7B90;
  v17 = xmmword_21F8A7BA0;
  v18 = xmmword_21F8A7BB0;
  v12 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:5];

  [array addObject:v12];
  if (type == 1 && configurationCopy)
  {
    [SBFluidScrunchGestureRecognizer _rotateTemplates:array forDisplayConfiguration:configurationCopy];
  }

  return array;
}

- (CGPoint)initialCentroid
{
  x = self->_initialCentroid.x;
  y = self->_initialCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)absoluteTranslation
{
  x = self->_absoluteTranslation.x;
  y = self->_absoluteTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)additionalTranslationDueToChangingAnchorPoints
{
  x = self->_additionalTranslationDueToChangingAnchorPoints.x;
  y = self->_additionalTranslationDueToChangingAnchorPoints.y;
  result.y = y;
  result.x = x;
  return result;
}

@end