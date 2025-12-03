@interface SleepDayModel
- (_TtC13SleepHealthUI13SleepDayModel)init;
- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification;
@end

@implementation SleepDayModel

- (_TtC13SleepHealthUI13SleepDayModel)init
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

- (void)dateCacheDidUpdate:(id)update onNotification:(id)notification
{
  v6 = sub_269D97050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97020();
  updateCopy = update;
  selfCopy = self;
  sub_269D19B2C(v9);

  (*(v7 + 8))(v9, v6);
}

@end