@interface TTRIOptionMenuTitlelessPopupButton
- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithFrame:(CGRect)frame;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation TTRIOptionMenuTitlelessPopupButton

- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(TTRIOptionMenuTitlelessPopupButton *)&v9 initWithFrame:x, y, width, height];
  sub_21D36E500();

  return height;
}

- (_TtC15RemindersUICore34TTRIOptionMenuTitlelessPopupButton)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIOptionMenuTitlelessPopupButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D36E500();
  }

  return v6;
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  traitCollection = [(TTRIOptionMenuTitlelessPopupButton *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  sub_21DBFB42C();
  v9 = sub_21DBFA12C();

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(TTRIOptionMenuTitlelessPopupButton *)&v10 setTitle:v9 forState:0];
}

@end