@interface NavigationBarLargeTitleView
- (_TtC5UIKit27NavigationBarLargeTitleView)initWithCoder:(id)coder;
- (double)alpha;
- (void)didMoveToWindow;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
@end

@implementation NavigationBarLargeTitleView

- (void)layoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(UIView *)&v7 layoutMarginsDidChange];
  v3 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
  v4 = *&v2[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
  [v2 directionalLayoutMargins];
  [v4 setDirectionalLayoutMargins_];
  layout = [*&v2[v3] layout];
  if (layout)
  {
    v6 = layout;
    [v2 directionalLayoutMargins];
    [v6 setLayoutMargins_];
  }
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(UIView *)&v3 alpha];
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188C12820();
}

- (_TtC5UIKit27NavigationBarLargeTitleView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)setAlpha:(double)alpha
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(UIView *)&v9 setAlpha:alpha];
  v7 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView);
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(UIView *)&v8 alpha];
  [v7 setAlpha_];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1891730AC();
}

@end