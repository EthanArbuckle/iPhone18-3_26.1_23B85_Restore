@interface QuickScheduleManagementViewRepresentation.Coordinator
- (_TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator)init;
- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save;
- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present;
@end

@implementation QuickScheduleManagementViewRepresentation.Coordinator

- (void)quickScheduleManagementViewController:(id)controller didSave:(id)save
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  saveCopy = save;
  selfCopy = self;
  sub_269D505D0(save);
}

- (void)quickScheduleManagementViewController:(id)controller shouldPresent:(id)present
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  presentCopy = present;
  selfCopy = self;
  sub_269D50968(presentCopy);
}

- (_TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator)init
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