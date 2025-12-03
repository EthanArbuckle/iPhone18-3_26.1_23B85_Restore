@interface SBFluidSwitcherPanGestureRecognizer
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (CGPoint)initialTouchLocation;
- (SBFluidSwitcherPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SBFluidSwitcherViewController)switcherViewController;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBFluidSwitcherPanGestureRecognizer

- (SBFluidSwitcherPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherPanGestureRecognizer;
  v4 = [(SBPanSystemGestureRecognizer *)&v8 initWithTarget:target action:action];
  if (v4)
  {
    v5 = objc_alloc_init(SBTouchHistory);
    touchHistory = v4->_touchHistory;
    v4->_touchHistory = v5;

    [(SBFluidSwitcherPanGestureRecognizer *)v4 setMaximumNumberOfTouches:1];
    [(SBFluidSwitcherPanGestureRecognizer *)v4 setAllowedTouchTypes:&unk_28336E400];
    [(SBFluidSwitcherPanGestureRecognizer *)v4 sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  }

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  view = [WeakRetained view];

  touchHistory = self->_touchHistory;
  anyObject = [beganCopy anyObject];
  v12 = [eventCopy coalescedTouchesForTouch:anyObject];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v12, self, view, self->_installedAsSystemGesture);

  v15.receiver = self;
  v15.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v15 touchesBegan:beganCopy withEvent:eventCopy];

  [(SBFluidSwitcherPanGestureRecognizer *)self locationInView:view];
  self->_initialTouchLocation.x = v13;
  self->_initialTouchLocation.y = v14;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  touchHistory = self->_touchHistory;
  eventCopy = event;
  movedCopy = moved;
  anyObject = [movedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  view = [WeakRetained view];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v10, self, view, self->_installedAsSystemGesture);

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBFluidSwitcherPanGestureRecognizer *)&v13 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  touchHistory = self->_touchHistory;
  eventCopy = event;
  endedCopy = ended;
  anyObject = [endedCopy anyObject];
  v10 = [eventCopy coalescedTouchesForTouch:anyObject];
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  view = [WeakRetained view];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v10, self, view, self->_installedAsSystemGesture);

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBFluidSwitcherPanGestureRecognizer *)&v13 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v3 reset];
  [(SBTouchHistory *)self->_touchHistory reset];
  [(SBFluidSwitcherPanGestureRecognizer *)self setInitialTouchLeafAppLayout:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self setSelectedEdge:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self setHasEdgeResizeSeenTouchOutsideHittestedView:0];
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:duration];
  result.y = v4;
  result.x = v3;
  return result;
}

- (SBFluidSwitcherViewController)switcherViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);

  return WeakRetained;
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