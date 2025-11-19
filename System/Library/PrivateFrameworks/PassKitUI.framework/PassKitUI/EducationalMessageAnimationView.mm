@interface EducationalMessageAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI31EducationalMessageAnimationView)initWithCoder:(id)a3;
- (_TtC9PassKitUI31EducationalMessageAnimationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation EducationalMessageAnimationView

- (_TtC9PassKitUI31EducationalMessageAnimationView)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_rootLayer) size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for EducationalMessageAnimationView();
  v2 = v10.receiver;
  [(EducationalMessageAnimationView *)&v10 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_rootLayer;
  [*&v2[OBJC_IVAR____TtC9PassKitUI31EducationalMessageAnimationView_rootLayer] size];
  [*&v2[v7] setFrame_];
}

- (_TtC9PassKitUI31EducationalMessageAnimationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end