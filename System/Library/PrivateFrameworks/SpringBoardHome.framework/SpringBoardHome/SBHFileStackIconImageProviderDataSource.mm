@interface SBHFileStackIconImageProviderDataSource
@end

@implementation SBHFileStackIconImageProviderDataSource

void __83__SBHFileStackIconImageProviderDataSource_Testing_startSimulatePeriodicImageUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postNotificationFileStackIconDataSourceChanged];
}

@end