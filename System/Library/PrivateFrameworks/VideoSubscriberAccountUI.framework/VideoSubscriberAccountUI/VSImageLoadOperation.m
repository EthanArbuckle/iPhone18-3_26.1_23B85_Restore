@interface VSImageLoadOperation
- (CGSize)preferredImageSize;
- (VSImageLoadOperation)init;
- (VSImageLoadOperation)initWithItemProvider:(id)a3 preferredImageSize:(CGSize)a4;
- (void)_beginFetchingDataFromURL:(id)a3;
- (void)_finishWithImageData:(id)a3 orError:(id)a4;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSImageLoadOperation

- (VSImageLoadOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSImageLoadOperation)initWithItemProvider:(id)a3 preferredImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = VSImageLoadOperation;
  v9 = [(VSImageLoadOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemProvider, a3);
    v10->_preferredImageSize.width = width;
    v10->_preferredImageSize.height = height;
    v11 = objc_alloc_init(MEMORY[0x277CE2298]);
    v12 = v10->_result;
    v10->_result = v11;
  }

  return v10;
}

- (void)_finishWithImageData:(id)a3 orError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Did load image data %@", &v22, 0xCu);
    }

    v9 = v6;
    v10 = [MEMORY[0x277D755B8] imageWithData:v9];
    if (v10)
    {
      v11 = MEMORY[0x277CE2298];
      v12 = [MEMORY[0x277CE2250] failableWithObject:v10];
      v13 = [v11 optionalWithObject:v12];
      [(VSImageLoadOperation *)self setResult:v13];
    }

    else
    {
      v18 = VSErrorLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [VSImageLoadOperation _finishWithImageData:v18 orError:?];
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
      v19 = MEMORY[0x277CE2298];
      v13 = [MEMORY[0x277CE2250] failableWithError:v12];
      v20 = [v19 optionalWithObject:v13];
      [(VSImageLoadOperation *)self setResult:v20];
    }
  }

  else
  {
    v14 = VSErrorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [VSImageLoadOperation _finishWithImageData:v7 orError:v14];
    }

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v15 = MEMORY[0x277CE2298];
    v16 = MEMORY[0x277CE2250];
    v17 = v7;
    v9 = [v16 failableWithError:v17];
    v10 = [v15 optionalWithObject:v9];

    [(VSImageLoadOperation *)self setResult:v10];
  }

  [(VSAsyncOperation *)self finishExecutionIfPossible];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_beginFetchingDataFromURL:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCAD38];
  v6 = [(VSImageLoadOperation *)self auditToken];
  v7 = [v5 vs_defaultSessionConfigurationForSourceAppWithAuditToken:v6];

  objc_initWeak(&location, self);
  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v7];
  v9 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v4];
  [v9 _setNonAppInitiated:{-[VSImageLoadOperation isNonAppInitiated](self, "isNonAppInitiated")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __50__VSImageLoadOperation__beginFetchingDataFromURL___block_invoke;
  v14 = &unk_279E1A588;
  objc_copyWeak(&v15, &location);
  v10 = [v8 dataTaskWithRequest:v9 completionHandler:&v11];
  [(VSImageLoadOperation *)self setTask:v10, v11, v12, v13, v14];
  [v10 resume];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __50__VSImageLoadOperation__beginFetchingDataFromURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithImageData:v7 orError:v6];
}

- (void)executionDidBegin
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCAE60];
  [(VSImageLoadOperation *)self preferredImageSize];
  v5 = [v4 valueWithCGSize:?];
  [v3 setObject:v5 forKey:*MEMORY[0x277CCA2D8]];

  [v3 setObject:*MEMORY[0x277CCA2C8] forKey:*MEMORY[0x277CCA2D0]];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__VSImageLoadOperation_executionDidBegin__block_invoke;
  v17 = &unk_279E1A5B0;
  objc_copyWeak(&v18, &location);
  v6 = MEMORY[0x2743B6E40](&v14);
  v10 = MEMORY[0x2743B6E40](v6, v7, v8, v9);
  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = self;
    _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Will load image %@", buf, 0xCu);
  }

  v12 = [(VSImageLoadOperation *)self itemProvider:v14];
  [v12 loadItemForTypeIdentifier:*MEMORY[0x277CC20B0] options:v3 completionHandler:v10];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __41__VSImageLoadOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v11)
    {
      [WeakRetained _beginFetchingDataFromURL:v11];
    }

    else
    {
      if (!v5)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v8 = MEMORY[0x277CE2298];
      v9 = [MEMORY[0x277CE2250] failableWithError:v5];
      v10 = [v8 optionalWithObject:v9];
      [v7 setResult:v10];

      [v7 finishExecutionIfPossible];
    }
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSImageLoadOperation;
  [(VSAsyncOperation *)&v4 cancel];
  v3 = [(VSImageLoadOperation *)self task];
  [v3 cancel];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

- (CGSize)preferredImageSize
{
  width = self->_preferredImageSize.width;
  height = self->_preferredImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_finishWithImageData:(uint64_t)a1 orError:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error loading image data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end