@interface LTDAssetDownloadAnalyticsEvent
@end

@implementation LTDAssetDownloadAnalyticsEvent

void __45___LTDAssetDownloadAnalyticsEvent_startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeoutEvent];
}

@end