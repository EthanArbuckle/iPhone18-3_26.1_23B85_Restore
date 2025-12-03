@interface ICRadioFetchMetadataRequest
- (ICRadioFetchMetadataRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation ICRadioFetchMetadataRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(ICRadioFetchMetadataRequest *)self copy];
  storeRequestContext = [v5 storeRequestContext];
  if (storeRequestContext)
  {
    v7 = [ICAsyncBlockOperation alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke;
    v11[3] = &unk_1E7BF8BE8;
    v14 = handlerCopy;
    v12 = storeRequestContext;
    v13 = v5;
    v8 = [(ICAsyncBlockOperation *)v7 initWithStartHandler:v11];
    v9 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:self->_qualityOfService];
    [v9 addOperation:v8];
  }

  else if (handlerCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_2;
  v14[3] = &unk_1E7BF4240;
  v4 = *(a1 + 48);
  v15 = v3;
  v16 = v4;
  v5 = v3;
  v6 = MEMORY[0x1B8C781E0](v14);
  v7 = +[ICURLBagProvider sharedBagProvider];
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_3;
  v10[3] = &unk_1E7BF9DB0;
  v11 = v8;
  v12 = *(a1 + 40);
  v13 = v6;
  v9 = v6;
  [v7 getBagForRequestContext:v11 withCompletionHandler:v10];
}

void __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  [*(a1 + 32) finishWithError:v5];
}

void __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 radioConfiguration];
  v7 = [v6 baseURL];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 URLByAppendingPathComponent:@"fetchMetadata" isDirectory:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v9];
      [v10 setHTTPMethod:@"POST"];
      v11 = [[ICRadioURLRequest alloc] initWithURLRequest:v10 requestContext:*(a1 + 32)];
      v12 = [v6 maxSupportedProtocolVersion];
      if (v12 <= 6)
      {
        v13 = 6;
      }

      else
      {
        v13 = v12;
      }

      [(ICRadioURLRequest *)v11 setProtocolVersion:v13];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_4;
      v20[3] = &unk_1E7BF4268;
      v21 = *(a1 + 40);
      [(ICRadioURLRequest *)v11 setRadioContentDictionaryCreationBlock:v20];
      v14 = +[ICURLSessionManager highPrioritySession];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_5;
      v18[3] = &unk_1E7BF5FF8;
      v19 = *(a1 + 48);
      [v14 enqueueDataRequest:v11 withCompletionHandler:v18];
    }

    else
    {
      v16 = *(a1 + 48);
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
      (*(v16 + 16))(v16, 0, v10);
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (v5)
    {
      (*(v15 + 16))(*(a1 + 48), 0, v5);
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v15 + 16))(v15, 0, v17);
    }
  }
}

void __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [*(a1 + 32) timedMetadataData];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"timed-metadata"];
  }

  v7 = [*(a1 + 32) storeAdamIDs];
  if (v7)
  {
    [v5 setObject:v7 forKey:@"ids"];
  }

  if (v8)
  {
    v8[2](v8, v5, 0);
  }
}

void __58__ICRadioFetchMetadataRequest_performWithResponseHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = [(ICRadioResponse *)[ICRadioFetchMetadataResponse alloc] initWithURLResponse:v11];
    v7 = *(a1 + 32);
    v8 = (v7 + 16);
    if (v6)
    {
      v9 = v6;
      v10 = 0;
LABEL_7:
      (*(v7 + 16))(v7, v9, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = (v7 + 16);
  }

  if (v5)
  {
    v9 = 0;
    v10 = v5;
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
  (*v8)(v7, 0, v9);
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_storeAdamIDs);
    objc_storeStrong(v5 + 2, self->_storeRequestContext);
    objc_storeStrong(v5 + 3, self->_timedMetadataData);
    v5[4] = self->_qualityOfService;
  }

  return v5;
}

- (ICRadioFetchMetadataRequest)init
{
  v3.receiver = self;
  v3.super_class = ICRadioFetchMetadataRequest;
  result = [(ICRadioFetchMetadataRequest *)&v3 init];
  if (result)
  {
    result->_qualityOfService = 25;
  }

  return result;
}

@end