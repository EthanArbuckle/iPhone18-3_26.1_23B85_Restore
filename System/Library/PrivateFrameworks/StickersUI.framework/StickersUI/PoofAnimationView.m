@interface PoofAnimationView
- (_TtC10StickersUI17PoofAnimationView)initWithCoder:(id)a3;
- (_TtC10StickersUI17PoofAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PoofAnimationView

- (_TtC10StickersUI17PoofAnimationView)initWithCoder:(id)a3
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
  v2 = self;
  sub_26BA918E8();
}

- (_TtC10StickersUI17PoofAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end