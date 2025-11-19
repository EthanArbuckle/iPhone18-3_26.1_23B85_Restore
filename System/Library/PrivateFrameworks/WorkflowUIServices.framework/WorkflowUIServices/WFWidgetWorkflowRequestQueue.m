@interface WFWidgetWorkflowRequestQueue
- (WFWidgetWorkflowRequestQueue)init;
- (void)_requeueFailedRequest:(id)a3;
- (void)fetchNextQueuedItem;
- (void)getWidgetWorkflowWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation WFWidgetWorkflowRequestQueue

- (void)fetchNextQueuedItem
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(WFWidgetWorkflowRequestQueue *)self isHandlingRequest];
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke;
    aBlock[3] = &unk_1E8307FA8;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(&self->_lock);
    v5 = [(WFWidgetWorkflowRequestQueue *)self requests];
    v6 = [v5 firstObject];

    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      os_unfair_lock_lock(&self->_lock);
      v7 = [(WFWidgetWorkflowRequestQueue *)self requests];
      [v7 removeObjectAtIndex:0];

      [(WFWidgetWorkflowRequestQueue *)self setHandlingRequest:1];
      os_unfair_lock_unlock(&self->_lock);
      v8 = [(WFWidgetWorkflowRequestQueue *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Handling request: %@", buf, 0xCu);
      }

      if ([v6 type])
      {
        if ([v6 type] != 1)
        {
LABEL_14:

          goto LABEL_15;
        }

        v9 = [MEMORY[0x1E69E0938] standardClient];
        v10 = [v6 identifier];
        v11 = [v6 limit];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke_2;
        v15[3] = &unk_1E8307FF8;
        v17 = v4;
        v16 = v6;
        [v9 getWidgetWorkflowsInCollectionWithIdentifier:v10 limit:v11 completion:v15];

        v12 = v17;
      }

      else
      {
        v13 = [MEMORY[0x1E69E0938] standardClient];
        v14 = [v6 identifier];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke_97;
        v18[3] = &unk_1E8307FD0;
        v20 = v4;
        v19 = v6;
        [v13 getWidgetWorkflowWithIdentifier:v14 completion:v18];

        v12 = v20;
      }
    }

    else
    {
      v12 = [(WFWidgetWorkflowRequestQueue *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "No pending requests.", buf, 2u);
      }
    }

    goto LABEL_14;
  }

  v4 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Already handling request, dropping request to move forward", buf, 2u);
  }

LABEL_15:
}

void __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1C830A000, v10, OS_LOG_TYPE_DEFAULT, "Finished with result: %@, error: %@", &v13, 0x16u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  [*(a1 + 32) setHandlingRequest:0];
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  if (v9 && ![v7 retryCount])
  {
    [*(a1 + 32) _requeueFailedRequest:v7];
  }

  else
  {
    v11 = [v7 completionHandler];
    (v11)[2](v11, v8, v9);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "Onto the next...", &v13, 2u);
  }

  [*(a1 + 32) fetchNextQueuedItem];
}

- (void)_requeueFailedRequest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [WFWidgetWorkflowFetchRequest alloc];
  v6 = [v4 type];
  v7 = [v4 identifier];
  v8 = [v4 limit];
  v9 = [v4 retryCount];
  v10 = [v4 completionHandler];

  v11 = [(WFWidgetWorkflowFetchRequest *)v5 initWithFetchType:v6 identifier:v7 limit:v8 retryCount:v9 + 1 completionHandler:v10];
  v12 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "Re-adding failed request: %@", &v14, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v13 = [(WFWidgetWorkflowRequestQueue *)self requests];
  [v13 insertObject:v11 atIndex:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 isEqualToString:@"MyShortcuts"])
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [[WFWidgetWorkflowFetchRequest alloc] initWithFetchType:1 identifier:v11 limit:a4 retryCount:0 completionHandler:v9];

  v13 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_DEFAULT, "Adding request: %@", &v15, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v14 = [(WFWidgetWorkflowRequestQueue *)self requests];
  [v14 addObject:v12];

  os_unfair_lock_unlock(&self->_lock);
  [(WFWidgetWorkflowRequestQueue *)self fetchNextQueuedItem];
}

- (void)getWidgetWorkflowWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [[WFWidgetWorkflowFetchRequest alloc] initWithFetchType:0 identifier:v7 limit:1 retryCount:0 completionHandler:v6];

  v9 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "Adding request: %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(WFWidgetWorkflowRequestQueue *)self requests];
  [v10 addObject:v8];

  os_unfair_lock_unlock(&self->_lock);
  [(WFWidgetWorkflowRequestQueue *)self fetchNextQueuedItem];
}

- (WFWidgetWorkflowRequestQueue)init
{
  v9.receiver = self;
  v9.super_class = WFWidgetWorkflowRequestQueue;
  v2 = [(WFWidgetWorkflowRequestQueue *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    requests = v2->_requests;
    v2->_requests = v3;

    v2->_handlingRequest = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = os_log_create("com.apple.shortcuts", "WidgetWorkflowRequestQueue");
    log = v2->_log;
    v2->_log = v5;

    v7 = v2;
  }

  return v2;
}

@end