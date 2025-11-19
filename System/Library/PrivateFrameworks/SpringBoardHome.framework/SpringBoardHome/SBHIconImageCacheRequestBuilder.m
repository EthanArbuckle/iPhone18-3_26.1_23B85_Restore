@interface SBHIconImageCacheRequestBuilder
- (id)finalizeRequestWithCompletionHandler:(id)a3;
- (id)initWithIconImageCache:(void *)a3 sharedCancellation:(void *)a4 reason:;
- (id)succinctDescription;
- (void)addIcon:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6;
- (void)addIcon:(id)a3 prioritizedImageAppearances:(id)a4 options:(unint64_t)a5;
- (void)addIcons:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6;
- (void)addIcons:(id)a3 prioritizedImageAppearances:(id)a4 options:(unint64_t)a5;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
@end

@implementation SBHIconImageCacheRequestBuilder

- (void)dealloc
{
  if (![(SBHIconImageCacheRequestBuilder *)self isFinalized])
  {
    NSLog(&cfstr_RequestBuilder.isa);
  }

  v3.receiver = self;
  v3.super_class = SBHIconImageCacheRequestBuilder;
  [(SBHIconImageCacheRequestBuilder *)&v3 dealloc];
}

- (void)addIcon:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if ([objc_opt_class() hasIconImage])
  {
    if (self)
    {
      v12 = self->_reason;
      v13 = self->_sharedCancellation;
      WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
      completionGroup = self->_completionGroup;
    }

    else
    {
      [SBHIconImageVariantCache performSynchronousCacheRequest:];
      WeakRetained = 0;
      v12 = 0;
      v13 = 0;
      completionGroup = 0;
    }

    v16 = completionGroup;
    v17 = [WeakRetained currentImageGenerationForIcon:v10];
    if ((a6 & 2) != 0)
    {
      if ((a6 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_group_enter(v16);
      v20 = [SBHIconImageCacheRequest alloc];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __76__SBHIconImageCacheRequestBuilder_addIcon_imageAppearance_priority_options___block_invoke;
      v25[3] = &unk_1E8089000;
      v26 = v16;
      v21 = [(SBHIconImageCacheRequest *)&v20->super.isa initWithIcon:v10 imageAppearance:v11 priority:a5 reason:v12 imageGeneration:v17 variant:0 options:a6 sharedCancellation:v13 iconImageCache:WeakRetained completionHandler:v25];
      [(NSMutableArray *)self->_requests addObject:v21];

      if ((a6 & 1) == 0)
      {
LABEL_6:
        if ((a6 & 0x10) != 0)
        {
LABEL_7:
          if (self)
          {
            sharedCancellation = self->_sharedCancellation;
          }

          else
          {
            sharedCancellation = 0;
          }

          [(SBHIconImageCacheCancellation *)sharedCancellation cancel];
        }

LABEL_10:

        goto LABEL_13;
      }
    }

    dispatch_group_enter(v16);
    v22 = [SBHIconImageCacheRequest alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __76__SBHIconImageCacheRequestBuilder_addIcon_imageAppearance_priority_options___block_invoke_2;
    v23[3] = &unk_1E8089000;
    v24 = v16;
    v19 = [(SBHIconImageCacheRequest *)&v22->super.isa initWithIcon:v10 imageAppearance:v11 priority:a5 reason:v12 imageGeneration:v17 variant:1 options:a6 sharedCancellation:v13 iconImageCache:WeakRetained completionHandler:v23];
    [(NSMutableArray *)self->_requests addObject:v19];

    if ((a6 & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v12 = SBLogIconImageCache();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBHIconImageCacheRequestBuilder addIcon:v12 imageAppearance:? priority:? options:?];
  }

LABEL_13:
}

- (void)addIcon:(id)a3 prioritizedImageAppearances:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SBHIconImageCacheRequestBuilder_addIcon_prioritizedImageAppearances_options___block_invoke;
  v10[3] = &unk_1E8088D90;
  v10[4] = self;
  v11 = v8;
  v12 = a5;
  v9 = v8;
  [a4 enumerateKeysAndObjectsUsingBlock:v10];
}

void __79__SBHIconImageCacheRequestBuilder_addIcon_prioritizedImageAppearances_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addIcon:*(a1 + 40) imageAppearance:v5 priority:objc_msgSend(a3 options:{"integerValue"), *(a1 + 48)}];
}

- (void)addIcons:(id)a3 imageAppearance:(id)a4 priority:(int64_t)a5 options:(unint64_t)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [(SBHIconImageCacheRequestBuilder *)self addIcon:*(*(&v16 + 1) + 8 * v15++) imageAppearance:v11 priority:a5 options:a6];
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addIcons:(id)a3 prioritizedImageAppearances:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SBHIconImageCacheRequestBuilder_addIcons_prioritizedImageAppearances_options___block_invoke;
  v10[3] = &unk_1E8088D90;
  v10[4] = self;
  v11 = v8;
  v12 = a5;
  v9 = v8;
  [a4 enumerateKeysAndObjectsUsingBlock:v10];
}

void __80__SBHIconImageCacheRequestBuilder_addIcons_prioritizedImageAppearances_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addIcons:*(a1 + 40) imageAppearance:v5 priority:objc_msgSend(a3 options:{"integerValue"), *(a1 + 48)}];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHIconImageCacheRequestBuilder_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

- (id)initWithIconImageCache:(void *)a3 sharedCancellation:(void *)a4 reason:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = SBHIconImageCacheRequestBuilder;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 3, v7);
      objc_storeStrong(a1 + 4, a3);
      v11 = [v9 copy];
      v12 = a1[5];
      a1[5] = v11;

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = a1[1];
      a1[1] = v13;

      v15 = dispatch_group_create();
      v16 = a1[6];
      a1[6] = v15;
    }
  }

  return a1;
}

- (id)finalizeRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(SBHIconImageCacheRequestBuilder *)self setFinalized:1];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconImageCache);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [OUTLINED_FUNCTION_6() finalizeRequestBuilder:? completionHandler:?];

  return v6;
}

id __61__SBHIconImageCacheRequestBuilder_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  return [v2 appendObject:v4 withName:@"reason"];
}

@end