@interface ParentAppClipCodeView
- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithCoder:(id)coder;
- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithFrame:(CGRect)frame;
@end

@implementation ParentAppClipCodeView

- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(ParentAppClipCodeView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(ParentAppClipCodeView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end