@interface UIPlatformGlassBridgingInteration
- (UIView)view;
- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7433UIPlatformGlassBridgingInteration)init;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation UIPlatformGlassBridgingInteration

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C4D9A8(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188C4DCD8(view);
}

- (_TtC5UIKitP33_F83AB3ECBB2C378B4FCEB681A4D7DB7433UIPlatformGlassBridgingInteration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end