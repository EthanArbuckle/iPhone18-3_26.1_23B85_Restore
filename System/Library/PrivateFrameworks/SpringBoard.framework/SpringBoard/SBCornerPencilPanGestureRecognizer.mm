@interface SBCornerPencilPanGestureRecognizer
+ (id)interactiveCornerPanGestureRecognizerWithSettings:(id)settings corner:(unint64_t)corner target:(id)target action:(SEL)action;
+ (unint64_t)_edgesForCorner:(unint64_t)corner;
- (BOOL)_isOrientedLocation:(CGPoint)location inCorner:(unint64_t)corner forOrientedBounds:(CGRect)bounds withEdgeOffsets:(UIOffset)offsets;
- (BOOL)shouldReceiveTouch:(id)touch;
- (UIOffset)_edgeOffsets;
- (id)_initWithSettings:(id)settings corner:(unint64_t)corner target:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options;
- (int64_t)_touchInterfaceOrientation;
- (void)_SBLogTouchesWithMethodName:(id)name withMethodName:(id)methodName;
- (void)_convertReferenceLocation:(CGPoint)location toOrientedLocation:(CGPoint *)orientedLocation orientedBounds:(CGRect *)bounds;
- (void)_updateSettingsDerivedValues:(id)values;
- (void)reset;
- (void)setEdges:(unint64_t)edges;
- (void)setState:(int64_t)state;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBCornerPencilPanGestureRecognizer

+ (unint64_t)_edgesForCorner:(unint64_t)corner
{
  if (corner - 1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6EC8[corner - 1];
  }
}

+ (id)interactiveCornerPanGestureRecognizerWithSettings:(id)settings corner:(unint64_t)corner target:(id)target action:(SEL)action
{
  targetCopy = target;
  settingsCopy = settings;
  v12 = [[self alloc] _initWithSettings:settingsCopy corner:corner target:targetCopy action:action type:3 options:1];

  return v12;
}

- (id)_initWithSettings:(id)settings corner:(unint64_t)corner target:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options
{
  settingsCopy = settings;
  targetCopy = target;
  v17 = [objc_opt_class() _edgesForCorner:corner];
  if (!v17)
  {
    [SBCornerPencilPanGestureRecognizer _initWithSettings:a2 corner:self target:? action:? type:? options:?];
  }

  v24.receiver = self;
  v24.super_class = SBCornerPencilPanGestureRecognizer;
  v18 = [(SBScreenEdgePanGestureRecognizer *)&v24 initWithTarget:targetCopy action:action type:type options:options];
  v19 = v18;
  if (v18)
  {
    [(SBCornerPencilPanGestureRecognizer *)v18 _updateSettingsDerivedValues:settingsCopy];
    [settingsCopy addKeyObserver:v19];
    v20 = objc_alloc_init(SBTouchHistory);
    touchHistory = v19->_touchHistory;
    v19->_touchHistory = v20;

    v19->_corner = corner;
    v23.receiver = v19;
    v23.super_class = SBCornerPencilPanGestureRecognizer;
    [(UIScreenEdgePanGestureRecognizer *)&v23 setEdges:v17];
    [(SBCornerPencilPanGestureRecognizer *)v19 setAllowedTouchTypes:&unk_28336E508];
    [(SBCornerPencilPanGestureRecognizer *)v19 setMaximumNumberOfTouches:1];
    [(UIScreenEdgePanGestureRecognizer *)v19 _setHysteresis:5.0];
  }

  return v19;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBCornerPencilPanGestureRecognizer *)self _updateSettingsDerivedValues:settingsCopy];
  }
}

- (void)_SBLogTouchesWithMethodName:(id)name withMethodName:(id)methodName
{
  nameCopy = name;
  methodNameCopy = methodName;
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SBCornerPencilPanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke;
    v11[3] = &unk_2783B74D0;
    v12 = nameCopy;
    selfCopy = self;
    v14 = methodNameCopy;
    [mEMORY[0x277D6A798]2 logBlock:v11];
  }
}

id __81__SBCornerPencilPanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke(uint64_t a1)
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
        v17 = &unk_283371060;
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

- (void)setEdges:(unint64_t)edges
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBCornerPencilPanGestureRecognizer.m" lineNumber:181 description:@"configure edges by passing in corner"];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_0(v10, self);
  v11 = NSStringFromSelector(a2);
  [(SBCornerPencilPanGestureRecognizer *)self _SBLogTouchesWithMethodName:beganCopy withMethodName:v11];

  v12.receiver = self;
  v12.super_class = SBCornerPencilPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v12 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  anyObject = [movedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_0(v10, self);
  v11 = NSStringFromSelector(a2);
  [(SBCornerPencilPanGestureRecognizer *)self _SBLogTouchesWithMethodName:movedCopy withMethodName:v11];

  v12.receiver = self;
  v12.super_class = SBCornerPencilPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v12 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  anyObject = [endedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, 0, 0);
  _SBLogCoalescedTouchesForGestureAndView_0(v10, self);
  v11 = NSStringFromSelector(a2);
  [(SBCornerPencilPanGestureRecognizer *)self _SBLogTouchesWithMethodName:endedCopy withMethodName:v11];

  v12.receiver = self;
  v12.super_class = SBCornerPencilPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v12 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBCornerPencilPanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v3 reset];
  self->_touchInterfaceOrientationWhenGestureBegan = 0;
  [(SBTouchHistory *)self->_touchHistory reset];
}

- (void)setState:(int64_t)state
{
  if (state == 1)
  {
    self->_touchInterfaceOrientationWhenGestureBegan = [(SBCornerPencilPanGestureRecognizer *)self _touchInterfaceOrientation];
  }

  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SBCornerPencilPanGestureRecognizer_setState___block_invoke;
  v7[3] = &unk_2783B7B08;
  v7[4] = self;
  v7[5] = state;
  [mEMORY[0x277D6A798] logBlock:v7];

  v6.receiver = self;
  v6.super_class = SBCornerPencilPanGestureRecognizer;
  [(SBCornerPencilPanGestureRecognizer *)&v6 setState:state];
}

id __47__SBCornerPencilPanGestureRecognizer_setState___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"[SBCornerPencilPanGestureRecognizer setState:]";
  v13[0] = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v14[0] = v2;
  v13[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v14[1] = v3;
  v13[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v6 = v4;
  }

  v14[2] = v6;
  v13[3] = @"horizontalEdgeLength";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 544)];
  v14[3] = v7;
  v13[4] = @"verticalEdgeLength";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 552)];
  v14[4] = v8;
  v13[5] = @"corner";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 536)];
  v14[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v11;
}

- (int64_t)_touchInterfaceOrientation
{
  touchInterfaceOrientationWhenGestureBegan = self->_touchInterfaceOrientationWhenGestureBegan;
  if (!touchInterfaceOrientationWhenGestureBegan)
  {
    v4.receiver = self;
    v4.super_class = SBCornerPencilPanGestureRecognizer;
    return [(SBScreenEdgePanGestureRecognizer *)&v4 _touchInterfaceOrientation];
  }

  return touchInterfaceOrientationWhenGestureBegan;
}

- (BOOL)shouldReceiveTouch:(id)touch
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0u;
  v9 = 0u;
  [touch locationInView:0];
  [(SBCornerPencilPanGestureRecognizer *)self _convertReferenceLocation:&v10 toOrientedLocation:&v8 orientedBounds:?];
  corner = self->_corner;
  [(SBCornerPencilPanGestureRecognizer *)self _edgeOffsets];
  return [(SBCornerPencilPanGestureRecognizer *)self _isOrientedLocation:corner inCorner:v10 forOrientedBounds:v11 withEdgeOffsets:v8, v9, v5, v6];
}

- (void)_updateSettingsDerivedValues:(id)values
{
  valuesCopy = values;
  [valuesCopy cornerHorizontalEdgeLength];
  self->_cornerHorizontalEdgeLength = v5;
  [valuesCopy cornerVerticalEdgeLength];
  v7 = v6;

  self->_cornerVerticalEdgeLength = v7;
}

- (void)_convertReferenceLocation:(CGPoint)location toOrientedLocation:(CGPoint *)orientedLocation orientedBounds:(CGRect *)bounds
{
  view = [(SBCornerPencilPanGestureRecognizer *)self view];
  [(SBCornerPencilPanGestureRecognizer *)self _touchInterfaceOrientation];
  [view bounds];
  _UIWindowConvertPointFromOrientationToOrientation();
  v9 = v8;
  v11 = v10;
  _UIWindowConvertRectFromOrientationToOrientation();
  if (orientedLocation)
  {
    orientedLocation->x = v9;
    orientedLocation->y = v11;
  }

  if (bounds)
  {
    bounds->origin.x = v12;
    bounds->origin.y = v13;
    bounds->size.width = v14;
    bounds->size.height = v15;
  }
}

- (UIOffset)_edgeOffsets
{
  cornerHorizontalEdgeLength = self->_cornerHorizontalEdgeLength;
  cornerVerticalEdgeLength = self->_cornerVerticalEdgeLength;
  result.vertical = cornerVerticalEdgeLength;
  result.horizontal = cornerHorizontalEdgeLength;
  return result;
}

- (BOOL)_isOrientedLocation:(CGPoint)location inCorner:(unint64_t)corner forOrientedBounds:(CGRect)bounds withEdgeOffsets:(UIOffset)offsets
{
  vertical = offsets.vertical;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = location.y;
  v12 = location.x;
  result = 0;
  if (corner > 3)
  {
    if (corner == 4)
    {
      if (location.x > offsets.horizontal + CGRectGetMinX(bounds))
      {
        return 0;
      }

      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      if (v12 < CGRectGetMinX(v20))
      {
        return 0;
      }
    }

    else
    {
      if (corner != 8)
      {
        return result;
      }

      if (location.x < CGRectGetMaxX(bounds) - offsets.horizontal)
      {
        return 0;
      }

      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      if (v12 > CGRectGetMaxX(v17))
      {
        return 0;
      }
    }

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    if (v11 >= CGRectGetMaxY(v21) - vertical)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      return v11 <= CGRectGetMaxY(v22);
    }

    return 0;
  }

  if (corner == 1)
  {
    if (location.x <= offsets.horizontal + CGRectGetMinX(bounds))
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MinX = CGRectGetMinX(v18);
      result = 0;
      if (v12 < MinX)
      {
        return result;
      }

      goto LABEL_14;
    }

    return 0;
  }

  if (corner != 2)
  {
    return result;
  }

  if (location.x < CGRectGetMaxX(bounds) - offsets.horizontal)
  {
    return 0;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxX = CGRectGetMaxX(v16);
  result = 0;
  if (v12 > MaxX)
  {
    return result;
  }

LABEL_14:
  if (v11 <= vertical)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    return v11 >= CGRectGetMinY(v19);
  }

  return result;
}

- (void)_initWithSettings:(uint64_t)a1 corner:(uint64_t)a2 target:action:type:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCornerPencilPanGestureRecognizer.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"configuredEdges != UIRectEdgeNone"}];
}

@end