@interface SBScreenEdgePanGestureRecognizer
- (BOOL)isLocationWithinGrabberActiveZone;
- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 type:(int64_t)a5 options:(unint64_t)a6;
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

- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = SBScreenEdgePanGestureRecognizer;
  v4 = [(UIScreenEdgePanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SBScreenEdgePanGestureRecognizer *)v4 sb_commonInitScreenEdgePanGestureRecognizer];
  }

  return v5;
}

- (SBScreenEdgePanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 type:(int64_t)a5 options:(unint64_t)a6
{
  v9.receiver = self;
  v9.super_class = SBScreenEdgePanGestureRecognizer;
  v6 = [(UIScreenEdgePanGestureRecognizer *)&v9 initWithTarget:a3 action:a4 type:a5 options:a6];
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
  v3 = [(SBScreenEdgePanGestureRecognizer *)self delegate];
  v4 = [v3 viewForSystemGestureRecognizer:self];

  _UISystemGestureLocationInView();
  v6 = v5;
  v8 = v7;
  [v4 bounds];
  MidX = CGRectGetMidX(v17);
  [(SBScreenEdgePanGestureRecognizer *)self grabberActiveZoneWidth];
  v11 = v10;
  v12 = [(UIScreenEdgePanGestureRecognizer *)self edges];
  v13 = (v12 & 0xA) == 0;
  if (vabdd_f64(v8, MidX) <= v11)
  {
    v13 = 1;
  }

  v14 = vabdd_f64(v6, MidX) <= v11 && v13;
  if ((v12 & 5) != 0)
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