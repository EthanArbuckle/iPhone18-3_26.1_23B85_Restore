@interface PoofAnimationView
- (_TtC10StickersUI17PoofAnimationView)initWithCoder:(id)coder;
- (_TtC10StickersUI17PoofAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PoofAnimationView

- (_TtC10StickersUI17PoofAnimationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_puffs) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_count) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI17PoofAnimationView_completionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_26BA918E8();
}

- (_TtC10StickersUI17PoofAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end