@interface WBSRetryableCKModifySubscriptionsOperation
- (NSArray)subscriptionIDsToDelete;
- (NSArray)subscriptionsToSave;
- (id)_makeOperation;
- (id)modifySubscriptionsCompletionBlock;
- (id)perSubscriptionDeleteBlock;
- (id)perSubscriptionSaveBlock;
- (void)_setUpOperation:(id)a3;
- (void)setModifySubscriptionsCompletionBlock:(id)a3;
- (void)setPerSubscriptionDeleteBlock:(id)a3;
- (void)setPerSubscriptionSaveBlock:(id)a3;
- (void)setSubscriptionIDsToDelete:(id)a3;
- (void)setSubscriptionsToSave:(id)a3;
@end

@implementation WBSRetryableCKModifySubscriptionsOperation

- (NSArray)subscriptionsToSave
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_subscriptionsToSave copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setSubscriptionsToSave:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  subscriptionsToSave = self->_subscriptionsToSave;
  self->_subscriptionsToSave = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"subscriptionsToSave"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (NSArray)subscriptionIDsToDelete
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [(NSArray *)self->_subscriptionIDsToDelete copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setSubscriptionIDsToDelete:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  subscriptionIDsToDelete = self->_subscriptionIDsToDelete;
  self->_subscriptionIDsToDelete = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"subscriptionIDsToDelete"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)perSubscriptionSaveBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perSubscriptionSaveBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerSubscriptionSaveBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  perSubscriptionSaveBlock = self->_perSubscriptionSaveBlock;
  self->_perSubscriptionSaveBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perSubscriptionSaveBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)perSubscriptionDeleteBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_perSubscriptionDeleteBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setPerSubscriptionDeleteBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  perSubscriptionDeleteBlock = self->_perSubscriptionDeleteBlock;
  self->_perSubscriptionDeleteBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"perSubscriptionDeleteBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)modifySubscriptionsCompletionBlock
{
  os_unfair_lock_lock(&self->super.super._internalLock);
  v3 = [self->_modifySubscriptionsCompletionBlock copy];
  os_unfair_lock_unlock(&self->super.super._internalLock);

  return v3;
}

- (void)setModifySubscriptionsCompletionBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super.super._internalLock);
  v5 = [v4 copy];

  modifySubscriptionsCompletionBlock = self->_modifySubscriptionsCompletionBlock;
  self->_modifySubscriptionsCompletionBlock = v5;

  [(NSMutableSet *)self->super.super._explicitlySetProperties addObject:@"modifySubscriptionsCompletionBlock"];

  os_unfair_lock_unlock(&self->super.super._internalLock);
}

- (id)_makeOperation
{
  v2 = objc_alloc_init(MEMORY[0x1E695B9D0]);

  return v2;
}

- (void)_setUpOperation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSRetryableCKModifySubscriptionsOperation;
  [(WBSRetryableCKDatabaseOperation *)&v12 _setUpOperation:v4];
  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"subscriptionsToSave"])
  {
    [v4 setSubscriptionsToSave:self->_subscriptionsToSave];
  }

  if ([(NSMutableSet *)self->super.super._explicitlySetProperties containsObject:@"subscriptionIDsToDelete"])
  {
    [v4 setSubscriptionIDsToDelete:self->_subscriptionIDsToDelete];
  }

  if (self->_perSubscriptionSaveBlock)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke;
    v9[3] = &unk_1E7FCA068;
    objc_copyWeak(&v10, &location);
    [v4 setPerSubscriptionSaveBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (self->_perSubscriptionDeleteBlock)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_3;
    v7[3] = &unk_1E7FCA130;
    objc_copyWeak(&v8, &location);
    [v4 setPerSubscriptionDeleteBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_5;
  v5[3] = &unk_1E7FCA0E0;
  objc_copyWeak(&v6, &location);
  [v4 setModifySubscriptionsCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_2;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v12 addOperationWithBlock:v13];
  }
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 248));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    os_unfair_lock_lock((a1[4] + 272));
    v3 = MEMORY[0x1BFB13CE0](*(a1[4] + 408));
    os_unfair_lock_unlock((a1[4] + 272));
    v4 = MEMORY[0x1BFB13CE0](v3);

    if (v4)
    {
      (v4)[2](v4, v5, a1[5], a1[6], a1[7]);
    }

    WeakRetained = v5;
  }
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 33);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_4;
    v10[3] = &unk_1E7FB7258;
    v10[4] = WeakRetained;
    v11 = v5;
    v12 = v6;
    [v9 addOperationWithBlock:v10];
  }
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_4(void *a1)
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
      (v4)[2](v4, v5, a1[5], a1[6]);
    }

    WeakRetained = v5;
  }
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
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
    v13[2] = __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_6;
    v13[3] = &unk_1E7FC6CA8;
    v13[4] = WeakRetained;
    v14 = v9;
    v15 = v7;
    v16 = v8;
    [v12 addOperationWithBlock:v13];
  }
}

void __62__WBSRetryableCKModifySubscriptionsOperation__setUpOperation___block_invoke_6(uint64_t a1)
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
      (v4)[2](v4, *(a1 + 32), WeakRetained, *(a1 + 48), *(a1 + 56), *(a1 + 40));
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