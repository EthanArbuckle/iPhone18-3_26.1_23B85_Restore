@interface PuffView
- (_TtC10StickersUI8PuffView)initWithCoder:(id)a3;
- (_TtC10StickersUI8PuffView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PuffView

- (void)layoutSubviews
{
  v2 = self;
  sub_26BA93A60();
}

- (_TtC10StickersUI8PuffView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI8PuffView_angle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI8PuffView_favorsCenter) = 0;
  v3 = self + OBJC_IVAR____TtC10StickersUI8PuffView_delegate;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI8PuffView____lazy_storage___imageView) = 0;
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

- (_TtC10StickersUI8PuffView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end