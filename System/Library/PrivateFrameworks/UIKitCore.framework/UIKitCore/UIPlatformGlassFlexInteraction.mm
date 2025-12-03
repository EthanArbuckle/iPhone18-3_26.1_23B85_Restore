@interface UIPlatformGlassFlexInteraction
- (BOOL)flexInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point;
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction)init;
- (void)flexInteraction:(id)interaction didIssueUpdate:(id)update;
@end

@implementation UIPlatformGlassFlexInteraction

- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction)init
{
  ObjectType = swift_getObjectType();
  v4 = &self->_UIFlexInteraction_opaque[OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_cornerRadii];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction_proxy;
  v6 = sub_18A4A5968();
  (*(*(v6 - 8) + 56))(&self->_UIFlexInteraction_opaque[v5], 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(_UIFlexInteraction *)&v8 init];
}

- (void)flexInteraction:(id)interaction didIssueUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  selfCopy = self;
  sub_1890A450C(updateCopy);
}

- (BOOL)flexInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  view = [(_UIFlexInteraction *)selfCopy view];
  if (view)
  {
    v8 = view;
    [(UIView *)view bounds];
    v12.size.width = 0.0;
    v12.size.height = 0.0;
    v12.origin.x = x;
    v12.origin.y = y;
    v9 = CGRectContainsRect(v11, v12);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end