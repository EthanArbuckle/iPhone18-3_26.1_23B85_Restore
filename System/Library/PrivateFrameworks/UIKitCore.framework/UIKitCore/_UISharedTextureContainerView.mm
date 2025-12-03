@interface _UISharedTextureContainerView
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)frame;
@end

@implementation _UISharedTextureContainerView

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UISharedTextureContainerView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UISharedTextureContainerView();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end