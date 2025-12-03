@interface EditScheduleLinkTableViewCell
- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation EditScheduleLinkTableViewCell

- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_269C77610(style, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI29EditScheduleLinkTableViewCell)initWithCoder:(id)coder
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