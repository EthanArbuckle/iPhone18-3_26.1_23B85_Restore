@interface UISearchActivityManager
@end

@implementation UISearchActivityManager

void __65___UISearchActivityManager_beginTrackingActiveSearchParticipant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained((a1 + 40));
    v3 = [v2 _activeAssertions];
    [v3 removeObjectForKey:WeakRetained];
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _updateClientSettingsIfNecessary];
}

@end