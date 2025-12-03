@interface PLLocalVideoKeyFrameGenerationJob
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJob:(id)job;
- (PLLocalVideoKeyFrameGenerationJob)init;
- (unint64_t)hash;
- (void)addCompletionHandler:(id)handler;
- (void)callCompletionHandlersWithMutatedMoc:(id)moc error:(id)error storedRecipes:(id)recipes affectedRecipes:(id)affectedRecipes sourceMetadata:(id)metadata;
@end

@implementation PLLocalVideoKeyFrameGenerationJob

- (void)callCompletionHandlersWithMutatedMoc:(id)moc error:(id)error storedRecipes:(id)recipes affectedRecipes:(id)affectedRecipes sourceMetadata:(id)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  mocCopy = moc;
  errorCopy = error;
  recipesCopy = recipes;
  affectedRecipesCopy = affectedRecipes;
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_handlerLock);
  v17 = [(NSMutableArray *)self->_completionHandlers copy];
  os_unfair_lock_unlock(&self->_handlerLock);
  if (recipesCopy)
  {
    if (affectedRecipesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    recipesCopy = [MEMORY[0x1E695DFD8] set];
    if (affectedRecipesCopy)
    {
      goto LABEL_3;
    }
  }

  affectedRecipesCopy = [MEMORY[0x1E695DFB8] orderedSet];
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

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_handlerLock);
  completionHandlers = self->_completionHandlers;
  v6 = _Block_copy(handlerCopy);

  [(NSMutableArray *)completionHandlers addObject:v6];

  os_unfair_lock_unlock(&self->_handlerLock);
}

- (unint64_t)hash
{
  assetObjectID = [(PLLocalVideoKeyFrameGenerationJob *)self assetObjectID];
  v3 = [assetObjectID hash];

  return v3;
}

- (BOOL)isEqualToJob:(id)job
{
  jobCopy = job;
  assetObjectID = [(PLLocalVideoKeyFrameGenerationJob *)self assetObjectID];
  assetObjectID2 = [jobCopy assetObjectID];

  LOBYTE(jobCopy) = [assetObjectID isEqual:assetObjectID2];
  return jobCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLLocalVideoKeyFrameGenerationJob *)self isEqualToJob:equalCopy];
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