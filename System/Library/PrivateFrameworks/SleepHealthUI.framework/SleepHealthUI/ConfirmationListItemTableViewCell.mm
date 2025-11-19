@interface ConfirmationListItemTableViewCell
- (_TtC13SleepHealthUI33ConfirmationListItemTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI33ConfirmationListItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ConfirmationListItemTableViewCell

- (_TtC13SleepHealthUI33ConfirmationListItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  v9 = sub_269D41670(a3, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI33ConfirmationListItemTableViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269D42420();
}

@end