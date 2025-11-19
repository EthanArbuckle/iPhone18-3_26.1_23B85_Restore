@interface UICoreHostingKeyboardTrackingElement
- (BOOL)prepareKeyboardWithSize:(CGSize)a3 inWindow:(id)a4;
- (_TtC5UIKit36UICoreHostingKeyboardTrackingElement)init;
- (void)updateKeyboard;
@end

@implementation UICoreHostingKeyboardTrackingElement

- (BOOL)prepareKeyboardWithSize:(CGSize)a3 inWindow:(id)a4
{
  height = a3.height;
  width = a3.width;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a4;
    v11 = self;
    v12 = sub_188DA084C(v10, width, height);
  }

  else
  {
    return 0;
  }

  return v12;
}

- (void)updateKeyboard
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_188F92F10();
  }
}

- (_TtC5UIKit36UICoreHostingKeyboardTrackingElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end