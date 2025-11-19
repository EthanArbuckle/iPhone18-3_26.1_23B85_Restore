@interface SessionPlatterMetricContainer
- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithCoder:(id)a3;
- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SessionPlatterMetricContainer

- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SessionPlatterMetricContainer();
  v2 = v6.receiver;
  [(SessionPlatterMetricContainer *)&v6 layoutSubviews];
  sub_20BD825A8();
  v3 = OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView;
  v4 = [*&v2[OBJC_IVAR____TtC9SeymourUI29SessionPlatterMetricContainer_contentView] layer];
  [v4 setAnchorPoint_];

  v5 = [*&v2[v3] layer];
  [v5 setPosition_];
}

- (_TtC9SeymourUI29SessionPlatterMetricContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end