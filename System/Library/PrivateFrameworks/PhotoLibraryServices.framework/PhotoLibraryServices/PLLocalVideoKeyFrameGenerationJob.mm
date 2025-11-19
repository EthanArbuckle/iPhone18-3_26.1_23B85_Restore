@interface PLLocalVideoKeyFrameGenerationJob
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToJob:(id)a3;
- (PLLocalVideoKeyFrameGenerationJob)init;
- (unint64_t)hash;
- (void)addCompletionHandler:(id)a3;
- (void)callCompletionHandlersWithMutatedMoc:(id)a3 error:(id)a4 storedRecipes:(id)a5 affectedRecipes:(id)a6 sourceMetadata:(id)a7;
@end

@implementation PLLocalVideoKeyFrameGenerationJob

- (void)callCompletionHandlersWithMutatedMoc:(id)a3 error:(id)a4 storedRecipes:(id)a5 affectedRecipes:(id)a6 sourceMetadata:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  os_unfair_lock_lock(&self->_handlerLock);
  v17 = [(NSMutableArray *)self->_completionHandlers copy];
  os_unfair_lock_unlock(&self->_handlerLock);
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E695DFB8] orderedSet];
LABEL_3:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        (*(*(*(&v23 + 1) + 8 * v22) + 16))(*(*(&v23 + 1) + 8 * v22));
        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_handlerLock);
  completionHandlers = self->_completionHandlers;
  v6 = _Block_copy(v4);

  [(NSMutableArray *)completionHandlers addObject:v6];

  os_unfair_lock_unlock(&self->_handlerLock);
}

- (unint64_t)hash
{
  v2 = [(PLLocalVideoKeyFrameGenerationJob *)self assetObjectID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToJob:(id)a3
{
  v4 = a3;
  v5 = [(PLLocalVideoKeyFrameGenerationJob *)self assetObjectID];
  v6 = [v4 assetObjectID];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLLocalVideoKeyFrameGenerationJob *)self isEqualToJob:v4];
  }

  return v5;
}

- (PLLocalVideoKeyFrameGenerationJob)init
{
  v7.receiver = self;
  v7.super_class = PLLocalVideoKeyFrameGenerationJob;
  v2 = [(PLLocalVideoKeyFrameGenerationJob *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_handlerLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v3->_completionHandlers;
    v3->_completionHandlers = v4;
  }

  return v3;
}

@end