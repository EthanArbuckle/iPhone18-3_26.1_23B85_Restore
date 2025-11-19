@interface ToolbarAccessibilityHUDAssistant
- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC5UIKit32ToolbarAccessibilityHUDAssistant)init;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4;
- (void)setupHUDGestureIfNecessary;
@end

@implementation ToolbarAccessibilityHUDAssistant

- (void)setupHUDGestureIfNecessary
{
  v2 = self;
  sub_188AF1D24();
}

- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1890A566C(v7);

  return v9 & 1;
}

- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1890A50D8(v7, x, y);
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  v7 = sub_1890A5210();
  if (v7)
  {
    v8 = v7;
    v9 = *(&v6->super.isa + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view);
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