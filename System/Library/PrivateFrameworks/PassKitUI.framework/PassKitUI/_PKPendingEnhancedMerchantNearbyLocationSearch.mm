@interface _PKPendingEnhancedMerchantNearbyLocationSearch
- (_PKPendingEnhancedMerchantNearbyLocationSearch)initWithMerchant:(id)merchant;
- (unint64_t)state;
- (void)_callCompletionHandlers;
- (void)_updateState:(unint64_t)state error:(id)error;
- (void)addCompletionHandler:(id)handler;
@end

@implementation _PKPendingEnhancedMerchantNearbyLocationSearch

- (_PKPendingEnhancedMerchantNearbyLocationSearch)initWithMerchant:(id)merchant
{
  merchantCopy = merchant;
  v11.receiver = self;
  v11.super_class = _PKPendingEnhancedMerchantNearbyLocationSearch;
  v6 = [(_PKPendingEnhancedMerchantNearbyLocationSearch *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_merchant, merchant);
    v7->_state = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v7->_completionHandlers;
    v7->_completionHandlers = v8;
  }

  return v7;
}

- (unint64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isInTerminalState = [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self isInTerminalState];
  os_unfair_lock_lock(&self->_lock);
  if (isInTerminalState)
  {
    v6 = self->_error;
    os_unfair_lock_unlock(&self->_lock);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71___PKPendingEnhancedMerchantNearbyLocationSearch_addCompletionHandler___block_invoke;
    v10[3] = &unk_1E8010E20;
    v11 = v6;
    v12 = handlerCopy;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    completionHandlers = self->_completionHandlers;
    v9 = _Block_copy(handlerCopy);
    [(NSMutableArray *)completionHandlers addObject:v9];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_updateState:(unint64_t)state error:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  self->_state = state;
  error = self->_error;
  self->_error = errorCopy;

  os_unfair_lock_unlock(&self->_lock);
  if ([(_PKPendingEnhancedMerchantNearbyLocationSearch *)self isInTerminalState])
  {

    [(_PKPendingEnhancedMerchantNearbyLocationSearch *)self _callCompletionHandlers];
  }
}

- (void)_callCompletionHandlers
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_error;
  v4 = [(NSMutableArray *)self->_completionHandlers copy];
  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = MEMORY[0x1E69E96A0];
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __73___PKPendingEnhancedMerchantNearbyLocationSearch__callCompletionHandlers__block_invoke;
        v12[3] = &unk_1E8010E20;
        v14 = v11;
        v13 = v3;
        dispatch_async(v9, v12);

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

@end