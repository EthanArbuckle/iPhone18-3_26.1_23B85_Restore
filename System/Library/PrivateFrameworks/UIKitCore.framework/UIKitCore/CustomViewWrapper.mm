@interface CustomViewWrapper
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithCoder:(id)coder;
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation CustomViewWrapper

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1890B3744();
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end