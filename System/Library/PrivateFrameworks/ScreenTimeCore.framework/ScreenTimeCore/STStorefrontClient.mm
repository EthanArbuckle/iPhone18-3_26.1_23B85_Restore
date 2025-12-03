@interface STStorefrontClient
- (STStorefrontClient)init;
- (STStorefrontClient)initWithAmsStorefrontClient:(id)client;
- (id)fetchStorefrontFromLocale:(id)locale error:(id *)error;
- (void)fetchStorefrontFromAMSForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account completionHandler:(id)handler;
- (void)fetchStorefrontFromAMSForLocalUserWithCompletionHandler:(id)handler;
- (void)fetchStorefrontFromAMSWith:(STRegionRatingsRequestOptions *)with completionHandler:(id)handler;
- (void)fetchStorefrontWithOptions:(STRegionRatingsRequestOptions *)options completionHandler:(id)handler;
@end

@implementation STStorefrontClient

- (STStorefrontClient)init
{
  type metadata accessor for STAMSStorefrontClient();
  *(&self->super.isa + OBJC_IVAR___STStorefrontClient_amsStorefrontClient) = swift_allocObject();
  v4.receiver = self;
  v4.super_class = STStorefrontClient;
  return [(STStorefrontClient *)&v4 init];
}

- (STStorefrontClient)initWithAmsStorefrontClient:(id)client
{
  swift_unknownObjectRetain();
  v5 = [(STStorefrontClient *)self init];
  v6 = *(&v5->super.isa + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
  *(&v5->super.isa + OBJC_IVAR___STStorefrontClient_amsStorefrontClient) = client;
  swift_unknownObjectRelease();
  return v5;
}

- (void)fetchStorefrontWithOptions:(STRegionRatingsRequestOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B83DDE3C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B83E9B68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B83E9B70;
  v15[5] = v14;
  optionsCopy = options;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v10, &unk_1B83E9B78, v15);
}

- (void)fetchStorefrontFromAMSWith:(STRegionRatingsRequestOptions *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B83DDE3C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B83E9B38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B83E9B40;
  v15[5] = v14;
  withCopy = with;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v10, &unk_1B83E9B48, v15);
}

- (void)fetchStorefrontFromAMSForLocalUserWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B83DDE3C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B83E9B10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B83E9B18;
  v13[5] = v12;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v8, &unk_1B83E9B20, v13);
}

- (void)fetchStorefrontFromAMSForChildWithDSID:(NSNumber *)d parentAccount:(ACAccount *)account completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = account;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1B83DDE3C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B83E9AB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B83E9940;
  v17[5] = v16;
  dCopy = d;
  accountCopy = account;
  selfCopy = self;
  sub_1B83CD2A8(0, 0, v12, &unk_1B83E9948, v17);
}

- (id)fetchStorefrontFromLocale:(id)locale error:(id *)error
{
  v5 = sub_1B83DD9EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD9AC();
  selfCopy = self;
  sub_1B83CDC10();
  (*(v6 + 8))(v9, v5);

  v11 = sub_1B83DDCBC();

  return v11;
}

@end