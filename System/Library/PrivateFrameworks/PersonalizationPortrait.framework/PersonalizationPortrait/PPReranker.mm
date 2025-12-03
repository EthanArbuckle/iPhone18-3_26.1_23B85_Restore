@interface PPReranker
- (PPReranker)init;
- (PPReranker)initWithNamedEntityStore:(id)store;
- (id)_lazyLoadEntityRankMapWithError:(id *)error;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)rerankedMediaItems:(id)items error:(id *)error;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPReranker

- (id)forwardingTargetForSelector:(SEL)selector
{
  clientFeedbackHelper = self->_clientFeedbackHelper;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_clientFeedbackHelper;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_reranker_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138739971;
    v10 = feedbackCopy;
    _os_log_debug_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEBUG, "received feedback: %{sensitive}@", &v9, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)rerankedMediaItems:(id)items error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPReranker.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"mediaItems"}];
  }

  v8 = pp_locations_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_locations_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PPReranker.rerankedMediaItems", "", buf, 2u);
  }

  v29 = 0;
  v12 = [(PPReranker *)self _lazyLoadEntityRankMapWithError:&v29];
  v13 = v29;
  v14 = v13;
  if (v12)
  {
    v15 = pp_reranker_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [itemsCopy count];
      v17 = [v12 count];
      *buf = 134218240;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "reranking %tu items with %tu entities", buf, 0x16u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __39__PPReranker_rerankedMediaItems_error___block_invoke;
    v26[3] = &unk_1E77F6F78;
    v27 = v12;
    v28 = a2;
    [itemsCopy enumerateObjectsUsingBlock:v26];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __39__PPReranker_rerankedMediaItems_error___block_invoke_2;
    v25[3] = &__block_descriptor_40_e37_q24__0__INMediaItem_8__INMediaItem_16l;
    v25[4] = a2;
    v18 = [itemsCopy sortedArrayUsingComparator:v25];
    v19 = pp_locations_signpost_handle();
    v20 = v19;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A7FD3000, v20, OS_SIGNPOST_INTERVAL_END, v9, "PPReranker.rerankedMediaItems", "", buf, 2u);
    }
  }

  else if (error)
  {
    v21 = v13;
    v18 = 0;
    *error = v14;
  }

  else
  {
    v18 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

void __39__PPReranker_rerankedMediaItems_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 title];
  v6 = [v5 lowercaseString];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v7 doubleValue];
  v9 = v8 + 0.0;

  v10 = *(a1 + 32);
  v11 = [v4 artist];
  v12 = [v11 lowercaseString];
  v13 = [v10 objectForKeyedSubscript:v12];
  [v13 doubleValue];
  v15 = v9 + v14;

  v16 = *(a1 + 40);
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  objc_setAssociatedObject(v4, v16, v17, 1);
}

int64_t __39__PPReranker_rerankedMediaItems_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = objc_getAssociatedObject(a2, v5);
  v8 = objc_getAssociatedObject(v6, *(a1 + 32));

  [v7 doubleValue];
  v10 = v9;
  [v8 doubleValue];
  v12 = [PPUtils reverseCompareDouble:v10 withDouble:v11];

  return v12;
}

- (id)_lazyLoadEntityRankMapWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5367;
  v18 = __Block_byref_object_dispose__5368;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5367;
  v12 = __Block_byref_object_dispose__5368;
  v13 = 0;
  dataLock = self->_dataLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PPReranker__lazyLoadEntityRankMapWithError___block_invoke;
  v7[3] = &unk_1E77F6F50;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  [(_PASLock *)dataLock runWithLockAcquired:v7];
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __46__PPReranker__lazyLoadEntityRankMapWithError___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3 + 1;
  v4 = v3[1];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  }

  else
  {
    v6 = pp_reranker_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEFAULT, "loading the entity to rank map.", buf, 2u);
    }

    v7 = objc_opt_new();
    [v7 setLimit:500];
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v19 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__PPReranker__lazyLoadEntityRankMapWithError___block_invoke_14;
    v17[3] = &unk_1E77F6F28;
    v10 = v8;
    v18 = v10;
    v11 = [v9 iterRankedNamedEntitiesWithQuery:v7 error:&v19 block:v17];
    v12 = v19;
    if (v11)
    {
      objc_storeStrong(v5, v8);
      v13 = *v5;
      v14 = 40;
    }

    else
    {
      v15 = pp_reranker_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v12;
        _os_log_error_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_ERROR, "failed to get ranked named entities with query: %@ error: %@", buf, 0x16u);
      }

      v14 = 48;
      v13 = v12;
    }

    objc_storeStrong((*(*(a1 + v14) + 8) + 40), v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __46__PPReranker__lazyLoadEntityRankMapWithError___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  [v4 score];
  v9 = [v3 numberWithDouble:?];
  v5 = *(a1 + 32);
  v6 = [v4 item];

  v7 = [v6 name];
  v8 = [v7 lowercaseString];
  [v5 setObject:v9 forKeyedSubscript:v8];
}

- (PPReranker)initWithNamedEntityStore:(id)store
{
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = PPReranker;
  v6 = [(PPReranker *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_namedEntityStore, store);
    v8 = [[PPClientFeedbackHelper alloc] initWithParentObject:v7];
    clientFeedbackHelper = v7->_clientFeedbackHelper;
    v7->_clientFeedbackHelper = v8;

    v10 = objc_alloc(MEMORY[0x1E69C5D60]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    dataLock = v7->_dataLock;
    v7->_dataLock = v12;
  }

  return v7;
}

- (PPReranker)init
{
  v3 = objc_opt_new();
  v4 = [(PPReranker *)self initWithNamedEntityStore:v3];

  return v4;
}

@end