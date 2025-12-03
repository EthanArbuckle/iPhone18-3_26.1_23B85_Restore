@interface SBHomeGesturePanGestureRecognizer
+ (SBHomeGesturePanGestureRecognizer)homeGesturePanGestureRecognizerWithTarget:(id)target action:(SEL)action;
- (BOOL)_isOutsideOfExclusionTrapezoid;
- (BOOL)_shouldBegin;
- (BOOL)_shouldBlockHomeGestureForKeyboardInputMode:(id)mode;
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (SBHomeGesturePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options;
- (SBHomeGesturePanGestureRecognizerInterfaceDelegate)interfaceDelegate;
- (UIView)viewForTouchHistory;
- (id)_currentExclusionShapeForEdge:(unint64_t)edge;
- (id)_currentKeyboardExclusionCompositeShape;
- (int64_t)_touchInterfaceOrientation;
- (void)_SBLogTouchesWithMethodName:(id)name withMethodName:(id)methodName;
- (void)_setUpExclusionTrapezoids;
- (void)_updateHomeGestureParameters;
- (void)reset;
- (void)sb_commonInitHomeGesturePanGestureRecognizer;
- (void)setPreventHorizontalSwipesOutsideTrapezoid:(BOOL)trapezoid;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBHomeGesturePanGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBHomeGesturePanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v3 reset];
  [(SBTouchHistory *)self->_touchHistory reset];
}

- (UIView)viewForTouchHistory
{
  delegate = [(SBHomeGesturePanGestureRecognizer *)self delegate];
  v4 = [delegate viewForSystemGestureRecognizer:self];

  return v4;
}

- (int64_t)_touchInterfaceOrientation
{
  interfaceDelegate = [(SBHomeGesturePanGestureRecognizer *)self interfaceDelegate];
  v4 = interfaceDelegate;
  if (interfaceDelegate)
  {
    _touchInterfaceOrientation = [interfaceDelegate touchInterfaceOrientationForGestureRecognizer:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHomeGesturePanGestureRecognizer;
    _touchInterfaceOrientation = [(SBScreenEdgePanGestureRecognizer *)&v8 _touchInterfaceOrientation];
  }

  v6 = _touchInterfaceOrientation;

  return v6;
}

- (SBHomeGesturePanGestureRecognizerInterfaceDelegate)interfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceDelegate);

  return WeakRetained;
}

- (BOOL)_shouldBegin
{
  v35 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SBHomeGesturePanGestureRecognizer;
  if ([(SBHomeGesturePanGestureRecognizer *)&v28 _shouldBegin])
  {
    _isOutsideOfExclusionTrapezoid = [(SBHomeGesturePanGestureRecognizer *)self _isOutsideOfExclusionTrapezoid];
    if (_isOutsideOfExclusionTrapezoid)
    {
      v4 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        name = [(SBHomeGesturePanGestureRecognizer *)self name];
        *buf = 138412802;
        v30 = v6;
        v31 = 2048;
        selfCopy3 = self;
        v33 = 2112;
        v34 = name;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Preventing the <%@:%p> (%@) because the touch is moving vertically and outside of trapezoidal exclusion area.", buf, 0x20u);
      }

      v8 = @"HomeGesturePreventedByExclusionTrapezoid";
    }

    else
    {
      v8 = 0;
    }

    v9 = !_isOutsideOfExclusionTrapezoid;
    if ([MEMORY[0x277D75658] isOnScreen])
    {
      isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
    }

    else
    {
      isInHardwareKeyboardMode = 1;
    }

    if ([SBApp isTypingActive] && (isInHardwareKeyboardMode & 1) == 0)
    {
      _touchInterfaceOrientation = [(SBHomeGesturePanGestureRecognizer *)self _touchInterfaceOrientation];
      mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
      currentInputModeInPreference = [mEMORY[0x277D75688] currentInputModeInPreference];

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v16 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          name2 = [(SBHomeGesturePanGestureRecognizer *)self name];
          *buf = 138412802;
          v30 = v18;
          v31 = 2048;
          selfCopy3 = self;
          v33 = 2112;
          v34 = name2;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Preventing the <%@:%p> (%@) because user is typing.", buf, 0x20u);
        }

        v8 = @"HomeGesturePreventedByiPadKeyboard";
      }

      else
      {
        if ((_touchInterfaceOrientation - 3) > 1 || ![(SBHomeGesturePanGestureRecognizer *)self _shouldBlockHomeGestureForKeyboardInputMode:currentInputModeInPreference])
        {
          goto LABEL_23;
        }

        v16 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          name3 = [(SBHomeGesturePanGestureRecognizer *)self name];
          *buf = 138412802;
          v30 = v21;
          v31 = 2048;
          selfCopy3 = self;
          v33 = 2112;
          v34 = name3;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Preventing the <%@:%p> (%@) because user is typing on 10-key keyboard in landscape.", buf, 0x20u);
        }

        v8 = @"HomeGesturePreventedByLandscape10Key";
      }

      v9 = 0;
LABEL_23:
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__SBHomeGesturePanGestureRecognizer__shouldBegin__block_invoke;
  v25[3] = &unk_2783B74F8;
  v27 = v9;
  v25[4] = self;
  v26 = v8;
  [mEMORY[0x277D6A798] logBlock:v25];

  return v9;
}

- (void)sb_commonInitHomeGesturePanGestureRecognizer
{
  [(SBHomeGesturePanGestureRecognizer *)self setAllowedTouchTypes:&unk_28336E478];
  [(SBHomeGesturePanGestureRecognizer *)self sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  v3 = objc_alloc_init(SBTouchHistory);
  touchHistory = self->_touchHistory;
  self->_touchHistory = v3;

  v5 = +[SBHomeGestureDomain rootSettings];
  homeGestureSettings = self->_homeGestureSettings;
  self->_homeGestureSettings = v5;

  [(PTSettings *)self->_homeGestureSettings addKeyObserver:self];
  self->_preventHorizontalSwipesOutsideTrapezoid = 1;
  self->_installedAsSystemGesture = 1;
  [(SBHomeGesturePanGestureRecognizer *)self setMaximumNumberOfTouches:1];

  [(SBHomeGesturePanGestureRecognizer *)self _updateHomeGestureParameters];
}

- (void)_updateHomeGestureParameters
{
  [(SBHomeGestureSettings *)self->_homeGestureSettings hysteresis];
  [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:?];

  [(SBHomeGesturePanGestureRecognizer *)self _setUpExclusionTrapezoids];
}

- (void)_setUpExclusionTrapezoids
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    exclusionTrapezoidSettings = [(SBHomeGestureSettings *)self->_homeGestureSettings exclusionTrapezoidSettings];
    [exclusionTrapezoidSettings landscapeTrapezoidBaseHeight];
    v4 = v3;
    [exclusionTrapezoidSettings landscapeTrapezoidHeight];
    v6 = v5;
    [exclusionTrapezoidSettings landscapeTrapezoidAdjacentXDistanceFromEdge];
    v8 = v7;
    [exclusionTrapezoidSettings landscapeTrapezoidOpposingXDistanceFromEdge];
    v10 = v9;
    if ([exclusionTrapezoidSettings allowHorizontalSwipesOutsideLandscapeTrapezoid])
    {
      v11 = !self->_preventHorizontalSwipesOutsideTrapezoid;
    }

    else
    {
      v11 = 0;
    }

    v12 = [SBFluidSwitcherGestureExclusionTrapezoid exclusionTrapezoidWithBaseHeight:v11 trapezoidHeight:v4 adjacentBaseXDistanceFromEdge:v6 opposingBaseXDistanceFromEdge:v8 allowHorizontalSwipesOutsideTrapezoid:v10];
    landscapeExclusionTrapezoid = self->_landscapeExclusionTrapezoid;
    self->_landscapeExclusionTrapezoid = v12;

    [exclusionTrapezoidSettings portraitTrapezoidBaseHeight];
    v15 = v14;
    [exclusionTrapezoidSettings portraitTrapezoidHeight];
    v17 = v16;
    [exclusionTrapezoidSettings portraitTrapezoidAdjacentXDistanceFromEdge];
    v19 = v18;
    [exclusionTrapezoidSettings portraitTrapezoidOpposingXDistanceFromEdge];
    v21 = v20;
    if ([exclusionTrapezoidSettings allowHorizontalSwipesOutsidePortraitTrapezoid])
    {
      v22 = !self->_preventHorizontalSwipesOutsideTrapezoid;
    }

    else
    {
      v22 = 0;
    }

    v23 = [SBFluidSwitcherGestureExclusionTrapezoid exclusionTrapezoidWithBaseHeight:v22 trapezoidHeight:v15 adjacentBaseXDistanceFromEdge:v17 opposingBaseXDistanceFromEdge:v19 allowHorizontalSwipesOutsideTrapezoid:v21];
    portraitExclusionTrapezoid = self->_portraitExclusionTrapezoid;
    self->_portraitExclusionTrapezoid = v23;
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
    v11[2] = __80__SBHomeGesturePanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke;
    v11[3] = &unk_2783B74D0;
    v12 = nameCopy;
    selfCopy = self;
    v14 = methodNameCopy;
    [mEMORY[0x277D6A798]2 logBlock:v11];
  }
}

id __80__SBHomeGesturePanGestureRecognizer__SBLogTouchesWithMethodName_withMethodName___block_invoke(uint64_t a1)
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
        v17 = &unk_283371000;
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

+ (SBHomeGesturePanGestureRecognizer)homeGesturePanGestureRecognizerWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = +[SBHomeGestureDomain rootSettings];
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  v9 = [mEMORY[0x277CF0CA8] homeButtonType] == 2;

  if (([v7 recognizeAlongEdge] & v9) != 0)
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  v11 = [[self alloc] initWithTarget:targetCopy action:action type:v10 options:_os_feature_enabled_impl()];

  return v11;
}

- (SBHomeGesturePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = SBHomeGesturePanGestureRecognizer;
  v6 = [(SBScreenEdgePanGestureRecognizer *)&v9 initWithTarget:target action:action type:type options:options];
  v7 = v6;
  if (v6)
  {
    [(SBHomeGesturePanGestureRecognizer *)v6 sb_commonInitHomeGesturePanGestureRecognizer];
  }

  return v7;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  viewForTouchHistory = [(SBHomeGesturePanGestureRecognizer *)self viewForTouchHistory];
  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, viewForTouchHistory, 1);
  _SBLogCoalescedTouchesForGestureAndView(v10, self);
  v12 = NSStringFromSelector(a2);
  [(SBHomeGesturePanGestureRecognizer *)self _SBLogTouchesWithMethodName:beganCopy withMethodName:v12];

  v13.receiver = self;
  v13.super_class = SBHomeGesturePanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v13 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  anyObject = [movedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  viewForTouchHistory = [(SBHomeGesturePanGestureRecognizer *)self viewForTouchHistory];
  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, viewForTouchHistory, 1);
  _SBLogCoalescedTouchesForGestureAndView(v10, self);
  v12 = NSStringFromSelector(a2);
  [(SBHomeGesturePanGestureRecognizer *)self _SBLogTouchesWithMethodName:movedCopy withMethodName:v12];

  v13.receiver = self;
  v13.super_class = SBHomeGesturePanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v13 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  anyObject = [endedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];

  viewForTouchHistory = [(SBHomeGesturePanGestureRecognizer *)self viewForTouchHistory];
  _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v10, self, viewForTouchHistory, 1);
  _SBLogCoalescedTouchesForGestureAndView(v10, self);
  v12 = NSStringFromSelector(a2);
  [(SBHomeGesturePanGestureRecognizer *)self _SBLogTouchesWithMethodName:endedCopy withMethodName:v12];

  v13.receiver = self;
  v13.super_class = SBHomeGesturePanGestureRecognizer;
  [(UIScreenEdgePanGestureRecognizer *)&v13 touchesEnded:endedCopy withEvent:eventCopy];
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:duration];
  result.y = v4;
  result.x = v3;
  return result;
}

id __49__SBHomeGesturePanGestureRecognizer__shouldBegin__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBHomeGesturePanGestureRecognizer _shouldBegin]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
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
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (void)setPreventHorizontalSwipesOutsideTrapezoid:(BOOL)trapezoid
{
  if (self->_preventHorizontalSwipesOutsideTrapezoid != trapezoid)
  {
    self->_preventHorizontalSwipesOutsideTrapezoid = trapezoid;
    [(SBHomeGesturePanGestureRecognizer *)self _setUpExclusionTrapezoids];
  }
}

- (id)_currentKeyboardExclusionCompositeShape
{
  if (objc_opt_respondsToSelector())
  {
    homeGestureExclusionZones = [MEMORY[0x277D75658] homeGestureExclusionZones];
  }

  else
  {
    homeGestureExclusionZones = MEMORY[0x277CBEBF8];
  }

  v3 = [SBFluidSwitcherGestureExclusionCompositeShape exclusionCompositeShapeWithRects:homeGestureExclusionZones allowHorizontalSwipes:1];

  return v3;
}

- (BOOL)_isOutsideOfExclusionTrapezoid
{
  v3 = [(SBHomeGesturePanGestureRecognizer *)self _currentExclusionShapeForEdge:SBScreenOrientedEdgeForHomeGestureRecognizer(self)];
  if (v3)
  {
    SBInterfaceOrientationOfTouchedEdgeForHomeGestureRecognizer(self);
    view = [(SBHomeGesturePanGestureRecognizer *)self view];
    [view bounds];

    view2 = [(SBHomeGesturePanGestureRecognizer *)self view];
    [(SBHomeGesturePanGestureRecognizer *)self locationInView:view2];

    if (!self->_installedAsSystemGesture)
    {
      view3 = [(SBHomeGesturePanGestureRecognizer *)self view];
      window = [view3 window];
      [window interfaceOrientation];
    }

    _UIWindowConvertPointFromOrientationToOrientation();
    v10 = v9;
    v12 = v11;
    _UIWindowConvertRectFromOrientationToOrientation();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
    v6 = [v3 shouldBeginGestureAtStartingPoint:v10 velocity:v12 bounds:{v21, v22, v14, v16, v18, v20}] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_currentExclusionShapeForEdge:(unint64_t)edge
{
  edgeCopy = edge;
  if (UIKeyboardAutomaticIsOnScreen())
  {
    _currentKeyboardExclusionCompositeShape = [(SBHomeGesturePanGestureRecognizer *)self _currentKeyboardExclusionCompositeShape];
    goto LABEL_12;
  }

  exclusionTrapezoidSettings = [(SBHomeGestureSettings *)self->_homeGestureSettings exclusionTrapezoidSettings];
  v7 = exclusionTrapezoidSettings;
  if ((edgeCopy & 0xA) != 0)
  {
    if ([exclusionTrapezoidSettings landscapeTrapezoidEnabled])
    {
      v8 = &OBJC_IVAR___SBHomeGesturePanGestureRecognizer__landscapeExclusionTrapezoid;
LABEL_10:
      _currentKeyboardExclusionCompositeShape = *(&self->super.super.super.super.super.isa + *v8);
      goto LABEL_11;
    }
  }

  else if ([exclusionTrapezoidSettings portraitTrapezoidEnabled] && (objc_msgSend(v7, "portraitTrapezoidEnabledOnlyForKeyboards") & 1) == 0)
  {
    v8 = &OBJC_IVAR___SBHomeGesturePanGestureRecognizer__portraitExclusionTrapezoid;
    goto LABEL_10;
  }

  _currentKeyboardExclusionCompositeShape = 0;
LABEL_11:

LABEL_12:

  return _currentKeyboardExclusionCompositeShape;
}

- (BOOL)_shouldBlockHomeGestureForKeyboardInputMode:(id)mode
{
  softwareLayout = [mode softwareLayout];
  if ([softwareLayout isEqualToString:@"Kana"] & 1) != 0 || (objc_msgSend(softwareLayout, "isEqualToString:", @"Kana-Flick") & 1) != 0 || (objc_msgSend(softwareLayout, "isEqualToString:", @"Korean10Key"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [softwareLayout isEqualToString:@"Pinyin10-Simplified"];
  }

  return v4;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  homeGestureSettings = self->_homeGestureSettings;
  if (homeGestureSettings == settingsCopy || ([(SBHomeGestureSettings *)homeGestureSettings exclusionTrapezoidSettings], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == settingsCopy))
  {
    [(SBHomeGesturePanGestureRecognizer *)self _updateHomeGestureParameters];
  }
}

@end