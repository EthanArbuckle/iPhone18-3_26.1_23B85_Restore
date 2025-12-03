@interface _UI3DPanGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)event;
- (BOOL)isVisionIdiom;
- (BOOL)willPanZ;
- (CAPoint3D)centroid3DOfTouches:(id)touches excludingEnded:(BOOL)ended;
- (CAPoint3D)current3DLocationInScene;
- (CAPoint3D)initial3DLocationInScene;
- (NSArray)movingTouches;
- (_UI3DPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_didUpdateCentroidWithTouches:(id)touches event:(id)event;
- (void)handleTouchesEndedWithOldMovingTouches:(id)touches;
- (void)process3DTouchesMoved:(id)moved withEvent:(id)event;
- (void)update3DTouchesCentroid:(id)centroid;
@end

@implementation _UI3DPanGestureRecognizer

- (CAPoint3D)initial3DLocationInScene
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____UI3DPanGestureRecognizer_initial3DLocationInScene);
  v3 = *(&self->super.super._gestureFlags + OBJC_IVAR____UI3DPanGestureRecognizer_initial3DLocationInScene);
  v4 = *(&self->super.super._gestureFlags + OBJC_IVAR____UI3DPanGestureRecognizer_initial3DLocationInScene + 8);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CAPoint3D)current3DLocationInScene
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____UI3DPanGestureRecognizer_current3DLocationInScene);
  v3 = *(&self->super.super._gestureFlags + OBJC_IVAR____UI3DPanGestureRecognizer_current3DLocationInScene);
  v4 = *(&self->super.super._gestureFlags + OBJC_IVAR____UI3DPanGestureRecognizer_current3DLocationInScene + 8);
  result.z = v4;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)willPanZ
{
  selfCopy = self;
  [(_UI3DPanGestureRecognizer *)selfCopy current3DLocationInScene];
  v4 = v3;
  [(_UI3DPanGestureRecognizer *)selfCopy initial3DLocationInScene];
  v6 = vabdd_f64(v4, v5);
  [(UIPanGestureRecognizer *)selfCopy _hysteresis];
  v8 = v7;

  return v8 <= v6;
}

- (BOOL)isVisionIdiom
{
  selfCopy = self;
  view = [(UIGestureRecognizer *)selfCopy view];
  if (view)
  {
    v4 = view;
    traitCollection = [(UIView *)view traitCollection];

    userInterfaceIdiom = [(UITraitCollection *)traitCollection userInterfaceIdiom];
    return userInterfaceIdiom == 6;
  }

  else
  {

    return 0;
  }
}

- (void)_didUpdateCentroidWithTouches:(id)touches event:(id)event
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  eventCopy = event;
  selfCopy = self;
  if ([(_UI3DPanGestureRecognizer *)selfCopy isVisionIdiom])
  {
    v7 = sub_18A4A7798();

    [(_UI3DPanGestureRecognizer *)selfCopy process3DTouchesMoved:v7 withEvent:eventCopy];
  }

  else
  {
  }
}

- (NSArray)movingTouches
{
  selfCopy = self;
  _movingTouches = [(UIPanGestureRecognizer *)selfCopy _movingTouches];
  if (_movingTouches)
  {
    v4 = _movingTouches;
    sub_188A34624(0, &qword_1EA9342F0);
    sub_18A4A7548();

    selfCopy = v4;
  }

  sub_188A34624(0, &qword_1EA9342F0);
  v5 = sub_18A4A7518();

  return v5;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = _UI3DPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v4 _shouldTryToBeginWithEvent:event];
  return 1;
}

- (void)handleTouchesEndedWithOldMovingTouches:(id)touches
{
  if (touches)
  {
    sub_188A34624(0, &qword_1EA9342F0);
    v4 = sub_18A4A7548();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_188EC3F6C(v4);
}

- (void)process3DTouchesMoved:(id)moved withEvent:(id)event
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  v6 = sub_18A4A77A8();
  eventCopy = event;
  selfCopy = self;
  sub_188EC48C4(v6);
}

- (void)update3DTouchesCentroid:(id)centroid
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  selfCopy = self;
  sub_188EC4208();
}

- (CAPoint3D)centroid3DOfTouches:(id)touches excludingEnded:(BOOL)ended
{
  endedCopy = ended;
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  v5 = sub_18A4A7798();

  v6 = _CentroidOfTouches(v5, endedCopy);
  v8 = v7;

  v9 = 0.0;
  v10 = v6;
  v11 = v8;
  result.z = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (_UI3DPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return _UI3DPanGestureRecognizer.init(target:action:)(v6, action);
}

@end