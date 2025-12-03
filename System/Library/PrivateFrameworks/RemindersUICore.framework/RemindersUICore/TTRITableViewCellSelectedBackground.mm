@interface TTRITableViewCellSelectedBackground
- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithFrame:(CGRect)frame;
@end

@implementation TTRITableViewCellSelectedBackground

- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRITableViewCellSelectedBackground *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_5EAE53F771078A2FF6F74718F262CF6635TTRITableViewCellSelectedBackground)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRITableViewCellSelectedBackground *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end