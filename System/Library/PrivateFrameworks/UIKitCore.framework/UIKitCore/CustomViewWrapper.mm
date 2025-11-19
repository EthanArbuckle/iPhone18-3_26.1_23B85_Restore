@interface CustomViewWrapper
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithCoder:(id)a3;
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation CustomViewWrapper

- (void)didMoveToWindow
{
  v2 = self;
  sub_1890B3744();
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(UIView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end