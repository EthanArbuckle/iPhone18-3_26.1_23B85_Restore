@interface TTRITextField
- (NSArray)accessibilityUserInputLabels;
- (_TtC15RemindersUICore13TTRITextField)initWithCoder:(id)a3;
- (_TtC15RemindersUICore13TTRITextField)initWithFrame:(CGRect)a3;
- (void)setAccessibilityUserInputLabels:(id)a3;
@end

@implementation TTRITextField

- (NSArray)accessibilityUserInputLabels
{
  v2 = self;
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

- (void)setAccessibilityUserInputLabels:(id)a3
{
  if (a3)
  {
    sub_21DBFA5EC();
    v4 = self;
    v5 = sub_21DBFA5DC();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRITextField();
  [(TTRITextField *)&v7 setAccessibilityUserInputLabels:v5];
}

- (_TtC15RemindersUICore13TTRITextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRITextField();
  return [(TTRITextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore13TTRITextField)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRITextField();
  v4 = a3;
  v5 = [(TTRITextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end