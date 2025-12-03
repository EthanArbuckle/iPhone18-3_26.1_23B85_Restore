@interface PFCompoundSchedule
- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution;
- (PFCompoundSchedule)init;
- (PFCompoundSchedule)initWithType:(int64_t)type children:(id)children;
@end

@implementation PFCompoundSchedule

- (PFCompoundSchedule)initWithType:(int64_t)type children:(id)children
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB550, &unk_1D91BCF10);
  v6 = sub_1D91785FC();
  *(&self->super.isa + OBJC_IVAR___PFCompoundSchedule_type) = type;
  *(&self->super.isa + OBJC_IVAR___PFCompoundSchedule_children) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CompoundSchedule();
  return [(PFCompoundSchedule *)&v8 init];
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
  v17 = sub_1D91519F0(v14, v9);

  sub_1D8CF5EF8(v9);
  (*(v11 + 8))(v14, v10);
  return v17 & 1;
}

- (PFCompoundSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end