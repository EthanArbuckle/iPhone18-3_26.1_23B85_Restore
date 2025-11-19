@interface WBSRetryableCKFetchShareMetadataOperation
- (BOOL)shouldFetchRootRecord;
- (NSArray)rootRecordDesiredKeys;
- (NSArray)shareURLs;
- (NSDictionary)shareInvitationTokensByShareURL;
- (id)_makeOperation;
- (id)fetchShareMetadataCompletionBlock;
- (id)perShareMetadataBlock;
- (void)_setUpOperation:(id)a3;
- (void)setFetchShareMetadataCompletionBlock:(id)a3;
- (void)setPerShareMetadataBlock:(id)a3;
- (void)setRootRecordDesiredKeys:(id)a3;
- (void)setShareInvitationTokensByShareURL:(id)a3;
- (void)setShareURLs:(id)a3;
- (void)setShouldFetchRootRecord:(BOOL)a3;
@end

@implementation WBSRetryableCKFetchShareMetadataOperation

- (NSArray)shareURLs
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [(NSArray *)self->_shareURLs copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setShareURLs:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [v4 copy];

  shareURLs = self->_shareURLs;
  self->_shareURLs = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"shareURLs"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (NSDictionary)shareInvitationTokensByShareURL
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [(NSDictionary *)self->_shareInvitationTokensByShareURL copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setShareInvitationTokensByShareURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [v4 copy];

  shareInvitationTokensByShareURL = self->_shareInvitationTokensByShareURL;
  self->_shareInvitationTokensByShareURL = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"shareInvitationTokensByShareURL"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (BOOL)shouldFetchRootRecord
{
  os_unfair_lock_lock(&self->super._internalLock);
  shouldFetchRootRecord = self->_shouldFetchRootRecord;
  os_unfair_lock_unlock(&self->super._internalLock);
  return shouldFetchRootRecord;
}

- (void)setShouldFetchRootRecord:(BOOL)a3
{
  os_unfair_lock_lock(&self->super._internalLock);
  self->_shouldFetchRootRecord = a3;
  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"shouldFetchRootRecord"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (NSArray)rootRecordDesiredKeys
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [(NSArray *)self->_rootRecordDesiredKeys copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setRootRecordDesiredKeys:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [v4 copy];

  rootRecordDesiredKeys = self->_rootRecordDesiredKeys;
  self->_rootRecordDesiredKeys = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"rootRecordDesiredKeys"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)perShareMetadataBlock
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [self->_perShareMetadataBlock copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setPerShareMetadataBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [v4 copy];

  perShareMetadataBlock = self->_perShareMetadataBlock;
  self->_perShareMetadataBlock = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"perShareMetadataBlock"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)fetchShareMetadataCompletionBlock
{
  os_unfair_lock_lock(&self->super._internalLock);
  v3 = [self->_fetchShareMetadataCompletionBlock copy];
  os_unfair_lock_unlock(&self->super._internalLock);

  return v3;
}

- (void)setFetchShareMetadataCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._internalLock);
  v5 = [v4 copy];

  fetchShareMetadataCompletionBlock = self->_fetchShareMetadataCompletionBlock;
  self->_fetchShareMetadataCompletionBlock = v5;

  [(NSMutableSet *)self->super._explicitlySetProperties addObject:@"fetchShareMetadataCompletionBlock"];

  os_unfair_lock_unlock(&self->super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B948]);

  return v2;
}

- (void)_setUpOperation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSRetryableCKFetchShareMetadataOperation;
  [(WBSRetryableCKOperation *)&v10 _setUpOperation:v4];
  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"shareURLs"])
  {
    [v4 setShareURLs:self->_shareURLs];
  }

  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"shareInvitationTokensByShareURL"])
  {
    [v4 setShareInvitationTokensByShareURL:self->_shareInvitationTokensByShareURL];
  }

  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"shouldFetchRootRecord"])
  {
    [v4 setShouldFetchRootRecord:self->_shouldFetchRootRecord];
  }

  if ([(NSMutableSet *)self->super._explicitlySetProperties containsObject:@"rootRecordDesiredKeys"])
  {
    [v4 setRootRecordDesiredKeys:self->_rootRecordDesiredKeys];
  }

  if (self->_perShareMetadataBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke;
    v7[3] = &unk_1E7FCA018;
    objc_copyWeak(&v8, &location);
    [v4 setPerShareMetadataBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_3;
  v5[3] = &unk_1E7FC9DC0;
  objc_copyWeak(&v6, &location);
  [v4 setFetchShareMetadataCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_2;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 416));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_4;
    v7[3] = &unk_1E7FB6E30;
    v7[4] = WeakRetained;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __61__WBSRetryableCKFetchShareMetadataOperation__setUpOperation___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
  if (WeakRetained && ([*(a1 + 32) _scheduleRetryIfNeededForError:*(a1 + 40)] & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 32) + 272));
    v3 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 424));
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