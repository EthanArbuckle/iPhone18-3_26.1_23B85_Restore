@interface GoalTimePickerTableViewCell
- (_TtC13SleepHealthUI27GoalTimePickerTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI27GoalTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation GoalTimePickerTableViewCell

- (_TtC13SleepHealthUI27GoalTimePickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_269C95D7C(a3, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI27GoalTimePickerTableViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_269C95F38(a3);

  return v4;
}

@end