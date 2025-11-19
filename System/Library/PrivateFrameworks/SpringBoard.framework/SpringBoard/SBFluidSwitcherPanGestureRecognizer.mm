@interface SBFluidSwitcherPanGestureRecognizer
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3;
- (CGPoint)initialTouchLocation;
- (SBFluidSwitcherPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SBFluidSwitcherViewController)switcherViewController;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBFluidSwitcherPanGestureRecognizer

- (SBFluidSwitcherPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherPanGestureRecognizer;
  v4 = [(SBPanSystemGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v9 = [WeakRetained view];

  touchHistory = self->_touchHistory;
  v11 = [v7 anyObject];
  v12 = [v6 coalescedTouchesForTouch:v11];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v12, self, v9, self->_installedAsSystemGesture);

  v15.receiver = self;
  v15.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBPanSystemGestureRecognizer *)&v15 touchesBegan:v7 withEvent:v6];

  [(SBFluidSwitcherPanGestureRecognizer *)self locationInView:v9];
  self->_initialTouchLocation.x = v13;
  self->_initialTouchLocation.y = v14;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  touchHistory = self->_touchHistory;
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  v10 = [v7 coalescedTouchesForTouch:v9];
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v12 = [WeakRetained view];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v10, self, v12, self->_installedAsSystemGesture);

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBFluidSwitcherPanGestureRecognizer *)&v13 touchesMoved:v8 withEvent:v7];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  touchHistory = self->_touchHistory;
  v7 = a4;
  v8 = a3;
  v9 = [v8 anyObject];
  v10 = [v7 coalescedTouchesForTouch:v9];
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v12 = [WeakRetained view];
  _SBUpdateTouchHistoryWithCoalescedTouches(touchHistory, v10, self, v12, self->_installedAsSystemGesture);

  v13.receiver = self;
  v13.super_class = SBFluidSwitcherPanGestureRecognizer;
  [(SBFluidSwitcherPanGestureRecognizer *)&v13 touchesEnded:v8 withEvent:v7];
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

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)a3
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:a3];
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