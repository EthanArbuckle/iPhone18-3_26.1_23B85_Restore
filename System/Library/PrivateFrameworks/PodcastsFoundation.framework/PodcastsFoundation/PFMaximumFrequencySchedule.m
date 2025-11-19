@interface PFMaximumFrequencySchedule
- (BOOL)shouldExecuteOn:(id)a3 previousExecution:(id)a4;
- (PFMaximumFrequencySchedule)init;
- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)a3;
- (PFMaximumFrequencySchedule)initWithInterval:(double)a3;
@end

@implementation PFMaximumFrequencySchedule

- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)a3
{
  ScheduleFrequency.interval.getter(a3);

  return [(PFMaximumFrequencySchedule *)self initWithInterval:?];
}

- (PFMaximumFrequencySchedule)initWithInterval:(double)a3
{
  *(&self->super.isa + OBJC_IVAR___PFMaximumFrequencySchedule_interval) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MaximumFrequencySchedule();
  return [(PFMaximumFrequencySchedule *)&v4 init];
}

- (BOOL)shouldExecuteOn:(id)a3 previousExecution:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  if (a4)
  {
    sub_1D9176DFC();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = self;
  v17 = sub_1D9153088(v14, v9);

  sub_1D8CF5EF8(v9);
  (*(v11 + 8))(v14, v10);
  return v17;
}

- (PFMaximumFrequencySchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end