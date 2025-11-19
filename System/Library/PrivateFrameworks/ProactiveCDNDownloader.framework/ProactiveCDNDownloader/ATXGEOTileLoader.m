@interface ATXGEOTileLoader
- (ATXGEOTileLoader)init;
- (id)tileKeyListForLocation:(id)a3;
- (void)requestGEOTileDataForLocation:(id)a3 tileDataHandler:(id)a4;
- (void)requestGEOTileDataForLocation:(id)a3 tileLoader:(id)a4 tileDataHandler:(id)a5;
@end

@implementation ATXGEOTileLoader

- (ATXGEOTileLoader)init
{
  v10.receiver = self;
  v10.super_class = ATXGEOTileLoader;
  v2 = [(ATXGEOTileLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;
  }

  return v2;
}

- (void)requestGEOTileDataForLocation:(id)a3 tileDataHandler:(id)a4
{
  v6 = requestGEOTileDataForLocation_tileDataHandler__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    [ATXGEOTileLoader requestGEOTileDataForLocation:tileDataHandler:];
  }

  v9 = [MEMORY[0x277D0EDA8] modernLoader];
  [(ATXGEOTileLoader *)self requestGEOTileDataForLocation:v8 tileLoader:v9 tileDataHandler:v7];
}

uint64_t __66__ATXGEOTileLoader_requestGEOTileDataForLocation_tileDataHandler___block_invoke()
{
  [MEMORY[0x277D0EDA8] setMemoryCacheCountLimit:0];
  v0 = MEMORY[0x277D0EDA8];

  return [v0 setMemoryCacheTotalCostLimit:0];
}

- (void)requestGEOTileDataForLocation:(id)a3 tileLoader:(id)a4 tileDataHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a4;
  v19 = a5;
  v8 = [(ATXGEOTileLoader *)self tileKeyListForLocation:a3];
  v9 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v15 = GEOTileLoaderClientIdentifier();
        callbackQueue = self->_callbackQueue;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke;
        v21[3] = &unk_279AB6F60;
        v23 = v19;
        v22 = v9;
        [v20 loadKey:v14 priority:2147483646 forClient:v15 options:3 reason:4 callbackQ:callbackQueue beginNetwork:0 callback:v21];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  [MEMORY[0x277D425A0] waitForGroup:v9 timeoutSeconds:&__block_literal_global_21 onGroupComplete:&__block_literal_global_24 onTimeout:1.0];
  v17 = *MEMORY[0x277D85DE8];
}

void __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = __atxlog_handle_hero();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_cold_1(v10, v12);
    }
  }

  v13 = __atxlog_handle_hero();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_cold_2(v13);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_19()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_260C92000, v0, OS_LOG_TYPE_DEFAULT, "GEO: tile download finished", v1, 2u);
  }
}

void __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_22()
{
  v0 = __atxlog_handle_hero();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_22_cold_1(v0);
  }
}

- (id)tileKeyListForLocation:(id)a3
{
  v3 = a3;
  [v3 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;

  v8.n128_u64[0] = v5;
  v9.n128_u64[0] = v7;

  return MEMORY[0x282167150](v8, v9);
}

void __77__ATXGEOTileLoader_requestGEOTileDataForLocation_tileLoader_tileDataHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_260C92000, a2, OS_LOG_TYPE_ERROR, "GEO: Encountered error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end