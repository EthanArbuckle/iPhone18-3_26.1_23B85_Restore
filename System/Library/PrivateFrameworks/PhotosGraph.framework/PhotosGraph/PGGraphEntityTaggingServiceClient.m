@interface PGGraphEntityTaggingServiceClient
- (PGGraphEntityTaggingServiceClient)init;
- (void)entityTagsForPersonWithPersonLocalIdentifier:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation PGGraphEntityTaggingServiceClient

- (void)entityTagsForPersonWithPersonLocalIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22F741320();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22F7847D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F783A70;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_22F33C54C(0, 0, v10, &unk_22F784250, v15);
}

- (PGGraphEntityTaggingServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end