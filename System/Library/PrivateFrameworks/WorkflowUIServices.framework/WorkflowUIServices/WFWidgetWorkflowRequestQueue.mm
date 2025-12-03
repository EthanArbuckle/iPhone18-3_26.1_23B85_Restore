@interface WFWidgetWorkflowRequestQueue
- (WFWidgetWorkflowRequestQueue)init;
- (void)_requeueFailedRequest:(id)request;
- (void)fetchNextQueuedItem;
- (void)getWidgetWorkflowWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)identifier limit:(unint64_t)limit completionHandler:(id)handler;
@end

@implementation WFWidgetWorkflowRequestQueue

- (void)fetchNextQueuedItem
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  isHandlingRequest = [(WFWidgetWorkflowRequestQueue *)self isHandlingRequest];
  os_unfair_lock_unlock(&self->_lock);
  if (!isHandlingRequest)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke;
    aBlock[3] = &unk_1E8307FA8;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(&self->_lock);
    requests = [(WFWidgetWorkflowRequestQueue *)self requests];
    firstObject = [requests firstObject];

    os_unfair_lock_unlock(&self->_lock);
    if (firstObject)
    {
      os_unfair_lock_lock(&self->_lock);
      requests2 = [(WFWidgetWorkflowRequestQueue *)self requests];
      [requests2 removeObjectAtIndex:0];

      [(WFWidgetWorkflowRequestQueue *)self setHandlingRequest:1];
      os_unfair_lock_unlock(&self->_lock);
      v8 = [(WFWidgetWorkflowRequestQueue *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = firstObject;
        _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Handling request: %@", buf, 0xCu);
      }

      if ([firstObject type])
      {
        if ([firstObject type] != 1)
        {
LABEL_14:

          goto LABEL_15;
        }

        standardClient = [MEMORY[0x1E69E0938] standardClient];
        identifier = [firstObject identifier];
        limit = [firstObject limit];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke_2;
        v15[3] = &unk_1E8307FF8;
        v17 = v4;
        v16 = firstObject;
        [standardClient getWidgetWorkflowsInCollectionWithIdentifier:identifier limit:limit completion:v15];

        v12 = v17;
      }

      else
      {
        standardClient2 = [MEMORY[0x1E69E0938] standardClient];
        identifier2 = [firstObject identifier];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __51__WFWidgetWorkflowRequestQueue_fetchNextQueuedItem__block_invoke_97;
        v18[3] = &unk_1E8307FD0;
        v20 = v4;
        v19 = firstObject;
        [standardClient2 getWidgetWorkflowWithIdentifier:identifier2 completion:v18];

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

- (void)_requeueFailedRequest:(id)request
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [WFWidgetWorkflowFetchRequest alloc];
  type = [requestCopy type];
  identifier = [requestCopy identifier];
  limit = [requestCopy limit];
  retryCount = [requestCopy retryCount];
  completionHandler = [requestCopy completionHandler];

  v11 = [(WFWidgetWorkflowFetchRequest *)v5 initWithFetchType:type identifier:identifier limit:limit retryCount:retryCount + 1 completionHandler:completionHandler];
  v12 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "Re-adding failed request: %@", &v14, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  requests = [(WFWidgetWorkflowRequestQueue *)self requests];
  [requests insertObject:v11 atIndex:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getWidgetWorkflowsInCollectionWithIdentifier:(id)identifier limit:(unint64_t)limit completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:@"MyShortcuts"])
  {
    v10 = 0;
  }

  else
  {
    v10 = identifierCopy;
  }

  v11 = v10;
  v12 = [[WFWidgetWorkflowFetchRequest alloc] initWithFetchType:1 identifier:v11 limit:limit retryCount:0 completionHandler:handlerCopy];

  v13 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_DEFAULT, "Adding request: %@", &v15, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  requests = [(WFWidgetWorkflowRequestQueue *)self requests];
  [requests addObject:v12];

  os_unfair_lock_unlock(&self->_lock);
  [(WFWidgetWorkflowRequestQueue *)self fetchNextQueuedItem];
}

- (void)getWidgetWorkflowWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = [[WFWidgetWorkflowFetchRequest alloc] initWithFetchType:0 identifier:identifierCopy limit:1 retryCount:0 completionHandler:handlerCopy];

  v9 = [(WFWidgetWorkflowRequestQueue *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "Adding request: %@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  requests = [(WFWidgetWorkflowRequestQueue *)self requests];
  [requests addObject:v8];

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