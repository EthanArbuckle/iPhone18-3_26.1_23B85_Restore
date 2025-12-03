@interface PhotoLibraryService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)computeCacheDidLoad:(id)load;
- (void)curatedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)exportMomentContextDataWithReply:(id)reply;
- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)hastingsCurationFromAssetUUIDs:(NSArray *)ds options:(NSData *)options operationID:(NSString *)d reply:(id)reply;
- (void)keyAssetFromAssetUUIDs:(NSArray *)ds inAllAssets:(NSArray *)assets operationID:(NSString *)d reply:(id)reply;
- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)ds candidateAssetUUIDs:(NSSet *)iDs operationID:(NSString *)d reply:(id)reply;
- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply;
- (void)requestPersonalizedSensingRefreshWithReply:(id)reply;
- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply;
@end

@implementation PhotoLibraryService

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(reply);
  v10 = sub_22FCC8C44();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22FA7F81C;
  *(v12 + 24) = v11;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v10;
  v14[6] = sub_22FA7F824;
  v14[7] = v12;

  sub_22FC3EE08(0, 0, v8, &unk_22FCD2E08, v14);
}

- (void)warmupPhotoLibraryWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply
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
  v15[4] = &unk_22FCD2DF0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2DF8;
  v16[5] = v15;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCD2E00, v16);
}

- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = ds;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD2DD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2DD8;
  v16[5] = v15;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCD2DE0, v16);
}

- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)ds candidateAssetUUIDs:(NSSet *)iDs operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = iDs;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2DB0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2DB8;
  v18[5] = v17;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2DC0, v18);
}

- (void)keyAssetFromAssetUUIDs:(NSArray *)ds inAllAssets:(NSArray *)assets operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = assets;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2D78;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D80;
  v18[5] = v17;
  dsCopy = ds;
  assetsCopy = assets;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D88, v18);
}

- (void)curatedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = options;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2D58;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D60;
  v18[5] = v17;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D68, v18);
}

- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)ds options:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = options;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2D38;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D40;
  v18[5] = v17;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D48, v18);
}

- (void)hastingsCurationFromAssetUUIDs:(NSArray *)ds options:(NSData *)options operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = ds;
  v15[3] = options;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22FCC8D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCD2D18;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCD2D20;
  v18[5] = v17;
  dsCopy = ds;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D28, v18);
}

- (void)computeCacheDidLoad:(id)load
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(load);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCD2CF8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCD2D00;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCD2D08, v12);
}

- (void)requestPersonalizedSensingRefreshWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCD2CD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCD2CE0;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCD2CE8, v12);
}

- (void)exportMomentContextDataWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22FCC8D14();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22FCD2CB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCD2CC0;
  v12[5] = v11;

  sub_22FC0D8B4(0, 0, v7, &unk_22FCD2CC8, v12);
}

- (void)notifyAvailabilityForFeature:(unint64_t)feature reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = feature;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22FCC8D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCD2C98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCD2CA0;
  v14[5] = v13;

  sub_22FC0D8B4(0, 0, v9, &unk_22FCDA590, v14);
}

@end