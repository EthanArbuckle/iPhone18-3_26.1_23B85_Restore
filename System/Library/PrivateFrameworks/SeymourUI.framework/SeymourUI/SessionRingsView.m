@interface SessionRingsView
- (_TtC9SeymourUI16SessionRingsView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)displayHighlightWithDuration:(double)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
@end

@implementation SessionRingsView

- (void)didMoveToSuperview
{
  v2 = self;
  sub_20B810FC4();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B812020();
}

- (_TtC9SeymourUI16SessionRingsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)displayHighlightWithDuration:(double)a3
{
  v4 = self;
  sub_20B813C5C(a3);
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionRingsView();
  v2 = v3.receiver;
  [(SessionRingsView *)&v3 safeAreaInsetsDidChange];
  sub_20B814BD8();
  sub_20B812538();
}

@end