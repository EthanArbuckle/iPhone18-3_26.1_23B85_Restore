@interface TintedTitleTrayButton
- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithCoder:(id)a3;
- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithFrame:(CGRect)a3;
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

  v3 = self;
  sub_269D84964();
}

- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TintedTitleTrayButton();
  v8 = [(TintedTitleTrayButton *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC13SleepHealthUIP33_DA67F438C60AD14CEC2DB8E6F6E09D0621TintedTitleTrayButton)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(TintedTitleTrayButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end