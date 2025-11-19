@interface SBFluidScrunchGestureRecognizer
+ (id)_panTemplatesForTouchType:(int64_t)a3 displayConfiguration:(id)a4;
+ (id)_scrunchTemplatesForTouchType:(int64_t)a3 displayConfiguration:(id)a4;
+ (void)_rotateTemplates:(id)a3 forDisplayConfiguration:(id)a4;
- (BOOL)_isMatchedTemplateScrunchTemplate;
- (CGPoint)_centroidInGestureViewForPolygon:(id)a3;
- (CGPoint)absoluteTranslation;
- (CGPoint)additionalTranslationDueToChangingAnchorPoints;
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3;
- (CGPoint)centroid;
- (CGPoint)initialCentroid;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)translationInView:(id)a3;
- (CGPoint)translationWithoutConsideringScaleInView:(id)a3;
- (CGPoint)velocityInView:(id)a3;
- (SBFluidScrunchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 displayConfiguration:(id)a5;
- (double)incrementalGestureMotionForCandidate:(id)a3 withTransformAnalyzerInfo:(id)a4;
- (id)_gestureView;
- (void)_computeGestureMotionWithTouches:(id)a3 polygon:(id)a4;
- (void)_installTemplatesForDisplayConfiguration:(id)a3;
- (void)_setMatchedPolygon:(id)a3;
- (void)_updateRecognizedTouchTypeIfNecessaryWithTouches:(id)a3;
- (void)reset;
- (void)setAllowedTouchTypes:(id)a3;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBFluidScrunchGestureRecognizer

- (SBFluidScrunchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 displayConfiguration:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = SBFluidScrunchGestureRecognizer;
  v10 = [(SBTouchTemplateGestureRecognizer *)&v15 initWithTarget:a3 action:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayConfiguration, a5);
    [(SBFluidScrunchGestureRecognizer *)v11 _installTemplatesForDisplayConfiguration:v9];
    v12 = objc_alloc_init(SBTouchHistory);
    touchHistory = v11->_touchHistory;
    v11->_touchHistory = v12;
  }

  return v11;
}

- (void)setAllowedTouchTypes:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBFluidScrunchGestureRecognizer;
  [(SBFluidScrunchGestureRecognizer *)&v4 setAllowedTouchTypes:a3];
  [(SBFluidScrunchGestureRecognizer *)self _installTemplatesForDisplayConfiguration:self->_displayConfiguration];
}

- (void)setState:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = *MEMORY[0x277CBF348];
    self->_absoluteTranslation = *MEMORY[0x277CBF348];
    self->_absoluteScale = 1.0;
    self->_additionalTranslationDueToChangingAnchorPoints = v5;
    v6 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
    [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v6];
    v8 = v7;
    v10 = v9;
    [v6 _perimeter];
    self->_lastPerimeter = v11;
    self->_initialCentroid.x = v8;
    self->_initialCentroid.y = v10;
  }

  v12.receiver = self;
  v12.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v12 setState:a3];
}

- (void)_setMatchedPolygon:(id)a3
{
  v4 = a3;
  v5 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];

  if (v4 && !v5)
  {
    [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v4];
    self->_initialCentroid.x = v6;
    self->_initialCentroid.y = v7;
    [v4 _perimeter];
    self->_lastPerimeter = v8;
  }

  v9.receiver = self;
  v9.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v9 _setMatchedPolygon:v4];
}

- (void)_computeGestureMotionWithTouches:(id)a3 polygon:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v6];
  v20 = v9;
  v21 = v8;
  v10 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  if (v10)
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
      [v6 _perimeter];
      absoluteScale = v16 * v17 / self->_lastPerimeter;
    }

    if (absoluteScale > 1.0)
    {
      BSUIConstrainValueWithRubberBand();
      absoluteScale = v18 + 1.0;
    }

    self->_absoluteScale = absoluteScale;
  }

  [v6 _perimeter];
  self->_lastPerimeter = v19;
  v23.receiver = self;
  v23.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v23 _computeGestureMotionWithTouches:v7 polygon:v6];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  v8 = a3;
  v9 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v9];
  v11 = v10;
  v13 = v12;

  v14 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];
  if (v14)
  {
    v15 = v14;
    v16 = [(SBFluidScrunchGestureRecognizer *)self state];

    v30.receiver = self;
    v30.super_class = SBFluidScrunchGestureRecognizer;
    [(SBTouchTemplateGestureRecognizer *)&v30 touchesBegan:v8 withEvent:v6];
    [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:v8];

    if (v16)
    {
      self->_absoluteTranslation = absoluteTranslation;
      self->_absoluteScale = absoluteScale;
      v17 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
      [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v17];
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
    [(SBTouchTemplateGestureRecognizer *)&v30 touchesBegan:v8 withEvent:v6];
    [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:v8];
  }

  v23 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self locationInView:v23];
  v25 = v24;
  v27 = v26;

  touchHistory = self->_touchHistory;
  [(SBFluidScrunchGestureRecognizer *)self lastTouchTimestamp];
  [(SBTouchHistory *)touchHistory updateWithLocation:v25 timestamp:v27, v29];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBFluidScrunchGestureRecognizer;
  v6 = a3;
  [(SBTouchTemplateGestureRecognizer *)&v14 touchesMoved:v6 withEvent:a4];
  [(SBFluidScrunchGestureRecognizer *)self _updateRecognizedTouchTypeIfNecessaryWithTouches:v6, v14.receiver, v14.super_class];

  v7 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self locationInView:v7];
  v9 = v8;
  v11 = v10;

  touchHistory = self->_touchHistory;
  [(SBFluidScrunchGestureRecognizer *)self lastTouchTimestamp];
  [(SBTouchHistory *)touchHistory updateWithLocation:v9 timestamp:v11, v13];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  v7 = a4;
  v8 = a3;
  v9 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v9];
  v11 = v10;
  v13 = v12;

  v20.receiver = self;
  v20.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v20 touchesEnded:v8 withEvent:v7];

  v14 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v14];
  v16 = v15 - v11;
  v18 = v17 - v13;

  self->_absoluteTranslation = absoluteTranslation;
  self->_absoluteScale = absoluteScale;
  v19 = v18 + self->_additionalTranslationDueToChangingAnchorPoints.y;
  self->_additionalTranslationDueToChangingAnchorPoints.x = v16 + self->_additionalTranslationDueToChangingAnchorPoints.x;
  self->_additionalTranslationDueToChangingAnchorPoints.y = v19;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  absoluteTranslation = self->_absoluteTranslation;
  absoluteScale = self->_absoluteScale;
  v7 = a4;
  v8 = a3;
  v9 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v9];
  v11 = v10;
  v13 = v12;

  v20.receiver = self;
  v20.super_class = SBFluidScrunchGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v20 touchesCancelled:v8 withEvent:v7];

  v14 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v14];
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
  v3 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];
  [(SBFluidScrunchGestureRecognizer *)self _centroidInGestureViewForPolygon:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5 - self->_additionalTranslationDueToChangingAnchorPoints.x;
  v9 = v7 - self->_additionalTranslationDueToChangingAnchorPoints.y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [(SBFluidScrunchGestureRecognizer *)self translationInView:v5];
  v7 = v6;
  v9 = v8;
  [v5 bounds];
  v11 = v10 * 0.5;
  [v5 bounds];
  [v5 convertPoint:v4 toView:{v7 + v11, v9 + v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)translationInView:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
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

  [v5 bounds];
  v17 = v15 + (1.0 - v7) * v16 * -0.5;
  v18 = [v5 window];
  v19 = [v18 screen];
  v20 = [v19 fixedCoordinateSpace];

  [v5 convertPoint:v20 toCoordinateSpace:{v9, v11}];
  v22 = v21;
  v24 = v23;
  [v5 convertPoint:v20 toCoordinateSpace:{v14, v17}];
  v26 = v25;
  v28 = v27;
  [v4 convertPoint:v20 fromCoordinateSpace:{v22, v24}];
  v30 = v29;
  v32 = v31;
  [v4 convertPoint:v20 fromCoordinateSpace:{v26, v28}];
  v34 = v33;
  v36 = v35;

  v37 = v34 - v30;
  v38 = v36 - v32;
  result.y = v38;
  result.x = v37;
  return result;
}

- (CGPoint)velocityInView:(id)a3
{
  v3 = [(SBFluidScrunchGestureRecognizer *)self touchHistory];
  [v3 averageTouchVelocityOverTimeDuration:0.0416666667];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)translationWithoutConsideringScaleInView:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
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

  [v5 convertPoint:v4 toView:{v7, v9}];
  v15 = v14;
  v17 = v16;
  [v5 convertPoint:v4 toView:{v12, v13}];
  v19 = v18;
  v21 = v20;

  v22 = v19 - v15;
  v23 = v21 - v17;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_gestureView
{
  v3 = [(SBFluidScrunchGestureRecognizer *)self delegate];
  v4 = [v3 viewForSystemGestureRecognizer:self];

  return v4;
}

- (CGPoint)_centroidInGestureViewForPolygon:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  v6 = [v5 window];
  [v4 _centroid];
  v8 = v7;
  v10 = v9;

  [v6 _convertPointFromSceneReferenceSpace:{v8, v10}];
  v12 = v11;
  v14 = v13;

  v15 = [v5 window];
  [v15 convertPoint:v5 toView:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (void)_installTemplatesForDisplayConfiguration:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBFluidScrunchGestureRecognizer *)self allowedTouchTypes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) integerValue];
        v11 = [MEMORY[0x277CBEB18] array];
        v12 = [objc_opt_class() _panTemplatesForTouchType:v10 displayConfiguration:v4];
        [v11 addObjectsFromArray:v12];

        v13 = [objc_opt_class() _scrunchTemplatesForTouchType:v10 displayConfiguration:v4];
        [v11 addObjectsFromArray:v13];

        [(SBTouchTemplateGestureRecognizer *)self setTemplates:v11 forTouchType:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v2 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];
  if ([v2 pointCount] >= 4)
  {
    [v2 _pointAtIndex:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__SBFluidScrunchGestureRecognizer__isMatchedTemplateScrunchTemplate__block_invoke;
    v6[3] = &unk_2783BE278;
    v6[5] = v3;
    v6[4] = &v7;
    [v2 enumeratePointsUsingBlock:v6];
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

- (void)_updateRecognizedTouchTypeIfNecessaryWithTouches:(id)a3
{
  v5 = a3;
  if ([(SBFluidScrunchGestureRecognizer *)self state]== 1)
  {
    v4 = [v5 anyObject];
    self->_recognizedTouchType = [v4 type];
  }
}

- (double)incrementalGestureMotionForCandidate:(id)a3 withTransformAnalyzerInfo:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidScrunchGestureRecognizer *)self _gestureView];
  [v6 bounds];
  v8 = v7;

  [v5 scale];
  [v5 scale];
  v10 = v9 * v8 + 0.0;
  [v5 translation];
  v12 = v11;
  [v5 translation];
  v14 = v10 + hypot(v12, v13);

  return v14;
}

+ (void)_rotateTemplates:(id)a3 forDisplayConfiguration:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[SBSystemGestureManager mainDisplayManager];
    v8 = [v7 windowForSystemGestures];

    v9 = [v8 _fbsDisplayConfiguration];
    [v9 nativeOrientation];
    v11 = v10;

    [v6 nativeOrientation];
    v13 = v12;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v5;
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

+ (id)_scrunchTemplatesForTouchType:(int64_t)a3 displayConfiguration:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v38 = xmmword_21F8A7AF0;
  v39 = xmmword_21F8A7B00;
  v40 = xmmword_21F8A7B10;
  v41 = xmmword_21F8A7B20;
  v7 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v38 pointCount:4];
  [v6 addObject:v7];
  v34 = xmmword_21F8A7B30;
  v35 = xmmword_21F8A7B40;
  v36 = xmmword_21F8A7B50;
  v37 = xmmword_21F8A7B60;
  v8 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v34 pointCount:4];

  [v6 addObject:v8];
  v29 = xmmword_21F8A7B70;
  v30 = xmmword_21F8A7B80;
  v31 = xmmword_21F8A7B90;
  v32 = xmmword_21F8A7BA0;
  v33 = xmmword_21F8A7BB0;
  v9 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v29 pointCount:5];

  [v6 addObject:v9];
  v24 = xmmword_21F8A7BC0;
  v25 = xmmword_21F8A7BD0;
  v26 = xmmword_21F8A7BE0;
  v27 = xmmword_21F8A7BF0;
  v28 = xmmword_21F8A7C00;
  v10 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v24 pointCount:5];

  [v6 addObject:v10];
  v19 = xmmword_21F8A7C10;
  v20 = xmmword_21F8A7C20;
  v21 = xmmword_21F8A7C30;
  v22 = xmmword_21F8A7C40;
  v23 = xmmword_21F8A7C50;
  v11 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:5];

  [v6 addObject:v11];
  v14 = xmmword_21F8A7C60;
  v15 = xmmword_21F8A7C70;
  v16 = xmmword_21F8A7C80;
  v17 = xmmword_21F8A7C90;
  v18 = xmmword_21F8A7CA0;
  v12 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:5];

  [v6 addObject:{v12, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41}];
  if (a3 == 1 && v5)
  {
    [SBFluidScrunchGestureRecognizer _rotateTemplates:v6 forDisplayConfiguration:v5];
  }

  return v6;
}

+ (id)_panTemplatesForTouchType:(int64_t)a3 displayConfiguration:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  if (a3 == 1)
  {
    v14 = xmmword_21F8A7CB0;
    v15 = xmmword_21F8A7CC0;
    v16 = xmmword_21F8A7CD0;
    v7 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:3];
    [v6 addObject:v7];
    v23 = xmmword_21F8A7B80;
    v24 = xmmword_21F8A7B90;
    v25 = xmmword_21F8A7BA0;
    v8 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v23 pointCount:3];

    [v6 addObject:v8];
    v19 = xmmword_21F8A7CE0;
    v20 = xmmword_21F8A7B80;
    v21 = xmmword_21F8A7B90;
    v9 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:3];

    [v6 addObject:v9];
  }

  v23 = xmmword_21F8A7CF0;
  v24 = xmmword_21F8A7D00;
  v25 = xmmword_21F8A7D10;
  v26 = xmmword_21F8A7D20;
  v10 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v23 pointCount:4];
  [v6 addObject:v10];
  v19 = xmmword_21F8A7CE0;
  v20 = xmmword_21F8A7B80;
  v21 = xmmword_21F8A7B90;
  v22 = xmmword_21F8A7BA0;
  v11 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v19 pointCount:4];

  [v6 addObject:v11];
  v14 = xmmword_21F8A7CE0;
  v15 = xmmword_21F8A7B80;
  v16 = xmmword_21F8A7B90;
  v17 = xmmword_21F8A7BA0;
  v18 = xmmword_21F8A7BB0;
  v12 = [(SBPolygon *)[SBTouchTemplate alloc] initWithPoints:&v14 pointCount:5];

  [v6 addObject:v12];
  if (a3 == 1 && v5)
  {
    [SBFluidScrunchGestureRecognizer _rotateTemplates:v6 forDisplayConfiguration:v5];
  }

  return v6;
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