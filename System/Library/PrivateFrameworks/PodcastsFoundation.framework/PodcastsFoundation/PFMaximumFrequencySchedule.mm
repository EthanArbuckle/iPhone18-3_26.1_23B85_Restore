@interface PFMaximumFrequencySchedule
- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution;
- (PFMaximumFrequencySchedule)init;
- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)frequency;
- (PFMaximumFrequencySchedule)initWithInterval:(double)interval;
@end

@implementation PFMaximumFrequencySchedule

- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)frequency
{
  ScheduleFrequency.interval.getter(frequency);

  return [(PFMaximumFrequencySchedule *)self initWithInterval:?];
}

- (PFMaximumFrequencySchedule)initWithInterval:(double)interval
{
  *(&self->super.isa + OBJC_IVAR___PFMaximumFrequencySchedule_interval) = interval;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MaximumFrequencySchedule();
  return [(PFMaximumFrequencySchedule *)&v4 init];
}

- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution
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
  if (execution)
  {
    sub_1D9176DFC();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  selfCopy = self;
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