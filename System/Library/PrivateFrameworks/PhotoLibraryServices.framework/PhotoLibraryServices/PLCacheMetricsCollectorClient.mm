@interface PLCacheMetricsCollectorClient
- (PLCacheMetricsCollectorClient)initWithAssetsdClient:(id)client;
- (void)incrementImageCacheHitCount;
- (void)incrementImageCacheMissCount;
- (void)incrementVideoComplementCacheHitCount;
- (void)incrementVideoComplementCacheMissCount;
@end

@implementation PLCacheMetricsCollectorClient

- (void)incrementVideoComplementCacheMissCount
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _sharedRegion;
  v3 = (_sharedRegion + 12);
  atomic_fetch_add((_sharedRegion + 12), 1u);
  v4 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = atomic_load(v2);
    v6 = atomic_load(v2 + 1);
    v7 = atomic_load(v2 + 2);
    v8 = atomic_load(v3);
    v9 = 134218752;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "incrementVideoComplementMissCount, updated stats: [%ld, %ld, %ld, %ld]", &v9, 0x2Au);
  }
}

- (void)incrementVideoComplementCacheHitCount
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _sharedRegion;
  v3 = (_sharedRegion + 8);
  atomic_fetch_add((_sharedRegion + 8), 1u);
  v4 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = atomic_load(v2);
    v6 = atomic_load(v2 + 1);
    v7 = atomic_load(v3);
    v8 = atomic_load(v2 + 3);
    v9 = 134218752;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "incrementVideoComplementHitCount, current stats: [%ld, %ld, %ld, %ld]", &v9, 0x2Au);
  }
}

- (void)incrementImageCacheMissCount
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _sharedRegion;
  v3 = (_sharedRegion + 4);
  atomic_fetch_add((_sharedRegion + 4), 1u);
  v4 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = atomic_load(v2);
    v6 = atomic_load(v3);
    v7 = atomic_load(v2 + 2);
    v8 = atomic_load(v2 + 3);
    v9 = 134218752;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "incrementImageCacheMissCount, current stats: [%ld, %ld, %ld, %ld]", &v9, 0x2Au);
  }
}

- (void)incrementImageCacheHitCount
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _sharedRegion;
  atomic_fetch_add(_sharedRegion, 1u);
  v3 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = atomic_load(v2);
    v5 = atomic_load(v2 + 1);
    v6 = atomic_load(v2 + 2);
    v7 = atomic_load(v2 + 3);
    v8 = 134218752;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "incrementImageCacheHitCount, current stats: [%ld, %ld, %ld, %ld]", &v8, 0x2Au);
  }
}

- (PLCacheMetricsCollectorClient)initWithAssetsdClient:(id)client
{
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = PLCacheMetricsCollectorClient;
  v5 = [(PLCacheMetricsCollectorClient *)&v16 init];
  if (v5)
  {
    v6 = _sharedRegion == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_12:
    v12 = v5;
    goto LABEL_13;
  }

  v7 = mmap(0, 0x1000uLL, 3, 4097, 1207959552, 0);
  _sharedRegion = v7;
  if (v7 != -1)
  {
    v8 = xpc_shmem_create(v7, 0x1000uLL);
    v9 = [objc_alloc(MEMORY[0x1E69BF358]) initWithXPCObject:v8];
    if (clientCopy)
    {
      resourceAvailabilityClient = [clientCopy resourceAvailabilityClient];
      [resourceAvailabilityClient setSharedMemoryForCacheMetricsCollector:v9];
    }

    v11 = PLCacheMetricsCollectorGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLCacheMetricsCollectorClient initialized for system Library", v15, 2u);
    }

    goto LABEL_12;
  }

  v14 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to allocate shared memory in PLCacheMetricsCollectorClient", v15, 2u);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

@end