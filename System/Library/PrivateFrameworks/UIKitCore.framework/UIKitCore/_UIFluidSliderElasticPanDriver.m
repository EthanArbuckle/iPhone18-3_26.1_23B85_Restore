@interface _UIFluidSliderElasticPanDriver
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSString)name;
- (UIView)view;
- (_UIFluidSliderDirectDrivingDelegate)delegate;
- (_UIFluidSliderDrivable)drivable;
- (void)cancel;
- (void)handleGesture:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setPanGestureRecognizer:(id)a3;
- (void)setView:(id)a3;
@end

@implementation _UIFluidSliderElasticPanDriver

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188BFDAE0(a3);
}

- (void)setEnabled:(BOOL)a3
{
  *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_enabled) = a3;
  v3 = *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
  if (v3)
  {
    [v3 setEnabled_];
  }
}

- (_UIFluidSliderDrivable)drivable
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPanGestureRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
  *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer) = a3;
  v3 = a3;
}

- (_UIFluidSliderDirectDrivingDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)name
{

  v2 = sub_18A4A7258();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_18A4A7288();
  v5 = (self + OBJC_IVAR____UIFluidSliderElasticPanDriver_name);
  *v5 = v4;
  v5[1] = v6;
}

- (void)cancel
{
  v2 = self;
  sub_188F10EFC();
}

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)handleGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188F11020(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_188F12244(v4);

  return self & 1;
}

@end