@interface PXStoryErrorRepository
+ (id)analyticsNameForComponent:(id)a3;
- (NSArray)errors;
- (NSDictionary)errorsByComponent;
- (PXStoryErrorRepository)initWithQueue:(id)a3;
- (void)setError:(id)a3 forComponent:(id)a4;
@end

@implementation PXStoryErrorRepository

- (void)setError:(id)a3 forComponent:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryErrorRepository *)self log];
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 134218498;
      v18 = [(PXStoryErrorRepository *)self logContext];
      v19 = 2114;
      v20 = v7;
      v21 = 2112;
      v22 = v6;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_EVENT, v10, "PXStoryError", "Context=%{signpost.telemetry:string2}lu Component=%{signpost.description:attribute,public}@ Error=%{signpost.description:attribute}@ ", buf, 0x20u);
    }
  }

  v11 = [(PXStoryErrorRepository *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXStoryErrorRepository_setError_forComponent___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v15 = v7;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  dispatch_async(v11, block);
}

void __48__PXStoryErrorRepository_setError_forComponent___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v3;
  if (v3 == v2)
  {
  }

  else
  {
    v5 = [v3 isEqual:v2];

    if ((v5 & 1) == 0)
    {
      v6 = PLStoryGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        *buf = 138543618;
        v26 = v7;
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error for component %{public}@: %{public}@", buf, 0x16u);
      }

      if (*(a1 + 48))
      {
        v9 = objc_alloc(MEMORY[0x1E696AEC0]);
        v10 = [objc_opt_class() analyticsNameForComponent:*(a1 + 40)];
        v11 = [v9 initWithFormat:@"com.apple.photos.memory.interactiveMemoryErrorOccurredIn%@", v10];

        v12 = *(a1 + 48);
        v23 = *MEMORY[0x1E6991E28];
        v24 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.memory.interactiveMemoryErrorOccurred" withPayload:v13];
        [MEMORY[0x1E6991F28] sendEvent:v11 withPayload:v13];
      }

      v14 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __48__PXStoryErrorRepository_setError_forComponent___block_invoke_13;
      v18[3] = &unk_1E773A8B8;
      v15 = v2;
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = v15;
      v20 = v16;
      v21 = v17;
      v22 = *(a1 + 48);
      [v14 performChanges:v18];
    }
  }
}

void __48__PXStoryErrorRepository_setError_forComponent___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 104) removeObject:?];
  }

  [*(*(a1 + 40) + 96) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [*(*(a1 + 40) + 104) addObject:?];
  }

  [*(a1 + 40) signalChange:1];
}

- (NSDictionary)errorsByComponent
{
  v2 = [(NSMutableDictionary *)self->_errorsByComponent copy];

  return v2;
}

- (NSArray)errors
{
  v2 = [(NSMutableArray *)self->_errors copy];

  return v2;
}

- (PXStoryErrorRepository)initWithQueue:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXStoryErrorRepository;
  v5 = [(PXStoryErrorRepository *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errorsByComponent = v5->_errorsByComponent;
    v5->_errorsByComponent = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    errors = v5->_errors;
    v5->_errors = v8;

    if (v4)
    {
      v10 = v4;
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v10;
    }

    else
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v12;
    }
  }

  return v5;
}

+ (id)analyticsNameForComponent:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  [v3 whitespaceCharacterSet];
  [v4 componentsSeparatedByCharactersInSet:objc_claimAutoreleasedReturnValue()];
  objc_claimAutoreleasedReturnValue();

  PXMap();
}

@end