@interface TTRIReminderCompletionButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityUserInputLabels;
- (void)onButtonPress:(id)press;
- (void)updateConfiguration;
@end

@implementation TTRIReminderCompletionButton

- (CGSize)sizeThatFits:(CGSize)fits
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
  selfCopy = self;
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

- (void)onButtonPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_21D8FF9DC();
}

@end