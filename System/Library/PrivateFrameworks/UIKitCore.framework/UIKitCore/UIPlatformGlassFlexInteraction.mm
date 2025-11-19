@interface UIPlatformGlassFlexInteraction
- (BOOL)flexInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassFlexInteraction)init;
- (void)flexInteraction:(id)a3 didIssueUpdate:(id)a4;
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

- (void)flexInteraction:(id)a3 didIssueUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890A450C(v7);
}

- (BOOL)flexInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  v7 = [(_UIFlexInteraction *)v6 view];
  if (v7)
  {
    v8 = v7;
    [(UIView *)v7 bounds];
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