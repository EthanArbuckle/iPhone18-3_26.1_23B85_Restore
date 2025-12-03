@interface ScrollableStackViewContainer
- (_TtC9SeymourUI28ScrollableStackViewContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ScrollableStackViewContainer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BC91410();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20BC9156C(change);
}

- (_TtC9SeymourUI28ScrollableStackViewContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_20BC91914(scrollCopy);
}

@end