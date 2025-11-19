@interface WBSCalculationResultProvider
- (WBSCalculationResultProvider)init;
- (void)evaluateQuery:(id)a3 resultHandler:(id)a4;
@end

@implementation WBSCalculationResultProvider

- (WBSCalculationResultProvider)init
{
  v15.receiver = self;
  v15.super_class = WBSCalculationResultProvider;
  v2 = [(WBSCalculationResultProvider *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.safarishared.%p", v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    calculationQueue = v2->_calculationQueue;
    v2->_calculationQueue = v6;

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ht", @"htt", @"ww", 0}];
    queryStringsToIgnore = v2->_queryStringsToIgnore;
    v2->_queryStringsToIgnore = v8;

    queryPrefixesToIgnore = v2->_queryPrefixesToIgnore;
    v2->_queryPrefixesToIgnore = &unk_1F3A9B0C0;

    *&v2->_queryLock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2048 error:0];
    phoneNumberDetector = v2->_phoneNumberDetector;
    v2->_phoneNumberDetector = v11;

    v13 = v2;
  }

  return v2;
}

- (void)evaluateQuery:(id)a3 resultHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_queryLock);
  os_unfair_lock_lock(&self->_calculateRequestLock);
  currentCalculateRequest = self->_currentCalculateRequest;
  if (currentCalculateRequest)
  {
    [currentCalculateRequest cancel];
  }

  os_unfair_lock_unlock(&self->_calculateRequestLock);
  v9 = [v6 queryString];
  v10 = [v9 safari_stringByTrimmingWhitespace];

  v11 = [(NSString *)self->_currentQueryString isEqualToString:v10];
  currentCalculateResult = self->_currentCalculateResult;
  if (v11)
  {
    if (currentCalculateResult)
    {
      v13 = [[WBSCalculationResult alloc] initWithCalculateResult:self->_currentCalculateResult];
      v7[2](v7, v13);

      goto LABEL_9;
    }

LABEL_8:
    v7[2](v7, 0);
    goto LABEL_9;
  }

  self->_currentCalculateResult = 0;

  if ([v10 length] <= 1 || -[NSSet containsObject:](self->_queryStringsToIgnore, "containsObject:", v10))
  {
    goto LABEL_8;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_queryPrefixesToIgnore;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = *v27;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        if ([v10 hasPrefix:*(*(&v26 + 1) + 8 * i)])
        {
          v7[2](v7, 0);

          goto LABEL_9;
        }
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  phoneNumberDetector = self->_phoneNumberDetector;
  v19 = [v6 queryString];
  v20 = [v6 queryString];
  v21 = -[NSDataDetector numberOfMatchesInString:options:range:](phoneNumberDetector, "numberOfMatchesInString:options:range:", v19, 0, 0, [v20 length]);

  if (v21 || (WBSUnifiedFieldInputTypeForString(v10) - 1) <= 1)
  {
    v7[2](v7, 0);
  }

  else
  {
    objc_storeStrong(&self->_currentQueryString, v10);
    calculationQueue = self->_calculationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke;
    block[3] = &unk_1E7FB6E08;
    block[4] = self;
    v24 = v10;
    v25 = v7;
    dispatch_async(calculationQueue, block);
  }

LABEL_9:

  os_unfair_lock_unlock(&self->_queryLock);
}

void __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 16);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if ([v2 isEqualToString:*(a1 + 40)])
  {
    os_unfair_lock_lock((*(a1 + 32) + 12));
    v3 = MEMORY[0x1E69922A0];
    v4 = *(a1 + 40);
    if (evaluationOptions_onceToken != -1)
    {
      __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_cold_1();
    }

    v5 = evaluationOptions_options;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_3;
    v12[3] = &unk_1E7FB73A0;
    v6 = &v13;
    v7 = *(a1 + 48);
    v12[4] = *(a1 + 32);
    v13 = v7;
    v8 = v5;
    v9 = [v3 evaluate:v4 options:v8 resultHandler:v12];
    v10 = *(a1 + 32);
    v11 = *(v10 + 56);
    *(v10 + 56) = v9;

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_2;
    block[3] = &unk_1E7FB7350;
    v6 = &v15;
    v15 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_4;
  block[3] = &unk_1E7FB7378;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__WBSCalculationResultProvider_evaluateQuery_resultHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedResult];
  if (![v2 length] || (objc_msgSend(*(a1 + 32), "isTrivial") & 1) != 0)
  {

LABEL_4:
    (*(*(a1 + 48) + 16))();
    v3 = *(a1 + 40);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) inputValueAndUnit];
  if ([v5 isTrivial])
  {
    v6 = [*(a1 + 32) unitType];

    if (v6 != 16)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  objc_storeStrong((*(a1 + 40) + 64), *(a1 + 32));
  v7 = *(a1 + 48);
  v8 = [[WBSCalculationResult alloc] initWithCalculateResult:*(a1 + 32)];
  (*(v7 + 16))(v7, v8);
  v4 = v8;
LABEL_10:
}

@end