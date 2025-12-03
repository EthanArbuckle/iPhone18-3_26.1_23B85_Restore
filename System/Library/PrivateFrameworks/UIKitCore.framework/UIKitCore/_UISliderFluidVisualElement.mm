@interface _UISliderFluidVisualElement
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)cancelMouseTracking;
- (BOOL)cancelTouchTracking;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)driver:(id)driver shouldAdjustValueForProposedValue:(double)value adjustedValue:(double *)adjustedValue startValue:(double *)startValue endValue:(double *)endValue;
- (BOOL)driver:(id)driver shouldBeginAtPoint:(CGPoint)point;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)overrideTrackingState:(BOOL *)state;
- (CGRect)bounds;
- (CGRect)frame;
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGRect)valueTextRectForBounds:(CGRect)bounds;
- (UIEdgeInsets)thumbHitEdgeInsets;
- (UISlider)slider;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)maxTrackView;
- (void)didChangeMinimumTrackVisibleWithDuration:(double)duration;
- (void)didPerformLayout;
- (void)didSetFluidTrackHidden;
- (void)didSetMinimumValueImage;
- (void)didSetSpeedMultiplier;
- (void)didSetUserInteractionEnabled;
- (void)didSetValues;
- (void)didUpdateConfiguration;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)handleExpansionGesture:(id)gesture;
- (void)setChangeWithVolumeButtons:(BOOL)buttons;
- (void)setData:(id)data;
- (void)setSlider:(id)slider;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation _UISliderFluidVisualElement

- (CGRect)bounds
{
  sub_188BFB37C(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  sub_188BFB37C(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setSlider:(id)slider
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sliderCopy = slider;
    selfCopy = self;
    sub_188BFC124(v6);
  }
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  v3 = sub_188BFC40C(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, sub_188BFC490);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setData:(id)data
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data) = data;
  dataCopy = data;
  selfCopy = self;

  v6 = (*((*MEMORY[0x1E69E7D40] & *selfCopy) + 0x418))();
  sub_188BFEA2C(v6);
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
  v3 = sub_188BFC40C(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, sub_188BFFB58);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
  v3 = sub_188BFC40C(self, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, a2, sub_188BFFD10);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  selfCopy = self;
  sub_188DF801C(animated, value);
}

- (void)didSetUserInteractionEnabled
{
  selfCopy = self;
  sub_188BFEA30();
}

- (void)didUpdateConfiguration
{
  selfCopy = self;
  sub_188DFB43C();
}

- (void)didSetMinimumValueImage
{
  selfCopy = self;
  sub_188DFB8E4();
  sub_188BFB3D4(0);
}

- (UISlider)slider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setChangeWithVolumeButtons:(BOOL)buttons
{
  selfCopy = self;
  sub_188E96138(buttons);
}

- (void)handleExpansionGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_188E979CC(gestureCopy);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_188E98280(event, x, y);

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_188E985E0(beginCopy);

  return self & 1;
}

- (BOOL)driver:(id)driver shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x438);
  selfCopy = self;
  LOBYTE(v6) = v6(x, y);

  return v6 & 1;
}

- (BOOL)driver:(id)driver shouldAdjustValueForProposedValue:(double)value adjustedValue:(double *)adjustedValue startValue:(double *)startValue endValue:(double *)endValue
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(endValue) = sub_188E9C794(adjustedValue, startValue, endValue, value);
  swift_unknownObjectRelease();

  return endValue & 1;
}

- (void)didSetValues
{
  selfCopy = self;
  sub_188E98AB4();
}

- (void)didPerformLayout
{
  selfCopy = self;
  sub_188BFB3D4(0);
}

- (void)didChangeMinimumTrackVisibleWithDuration:(double)duration
{
  selfCopy = self;
  sub_188E98EE4(duration);
}

- (id)maxTrackView
{
  selfCopy = self;
  v3 = sub_188E991F8();

  return v3;
}

- (void)didSetFluidTrackHidden
{
  selfCopy = self;
  sub_188E992D4();
}

- (void)didSetSpeedMultiplier
{
  selfCopy = self;
  sub_188E993A8();
}

- (CGRect)valueTextRectForBounds:(CGRect)bounds
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIEdgeInsets)thumbHitEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)overrideTrackingState:(BOOL *)state
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x300))();
  if ((v5 & 1) == 0)
  {
    *state = *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging);
  }

  return (v5 & 1) == 0;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_188E9C91C(touchCopy);

  return v9 & 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_188E9CA04(touchCopy);

  return v9 & 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    selfCopy = self;
    v9 = v8;
    touchCopy = touch;
    eventCopy = event;
    [v9 setTracking_];
    if (touchCopy)
    {
      [v9 _sendActionsForEvents_withEvent_];
    }

    [v9 setHighlighted_];
  }
}

- (BOOL)cancelMouseTracking
{
  selfCopy = self;
  sub_188E99778();

  return 1;
}

- (BOOL)cancelTouchTracking
{
  selfCopy = self;
  sub_188E99828();

  return 1;
}

@end