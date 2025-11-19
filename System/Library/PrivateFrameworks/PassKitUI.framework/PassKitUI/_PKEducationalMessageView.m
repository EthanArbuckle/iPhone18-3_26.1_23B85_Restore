@interface _PKEducationalMessageView
- (BOOL)isConfigured;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_PKEducationalMessageView)initWithCoder:(id)a3;
- (_PKEducationalMessageView)initWithFrame:(CGRect)a3;
- (void)configureWith:(id)a3;
- (void)handleAction;
- (void)layoutSubviews;
@end

@implementation _PKEducationalMessageView

- (_PKEducationalMessageView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____PKEducationalMessageView_actionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____PKEducationalMessageView_actionButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____PKEducationalMessageView_animationView) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)configureWith:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD416E04(a3);
}

- (BOOL)isConfigured
{
  v2 = self;
  v3 = sub_1BD417738();

  return v3 & 1;
}

- (void)handleAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____PKEducationalMessageView_actionHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_1BD0D44B8(v2);
    v2(v4);

    sub_1BD0D4744(v2);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1BD417958(1, width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EducationalMessageView();
  v2 = v4.receiver;
  [(_PKEducationalMessageView *)&v4 layoutSubviews];
  [v2 bounds];
  sub_1BD417958(0, v3);
}

- (_PKEducationalMessageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end