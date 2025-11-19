int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  NSLog(@"%s: listener has resumed", "main");

  return 0;
}

void sub_100000EE0(uint64_t a1)
{
  v3 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:1];
  if (*(*(a1 + 32) + 8) == 1 || (NSLog(@"%s: submitting cache size metric", "-[TBXPCService maintenanceTask:location:predictedForDuration:maxPredictedLocations:completionHandler:]_block_invoke"), [v3 submitCacheAnalyticsEvent], *(*(a1 + 32) + 8) == 1) || (NSLog(@"%s: purging local store if it size exceeds %lu bytes", "-[TBXPCService maintenanceTask:location:predictedForDuration:maxPredictedLocations:completionHandler:]_block_invoke", *(a1 + 56)), objc_msgSend(v3, "prune3BarsNetworks:completionHandler:", *(a1 + 56), 0), *(*(a1 + 32) + 8) == 1))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(v2 + 16))();
    }
  }

  else
  {
    NSLog(@"%s: fetching networks predicted based on current location", "[TBXPCService maintenanceTask:location:predictedForDuration:maxPredictedLocations:completionHandler:]_block_invoke");
    [v3 fetch3BarsNetworksPredictedForLocation:*(a1 + 40) duration:*(a1 + 72) maxLocations:*(a1 + 48) completionHandler:*(a1 + 64)];
  }
}

void sub_100001264(uint64_t a1, void *a2, void *a3, int a4)
{
  v12 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  if (a4)
  {
    v9 = [v12 error];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v12 error];
      NSLog(@"%s: fetch for %llu failed, error %@", "[TBXPCService fetchTileFromVisitedCallback:cacheAge:]_block_invoke", v10, v11);
    }

    else
    {
      NSLog(@"%s: fetch for %llu completed", "[TBXPCService fetchTileFromVisitedCallback:cacheAge:]_block_invoke", v10);
    }
  }
}

void sub_1000013F8(uint64_t a1)
{
  v2 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:1];
  NSLog(@"%s: fetching networks based on given location", "[TBXPCService fetch3BarsNetworksForLocation:]_block_invoke");
  [v2 fetch3BarsNetworksFor:*(a1 + 32)];
}

void sub_100001508(uint64_t a1)
{
  v2 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:1];
  [v2 prune3BarsNetworks:*(a1 + 32) completionHandler:0];
}

void sub_100001648(uint64_t a1)
{
  v2 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:1];
  [v2 forceFetch3BarsNetworkMatchingBSSID:*(a1 + 32) completionHandler:*(a1 + 40)];
}