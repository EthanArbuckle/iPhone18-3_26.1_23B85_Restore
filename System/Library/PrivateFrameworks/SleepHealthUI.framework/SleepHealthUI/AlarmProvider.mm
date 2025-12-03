@interface AlarmProvider
- (void)handleAlarmChangeWithNotification:(id)notification;
@end

@implementation AlarmProvider

- (void)handleAlarmChangeWithNotification:(id)notification
{
  v3 = sub_269D97050();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97020();

  sub_269D5AB54(v6);

  (*(v4 + 8))(v6, v3);
}

@end