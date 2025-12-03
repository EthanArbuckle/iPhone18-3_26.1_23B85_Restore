@interface SBReachabilityGestureRecognizer
- (CGPoint)initialTouchLocation;
- (SBReachabilityGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBReachabilityGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v3 reset];
  self->_everTranslatedUpwards = 0;
  self->_movedPastHysteresis = 0;
  [(SBTouchHistory *)self->_touchHistory reset];
}

- (SBReachabilityGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v11.receiver = self;
  v11.super_class = SBReachabilityGestureRecognizer;
  v4 = [(SBReachabilityGestureRecognizer *)&v11 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBReachabilityGestureRecognizer *)v4 _setRequiresSystemGesturesToFail:0];
    [(SBReachabilityGestureRecognizer *)v5 setDelaysTouchesBegan:1];
    [(SBReachabilityGestureRecognizer *)v5 setCancelsTouchesInView:1];
    v6 = objc_alloc_init(SBTouchHistory);
    touchHistory = v5->_touchHistory;
    v5->_touchHistory = v6;

    v8 = +[SBReachabilityDomain rootSettings];
    settings = v5->_settings;
    v5->_settings = v8;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v19 touchesBegan:beganCopy withEvent:eventCopy];
  anyObject = [beganCopy anyObject];
  view = [(SBReachabilityGestureRecognizer *)self view];
  [anyObject locationInView:view];
  v11 = v10;
  v13 = v12;
  if ([beganCopy count] < 2 && (objc_msgSend(view, "bounds"), v15 = v14, -[SBReachabilitySettings systemWideSwipeDownHeight](self->_settings, "systemWideSwipeDownHeight"), v13 >= v15 - v16))
  {
    anyObject2 = [beganCopy anyObject];
    v18 = [eventCopy coalescedTouchesForTouch:anyObject2];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v18, self, view, 0);
    objc_storeStrong(&self->_activeTouch, anyObject);
    self->_initialTouchLocation.x = v11;
    self->_initialTouchLocation.y = v13;
    self->_everTranslatedUpwards = v13 - v13 < -10.0;
  }

  else
  {
    [(SBReachabilityGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v19 touchesMoved:movedCopy withEvent:eventCopy];
  anyObject = [movedCopy anyObject];
  if ([movedCopy count] <= 1 && anyObject == self->_activeTouch)
  {
    view = [(SBReachabilityGestureRecognizer *)self view];
    [(UITouch *)anyObject locationInView:view];
    v11 = v10;
    x = self->_initialTouchLocation.x;
    v14 = v13 - self->_initialTouchLocation.y;
    anyObject2 = [movedCopy anyObject];
    v16 = [eventCopy coalescedTouchesForTouch:anyObject2];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v16, self, view, 0);
    if (!self->_everTranslatedUpwards)
    {
      self->_everTranslatedUpwards = v14 < -10.0;
    }

    if (!self->_movedPastHysteresis)
    {
      v17 = fabs(v14);
      if (fabs(v11 - x) > 10.0 || v17 > 10.0)
      {
        self->_movedPastHysteresis = 1;
      }
    }
  }

  else
  {
    [(SBReachabilityGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v48.receiver = self;
  v48.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v48 touchesEnded:endedCopy withEvent:eventCopy];
  anyObject = [endedCopy anyObject];
  if ([endedCopy count] <= 1 && anyObject == self->_activeTouch)
  {
    view = [(SBReachabilityGestureRecognizer *)self view];
    [(UITouch *)anyObject locationInView:view];
    v11 = v10;
    v13 = v12;
    y = self->_initialTouchLocation.y;
    x = self->_initialTouchLocation.x;
    anyObject2 = [endedCopy anyObject];
    v15 = [eventCopy coalescedTouchesForTouch:anyObject2];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v15, self, view, 0);
    [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
    v17 = v16;
    v19 = v18;
    [view bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [view safeAreaInsets];
    v29 = v23 + v28;
    v32 = v25 - (v30 + v31);
    v49.size.height = v27 - (v28 + v33);
    v49.origin.x = v21 + v30;
    v49.origin.y = v29;
    v49.size.width = v32;
    v34 = CGRectContainsPoint(v49, self->_initialTouchLocation);
    [view bounds];
    if (self->_movedPastHysteresis && (everTranslatedUpwards = self->_everTranslatedUpwards, *v43 = v11, *&v43[1] = v13, *&v43[2] = v11 - x, *&v43[3] = v13 - y, v43[4] = v17, v43[5] = v19, v43[6] = v35, v43[7] = v36, v43[8] = v37, v43[9] = v38, v44 = v34, v45 = everTranslatedUpwards, v46 = 0, v47 = 0, SBReachabilityGestureShouldActivate(v43)))
    {
      [(SBReachabilityGestureRecognizer *)self setState:1];
      v40 = 3;
    }

    else
    {
      v40 = 5;
    }

    [(SBReachabilityGestureRecognizer *)self setState:v40];
  }

  else
  {
    [(SBReachabilityGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(SBReachabilityGestureRecognizer *)self setState:4];
}

- (CGPoint)initialTouchLocation
{
  x = self->_initialTouchLocation.x;
  y = self->_initialTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end