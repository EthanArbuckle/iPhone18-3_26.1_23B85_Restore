@interface UISceneOpenItemProvidersDataTransferSession
@end

@implementation UISceneOpenItemProvidersDataTransferSession

void __72___UISceneOpenItemProvidersDataTransferSession_didFinishSendingRequests__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) dragContinuationDidFinishRequestingData];
  v2 = [*(a1 + 32) monitor];
  [v2 sendDelegateEventsIfNeeded];
}

@end