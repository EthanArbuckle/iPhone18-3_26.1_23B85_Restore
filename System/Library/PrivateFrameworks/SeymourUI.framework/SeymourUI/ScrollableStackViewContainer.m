@interface ScrollableStackViewContainer
- (_TtC9SeymourUI28ScrollableStackViewContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ScrollableStackViewContainer

- (void)layoutSubviews
{
  v2 = self;
  sub_20BC91410();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BC9156C(a3);
}

- (_TtC9SeymourUI28ScrollableStackViewContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BC91914(v4);
}

@end