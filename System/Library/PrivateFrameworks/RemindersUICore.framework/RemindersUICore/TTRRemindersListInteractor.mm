@interface TTRRemindersListInteractor
- (OS_dispatch_queue)callbackQueue;
- (_TtC15RemindersUICore26TTRRemindersListInteractor)init;
- (void)notifyEventFromSaveRequest:(id)request;
@end

@implementation TTRRemindersListInteractor

- (_TtC15RemindersUICore26TTRRemindersListInteractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (OS_dispatch_queue)callbackQueue
{
  v2 = sub_21DBF9D3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  (*(v3 + 104))(v5, *MEMORY[0x277D851D0], v2);
  v6 = sub_21DBFB15C();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (void)notifyEventFromSaveRequest:(id)request
{
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  sub_21D19F2B8(&qword_27CE59990, &unk_280D0C1E0);
  v4 = sub_21DBFAAAC();
  selfCopy = self;
  TTRRemindersListInteractor.notifyEvent(fromSaveRequest:)(v4);
}

@end