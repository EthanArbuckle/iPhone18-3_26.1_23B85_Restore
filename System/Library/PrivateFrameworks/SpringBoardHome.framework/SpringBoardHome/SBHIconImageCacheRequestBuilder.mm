@interface SBHIconImageCacheRequestBuilder
- (id)finalizeRequestWithCompletionHandler:(id)handler;
- (id)initWithIconImageCache:(void *)cache sharedCancellation:(void *)cancellation reason:;
- (id)succinctDescription;
- (void)addIcon:(id)icon imageAppearance:(id)appearance priority:(int64_t)priority options:(unint64_t)options;
- (void)addIcon:(id)icon prioritizedImageAppearances:(id)appearances options:(unint64_t)options;
- (void)addIcons:(id)icons imageAppearance:(id)appearance priority:(int64_t)priority options:(unint64_t)options;
- (void)addIcons:(id)icons prioritizedImageAppearances:(id)appearances options:(unint64_t)options;
- (void)appendDescriptionToStream:(id)stream;
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

- (void)addIcon:(id)icon imageAppearance:(id)appearance priority:(int64_t)priority options:(unint64_t)options
{
  iconCopy = icon;
  appearanceCopy = appearance;
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
    v17 = [WeakRetained currentImageGenerationForIcon:iconCopy];
    if ((options & 2) != 0)
    {
      if ((options & 1) == 0)
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
      v21 = [(SBHIconImageCacheRequest *)&v20->super.isa initWithIcon:iconCopy imageAppearance:appearanceCopy priority:priority reason:v12 imageGeneration:v17 variant:0 options:options sharedCancellation:v13 iconImageCache:WeakRetained completionHandler:v25];
      [(NSMutableArray *)self->_requests addObject:v21];

      if ((options & 1) == 0)
      {
LABEL_6:
        if ((options & 0x10) != 0)
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
    v19 = [(SBHIconImageCacheRequest *)&v22->super.isa initWithIcon:iconCopy imageAppearance:appearanceCopy priority:priority reason:v12 imageGeneration:v17 variant:1 options:options sharedCancellation:v13 iconImageCache:WeakRetained completionHandler:v23];
    [(NSMutableArray *)self->_requests addObject:v19];

    if ((options & 0x10) != 0)
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

- (void)addIcon:(id)icon prioritizedImageAppearances:(id)appearances options:(unint64_t)options
{
  iconCopy = icon;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SBHIconImageCacheRequestBuilder_addIcon_prioritizedImageAppearances_options___block_invoke;
  v10[3] = &unk_1E8088D90;
  v10[4] = self;
  v11 = iconCopy;
  optionsCopy = options;
  v9 = iconCopy;
  [appearances enumerateKeysAndObjectsUsingBlock:v10];
}

void __79__SBHIconImageCacheRequestBuilder_addIcon_prioritizedImageAppearances_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addIcon:*(a1 + 40) imageAppearance:v5 priority:objc_msgSend(a3 options:{"integerValue"), *(a1 + 48)}];
}

- (void)addIcons:(id)icons imageAppearance:(id)appearance priority:(int64_t)priority options:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  appearanceCopy = appearance;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [iconsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(iconsCopy);
        }

        [(SBHIconImageCacheRequestBuilder *)self addIcon:*(*(&v16 + 1) + 8 * v15++) imageAppearance:appearanceCopy priority:priority options:options];
      }

      while (v13 != v15);
      v13 = [iconsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addIcons:(id)icons prioritizedImageAppearances:(id)appearances options:(unint64_t)options
{
  iconsCopy = icons;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__SBHIconImageCacheRequestBuilder_addIcons_prioritizedImageAppearances_options___block_invoke;
  v10[3] = &unk_1E8088D90;
  v10[4] = self;
  v11 = iconsCopy;
  optionsCopy = options;
  v9 = iconsCopy;
  [appearances enumerateKeysAndObjectsUsingBlock:v10];
}

void __80__SBHIconImageCacheRequestBuilder_addIcons_prioritizedImageAppearances_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(a1 + 32) addIcons:*(a1 + 40) imageAppearance:v5 priority:objc_msgSend(a3 options:{"integerValue"), *(a1 + 48)}];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHIconImageCacheRequestBuilder_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

- (id)initWithIconImageCache:(void *)cache sharedCancellation:(void *)cancellation reason:
{
  v7 = a2;
  cacheCopy = cache;
  cancellationCopy = cancellation;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = SBHIconImageCacheRequestBuilder;
    v10 = objc_msgSendSuper2(&v18, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 3, v7);
      objc_storeStrong(self + 4, cache);
      v11 = [cancellationCopy copy];
      v12 = self[5];
      self[5] = v11;

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self[1];
      self[1] = v13;

      v15 = dispatch_group_create();
      v16 = self[6];
      self[6] = v15;
    }
  }

  return self;
}

- (id)finalizeRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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