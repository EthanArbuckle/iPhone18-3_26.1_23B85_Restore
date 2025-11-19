@interface IMBaseStoreService
+ (BOOL)isValidResponseJson:(id)a3 response:(id)a4 error:(id)a5;
+ (id)signatureQueryParams;
- (IMBaseStoreService)initWithConcurrentOperationCount:(int64_t)a3 requestEncodingType:(unint64_t)a4;
- (IMBaseStoreServiceDelegate)delegate;
- (void)cancelAllRequests;
- (void)performDataRequest:(id)a3 account:(id)a4 telemetryIdentifier:(id)a5 callback:(id)a6;
- (void)performUrlRequest:(id)a3 callback:(id)a4;
- (void)setURLProtocolDelegate:(id)a3;
- (void)signRequest:(id)a3;
@end

@implementation IMBaseStoreService

- (IMBaseStoreServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMBaseStoreService)initWithConcurrentOperationCount:(int64_t)a3 requestEncodingType:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = IMBaseStoreService;
  v6 = [(IMBaseStoreService *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    if (a3 != -1)
    {
      [(NSURLSessionConfiguration *)v6->_configuration setHTTPMaximumConnectionsPerHost:a3];
    }

    v9 = [(AMSURLSession *)[IMURLSession alloc] initWithConfiguration:v6->_configuration];
    amsUrlSession = v6->_amsUrlSession;
    v6->_amsUrlSession = v9;

    -[IMURLSession setFollowsRedirects:](v6->_amsUrlSession, "setFollowsRedirects:", [objc_opt_class() shouldFollowRedirects]);
    v6->_encodingType = a4;
    if (a4 == 1)
    {
      v6->_personalizeRequests = 1;
    }
  }

  return v6;
}

- (void)setURLProtocolDelegate:(id)a3
{
  v4 = a3;
  v5 = [(IMBaseStoreService *)self amsUrlSession];
  [v5 setDelegate:v4];
}

+ (BOOL)isValidResponseJson:(id)a3 response:(id)a4 error:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v9;
      v11 = "performUrlRequest completed with error %{public}@";
LABEL_9:
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_ERROR, v11, &v16, 0xCu);
    }
  }

  else if (v8 && ([v8 statusCode] < 200 || objc_msgSend(v8, "statusCode") >= 300))
  {
    v10 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      v17 = [v8 statusCode];
      v11 = "performUrlRequest completed with bad status code: %ld";
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 1;
      goto LABEL_11;
    }

    v10 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v15 = v17;
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_ERROR, "Recived non-dictionary response. Discarding. (%{public}@)", &v16, 0xCu);
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)performUrlRequest:(id)a3 callback:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__IMBaseStoreService_performUrlRequest_callback___block_invoke;
  v8[3] = &unk_1E856B0D0;
  v9 = v6;
  v7 = v6;
  [(IMBaseStoreService *)self performDataRequest:a3 callback:v8];
}

void __49__IMBaseStoreService_performUrlRequest_callback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*(a1 + 32))
  {
    if ([IMBaseStoreService isValidResponseJson:v9 response:v10 error:v11])
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v12);
  }
}

- (void)performDataRequest:(id)a3 account:(id)a4 telemetryIdentifier:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  wantsJSSignature = self->_wantsJSSignature;
  encodingType = self->_encodingType;
  if (encodingType == 1)
  {
    v19 = [IMMediaRequestEncoder alloc];
    v17 = [(IMBaseStoreService *)self bag];
    v18 = [(IMMediaRequestEncoder *)v19 initWithBag:v17 session:self->_amsUrlSession];
    goto LABEL_5;
  }

  if (!encodingType)
  {
    v16 = [IMURLRequestEncoder alloc];
    v17 = [(IMBaseStoreService *)self bag];
    v18 = [(IMURLRequestEncoder *)v16 initWithBag:v17];
LABEL_5:
    v20 = v18;

    goto LABEL_7;
  }

  v20 = 0;
LABEL_7:
  [v20 setPersonalizeRequests:{-[IMBaseStoreService personalizeRequests](self, "personalizeRequests")}];
  v21 = [(IMBaseStoreService *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(IMBaseStoreService *)self delegate];
    [v23 baseStoreService:self didBeginEncoding:v12];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __78__IMBaseStoreService_performDataRequest_account_telemetryIdentifier_callback___block_invoke;
  v26[3] = &unk_1E856B198;
  v26[4] = self;
  v24 = v12;
  v27 = v24;
  v30 = wantsJSSignature;
  objc_copyWeak(&v29, &location);
  v25 = v13;
  v28 = v25;
  [v20 prepareRequest:v10 account:v11 completion:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __78__IMBaseStoreService_performDataRequest_account_telemetryIdentifier_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 baseStoreService:*(a1 + 32) didEndEncoding:*(a1 + 40) withError:v6];
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) signRequest:v5];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = [WeakRetained amsUrlSession];
  objc_initWeak(&location, v11);

  v12 = [*(a1 + 32) delegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v13 = [*(a1 + 32) delegate];
    [v13 baseStoreService:*(a1 + 32) didBeginNetworking:*(a1 + 40)];
  }

  v14 = objc_loadWeakRetained((a1 + 56));
  v15 = [v14 amsUrlSession];
  v16 = [v15 dataTaskPromiseWithRequest:v5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__IMBaseStoreService_performDataRequest_account_telemetryIdentifier_callback___block_invoke_2;
  v18[3] = &unk_1E856B170;
  v17 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v17;
  objc_copyWeak(&v21, &location);
  v20 = *(a1 + 48);
  [v16 resultWithTimeout:v18 completion:60.0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __78__IMBaseStoreService_performDataRequest_account_telemetryIdentifier_callback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 baseStoreService:*(a1 + 32) didEndNetworking:*(a1 + 40) withError:v6];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained && ![WeakRetained state])
  {
    if (!*(a1 + 48))
    {
      goto LABEL_8;
    }

    v13 = [v5 response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v5 response];
      if (v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
      if (v6)
      {
        goto LABEL_22;
      }
    }

    v16 = [v5 data];
    if (v16)
    {
      isKindOfClass = [v5 data];
      if ([isKindOfClass length])
      {

LABEL_21:
        v6 = 0;
        goto LABEL_22;
      }
    }

    v17 = [v5 object];
    v18 = (v17 | v15) == 0;

    if (v16)
    {

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    else if (!v18)
    {
      goto LABEL_21;
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.podcasts.IMBaseStoreService" code:1 userInfo:0];
LABEL_22:
    v19 = *(a1 + 48);
    v20 = [v5 data];
    v21 = [v5 object];
    (*(v19 + 16))(v19, v20, v21, v15, v6);

    goto LABEL_8;
  }

  v12 = _IMStoreLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v22 = 0;
    _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_ERROR, "Discarding response for invalidated session", v22, 2u);
  }

LABEL_8:
}

- (void)cancelAllRequests
{
  v5 = self->_amsUrlSession;
  v3 = [(AMSURLSession *)[IMURLSession alloc] initWithConfiguration:self->_configuration];
  amsUrlSession = self->_amsUrlSession;
  self->_amsUrlSession = v3;

  [(IMURLSession *)v5 invalidateAndCancel];
}

- (void)signRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  [v5 appendFormat:@"%.0f", v8];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-JS-TIMESTAMP=%.0f", v8];
  [v4 addObject:v9];

  v10 = [v3 valueForHTTPHeaderField:@"X-Apple-Store-Front"];
  if (v10)
  {
    [v5 appendString:v10];
  }

  v11 = MEMORY[0x1E696AF20];
  v12 = [v3 URL];
  v13 = [v11 componentsWithURL:v12 resolvingAgainstBaseURL:0];

  v29 = v13;
  v14 = [v13 query];
  v15 = [NSURLUtil queryStringToQueryDictionary:v14];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [objc_opt_class() signatureQueryParams];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v15 valueForKey:*(*(&v30 + 1) + 8 * v20)];
        if (v21)
        {
          [v5 appendString:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v22 = [v5 UTF8String];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
    CC_SHA1(v23, [v5 length], objc_msgSend(v24, "mutableBytes"));
    [v24 setLength:16];
    fd3fa4R8(3, [v24 mutableBytes]);
    v25 = [v24 base64EncodedStringWithOptions:0];
    if (v25)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"X-JS-SP-TOKEN=%@", v25];
      [v4 addObject:v26];
    }
  }

  if ([v4 count])
  {
    v27 = [v4 componentsJoinedByString:@" "];;
    [v3 setValue:v27 forHTTPHeaderField:@"Cookie"];
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (id)signatureQueryParams
{
  if (signatureQueryParams_predicate != -1)
  {
    +[IMBaseStoreService signatureQueryParams];
  }

  v3 = signatureQueryParams_signatureQueryParams;

  return v3;
}

void __42__IMBaseStoreService_signatureQueryParams__block_invoke()
{
  v0 = signatureQueryParams_signatureQueryParams;
  signatureQueryParams_signatureQueryParams = &unk_1F54BE108;
}

@end