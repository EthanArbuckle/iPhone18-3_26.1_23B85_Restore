@interface MainStackView
- (UIView)viewForFirstBaselineLayout;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithArrangedSubviews:(id)subviews;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithFrame:(CGRect)frame;
@end

@implementation MainStackView

- (UIView)viewForFirstBaselineLayout
{
  selfCopy = self;
  v3 = sub_21D6BE004();

  return v3;
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRNoAnimationContainerStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithArrangedSubviews:(id)subviews
{
  ObjectType = swift_getObjectType();
  if (subviews)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DBFA5EC();
    subviews = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRNoAnimationContainerStackView *)&v8 initWithArrangedSubviews:subviews];

  return v6;
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRNoAnimationContainerStackView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end