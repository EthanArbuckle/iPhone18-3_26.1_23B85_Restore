@interface NCInternalToolsOverlayView
+ (id)debugViewIfInternal;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NCInternalToolsOverlayView)initWithFrame:(CGRect)frame;
- (NCInternalToolsOverlayViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleLongPress:(id)press;
- (void)layoutSubviews;
- (void)setBackgroundBlurView:(id)view;
- (void)setDebugHUDVisible:(BOOL)visible;
- (void)setFeedbackGenerator:(id)generator;
- (void)setOverlayButton:(id)button;
- (void)setTimeoutTimer:(id)timer;
@end

@implementation NCInternalToolsOverlayView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  NCInternalToolsOverlayView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  doubleTapLongPressRecognizer = [(NCInternalToolsOverlayView *)self doubleTapLongPressRecognizer];

  if (doubleTapLongPressRecognizer == recognizerCopy)
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

- (void)setOverlayButton:(id)button
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_overlayButton);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_overlayButton) = button;
  buttonCopy = button;
}

- (void)setFeedbackGenerator:(id)generator
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator) = generator;
  generatorCopy = generator;
}

- (void)setTimeoutTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer) = timer;
  timerCopy = timer;
}

- (void)setBackgroundBlurView:(id)view
{
  v4 = *(self + OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView);
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView) = view;
  viewCopy = view;
}

- (void)setDebugHUDVisible:(BOOL)visible
{
  *(self + OBJC_IVAR___NCInternalToolsOverlayView_debugHUDVisible) = visible;
  selfCopy = self;
  sub_21E8B2740();
  [(NCInternalToolsOverlayView *)selfCopy setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  NCInternalToolsOverlayView.layoutSubviews()();
}

- (NCInternalToolsOverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = NCInternalToolsOverlayView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  state = [pressCopy state];
  if (state == 3)
  {
    sub_21E8B3858();
  }

  else if (state == 1)
  {
    [pressCopy locationInView_];
    sub_21E8B35DC();
  }
}

@end