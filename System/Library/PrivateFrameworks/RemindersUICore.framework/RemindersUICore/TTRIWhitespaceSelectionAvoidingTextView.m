@interface TTRIWhitespaceSelectionAvoidingTextView
- (_TtC15RemindersUICore39TTRIWhitespaceSelectionAvoidingTextView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TTRIWhitespaceSelectionAvoidingTextView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_21D6B99DC(a4, x, y);

  return v10;
}

- (_TtC15RemindersUICore39TTRIWhitespaceSelectionAvoidingTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
  v4 = a3;
  v5 = [(TTRIReminderTitleTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end