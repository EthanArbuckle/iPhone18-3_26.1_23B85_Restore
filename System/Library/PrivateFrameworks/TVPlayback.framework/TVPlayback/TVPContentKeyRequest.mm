@interface TVPContentKeyRequest
+ (id)secureInvalidationRequestForIdentifier:(id)identifier offlineKeyData:(id)data additionalRequestParams:(id)params contentID:(id)d;
+ (void)initialize;
- (BOOL)isCancelled;
- (TVPContentKeyRequest)initWithAVContentKeyRequest:(id)request;
- (TVPContentKeySession)contentKeySession;
- (id)description;
- (id)offlineKeyDataFromServerKeyData:(id)data error:(id *)error;
- (void)finish;
- (void)finishByRequestingOfflineKeysIfPossible;
- (void)makeKeyRequestDataForCertificateData:(id)data assetIDData:(id)dData completion:(id)completion;
- (void)offlineKeyDataFromServerKeyData:(id)data completion:(id)completion;
@end

@implementation TVPContentKeyRequest

+ (void)initialize
{
  if (initialize_onceToken_8 != -1)
  {
    +[TVPContentKeyRequest initialize];
  }
}

uint64_t __34__TVPContentKeyRequest_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");
  v1 = sLogObject_5;
  sLogObject_5 = v0;

  sOfflineKeyDataSerialQueue = dispatch_queue_create("TVPContentKeyRequest offline key data queue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)secureInvalidationRequestForIdentifier:(id)identifier offlineKeyData:(id)data additionalRequestParams:(id)params contentID:(id)d
{
  dCopy = d;
  paramsCopy = params;
  dataCopy = data;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithAVContentKeyRequest:0];
  [v14 setKeyIdentifier:identifierCopy];

  [v14 setOfflineKeyData:dataCopy];
  [v14 setAdditionalRequestParams:paramsCopy];

  [v14 setType:3];
  [v14 setContentID:dCopy];

  return v14;
}

- (TVPContentKeyRequest)initWithAVContentKeyRequest:(id)request
{
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = TVPContentKeyRequest;
  v6 = [(TVPContentKeyRequest *)&v19 init];
  if (v6)
  {
    identifier = [requestCopy identifier];
    if (identifier)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = identifier;
LABEL_11:
        keyIdentifier = v6->_keyIdentifier;
        v6->_keyIdentifier = v8;
        v11 = v8;

        objc_storeStrong(&v6->_avContentKeyRequest, request);
        v12 = initWithAVContentKeyRequest__sRequestID++;
        v6->_requestID = v12;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        eventReportingID = v6->_eventReportingID;
        v6->_eventReportingID = uUIDString;

        v6->_type = 0;
        v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        userInfo = v6->_userInfo;
        v6->_userInfo = v16;

        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = identifier;
        if ([v9 length])
        {
          v8 = [MEMORY[0x277CBEBC0] URLWithString:v9];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (BOOL)isCancelled
{
  avContentKeyRequest = [(TVPContentKeyRequest *)self avContentKeyRequest];
  status = [avContentKeyRequest status];

  return (status & 0xFFFFFFFFFFFFFFFELL) == 4;
}

- (id)description
{
  type = [(TVPContentKeyRequest *)self type];
  v4 = &stru_287E49338;
  if (type == 3)
  {
    v4 = @" [secure invalidation request]";
  }

  if (type == 2)
  {
    v5 = @" [offline request]";
  }

  else
  {
    v5 = v4;
  }

  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  requestID = [(TVPContentKeyRequest *)self requestID];
  keyIdentifier = [(TVPContentKeyRequest *)self keyIdentifier];
  v9 = [v6 initWithFormat:@"[%lu: %@%@]", requestID, keyIdentifier, v5];

  return v9;
}

- (void)makeKeyRequestDataForCertificateData:(id)data assetIDData:(id)dData completion:(id)completion
{
  v40[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dDataCopy = dData;
  completionCopy = completion;
  offlineKeyData = [(TVPContentKeyRequest *)self offlineKeyData];
  v12 = [offlineKeyData length];

  if (!v12)
  {
    keyFormatVersions = [(TVPContentKeyRequest *)self keyFormatVersions];
    v19 = [keyFormatVersions count];

    if (v19)
    {
      v20 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        keyFormatVersions2 = [(TVPContentKeyRequest *)self keyFormatVersions];
        *buf = 138412546;
        *&buf[4] = keyFormatVersions2;
        v37 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Using key format versions %@ for key request: %@", buf, 0x16u);
      }

      v34 = *MEMORY[0x277CE5CF8];
      keyFormatVersions3 = [(TVPContentKeyRequest *)self keyFormatVersions];
      v35 = keyFormatVersions3;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      goto LABEL_10;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v13 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Creating sync SPC for offline key rewewal: %@", buf, 0xCu);
  }

  *buf = 3737844653;
  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:buf length:8];
  if (v14)
  {
    keyFormatVersions3 = v14;
    v39[0] = *MEMORY[0x277CE5D08];
    offlineKeyData2 = [(TVPContentKeyRequest *)self offlineKeyData];
    v39[1] = *MEMORY[0x277CE5D18];
    v40[0] = offlineKeyData2;
    v40[1] = keyFormatVersions3;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

LABEL_10:
LABEL_16:
    avContentKeyRequest = [(TVPContentKeyRequest *)self avContentKeyRequest];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke;
    v32[3] = &unk_279D7D320;
    v25 = &v33;
    v33 = completionCopy;
    v26 = completionCopy;
    [avContentKeyRequest makeStreamingContentKeyRequestDataForApp:dataCopy contentIdentifier:dDataCopy options:v17 completionHandler:v32];
    goto LABEL_17;
  }

  v23 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    [TVPContentKeyRequest makeKeyRequestDataForCertificateData:v23 assetIDData:? completion:?];
  }

  v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345012 userInfo:0];
  if (!v24)
  {
    goto LABEL_15;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke_3;
  block[3] = &unk_279D7D348;
  v25 = &v31;
  v30 = v24;
  v31 = completionCopy;
  v26 = v24;
  v17 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
  avContentKeyRequest = v30;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
}

void __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke_2;
  block[3] = &unk_279D7D2F8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t __84__TVPContentKeyRequest_makeKeyRequestDataForCertificateData_assetIDData_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (id)offlineKeyDataFromServerKeyData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([(TVPContentKeyRequest *)self type]== 2 && ([(TVPContentKeyRequest *)self avContentKeyRequest], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    avContentKeyRequest = [(TVPContentKeyRequest *)self avContentKeyRequest];
    v10 = [avContentKeyRequest persistableContentKeyFromKeyVendorResponse:dataCopy options:0 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)offlineKeyDataFromServerKeyData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(TVPContentKeyRequest *)self type]== 2)
  {
    avContentKeyRequest = [(TVPContentKeyRequest *)self avContentKeyRequest];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = sOfflineKeyDataSerialQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__TVPContentKeyRequest_offlineKeyDataFromServerKeyData_completion___block_invoke;
      block[3] = &unk_279D7D370;
      v11 = avContentKeyRequest;
      v12 = dataCopy;
      v13 = completionCopy;
      dispatch_async(v9, block);
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __67__TVPContentKeyRequest_offlineKeyDataFromServerKeyData_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 persistableContentKeyFromKeyVendorResponse:v3 options:0 error:&v13];
  v5 = v13;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__TVPContentKeyRequest_offlineKeyDataFromServerKeyData_completion___block_invoke_2;
  v9[3] = &unk_279D7D2F8;
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v10 = v4;
  v7 = v5;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __67__TVPContentKeyRequest_offlineKeyDataFromServerKeyData_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)finish
{
  contentKeySession = [(TVPContentKeyRequest *)self contentKeySession];
  [contentKeySession finishKeyRequest:self];
}

- (void)finishByRequestingOfflineKeysIfPossible
{
  [(TVPContentKeyRequest *)self setWantsOfflineKeysIfPossible:1];

  [(TVPContentKeyRequest *)self finish];
}

- (TVPContentKeySession)contentKeySession
{
  WeakRetained = objc_loadWeakRetained(&self->_contentKeySession);

  return WeakRetained;
}

@end