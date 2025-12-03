@interface HealthWorkoutSession
- (_TtC13SeymourClient20HealthWorkoutSession)init;
- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types;
- (void)workoutBuilder:(id)builder didEndActivity:(id)activity;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didFailWithError:(id)error;
@end

@implementation HealthWorkoutSession

- (_TtC13SeymourClient20HealthWorkoutSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types
{
  sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
  sub_1B4F243D8();
  v6 = sub_1B4F68504();
  builderCopy = builder;
  selfCopy = self;
  HealthWorkoutSession.workoutBuilder(_:didCollectDataOf:)(builderCopy, v6);
}

- (void)workoutBuilder:(id)builder didEndActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = qword_1EDB6DFA8;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4F67C54();
  __swift_project_value_buffer(v12, qword_1EDB6DFB0);
  v13._countAndFlagsBits = 0xD000000000000028;
  v13._object = 0x80000001B4F845B0;
  v14._object = 0x80000001B4F845E0;
  v14._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v13, v14);
  v15 = sub_1B4F68324();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = selfCopy;
  sub_1B4E4E620(0, 0, v9, &unk_1B4F7C468, v16);
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v8 = sub_1B4F64964();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64934();
  sessionCopy = session;
  selfCopy = self;
  sub_1B4F245DC();

  (*(v9 + 8))(v13, v8);
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1B4F24818(errorCopy);
}

@end