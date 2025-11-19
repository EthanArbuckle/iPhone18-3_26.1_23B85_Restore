@interface ParentAppClipCodeView
- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithCoder:(id)a3;
- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithFrame:(CGRect)a3;
@end

@implementation ParentAppClipCodeView

- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(ParentAppClipCodeView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797221ParentAppClipCodeView_imageView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(ParentAppClipCodeView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end