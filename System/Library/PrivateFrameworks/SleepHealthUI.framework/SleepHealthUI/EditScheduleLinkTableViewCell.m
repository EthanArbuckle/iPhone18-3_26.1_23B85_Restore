@interface EditScheduleLinkTableViewCell
- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EditScheduleLinkTableViewCell

- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  v9 = sub_269C77610(a3, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_269D9B100();
  __break(1u);
  return result;
}

@end