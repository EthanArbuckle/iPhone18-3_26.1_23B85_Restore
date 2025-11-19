@interface LockScreenContentModel
- (_TtC13SleepHealthUI22LockScreenContentModel)init;
- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4;
@end

@implementation LockScreenContentModel

- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9A900();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_269D9A8E0();
  v10 = a4;
  v11 = self;
  v12 = v10;
  v13 = sub_269D9A8D0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_269C79F94(0, 0, v8, &unk_269DA2BC0, v14);
}

- (_TtC13SleepHealthUI22LockScreenContentModel)init
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