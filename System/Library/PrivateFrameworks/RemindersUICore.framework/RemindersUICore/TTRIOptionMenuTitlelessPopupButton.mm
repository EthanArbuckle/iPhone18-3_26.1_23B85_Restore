@interface TTRIOptionMenuTitlelessPopupButton
- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithFrame:(CGRect)a3;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation TTRIOptionMenuTitlelessPopupButton

- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(TTRIOptionMenuTitlelessPopupButton *)&v9 initWithFrame:x, y, width, height];
  sub_21D36E500();

  return v7;
}

- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIOptionMenuTitlelessPopupButton *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D36E500();
  }

  return v6;
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  ObjectType = swift_getObjectType();
  v6 = self;
  v7 = [(TTRIOptionMenuTitlelessPopupButton *)v6 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_21DBFB42C();
  v9 = sub_21DBFA12C();

  v10.receiver = v6;
  v10.super_class = ObjectType;
  [(TTRIOptionMenuTitlelessPopupButton *)&v10 setTitle:v9 forState:0];
}

@end