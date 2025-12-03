@interface TVPSecureKeyRequest
- (BOOL)isRenewal;
- (BOOL)loadKeyRequestDataWithError:(id *)error;
- (BOOL)offlineKeyUsageAllowed;
- (TVPSecureKeyRequest)initWithAssetResourceLoadingRequest:(id)request;
- (id)offlineKeyDataForResponseData:(id)data error:(id *)error;
- (void)finishLoadingWithResponseData:(id)data renewalDate:(id)date keyType:(int64_t)type;
- (void)loadKeyRequestDataAsynchronouslyWithCompletion:(id)completion;
@end

@implementation TVPSecureKeyRequest

- (TVPSecureKeyRequest)initWithAssetResourceLoadingRequest:(id)request
{
  v9.receiver = self;
  v9.super_class = TVPSecureKeyRequest;
  v3 = [(TVPResourceLoadingRequest *)&v9 initWithAssetResourceLoadingRequest:request];
  v4 = v3;
  if (v3)
  {
    v3->_requestID = (atomic_fetch_add_explicit(sSecureRequestID, 1u, memory_order_relaxed) + 1);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    reportingID = v4->_reportingID;
    v4->_reportingID = uUIDString;
  }

  return v4;
}

- (BOOL)loadKeyRequestDataWithError:(id *)error
{
  date = [MEMORY[0x277CBEAA8] date];
  [(TVPSecureKeyRequest *)self setStartDate:date];

  keyRequestData = [(TVPSecureKeyRequest *)self keyRequestData];

  if (keyRequestData)
  {
    return 1;
  }

  requestOptions = [(TVPSecureKeyRequest *)self requestOptions];
  v9 = [requestOptions mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if ([(TVPSecureKeyRequest *)self retrievesOfflineKeys])
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE5CC8]];
  }

  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  certificateData = [(TVPSecureKeyRequest *)self certificateData];
  contentIdentifierData = [(TVPSecureKeyRequest *)self contentIdentifierData];
  v13 = [loadingRequest streamingContentKeyRequestDataForApp:certificateData contentIdentifier:contentIdentifierData options:v9 error:error];

  v7 = v13 != 0;
  if (v13)
  {
    [(TVPSecureKeyRequest *)self setKeyRequestData:v13];
  }

  return v7;
}

- (void)loadKeyRequestDataAsynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  [(TVPSecureKeyRequest *)self setStartDate:date];

  keyRequestData = [(TVPSecureKeyRequest *)self keyRequestData];

  if (keyRequestData)
  {
    v7 = sTVPPlaybackPerfToken_0++;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke_3;
    block[3] = &unk_279D7BF08;
    v15 = v7;
    v14 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    objc_initWeak(&location, self);
    requestOptions = [(TVPSecureKeyRequest *)self requestOptions];
    v9 = [requestOptions mutableCopy];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if ([(TVPSecureKeyRequest *)self retrievesOfflineKeys])
    {
      [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE5CC8]];
    }

    loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
    certificateData = [(TVPSecureKeyRequest *)self certificateData];
    contentIdentifierData = [(TVPSecureKeyRequest *)self contentIdentifierData];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke;
    v16[3] = &unk_279D7D2D0;
    objc_copyWeak(&v18, &location);
    v17 = completionCopy;
    [loadingRequest generateStreamingContentKeyRequestDataAsynchronouslyForApp:certificateData contentIdentifier:contentIdentifierData options:v9 completionHandler:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sTVPPlaybackPerfToken_0++;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke_2;
  block[3] = &unk_279D7D2A8;
  v15[1] = v7;
  v12 = v5;
  v8 = v5;
  objc_copyWeak(v15, (a1 + 40));
  v9 = *(a1 + 32);
  v13 = v6;
  v14 = v9;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v15);
}

uint64_t __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setKeyRequestData:*(a1 + 32)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __70__TVPSecureKeyRequest_loadKeyRequestDataAsynchronouslyWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)offlineKeyDataForResponseData:(id)data error:(id *)error
{
  if (data)
  {
    dataCopy = data;
    loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
    v8 = [loadingRequest persistentContentKeyFromKeyVendorResponse:dataCopy options:0 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)finishLoadingWithResponseData:(id)data renewalDate:(id)date keyType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = TVPSecureKeyRequest;
  [(TVPResourceLoadingRequest *)&v5 finishLoadingWithResponseData:data renewalDate:date keyType:type];
}

- (BOOL)isRenewal
{
  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)offlineKeyUsageAllowed
{
  loadingRequest = [(TVPResourceLoadingRequest *)self loadingRequest];
  contentInformationRequest = [loadingRequest contentInformationRequest];
  allowedContentTypes = [contentInformationRequest allowedContentTypes];
  v5 = [allowedContentTypes containsObject:*MEMORY[0x277CE6188]];

  return v5;
}

@end