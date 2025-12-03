@interface PGGraphUpdater
- (PGGraphUpdater)init;
- (PGGraphUpdater)initWith:(id)with;
- (void)applyChangesFrom:(PGGraphUpdate *)from progressReporter:(MAProgressReporter *)reporter completionHandler:(id)handler;
@end

@implementation PGGraphUpdater

- (PGGraphUpdater)initWith:(id)with
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PGGraphUpdater_graphManager) = with;
  v8.receiver = self;
  v8.super_class = ObjectType;
  withCopy = with;
  return [(PGGraphUpdater *)&v8 init];
}

- (void)applyChangesFrom:(PGGraphUpdate *)from progressReporter:(MAProgressReporter *)reporter completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = from;
  v14[3] = reporter;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22F741320();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22F784240;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22F783A70;
  v17[5] = v16;
  fromCopy = from;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22F33C54C(0, 0, v12, &unk_22F784250, v17);
}

- (PGGraphUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end