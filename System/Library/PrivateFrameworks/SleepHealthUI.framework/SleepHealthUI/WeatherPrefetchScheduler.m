@interface WeatherPrefetchScheduler
- (_TtC13SleepHealthUI24WeatherPrefetchScheduler)init;
- (void)dealloc;
- (void)sleepStore:(id)a3 sleepEventDidOccur:(id)a4;
- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepScheduleStateDidChange:(unint64_t)a4;
@end

@implementation WeatherPrefetchScheduler

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  sub_269D11174((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v4.receiver = v3;
  v4.super_class = type metadata accessor for WeatherPrefetchScheduler();
  [(WeatherPrefetchScheduler *)&v4 dealloc];
}

- (_TtC13SleepHealthUI24WeatherPrefetchScheduler)init
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

- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_269D9A900();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_269D9A8E0();
  v10 = self;
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = ObjectType;
  sub_269C79F94(0, 0, v8, &unk_269DA7400, v12);
}

- (void)sleepStore:(id)a3 sleepScheduleStateDidChange:(unint64_t)a4
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_269D9A900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_269D9A8E0();
  v11 = self;
  v12 = sub_269D9A8D0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a4;
  v13[5] = v11;
  v13[6] = ObjectType;
  sub_269C79F94(0, 0, v9, &unk_269DA73F8, v13);
}

- (void)sleepStore:(id)a3 sleepEventDidOccur:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_269D9A900();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_269D9A8E0();
  v11 = a4;
  v12 = self;
  v13 = v11;
  v14 = v12;
  v15 = sub_269D9A8D0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = ObjectType;
  sub_269C79F94(0, 0, v9, &unk_269DA73F0, v16);
}

@end