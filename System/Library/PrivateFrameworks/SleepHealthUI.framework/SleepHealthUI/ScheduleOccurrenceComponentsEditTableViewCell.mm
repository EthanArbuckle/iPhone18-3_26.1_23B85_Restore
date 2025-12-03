@interface ScheduleOccurrenceComponentsEditTableViewCell
- (_TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityComponentsEditView;
@end

@implementation ScheduleOccurrenceComponentsEditTableViewCell

- (_TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
    v5 = sub_269D9A630();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_269D0701C(v5, v6);

  return v7;
}

- (_TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell)initWithCoder:(id)coder
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

- (id)accessibilityComponentsEditView
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.isa + v3);

  return v4;
}

@end