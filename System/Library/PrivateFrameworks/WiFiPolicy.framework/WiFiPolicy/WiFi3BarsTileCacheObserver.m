@interface WiFi3BarsTileCacheObserver
- (WiFi3BarsTileCacheObserver)initWithDataSourceMediator:(id)a3;
- (void)_scheduleXPCActivity;
- (void)_submitCacheAvailabilityMetric;
@end

@implementation WiFi3BarsTileCacheObserver

- (WiFi3BarsTileCacheObserver)initWithDataSourceMediator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WiFi3BarsTileCacheObserver;
  v5 = [(WiFi3BarsTileCacheObserver *)&v8 init];
  dataSourceMediator = v5->_dataSourceMediator;
  v5->_dataSourceMediator = v4;

  [(WiFi3BarsTileCacheObserver *)v5 _scheduleXPCActivity];
  return v5;
}

- (void)_scheduleXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D863B0], 0);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], *MEMORY[0x277D862A0]);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], *MEMORY[0x277D86290]);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__WiFi3BarsTileCacheObserver__scheduleXPCActivity__block_invoke;
  handler[3] = &unk_2789C6830;
  handler[4] = self;
  xpc_activity_register("com.apple.wifimanager.3BarsCacheObserverActivity", v3, handler);
}

uint64_t __50__WiFi3BarsTileCacheObserver__scheduleXPCActivity__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  NSLog(&cfstr_SStateLd.isa, "[WiFi3BarsTileCacheObserver _scheduleXPCActivity]_block_invoke", state);
  v4 = *(a1 + 32);

  return [v4 _submitCacheAvailabilityMetric];
}

- (void)_submitCacheAvailabilityMetric
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = +[WiFiLocationManager sharedWiFiLocationManager];
  v4 = [v3 latestLocation];

  if (v4)
  {
    if ([WiFiLocationManager isLocationValid:v4 uptoSeconds:900.0 requiredAccuracy:2000.0])
    {
      v5 = [TBGloriaTile alloc];
      [v4 coordinate];
      v7 = v6;
      [v4 coordinate];
      v9 = [(TBGloriaTile *)v5 initWithLat:+[TBGloriaTile lng:"defaultZoomLevel"]zoom:v7, v8];
      if ([(TBGloriaTile *)v9 key])
      {
        v10 = [(TBGloriaTile *)v9 key];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
          *buf = 136315650;
          v29 = "[WiFi3BarsTileCacheObserver _submitCacheAvailabilityMetric]";
          v30 = 2112;
          v31 = v11;
          v32 = 1024;
          v33 = +[TBGloriaTile defaultZoomLevel];
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Fetching tile key at key: %@ zoom: %hhu", buf, 0x1Cu);
        }

        v12 = [MEMORY[0x277CBEAA8] date];
        v24 = [v12 dateByAddingDays:-7];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v14 = [TBTileItemDescriptor tileItemDescriptorWithKey:v13];

        v15 = [MEMORY[0x277CBEB98] setWithObjects:{v14, 0}];
        v16 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v15 maxCacheAge:v24];
        v17 = [[TBTileFetchRequest alloc] initWithDescriptor:v16 sourcePolicy:1 cacheable:0];
        v26[0] = @"trigger";
        v26[1] = @"tileKey";
        v27[0] = &unk_2848B95D8;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v27[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        [(TBTileFetchRequest *)v17 setUserInfo:v19];

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __60__WiFi3BarsTileCacheObserver__submitCacheAvailabilityMetric__block_invoke;
        v25[3] = &__block_descriptor_40_e39_v28__0___TBFetchResponse__8___v___16B24l;
        v25[4] = v10;
        [(TBTileFetchRequest *)v17 setResultsHandler:v25];
        v20 = [(WiFi3BarsTileCacheObserver *)self dataSourceMediator];
        [v20 executeFetchRequest:v17];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[WiFi3BarsTileCacheObserver _submitCacheAvailabilityMetric]";
        v30 = 1024;
        LODWORD(v31) = +[TBGloriaTile defaultZoomLevel];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Invalid tileKey at zoom: %hhu", buf, 0x12u);
      }
    }

    else
    {
      v22 = [TBCacheAnalyticsEvent cacheAvailabilityEventWithStatus:3];
      [TBAnalytics captureEvent:v22];
    }
  }

  else
  {
    v21 = [TBCacheAnalyticsEvent cacheAvailabilityEventWithStatus:2];
    [TBAnalytics captureEvent:v21];

    NSLog(&cfstr_SNoLocationAva.isa, "[WiFi3BarsTileCacheObserver _submitCacheAvailabilityMetric]");
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __60__WiFi3BarsTileCacheObserver__submitCacheAvailabilityMetric__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v14 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  if (a4)
  {
    v9 = [v14 error];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v14 error];
      NSLog(&cfstr_SFetchForLluFa.isa, "[WiFi3BarsTileCacheObserver _submitCacheAvailabilityMetric]_block_invoke", v10, v11);

      v12 = 0;
    }

    else
    {
      NSLog(&cfstr_SFetchForLluCo.isa, "[WiFi3BarsTileCacheObserver _submitCacheAvailabilityMetric]_block_invoke", v10);
      v12 = 1;
    }

    v13 = [TBCacheAnalyticsEvent cacheAvailabilityEventWithStatus:v12];
    [TBAnalytics captureEvent:v13];
  }
}

@end