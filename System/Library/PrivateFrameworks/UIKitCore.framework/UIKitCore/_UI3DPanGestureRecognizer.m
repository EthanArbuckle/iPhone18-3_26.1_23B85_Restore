@interface _UI3DPanGestureRecognizer
- (BOOL)_shouldTryToBeginWithEvent:(id)a3;
- (BOOL)isVisionIdiom;
- (BOOL)willPanZ;
- (CAPoint3D)centroid3DOfTouches:(id)a3 excludingEnded:(BOOL)a4;
- (CAPoint3D)current3DLocationInScene;
- (CAPoint3D)initial3DLocationInScene;
- (NSArray)movingTouches;
- (_UI3DPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_didUpdateCentroidWithTouches:(id)a3 event:(id)a4;
- (void)handleTouchesEndedWithOldMovingTouches:(id)a3;
- (void)process3DTouchesMoved:(id)a3 withEvent:(id)a4;
- (void)update3DTouchesCentroid:(id)a3;
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
  v2 = self;
  [(_UI3DPanGestureRecognizer *)v2 current3DLocationInScene];
  v4 = v3;
  [(_UI3DPanGestureRecognizer *)v2 initial3DLocationInScene];
  v6 = vabdd_f64(v4, v5);
  [(UIPanGestureRecognizer *)v2 _hysteresis];
  v8 = v7;

  return v8 <= v6;
}

- (BOOL)isVisionIdiom
{
  v2 = self;
  v3 = [(UIGestureRecognizer *)v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIView *)v3 traitCollection];

    v6 = [(UITraitCollection *)v5 userInterfaceIdiom];
    return v6 == 6;
  }

  else
  {

    return 0;
  }
}

- (void)_didUpdateCentroidWithTouches:(id)a3 event:(id)a4
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  v6 = a4;
  v8 = self;
  if ([(_UI3DPanGestureRecognizer *)v8 isVisionIdiom])
  {
    v7 = sub_18A4A7798();

    [(_UI3DPanGestureRecognizer *)v8 process3DTouchesMoved:v7 withEvent:v6];
  }

  else
  {
  }
}

- (NSArray)movingTouches
{
  v2 = self;
  v3 = [(UIPanGestureRecognizer *)v2 _movingTouches];
  if (v3)
  {
    v4 = v3;
    sub_188A34624(0, &qword_1EA9342F0);
    sub_18A4A7548();

    v2 = v4;
  }

  sub_188A34624(0, &qword_1EA9342F0);
  v5 = sub_18A4A7518();

  return v5;
}

- (BOOL)_shouldTryToBeginWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UI3DPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v4 _shouldTryToBeginWithEvent:a3];
  return 1;
}

- (void)handleTouchesEndedWithOldMovingTouches:(id)a3
{
  if (a3)
  {
    sub_188A34624(0, &qword_1EA9342F0);
    v4 = sub_18A4A7548();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_188EC3F6C(v4);
}

- (void)process3DTouchesMoved:(id)a3 withEvent:(id)a4
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  v6 = sub_18A4A77A8();
  v7 = a4;
  v8 = self;
  sub_188EC48C4(v6);
}

- (void)update3DTouchesCentroid:(id)a3
{
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  v4 = self;
  sub_188EC4208();
}

- (CAPoint3D)centroid3DOfTouches:(id)a3 excludingEnded:(BOOL)a4
{
  v4 = a4;
  sub_188A34624(0, &qword_1EA9342F0);
  sub_188E405E8();
  sub_18A4A77A8();
  v5 = sub_18A4A7798();

  v6 = _CentroidOfTouches(v5, v4);
  v8 = v7;

  v9 = 0.0;
  v10 = v6;
  v11 = v8;
  result.z = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (_UI3DPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return _UI3DPanGestureRecognizer.init(target:action:)(v6, a4);
}

@end