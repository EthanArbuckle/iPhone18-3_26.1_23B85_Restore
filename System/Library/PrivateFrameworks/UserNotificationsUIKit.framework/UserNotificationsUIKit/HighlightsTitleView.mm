@interface HighlightsTitleView
- (BOOL)adjustForContentSizeCategoryChange;
- (_TtC22UserNotificationsUIKit19HighlightsTitleView)initWithCoder:(id)coder;
- (void)_updateTextAttributes;
@end

@implementation HighlightsTitleView

- (_TtC22UserNotificationsUIKit19HighlightsTitleView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_imageWidthConstraint) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit19HighlightsTitleView_image) = 0;
  result = sub_21E92A988();
  __break(1u);
  return result;
}

- (void)_updateTextAttributes
{
  selfCopy = self;
  sub_21E8B99E0();
}

- (BOOL)adjustForContentSizeCategoryChange
{
  selfCopy = self;
  sub_21E8B9D6C();

  return 1;
}

@end