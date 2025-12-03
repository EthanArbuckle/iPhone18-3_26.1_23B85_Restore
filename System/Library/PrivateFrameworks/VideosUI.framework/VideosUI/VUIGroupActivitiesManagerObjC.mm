@interface VUIGroupActivitiesManagerObjC
+ (BOOL)handleCommerceSharedWatchUrl:(id)url;
+ (BOOL)isSharedWatchIdValidForCurrentSession:(id)session;
+ (id)itemProviderForActivityWithAdamId:(id)id previewMetadata:(id)metadata existingItemProvider:(id)provider;
+ (id)itemProviderForActivityWithPlayable:(id)playable previewMetadata:(id)metadata existingItemProvider:(id)provider;
+ (id)itemProviderForActivityWithSharedWatchId:(id)id sharedWatchUrl:(id)url previewMetadata:(id)metadata existingItemProvider:(id)provider;
+ (void)handleSharedPlayable:(id)playable watchTogetherUrl:(id)url startupAction:(int64_t)action previewMetadata:(id)metadata completion:(id)completion;
+ (void)playerDidStart:(id)start;
+ (void)requestPermissionToStartCowatchingForPlayable:(id)playable completion:(id)completion;
@end

@implementation VUIGroupActivitiesManagerObjC

+ (void)handleSharedPlayable:(id)playable watchTogetherUrl:(id)url startupAction:(int64_t)action previewMetadata:(id)metadata completion:(id)completion
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(completion);
  if (url)
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
  playableCopy = playable;
  metadataCopy = metadata;
  static GroupActivitiesManagerProxy.handle(sharedPlayable:watchTogetherUrl:startupAction:previewMetadata:completion:)(playableCopy, v14, action, metadata, sub_1E38DA53C, v18);

  sub_1E325F748(v14, &unk_1ECF363C0);
}

+ (BOOL)handleCommerceSharedWatchUrl:(id)url
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

+ (id)itemProviderForActivityWithSharedWatchId:(id)id sharedWatchUrl:(id)url previewMetadata:(id)metadata existingItemProvider:(id)provider
{
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4205F14();
  sub_1E41FE3C4();
  metadataCopy = metadata;
  providerCopy = provider;
  v16 = static GroupActivitiesManagerProxy.itemProvider(for:sharedWatchUrl:previewMetadata:existing:)();

  (*(v10 + 8))(v13, v8);

  return v16;
}

+ (id)itemProviderForActivityWithPlayable:(id)playable previewMetadata:(id)metadata existingItemProvider:(id)provider
{
  playableCopy = playable;
  metadataCopy = metadata;
  providerCopy = provider;
  OUTLINED_FUNCTION_9_131();
  v11 = static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)();

  return v11;
}

+ (id)itemProviderForActivityWithAdamId:(id)id previewMetadata:(id)metadata existingItemProvider:(id)provider
{
  v7 = sub_1E4205F14();
  v9 = v8;
  metadataCopy = metadata;
  providerCopy = provider;
  v12 = static GroupActivitiesManagerProxy.itemProvider(for:previewMetadata:existing:)(v7, v9, metadataCopy, provider);

  return v12;
}

+ (void)playerDidStart:(id)start
{
  startCopy = start;
  static GroupActivitiesManagerProxy.playerDidStart(_:)();
}

+ (void)requestPermissionToStartCowatchingForPlayable:(id)playable completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  playableCopy = playable;
  static GroupActivitiesManagerProxy.requestPermissionToStartCowatching(for:completion:)(playable, sub_1E38DA520, v6);
}

+ (BOOL)isSharedWatchIdValidForCurrentSession:(id)session
{
  if (session)
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