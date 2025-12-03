@interface WBSRetryableCKAcceptSharesOperation
- (NSArray)shareMetadatas;
- (id)_makeOperation;
- (id)acceptSharesCompletionBlock;
- (id)perShareCompletionBlock;
- (void)_setUpOperation:(id)operation;
- (void)setAcceptSharesCompletionBlock:(id)block;
- (void)setPerShareCompletionBlock:(id)block;
- (void)setShareMetadatas:(id)metadatas;
@end

@implementation WBSRetryableCKAcceptSharesOperation

- (NSArray)shareMetadatas
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [(NSArray *)self->_shareMetadatas copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setShareMetadatas:(id)metadatas
{
  metadatasCopy = metadatas;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [metadatasCopy copy];

  shareMetadatas = self->_shareMetadatas;
  self->_shareMetadatas = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"shareMetadatas"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)perShareCompletionBlock
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [self->_perShareCompletionBlock copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setPerShareCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [blockCopy copy];

  perShareCompletionBlock = self->_perShareCompletionBlock;
  self->_perShareCompletionBlock = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"perShareCompletionBlock"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)acceptSharesCompletionBlock
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [self->_acceptSharesCompletionBlock copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setAcceptSharesCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [blockCopy copy];

  acceptSharesCompletionBlock = self->_acceptSharesCompletionBlock;
  self->_acceptSharesCompletionBlock = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"acceptSharesCompletionBlock"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B850]);

  return v2;
}

- (void)_setUpOperation:(id)operation
{
  operationCopy = operation;
  v10.receiver = self;
  v10.super_class = WBSRetryableCKAcceptSharesOperation;
  [(WBSRetryableCKOperation *)&v10 _setUpOperation:operationCopy];
  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"shareMetadatas"])
  {
    [operationCopy setShareMetadatas:self->_shareMetadatas];
  }

  if (self->_perShareCompletionBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke;
    v7[3] = &unk_1E7FC9D98;
    objc_copyWeak(&v8, &location);
    [operationCopy setPerShareCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_3;
  v5[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v6, &location);
  [operationCopy setAcceptSharesCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 33);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_2;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 392));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_4;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __55__WBSRetryableCKAcceptSharesOperation__setUpOperation___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 400));
    os_unfair_lock_unlock((*(a1 + 32) + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, *(a1 + 32), WeakRetained, *(a1 + 40));
    }

    v5 = [*(a1 + 32) log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Operation of %{public}@ did finish successfully", &v7, 0xCu);
    }

    [*(a1 + 32) _didFinishOperation];
  }
}

@end