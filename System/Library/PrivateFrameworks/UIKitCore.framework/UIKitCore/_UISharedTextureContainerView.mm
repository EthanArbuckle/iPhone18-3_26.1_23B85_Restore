@interface _UISharedTextureContainerView
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)a3;
- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)a3;
@end

@implementation _UISharedTextureContainerView

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _UISharedTextureContainerView();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C129_UISharedTextureContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UISharedTextureContainerView();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end