@interface ToolbarAccessibilityHUDAssistant
- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)recognizer;
- (_TtC5UIKit32ToolbarAccessibilityHUDAssistant)init;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point;
- (void)setupHUDGestureIfNecessary;
@end

@implementation ToolbarAccessibilityHUDAssistant

- (void)setupHUDGestureIfNecessary
{
  selfCopy = self;
  sub_188AF1D24();
}

- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)recognizer
{
  managerCopy = manager;
  recognizerCopy = recognizer;
  selfCopy = self;
  v9 = sub_1890A566C(recognizerCopy);

  return v9 & 1;
}

- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  managerCopy = manager;
  selfCopy = self;
  sub_1890A50D8(managerCopy, x, y);
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v7 = sub_1890A5210();
  if (v7)
  {
    v8 = v7;
    v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 HUDItemForBarButtonItem:v8 atPoint:v11 inView:0 isBackButton:{x, y}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtC5UIKit32ToolbarAccessibilityHUDAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end