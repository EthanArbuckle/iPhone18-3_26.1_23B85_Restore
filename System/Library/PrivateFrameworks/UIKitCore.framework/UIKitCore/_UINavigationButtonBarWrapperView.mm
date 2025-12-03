@interface _UINavigationButtonBarWrapperView
- (CGSize)intrinsicContentSize;
- (NSArray)barSections;
- (_UINavigationButtonBarWrapperView)initWithCoder:(id)coder;
- (_UINavigationButtonBarWrapperView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBarSections:(id)sections;
- (void)setBarSections:(id)sections animated:(BOOL)animated;
@end

@implementation _UINavigationButtonBarWrapperView

- (NSArray)barSections
{
  buttonBar = [(_UINavigationButtonBarWrapperView *)self buttonBar];

  type metadata accessor for _UIBarSection(0);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)setBarSections:(id)sections
{
  type metadata accessor for _UIBarSection(0);
  v4 = sub_18A4A7548();
  selfCopy = self;
  buttonBar = [(_UINavigationButtonBarWrapperView *)selfCopy buttonBar];
  v6 = *(&buttonBar->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections);
  *(&buttonBar->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections) = v4;
  sub_188B34B5C(v6);
}

- (void)setBarSections:(id)sections animated:(BOOL)animated
{
  animatedCopy = animated;
  sectionsCopy = sections;
  selfCopy = self;
  v8 = selfCopy;
  if (animatedCopy)
  {
    [(_UINavigationButtonBarWrapperView *)selfCopy setAnimatesNextUpdate:1];
    selfCopy = v8;
  }

  [(_UINavigationButtonBarWrapperView *)selfCopy setBarSections:sectionsCopy];
}

- (_UINavigationButtonBarWrapperView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____UINavigationButtonBarWrapperView_animatesNextUpdate) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_188FBA068();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188FBA1E0();
}

- (_UINavigationButtonBarWrapperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end