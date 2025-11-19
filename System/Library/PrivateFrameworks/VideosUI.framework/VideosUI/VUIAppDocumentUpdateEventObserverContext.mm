@interface VUIAppDocumentUpdateEventObserverContext
@end

@implementation VUIAppDocumentUpdateEventObserverContext

void __89___VUIAppDocumentUpdateEventObserverContext__refreshTimerWithRefreshTimeEventDescriptor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained refreshTimerByEventDescriptor];
    [v3 removeObjectForKey:*(a1 + 32)];

    v4 = [v6 refreshTimerFiredBlock];
    if (v4)
    {
      v5 = [[VUIAppDocumentRefreshEvent alloc] initWithRefreshEventDescriptor:*(a1 + 32)];
      (v4)[2](v4, v5);
    }

    WeakRetained = v6;
  }
}

@end