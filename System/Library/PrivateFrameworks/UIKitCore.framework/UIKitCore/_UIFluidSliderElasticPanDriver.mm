@interface _UIFluidSliderElasticPanDriver
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSString)name;
- (UIView)view;
- (_UIFluidSliderDirectDrivingDelegate)delegate;
- (_UIFluidSliderDrivable)drivable;
- (void)cancel;
- (void)handleGesture:(id)gesture;
- (void)setEnabled:(BOOL)enabled;
- (void)setName:(id)name;
- (void)setPanGestureRecognizer:(id)recognizer;
- (void)setView:(id)view;
@end

@implementation _UIFluidSliderElasticPanDriver

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188BFDAE0(view);
}

- (void)setEnabled:(BOOL)enabled
{
  *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_enabled) = enabled;
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

- (void)setPanGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
  *(self + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
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

- (void)setName:(id)name
{
  v4 = sub_18A4A7288();
  v5 = (self + OBJC_IVAR____UIFluidSliderElasticPanDriver_name);
  *v5 = v4;
  v5[1] = v6;
}

- (void)cancel
{
  selfCopy = self;
  sub_188F10EFC();
}

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_188F11020(gestureCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_188F12244(beginCopy);

  return self & 1;
}

@end