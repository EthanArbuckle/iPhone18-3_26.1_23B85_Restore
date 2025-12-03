@interface PGUpNextComputer
- (BOOL)enumerateSuggestionsWith:(id)with featureWeightVectors:(id)vectors error:(id *)error block:(id)block;
- (_TtC11PhotosGraph16PGUpNextComputer)init;
- (_TtC11PhotosGraph16PGUpNextComputer)initWithTargets:(id)targets;
@end

@implementation PGUpNextComputer

- (_TtC11PhotosGraph16PGUpNextComputer)initWithTargets:(id)targets
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23C8, &qword_22F779810);
  *(&self->super.isa + OBJC_IVAR____TtC11PhotosGraph16PGUpNextComputer_targets) = sub_22F741180();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PGUpNextComputer *)&v6 init];
}

- (BOOL)enumerateSuggestionsWith:(id)with featureWeightVectors:(id)vectors error:(id *)error block:(id)block
{
  v9 = _Block_copy(block);
  if (vectors)
  {
    sub_22F1DC8C0();
    vectors = sub_22F741180();
  }

  _Block_copy(v9);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22F1DC68C(with, vectors, selfCopy);
  _Block_release(v9);

  swift_unknownObjectRelease();
  _Block_release(v9);

  return 1;
}

- (_TtC11PhotosGraph16PGUpNextComputer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end