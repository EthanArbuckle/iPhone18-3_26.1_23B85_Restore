@interface SKUIPostRatingOperation
- (NSDictionary)responseDictionary;
- (SKUIPostRatingOperation)initWithRating:(int64_t)rating forItemID:(id)d reviewConfiguration:(id)configuration;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)run;
@end

@implementation SKUIPostRatingOperation

- (SKUIPostRatingOperation)initWithRating:(int64_t)rating forItemID:(id)d reviewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SKUIPostRatingOperation;
  v9 = [(SKUIPostRatingOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_rating = rating;
    v11 = [(NSString *)v9->_itemID copy];
    itemID = v10->_itemID;
    v10->_itemID = v11;

    objc_storeStrong(&v10->_reviewConfiguration, configuration);
  }

  return v10;
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_215BAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[SKUIPostRatingOperation] Handling auth request", buf, 2u);
  }

  v10 = [MEMORY[0x277CEE3F8] bagForProfile:@"appstored" profileVersion:@"1"];
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v12 = [objc_alloc(MEMORY[0x277CEE878]) initWithRequest:requestCopy accountStore:ams_sharedAccountStore bag:v10];
  performAuthentication = [v12 performAuthentication];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__SKUIPostRatingOperation_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke;
  v15[3] = &unk_2781FB9B8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [performAuthentication addFinishBlock:v15];
}

void __83__SKUIPostRatingOperation_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_215BAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[SKUIPostRatingOperation] Authentication result: %@", &v7, 0xCu);
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __83__SKUIPostRatingOperation_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) setSuccess:0];
    [*(a1 + 32) setError:v6];
  }
}

- (NSDictionary)responseDictionary
{
  [(SKUIPostRatingOperation *)self lock];
  v3 = self->_responseDictionary;
  [(SKUIPostRatingOperation *)self unlock];

  return v3;
}

- (void)run
{
  v23 = *MEMORY[0x277D85DE8];
  ratingURLString = [(SKUIReviewConfiguration *)self->_reviewConfiguration ratingURLString];
  storeExternalVersionID = [(SKUIReviewConfiguration *)self->_reviewConfiguration storeExternalVersionID];
  if (!ratingURLString)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKUIPostRatingOperation run];
    }

    ratingURLString = [MEMORY[0x277CCACA8] stringWithFormat:@"https://userpub.itunes.apple.com/api/v1/saveUserReview?id=%@", self->_itemID];
  }

  if ([storeExternalVersionID length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:ratingURLString];
    v6 = [v5 URLByAppendingQueryParameter:@"versionId" value:storeExternalVersionID];

    v7 = [MEMORY[0x277CEE3F8] bagForProfile:@"appstored" profileVersion:@"1"];
    v8 = [objc_alloc(MEMORY[0x277CEE6D8]) initWithBag:v7];
    [v8 setRequestEncoding:3];
    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    if (ams_activeiTunesAccount)
    {
      v17 = v7;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        username = [ams_activeiTunesAccount username];
        *buf = 138543362;
        v22 = username;
        _os_log_impl(&dword_215BAE000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[SKUIPostRatingOperation] Successfully retrieved active iTunes account: %{public}@", buf, 0xCu);
      }

      [v8 setAccount:ams_activeiTunesAccount];
      v12 = [MEMORY[0x277CBAB50] requestWithURL:v6 cachePolicy:1 timeoutInterval:20.0];
      [v12 setHTTPMethod:@"POST"];
      v19 = @"rating";
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_rating];
      v20 = v13;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = v14 = v6;

      v16 = [v8 requestByEncodingRequest:v12 parameters:v15];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __30__SKUIPostRatingOperation_run__block_invoke;
      v18[3] = &unk_2781FBA08;
      v18[4] = self;
      [v16 addFinishBlock:v18];

      v6 = v14;
      v7 = v17;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SKUIPostRatingOperation run];
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SKUIErrorDomain" code:3 userInfo:0];
      [(SKUIPostRatingOperation *)self setError:v12];
      [(SKUIPostRatingOperation *)self setSuccess:0];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKUIPostRatingOperation run];
    }

    [(SKUIPostRatingOperation *)self setSuccess:0];
  }
}

void __30__SKUIPostRatingOperation_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __30__SKUIPostRatingOperation_run__block_invoke_cold_1();
    }

    [*(a1 + 32) setError:v6];
    [*(a1 + 32) setSuccess:0];
  }

  else
  {
    v7 = [MEMORY[0x277CEE6F0] defaultSession];
    [v7 setDelegate:*(a1 + 32)];
    v8 = [v7 dataTaskPromiseWithRequest:v5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SKUIPostRatingOperation_run__block_invoke_30;
    v9[3] = &unk_2781FB9E0;
    v9[4] = *(a1 + 32);
    [v8 addFinishBlock:v9];
  }
}

void __30__SKUIPostRatingOperation_run__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __30__SKUIPostRatingOperation_run__block_invoke_30_cold_1();
    }

    v7 = 0;
  }

  else
  {
    v8 = [v5 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v5 object];
      v11 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CCAAA0];
      v13 = [v5 data];
      v18 = 0;
      v10 = [v12 JSONObjectWithData:v13 options:0 error:&v18];
      v11 = v18;
    }

    v14 = [v10 objectForKey:@"status-code"];
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [v14 integerValue] == 3200;
    [*(a1 + 32) lock];
    v15 = [v10 copy];
    v16 = *(a1 + 32);
    v17 = *(v16 + 336);
    *(v16 + 336) = v15;

    [*(a1 + 32) unlock];
  }

  [*(a1 + 32) setError:v6];
  [*(a1 + 32) setSuccess:v7];
}

@end