@interface VUIPurchaseRequest
+ (int64_t)getPurchaseTypeFromActionRef:(id)ref;
- (VUIPurchaseRequest)initWithBuyParams:(id)params ofPurchaseType:(int64_t)type;
- (void)_createPurchaseRequest;
- (void)_recordErrorLog:(id)log;
- (void)enqueueWithCompletion:(id)completion;
- (void)handleRequestCompletionWithResult:(id)result andError:(id)error;
@end

@implementation VUIPurchaseRequest

- (VUIPurchaseRequest)initWithBuyParams:(id)params ofPurchaseType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  v17.receiver = self;
  v17.super_class = VUIPurchaseRequest;
  v8 = [(VUIPurchaseRequest *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buyParamsString, params);
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      typeCopy = type;
      v20 = 2112;
      v21 = paramsCopy;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPurchaseRequest - new request type: %ld, %@", buf, 0x16u);
    }

    v11 = +[VUIMetricsController sharedInstance];
    v12 = [v11 getMetricsEnhancedBuyParams:v9->_buyParamsString];
    enhancedBuyParamsString = v9->_enhancedBuyParamsString;
    v9->_enhancedBuyParamsString = v12;

    v14 = [MEMORY[0x1E698C818] buyParamsWithString:v9->_enhancedBuyParamsString];
    amsBuyParams = v9->_amsBuyParams;
    v9->_amsBuyParams = v14;

    v9->_purchaseType = 0;
    [(VUIPurchaseRequest *)v9 _createPurchaseRequest];
  }

  return v9;
}

- (void)_createPurchaseRequest
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E698CAE0]) initWithPurchaseType:self->_purchaseType buyParams:self->_amsBuyParams];
  purchase = self->_purchase;
  self->_purchase = v3;

  v5 = self->_purchase;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  [(AMSPurchase *)v5 setAccount:activeAccount];

  [(AMSPurchase *)self->_purchase setRequiresAccount:1];
  [(AMSPurchase *)self->_purchase setUserInitiated:1];
  v7 = self->_purchase;
  v9 = @"topic";
  v10[0] = @"xp_amp_tv_perf";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(AMSPurchase *)v7 setPerformanceMetricsOverlay:v8];
}

- (void)enqueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[VUIPurchaser sharedInstance];
  [(VUIPurchaseRequest *)self setCompletionHandler:completionCopy];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__VUIPurchaseRequest_enqueueWithCompletion___block_invoke;
  v6[3] = &unk_1E872F558;
  v6[4] = self;
  [v5 enqueuePurchase:self withCompletion:v6];
}

void __44__VUIPurchaseRequest_enqueueWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 responseDictionary];
  [*(a1 + 32) handleRequestCompletionWithResult:v6 andError:v5];
}

- (void)handleRequestCompletionWithResult:(id)result andError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = resultCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPurchaseRequest - Purchase completed: %@, %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __65__VUIPurchaseRequest_handleRequestCompletionWithResult_andError___block_invoke;
  v14 = &unk_1E872D9B8;
  objc_copyWeak(&v17, buf);
  v9 = resultCopy;
  v15 = v9;
  v10 = errorCopy;
  v16 = v10;
  v11 = v12;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v13(v11);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  [(VUIPurchaseRequest *)self _recordErrorLog:v10];
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __65__VUIPurchaseRequest_handleRequestCompletionWithResult_andError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained completionHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }
}

+ (int64_t)getPurchaseTypeFromActionRef:(id)ref
{
  v3 = getPurchaseTypeFromActionRef__onceToken;
  refCopy = ref;
  if (v3 != -1)
  {
    +[VUIPurchaseRequest getPurchaseTypeFromActionRef:];
  }

  v5 = [getPurchaseTypeFromActionRef__sCommerceActionRefToPurchaseType objectForKeyedSubscript:refCopy];

  intValue = [v5 intValue];
  return intValue;
}

void __51__VUIPurchaseRequest_getPurchaseTypeFromActionRef___block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"actionRefGet";
  v2[1] = @"actionRefBuy";
  v3[0] = &unk_1F5E5CDC8;
  v3[1] = &unk_1F5E5CDC8;
  v2[2] = @"actionRefRentWatchNow";
  v2[3] = @"actionRefComplete";
  v3[2] = &unk_1F5E5CDC8;
  v3[3] = &unk_1F5E5CDC8;
  v2[4] = @"actionRefUpdate";
  v2[5] = @"actionRefRent";
  v3[4] = &unk_1F5E5CDC8;
  v3[5] = &unk_1F5E5CDC8;
  v2[6] = @"actionRefPreorder";
  v2[7] = @"actionRefSubscribe";
  v3[6] = &unk_1F5E5CDC8;
  v3[7] = &unk_1F5E5CDE0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = getPurchaseTypeFromActionRef__sCommerceActionRefToPurchaseType;
  getPurchaseTypeFromActionRef__sCommerceActionRefToPurchaseType = v0;
}

- (void)_recordErrorLog:(id)log
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (log)
  {
    v4 = MEMORY[0x1E696AEC0];
    type = self->_type;
    logCopy = log;
    type = [v4 stringWithFormat:@"%@ - %ld", @"commerce transaction failure", type];
    v8 = type;
    if (type)
    {
      v9 = type;
    }

    else
    {
      v9 = &stru_1F5DB25C0;
    }

    v27[0] = v9;
    v26[0] = @"message";
    v26[1] = @"errorCode";
    v10 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(logCopy, "code")}];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F5DB25C0;
    }

    v27[1] = v12;
    v26[2] = @"errorDomain";
    domain = [logCopy domain];
    v14 = domain;
    if (domain)
    {
      v15 = domain;
    }

    else
    {
      v15 = &stru_1F5DB25C0;
    }

    v26[3] = @"buyParams";
    enhancedBuyParamsString = self->_enhancedBuyParamsString;
    if (!enhancedBuyParamsString)
    {
      enhancedBuyParamsString = &stru_1F5DB25C0;
    }

    v27[2] = v15;
    v27[3] = enhancedBuyParamsString;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

    userInfo = [logCopy userInfo];

    v19 = [userInfo objectForKeyedSubscript:@"AMSServerErrorCode"];

    if (v19)
    {
      v24[0] = @"underlyingErrorCode";
      v24[1] = @"underlyingErrorDomain";
      v25[0] = v19;
      v25[1] = @"AMSServerError";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v17];
      [v21 addEntriesFromDictionary:v20];
      v22 = [v21 copy];

      v17 = v22;
    }

    v23 = +[VUIMetricsController sharedInstance];
    [v23 recordLog:v17];
  }
}

@end