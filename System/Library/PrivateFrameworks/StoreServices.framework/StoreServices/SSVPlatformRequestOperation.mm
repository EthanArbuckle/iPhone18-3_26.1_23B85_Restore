@interface SSVPlatformRequestOperation
- (NSArray)bundleIdentifiers;
- (NSArray)itemIdentifiers;
- (NSNumber)timeoutInterval;
- (NSString)imageProfile;
- (NSString)keyProfile;
- (NSString)storeFrontSuffix;
- (SSVPlatformRequestOperation)initWithPlatformContext:(id)context;
- (id)_URLBagContext;
- (id)_callerValue;
- (id)_lookupWithRequest:(id)request error:(id *)error;
- (id)responseBlock;
- (id)valueForHTTPHeaderField:(id)field;
- (id)valueForRequestParameter:(id)parameter;
- (int64_t)personalizationStyle;
- (void)_enumerateQueryParametersUsingBlock:(id)block;
- (void)_makeLocalJSSignRequest;
- (void)_makeLocalMescalRequest;
- (void)_makeLookupRequestWithPersonalizationStyle:(int64_t)style;
- (void)_setCaller:(id)caller;
- (void)_setUserAgent:(id)agent;
- (void)main;
- (void)setBundleIdentifiers:(id)identifiers;
- (void)setImageProfile:(id)profile;
- (void)setItemIdentifiers:(id)identifiers;
- (void)setKeyProfile:(id)profile;
- (void)setPersonalizationStyle:(int64_t)style;
- (void)setResponseBlock:(id)block;
- (void)setStoreFrontSuffix:(id)suffix;
- (void)setTimeoutInterval:(id)interval;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
- (void)setValue:(id)value forRequestParameter:(id)parameter;
@end

@implementation SSVPlatformRequestOperation

- (SSVPlatformRequestOperation)initWithPlatformContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SSVPlatformRequestOperation;
  v5 = [(SSVPlatformRequestOperation *)&v12 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;

    v5->_personalizationStyle = 2;
    v5->_shouldSuppressUserInfo = 0;
    v5->_shouldSuppressCookies = 0;
    v5->_attribution = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSVPlatformRequestOperation.%p", v5];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v9;
  }

  return v5;
}

- (NSString)imageProfile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSVPlatformRequestOperation_imageProfile__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)itemIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSVPlatformRequestOperation_itemIdentifiers__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)bundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SSVPlatformRequestOperation_bundleIdentifiers__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)keyProfile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SSVPlatformRequestOperation_keyProfile__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)responseBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5_0;
  v10 = __Block_byref_object_dispose__6_0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSVPlatformRequestOperation_responseBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SSVPlatformRequestOperation_responseBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 328));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)personalizationStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SSVPlatformRequestOperation_personalizationStyle__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setImageProfile:(id)profile
{
  profileCopy = profile;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SSVPlatformRequestOperation_setImageProfile___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = profileCopy;
  v6 = profileCopy;
  dispatch_async(dispatchQueue, v7);
}

void __47__SSVPlatformRequestOperation_setImageProfile___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 304) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 304);
    *(v5 + 304) = v4;
  }
}

- (void)setItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSVPlatformRequestOperation_setItemIdentifiers___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(dispatchQueue, v7);
}

void __50__SSVPlatformRequestOperation_setItemIdentifiers___block_invoke(uint64_t a1)
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

- (void)setBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SSVPlatformRequestOperation_setBundleIdentifiers___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(dispatchQueue, v7);
}

void __52__SSVPlatformRequestOperation_setBundleIdentifiers___block_invoke(uint64_t a1)
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

- (void)setKeyProfile:(id)profile
{
  profileCopy = profile;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSVPlatformRequestOperation_setKeyProfile___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = profileCopy;
  v6 = profileCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__SSVPlatformRequestOperation_setKeyProfile___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 312) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 312);
    *(v5 + 312) = v4;
  }
}

- (void)setPersonalizationStyle:(int64_t)style
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SSVPlatformRequestOperation_setPersonalizationStyle___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = style;
  dispatch_async(dispatchQueue, v4);
}

- (void)setResponseBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SSVPlatformRequestOperation_setResponseBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__SSVPlatformRequestOperation_setResponseBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 328) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 328);
    *(v5 + 328) = v4;
  }
}

- (void)setStoreFrontSuffix:(id)suffix
{
  suffixCopy = suffix;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSVPlatformRequestOperation_setStoreFrontSuffix___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = suffixCopy;
  v6 = suffixCopy;
  dispatch_async(dispatchQueue, v7);
}

void __51__SSVPlatformRequestOperation_setStoreFrontSuffix___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 336) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 336);
    *(v5 + 336) = v4;
  }
}

- (void)setTimeoutInterval:(id)interval
{
  intervalCopy = interval;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SSVPlatformRequestOperation_setTimeoutInterval___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = intervalCopy;
  v6 = intervalCopy;
  dispatch_async(dispatchQueue, v7);
}

void __50__SSVPlatformRequestOperation_setTimeoutInterval___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 344) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 344);
    *(v5 + 344) = v4;
  }
}

- (void)setValue:(id)value forRequestParameter:(id)parameter
{
  valueCopy = value;
  parameterCopy = parameter;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SSVPlatformRequestOperation_setValue_forRequestParameter___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = valueCopy;
  v13 = parameterCopy;
  v9 = parameterCopy;
  v10 = valueCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__SSVPlatformRequestOperation_setValue_forRequestParameter___block_invoke(void *a1)
{
  if (!*(a1[4] + 256))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = a1[4];
    v4 = *(v3 + 256);
    *(v3 + 256) = v2;
  }

  v5 = *(a1[4] + 256);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SSVPlatformRequestOperation_setValue_forHTTPHeaderField___block_invoke;
  block[3] = &unk_1E84AC078;
  block[4] = self;
  v12 = valueCopy;
  v13 = fieldCopy;
  v9 = fieldCopy;
  v10 = valueCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __59__SSVPlatformRequestOperation_setValue_forHTTPHeaderField___block_invoke(void *a1)
{
  if (!*(a1[4] + 248))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = a1[4];
    v4 = *(v3 + 248);
    *(v3 + 248) = v2;
  }

  v5 = *(a1[4] + 248);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (NSString)storeFrontSuffix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSVPlatformRequestOperation_storeFrontSuffix__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSNumber)timeoutInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__76;
  v10 = __Block_byref_object_dispose__76;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSVPlatformRequestOperation_timeoutInterval__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)valueForRequestParameter:(id)parameter
{
  parameterCopy = parameter;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__76;
  dispatchQueue = self->_dispatchQueue;
  v16 = __Block_byref_object_dispose__76;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSVPlatformRequestOperation_valueForRequestParameter___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = parameterCopy;
  v11 = &v12;
  block[4] = self;
  v6 = parameterCopy;
  dispatch_sync(dispatchQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__SSVPlatformRequestOperation_valueForRequestParameter___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 256) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)valueForHTTPHeaderField:(id)field
{
  fieldCopy = field;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__76;
  dispatchQueue = self->_dispatchQueue;
  v16 = __Block_byref_object_dispose__76;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SSVPlatformRequestOperation_valueForHTTPHeaderField___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = fieldCopy;
  v11 = &v12;
  block[4] = self;
  v6 = fieldCopy;
  dispatch_sync(dispatchQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__SSVPlatformRequestOperation_valueForHTTPHeaderField___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 248) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)main
{
  sAPContext = [(SSVPlatformContext *)self->_context SAPContext];

  if (sAPContext)
  {

    [(SSVPlatformRequestOperation *)self _makeLocalMescalRequest];
  }

  else
  {
    personalizationStyle = [(SSVPlatformRequestOperation *)self personalizationStyle];
    if (personalizationStyle == 2)
    {

      [(SSVPlatformRequestOperation *)self _makeLocalJSSignRequest];
    }

    else
    {

      [(SSVPlatformRequestOperation *)self _makeLookupRequestWithPersonalizationStyle:personalizationStyle];
    }
  }
}

- (void)_setCaller:(id)caller
{
  callerCopy = caller;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SSVPlatformRequestOperation__setCaller___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = callerCopy;
  v6 = callerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __42__SSVPlatformRequestOperation__setCaller___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 264) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 264);
    *(v5 + 264) = v4;
  }
}

- (void)_setUserAgent:(id)agent
{
  agentCopy = agent;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SSVPlatformRequestOperation__setUserAgent___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = agentCopy;
  v6 = agentCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__SSVPlatformRequestOperation__setUserAgent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 352) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 352);
    *(v5 + 352) = v4;
  }
}

- (id)_callerValue
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__76;
  v17 = __Block_byref_object_dispose__76;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__SSVPlatformRequestOperation__callerValue__block_invoke;
  v12[3] = &unk_1E84ABF40;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(dispatchQueue, v12);
  v3 = v14[5];
  if (!v3)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = v14[5];
    v14[5] = bundleIdentifier;

    v3 = v14[5];
    if (!v3)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v9 = v14[5];
      v14[5] = processName;

      v3 = v14[5];
    }
  }

  v10 = v3;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __43__SSVPlatformRequestOperation__callerValue__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 264));
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [*(*(a1 + 32) + 256) objectForKey:@"caller"];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)_enumerateQueryParametersUsingBlock:(id)block
{
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  _callerValue = [(SSVPlatformRequestOperation *)self _callerValue];
  if (_callerValue)
  {
    blockCopy[2](blockCopy, @"caller", _callerValue, v18[3]++);
  }

  itemIdentifiers = [(SSVPlatformRequestOperation *)self itemIdentifiers];
  v7 = [itemIdentifiers componentsJoinedByString:{@", "}];

  if (v7)
  {
    blockCopy[2](blockCopy, @"id", v7, v18[3]++);
  }

  bundleIdentifiers = [(SSVPlatformRequestOperation *)self bundleIdentifiers];
  v9 = [bundleIdentifiers componentsJoinedByString:{@", "}];

  if (v9)
  {
    blockCopy[2](blockCopy, @"bundleId", v9, v18[3]++);
  }

  keyProfile = [(SSVPlatformRequestOperation *)self keyProfile];
  if (keyProfile)
  {
    blockCopy[2](blockCopy, @"p", keyProfile, v18[3]++);
  }

  imageProfile = [(SSVPlatformRequestOperation *)self imageProfile];
  if (imageProfile)
  {
    blockCopy[2](blockCopy, @"artwork", imageProfile, v18[3]++);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SSVPlatformRequestOperation__enumerateQueryParametersUsingBlock___block_invoke;
  block[3] = &unk_1E84B3518;
  block[4] = self;
  v15 = blockCopy;
  v16 = &v17;
  v13 = blockCopy;
  dispatch_sync(dispatchQueue, block);

  _Block_object_dispose(&v17, 8);
}

void __67__SSVPlatformRequestOperation__enumerateQueryParametersUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SSVPlatformRequestOperation__enumerateQueryParametersUsingBlock___block_invoke_2;
  v5[3] = &unk_1E84B34F0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __67__SSVPlatformRequestOperation__enumerateQueryParametersUsingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualToString:@"caller"] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_lookupWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__76;
  v32 = __Block_byref_object_dispose__76;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__76;
  v26 = __Block_byref_object_dispose__76;
  v27 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSVPlatformRequestOperation__lookupWithRequest_error___block_invoke;
  block[3] = &unk_1E84AC028;
  block[4] = self;
  v8 = requestCopy;
  v21 = v8;
  dispatch_sync(dispatchQueue, block);
  v9 = [[SSVLoadURLOperation alloc] initWithURLRequest:v8];
  v10 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
  [(SSVLoadURLOperation *)v9 setDataConsumer:v10];

  [(SSVLoadURLOperation *)v9 setITunesStoreRequest:1];
  storeFrontSuffix = [(SSVPlatformRequestOperation *)self storeFrontSuffix];
  [(SSVLoadURLOperation *)v9 setStoreFrontSuffix:storeFrontSuffix];

  [(SSVLoadURLOperation *)v9 setShouldSuppressUserInfo:[(SSVPlatformRequestOperation *)self shouldSuppressUserInfo]];
  [(SSVLoadURLOperation *)v9 setShouldSuppressCookies:[(SSVPlatformRequestOperation *)self shouldSuppressCookies]];
  [(SSVLoadURLOperation *)v9 setAttribution:[(SSVPlatformRequestOperation *)self attribution]];
  mainDocumentURL = [(SSVPlatformRequestOperation *)self mainDocumentURL];

  if (mainDocumentURL)
  {
    mainDocumentURL2 = [(SSVPlatformRequestOperation *)self mainDocumentURL];
    [(SSVLoadURLOperation *)v9 setMainDocumentURL:mainDocumentURL2];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__SSVPlatformRequestOperation__lookupWithRequest_error___block_invoke_3;
  v19[3] = &unk_1E84B3540;
  v19[4] = &v22;
  v19[5] = &v28;
  [(SSVLoadURLOperation *)v9 setOutputBlock:v19];
  [(SSVLoadURLOperation *)v9 main];
  v14 = v23[5];
  metricsPageEvent = [(SSVLoadURLOperation *)v9 metricsPageEvent];
  [v14 _setMetricsPageEvent:metricsPageEvent];

  v16 = v23[5];
  if (error && !v16)
  {
    *error = v29[5];
    v16 = v23[5];
  }

  v17 = v16;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v17;
}

void __56__SSVPlatformRequestOperation__lookupWithRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 352);
  if (v3)
  {
    [*(a1 + 40) setValue:v3 forHTTPHeaderField:@"User-Agent"];
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 248);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SSVPlatformRequestOperation__lookupWithRequest_error___block_invoke_2;
  v5[3] = &unk_1E84ADD90;
  v6 = *(a1 + 40);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __56__SSVPlatformRequestOperation__lookupWithRequest_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SSLookupResponse alloc] initWithResponseDictionary:v11];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (void)_makeLocalJSSignRequest
{
  v56[3] = *MEMORY[0x1E69E9840];
  unpersonalizedLookupURLString = [(SSVPlatformContext *)self->_context unpersonalizedLookupURLString];
  v4 = [unpersonalizedLookupURLString mutableCopy];

  if (v4)
  {
    goto LABEL_6;
  }

  bag = self->_bag;
  if (bag)
  {
    v6 = [(SSBag *)bag stringForKey:@"storeplatform-lookup-url-unpersonalized" error:0];
    v4 = [v6 mutableCopy];
  }

  else
  {
    _URLBagContext = [(SSVPlatformRequestOperation *)self _URLBagContext];
    v6 = [SSURLBag URLBagForContext:_URLBagContext];

    v8 = [v6 valueForKey:@"storeplatform-lookup-url-unpersonalized" error:0];
    v4 = [v8 mutableCopy];
  }

  if (v4)
  {
LABEL_6:
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = objc_alloc_init(MEMORY[0x1E696AD68]);
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v4 appendString:@"?"];
    timeoutInterval = [(SSVPlatformRequestOperation *)self timeoutInterval];
    v14 = timeoutInterval;
    if (timeoutInterval)
    {
      [timeoutInterval doubleValue];
      [v11 setTimeoutInterval:?];
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v17 = v16;

    [v12 appendFormat:@"%.0f", v17];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-JS-TIMESTAMP=%.0f", v17];
    [v9 addObject:v18];

    v19 = +[SSAccountStore defaultStore];
    activeAccount = [v19 activeAccount];
    v21 = SSVStoreFrontIdentifierForAccount(activeAccount);

    if (v21)
    {
      storeFrontSuffix = [(SSVPlatformRequestOperation *)self storeFrontSuffix];
      if (storeFrontSuffix)
      {
        v23 = [v21 stringByAppendingString:storeFrontSuffix];

        v21 = v23;
      }

      [v12 appendString:v21];
    }

    v45 = v14;
    v46 = v9;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __54__SSVPlatformRequestOperation__makeLocalJSSignRequest__block_invoke;
    v52[3] = &unk_1E84B3568;
    v4 = v4;
    v53 = v4;
    v24 = v10;
    v54 = v24;
    [(SSVPlatformRequestOperation *)self _enumerateQueryParametersUsingBlock:v52];
    v25 = [v24 objectForKey:@"version"];

    if (!v25)
    {
      [v4 appendString:@"&version=1"];
    }

    v56[0] = @"caller";
    v56[1] = @"id";
    v56[2] = @"p";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v26 = v51 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v49;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [v24 objectForKey:*(*(&v48 + 1) + 8 * i)];
          if (v31)
          {
            [v12 appendString:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v28);
    }

    uTF8String = [v12 UTF8String];
    if (uTF8String)
    {
      v33 = uTF8String;
      v34 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
      CC_SHA1(v33, [v12 length], objc_msgSend(v34, "mutableBytes"));
      [v34 setLength:16];
      fd3fa4R8(3, [v34 mutableBytes]);
      v35 = [v34 base64EncodedStringWithOptions:0];
      if (v35)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-JS-SP-TOKEN=%@", v35, v45];
        [v46 addObject:v36];
      }
    }

    if ([v46 count])
    {
      v37 = [v46 componentsJoinedByString:@" "];;
      [v11 setValue:v37 forHTTPHeaderField:@"Cookie"];
    }

    v38 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    [v11 setURL:v38];

    mainDocumentURL = [(SSVPlatformRequestOperation *)self mainDocumentURL];

    if (mainDocumentURL)
    {
      mainDocumentURL2 = [(SSVPlatformRequestOperation *)self mainDocumentURL];
      [v11 setMainDocumentURL:mainDocumentURL2];
    }

    [v11 setAttribution:{-[SSVPlatformRequestOperation attribution](self, "attribution")}];
    v47 = 0;
    v41 = [(SSVPlatformRequestOperation *)self _lookupWithRequest:v11 error:&v47];
    v42 = v47;
  }

  else
  {
    v42 = SSError(@"SSErrorDomain", 124, 0, 0);
    v41 = 0;
  }

  responseBlock = [(SSVPlatformRequestOperation *)self responseBlock];
  v44 = responseBlock;
  if (responseBlock)
  {
    (*(responseBlock + 16))(responseBlock, v41, v42);
    [(SSVPlatformRequestOperation *)self setResponseBlock:0];
  }
}

void __54__SSVPlatformRequestOperation__makeLocalJSSignRequest__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  if (a4)
  {
    [*(a1 + 32) appendString:@"&"];
  }

  [*(a1 + 40) setObject:v7 forKey:v10];
  v8 = *(a1 + 32);
  v9 = URLEscapedQueryParameter(v7);
  [v8 appendFormat:@"%@=%@", v10, v9];
}

- (void)_makeLocalMescalRequest
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD68]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  timeoutInterval = [(SSVPlatformRequestOperation *)self timeoutInterval];
  v7 = timeoutInterval;
  if (timeoutInterval)
  {
    [timeoutInterval doubleValue];
    [v3 setTimeoutInterval:?];
  }

  v50 = v7;
  lookupURLString = [(SSVPlatformContext *)self->_context lookupURLString];
  v9 = [lookupURLString mutableCopy];

  [v9 appendString:@"?"];
  v10 = +[SSAccountStore defaultStore];
  activeAccount = [v10 activeAccount];

  uniqueIdentifier = [activeAccount uniqueIdentifier];
  stringValue = [uniqueIdentifier stringValue];

  v51 = stringValue;
  if (stringValue && ![(SSVPlatformRequestOperation *)self shouldSuppressUserInfo])
  {
    lowercaseString = [@"X-Dsid" lowercaseString];
    [v4 setObject:v51 forKey:lowercaseString];

    [v3 setValue:v51 forHTTPHeaderField:@"X-Dsid"];
  }

  v15 = SSVStoreFrontIdentifierForAccount(activeAccount);
  if (v15)
  {
    v16 = v15;
    storeFrontSuffix = [(SSVPlatformRequestOperation *)self storeFrontSuffix];
    if (storeFrontSuffix)
    {
      v18 = [v16 stringByAppendingString:storeFrontSuffix];

      v16 = v18;
    }

    lowercaseString2 = [@"X-Apple-Store-Front" lowercaseString];
    [v4 setObject:v16 forKey:lowercaseString2];

    [v3 setValue:v16 forHTTPHeaderField:@"X-Apple-Store-Front"];
  }

  v49 = activeAccount;
  v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v20 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  date = [MEMORY[0x1E695DF00] date];
  v48 = v20;
  v22 = [v20 stringFromDate:date];

  if (v22)
  {
    [v4 setObject:v22 forKey:@"x-request-timestamp"];
    [v3 setValue:v22 forHTTPHeaderField:@"X-Request-TimeStamp"];
  }

  v47 = v22;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __54__SSVPlatformRequestOperation__makeLocalMescalRequest__block_invoke;
  v63[3] = &unk_1E84B3568;
  v53 = v9;
  v64 = v53;
  v23 = v5;
  v65 = v23;
  [(SSVPlatformRequestOperation *)self _enumerateQueryParametersUsingBlock:v63];
  v24 = [v23 objectForKey:@"version"];

  if (!v24)
  {
    [v53 appendString:@"&version=1"];
  }

  v52 = v3;
  v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
  signedHeaders = [(SSVPlatformContext *)self->_context signedHeaders];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = [signedHeaders countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v60;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(signedHeaders);
        }

        v31 = [v4 objectForKey:*(*(&v59 + 1) + 8 * i)];
        if (v31)
        {
          [v25 appendString:v31];
        }
      }

      v28 = [signedHeaders countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v28);
  }

  signedQueryParameters = [(SSVPlatformContext *)self->_context signedQueryParameters];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v33 = [signedQueryParameters countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v56;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(signedQueryParameters);
        }

        v37 = [v23 objectForKey:*(*(&v55 + 1) + 8 * j)];
        if (v37)
        {
          [v25 appendString:v37];
        }
      }

      v34 = [signedQueryParameters countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v34);
  }

  v38 = [v25 dataUsingEncoding:4];
  if (v38)
  {
    sAPContext = [(SSVPlatformContext *)self->_context SAPContext];
    v40 = [sAPContext signatureWithData:v38 error:0];

    v41 = [v40 base64EncodedStringWithOptions:0];
    if (v41)
    {
      [v52 setValue:v41 forHTTPHeaderField:@"X-Apple-ActionSignature"];
    }
  }

  v42 = [MEMORY[0x1E695DFF8] URLWithString:v53];
  [v52 setURL:v42];

  v54 = 0;
  v43 = [(SSVPlatformRequestOperation *)self _lookupWithRequest:v52 error:&v54];
  v44 = v54;
  responseBlock = [(SSVPlatformRequestOperation *)self responseBlock];
  v46 = responseBlock;
  if (responseBlock)
  {
    (*(responseBlock + 16))(responseBlock, v43, v44);
    [(SSVPlatformRequestOperation *)self setResponseBlock:0];
  }
}

void __54__SSVPlatformRequestOperation__makeLocalMescalRequest__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  if (a4)
  {
    [*(a1 + 32) appendString:@"&"];
  }

  v8 = *(a1 + 32);
  v9 = URLEscapedQueryParameter(v7);
  [v8 appendFormat:@"%@=%@", v10, v9];

  [*(a1 + 40) setObject:v7 forKey:v10];
}

- (void)_makeLookupRequestWithPersonalizationStyle:(int64_t)style
{
  v5 = objc_alloc_init(SSLookupRequest);
  keyProfile = [(SSVPlatformRequestOperation *)self keyProfile];
  [(SSLookupRequest *)v5 setKeyProfile:keyProfile];

  [(SSLookupRequest *)v5 setPersonalizationStyle:style];
  timeoutInterval = [(SSVPlatformRequestOperation *)self timeoutInterval];
  [(SSLookupRequest *)v5 _setTimeoutInterval:timeoutInterval];

  itemIdentifiers = [(SSVPlatformRequestOperation *)self itemIdentifiers];
  [(SSLookupRequest *)v5 setValue:itemIdentifiers forRequestParameter:@"id"];

  additionalParameters = self->_additionalParameters;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __74__SSVPlatformRequestOperation__makeLookupRequestWithPersonalizationStyle___block_invoke;
  v34[3] = &unk_1E84ADD90;
  v10 = v5;
  v35 = v10;
  [(NSMutableDictionary *)additionalParameters enumerateKeysAndObjectsUsingBlock:v34];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__76;
  v32 = __Block_byref_object_dispose__76;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__76;
  v26 = __Block_byref_object_dispose__76;
  v27 = 0;
  v11 = dispatch_semaphore_create(0);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __74__SSVPlatformRequestOperation__makeLookupRequestWithPersonalizationStyle___block_invoke_2;
  v18 = &unk_1E84B3590;
  v20 = &v28;
  v21 = &v22;
  v12 = v11;
  v19 = v12;
  [(SSLookupRequest *)v10 startWithLookupBlock:&v15];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = [(SSVPlatformRequestOperation *)self responseBlock:v15];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v23[5], v29[5]);
    [(SSVPlatformRequestOperation *)self setResponseBlock:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __74__SSVPlatformRequestOperation__makeLookupRequestWithPersonalizationStyle___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__76;
  v14 = __Block_byref_object_dispose__76;
  v15 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SSVPlatformRequestOperation__URLBagContext__block_invoke;
  v9[3] = &unk_1E84ABF40;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(dispatchQueue, v9);
  v5 = v11[5];
  if (!v5)
  {
    v6 = SSVDefaultUserAgent();
    v7 = v11[5];
    v11[5] = v6;

    v5 = v11[5];
  }

  [v3 setValue:v5 forHTTPHeaderField:@"User-Agent"];
  _Block_object_dispose(&v10, 8);

  return v3;
}

void __45__SSVPlatformRequestOperation__URLBagContext__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 352) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end