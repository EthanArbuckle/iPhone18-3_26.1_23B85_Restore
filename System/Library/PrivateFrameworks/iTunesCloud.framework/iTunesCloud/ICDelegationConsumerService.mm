@interface ICDelegationConsumerService
- (ICDelegationConsumerService)init;
- (void)performRequest:(id)request withResponseHandler:(id)handler;
@end

@implementation ICDelegationConsumerService

- (void)performRequest:(id)request withResponseHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = requestCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing request: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [ICDelegationConsumerServiceSession alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke;
  v20[3] = &unk_1E7BF5B90;
  objc_copyWeak(&v22, buf);
  v10 = handlerCopy;
  v21 = v10;
  v11 = [(ICDelegationConsumerServiceSession *)v9 initWithRequest:requestCopy responseHandler:v20];
  accessQueue = self->_accessQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke_3;
  v17 = &unk_1E7BFA078;
  selfCopy2 = self;
  v13 = v11;
  v19 = v13;
  dispatch_barrier_async(accessQueue, &v14);
  [(ICDelegationConsumerServiceSession *)v13 start:v14];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (a7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v19 = WeakRetained;
    if (WeakRetained)
    {
      v20 = WeakRetained[1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke_2;
      v22[3] = &unk_1E7BFA078;
      v23 = WeakRetained;
      v24 = v13;
      dispatch_barrier_async(v20, v22);
    }
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    (*(v21 + 16))(v21, v14, v15, v16, v17, a7);
  }
}

uint64_t __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void __66__ICDelegationConsumerService_performRequest_withResponseHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

- (ICDelegationConsumerService)init
{
  v6.receiver = self;
  v6.super_class = ICDelegationConsumerService;
  v2 = [(ICDelegationConsumerService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ICDelegationConsumerService.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

@end