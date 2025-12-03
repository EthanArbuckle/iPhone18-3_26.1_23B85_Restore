@interface ICAuthorizeMachineRequest
- (ICAuthorizeMachineRequest)initWithRequestContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation ICAuthorizeMachineRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [ICAsyncBlockOperation alloc];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke;
  v12 = &unk_1E7BF8080;
  selfCopy = self;
  v14 = handlerCopy;
  v6 = handlerCopy;
  v7 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:&v9];
  v8 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:{self->_qualityOfService, v9, v10, v11, v12, selfCopy}];
  [v8 addOperation:v7];
}

void __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_2;
  v13[3] = &unk_1E7BF68B0;
  v4 = *(a1 + 40);
  v14 = v3;
  v15 = v4;
  v5 = v3;
  v6 = MEMORY[0x1B8C781E0](v13);
  v7 = +[ICURLBagProvider sharedBagProvider];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_3;
  v11[3] = &unk_1E7BF68D8;
  v11[4] = v8;
  v12 = v6;
  v10 = v6;
  [v7 getBagForRequestContext:v9 withCompletionHandler:v11];
}

void __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  [*(a1 + 32) finishWithError:v7];
}

void __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 urlForBagKey:@"authorizeMachine"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v6];
      v8 = [(ICStoreURLRequest *)[ICAuthorizeMachineURLRequest alloc] initWithURLRequest:v7 requestContext:*(*(a1 + 32) + 32)];
      [(ICAuthorizeMachineURLRequest *)v8 setReason:*(*(a1 + 32) + 24)];
      [(ICAuthorizeMachineURLRequest *)v8 setTokenData:*(*(a1 + 32) + 40)];
      [(ICAuthorizeMachineURLRequest *)v8 setKeybagPath:*(*(a1 + 32) + 8)];
      v9 = +[ICURLSessionManager defaultSession];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_4;
      v17[3] = &unk_1E7BF9D88;
      v10 = *(a1 + 40);
      v17[4] = *(a1 + 32);
      v18 = v10;
      [v9 enqueueDataRequest:v8 withCompletionHandler:v17];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Missing authorize machine URL bag key", buf, 0xCu);
      }

      v16 = *(a1 + 40);
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v16 + 16))(v16, 0, v7);
    }

    goto LABEL_12;
  }

  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to load URL bag with error: %{public}@", buf, 0x16u);
  }

  v13 = *(a1 + 40);
  if (!v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:0];
    (*(v13 + 16))(v13, 0, v6);
LABEL_12:

    goto LABEL_13;
  }

  (*(v13 + 16))(v13, 0, v5);
LABEL_13:
}

void __56__ICAuthorizeMachineRequest_performWithResponseHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 parsedBodyDictionary];
    if (!v8)
    {
      v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138543362;
        v39 = v28;
        _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Response has invalid format", buf, 0xCu);
      }

      v29 = *(a1 + 40);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(v29 + 16))(v29, 0, v9);
      goto LABEL_29;
    }

    v9 = [[ICAuthorizeMachineResponse alloc] initWithResponseDictionary:v8];
    v10 = [(ICAuthorizeMachineResponse *)v9 keybagData];
    if (!v10)
    {
LABEL_26:
      v32 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 32);
        *buf = 138543362;
        v39 = v33;
        _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing.", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
LABEL_29:

      goto LABEL_30;
    }

    v37 = 0;
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v11 fileExistsAtPath:*(*(a1 + 32) + 8)] & 1) == 0)
    {
      [v11 createDirectoryAtPath:*(*(a1 + 32) + 8) withIntermediateDirectories:1 attributes:0 error:0];
    }

    v12 = *(*(a1 + 32) + 8);
    v36 = 0;
    ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(v12, &v37, &v36);
    v14 = v36;
    v15 = v14;
    if (!ContextIdentifierForFolderPath)
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 138543618;
        v39 = v30;
        v40 = 2114;
        v41 = v15;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting context ID failed with error: %{public}@", buf, 0x16u);
      }

      v17 = v15;
      goto LABEL_25;
    }

    v34 = v11;
    v35 = v14;
    v16 = ICFairPlayImportKeybagDataWithContextID(v37, v10, &v35);
    v17 = v35;

    v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v11 = v34;
      if (v19)
      {
        v20 = *(a1 + 32);
        *buf = 138543362;
        v39 = v20;
        v21 = "[%{public}@] Imported keybag data.";
        v22 = v18;
        v23 = 12;
LABEL_24:
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }

    else
    {
      v11 = v34;
      if (v19)
      {
        v31 = *(a1 + 32);
        *buf = 138543618;
        v39 = v31;
        v40 = 2114;
        v41 = v17;
        v21 = "[%{public}@] Importing keybag data failed with error: %{public}@";
        v22 = v18;
        v23 = 22;
        goto LABEL_24;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    *buf = 138543618;
    v39 = v25;
    v40 = 2114;
    v41 = v7;
    _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Response returned error: %{public}@", buf, 0x16u);
  }

  v26 = *(a1 + 40);
  if (!v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    (*(v26 + 16))(v26, 0, v8);
LABEL_30:

    goto LABEL_31;
  }

  (*(v26 + 16))(v26, 0, v7);
LABEL_31:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_alloc(objc_opt_class()) initWithRequestContext:self->_requestContext];
  if (v5)
  {
    v6 = [(NSString *)self->_reason copyWithZone:zone];
    v7 = v5[3];
    v5[3] = v6;

    v8 = [(NSData *)self->_tokenData copyWithZone:zone];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [(NSString *)self->_keybagPath copyWithZone:zone];
    v11 = v5[1];
    v5[1] = v10;

    v5[2] = self->_qualityOfService;
  }

  return v5;
}

- (ICAuthorizeMachineRequest)initWithRequestContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = ICAuthorizeMachineRequest;
  v5 = [(ICAuthorizeMachineRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_qualityOfService = 17;
    v7 = [contextCopy copy];
    requestContext = v6->_requestContext;
    v6->_requestContext = v7;
  }

  return v6;
}

@end