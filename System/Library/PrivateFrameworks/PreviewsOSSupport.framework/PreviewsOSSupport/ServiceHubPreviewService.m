@interface ServiceHubPreviewService
- (_TtC17PreviewsOSSupport24ServiceHubPreviewService)init;
- (void)activateWithCompletion:(id)a3;
- (void)cancel;
- (void)observeCancelation:(id)a3;
@end

@implementation ServiceHubPreviewService

- (void)activateWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_25F502818();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_25F4E4E30;
  v12[6] = v10;
  v13 = self;
  sub_25F4F4B44(0, 0, v8, &unk_25F505A80, v12);
}

- (void)cancel
{
  swift_getObjectType();
  sub_25F4F5874(&qword_27FD90E48, v2, type metadata accessor for ServiceHubPreviewService);
  sub_25F502288();
}

- (void)observeCancelation:(id)a3
{
  swift_getObjectType();
  v5 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v5;
  sub_25F4F5874(&qword_27FD90E48, v6, type metadata accessor for ServiceHubPreviewService);
  v7 = self;
  sub_25F502298();
}

- (_TtC17PreviewsOSSupport24ServiceHubPreviewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end