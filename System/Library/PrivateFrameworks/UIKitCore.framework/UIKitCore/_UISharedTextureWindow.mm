@interface _UISharedTextureWindow
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithCoder:(id)coder;
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithFrame:(CGRect)frame;
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithWindowScene:(id)scene;
@end

@implementation _UISharedTextureWindow

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(UIWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C122_UISharedTextureWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end