@interface AppWorkspaceObserver
- (_TtC26VisualActionPredictionCore20AppWorkspaceObserver)init;
- (void)databaseWasRebuilt;
@end

@implementation AppWorkspaceObserver

- (_TtC26VisualActionPredictionCore20AppWorkspaceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)databaseWasRebuilt
{
  v3 = sub_22634FD8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v4 + 104))(v7, *MEMORY[0x277D78CA8], v3);
  v13 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  sub_22635067C();

  (*(v9 + 8))(v12, v8);
}

@end