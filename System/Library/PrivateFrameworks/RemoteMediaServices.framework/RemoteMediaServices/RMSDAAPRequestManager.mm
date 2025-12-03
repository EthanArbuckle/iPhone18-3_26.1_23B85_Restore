@interface RMSDAAPRequestManager
- (RMSDAAPRequestManager)init;
- (RMSDAAPRequestManagerDelegate)delegate;
- (id)requestControlCommand:(id)command text:(id)text promptRevision:(int64_t)revision completionHandler:(id)handler;
- (id)requestWithPath:(id)path method:(id)method postData:(id)data queryArgs:(id)args completionHandler:(id)handler;
@end

@implementation RMSDAAPRequestManager

- (RMSDAAPRequestManager)init
{
  v15[5] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = RMSDAAPRequestManager;
  v2 = [(RMSDAAPRequestManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", 3, 12];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld", 3, 10];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld", 1, 2];
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v14[0] = @"Accept-Encoding";
    v14[1] = @"Viewer-Only-Client";
    v15[0] = @"gzip";
    v15[1] = @"1";
    v14[2] = @"Client-DAAP-Version";
    v14[3] = @"Client-iTunes-Sharing-Version";
    v15[2] = v3;
    v15[3] = v4;
    v14[4] = @"Client-ATV-Sharing-Version";
    v15[4] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
    [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v7];

    v8 = MEMORY[0x277CCAD30];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v10 = [v8 sessionWithConfiguration:ephemeralSessionConfiguration delegate:0 delegateQueue:mainQueue];
    urlSession = v2->_urlSession;
    v2->_urlSession = v10;
  }

  return v2;
}

- (id)requestWithPath:(id)path method:(id)method postData:(id)data queryArgs:(id)args completionHandler:(id)handler
{
  v68[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  methodCopy = method;
  dataCopy = data;
  argsCopy = args;
  handlerCopy = handler;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = objc_opt_new();
  [v54[5] setScheme:@"http"];
  [v54[5] setHost:self->_hostName];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:self->_port];
  [v54[5] setPort:v17];

  pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", pathCopy];
  [v54[5] setPath:pathCopy];

  if (self->_sessionIdentifier)
  {
    v19 = v54[5];
    v67 = @"session-id";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v68[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v22 = [v19 rms_componentsByAddingQueryParameters:v21];
    v23 = v54[5];
    v54[5] = v22;
  }

  homeSharingGroupKey = self->_homeSharingGroupKey;
  if (homeSharingGroupKey)
  {
    v25 = v54[5];
    v65 = @"hsgid";
    v66 = homeSharingGroupKey;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v27 = [v25 rms_componentsByAddingQueryParameters:v26];
    v28 = v54[5];
    v54[5] = v27;
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    v30 = v54[5];
    v63 = @"pairing-guid";
    v64 = pairingGUID;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v32 = [v30 rms_componentsByAddingQueryParameters:v31];
    v33 = v54[5];
    v54[5] = v32;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke;
  v52[3] = &unk_279B08FD0;
  v52[4] = &v53;
  [argsCopy enumerateKeysAndObjectsUsingBlock:v52];
  v34 = MEMORY[0x277CCAB70];
  v35 = [v54[5] URL];
  v36 = [v34 requestWithURL:v35];

  [v36 setHTTPMethod:methodCopy];
  [v36 setHTTPBody:dataCopy];
  if ([(RMSFairPlaySession *)self->_fairPlaySession isHandshakeComplete])
  {
    fairPlaySession = self->_fairPlaySession;
    v38 = [v54[5] URL];
    v39 = [(RMSFairPlaySession *)fairPlaySession headerForURL:v38];

    [v36 addValue:v39 forHTTPHeaderField:@"Client-DAAP-Validation"];
  }

  v40 = RMSLogger();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v54[5] URL];
    absoluteString = [v41 absoluteString];
    *buf = 138412546;
    v60 = methodCopy;
    v61 = 2112;
    v62 = absoluteString;
    _os_log_impl(&dword_261E98000, v40, OS_LOG_TYPE_DEFAULT, "%@/ %@", buf, 0x16u);
  }

  urlSession = self->_urlSession;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke_51;
  v48[3] = &unk_279B08FF8;
  v44 = pathCopy;
  v49 = v44;
  v45 = handlerCopy;
  selfCopy = self;
  v51 = v45;
  v46 = [(NSURLSession *)urlSession dataTaskWithRequest:v36 completionHandler:v48];
  [v46 resume];

  _Block_object_dispose(&v53, 8);

  return v46;
}

void __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v13 = a2;
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 rms_componentsByAddingQueryParameters:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void __85__RMSDAAPRequestManager_requestWithPath_method_postData_queryArgs_completionHandler___block_invoke_51(void *a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (v9)
  {
    v11 = [v9 code];
    WeakRetained = RMSLogger();
    v13 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
    if (v11 != -1001)
    {
      if (v11 == -999)
      {
        if (v13)
        {
          v14 = a1[4];
          v26 = 138412290;
          v27 = v14;
          _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Request was cancelled: %@", &v26, 0xCu);
        }
      }

      else
      {
        if (v13)
        {
          v22 = a1[4];
          v26 = 138412546;
          v27 = v9;
          v28 = 2112;
          v29 = v22;
          _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Unexpected error [%@]: %@", &v26, 0x16u);
        }

        v23 = a1[6];
        if (v23)
        {
          (*(v23 + 16))(v23, -1, 0);
        }

        WeakRetained = objc_loadWeakRetained((a1[5] + 56));
        [WeakRetained requestManagerFailedWithUnknownError:a1[5]];
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v13)
    {
      v20 = a1[4];
      v26 = 138412290;
      v27 = v20;
      _os_log_impl(&dword_261E98000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Request timed out: %@", &v26, 0xCu);
    }

    v21 = a1[6];
    if (v21)
    {
      v19 = *(v21 + 16);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = RMSLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 statusCode];
      v17 = a1[4];
      v26 = 134218242;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_261E98000, v15, OS_LOG_TYPE_DEFAULT, "HTTP response code [%zd] for [%@]", &v26, 0x16u);
    }

    if ([v10 statusCode] > 299)
    {
      if ([v10 statusCode] == 401 || objc_msgSend(v10, "statusCode") == 403 || objc_msgSend(v10, "statusCode") == 503)
      {
        v24 = a1[6];
        if (v24)
        {
          (*(v24 + 16))(v24, -2, v7);
        }

        WeakRetained = objc_loadWeakRetained((a1[5] + 56));
        [WeakRetained requestManagerFailedWithUnauthorizedError:a1[5]];
        goto LABEL_27;
      }

      v25 = a1[6];
      if (!v25)
      {
        goto LABEL_28;
      }

      v19 = *(v25 + 16);
      goto LABEL_15;
    }

    v18 = a1[6];
    if (v18)
    {
      v19 = *(v18 + 16);
LABEL_15:
      v19();
    }
  }

LABEL_28:
}

- (id)requestControlCommand:(id)command text:(id)text promptRevision:(int64_t)revision completionHandler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  textCopy = text;
  handlerCopy = handler;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/1/%s", "ctrl-int", "controlpromptentry"];
  v14 = objc_opt_new();
  v15 = v14;
  if (commandCopy)
  {
    [v14 encodeString:commandCopy forCode:1668112997];
  }

  if (textCopy)
  {
    [v15 encodeString:textCopy forCode:1668117605];
  }

  data = [v15 data];
  v24 = @"prompt-id";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:revision];
  v25[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__RMSDAAPRequestManager_requestControlCommand_text_promptRevision_completionHandler___block_invoke;
  v22[3] = &unk_279B08CF0;
  v23 = handlerCopy;
  v19 = handlerCopy;
  v20 = [(RMSDAAPRequestManager *)self requestWithPath:v13 method:@"POST" postData:data queryArgs:v18 completionHandler:v22];

  return v20;
}

uint64_t __85__RMSDAAPRequestManager_requestControlCommand_text_promptRevision_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (RMSDAAPRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end