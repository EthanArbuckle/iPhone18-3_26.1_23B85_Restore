@interface UICoreHostingKeyboardTrackingElement
- (BOOL)prepareKeyboardWithSize:(CGSize)size inWindow:(id)window;
- (_TtC5UIKit36UICoreHostingKeyboardTrackingElement)init;
- (void)updateKeyboard;
@end

@implementation UICoreHostingKeyboardTrackingElement

- (BOOL)prepareKeyboardWithSize:(CGSize)size inWindow:(id)window
{
  height = size.height;
  width = size.width;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    windowCopy = window;
    selfCopy = self;
    v12 = sub_188DA084C(windowCopy, width, height);
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
    selfCopy = self;
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