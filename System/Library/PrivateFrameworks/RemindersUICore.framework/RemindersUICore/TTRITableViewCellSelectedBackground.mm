@interface TTRITableViewCellSelectedBackground
- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithFrame:(CGRect)a3;
@end

@implementation TTRITableViewCellSelectedBackground

- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRITableViewCellSelectedBackground *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRITableViewCellSelectedBackground *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end