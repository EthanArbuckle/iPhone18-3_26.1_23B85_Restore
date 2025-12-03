@interface SBHIconImageCacheRequest
+ (void)performWithDependentRequestLockUsingBlock:(id)block;
- (SBHIconImageCacheRequest)init;
- (__CFString)variantDescription;
- (double)elapsedTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithIcon:(void *)icon imageAppearance:(void *)appearance priority:(void *)priority reason:(void *)reason imageGeneration:(void *)generation variant:(void *)variant options:(void *)options sharedCancellation:(void *)self0 iconImageCache:(void *)self1 completionHandler:;
- (id)succinctDescription;
- (uint64_t)isCancelled;
- (uint64_t)matchesIcon:(uint64_t)result;
- (void)addDependentRequest:(uint64_t)request;
- (void)callCompletionHandlers;
- (void)cancel;
@end

@implementation SBHIconImageCacheRequest

- (void)callCompletionHandlers
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(self + 32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(&dword_1BEB18000, a2, v4, "Calling completion handlers for dependent requests for request %{public}@", v5);
}

+ (void)performWithDependentRequestLockUsingBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&performWithDependentRequestLockUsingBlock__lock);
  blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&performWithDependentRequestLockUsingBlock__lock);
}

void __50__SBHIconImageCacheRequest_callCompletionHandlers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;
}

uint64_t __48__SBHIconImageCacheRequest_addDependentRequest___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconImageCacheRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconImageCacheRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)initWithIcon:(void *)icon imageAppearance:(void *)appearance priority:(void *)priority reason:(void *)reason imageGeneration:(void *)generation variant:(void *)variant options:(void *)options sharedCancellation:(void *)self0 iconImageCache:(void *)self1 completionHandler:
{
  v17 = a2;
  iconCopy = icon;
  priorityCopy = priority;
  optionsCopy = options;
  cancellationCopy = cancellation;
  cacheCopy = cache;
  if (self)
  {
    v46.receiver = self;
    v46.super_class = SBHIconImageCacheRequest;
    v22 = objc_msgSendSuper2(&v46, sel_init);
    self = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 5, a2);
      v23 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v24 = self[4];
      self[4] = v23;

      objc_storeStrong(self + 6, options);
      v25 = objc_alloc_init(SBHIconImageCacheCancellation);
      v26 = self[7];
      self[7] = v25;

      v27 = [iconCopy copy];
      v28 = self[8];
      self[8] = v27;

      imageLoadContext = [v17 imageLoadContext];
      v30 = [imageLoadContext copy];
      v31 = self[10];
      self[10] = v30;

      self[11] = appearance;
      v32 = [priorityCopy copy];
      v33 = self[12];
      self[12] = v32;

      self[9] = reason;
      self[13] = variant;
      self[14] = generation;
      objc_storeWeak(self + 23, cancellationCopy);
      v34 = [cacheCopy copy];
      v35 = self[16];
      self[16] = v34;

      iconImageCacheIdentifier = [v17 iconImageCacheIdentifier];
      [cancellationCopy iconImageInfo];
      v37 = [SBHIconImageIdentity alloc];
      v38 = OUTLINED_FUNCTION_8();
      v40 = [v39 initWithIconIdentifier:v38 iconImageInfo:? imageGeneration:? imageAppearance:?];
      v41 = self[15];
      self[15] = v40;

      self[17] = mach_continuous_time();
    }
  }

  return self;
}

- (uint64_t)isCancelled
{
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 48);
  v3 = *(self + 56);
  if ([v3 isCancelled])
  {
    isCancelled = 1;
  }

  else
  {
    isCancelled = [v2 isCancelled];
  }

  return isCancelled;
}

- (void)addDependentRequest:(uint64_t)request
{
  v3 = a2;
  v4 = v3;
  if (request)
  {
    if (*(request + 25))
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __48__SBHIconImageCacheRequest_addDependentRequest___block_invoke;
      v16 = &unk_1E8088C90;
      v17 = v3;
      BSDispatchMain();
      v5 = v17;
    }

    else
    {
      v6 = objc_opt_class();
      OUTLINED_FUNCTION_0();
      v8 = 3221225472;
      v9 = __48__SBHIconImageCacheRequest_addDependentRequest___block_invoke_2;
      v10 = &unk_1E8088F18;
      requestCopy = request;
      v12 = v4;
      [v6 performWithDependentRequestLockUsingBlock:v7];
      v5 = v12;
    }
  }
}

- (__CFString)variantDescription
{
  if (self)
  {
    data = self[3].data;
    v3 = @"ummasked";
    if (data != 1)
    {
      v3 = 0;
    }

    if (data)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"masked";
    }

    self = v4;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)matchesIcon:(uint64_t)result
{
  if (result)
  {
    return BSEqualObjects();
  }

  return result;
}

- (SBHIconImageCacheRequest)init
{
  v3 = +[SBHIconImageAppearance defaultAppearance];
  v4 = [(SBHIconImageCacheRequest *)&self->super.isa initWithIcon:v3 imageAppearance:2 priority:0 reason:0 imageGeneration:0 variant:0 options:0 sharedCancellation:0 iconImageCache:0 completionHandler:?];

  return v4;
}

- (double)elapsedTime
{
  if (!self)
  {
    return 0.0;
  }

  if (!*(self + 8))
  {
    mach_continuous_time();
  }

  BSTimeDifferenceFromMachTimeToMachTime();
  return result;
}

- (void)cancel
{
  if (self)
  {
    self = self->_cancellation;
  }

  [(SBHIconImageCacheRequest *)self cancel];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  if (self)
  {
    status = self->_status;
    succinctDescriptionBuilder = [(SBHIconImageCacheRequest *)self succinctDescriptionBuilder];
    identifier = self->_identifier;
  }

  else
  {
    succinctDescriptionBuilder = [0 succinctDescriptionBuilder];
    status = 0;
    identifier = 0;
  }

  v8 = [succinctDescriptionBuilder appendObject:identifier withName:@"identifier"];
  if (self)
  {
    v9 = [succinctDescriptionBuilder appendObject:self->_icon withName:@"identifier"];
    imageAppearance = self->_imageAppearance;
  }

  else
  {
    v28 = [succinctDescriptionBuilder appendObject:0 withName:@"identifier"];
    imageAppearance = 0;
  }

  v11 = [succinctDescriptionBuilder appendObject:imageAppearance withName:@"imageAppearance"];
  if (!self)
  {
    v29 = [succinctDescriptionBuilder appendObject:@"background" withName:@"priority"];
    v30 = [succinctDescriptionBuilder appendObject:0 withName:@"reason"];
    v31 = [succinctDescriptionBuilder appendUnsignedInteger:0 withName:@"imageGeneration"];
LABEL_14:
    v18 = @"masked";
    goto LABEL_15;
  }

  priority = self->_priority;
  if (priority > 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E8089028[priority];
  }

  v14 = [succinctDescriptionBuilder appendObject:v13 withName:@"priority"];
  v15 = [succinctDescriptionBuilder appendObject:self->_reason withName:@"reason"];
  v16 = [succinctDescriptionBuilder appendUnsignedInteger:self->_imageGeneration withName:@"imageGeneration"];
  variant = self->_variant;
  if (variant == 1)
  {
    v18 = @"ummasked";
  }

  else
  {
    v18 = 0;
  }

  if (!variant)
  {
    goto LABEL_14;
  }

LABEL_15:
  v19 = [succinctDescriptionBuilder appendObject:v18 withName:@"variant"];
  if (status > 4)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E8089050[status];
  }

  [succinctDescriptionBuilder appendString:v20 withName:@"status"];
  v21 = [succinctDescriptionBuilder appendBool:-[SBHIconImageCacheRequest isCancelled](self) withName:@"isCancelled" ifEqualTo:1];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_blockingRequest);
  }

  else
  {
    WeakRetained = 0;
  }

  v23 = [succinctDescriptionBuilder appendObject:WeakRetained withName:@"blockingRequest" skipIfNil:1];

  if (status == 4 || status == 2)
  {
    if (self)
    {
      v25 = self->_result;
      if (v25 > 3)
      {
        v26 = 0;
      }

      else
      {
        v26 = off_1E8089078[v25];
      }
    }

    else
    {
      v26 = @"cancelled";
    }

    [succinctDescriptionBuilder appendString:v26 withName:@"result"];
  }

  return succinctDescriptionBuilder;
}

@end