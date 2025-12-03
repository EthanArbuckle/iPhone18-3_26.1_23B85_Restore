@interface LegacyStorytellingService
- (void)cancelOperationsWithIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)dumpAnalysisStatusWithContext:(id)context reply:(id)reply;
- (void)warmupLegacyStorytellingWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply;
- (void)writeQALog:(id)log;
@end

@implementation LegacyStorytellingService

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  v4 = _Block_copy(reply);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (void)dumpAnalysisStatusWithContext:(id)context reply:(id)reply
{
  v4 = _Block_copy(reply);
  sub_22FAE1210();
  v5 = swift_allocError();
  *v6 = 0xD000000000000026;
  *(v6 + 8) = 0x800000022FCE7B40;
  *(v6 + 16) = 0xD00000000000004ALL;
  *(v6 + 24) = 0x800000022FCE7B70;
  *(v6 + 32) = 3;
  v7 = sub_22FCC6504();
  v4[2](v4, 0, v7);

  _Block_release(v4);
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = sub_22FCC8C44();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22FA7F81C;
  *(v13 + 24) = v12;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = sub_22FC11CD8;
  v15[7] = v13;

  sub_22FC3EE08(0, 0, v9, &unk_22FCDC690, v15);
}

- (void)writeQALog:(id)log
{
  v3 = sub_22FCC8A84();
  v5 = v4;

  sub_22FC11B9C(v3, v5);
}

- (void)warmupLegacyStorytellingWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  *(v13 + 16) = duration;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDC628;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2CA0;
  v16[5] = v15;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA590, v16);
}

@end