@interface NavigationBarContentView.AugmentedTitleViewHost
- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithCoder:(id)coder;
- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(UIView *)&v14 hitTest:eventCopy withEvent:x, y];
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

- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_glassGroupBackgroundEnabled) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end