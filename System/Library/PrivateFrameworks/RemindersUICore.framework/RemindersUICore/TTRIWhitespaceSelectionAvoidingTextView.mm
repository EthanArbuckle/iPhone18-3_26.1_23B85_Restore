@interface TTRIWhitespaceSelectionAvoidingTextView
- (_TtC15RemindersUICore39TTRIWhitespaceSelectionAvoidingTextView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation TTRIWhitespaceSelectionAvoidingTextView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_21D6B99DC(event, x, y);

  return v10;
}

- (_TtC15RemindersUICore39TTRIWhitespaceSelectionAvoidingTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
  coderCopy = coder;
  v5 = [(TTRIReminderTitleTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end