@interface ScheduleOccurrenceTableViewCell
- (_TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ScheduleOccurrenceTableViewCell

- (_TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  v9 = sub_269CFD5C8(style, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell____lazy_storage___occurrenceView;
  v6 = type metadata accessor for ScheduleOccurrenceView(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_269D9B100();
  __break(1u);
  return result;
}

@end