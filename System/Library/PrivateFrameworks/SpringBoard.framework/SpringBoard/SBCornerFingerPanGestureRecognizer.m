@interface SBCornerFingerPanGestureRecognizer
- (BOOL)_shouldBegin;
- (CGVector)_convertReferenceVector:(CGVector)a3 toCorner:(unint64_t)a4 orientation:(int64_t)a5;
- (SBCornerFingerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 corner:(unint64_t)a5 classifier:(id)a6;
- (int64_t)_touchInterfaceOrientation;
- (unint64_t)edges;
- (void)_SBLogTouchesWithMethodName:(id)a3 withMethodName:(id)a4;
- (void)_convertReferenceLocation:(CGPoint)a3 toOrientedLocation:(CGPoint *)a4 orientedBounds:(CGRect *)a5;
- (void)reset;
- (void)setEdges:(unint64_t)a3;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBCornerFingerPanGestureRecognizer

- (SBCornerFingerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 corner:(unint64_t)a5 classifier:(id)a6
{
  v11 = a6;
  v12 = MEMORY[0x277CF0CA8];
  v13 = a3;
  v14 = [v12 sharedInstance];
  v15 = [v14 homeButtonType];

  if (v15 == 2)
  {
    v16 = 5;
  }

  else
  {
    v16 = 3;
  }

  v24.receiver = self;
  v24.super_class = SBCornerFingerPanGestureRecognizer;
  v17 = [(SBScreenEdgePanGestureRecognizer *)&v24 initWithTarget:v13 action:a4 type:v16 options:0];

  if (v17)
  {
    v18 = objc_alloc_init(SBTouchHistory);
    touchHistory = v17->_touchHistory;
    v17->_touchHistory = v18;

    v17->_corner = a5;
    objc_storeStrong(&v17->_classifier, a6);
    [(SBCornerFingerPanGestureRecognizer *)v17 setMaximumNumberOfTouches:1];
    [(SBCornerFingerPanGestureRecognizer *)v17 setAllowedTouchTypes:&unk_28336F168];
    v20 = v17->_corner - 1;
    if (v20 > 7)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_21F8A8BC0[v20];
    }

    v23.receiver = v17;
    v23.super_class = SBCornerFingerPanGestureRecognizer;
    [(UIScreenEdgePanGestureRecognizer *)&v23 setEdges:v21];
  }

  return v17;
}

- (BOOL)_shouldBegin
{
  v37.receiver = self;
  v37.super_class = SBCornerFingerPanGestureRecognizer;
  if (![(SBCornerFingerPanGestureRecognizer *)&v37 _shouldBegin])
  {
    LOBYTE(v7) = 0;
    v8 = @"rejected by super";
    goto LABEL_24;
  }

  v35 = 0.0;
  v36 = 0.0;
  memset(&v34, 0, sizeof(v34));
  [(SBCornerFingerPanGestureRecognizer *)self _convertReferenceLocation:&v35 toOrientedLocation:&v34 orientedBounds:self->_firstTouchReferenceLocation.x, self->_firstTouchReferenceLocation.y];
  corner = self->_corner;
  if (corner > 3)
  {
    if (corner == 4)
    {
      MinX = CGRectGetMinX(v34);
    }

    else
    {
      if (corner != 8)
      {
LABEL_10:
        v10 = [MEMORY[0x277CCA890] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"SBCornerFingerPanGestureRecognizer.m" lineNumber:184 description:@"_corner incorrectly configured"];

        MaxY = 0.0;
        MaxX = 0.0;
        goto LABEL_14;
      }

      MinX = CGRectGetMaxX(v34);
    }

    MaxX = MinX;
    MaxY = CGRectGetMaxY(v34);
    goto LABEL_14;
  }

  if (corner == 1)
  {
    MaxX = *MEMORY[0x277CBF348];
    MaxY = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_14;
  }

  if (corner != 2)
  {
    goto LABEL_10;
  }

  MaxX = CGRectGetMaxX(v34);
  MaxY = CGRectGetMinY(v34);
LABEL_14:
  v11 = vabdd_f64(v35, MaxX);
  v12 = vabdd_f64(v36, MaxY);
  if (v11 >= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = SBMainScreenPointsPerMillimeter();
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
  [(SBCornerFingerPanGestureRecognizer *)self _convertReferenceVector:self->_corner toCorner:[(SBCornerFingerPanGestureRecognizer *)self _touchInterfaceOrientation] orientation:v15, v16];
    ;
  }

    ;
  }

  v7 = [(SBCornerFingerGestureClassifier *)self->_classifier classifySwipeWithOffsettedAngle:([(SBCornerFingerPanGestureRecognizer *)self _touchInterfaceOrientation]- 1) < 2 distanceToCorner:i portrait:j];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = @"rejected by classifier";
  }

LABEL_24:
  v21 = [(UIScreenEdgePanGestureRecognizer *)self touchedEdges];
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
  v23 = v22;
  v25 = v24;
  v26 = [MEMORY[0x277D6A798] sharedInstance];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__SBCornerFingerPanGestureRecognizer__shouldBegin__block_invoke;
  v28[3] = &unk_2783C50A8;
  v33 = v7;
  v28[4] = self;
  v29 = v8;
  v30 = v21;
  v31 = v23;
  v32 = v25;
  [v26 logBlock:v28];

  return v7;
}

id __50__SBCornerFingerPanGestureRecognizer__shouldBegin__block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = @"[SBCornerFingerPanGestureRecognizer _shouldBegin]";
  v19[0] = @"shouldBegin";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  v20[0] = v16;
  v19[1] = @"address";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v20[1] = v2;
  v19[2] = @"name";
  v3 = [*(a1 + 32) name];
  v4 = v3;
  v5 = &stru_283094718;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_283094718;
  }

  v7 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  v20[2] = v6;
  v20[3] = v5;
  v19[3] = @"failureReason";
  v19[4] = @"touchedEdges";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v20[4] = v8;
  v19[5] = @"touchVector";
  v17[0] = @"x";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[1] = @"y";
  v18[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[5] = v11;
  v19[6] = @"corner";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 536)];
  v20[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];
  v22[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  return v14;
}

- (void)_convertReferenceLocation:(CGPoint)a3 toOrientedLocation:(CGPoint *)a4 orientedBounds:(CGRect *)a5
{
  v16 = [(SBCornerFingerPanGestureRecognizer *)self view];
  [(SBCornerFingerPanGestureRecognizer *)self _touchInterfaceOrientation];
  [v16 bounds];
  _UIWindowConvertPointFromOrientationToOrientation();
  v9 = v8;
  v11 = v10;
  _UIWindowConvertRectFromOrientationToOrientation();
  if (a4)
  {
    a4->x = v9;
    a4->y = v11;
  }

  if (a5)
  {
    a5->origin.x = v12;
    a5->origin.y = v13;
    a5->size.width = v14;
    a5->size.height = v15;
  }
}

- (CGVector)_convertReferenceVector:(CGVector)a3 toCorner:(unint64_t)a4 orientation:(int64_t)a5
{
  dy = a3.dy;
  dx = a3.dx;
  if (a5 > 2)
  {
    v9 = -a3.dy;
    v10 = -dx;
    if (a5 == 3)
    {
      v11 = dy;
    }

    else
    {
      v10 = dy;
      v11 = dx;
    }

    if (a5 == 4)
    {
      dy = dx;
    }

    else
    {
      dy = v10;
    }

    if (a5 == 4)
    {
      dx = v9;
    }

    else
    {
      dx = v11;
    }
  }

  else if (a5)
  {
    v9 = -a3.dx;
    if (a5 == 2)
    {
      dy = -a3.dy;
      dx = -dx;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SBCornerFingerPanGestureRecognizer.m" lineNumber:285 description:@"dealing with unknown orientation"];
  }

  corner = self->_corner;
  if (corner > 3)
  {
    if (corner == 8)
    {
      dx = -dx;
    }

    else if (corner != 4)
    {
      goto LABEL_22;
    }

    dy = -dy;
    goto LABEL_25;
  }

  if (corner != 1)
  {
    if (corner == 2)
    {
      dx = -dx;
      goto LABEL_25;
    }

LABEL_22:
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SBCornerFingerPanGestureRecognizer.m" lineNumber:304 description:@"_corner incorrectly configured"];
  }

LABEL_25:
  v15 = dx;
  v16 = dy;
  result.dy = v16;
  result.dx = v15;
  return result;
}

- (int64_t)_touchInterfaceOrientation
{
  touchInterfaceOrientationWhenGestureBegan = self->_touchInterfaceOrientationWhenGestureBegan;
  if (!touchInterfaceOrientationWhenGestureBegan)
  {
    v4.receiver = self;
    v4.super_class = SBCornerFingerPanGestureRecognizer;
    return [(SBScreenEdgePanGestureRecognizer *)&v4 _touchInterfaceOrientation];
  }

  return touchInterfaceOrientationWhenGestureBegan;
}

- (unint64_t)edges
{
  v2 = self->_corner - 1;
  if (v2 > 7)
  {
    return 0;
  }

  else
  {
    return qword_21F8A8BC0[v2];
  }
}

- (void)setEdges:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBCornerFingerPanGestureRecognizer.m" lineNumber:326 description:@"edges are readonly"];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  [v9 locationInView:0];
  self->_firstTouchReferenceLocation.x = v10;
  self->_firstTouchReferenceLocation.y = v11;
  v12 = [v7 coalescedTouchesForTouch:v9];
  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v12, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_1(v12, self);
  v13 = NSStringFromSelector(a2);
  [(SBCornerFingerPanGestureRecognizer *)self _SBLogTouchesWithMethodName:v8 withMethodName:v13];

  v14.receiver = self;
  v14.super_class = SBCornerFingerPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v14 touchesBegan:v8 withEvent:v7];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  v10 = [v7 coalescedTouchesForTouch:v9];

  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_1(v10, self);
  v11 = NSStringFromSelector(a2);
  [(SBCornerFingerPanGestureRecognizer *)self _SBLogTouchesWithMethodName:v8 withMethodName:v11];

  v12.receiver = self;
  v12.super_class = SBCornerFingerPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v12 touchesMoved:v8 withEvent:v7];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  v10 = [v7 coalescedTouchesForTouch:v9];

  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_1(v10, self);
  v11 = NSStringFromSelector(a2);
  [(SBCornerFingerPanGestureRecognizer *)self _SBLogTouchesWithMethodName:v8 withMethodName:v11];

  v12.receiver = self;
  v12.super_class = SBCornerFingerPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v12 touchesEnded:v8 withEvent:v7];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBCornerFingerPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v3 reset];
  self->_touchInterfaceOrientationWhenGestureBegan = 0;
  self->_firstTouchReferenceLocation = *MEMORY[0x277CBF348];
  [(SBTouchHistory *)self->_touchHistory reset];
}

- (void)setState:(int64_t)a3
{
  if (a3 == 1)
  {
    self->_touchInterfaceOrientationWhenGestureBegan = [(SBCornerFingerPanGestureRecognizer *)self _touchInterfaceOrientation];
  }

  v5 = [MEMORY[0x277D6A798] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SBCornerFingerPanGestureRecognizer_setState___block_invoke;
  v7[3] = &unk_2783B7B08;
  v7[4] = self;
  v7[5] = a3;
  [v5 logBlock:v7];

  v6.receiver = self;
  v6.super_class = SBCornerFingerPanGestureRecognizer;
  [(SBCornerFingerPanGestureRecognizer *)&v6 setState:a3];
}

id __47__SBCornerFingerPanGestureRecognizer_setState___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBCornerFingerPanGestureRecognizer setState:]";
  v11[0] = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v6 = v4;
  }

  v12[2] = v6;
  v11[3] = @"corner";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 536)];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (void)_SBLogTouchesWithMethodName:(id)a3 withMethodName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D6A798] sharedInstance];
  v9 = [v8 isEnabled];

  if (v9)
  {
    v10 = [MEMORY[0x277D6A798] sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SBCornerFingerPanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke;
    v11[3] = &unk_2783B74D0;
    v12 = v6;
    v13 = self;
    v14 = v7;
    [v10 logBlock:v11];
  }
}

id __81__SBCornerFingerPanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = a1;
  obj = *(a1 + 32);
  v38 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v38)
  {
    v36 = *v47;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v46 + 1) + 8 * i);
        v4 = _SBLocationForTouch(v3);
        v6 = v5;
        v54[0] = @"timestamp";
        v7 = MEMORY[0x277CCABB0];
        [v3 timestamp];
        v45 = [v7 numberWithDouble:?];
        v55[0] = v45;
        v54[1] = @"phase";
        v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "phase")}];
        v55[1] = v44;
        v54[2] = @"tapCount";
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "tapCount")}];
        v55[2] = v43;
        v54[3] = @"type";
        v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "type")}];
        v55[3] = v42;
        v54[4] = @"majorRadius";
        v8 = MEMORY[0x277CCABB0];
        [v3 majorRadius];
        v41 = [v8 numberWithDouble:?];
        v55[4] = v41;
        v54[5] = @"majorRadiusToTolerance";
        v9 = MEMORY[0x277CCABB0];
        [v3 majorRadiusTolerance];
        v40 = [v9 numberWithDouble:?];
        v55[5] = v40;
        v54[6] = @"force";
        v10 = MEMORY[0x277CCABB0];
        [v3 force];
        v39 = [v10 numberWithDouble:?];
        v55[6] = v39;
        v54[7] = @"maximumPossibleForce";
        v11 = MEMORY[0x277CCABB0];
        [v3 maximumPossibleForce];
        v12 = [v11 numberWithDouble:?];
        v55[7] = v12;
        v54[8] = @"altitudeAngle";
        v13 = MEMORY[0x277CCABB0];
        [v3 altitudeAngle];
        v14 = [v13 numberWithDouble:?];
        v55[8] = v14;
        v54[9] = @"estimationUpdateIndex";
        v15 = [v3 estimationUpdateIndex];
        v16 = v15;
        v17 = &unk_283372560;
        if (v15)
        {
          v17 = v15;
        }

        v55[9] = v17;
        v54[10] = @"estimatedProperties";
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "estimatedProperties")}];
        v55[10] = v18;
        v54[11] = @"estimatedPropertiesExpectingUpdates";
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "estimatedPropertiesExpectingUpdates")}];
        v55[11] = v19;
        v54[12] = @"location";
        v52[0] = @"x";
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
        v52[1] = @"y";
        v53[0] = v20;
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
        v53[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v55[12] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:13];

        [v37 addObject:v23];
      }

      v38 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v38);
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v24 stringWithFormat:@"[%@ %@]", v26, *(v34 + 48)];

  v51[0] = v37;
  v50[0] = v27;
  v50[1] = @"address";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v34 + 40)];
  v51[1] = v28;
  v50[2] = @"name";
  v29 = [*(v34 + 40) name];
  v30 = v29;
  v31 = &stru_283094718;
  if (v29)
  {
    v31 = v29;
  }

  v51[2] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

  return v32;
}

@end