@interface _UISliderFluidVisualElement
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)cancelMouseTracking;
- (BOOL)cancelTouchTracking;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)driver:(id)a3 shouldAdjustValueForProposedValue:(double)a4 adjustedValue:(double *)a5 startValue:(double *)a6 endValue:(double *)a7;
- (BOOL)driver:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)overrideTrackingState:(BOOL *)a3;
- (CGRect)bounds;
- (CGRect)frame;
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGRect)valueTextRectForBounds:(CGRect)a3;
- (UIEdgeInsets)thumbHitEdgeInsets;
- (UISlider)slider;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)maxTrackView;
- (void)didChangeMinimumTrackVisibleWithDuration:(double)a3;
- (void)didPerformLayout;
- (void)didSetFluidTrackHidden;
- (void)didSetMinimumValueImage;
- (void)didSetSpeedMultiplier;
- (void)didSetUserInteractionEnabled;
- (void)didSetValues;
- (void)didUpdateConfiguration;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)handleExpansionGesture:(id)a3;
- (void)setChangeWithVolumeButtons:(BOOL)a3;
- (void)setData:(id)a3;
- (void)setSlider:(id)a3;
- (void)setValue:(float)a3 animated:(BOOL)a4;
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

- (void)setSlider:(id)a3
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    sub_188BFC124(v6);
  }
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  v3 = sub_188BFC40C(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, sub_188BFC490);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setData:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data) = a3;
  v5 = a3;
  v7 = self;

  v6 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x418))();
  sub_188BFEA2C(v6);
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
{
  v3 = sub_188BFC40C(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, sub_188BFFB58);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
{
  v3 = sub_188BFC40C(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, sub_188BFFD10);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_188DF801C(a4, a3);
}

- (void)didSetUserInteractionEnabled
{
  v1 = a1;
  sub_188BFEA30();
}

- (void)didUpdateConfiguration
{
  v2 = self;
  sub_188DFB43C();
}

- (void)didSetMinimumValueImage
{
  v1 = a1;
  sub_188DFB8E4();
  sub_188BFB3D4(0);
}

- (UISlider)slider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setChangeWithVolumeButtons:(BOOL)a3
{
  v4 = self;
  sub_188E96138(a3);
}

- (void)handleExpansionGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188E979CC(v4);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_188E98280(a4, x, y);

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_188E985E0(v4);

  return self & 1;
}

- (BOOL)driver:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = *((*MEMORY[0x1E69E7D40] & *self) + 0x438);
  v7 = self;
  LOBYTE(v6) = v6(x, y);

  return v6 & 1;
}

- (BOOL)driver:(id)a3 shouldAdjustValueForProposedValue:(double)a4 adjustedValue:(double *)a5 startValue:(double *)a6 endValue:(double *)a7
{
  swift_unknownObjectRetain();
  v12 = self;
  LOBYTE(a7) = sub_188E9C794(a5, a6, a7, a4);
  swift_unknownObjectRelease();

  return a7 & 1;
}

- (void)didSetValues
{
  v2 = self;
  sub_188E98AB4();
}

- (void)didPerformLayout
{
  v2 = self;
  sub_188BFB3D4(0);
}

- (void)didChangeMinimumTrackVisibleWithDuration:(double)a3
{
  v4 = self;
  sub_188E98EE4(a3);
}

- (id)maxTrackView
{
  v2 = self;
  v3 = sub_188E991F8();

  return v3;
}

- (void)didSetFluidTrackHidden
{
  v2 = self;
  sub_188E992D4();
}

- (void)didSetSpeedMultiplier
{
  v2 = self;
  sub_188E993A8();
}

- (CGRect)valueTextRectForBounds:(CGRect)a3
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

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
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

- (BOOL)overrideTrackingState:(BOOL *)a3
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x300))();
  if ((v5 & 1) == 0)
  {
    *a3 = *(self + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging);
  }

  return (v5 & 1) == 0;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188E9C91C(v6);

  return v9 & 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188E9CA04(v6);

  return v9 & 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v12 = self;
    v9 = v8;
    v10 = a3;
    v11 = a4;
    [v9 setTracking_];
    if (v10)
    {
      [v9 _sendActionsForEvents_withEvent_];
    }

    [v9 setHighlighted_];
  }
}

- (BOOL)cancelMouseTracking
{
  v2 = self;
  sub_188E99778();

  return 1;
}

- (BOOL)cancelTouchTracking
{
  v2 = self;
  sub_188E99828();

  return 1;
}

@end