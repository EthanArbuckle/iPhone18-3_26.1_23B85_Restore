@interface PLCacheDeleteClient
+ (BOOL)hasEntitlementsForCacheDelete;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_queryAvailableSpace;
- (NSString)cacheDeleteVolume;
- (PLCacheDeleteClient)initWithQoSClass:(unsigned int)class pathForVolume:(id)volume callbackQueue:(id)queue;
- (void)_notifyDiskAvailabilityRequestCompletionHandler:(id)handler withSuccess:(BOOL)success numBytesPurged:(int64_t)purged additionalBytesRequired:(int64_t)required error:(id)error;
- (void)cancelDiskSpaceAvailabilityRequest;
- (void)requestDiskSpaceAvailabilityOfSize:(int64_t)size completion:(id)completion;
@end

@implementation PLCacheDeleteClient

- (void)cancelDiskSpaceAvailabilityRequest
{
  cacheDeleteQueryQueue = [(PLCacheDeleteClient *)self cacheDeleteQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLCacheDeleteClient_cancelDiskSpaceAvailabilityRequest__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_async(cacheDeleteQueryQueue, block);
}

void __57__PLCacheDeleteClient_cancelDiskSpaceAvailabilityRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCacheDeletePurgeToken];
  v3 = PLBackendGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Cancelling purge request", buf, 2u);
    }

    v5 = [*(a1 + 32) currentCacheDeletePurgeToken];
    [*(a1 + 32) setCurrentCacheDeletePurgeToken:0];
    CacheDeleteCancelPurge();
    CFRelease(v5);
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: No active purge request to cancel.", v6, 2u);
    }
  }
}

- (void)_notifyDiskAvailabilityRequestCompletionHandler:(id)handler withSuccess:(BOOL)success numBytesPurged:(int64_t)purged additionalBytesRequired:(int64_t)required error:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  currentCacheDeletePurgeToken = [(PLCacheDeleteClient *)self currentCacheDeletePurgeToken];
  if (currentCacheDeletePurgeToken)
  {
    CFRelease(currentCacheDeletePurgeToken);
  }

  [(PLCacheDeleteClient *)self setCurrentCacheDeletePurgeToken:0];
  callbackQueue = [(PLCacheDeleteClient *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__PLCacheDeleteClient__notifyDiskAvailabilityRequestCompletionHandler_withSuccess_numBytesPurged_additionalBytesRequired_error___block_invoke;
  block[3] = &unk_1E7565578;
  successCopy = success;
  purgedCopy = purged;
  requiredCopy = required;
  v19 = errorCopy;
  v20 = handlerCopy;
  v16 = errorCopy;
  v17 = handlerCopy;
  dispatch_async(callbackQueue, block);
}

uint64_t __128__PLCacheDeleteClient__notifyDiskAvailabilityRequestCompletionHandler_withSuccess_numBytesPurged_additionalBytesRequired_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 48), *(a1 + 56), *(a1 + 32));
  }

  return result;
}

- (void)requestDiskSpaceAvailabilityOfSize:(int64_t)size completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    byteFormatter = [(PLCacheDeleteClient *)self byteFormatter];
    v9 = [byteFormatter stringFromByteCount:size];
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Ensuring availability of %{public}@ free space", buf, 0xCu);
  }

  cacheDeleteQueryQueue = [(PLCacheDeleteClient *)self cacheDeleteQueryQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PLCacheDeleteClient_requestDiskSpaceAvailabilityOfSize_completion___block_invoke;
  block[3] = &unk_1E7575338;
  block[4] = self;
  v13 = completionCopy;
  sizeCopy = size;
  v11 = completionCopy;
  dispatch_async(cacheDeleteQueryQueue, block);
}

void __69__PLCacheDeleteClient_requestDiskSpaceAvailabilityOfSize_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) currentCacheDeletePurgeToken])
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "PLCacheDeleteClient: Attempting to make a purge request when we already have one active. Ignoring.", buf, 2u);
    }

    v3 = PLCacheDeleteClientError(2, @"A purge request is already active and hasn't been cancelled.");
    [*(a1 + 32) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 40) withSuccess:0 numBytesPurged:0 additionalBytesRequired:0 error:v3];
  }

  else
  {
    v4 = [*(a1 + 32) _queryAvailableSpace];
    v6 = v5;
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Available space (MB):\n\tFree=%lld MB (%lld)\n\tPurgeable=%lld MB (%lld)", v4 / 0x100000, v4, v6 / 0x100000, v6];
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Current disk state: %{public}@", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    v10 = v9 - v4;
    if (v9 <= v4)
    {
      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 32) byteFormatter];
        v26 = [v25 stringFromByteCount:v4];
        v27 = [*(a1 + 32) byteFormatter];
        v28 = [v27 stringFromByteCount:*(a1 + 48)];
        *buf = 138543618;
        *&buf[4] = v26;
        v34 = 2114;
        v35 = v28;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Purging cache delete files not required, as there is enough free space (%{public}@) to cover the required disk space (%{public}@)", buf, 0x16u);
      }

      [*(a1 + 32) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 40) withSuccess:1 numBytesPurged:0 additionalBytesRequired:0 error:0];
    }

    else
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) byteFormatter];
        v13 = [v12 stringFromByteCount:v4];
        v14 = [*(a1 + 32) byteFormatter];
        v15 = [v14 stringFromByteCount:v10];
        *buf = 138543618;
        *&buf[4] = v13;
        v34 = 2114;
        v35 = v15;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Since we have %{public}@ free already, requesting %{public}@ of purgeable space to be cleared...", buf, 0x16u);
      }

      v16 = [*(a1 + 32) cacheDeleteVolume];
      v31[0] = @"CACHE_DELETE_VOLUME";
      v31[1] = @"CACHE_DELETE_URGENCY_LIMIT";
      v32[0] = v16;
      v32[1] = &unk_1F0FBAB88;
      v31[2] = @"CACHE_DELETE_AMOUNT";
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
      v32[2] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v19 = PLBackendGetLog();
      v20 = os_signpost_id_generate(v19);
      *buf = 0;
      mach_timebase_info(buf);
      v21 = v19;
      v22 = v21;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "PLCacheDeleteClientPurgeRequest", "", v30, 2u);
      }

      mach_absolute_time();
      CFAbsoluteTimeGetCurrent();
      v29 = *(a1 + 40);
      v23 = v22;
      [*(a1 + 32) setCurrentCacheDeletePurgeToken:CacheDeletePurgeSpaceWithInfo()];
    }
  }
}

void __69__PLCacheDeleteClient_requestDiskSpaceAvailabilityOfSize_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 56);
  v6 = mach_absolute_time();
  v7 = *(a1 + 64);
  v9 = *(a1 + 96);
  v8 = *(a1 + 100);
  v10 = *(a1 + 32);
  v11 = v10;
  v12 = *(a1 + 72);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PLCacheDeleteClientPurgeRequest", "", buf, 2u);
  }

  v13 = *(a1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v37 = "PLCacheDeleteClientPurgeRequest";
    v38 = 2048;
    v39 = ((((v6 - v7) * v9) / v8) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v14 = Current - v5;
  v15 = COERCE_DOUBLE(a2);
  v16 = [*(a1 + 40) currentCacheDeletePurgeToken];
  [*&v15 objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v18 = [*&v15 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v19 = [v18 longLongValue];

  if (v16)
  {
    if (v17 == 0.0)
    {
      v29 = [*(a1 + 40) cacheDeleteQueryQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PLCacheDeleteClient_requestDiskSpaceAvailabilityOfSize_completion___block_invoke_69;
      block[3] = &unk_1E7565528;
      block[4] = *(a1 + 40);
      v33 = v14;
      v31 = *&v15;
      v34 = v19;
      v35 = *(a1 + 80);
      v32 = *(a1 + 48);
      dispatch_async(v29, block);
    }

    else
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(a1 + 40) byteFormatter];
        v22 = [v21 stringFromByteCount:*(a1 + 80)];
        *buf = 138543618;
        v37 = v22;
        v38 = 2112;
        v39 = v17;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "PLCacheDeleteClient: Encountered error requesting purge of %{public}@. Error string: %@", buf, 0x16u);
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered error in Cache Delete: %@", *&v17];
      v24 = PLCacheDeleteClientError(4, v23);

      [*(a1 + 40) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 48) withSuccess:0 numBytesPurged:v19 additionalBytesRequired:*(a1 + 80) - v19 error:v24];
    }
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 40) byteFormatter];
      v27 = [v26 stringFromByteCount:v19];
      *buf = 134218498;
      v37 = *&v14;
      v38 = 2114;
      v39 = v15;
      v40 = 2114;
      v41 = v27;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Purge cancelled (%.3f seconds) with results: %{public}@\n%{public}@ purged before cancellation.", buf, 0x20u);
    }

    v28 = PLCacheDeleteClientError(1, @"Purge request was cancelled.");
    [*(a1 + 40) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 48) withSuccess:0 numBytesPurged:v19 additionalBytesRequired:*(a1 + 80) - v19 error:v28];
  }
}

void __69__PLCacheDeleteClient_requestDiskSpaceAvailabilityOfSize_completion___block_invoke_69(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queryAvailableSpace];
  v4 = v3;
  v5 = [MEMORY[0x1E69BF208] diskSpaceAvailableForUse];
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Available space (MB):\n\tFree=%lld MB (%lld)\n\tPurgeable=%lld MB (%lld)", v2 / 0x100000, v2, v4 / 0x100000, v4];
    v10 = [*(a1 + 32) byteFormatter];
    v11 = [v10 stringFromByteCount:v5];
    v12 = [*(a1 + 32) byteFormatter];
    v13 = [v12 stringFromByteCount:*(a1 + 64)];
    *buf = 134219010;
    v40 = v7;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 2114;
    v46 = v11;
    v47 = 2114;
    v48 = v13;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Purge completed (%.3f seconds) with results: %{public}@\n%{public}@\n%{public}@ free\n%{public}@ purged.", buf, 0x34u);
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = PLBackendGetLog();
  v18 = v17;
  if (v5 >= v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [*(a1 + 32) byteFormatter];
      v28 = [v38 stringFromByteCount:*(a1 + 72)];
      v29 = [*(a1 + 32) byteFormatter];
      v30 = [v29 stringFromByteCount:*(a1 + 64)];
      if (v14 >= v15)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v32 = [*(a1 + 32) byteFormatter];
      v33 = [v32 stringFromByteCount:*(a1 + 80)];
      v34 = [*(a1 + 32) byteFormatter];
      v35 = [v34 stringFromByteCount:v5];
      *buf = 138544642;
      v40 = v28;
      v41 = 2114;
      v42 = v30;
      v43 = 2114;
      v44 = v31;
      v45 = 2114;
      v46 = v33;
      v47 = 2114;
      v48 = v35;
      v49 = 2114;
      v50 = @"YES";
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: Purged enough bytes (requested=%{public}@, purged=%{public}@): %{public}@, Enough space now available (total needed: %{public}@, now available=%{public}@): %{public}@", buf, 0x3Eu);
    }

    [*(a1 + 32) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 48) withSuccess:1 numBytesPurged:*(a1 + 64) additionalBytesRequired:0 error:0];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v37 = [*(a1 + 32) byteFormatter];
      v19 = [v37 stringFromByteCount:*(a1 + 64)];
      v36 = [*(a1 + 32) byteFormatter];
      v20 = [v36 stringFromByteCount:*(a1 + 72)];
      if (v14 >= v15)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = [*(a1 + 32) byteFormatter];
      v23 = [v22 stringFromByteCount:v5];
      v24 = [*(a1 + 32) byteFormatter];
      v25 = [v24 stringFromByteCount:*(a1 + 80)];
      *buf = 138544642;
      v40 = v19;
      v41 = 2114;
      v42 = v20;
      v43 = 2114;
      v44 = v21;
      v45 = 2114;
      v46 = v23;
      v47 = 2114;
      v48 = v25;
      v49 = 2114;
      v50 = @"NO";
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "PLCacheDeleteClient: Purged enough bytes (purged=%{public}@ requested=%{public}@): %{public}@, Enough space now available (available=%{public}@ total needed: %{public}@): %{public}@", buf, 0x3Eu);
    }

    v26 = *(a1 + 80) - v5;
    v27 = PLCacheDeleteClientError(3, @"The requested disk space could not be satisfied with currently available (and purgeable) disk space.");
    [*(a1 + 32) _notifyDiskAvailabilityRequestCompletionHandler:*(a1 + 48) withSuccess:0 numBytesPurged:*(a1 + 64) additionalBytesRequired:v26 error:v27];
  }
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_queryAvailableSpace
{
  v23[1] = *MEMORY[0x1E69E9840];
  cacheDeleteQueryQueue = [(PLCacheDeleteClient *)self cacheDeleteQueryQueue];
  dispatch_assert_queue_V2(cacheDeleteQueryQueue);

  cacheDeleteVolume = [(PLCacheDeleteClient *)self cacheDeleteVolume];
  if (cacheDeleteVolume)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = @"CACHE_DELETE_VOLUME";
    v23[0] = cacheDeleteVolume;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v6 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
    v7 = CFAbsoluteTimeGetCurrent();
    v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_FREESPACE"];
    longLongValue = [v8 longLongValue];

    v10 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_FSPURGEABLE"];
    longLongValue2 = [v10 longLongValue];

    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Available space (MB):\n\tFree=%lld MB (%lld)\n\tPurgeable=%lld MB (%lld)", longLongValue / 0x100000, longLongValue, longLongValue2 / 0x100000, longLongValue2];
      *buf = 134218498;
      v17 = v7 - Current;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "PLCacheDeleteClient: queryAvailableSpace (%.3f seconds)\nCacheDeleteCopyItemizedPurgeableSpaceWithInfo: %@ \n%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PLCacheDeleteClient: queryAvailableSpace returning 0 available space because cacheDeleteVolume was nil", buf, 2u);
    }

    longLongValue2 = 0;
    longLongValue = 0;
  }

  v14 = longLongValue;
  v15 = longLongValue2;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (NSString)cacheDeleteVolume
{
  v13 = *MEMORY[0x1E69E9840];
  cachedVolume = self->_cachedVolume;
  if (!cachedVolume)
  {
    memset(&v12, 0, 512);
    if (statfs([(NSString *)self->_pathForVolume fileSystemRepresentation], &v12))
    {
      v4 = PLBackendGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        v10 = 136315138;
        v11 = v6;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "statfs error: %s, Unable to get storage mount point.", &v10, 0xCu);
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v12.f_mntonname encoding:4];
    v8 = self->_cachedVolume;
    self->_cachedVolume = v7;

    cachedVolume = self->_cachedVolume;
  }

  return cachedVolume;
}

- (PLCacheDeleteClient)initWithQoSClass:(unsigned int)class pathForVolume:(id)volume callbackQueue:(id)queue
{
  volumeCopy = volume;
  queueCopy = queue;
  v12 = queueCopy;
  if (volumeCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCacheDeleteClient.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"pathForVolume"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCacheDeleteClient.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"callbackQueue"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = PLCacheDeleteClient;
  v13 = [(PLCacheDeleteClient *)&v22 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_qos_class(0, class, 0);
    v15 = dispatch_queue_create("com.apple.photos.CacheDeleteRequest", v14);
    cacheDeleteQueryQueue = v13->_cacheDeleteQueryQueue;
    v13->_cacheDeleteQueryQueue = v15;

    objc_storeStrong(&v13->_pathForVolume, volume);
    objc_storeStrong(&v13->_callbackQueue, queue);
    v17 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    byteFormatter = v13->_byteFormatter;
    v13->_byteFormatter = v17;
  }

  return v13;
}

+ (BOOL)hasEntitlementsForCacheDelete
{
  if (hasEntitlementsForCacheDelete_onceToken != -1)
  {
    dispatch_once(&hasEntitlementsForCacheDelete_onceToken, &__block_literal_global_3242);
  }

  return hasEntitlementsForCacheDelete_hasEntitlements;
}

void __52__PLCacheDeleteClient_hasEntitlementsForCacheDelete__block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v3 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.CacheDelete", 0);
    CFRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v3;
    if ([v2 containsObject:@"CLIENT_ENTITLEMENT"] && objc_msgSend(v2, "containsObject:", @"PURGE_ENTITLEMENT") && objc_msgSend(v2, "containsObject:", @"ITEMIZED_PURGEABLE_ENTITLEMENT") && objc_msgSend(v2, "containsObject:", @"CANCEL_PURGE_ENTITLEMENT"))
    {
      hasEntitlementsForCacheDelete_hasEntitlements = 1;
    }
  }
}

@end