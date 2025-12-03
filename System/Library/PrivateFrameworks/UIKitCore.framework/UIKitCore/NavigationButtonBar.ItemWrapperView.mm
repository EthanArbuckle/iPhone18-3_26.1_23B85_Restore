@interface NavigationButtonBar.ItemWrapperView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIEdgeInsets)hitTestInsets;
- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithCoder:(id)coder;
- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithFrame:(CGRect)frame;
- (void)setHitTestInsets:(UIEdgeInsets)insets;
@end

@implementation NavigationButtonBar.ItemWrapperView

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_18907E048(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_tamicAdaptorView);
  selfCopy = self;
  [v2 updateForAvailableSize];
  v4 = v2;
  if (!v2)
  {
    v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView);
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

- (void)setHitTestInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(UIView *)&v12 setHitTestInsets:top, left, bottom, right];
  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar15ItemWrapperView_contentView);
  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(UIView *)&v11 hitTestInsets];
  [v10 setHitTestInsets_];
}

- (_TtCC5UIKit19NavigationButtonBar15ItemWrapperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end