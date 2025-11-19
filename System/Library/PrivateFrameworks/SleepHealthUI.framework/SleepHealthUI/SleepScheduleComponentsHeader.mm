@interface SleepScheduleComponentsHeader
- (_TtC13SleepHealthUI29SleepScheduleComponentsHeader)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI29SleepScheduleComponentsHeader)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation SleepScheduleComponentsHeader

- (_TtC13SleepHealthUI29SleepScheduleComponentsHeader)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269D01EA8();
}

- (void)tintColorDidChange
{
  ObjectType = swift_getObjectType();
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = ObjectType;
  v4 = self;
  [(SleepScheduleComponentsHeader *)&v5 tintColorDidChange];
  sub_269CFF1C4();
}

- (_TtC13SleepHealthUI29SleepScheduleComponentsHeader)initWithFrame:(CGRect)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end