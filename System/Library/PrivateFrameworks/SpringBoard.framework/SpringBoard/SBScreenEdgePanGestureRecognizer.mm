@interface SBScreenEdgePanGestureRecognizer
- (BOOL)isLocationWithinGrabberActiveZone;
- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options;
- (double)grabberActiveZoneWidth;
- (void)sb_commonInitScreenEdgePanGestureRecognizer;
@end

@implementation SBScreenEdgePanGestureRecognizer

- (void)sb_commonInitScreenEdgePanGestureRecognizer
{
  [(UIScreenEdgePanGestureRecognizer *)self _setHysteresis:10.0];
  [(SBScreenEdgePanGestureRecognizer *)self setMaximumNumberOfTouches:1];
  [(SBScreenEdgePanGestureRecognizer *)self setAllowedTouchTypes:&unk_28336ED48];
  v3 = _os_feature_enabled_impl();

  [(SBScreenEdgePanGestureRecognizer *)self sbf_setPencilTouchesAllowed:v3];
}

- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = SBScreenEdgePanGestureRecognizer;
  v4 = [(UIScreenEdgePanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBScreenEdgePanGestureRecognizer *)v4 sb_commonInitScreenEdgePanGestureRecognizer];
  }

  return v5;
}

- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = SBScreenEdgePanGestureRecognizer;
  v6 = [(UIScreenEdgePanGestureRecognizer *)&v9 initWithTarget:target action:action type:type options:options];
  v7 = v6;
  if (v6)
  {
    [(SBScreenEdgePanGestureRecognizer *)v6 sb_commonInitScreenEdgePanGestureRecognizer];
  }

  return v7;
}

- (double)grabberActiveZoneWidth
{
  result = self->_grabberActiveZoneWidth;
  if (result == 0.0)
  {
    return 100.0;
  }

  return result;
}

- (BOOL)isLocationWithinGrabberActiveZone
{
  delegate = [(SBScreenEdgePanGestureRecognizer *)self delegate];
  v4 = [delegate viewForSystemGestureRecognizer:self];

  _UISystemGestureLocationInView();
  v6 = v5;
  v8 = v7;
  [v4 bounds];
  MidX = CGRectGetMidX(v17);
  [(SBScreenEdgePanGestureRecognizer *)self grabberActiveZoneWidth];
  v11 = v10;
  edges = [(UIScreenEdgePanGestureRecognizer *)self edges];
  v13 = (edges & 0xA) == 0;
  if (vabdd_f64(v8, MidX) <= v11)
  {
    v13 = 1;
  }

  v14 = vabdd_f64(v6, MidX) <= v11 && v13;
  if ((edges & 5) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  return v15;
}

@end