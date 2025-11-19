@interface TTRIReminderCompletionButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityUserInputLabels;
- (void)onButtonPress:(id)a3;
- (void)updateConfiguration;
@end

@implementation TTRIReminderCompletionButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage);
  v4 = v3 == 0;
  if (v3)
  {
    self = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_alternativeIntrinsicSizeDefiningImage);
  }

  v5 = &selRef_intrinsicContentSize;
  if (!v4)
  {
    v5 = &selRef_size;
  }

  [self *v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateConfiguration
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIReminderCompletionButton *)&v3 updateConfiguration];
  sub_21D8FDC88();
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
  v3 = TTRIReminderCompletionButton.accessibilityUserInputLabels.getter();

  if (v3)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)onButtonPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D8FF9DC();
}

@end