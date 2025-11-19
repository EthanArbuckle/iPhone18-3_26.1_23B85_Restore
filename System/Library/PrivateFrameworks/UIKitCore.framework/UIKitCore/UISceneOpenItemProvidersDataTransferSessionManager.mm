@interface UISceneOpenItemProvidersDataTransferSessionManager
@end

@implementation UISceneOpenItemProvidersDataTransferSessionManager

void __69___UISceneOpenItemProvidersDataTransferSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_UISceneOpenItemProvidersDataTransferSessionManager);
  v1 = qword_1ED49F5C8;
  qword_1ED49F5C8 = v0;
}

void __66___UISceneOpenItemProvidersDataTransferSessionManager_addSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 40) sessions];
  [v2 addObject:*(a1 + 32)];
}

void __92___UISceneOpenItemProvidersDataTransferSessionManager_dataTransferSessionFinishedTransfers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessions];
  [v2 removeObject:*(a1 + 40)];
}

@end