@interface TintedTitleTrayButton
- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithCoder:(id)coder;
- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation TintedTitleTrayButton

- (void)tintColorDidChange
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D84964();
}

- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TintedTitleTrayButton();
  height = [(TintedTitleTrayButton *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for TintedTitleTrayButton();
  coderCopy = coder;
  v6 = [(TintedTitleTrayButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end