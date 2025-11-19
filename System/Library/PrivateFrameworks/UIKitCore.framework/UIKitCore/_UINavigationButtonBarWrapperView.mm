@interface _UINavigationButtonBarWrapperView
- (CGSize)intrinsicContentSize;
- (NSArray)barSections;
- (_UINavigationButtonBarWrapperView)initWithCoder:(id)a3;
- (_UINavigationButtonBarWrapperView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBarSections:(id)a3;
- (void)setBarSections:(id)a3 animated:(BOOL)a4;
@end

@implementation _UINavigationButtonBarWrapperView

- (NSArray)barSections
{
  v2 = [(_UINavigationButtonBarWrapperView *)self buttonBar];

  type metadata accessor for _UIBarSection(0);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)setBarSections:(id)a3
{
  type metadata accessor for _UIBarSection(0);
  v4 = sub_18A4A7548();
  v7 = self;
  v5 = [(_UINavigationButtonBarWrapperView *)v7 buttonBar];
  v6 = *(&v5->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections);
  *(&v5->super.isa + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections) = v4;
  sub_188B34B5C(v6);
}

- (void)setBarSections:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = v7;
  if (v4)
  {
    [(_UINavigationButtonBarWrapperView *)v7 setAnimatesNextUpdate:1];
    v7 = v8;
  }

  [(_UINavigationButtonBarWrapperView *)v7 setBarSections:v6];
}

- (_UINavigationButtonBarWrapperView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____UINavigationButtonBarWrapperView_animatesNextUpdate) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = self;
  sub_188FBA1E0();
}

- (_UINavigationButtonBarWrapperView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end