@interface ICMachineDataActionHandler
+ (ICMachineDataActionHandler)sharedHandler;
- (ICMachineDataActionHandler)init;
- (void)processAction:(id)action data:(id)data withRequestContext:(id)context version:(int64_t)version withCompletionHandler:(id)handler;
- (void)processActionFromResponse:(id)response withRequestContext:(id)context withCompletionHandler:(id)handler;
@end

@implementation ICMachineDataActionHandler

- (void)processActionFromResponse:(id)response withRequestContext:(id)context withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  contextCopy = context;
  handlerCopy = handler;
  v11 = [responseCopy ic_valueForHTTPHeaderField:@"X-Apple-MD-Action"];
  if (v11)
  {
    v12 = v11;
    v13 = ICStoreHTTPHeaderKeyXAppleMDData;
    v14 = 1;
  }

  else
  {
    v15 = [responseCopy ic_valueForHTTPHeaderField:@"X-Apple-AMD-Action"];
    if (!v15)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
      goto LABEL_12;
    }

    v12 = v15;
    v13 = &ICStoreHTTPHeaderKeyXAppleAMDData;
    v14 = 2;
  }

  v16 = [responseCopy ic_valueForHTTPHeaderField:*v13];
  if (!v16)
  {
    goto LABEL_10;
  }

  data = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:0];
  if (!data)
  {
    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = responseCopy;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "failed to decode anisette response data from response %{public}@", buf, 0xCu);
    }

LABEL_10:
    data = [MEMORY[0x1E695DEF0] data];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__ICMachineDataActionHandler_processActionFromResponse_withRequestContext_withCompletionHandler___block_invoke;
  v20[3] = &unk_1E7BF9C58;
  v21 = v12;
  v22 = handlerCopy;
  v19 = v12;
  [(ICMachineDataActionHandler *)self processAction:v19 data:data withRequestContext:contextCopy version:v14 withCompletionHandler:v20];

LABEL_12:
}

uint64_t __97__ICMachineDataActionHandler_processActionFromResponse_withRequestContext_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2, a3);
  }

  return result;
}

- (void)processAction:(id)action data:(id)data withRequestContext:(id)context version:(int64_t)version withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  dataCopy = data;
  contextCopy = context;
  handlerCopy = handler;
  v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = actionCopy;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "processing machine data action %{public}@", buf, 0xCu);
  }

  if ([actionCopy isEqualToString:@"SP"])
  {
    v17 = off_1E7BF2658;
  }

  else if ([actionCopy isEqualToString:@"SM"])
  {
    v17 = off_1E7BF2660;
  }

  else
  {
    if (([actionCopy isEqualToString:@"RP"] & 1) == 0)
    {
      if (actionCopy)
      {
        v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = actionCopy;
          _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "unknown machine data action %{public}@ - ignoring", buf, 0xCu);
        }
      }

      goto LABEL_15;
    }

    v17 = off_1E7BF2650;
  }

  v18 = objc_alloc_init(*v17);
  if (!v18)
  {
LABEL_15:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_16;
  }

  v19 = v18;
  [v18 setData:dataCopy];
  [v19 setRequestContext:contextCopy];
  [v19 setProtocolVersion:version];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __98__ICMachineDataActionHandler_processAction_data_withRequestContext_version_withCompletionHandler___block_invoke;
  v21[3] = &unk_1E7BF9C10;
  v22 = actionCopy;
  selfCopy = self;
  v24 = handlerCopy;
  [v19 setCompletionHandler:v21];
  [(NSOperationQueue *)self->_operationQueue addOperation:v19];

LABEL_16:
}

void __98__ICMachineDataActionHandler_processAction_data_withRequestContext_version_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "machine data action %{public}@ completed. err=%{public}@", buf, 0x16u);
  }

  v9 = *(*(a1 + 40) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__ICMachineDataActionHandler_processAction_data_withRequestContext_version_withCompletionHandler___block_invoke_16;
  block[3] = &unk_1E7BF9E28;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

- (ICMachineDataActionHandler)init
{
  v8.receiver = self;
  v8.super_class = ICMachineDataActionHandler;
  v2 = [(ICMachineDataActionHandler *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMachineDataSession.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v5;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.iTunesCloud.ICMachineDataSession.operation"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
  }

  return v2;
}

+ (ICMachineDataActionHandler)sharedHandler
{
  if (sharedHandler_sOnceToken != -1)
  {
    dispatch_once(&sharedHandler_sOnceToken, &__block_literal_global_38294);
  }

  v3 = sharedHandler_sSharedHandler;

  return v3;
}

uint64_t __43__ICMachineDataActionHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(ICMachineDataActionHandler);
  v1 = sharedHandler_sSharedHandler;
  sharedHandler_sSharedHandler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end