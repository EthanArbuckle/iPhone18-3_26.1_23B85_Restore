@interface SBTouchTemplateGestureRecognizer
- (BOOL)_directionallyAcceptMotion:(double)a3;
- (BOOL)hasSignificantMotionToBegin;
- (SBTouchTemplateGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)cumulativePercentage;
- (double)incrementalGestureMotionForCandidate:(id)a3 withTransformAnalyzerInfo:(id)a4;
- (id)_matchedTemplateForTouches:(id)a3 polygon:(id)a4;
- (id)_polygonForTouches:(id)a3;
- (id)_touchesByFilteringRestingTrackpadTouches:(id)a3;
- (id)logCategory;
- (id)templatesForTouchType:(int64_t)a3;
- (int64_t)projectedCompletionTypeForInterval:(double)a3;
- (void)_attemptTemplateMatchWithTouches:(id)a3 polygon:(id)a4;
- (void)_computeGestureMotionWithTouches:(id)a3 polygon:(id)a4;
- (void)_failMeForReason:(id)a3;
- (void)_log:(id)a3;
- (void)_noChangeCancellationTimerFired:(id)a3;
- (void)_pingNoChangeCancellationTimer;
- (void)_reset;
- (void)_resetNoChangeCancellationTimer;
- (void)_updateForTouchesBeganOrMoved:(id)a3;
- (void)_updateForTouchesCancelledOrEnded:(id)a3 state:(int64_t)a4 withEvent:(id)a5;
- (void)_updateMatchedTemplateForTouchesBeganOrEnded:(id)a3;
- (void)log:(id)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)setTemplates:(id)a3 forTouchType:(int64_t)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBTouchTemplateGestureRecognizer

- (SBTouchTemplateGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = SBTouchTemplateGestureRecognizer;
  v4 = [(SBTouchTemplateGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_sequenceNumber = 1;
    v6 = objc_alloc_init(UIGestureRecognizerTransformAnalyzer);
    transformAnalyzer = v5->_transformAnalyzer;
    v5->_transformAnalyzer = v6;
  }

  return v5;
}

- (double)cumulativePercentage
{
  if (![(SBTouchTemplateGestureRecognizer *)self state])
  {
    return 0.0;
  }

  cumulativeMotion = self->_cumulativeMotion;
  [(SBTouchTemplateGestureRecognizer *)self animationDistance];
  return cumulativeMotion / v4;
}

- (int64_t)projectedCompletionTypeForInterval:(double)a3
{
  [(SBTouchTemplateGestureRecognizer *)self animationDistance];
  v6 = v5;
  [(SBTouchTemplateGestureRecognizer *)self _projectedMotionForInterval:a3];
  v8 = v7;
  v9 = [(SBTouchTemplateGestureRecognizer *)self _directionallyAcceptMotion:?];
  v10 = fabs(v8);
  v11 = fabs(self->_cumulativeMotionEnvelope) * 0.899999976;
  v12 = !v9;
  if (v10 <= v6 * 0.5)
  {
    v12 = 1;
  }

  if (v10 <= v11)
  {
    v12 = 1;
  }

  if (v8 * self->_cumulativeMotion < 0.0)
  {
    v12 = 1;
  }

  if (v12)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)log:(id)a3
{
  v4 = a3;
  v5 = SBLogSystemGesture();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v8];
    [(SBTouchTemplateGestureRecognizer *)self _log:v7];
  }
}

- (void)_log:(id)a3
{
  v4 = a3;
  v5 = [(SBTouchTemplateGestureRecognizer *)self logCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBTouchTemplateGestureRecognizer *)self _log:v4, v5];
  }
}

- (void)setTemplates:(id)a3 forTouchType:(int64_t)a4
{
  v10 = a3;
  templatesForTouchType = self->_templatesForTouchType;
  if (!templatesForTouchType)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = self->_templatesForTouchType;
    self->_templatesForTouchType = v7;

    templatesForTouchType = self->_templatesForTouchType;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)templatesForTouchType setObject:v10 forKey:v9];
}

- (id)templatesForTouchType:(int64_t)a3
{
  templatesForTouchType = self->_templatesForTouchType;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)templatesForTouchType objectForKey:v4];

  return v5;
}

- (BOOL)hasSignificantMotionToBegin
{
  v3 = [(SBTouchTemplateGestureRecognizer *)self _directionallyAcceptMotion:self->_cumulativeMotion];
  if (!v3)
  {
    v4 = SBLogSystemGesture();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      [(SBTouchTemplateGestureRecognizer *)self log:@"hasSignificantMotionToBegin is NO because it hasn't been directionally accepted for required direction: %d cumulativeMotion: %f", [(SBTouchTemplateGestureRecognizer *)self requiredDirectionality], *&self->_cumulativeMotion];
    }
  }

  return v3;
}

- (double)incrementalGestureMotionForCandidate:(id)a3 withTransformAnalyzerInfo:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBTouchTemplateGestureRecognizer.m" lineNumber:128 description:@"Subclasses must override this function"];

  return 0.0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_trackingTouchCount += [v6 count];
  v8 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];

  if (!v8)
  {
    goto LABEL_4;
  }

  if ([(SBTouchTemplateGestureRecognizer *)self _shouldAddNewTouchesAfterGestureRecognition])
  {
    v9 = [v7 touchesForGestureRecognizer:self];
    v10 = [v9 mutableCopy];

    [v10 unionSet:v6];
    [(SBTouchTemplateGestureRecognizer *)self _updateMatchedTemplateForTouchesBeganOrEnded:v10];

LABEL_4:
    v11 = [v6 anyObject];
    v12 = [v11 type];

    if (v12 != 1)
    {
      [(SBTouchTemplateGestureRecognizer *)self _pingNoChangeCancellationTimer];
    }

    v13 = [v7 touchesForGestureRecognizer:self];
    [(SBTouchTemplateGestureRecognizer *)self _updateForTouchesBeganOrMoved:v13];

    goto LABEL_10;
  }

  v14 = SBLogSystemGesture();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

  if (v15)
  {
    [(SBTouchTemplateGestureRecognizer *)self log:@"%s - Got another touch but we're already matching, so ignore this one", "[SBTouchTemplateGestureRecognizer touchesBegan:withEvent:]"];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__SBTouchTemplateGestureRecognizer_touchesBegan_withEvent___block_invoke;
  v16[3] = &unk_2783BC088;
  v16[4] = self;
  v17 = v7;
  [v6 enumerateObjectsUsingBlock:v16];

LABEL_10:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a4 touchesForGestureRecognizer:self];
  [(SBTouchTemplateGestureRecognizer *)self _updateForTouchesBeganOrMoved:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];

  if (v7)
  {
    v8 = [v6 touchesForGestureRecognizer:self];
    v9 = [v8 mutableCopy];

    [v9 minusSet:v11];
    v10 = [(SBTouchTemplateGestureRecognizer *)self _polygonForTouches:v9];
    [(SBTouchTemplateGestureRecognizer *)self _computeGestureMotionWithTouches:v9 polygon:v10];
    [(SBTouchTemplateGestureRecognizer *)self _updateMatchedTemplateForTouchesBeganOrEnded:v9];
  }

  [(SBTouchTemplateGestureRecognizer *)self _updateForTouchesCancelledOrEnded:v11 state:3 withEvent:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 touchesForGestureRecognizer:self];
  v9 = [v8 mutableCopy];

  [v9 minusSet:v7];
  [(SBTouchTemplateGestureRecognizer *)self _updateForTouchesBeganOrMoved:v9];
  [(SBTouchTemplateGestureRecognizer *)self _updateForTouchesCancelledOrEnded:v7 state:4 withEvent:v6];
}

- (void)reset
{
  [(SBTouchTemplateGestureRecognizer *)self _reset];
  v3.receiver = self;
  v3.super_class = SBTouchTemplateGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v3 reset];
}

- (void)setState:(int64_t)a3
{
  if ([(SBTouchTemplateGestureRecognizer *)self state]!= a3)
  {
    v5 = SBLogSystemGesture();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = SBSystemGestureRecognizerStateDescription(a3);
      [(SBTouchTemplateGestureRecognizer *)self log:@"Recognizer changing state to %@", v7];
    }

    if (a3 == 1)
    {
      self->_recognitionBegan = 1;
      v8 = SBLogSystemGesture();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

      if (v9)
      {
        [(SBTouchTemplateGestureRecognizer *)self log:@"Beginning gesture recognition sequence number %lu", self->_sequenceNumber];
      }
    }
  }

  v10.receiver = self;
  v10.super_class = SBTouchTemplateGestureRecognizer;
  [(SBTouchTemplateGestureRecognizer *)&v10 setState:a3];
}

- (void)_pingNoChangeCancellationTimer
{
  noChangeCancellationTimer = self->_noChangeCancellationTimer;
  if (noChangeCancellationTimer)
  {
    if (![(NSTimer *)noChangeCancellationTimer isValid])
    {
      return;
    }

    v4 = self->_noChangeCancellationTimer;
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.2];
    [(NSTimer *)v4 setFireDate:?];
  }

  else
  {
    v5 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__noChangeCancellationTimerFired_ selector:0 userInfo:0 repeats:0.2];
    v6 = self->_noChangeCancellationTimer;
    self->_noChangeCancellationTimer = v5;

    v7 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v7 addTimer:self->_noChangeCancellationTimer forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)_resetNoChangeCancellationTimer
{
  [(NSTimer *)self->_noChangeCancellationTimer invalidate];
  noChangeCancellationTimer = self->_noChangeCancellationTimer;
  self->_noChangeCancellationTimer = 0;
}

- (void)_noChangeCancellationTimerFired:(id)a3
{
  if (![(SBTouchTemplateGestureRecognizer *)self state])
  {

    [(SBTouchTemplateGestureRecognizer *)self _failMeForReason:@"No change cancellation timer fired."];
  }
}

- (id)_polygonForTouches:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SBTouchTemplateGestureRecognizer__polygonForTouches___block_invoke;
  v9[3] = &unk_2783BC0B0;
  v6 = v5;
  v10 = v6;
  [v4 enumerateObjectsUsingBlock:v9];

  if ([v6 count])
  {
    v7 = [[SBPolygon alloc] initWithPoints:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __55__SBTouchTemplateGestureRecognizer__polygonForTouches___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAE60];
  [a2 locationInView:0];
  v4 = [v3 valueWithCGPoint:?];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_directionallyAcceptMotion:(double)a3
{
  requiredDirectionality = self->_requiredDirectionality;
  if (requiredDirectionality == 1)
  {
    return a3 >= 0.0;
  }

  if (requiredDirectionality == -1)
  {
    return a3 <= 0.0;
  }

  return 1;
}

- (void)_updateForTouchesCancelledOrEnded:(id)a3 state:(int64_t)a4 withEvent:(id)a5
{
  v12 = a3;
  v9 = a5;
  if ((a4 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [SBTouchTemplateGestureRecognizer _updateForTouchesCancelledOrEnded:a2 state:self withEvent:?];
  }

  trackingTouchCount = self->_trackingTouchCount;
  if (trackingTouchCount < 3 || trackingTouchCount == [v12 count])
  {
    if ([(SBTouchTemplateGestureRecognizer *)self state])
    {
      [(SBTouchTemplateGestureRecognizer *)self setState:a4];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - hadn't recognized yet and we were tracking this touch", "-[SBTouchTemplateGestureRecognizer _updateForTouchesCancelledOrEnded:state:withEvent:]"];
      [(SBTouchTemplateGestureRecognizer *)self _failMeForReason:v11];
    }
  }

  self->_trackingTouchCount -= [v12 count];
}

- (void)_updateForTouchesBeganOrMoved:(id)a3
{
  v6 = a3;
  v4 = [(SBTouchTemplateGestureRecognizer *)self _polygonForTouches:?];
  if (![(SBTouchTemplateGestureRecognizer *)self state])
  {
    v5 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplate];

    if (!v5)
    {
      [(SBTouchTemplateGestureRecognizer *)self _attemptTemplateMatchWithTouches:v6 polygon:v4];
    }
  }

  [(SBTouchTemplateGestureRecognizer *)self _computeGestureMotionWithTouches:v6 polygon:v4];
}

- (id)_matchedTemplateForTouches:(id)a3 polygon:(id)a4
{
  v6 = a3;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v7 = a4;
  v8 = SBLogSystemGesture();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    [(SBTouchTemplateGestureRecognizer *)self log:@"%s - candidate: %@ from points: %@", "[SBTouchTemplateGestureRecognizer _matchedTemplateForTouches:polygon:]", v7, 0];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__88;
  v34 = __Block_byref_object_dispose__88;
  v35 = 0;
  v10 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, v10);

  v11 = [v6 anyObject];
  v12 = [v11 type];

  v13 = [(SBTouchTemplateGestureRecognizer *)self templatesForTouchType:v12];
  if (v12 == 1)
  {
    v14 = 4.0;
  }

  else
  {
    v14 = 1.0;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__SBTouchTemplateGestureRecognizer__matchedTemplateForTouches_polygon___block_invoke;
  v22[3] = &unk_2783BC0D8;
  v15 = v6;
  v23 = v15;
  v26 = v36;
  v16 = v7;
  v24 = v16;
  v28[1] = *&v14;
  objc_copyWeak(v28, &location);
  v25 = self;
  v27 = &v30;
  [v13 enumerateObjectsUsingBlock:v22];

  v17 = SBLogSystemGesture();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  if (v18)
  {
    v19 = NSStringFromBOOL();
    [(SBTouchTemplateGestureRecognizer *)self log:@"%s - attemptedTemplateMatch: %@ # of attempts so far: %lu", "[SBTouchTemplateGestureRecognizer _matchedTemplateForTouches:polygon:]", v19, [(SBTouchTemplateGestureRecognizer *)self _failedRecognitionAttempts]];
  }

  v20 = v31[5];
  objc_destroyWeak(v28);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(v36, 8);

  return v20;
}

void __71__SBTouchTemplateGestureRecognizer__matchedTemplateForTouches_polygon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 pointCount];
  if (v8 == [*(a1 + 32) count])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = *(a1 + 40);
    v10 = *(a1 + 80);
    v18 = 0;
    v11 = [v7 matchesPolygon:v9 matchTransformsAllowed:15 acceptanceFactor:&v18 outMorphedCandidate:v10];
    v12 = v18;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v14 = [[SBTemplateAndMorph alloc] initWithTemplate:v7 morph:v12];
    [WeakRetained addObject:v14];

    v15 = SBLogSystemGesture();
    LODWORD(v14) = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

    if (v14)
    {
      v16 = *(a1 + 48);
      v17 = stringForSBTouchTemplateMatchResult(v11);
      [v16 log:{@"%s - result: %@ template: %@", "-[SBTouchTemplateGestureRecognizer _matchedTemplateForTouches:polygon:]_block_invoke", v17, v7}];
    }

    if (v11 == 1)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

- (void)_updateMatchedTemplateForTouchesBeganOrEnded:(id)a3
{
  v7 = [(SBTouchTemplateGestureRecognizer *)self _touchesByFilteringRestingTrackpadTouches:a3];
  v4 = [(SBTouchTemplateGestureRecognizer *)self _polygonForTouches:v7];
  v5 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplateForTouches:v7 polygon:v4];
  if (v5)
  {
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedTemplate:v5];
    v6 = v4;
LABEL_3:
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedPolygon:v6];
    goto LABEL_5;
  }

  if (![(SBTouchTemplateGestureRecognizer *)self state])
  {
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedTemplate:0];
    v6 = 0;
    goto LABEL_3;
  }

LABEL_5:
}

- (void)_attemptTemplateMatchWithTouches:(id)a3 polygon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBTouchTemplateGestureRecognizer *)self _matchedTemplateForTouches:v6 polygon:v7];
  if (v8)
  {
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedTemplate:v8];
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedPolygon:v7];
    if (!self->_initialTouchPointMap)
    {
      v9 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
      initialTouchPointMap = self->_initialTouchPointMap;
      self->_initialTouchPointMap = v9;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__SBTouchTemplateGestureRecognizer__attemptTemplateMatchWithTouches_polygon___block_invoke;
    v12[3] = &unk_2783BC0B0;
    v12[4] = self;
    [v6 enumerateObjectsUsingBlock:v12];
    self->_failedRecognitionAttempts = 0;
  }

  else
  {
    ++self->_failedRecognitionAttempts;
    if ([(SBTouchTemplateGestureRecognizer *)self _failedRecognitionAttempts]>= 0xB)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - >%d attempts and still no template matches", "-[SBTouchTemplateGestureRecognizer _attemptTemplateMatchWithTouches:polygon:]", 10];
      [(SBTouchTemplateGestureRecognizer *)self _failMeForReason:v11];
    }
  }
}

void __77__SBTouchTemplateGestureRecognizer__attemptTemplateMatchWithTouches_polygon___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 312);
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  [v4 locationInView:0];
  v5 = [v3 valueWithCGPoint:?];
  [v2 setObject:v5 forKey:v4];
}

- (void)_computeGestureMotionWithTouches:(id)a3 polygon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer analyzeTouches:v6];
  v9 = v7;
  [(SBTouchTemplateGestureRecognizer *)self incrementalGestureMotionForCandidate:v9 withTransformAnalyzerInfo:v8];
  v11 = v10;
  self->_cumulativeMotion = v10 + self->_cumulativeMotion;
  [(SBTouchTemplateGestureRecognizer *)self animationDistance];
  cumulativeMotion = self->_cumulativeMotion;
  if (cumulativeMotion > v12 || (v12 = -v12, cumulativeMotion < v12))
  {
    self->_cumulativeMotion = v12;
  }

  smoothedIncrementalMotion = self->_smoothedIncrementalMotion;
  v15 = dbl_21F8A7620[fabs(v11) > fabs(smoothedIncrementalMotion)];
  self->_smoothedIncrementalMotion = smoothedIncrementalMotion * (1.0 - v15) + v15 * v11;
  v16 = self->_cumulativeMotion;
  cumulativeMotionEnvelope = self->_cumulativeMotionEnvelope;
  if (fabs(v16) > fabs(cumulativeMotionEnvelope) || v16 * cumulativeMotionEnvelope < 0.0)
  {
    self->_cumulativeMotionEnvelope = v16;
  }

  if ([(SBTouchTemplateGestureRecognizer *)self state])
  {
    [(SBTouchTemplateGestureRecognizer *)self _setMatchedPolygon:v9];
  }

  if (![(SBTouchTemplateGestureRecognizer *)self state])
  {
    v18 = [(SBTouchTemplateGestureRecognizer *)self _matchedPolygon];

    if (v18)
    {
      v19 = fmin((20.0 / [v9 pointCount]), 10.0);
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = fabs(self->_cumulativeMotion) >= v19;
      v20 = SBLogSystemGesture();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v22 = NSStringFromBOOL();
        [(SBTouchTemplateGestureRecognizer *)self log:@"motionAccepted: %@, _cumulativeMotion: %f commitDistance: %f", v22, *&self->_cumulativeMotion, *&v19];
      }

      if (*(v25 + 24) == 1)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __77__SBTouchTemplateGestureRecognizer__computeGestureMotionWithTouches_polygon___block_invoke;
        v23[3] = &unk_2783BC100;
        *&v23[6] = v19;
        v23[4] = self;
        v23[5] = &v24;
        [v6 enumerateObjectsUsingBlock:v23];
        if (*(v25 + 24) == 1)
        {
          if ([(SBTouchTemplateGestureRecognizer *)self hasSignificantMotionToBegin])
          {
            [(SBTouchTemplateGestureRecognizer *)self _setMatchedPolygon:v9];
            [(SBTouchTemplateGestureRecognizer *)self setState:1];
            self->_cumulativeMotion = 0.0;
          }

          else
          {
            ++self->_failedRecognitionAttempts;
            if ([(SBTouchTemplateGestureRecognizer *)self _failedRecognitionAttempts]>= 0xB)
            {
              [(SBTouchTemplateGestureRecognizer *)self _failMeForReason:@"Have enough motion, but the subclass doesn't agree'"];
            }
          }
        }
      }

      _Block_object_dispose(&v24, 8);
    }
  }
}

void __77__SBTouchTemplateGestureRecognizer__computeGestureMotionWithTouches_polygon___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [v5 locationInView:0];
  v8 = [*(*(a1 + 32) + 312) objectForKey:v5];

  v6 = v8;
  if (v8)
  {
    [v8 CGPointValue];
    UIDistanceBetweenPoints();
    v6 = v8;
    if (v7 < *(a1 + 48))
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

- (void)_failMeForReason:(id)a3
{
  v6 = a3;
  v4 = SBLogSystemGesture();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    [(SBTouchTemplateGestureRecognizer *)self log:@"Failed: %@", v6];
  }

  [(SBTouchTemplateGestureRecognizer *)self setState:5];
  [(SBTouchTemplateGestureRecognizer *)self _invalidateNoChangeCancellationTimer];
}

- (void)_reset
{
  [(SBTouchTemplateGestureRecognizer *)self _resetNoChangeCancellationTimer];
  if (self->_recognitionBegan)
  {
    v3 = SBLogSystemGesture();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      [(SBTouchTemplateGestureRecognizer *)self log:@"Ending gesture recognition sequence %lu", self->_sequenceNumber];
    }

    self->_recognitionBegan = 0;
    ++self->_sequenceNumber;
  }

  self->_failedRecognitionAttempts = 0;
  [(SBTouchTemplateGestureRecognizer *)self _setMatchedTemplate:0];
  [(SBTouchTemplateGestureRecognizer *)self _setMatchedPolygon:0];
  [(UIGestureRecognizerTransformAnalyzer *)self->_transformAnalyzer reset];
  [(NSMapTable *)self->_initialTouchPointMap removeAllObjects];
  self->_trackingTouchCount = 0;
  self->_cumulativeMotion = 0.0;
  self->_cumulativeMotionEnvelope = 0.0;
  self->_smoothedIncrementalMotion = 0.0;
}

- (id)_touchesByFilteringRestingTrackpadTouches:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 _isRestingTouch])
        {
          if (!v6)
          {
            v6 = [v3 mutableCopy];
          }

          [v6 removeObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v10;
}

- (id)logCategory
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_log:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%@ %@", &v7, 0x16u);
}

- (void)_updateForTouchesCancelledOrEnded:(uint64_t)a1 state:(uint64_t)a2 withEvent:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTouchTemplateGestureRecognizer.m" lineNumber:267 description:@"state must be cancelled or ended."];
}

@end