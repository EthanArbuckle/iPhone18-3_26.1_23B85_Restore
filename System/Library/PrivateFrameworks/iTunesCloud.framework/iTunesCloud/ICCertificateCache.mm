@interface ICCertificateCache
+ (ICCertificateCache)shared;
- (ICCertificateCache)init;
- (void)enqueueCertificateRequest:(id)request isSAP:(BOOL)p withCompletionHandler:(id)handler;
- (void)getDataForCertificateRequest:(id)request isSAP:(BOOL)p withCompletionHandler:(id)handler;
@end

@implementation ICCertificateCache

- (void)enqueueCertificateRequest:(id)request isSAP:(BOOL)p withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10 = +[ICURLSessionManager highPrioritySession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__ICCertificateCache_enqueueCertificateRequest_isSAP_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7BF9CD8;
  pCopy = p;
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  [v10 enqueueDataRequest:v12 withCompletionHandler:v13];
}

void __76__ICCertificateCache_enqueueCertificateRequest_isSAP_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) urlRequest];
  v8 = [v7 URL];
  v9 = [v8 absoluteString];

  if (*(a1 + 56) == 1)
  {
    v10 = [v5 parsedBodyDictionary];
    v11 = [v10 objectForKey:@"sign-sap-setup-cert"];
    if (_NSIsNSData() && [v11 length])
    {
      v12 = 0;
    }

    else
    {

      if (v6)
      {
        v17 = v6;
      }

      else
      {
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      }

      v12 = v17;
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        v28 = 138544130;
        v29 = v19;
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v12;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to fetch certificate data for URL: %{public}@, error: %{public}@, response: %{public}@", &v28, 0x2Au);
      }

      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v13 = [v5 bodyData];
  v11 = v13;
  if (v6)
  {

    goto LABEL_7;
  }

  if (![v13 length])
  {

    if (![0 length])
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      goto LABEL_8;
    }

LABEL_7:
    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7300 underlyingError:v6 debugDescription:@"Failed to load certificate data"];
LABEL_8:
    v12 = v14;
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v28 = 138543874;
      v29 = v16;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to fetch certificate data for URL: %{public}@, error: %{public}@", &v28, 0x20u);
    }

    v11 = 0;
    goto LABEL_24;
  }

  v12 = 0;
  if (v11)
  {
LABEL_21:
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = [v11 length];
      v23 = [v5 expirationDate];
      v28 = 138544130;
      v29 = v21;
      v30 = 2114;
      v31 = v9;
      v32 = 2048;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Updated cached certificate data for URL: %{public}@, length: %ld, expiration: %{public}@", &v28, 0x2Au);
    }

    v24 = *(*(a1 + 40) + 8);
    v25 = [ICCertificateCacheEntry alloc];
    v15 = [v5 expirationDate];
    v26 = [(ICCertificateCacheEntry *)v25 initWithData:v11 expirationDate:v15];
    [v24 setObject:v26 forKey:v9];

LABEL_24:
  }

LABEL_25:
  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v11, v12);
  }
}

- (void)getDataForCertificateRequest:(id)request isSAP:(BOOL)p withCompletionHandler:(id)handler
{
  pCopy = p;
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  urlRequest = [requestCopy urlRequest];
  v11 = [urlRequest URL];
  absoluteString = [v11 absoluteString];

  v13 = [(NSCache *)self->_cache objectForKey:absoluteString];
  if (v13)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      expirationDate = [v13 expirationDate];
      *buf = 138543874;
      selfCopy = self;
      v23 = 2114;
      v24 = absoluteString;
      v25 = 2114;
      v26 = expirationDate;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_INFO, "[%{public}@]: Returning cached certificate data for URL: %{public}@, expiration: %{public}@", buf, 0x20u);
    }

    data = [v13 data];
    handlerCopy[2](handlerCopy, data, 0);

    if ([v13 isExpired])
    {
      v17 = dispatch_time(0, 10000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__ICCertificateCache_getDataForCertificateRequest_isSAP_withCompletionHandler___block_invoke;
      block[3] = &unk_1E7BF9CB0;
      block[4] = self;
      v19 = requestCopy;
      v20 = pCopy;
      dispatch_after(v17, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [(ICCertificateCache *)self enqueueCertificateRequest:requestCopy isSAP:pCopy withCompletionHandler:handlerCopy];
  }
}

- (ICCertificateCache)init
{
  v6.receiver = self;
  v6.super_class = ICCertificateCache;
  v2 = [(ICCertificateCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

+ (ICCertificateCache)shared
{
  if (shared_onceToken_38583 != -1)
  {
    dispatch_once(&shared_onceToken_38583, &__block_literal_global_38584);
  }

  v3 = shared__sharedInstance;

  return v3;
}

uint64_t __28__ICCertificateCache_shared__block_invoke()
{
  v0 = objc_alloc_init(ICCertificateCache);
  v1 = shared__sharedInstance;
  shared__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end