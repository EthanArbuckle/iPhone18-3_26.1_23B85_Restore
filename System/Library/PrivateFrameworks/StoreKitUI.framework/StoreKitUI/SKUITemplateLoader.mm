@interface SKUITemplateLoader
- (SKUITemplateLoader)initWithURLs:(id)ls completionBlock:(id)block;
- (id)_operationWithURL:(id)l;
- (void)_operation:(id)_operation didCompleteWithOutput:(id)output;
- (void)_operation:(id)_operation didFailWithError:(id)error;
- (void)_operationDidFinish:(id)finish;
- (void)load;
@end

@implementation SKUITemplateLoader

- (SKUITemplateLoader)initWithURLs:(id)ls completionBlock:(id)block
{
  lsCopy = ls;
  blockCopy = block;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUITemplateLoader *)v8 initWithURLs:v9 completionBlock:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v30.receiver = self;
  v30.super_class = SKUITemplateLoader;
  v16 = [(SKUITemplateLoader *)&v30 init];
  if (v16)
  {
    v17 = [lsCopy copy];
    URLs = v16->_URLs;
    v16->_URLs = v17;

    v19 = [blockCopy copy];
    completionBlock = v16->_completionBlock;
    v16->_completionBlock = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v21;

    [(NSOperationQueue *)v16->_operationQueue setName:@"com.apple.StoreKit.SKUITemplateLoader"];
    [(NSOperationQueue *)v16->_operationQueue setMaxConcurrentOperationCount:4];
    v23 = +[SKUITemplateParsingDataProvider templateParsingRegularExpression];
    templateParsingRegularExpression = v16->_templateParsingRegularExpression;
    v16->_templateParsingRegularExpression = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    errors = v16->_errors;
    v16->_errors = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateStrings = v16->_templateStrings;
    v16->_templateStrings = v27;
  }

  return v16;
}

- (id)_operationWithURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:lCopy];
  [v5 setAllowedRetryCount:1];
  v6 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequestProperties:v5];
  [v6 setRecordsMetrics:1];
  [v6 setITunesStoreRequest:1];
  v7 = [SKUITemplateParsingDataProvider alloc];
  templateParsingRegularExpression = [(SKUITemplateLoader *)self templateParsingRegularExpression];
  v9 = [(SKUITemplateParsingDataProvider *)v7 initWithRegularExpression:templateParsingRegularExpression];
  [v6 setDataConsumer:v9];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SKUITemplateLoader__operationWithURL___block_invoke;
  v11[3] = &unk_2781FDF40;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v6 setOutputBlock:v11];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void __40__SKUITemplateLoader__operationWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SKUITemplateLoader__operationWithURL___block_invoke_2;
  v12[3] = &unk_2781F96E8;
  v13 = v6;
  v14 = v5;
  v15 = WeakRetained;
  v16 = v8;
  v9 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __40__SKUITemplateLoader__operationWithURL___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didFailWithError:?];
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didFailWithError:?];
  }

  else
  {
    return [*(a1 + 48) _operation:*(a1 + 56) didCompleteWithOutput:v2];
  }
}

- (void)_operation:(id)_operation didCompleteWithOutput:(id)output
{
  _operationCopy = _operation;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SKUITemplateLoader__operation_didCompleteWithOutput___block_invoke;
  v10[3] = &unk_2781FD910;
  v11 = _operationCopy;
  v7 = _operationCopy;
  outputCopy = output;
  [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:v10];
  templateStrings = [(SKUITemplateLoader *)self templateStrings];
  [templateStrings addEntriesFromDictionary:outputCopy];

  [(SKUITemplateLoader *)self _operationDidFinish:v7];
}

void __55__SKUITemplateLoader__operation_didCompleteWithOutput___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) metricsPageEvent];
  if (v3)
  {
    v4 = objc_alloc_init(SKUIMetricsTemplateLoad);
    [v3 requestStartTime];
    [(SKUIMetricsTemplateLoad *)v4 setRequestStartTime:?];
    [v3 responseStartTime];
    [(SKUIMetricsTemplateLoad *)v4 setResponseStartTime:?];
    [v3 responseEndTime];
    [(SKUIMetricsTemplateLoad *)v4 setResponseEndTime:?];
    -[SKUIMetricsTemplateLoad setResponseWasCached:](v4, "setResponseWasCached:", [v3 isCachedResponse]);
    v5 = [*(a1 + 32) URLRequest];
    v6 = [v5 URL];
    [v7 addTemplateLoadTimingMetric:v4 forURL:v6];
  }
}

- (void)_operation:(id)_operation didFailWithError:(id)error
{
  errorCopy = error;
  _operationCopy = _operation;
  errors = [(SKUITemplateLoader *)self errors];
  [errors addObject:errorCopy];

  [(SKUITemplateLoader *)self _operationDidFinish:_operationCopy];
}

- (void)_operationDidFinish:(id)finish
{
  v16[1] = *MEMORY[0x277D85DE8];
  [(SKUITemplateLoader *)self setPendingOperationCount:[(SKUITemplateLoader *)self pendingOperationCount]- 1];
  if (![(SKUITemplateLoader *)self pendingOperationCount])
  {
    errors = [(SKUITemplateLoader *)self errors];
    v5 = [errors count];

    errors2 = [(SKUITemplateLoader *)self errors];
    errors3 = errors2;
    if (v5 == 1)
    {
      firstObject = [errors2 firstObject];
    }

    else
    {
      v9 = [errors2 count];

      if (v9 < 2)
      {
        firstObject = 0;
        goto LABEL_8;
      }

      v10 = MEMORY[0x277CCA9B8];
      v15 = @"SKUITemplateLoaderErrorUnderlyingErrorsKey";
      errors3 = [(SKUITemplateLoader *)self errors];
      v16[0] = errors3;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      firstObject = [v10 errorWithDomain:@"SKUITemplateLoaderErrorDomain" code:561278320 userInfo:v11];
    }

LABEL_8:
    completionBlock = [(SKUITemplateLoader *)self completionBlock];
    templateStrings = [(SKUITemplateLoader *)self templateStrings];
    (completionBlock)[2](completionBlock, templateStrings, firstObject);

    retainSelf = self->_retainSelf;
    self->_retainSelf = 0;
  }
}

- (void)load
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  uRLs = [(SKUITemplateLoader *)self URLs];
  v5 = [v3 initWithCapacity:{objc_msgSend(uRLs, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  uRLs2 = [(SKUITemplateLoader *)self URLs];
  v7 = [uRLs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(uRLs2);
        }

        v11 = [(SKUITemplateLoader *)self _operationWithURL:*(*(&v13 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [uRLs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  -[SKUITemplateLoader setPendingOperationCount:](self, "setPendingOperationCount:", [v5 count]);
  operationQueue = [(SKUITemplateLoader *)self operationQueue];
  [operationQueue addOperations:v5 waitUntilFinished:0];

  objc_storeStrong(&self->_retainSelf, self);
}

@end