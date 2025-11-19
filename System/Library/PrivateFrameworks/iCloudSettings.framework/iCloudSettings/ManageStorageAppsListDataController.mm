@interface ManageStorageAppsListDataController
- (BOOL)shouldIgnoreCache;
- (_TtC14iCloudSettings35ManageStorageAppsListDataController)init;
- (_TtC14iCloudSettings35ManageStorageAppsListDataController)initWithAccount:(id)a3 launchedFromRootLevel:(BOOL)a4 shouldIgnoreCache:(BOOL)a5;
- (void)fetchAppsListDataWithCompletionHandler:(id)a3;
- (void)setShouldIgnoreCache:(BOOL)a3;
@end

@implementation ManageStorageAppsListDataController

- (BOOL)shouldIgnoreCache
{
  v3 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldIgnoreCache:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (_TtC14iCloudSettings35ManageStorageAppsListDataController)initWithAccount:(id)a3 launchedFromRootLevel:(BOOL)a4 shouldIgnoreCache:(BOOL)a5
{
  v7 = a3;
  v8 = sub_27589C0A4(v7, a4, a5);

  return v8;
}

- (void)fetchAppsListDataWithCompletionHandler:(id)a3
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
  v12[4] = &unk_2759C33D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2759C3C40;
  v13[5] = v12;
  v14 = self;
  sub_275929728(0, 0, v8, &unk_2759C33E0, v13);
}

- (_TtC14iCloudSettings35ManageStorageAppsListDataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end