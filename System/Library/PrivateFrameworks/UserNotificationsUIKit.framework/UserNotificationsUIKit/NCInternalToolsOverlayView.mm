@interface NCInternalToolsOverlayView
+ (id)debugViewIfInternal;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NCInternalToolsOverlayView)initWithFrame:(CGRect)a3;
- (NCInternalToolsOverlayViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handleLongPress:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundBlurView:(id)a3;
- (void)setDebugHUDVisible:(BOOL)a3;
- (void)setFeedbackGenerator:(id)a3;
- (void)setOverlayButton:(id)a3;
- (void)setTimeoutTimer:(id)a3;
@end

@implementation NCInternalToolsOverlayView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  NCInternalToolsOverlayView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCInternalToolsOverlayView *)self doubleTapLongPressRecognizer];

  if (v8 == v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = 1;
    }

    else
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass() != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)debugViewIfInternal
{
  if (os_variant_has_internal_content())
  {
    v2 = [objc_allocWithZone(NCInternalToolsOverlayView) init];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NCInternalToolsOverlayViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setOverlayButton:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_overlayButton);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_overlayButton) = a3;
  v3 = a3;
}

- (void)setFeedbackGenerator:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator) = a3;
  v3 = a3;
}

- (void)setTimeoutTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer) = a3;
  v3 = a3;
}

- (void)setBackgroundBlurView:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView) = a3;
  v3 = a3;
}

- (void)setDebugHUDVisible:(BOOL)a3
{
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_debugHUDVisible) = a3;
  v3 = self;
  sub_21E8B2740();
  [(NCInternalToolsOverlayView *)v3 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  NCInternalToolsOverlayView.layoutSubviews()();
}

- (NCInternalToolsOverlayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = NCInternalToolsOverlayView.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if (v5 == 3)
  {
    sub_21E8B3858();
  }

  else if (v5 == 1)
  {
    [v4 locationInView_];
    sub_21E8B35DC();
  }
}

@end