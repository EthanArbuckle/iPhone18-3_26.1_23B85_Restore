@interface NavigationBarLargeTitleView
- (_TtC5UIKit27NavigationBarLargeTitleView)initWithCoder:(id)a3;
- (double)alpha;
- (void)didMoveToWindow;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
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
  v5 = [*&v2[v3] layout];
  if (v5)
  {
    v6 = v5;
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
  v2 = self;
  sub_188C12820();
}

- (_TtC5UIKit27NavigationBarLargeTitleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)setAlpha:(double)a3
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  [(UIView *)&v9 setAlpha:a3];
  v7 = *(&v6->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [(UIView *)&v8 alpha];
  [v7 setAlpha_];
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1891730AC();
}

@end