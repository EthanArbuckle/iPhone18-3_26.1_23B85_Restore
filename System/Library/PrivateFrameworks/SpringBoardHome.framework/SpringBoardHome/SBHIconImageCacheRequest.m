@interface SBHIconImageCacheRequest
+ (void)performWithDependentRequestLockUsingBlock:(id)a3;
- (SBHIconImageCacheRequest)init;
- (__CFString)variantDescription;
- (double)elapsedTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithIcon:(void *)a3 imageAppearance:(void *)a4 priority:(void *)a5 reason:(void *)a6 imageGeneration:(void *)a7 variant:(void *)a8 options:(void *)a9 sharedCancellation:(void *)a10 iconImageCache:(void *)a11 completionHandler:;
- (id)succinctDescription;
- (uint64_t)isCancelled;
- (uint64_t)matchesIcon:(uint64_t)result;
- (void)addDependentRequest:(uint64_t)a1;
- (void)callCompletionHandlers;
- (void)cancel;
@end

@implementation SBHIconImageCacheRequest

- (void)callCompletionHandlers
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12(&dword_1BEB18000, a2, v4, "Calling completion handlers for dependent requests for request %{public}@", v5);
}

+ (void)performWithDependentRequestLockUsingBlock:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&performWithDependentRequestLockUsingBlock__lock);
  v3[2](v3);

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
  v2 = [(SBHIconImageCacheRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconImageCacheRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)initWithIcon:(void *)a3 imageAppearance:(void *)a4 priority:(void *)a5 reason:(void *)a6 imageGeneration:(void *)a7 variant:(void *)a8 options:(void *)a9 sharedCancellation:(void *)a10 iconImageCache:(void *)a11 completionHandler:
{
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v45 = a9;
  v20 = a10;
  v21 = a11;
  if (a1)
  {
    v46.receiver = a1;
    v46.super_class = SBHIconImageCacheRequest;
    v22 = objc_msgSendSuper2(&v46, sel_init);
    a1 = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 5, a2);
      v23 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      v24 = a1[4];
      a1[4] = v23;

      objc_storeStrong(a1 + 6, a9);
      v25 = objc_alloc_init(SBHIconImageCacheCancellation);
      v26 = a1[7];
      a1[7] = v25;

      v27 = [v18 copy];
      v28 = a1[8];
      a1[8] = v27;

      v29 = [v17 imageLoadContext];
      v30 = [v29 copy];
      v31 = a1[10];
      a1[10] = v30;

      a1[11] = a4;
      v32 = [v19 copy];
      v33 = a1[12];
      a1[12] = v32;

      a1[9] = a6;
      a1[13] = a8;
      a1[14] = a7;
      objc_storeWeak(a1 + 23, v20);
      v34 = [v21 copy];
      v35 = a1[16];
      a1[16] = v34;

      v36 = [v17 iconImageCacheIdentifier];
      [v20 iconImageInfo];
      v37 = [SBHIconImageIdentity alloc];
      v38 = OUTLINED_FUNCTION_8();
      v40 = [v39 initWithIconIdentifier:v38 iconImageInfo:? imageGeneration:? imageAppearance:?];
      v41 = a1[15];
      a1[15] = v40;

      a1[17] = mach_continuous_time();
    }
  }

  return a1;
}

- (uint64_t)isCancelled
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if ([v3 isCancelled])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 isCancelled];
  }

  return v4;
}

- (void)addDependentRequest:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 25))
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
      v11 = a1;
      v12 = v4;
      [v6 performWithDependentRequestLockUsingBlock:v7];
      v5 = v12;
    }
  }
}

- (__CFString)variantDescription
{
  if (a1)
  {
    data = a1[3].data;
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

    a1 = v4;
    v1 = vars8;
  }

  return a1;
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
  if (!a1)
  {
    return 0.0;
  }

  if (!*(a1 + 8))
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  if (self)
  {
    status = self->_status;
    v6 = [(SBHIconImageCacheRequest *)self succinctDescriptionBuilder];
    identifier = self->_identifier;
  }

  else
  {
    v6 = [0 succinctDescriptionBuilder];
    status = 0;
    identifier = 0;
  }

  v8 = [v6 appendObject:identifier withName:@"identifier"];
  if (self)
  {
    v9 = [v6 appendObject:self->_icon withName:@"identifier"];
    imageAppearance = self->_imageAppearance;
  }

  else
  {
    v28 = [v6 appendObject:0 withName:@"identifier"];
    imageAppearance = 0;
  }

  v11 = [v6 appendObject:imageAppearance withName:@"imageAppearance"];
  if (!self)
  {
    v29 = [v6 appendObject:@"background" withName:@"priority"];
    v30 = [v6 appendObject:0 withName:@"reason"];
    v31 = [v6 appendUnsignedInteger:0 withName:@"imageGeneration"];
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

  v14 = [v6 appendObject:v13 withName:@"priority"];
  v15 = [v6 appendObject:self->_reason withName:@"reason"];
  v16 = [v6 appendUnsignedInteger:self->_imageGeneration withName:@"imageGeneration"];
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
  v19 = [v6 appendObject:v18 withName:@"variant"];
  if (status > 4)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E8089050[status];
  }

  [v6 appendString:v20 withName:@"status"];
  v21 = [v6 appendBool:-[SBHIconImageCacheRequest isCancelled](self) withName:@"isCancelled" ifEqualTo:1];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_blockingRequest);
  }

  else
  {
    WeakRetained = 0;
  }

  v23 = [v6 appendObject:WeakRetained withName:@"blockingRequest" skipIfNil:1];

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

    [v6 appendString:v26 withName:@"result"];
  }

  return v6;
}

@end