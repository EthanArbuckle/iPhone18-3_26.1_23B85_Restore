@interface WallpaperService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)upgradePosterConfigurationWithAssetDirectory:(NSURL *)directory options:(NSDictionary *)options reply:(id)reply;
@end

@implementation WallpaperService

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

  sub_22FC3EE08(0, 0, v8, &unk_22FCD65B8, v14);
}

- (void)upgradePosterConfigurationWithAssetDirectory:(NSURL *)directory options:(NSDictionary *)options reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = directory;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCD65A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCD2CA0;
  v16[5] = v15;
  directoryCopy = directory;
  optionsCopy = options;

  sub_22FC0D8B4(0, 0, v11, &unk_22FCDA590, v16);
}

@end