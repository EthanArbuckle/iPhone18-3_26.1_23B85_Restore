@interface ManageStorageAppIconURL
- (_TtC14iCloudSettings23ManageStorageAppIconURL)init;
- (void)urlForScreenScaleWithCompletionHandler:(id)a3;
@end

@implementation ManageStorageAppIconURL

- (_TtC14iCloudSettings23ManageStorageAppIconURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)urlForScreenScaleWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2759C7510;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2759C3C40;
  v13[5] = v12;
  v14 = self;
  sub_275929728(0, 0, v8, &unk_2759C33E0, v13);
}

@end