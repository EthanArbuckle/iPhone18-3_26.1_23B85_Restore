@interface PageActionButton
- (_TtC9SeymourUI16PageActionButton)initWithFrame:(CGRect)frame;
@end

@implementation PageActionButton

- (_TtC9SeymourUI16PageActionButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC9SeymourUI16PageActionButton_buttonState;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 3;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16PageActionButton_style) = 0;
  __asm { FMOV            V0.2D, #14.0 }

  *(&self->super.super.super.super + OBJC_IVAR____TtC9SeymourUI16PageActionButton_styleProvider) = _Q0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16PageActionButton_minimumHeightConstraint) = 0;
  v14.receiver = self;
  v14.super_class = type metadata accessor for PageActionButton();
  return [(PageActionButton *)&v14 initWithFrame:x, y, width, height];
}

@end