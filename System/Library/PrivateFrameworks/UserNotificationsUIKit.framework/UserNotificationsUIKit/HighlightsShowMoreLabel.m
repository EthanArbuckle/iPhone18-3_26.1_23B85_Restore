@interface HighlightsShowMoreLabel
- (BOOL)adjustForContentSizeCategoryChange;
- (_TtC22UserNotificationsUIKit23HighlightsShowMoreLabel)initWithCoder:(id)a3;
- (void)_updateTextAttributes;
- (void)handleTap;
@end

@implementation HighlightsShowMoreLabel

- (_TtC22UserNotificationsUIKit23HighlightsShowMoreLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_traitChangeRegistration) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action);
  *v3 = 0;
  v3[1] = 0;
  result = sub_21E92A988();
  __break(1u);
  return result;
}

- (void)handleTap
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action);
  if (v2)
  {
    v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action);
    v4 = self;
    v5 = sub_21E792C10(v2, v3);
    v2(v5);

    sub_21E792694(v2);
  }
}

- (void)_updateTextAttributes
{
  v2 = self;
  sub_21E91D01C();
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v2 = self;
  sub_21E91D15C();

  return 1;
}

@end