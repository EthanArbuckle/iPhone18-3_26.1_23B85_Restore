@interface UIPlatformGlassInteractionView
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView)initWithFrame:(CGRect)frame;
@end

@implementation UIPlatformGlassInteractionView

- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = sub_18A4A5B68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  coderCopy = coder;
  sub_18A4A5B58();
  (*(v7 + 32))(self + OBJC_IVAR____TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView_coreInteractions, v9, v6);
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(UICoreGraphicsView *)&v13 initWithCoder:coderCopy];

  if (v11)
  {
  }

  return v11;
}

- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7430UIPlatformGlassInteractionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end