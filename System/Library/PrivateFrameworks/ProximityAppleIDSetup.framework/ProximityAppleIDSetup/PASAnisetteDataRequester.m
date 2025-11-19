@interface PASAnisetteDataRequester
- (_TtC21ProximityAppleIDSetup24PASAnisetteDataRequester)init;
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4;
- (void)fetchPeerAttestationDataForRequest:(NSURLRequest *)a3 completion:(id)a4;
- (void)legacyAnisetteDataForDSID:(NSString *)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(NSData *)a3 completion:(id)a4;
@end

@implementation PASAnisetteDataRequester

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2610CC988;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2610CC990;
  v13[5] = v12;

  sub_2610765E8(0, 0, v8, &unk_2610CC998, v13);
}

- (void)syncAnisetteWithSIMData:(NSData *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2610CC968;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2610CC970;
  v15[5] = v14;
  v16 = a3;

  sub_2610765E8(0, 0, v10, &unk_2610CC978, v15);
}

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2610CC948;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2610CC950;
  v13[5] = v12;

  sub_2610765E8(0, 0, v8, &unk_2610CC958, v13);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2610CC928;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2610CC930;
  v15[5] = v14;

  sub_2610765E8(0, 0, v10, &unk_2610CC938, v15);
}

- (void)legacyAnisetteDataForDSID:(NSString *)a3 withCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2610CC908;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2610CC910;
  v15[5] = v14;
  v16 = a3;

  sub_2610765E8(0, 0, v10, &unk_2610CC918, v15);
}

- (void)fetchPeerAttestationDataForRequest:(NSURLRequest *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2610BCC94();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2610CC8C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2610CC8D0;
  v15[5] = v14;
  v16 = a3;

  sub_2610765E8(0, 0, v10, &unk_2610C8260, v15);
}

- (_TtC21ProximityAppleIDSetup24PASAnisetteDataRequester)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end