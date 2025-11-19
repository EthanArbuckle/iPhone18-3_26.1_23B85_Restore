@interface SSVLoadNearbyAppsOperation
- (NSString)pointOfInterestIdentifier;
- (NSString)pointOfInterestProviderIdentifier;
- (NSString)pointOfInterestProviderURL;
- (NSString)storeFrontSuffix;
- (NSString)userAgent;
- (SSVLoadNearbyAppsOperation)initWithBaseURL:(id)a3 location:(id)a4;
- (id)_lookupWithRequest:(id)a3 error:(id *)a4;
- (id)_storeFrontSuffix;
- (id)responseBlock;
- (void)main;
- (void)setPointOfInterestIdentifier:(id)a3;
- (void)setPointOfInterestProviderIdentifier:(id)a3;
- (void)setPointOfInterestProviderURL:(id)a3;
- (void)setResponseBlock:(id)a3;
- (void)setStoreFrontSuffix:(id)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation SSVLoadNearbyAppsOperation

- (SSVLoadNearbyAppsOperation)initWithBaseURL:(id)a3 location:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = SSVLoadNearbyAppsOperation;
  v8 = [(SSVLoadNearbyAppsOperation *)&v25 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSVLoadNearbyAppsOperation.%p", v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v10;

    v12 = [v6 copy];
    baseURLString = v8->_baseURLString;
    v8->_baseURLString = v12;

    objc_storeStrong(&v8->_location, a4);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parameters = v8->_parameters;
    v8->_parameters = v14;

    v16 = v8->_parameters;
    v17 = MEMORY[0x1E696AEC0];
    [(CLLocation *)v8->_location coordinate];
    v19 = [v17 stringWithFormat:@"%.4f", v18];
    [(NSMutableDictionary *)v16 setObject:v19 forKey:@"lat"];

    v20 = v8->_parameters;
    v21 = MEMORY[0x1E696AEC0];
    [(CLLocation *)v8->_location coordinate];
    v23 = [v21 stringWithFormat:@"%.4f", v22];
    [(NSMutableDictionary *)v20 setObject:v23 forKey:@"lon"];
  }

  return v8;
}

- (NSString)pointOfInterestIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SSVLoadNearbyAppsOperation_pointOfInterestIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__SSVLoadNearbyAppsOperation_pointOfInterestIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 272) objectForKey:@"poi"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)pointOfInterestProviderIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SSVLoadNearbyAppsOperation_pointOfInterestProviderIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__SSVLoadNearbyAppsOperation_pointOfInterestProviderIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 272) objectForKey:@"poiProvider"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)pointOfInterestProviderURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SSVLoadNearbyAppsOperation_pointOfInterestProviderURL__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__SSVLoadNearbyAppsOperation_pointOfInterestProviderURL__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 272) objectForKey:@"poiURL"];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)responseBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__21;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSVLoadNearbyAppsOperation_responseBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__SSVLoadNearbyAppsOperation_responseBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 280));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPointOfInterestIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SSVLoadNearbyAppsOperation_setPointOfInterestIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __59__SSVLoadNearbyAppsOperation_setPointOfInterestIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [v2 copy];
    [*(*(a1 + 40) + 272) setObject:v4 forKey:@"poi"];
  }

  else
  {
    v3 = *(*(a1 + 40) + 272);

    [v3 removeObjectForKey:@"poi"];
  }
}

- (void)setPointOfInterestProviderIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SSVLoadNearbyAppsOperation_setPointOfInterestProviderIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __67__SSVLoadNearbyAppsOperation_setPointOfInterestProviderIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [v2 copy];
    [*(*(a1 + 40) + 272) setObject:v4 forKey:@"poiProvider"];
  }

  else
  {
    v3 = *(*(a1 + 40) + 272);

    [v3 removeObjectForKey:@"poiProvider"];
  }
}

- (void)setPointOfInterestProviderURL:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SSVLoadNearbyAppsOperation_setPointOfInterestProviderURL___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __60__SSVLoadNearbyAppsOperation_setPointOfInterestProviderURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = [v2 copy];
    [*(*(a1 + 40) + 272) setObject:v4 forKey:@"poiURL"];
  }

  else
  {
    v3 = *(*(a1 + 40) + 272);

    [v3 removeObjectForKey:@"poiURL"];
  }
}

- (void)setResponseBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SSVLoadNearbyAppsOperation_setResponseBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __47__SSVLoadNearbyAppsOperation_setResponseBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 280) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 280);
    *(v5 + 280) = v4;
  }
}

- (void)setStoreFrontSuffix:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSVLoadNearbyAppsOperation_setStoreFrontSuffix___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__SSVLoadNearbyAppsOperation_setStoreFrontSuffix___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 288) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 288);
    *(v5 + 288) = v4;
  }
}

- (void)setUserAgent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SSVLoadNearbyAppsOperation_setUserAgent___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__SSVLoadNearbyAppsOperation_setUserAgent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 296) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 296);
    *(v5 + 296) = v4;
  }
}

- (NSString)storeFrontSuffix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSVLoadNearbyAppsOperation_storeFrontSuffix__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)userAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSVLoadNearbyAppsOperation_userAgent__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD68]);
  [v3 setCachePolicy:1];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [(NSString *)self->_baseURLString mutableCopy];
  [v5 appendString:@"?"];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  [v4 appendFormat:@"%.0f", v8];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", v8];
  [v3 setValue:v9 forHTTPHeaderField:@"X-JS-TIMESTAMP"];

  v10 = +[SSAccountStore defaultStore];
  v11 = [v10 activeAccount];
  v12 = SSVStoreFrontIdentifierForAccount(v11);

  if (v12)
  {
    v13 = [(SSVLoadNearbyAppsOperation *)self _storeFrontSuffix];
    if (v13)
    {
      v14 = [v12 stringByAppendingString:v13];

      v12 = v14;
    }

    [v4 appendString:v12];
    [v3 setValue:v12 forHTTPHeaderField:@"X-Apple-Store-Front"];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSVLoadNearbyAppsOperation_main__block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v16 = v5;
  v31 = v16;
  v17 = v4;
  v32 = v17;
  dispatch_sync(dispatchQueue, block);
  v18 = [v17 UTF8String];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
    CC_SHA1(v19, [v17 length], objc_msgSend(v20, "mutableBytes"));
    [v20 setLength:16];
    fd3fa4R8(3, [v20 mutableBytes]);
    v21 = [v20 base64EncodedStringWithOptions:0];
    if (v21)
    {
      [v3 setValue:v21 forHTTPHeaderField:@"X-JS-SP-TOKEN"];
    }
  }

  v22 = [(SSVLoadNearbyAppsOperation *)self userAgent];
  if (!v22)
  {
    v23 = +[SSDevice currentDevice];
    v22 = [v23 userAgentWithClientName:@"AppStore" version:@"2.0"];
  }

  [v3 setValue:v22 forHTTPHeaderField:@"User-Agent"];
  v24 = [MEMORY[0x1E695DFF8] URLWithString:v16];
  [v3 setURL:v24];

  v29 = 0;
  v25 = [(SSVLoadNearbyAppsOperation *)self _lookupWithRequest:v3 error:&v29];
  v26 = v29;
  v27 = [(SSVLoadNearbyAppsOperation *)self responseBlock];
  v28 = v27;
  if (v27)
  {
    (*(v27 + 16))(v27, v25, v26);
  }
}

void __34__SSVLoadNearbyAppsOperation_main__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = [*(*(a1 + 32) + 272) mutableCopy];
  v3 = 0;
  v16[0] = xmmword_1E84AF8A0;
  v16[1] = *off_1E84AF8B0;
  v17 = @"lon";
  do
  {
    v4 = *(v16 + v3);
    v5 = [v2 objectForKey:v4];
    if (v5)
    {
      if (v13[3])
      {
        [*(a1 + 40) appendString:@"&"];
      }

      [*(a1 + 48) appendString:v5];
      v6 = *(a1 + 40);
      v7 = URLEscapedQueryParameter(v5);
      [v6 appendFormat:@"%@=%@", v4, v7];

      [v2 removeObjectForKey:v4];
      ++v13[3];
    }

    v3 += 8;
  }

  while (v3 != 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SSVLoadNearbyAppsOperation_main__block_invoke_2;
  v9[3] = &unk_1E84AF8D0;
  v11 = &v12;
  v10 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v9];

  for (i = 32; i != -8; i -= 8)
  {
  }

  _Block_object_dispose(&v12, 8);
}

void __34__SSVLoadNearbyAppsOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) appendString:@"&"];
  }

  v6 = *(a1 + 32);
  v7 = URLEscapedQueryParameter(v5);
  [v6 appendFormat:@"%@=%@", v8, v7];

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (id)_lookupWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__23;
  v26 = __Block_byref_object_dispose__23;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23;
  v20 = __Block_byref_object_dispose__23;
  v21 = 0;
  v7 = [[SSVLoadURLOperation alloc] initWithURLRequest:v6];
  v8 = +[(SSVURLDataConsumer *)SSVURLLookupResponseConsumer];
  [(SSVLoadURLOperation *)v7 setDataConsumer:v8];

  [(SSVLoadURLOperation *)v7 setITunesStoreRequest:1];
  [(SSVLoadURLOperation *)v7 setRecordsMetrics:1];
  v9 = [(SSVLoadNearbyAppsOperation *)self _storeFrontSuffix];
  [(SSVLoadURLOperation *)v7 setStoreFrontSuffix:v9];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__SSVLoadNearbyAppsOperation__lookupWithRequest_error___block_invoke;
  v15[3] = &unk_1E84AF8F8;
  v15[4] = &v16;
  v15[5] = &v22;
  [(SSVLoadURLOperation *)v7 setOutputBlock:v15];
  [(SSVLoadURLOperation *)v7 main];
  v10 = v17[5];
  v11 = [(SSVLoadURLOperation *)v7 metricsPageEvent];
  [v10 _setMetricsPageEvent:v11];

  v12 = v17[5];
  if (a4 && !v12)
  {
    *a4 = v23[5];
    v12 = v17[5];
  }

  v13 = v12;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v13;
}

void __55__SSVLoadNearbyAppsOperation__lookupWithRequest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_storeFrontSuffix
{
  v2 = [(SSVLoadNearbyAppsOperation *)self storeFrontSuffix];
  if (!v2)
  {
    v2 = @" t:native";
  }

  return v2;
}

@end