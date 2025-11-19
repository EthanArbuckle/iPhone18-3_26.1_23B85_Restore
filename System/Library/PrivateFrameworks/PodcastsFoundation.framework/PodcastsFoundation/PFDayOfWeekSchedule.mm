@interface PFDayOfWeekSchedule
+ (PFDayOfWeekSchedule)firstDayOfWeek;
- (BOOL)shouldExecuteOn:(id)a3 previousExecution:(id)a4;
- (PFDayOfWeekSchedule)init;
- (PFDayOfWeekSchedule)initWithDayOfWeek:(int64_t)a3 calendar:(id)a4;
@end

@implementation PFDayOfWeekSchedule

+ (PFDayOfWeekSchedule)firstDayOfWeek
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  sub_1D9176FAC();
  v10 = sub_1D9176F2C();
  v11 = v3[2];
  v11(v6, v9, v2);
  v12 = type metadata accessor for DayOfWeekSchedule();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = v10;
  v11(&v13[OBJC_IVAR___PFDayOfWeekSchedule_calendar], v6, v2);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = v3[1];
  v15(v6, v2);
  v15(v9, v2);

  return v14;
}

- (PFDayOfWeekSchedule)initWithDayOfWeek:(int64_t)a3 calendar:(id)a4
{
  v6 = sub_1D9176FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176F8C();
  *(&self->super.isa + OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek) = a3;
  (*(v7 + 16))(self + OBJC_IVAR___PFDayOfWeekSchedule_calendar, v10, v6);
  v11 = type metadata accessor for DayOfWeekSchedule();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(PFDayOfWeekSchedule *)&v14 init];
  (*(v7 + 8))(v10, v6);
  return v12;
}

- (BOOL)shouldExecuteOn:(id)a3 previousExecution:(id)a4
{
  v6 = sub_1D9176FBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  if (a4)
  {
    sub_1D9176DFC();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v16 + 56))(v14, v20, 1, v15);
  (*(v7 + 104))(v10, *MEMORY[0x1E6969AB0], v6);
  v21 = self;
  v22 = sub_1D9176FCC();
  (*(v7 + 8))(v10, v6);
  sub_1D8CF5EF8(v14);
  (*(v16 + 8))(v19, v15);
  v23 = *(&v21->super.isa + OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek);

  return v22 == v23;
}

- (PFDayOfWeekSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end