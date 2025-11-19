@interface SBReachabilityGestureRecognizer
- (CGPoint)initialTouchLocation;
- (SBReachabilityGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (SBReachabilityGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = SBReachabilityGestureRecognizer;
  v4 = [(SBReachabilityGestureRecognizer *)&v11 initWithTarget:a3 action:a4];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v19 touchesBegan:v6 withEvent:v7];
  v8 = [v6 anyObject];
  v9 = [(SBReachabilityGestureRecognizer *)self view];
  [v8 locationInView:v9];
  v11 = v10;
  v13 = v12;
  if ([v6 count] < 2 && (objc_msgSend(v9, "bounds"), v15 = v14, -[SBReachabilitySettings systemWideSwipeDownHeight](self->_settings, "systemWideSwipeDownHeight"), v13 >= v15 - v16))
  {
    v17 = [v6 anyObject];
    v18 = [v7 coalescedTouchesForTouch:v17];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v18, self, v9, 0);
    objc_storeStrong(&self->_activeTouch, v8);
    self->_initialTouchLocation.x = v11;
    self->_initialTouchLocation.y = v13;
    self->_everTranslatedUpwards = v13 - v13 < -10.0;
  }

  else
  {
    [(SBReachabilityGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v19 touchesMoved:v6 withEvent:v7];
  v8 = [v6 anyObject];
  if ([v6 count] <= 1 && v8 == self->_activeTouch)
  {
    v9 = [(SBReachabilityGestureRecognizer *)self view];
    [(UITouch *)v8 locationInView:v9];
    v11 = v10;
    x = self->_initialTouchLocation.x;
    v14 = v13 - self->_initialTouchLocation.y;
    v15 = [v6 anyObject];
    v16 = [v7 coalescedTouchesForTouch:v15];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v16, self, v9, 0);
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v48.receiver = self;
  v48.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v48 touchesEnded:v6 withEvent:v7];
  v8 = [v6 anyObject];
  if ([v6 count] <= 1 && v8 == self->_activeTouch)
  {
    v9 = [(SBReachabilityGestureRecognizer *)self view];
    [(UITouch *)v8 locationInView:v9];
    v11 = v10;
    v13 = v12;
    y = self->_initialTouchLocation.y;
    x = self->_initialTouchLocation.x;
    v14 = [v6 anyObject];
    v15 = [v7 coalescedTouchesForTouch:v14];

    _SBUpdateTouchHistoryWithCoalescedTouches(self->_touchHistory, v15, self, v9, 0);
    [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
    v17 = v16;
    v19 = v18;
    [v9 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v9 safeAreaInsets];
    v29 = v23 + v28;
    v32 = v25 - (v30 + v31);
    v49.size.height = v27 - (v28 + v33);
    v49.origin.x = v21 + v30;
    v49.origin.y = v29;
    v49.size.width = v32;
    v34 = CGRectContainsPoint(v49, self->_initialTouchLocation);
    [v9 bounds];
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBReachabilityGestureRecognizer;
  [(SBReachabilityGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
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