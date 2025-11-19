@interface NavigationBarContentView.AugmentedTitleViewHost
- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithCoder:(id)a3;
- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation NavigationBarContentView.AugmentedTitleViewHost

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v7 = v14.receiver;
  v8 = a4;
  v9 = [(UIView *)&v14 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v9;

  v11 = v10;
  v12 = v10 == v7;
  v7 = v10;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(UIView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end