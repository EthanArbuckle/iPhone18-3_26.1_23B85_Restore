@interface VUIGroupActivitiesManagerObjC
+ (BOOL)handleCommerceSharedWatchUrl:(id)a3;
+ (BOOL)isSharedWatchIdValidForCurrentSession:(id)a3;
+ (id)itemProviderForActivityWithAdamId:(id)a3 previewMetadata:(id)a4 existingItemProvider:(id)a5;
+ (id)itemProviderForActivityWithPlayable:(id)a3 previewMetadata:(id)a4 existingItemProvider:(id)a5;
+ (id)itemProviderForActivityWithSharedWatchId:(id)a3 sharedWatchUrl:(id)a4 previewMetadata:(id)a5 existingItemProvider:(id)a6;
+ (void)handleSharedPlayable:(id)a3 watchTogetherUrl:(id)a4 startupAction:(int64_t)a5 previewMetadata:(id)a6 completion:(id)a7;
+ (void)playerDidStart:(id)a3;
+ (void)requestPermissionToStartCowatchingForPlayable:(id)a3 completion:(id)a4;
@end

@implementation VUIGroupActivitiesManagerObjC

+ (void)handleSharedPlayable:(id)a3 watchTogetherUrl:(id)a4 startupAction:(int64_t)a5 previewMetadata:(id)a6 completion:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a7);
  if (a4)
  {
    sub_1E41FE3C4();
    v16 = sub_1E41FE414();
    v17 = 0;
  }

  else
  {
    v16 = sub_1E41FE414();
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v17, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = a3;
  v20 = a6;
  static GroupActivitiesManagerProxy.handle(sharedPlayable:watchTogetherUrl:startupAction:previewMetadata:completion:)(v19, v14, a5, a6, sub_1E38DA53C, v18);

  sub_1E325F748(v14, &unk_1ECF363C0);
}

+ (BOOL)handleCommerceSharedWatchUrl:(id)a3
{
  v3 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE3C4();
  v9 = static GroupActivitiesManagerProxy.handleCommerce(sharedWatchUrl:)();
  (*(v5 + 8))(v8, v3);
  return v9 & 1;
}

+ (id)itemProviderForActivityWithSharedWatchId:(id)a3 sharedWatchUrl:(id)a4 previewMetadata:(id)a5 existingItemProvider:(id)a6
{
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4205F14();
  sub_1E41FE3C4();
  v14 = a5;
  v15 = a6;
  v16 = static GroupActivitiesManagerProxy.itemProvider(for:sharedWatchUrl:previewMetadata:existing:)();

  (*(v10 + 8))(v13, v8);

  return v16;
}

+ (id)itemProviderForActivityWithPlayable:(id)a3 previewMetadata:(id)a4 existingItemProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  OUTLINED_FUNCTION_9_131();
  v11 = static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)();

  return v11;
}

+ (id)itemProviderForActivityWithAdamId:(id)a3 previewMetadata:(id)a4 existingItemProvider:(id)a5
{
  v7 = sub_1E4205F14();
  v9 = v8;
  v10 = a4;
  v11 = a5;
  v12 = static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)(v7, v9, v10, a5);

  return v12;
}

+ (void)playerDidStart:(id)a3
{
  v3 = a3;
  static GroupActivitiesManagerProxy.playerDidStart(_:)();
}

+ (void)requestPermissionToStartCowatchingForPlayable:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  static GroupActivitiesManagerProxy.requestPermissionToStartCowatching(for:completion:)(a3, sub_1E38DA520, v6);
}

+ (BOOL)isSharedWatchIdValidForCurrentSession:(id)a3
{
  if (a3)
  {
    v3 = sub_1E4205F14();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = static GroupActivitiesManagerProxy.isSharedWatchIdValidForCurrentSession(sharedWatchId:)(v3, v5);

  return v6 & 1;
}

@end