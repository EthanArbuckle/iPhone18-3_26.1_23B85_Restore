@interface PhotoLibraryService
- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4;
- (void)computeCacheDidLoad:(id)a3;
- (void)curatedAssetsFromAssetUUIDs:(NSArray *)a3 options:(NSDictionary *)a4 operationID:(NSString *)a5 reply:(id)a6;
- (void)exportMomentContextDataWithReply:(id)a3;
- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)a3 options:(NSDictionary *)a4 operationID:(NSString *)a5 reply:(id)a6;
- (void)hastingsCurationFromAssetUUIDs:(NSArray *)a3 options:(NSData *)a4 operationID:(NSString *)a5 reply:(id)a6;
- (void)keyAssetFromAssetUUIDs:(NSArray *)a3 inAllAssets:(NSArray *)a4 operationID:(NSString *)a5 reply:(id)a6;
- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)a3 candidateAssetUUIDs:(NSSet *)a4 operationID:(NSString *)a5 reply:(id)a6;
- (void)notifyAvailabilityForFeature:(unint64_t)a3 reply:(id)a4;
- (void)requestPersonalizedSensingRefreshWithReply:(id)a3;
- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)a3 operationID:(NSString *)a4 reply:(id)a5;
- (void)warmupPhotoLibraryWorkerForDuration:(double)a3 operationID:(NSString *)a4 reply:(id)a5;
@end

@implementation PhotoLibraryService

- (void)cancelOperationsWithIdentifiers:(id)a3 reply:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a4);
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

- (void)warmupPhotoLibraryWorkerForDuration:(double)a3 operationID:(NSString *)a4 reply:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
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
  v17 = a4;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCD2E00, v16);
}

- (void)updateKeyAssetOfSocialGroupsWithUUIDs:(NSSet *)a3 operationID:(NSString *)a4 reply:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCD2DE0, v16);
}

- (void)keyAssetUUIDOfSocialGroupWithPersonUUIDs:(NSSet *)a3 candidateAssetUUIDs:(NSSet *)a4 operationID:(NSString *)a5 reply:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2DC0, v18);
}

- (void)keyAssetFromAssetUUIDs:(NSArray *)a3 inAllAssets:(NSArray *)a4 operationID:(NSString *)a5 reply:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D88, v18);
}

- (void)curatedAssetsFromAssetUUIDs:(NSArray *)a3 options:(NSDictionary *)a4 operationID:(NSString *)a5 reply:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D68, v18);
}

- (void)extendedCuratedAssetsFromAssetUUIDs:(NSArray *)a3 options:(NSDictionary *)a4 operationID:(NSString *)a5 reply:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D48, v18);
}

- (void)hastingsCurationFromAssetUUIDs:(NSArray *)a3 options:(NSData *)a4 operationID:(NSString *)a5 reply:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;

  sub_22FC0D8B4(0, 0, v13, &unk_22FCD2D28, v18);
}

- (void)computeCacheDidLoad:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
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

- (void)requestPersonalizedSensingRefreshWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
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

- (void)exportMomentContextDataWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
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

- (void)notifyAvailabilityForFeature:(unint64_t)a3 reply:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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