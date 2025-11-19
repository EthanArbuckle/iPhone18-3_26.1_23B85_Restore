@interface MainStackView
- (UIView)viewForFirstBaselineLayout;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithArrangedSubviews:(id)a3;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithFrame:(CGRect)a3;
@end

@implementation MainStackView

- (UIView)viewForFirstBaselineLayout
{
  v2 = self;
  v3 = sub_21D6BE004();

  return v3;
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRNoAnimationContainerStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithArrangedSubviews:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DBFA5EC();
    a3 = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRNoAnimationContainerStackView *)&v8 initWithArrangedSubviews:a3];

  return v6;
}

- (_TtC15RemindersUICoreP33_2613DF16BE8CD3FFB6C54DF3D8FFB12B13MainStackView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRNoAnimationContainerStackView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end