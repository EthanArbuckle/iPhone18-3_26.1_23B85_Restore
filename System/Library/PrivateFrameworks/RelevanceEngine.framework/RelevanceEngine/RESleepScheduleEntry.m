@interface RESleepScheduleEntry
+ (id)sleepEntryForDatesWithCurrent:(id)a3 next:(id)a4 schedule:(id)a5;
- (_TtC15RelevanceEngine20RESleepScheduleEntry)init;
- (_TtC15RelevanceEngine20RESleepScheduleEntry)initWithWakeupTime:(id)a3 bedtime:(id)a4;
@end

@implementation RESleepScheduleEntry

- (_TtC15RelevanceEngine20RESleepScheduleEntry)initWithWakeupTime:(id)a3 bedtime:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if (a3)
  {
    sub_2286A087C();
    v14 = sub_2286A089C();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_2286A089C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (a4)
  {
    sub_2286A087C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_2286A089C();
  v18 = *(*(v17 - 8) + 56);
  v18(v11, v16, 1, v17);
  v19 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v18(self + OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime, 1, 1, v17);
  v20 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v18(self + OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime, 1, 1, v17);
  swift_beginAccess();
  sub_228696C98(v13, self + v19);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(v11, self + v20);
  swift_endAccess();
  v21 = type metadata accessor for RESleepScheduleEntry();
  v25.receiver = self;
  v25.super_class = v21;
  v22 = [(RESleepScheduleEntry *)&v25 init];
  sub_228696D08(v11);
  sub_228696D08(v13);
  return v22;
}

+ (id)sleepEntryForDatesWithCurrent:(id)a3 next:(id)a4 schedule:(id)a5
{
  v6 = sub_2286A089C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_2286A087C();
  sub_2286A087C();
  v14 = a5;
  v15 = _s15RelevanceEngine20RESleepScheduleEntryC05sleepE8ForDates7current4next8scheduleAC10Foundation4DateV_AJSo09HKSPSleepD0CtFZ_0(v13, v11, v14);

  v16 = *(v7 + 8);
  v16(v11, v6);
  v16(v13, v6);

  return v15;
}

- (_TtC15RelevanceEngine20RESleepScheduleEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end