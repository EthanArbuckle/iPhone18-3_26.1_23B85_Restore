@interface ICStorePlatformRequest
- (ICStorePlatformRequest)init;
- (NSArray)itemIdentifiers;
- (NSArray)queryItems;
- (NSDictionary)HTTPHeaders;
- (NSString)clientIdentifier;
- (NSString)imageProfile;
- (NSString)keyProfile;
- (NSString)platformIdentifier;
- (NSString)protocolVersion;
- (id)copyWithItemIdentifiersInRange:(_NSRange)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)performWithResponseHandler:(id)a3;
- (void)setBatchSize:(int64_t)a3;
@end

@implementation ICStorePlatformRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [self->_batchResultsHandler copyWithZone:a3];
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;

    *(v5 + 48) = self->_batchSize;
    v8 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
    v9 = *(v5 + 16);
    *(v5 + 16) = v8;

    v10 = [(NSString *)self->_imageProfile copyWithZone:a3];
    v11 = *(v5 + 64);
    *(v5 + 64) = v10;

    v12 = [(NSArray *)self->_itemIdentifiers copyWithZone:a3];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    v14 = [(NSString *)self->_keyProfile copyWithZone:a3];
    v15 = *(v5 + 72);
    *(v5 + 72) = v14;

    *(v5 + 80) = self->_personalizationStyle;
    v16 = [(NSString *)self->_platformIdentifier copyWithZone:a3];
    v17 = *(v5 + 88);
    *(v5 + 88) = v16;

    v18 = [(NSString *)self->_protocolVersion copyWithZone:a3];
    v19 = *(v5 + 96);
    *(v5 + 96) = v18;

    v20 = [(ICRequestContext *)self->_requestContext copyWithZone:a3];
    v21 = *(v5 + 128);
    *(v5 + 128) = v20;

    *(v5 + 104) = self->_retryDelay;
    *(v5 + 8) = self->_returnsLocalEquivalencies;
    *(v5 + 120) = self->_qualityOfService;
    *(v5 + 112) = self->_timeoutInterval;
    *(v5 + 9) = self->_shouldIgnoreCache;
  }

  return v5;
}

- (NSArray)queryItems
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v4 = [(ICStorePlatformRequest *)self clientIdentifier];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AF60] queryItemWithName:@"caller" value:v4];
    [v3 addObject:v5];
  }

  v6 = [(NSArray *)self->_itemIdentifiers componentsJoinedByString:@", "];
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"id" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(ICStorePlatformRequest *)self keyProfile];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"p" value:v8];
    [v3 addObject:v9];
  }

  if ([(ICStorePlatformRequest *)self returnsLocalEquivalencies])
  {
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"e" value:@"true"];
    [v3 addObject:v10];
  }

  if ([(NSString *)self->_imageProfile length])
  {
    v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"artwork" value:self->_imageProfile];
    [v3 addObject:v11];
  }

  if ([(NSString *)self->_platformIdentifier length])
  {
    v12 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:self->_platformIdentifier];
    [v3 addObject:v12];
  }

  v13 = [(ICStorePlatformRequest *)self protocolVersion];
  if ([v13 length])
  {
    v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"version" value:v13];
    [v3 addObject:v14];
  }

  return v3;
}

- (NSDictionary)HTTPHeaders
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  if ((self->_personalizationStyle - 1) <= 1)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = MEMORY[0x1E696AB78];
    v6 = v4;
    v7 = objc_alloc_init(v5);
    [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
    v8 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v7 setLocale:v8];
    v9 = [v7 stringFromDate:v6];

    if ([v9 length])
    {
      [v3 setObject:v9 forKey:@"X-Request-TimeStamp"];
    }
  }

  return v3;
}

- (id)copyWithItemIdentifiersInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(ICStorePlatformRequest *)self copy];
  if (v6)
  {
    v7 = [(NSArray *)self->_itemIdentifiers subarrayWithRange:location, length];
    v8 = v6[5];
    v6[5] = v7;
  }

  return v6;
}

- (void)setBatchSize:(int64_t)a3
{
  if (a3 >= 101)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Batch size must be <= %ld", 100}];
  }

  v5 = 100;
  if (a3 < 100)
  {
    v5 = a3;
  }

  self->_batchSize = v5;
}

- (NSString)protocolVersion
{
  if ([(NSString *)self->_protocolVersion length])
  {
    v3 = self->_protocolVersion;
  }

  else
  {
    v3 = @"2";
  }

  return v3;
}

- (NSString)platformIdentifier
{
  if (self->_platformIdentifier)
  {
    return self->_platformIdentifier;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (id)performWithResponseHandler:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSArray *)self->_itemIdentifiers count];
    v6 = [(ICStorePlatformRequest *)self keyProfile];
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v73 = v6;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing platform request of %ld items with profile '%{public}@'", buf, 0x20u);
  }

  v7 = +[ICURLSessionManager sharedSessionManager];
  p_qualityOfService = &self->_qualityOfService;
  v40 = [v7 sessionWithQualityOfService:self->_qualityOfService];

  group = dispatch_group_create();
  val = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v9 = [v40 maxConcurrentRequests];
  v10 = v9 - 1;
  if (v9 - 1 >= 5)
  {
    v10 = 5;
  }

  if (v9 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  [val setMaxConcurrentOperationCount:v11];
  [val setName:@"com.apple.iTunesCloud.ICStorePlatformRequest.operationQueue"];
  [val setQualityOfService:*p_qualityOfService];
  batchSize = self->_batchSize;
  v37 = [(ICStorePlatformRequest *)self keyProfile];
  v13 = [v37 isEqualToString:@"lockup"];
  v14 = 50;
  if (v13)
  {
    v14 = 100;
  }

  if (v14 >= batchSize)
  {
    v15 = batchSize;
  }

  else
  {
    v15 = v14;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v73 = __Block_byref_object_copy__9670;
  v74 = __Block_byref_object_dispose__9671;
  v75 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = 0;
  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_attr_make_with_qos_class(v17, *p_qualityOfService, 0);
  queue = dispatch_queue_create("com.apple.iTunesCloud.ICStorePlatformRequest.union", v18);

  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_attr_make_with_qos_class(v19, *p_qualityOfService, 0);
  v41 = dispatch_queue_create("com.apple.iTunesCloud.ICStorePlatformRequest.callout", v20);

  v21 = [ICStorePlatformResponse alloc];
  v22 = [(ICStorePlatformResponse *)v21 initWithResponseDictionary:MEMORY[0x1E695E0F8]];
  v23 = [(NSArray *)self->_itemIdentifiers count];
  if (v23 >= 1)
  {
    for (i = 0; i < v23; i += v15)
    {
      [v16 addObject:v22];
    }
  }

  v25 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v16, "count", v22)}];
  [v25 setCancellable:1];
  objc_initWeak(&location, val);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke;
  v64[3] = &unk_1E7BF4A80;
  objc_copyWeak(&v67, &location);
  v66 = v68;
  v64[4] = queue;
  v64[5] = v41;
  v36 = v3;
  v65 = v36;
  [v25 setCancellationHandler:v64];
  v38 = MEMORY[0x1B8C781E0](self->_batchResultsHandler);
  if (v23 > 0)
  {
    v26 = 0;
    v27 = v23;
    do
    {
      if (v15 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v15;
      }

      v29 = [(ICStorePlatformRequest *)self copyWithItemIdentifiersInRange:v26, v28];
      v30 = [[ICStorePlatformRequestOperation alloc] initWithPlatformRequest:v29 usingURLSession:v40];
      dispatch_group_enter(group);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_4;
      v54[3] = &unk_1E7BF4AD0;
      v54[4] = group;
      v54[5] = queue;
      v55 = v25;
      v56 = v16;
      v60 = buf;
      v58 = v29;
      v59 = v38;
      v61 = v71;
      v62 = v68;
      v63 = v26 / v15;
      v57 = v41;
      [(ICStorePlatformRequestOperation *)v30 setResponseHandler:v54];
      [val addOperation:v30];

      v26 += v15;
      v27 -= v15;
    }

    while (v26 < v23);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_7;
  block[3] = &unk_1E7BF4AF8;
  v46 = val;
  v47 = v41;
  v52 = v71;
  v53 = buf;
  v50 = v36;
  v51 = v68;
  v48 = self;
  v49 = v16;
  v31 = v36;
  v32 = val;
  dispatch_group_notify(group, queue, block);
  v33 = v25;

  objc_destroyWeak(&v67);
  _Block_object_dispose(v68, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(buf, 8);

  return v33;
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained cancelAllOperations];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_2;
  block[3] = &unk_1E7BF7BF0;
  v3 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  dispatch_async(v3, block);
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_8;
    block[3] = &unk_1E7BF6B88;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 48);
    v7 = *(a1 + 80);
    v4 = *(a1 + 64);
    block[5] = *(a1 + 56);
    v6 = v4;
    dispatch_async(v3, block);
  }
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_5;
  block[3] = &unk_1E7BF4AA8;
  v22 = *(a1 + 48);
  v9 = v6;
  v10 = *(a1 + 88);
  v23 = v9;
  v26 = v10;
  v11 = v5;
  v12 = *(a1 + 56);
  v24 = v11;
  v25 = v12;
  v13 = *(a1 + 112);
  v27 = *(a1 + 96);
  v28 = v13;
  dispatch_group_async(v7, v8, block);
  v14 = *(a1 + 80);
  if (v14 && (*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_6;
    v17[3] = &unk_1E7BF9E78;
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);
    v20 = v14;
    v17[4] = v15;
    v18 = v11;
    v19 = v9;
    dispatch_async(v16, v17);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  v2 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) replaceObjectAtIndex:*(a1 + 80) withObject:?];
    ++*(*(*(a1 + 72) + 8) + 24);
  }
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) itemIdentifiers];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_8(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(*(a1[7] + 8) + 24);
    v5 = *(*(a1[8] + 8) + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Request completed with %ld responses. err=%{public}@", &v7, 0x20u);
  }

  if (*(*(a1[7] + 8) + 24))
  {
    v6 = [[ICStorePlatformResponseGroup alloc] initWithResponses:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_3;
    block[3] = &unk_1E7BF9D20;
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    dispatch_async(v2, block);
  }
}

void __53__ICStorePlatformRequest_performWithResponseHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (NSString)keyProfile
{
  if (self->_keyProfile)
  {
    return self->_keyProfile;
  }

  else
  {
    return @"lockup";
  }
}

- (NSArray)itemIdentifiers
{
  if (self->_itemIdentifiers)
  {
    return self->_itemIdentifiers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSString)imageProfile
{
  if (self->_imageProfile)
  {
    return self->_imageProfile;
  }

  else
  {
    return &stru_1F2C4A680;
  }
}

- (NSString)clientIdentifier
{
  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    v3 = clientIdentifier;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];

    if ([v5 length])
    {
      v3 = v5;
    }

    else
    {
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v3 = [v6 processName];
    }
  }

  return v3;
}

- (ICStorePlatformRequest)init
{
  v3.receiver = self;
  v3.super_class = ICStorePlatformRequest;
  result = [(ICStorePlatformRequest *)&v3 init];
  if (result)
  {
    result->_batchSize = 100;
    result->_qualityOfService = 25;
    *&result->_retryDelay = xmmword_1B47555A0;
  }

  return result;
}

@end