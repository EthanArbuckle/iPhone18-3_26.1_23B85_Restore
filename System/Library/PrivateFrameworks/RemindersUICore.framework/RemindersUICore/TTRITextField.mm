@interface TTRITextField
- (NSArray)accessibilityUserInputLabels;
- (_TtC15RemindersUICore13TTRITextField)initWithCoder:(id)coder;
- (_TtC15RemindersUICore13TTRITextField)initWithFrame:(CGRect)frame;
- (void)setAccessibilityUserInputLabels:(id)labels;
@end

@implementation TTRITextField

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = sub_21D4719B4();

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

- (void)setAccessibilityUserInputLabels:(id)labels
{
  if (labels)
  {
    sub_21DBFA5EC();
    selfCopy = self;
    v5 = sub_21DBFA5DC();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRITextField();
  [(TTRITextField *)&v7 setAccessibilityUserInputLabels:v5];
}

- (_TtC15RemindersUICore13TTRITextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRITextField();
  return [(TTRITextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore13TTRITextField)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRITextField();
  coderCopy = coder;
  v5 = [(TTRITextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end