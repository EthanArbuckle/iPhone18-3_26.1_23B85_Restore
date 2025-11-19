@interface SessionIntensityView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI20SessionIntensityView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SessionIntensityView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label);
  v5 = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SessionIntensityView();
  v2 = v6.receiver;
  [(SessionIntensityView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label;
  [*&v2[OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label] sizeToFit];
  v4 = *&v2[v3];
  [v4 bounds];
  Width = CGRectGetWidth(v7);
  [*&v2[v3] bounds];
  [v4 setFrame_];
}

- (_TtC9SeymourUI20SessionIntensityView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end