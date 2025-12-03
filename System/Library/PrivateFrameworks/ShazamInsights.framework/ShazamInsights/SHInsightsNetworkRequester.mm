@interface SHInsightsNetworkRequester
- (id)response:(id)response data:(id)data error:(id)error;
- (void)downloadResourceFromRequest:(id)request completionHandler:(id)handler;
- (void)performRequest:(id)request completionHandler:(id)handler;
@end

@implementation SHInsightsNetworkRequester

- (void)performRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CCAD30];
  requestCopy = request;
  sharedSession = [v7 sharedSession];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __63__SHInsightsNetworkRequester_performRequest_completionHandler___block_invoke;
  v15 = &unk_279BBF118;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = [sharedSession dataTaskWithRequest:requestCopy completionHandler:&v12];

  [v11 resume];
}

void __63__SHInsightsNetworkRequester_performRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v11 = [v7 response:v8 data:v9 error:a4];
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v10);
}

- (void)downloadResourceFromRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CCAD30];
  requestCopy = request;
  sharedSession = [v7 sharedSession];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__SHInsightsNetworkRequester_downloadResourceFromRequest_completionHandler___block_invoke;
  v15 = &unk_279BBF140;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = [sharedSession downloadTaskWithRequest:requestCopy completionHandler:&v12];

  [v11 resume];
}

void __76__SHInsightsNetworkRequester_downloadResourceFromRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CBEA90];
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [v8 dataWithContentsOfURL:v11];
  v14 = [v7 response:v10 data:v12 error:v9];

  if (v14)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v13);
}

- (id)response:(id)response data:(id)data error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  if (([responseCopy statusCode] - 200) < 0x64 || objc_msgSend(responseCopy, "statusCode") == 304)
  {
    v10 = errorCopy;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (dataCopy)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }

    if ([responseCopy statusCode] == 404)
    {
      v13 = 200;
    }

    else
    {
      v13 = 100;
    }

    v10 = [SHInsightsError errorWithCode:v13 underlyingError:errorCopy keyOverrides:dictionary];

    v14 = shcore_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = responseCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_265F78000, v14, OS_LOG_TYPE_ERROR, "Network call: %@ failed with bad server response: %@", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

@end