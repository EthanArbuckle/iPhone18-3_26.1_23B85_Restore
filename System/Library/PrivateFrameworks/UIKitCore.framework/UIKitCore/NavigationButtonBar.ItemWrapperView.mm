@interface NavigationButtonBar.ItemWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIEdgeInsets)hitTestInsets;
- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithCoder:(id)a3;
- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithFrame:(CGRect)a3;
- (void)setHitTestInsets:(UIEdgeInsets)a3;
@end

@implementation NavigationButtonBar.ItemWrapperView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_18907E048(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_tamicAdaptorView);
  v3 = self;
  [v2 updateForAvailableSize];
  v4 = v2;
  if (!v2)
  {
    v4 = *(&v3->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView);
  }

  v5 = v2;
  [v4 systemLayoutSizeFittingSize_];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)hitTestInsets
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(UIView *)&v6 hitTestInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v9 = self;
  [(UIView *)&v12 setHitTestInsets:top, left, bottom, right];
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView);
  v11.receiver = v9;
  v11.super_class = ObjectType;
  [(UIView *)&v11 hitTestInsets];
  [v10 setHitTestInsets_];
}

- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end