@interface ManageStorageAppsListViewModel
+ (NSString)ViewModelDidUpdateNotificationName;
- (_TtC14iCloudSettings30ManageStorageAppsListViewModel)init;
- (id)expandedSubTitleForDataclass:(id)dataclass;
- (id)expandedSubTitleForLiverpoolBundleId:(id)id;
- (void)fetchAppsListWithFetchHomeViewModel:(BOOL)model loadImages:(BOOL)images completionHandler:(id)handler;
- (void)handleQuotaChangeNotification;
@end

@implementation ManageStorageAppsListViewModel

+ (NSString)ViewModelDidUpdateNotificationName
{
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  v3 = qword_280A0F410;

  return v3;
}

- (void)handleQuotaChangeNotification
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_27587D460(0, 0, v6, &unk_2759C3C50, v8);
}

- (void)fetchAppsListWithFetchHomeViewModel:(BOOL)model loadImages:(BOOL)images completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = model;
  *(v14 + 17) = images;
  *(v14 + 24) = v13;
  *(v14 + 32) = self;
  v15 = sub_2759BA518();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2759C3C38;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2759C3C40;
  v17[5] = v16;
  selfCopy = self;
  sub_275929728(0, 0, v12, &unk_2759C33E0, v17);
}

- (id)expandedSubTitleForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  selfCopy = self;
  ManageStorageAppsListViewModel.expandedSubTitle(forDataclass:)(dataclassCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_2759BA258();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)expandedSubTitleForLiverpoolBundleId:(id)id
{
  v4 = sub_2759BA298();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = ManageStorageAppsListViewModel.expandedSubTitle(forLiverpoolBundleId:)(v8).value._object;

  if (object)
  {
    v10 = sub_2759BA258();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_TtC14iCloudSettings30ManageStorageAppsListViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end