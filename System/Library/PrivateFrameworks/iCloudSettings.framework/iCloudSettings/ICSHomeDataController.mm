@interface ICSHomeDataController
- (ICSHomeDataController)init;
- (ICSHomeDataController)initWithAccount:(id)account launchedFromRootLevel:(BOOL)level;
- (id)cachediCloudHomeDataModel;
- (void)fetchCloudStorage:(BOOL)storage completion:(id)completion;
- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion;
- (void)fetchiCloudHomeDataModelAllowingCache:(BOOL)cache completion:(id)completion;
- (void)reportStatefulHeaderImpressionWithUrl:(id)url payload:(id)payload;
@end

@implementation ICSHomeDataController

- (ICSHomeDataController)initWithAccount:(id)account launchedFromRootLevel:(BOOL)level
{
  accountCopy = account;
  v6 = sub_275929A14(accountCopy, level);

  return v6;
}

- (void)fetchiCloudHomeDataModelAllowingCache:(BOOL)cache completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = cache;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2759C9A78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2759C9A80;
  v15[5] = v14;
  selfCopy = self;
  sub_275929728(0, 0, v10, &unk_2759C9A88, v15);
}

- (void)fetchCloudStorage:(BOOL)storage completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = storage;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2759C9A30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2759C3C40;
  v15[5] = v14;
  selfCopy = self;
  sub_275929728(0, 0, v10, &unk_2759C33E0, v15);
}

- (id)cachediCloudHomeDataModel
{
  v2 = qword_2815ADD40;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  result = [*(&selfCopy->super.isa + OBJC_IVAR___ICSHomeDataController_account) aa_altDSID];
  if (result)
  {
    v5 = result;
    v6 = sub_2759BA298();
    v8 = v7;

    v9 = sub_2758B26E4(v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(completion);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_27592A35C;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = info;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  selfCopy = self;
  sub_27587D460(0, 0, v10, &unk_2759C9A20, v14);
}

- (void)reportStatefulHeaderImpressionWithUrl:(id)url payload:(id)payload
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  sub_2759B84C8();
  v16 = sub_2759BA1D8();
  selfCopy = self;
  sub_2759BA4D8();
  v18 = sub_2759BA518();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = selfCopy;
  (*(v10 + 32))(&v21[v19], v13, v9);
  *&v21[v20] = v16;
  v22 = selfCopy;
  sub_27587D460(0, 0, v8, &unk_2759C9A18, v21);

  (*(v10 + 8))(v15, v9);
}

- (ICSHomeDataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end