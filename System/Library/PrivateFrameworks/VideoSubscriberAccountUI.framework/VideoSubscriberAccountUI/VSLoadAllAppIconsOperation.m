@interface VSLoadAllAppIconsOperation
- (CGSize)preferredSize;
- (VSLoadAllAppIconsOperation)init;
- (VSLoadAllAppIconsOperation)initWithApps:(id)a3 shouldPrecomposeIcon:(BOOL)a4;
- (VSLoadAllAppIconsOperation)initWithApps:(id)a3 shouldPrecomposeIcon:(BOOL)a4 preferredSize:(CGSize)a5;
- (void)cancel;
- (void)executionDidBegin;
- (void)setResultCompletionBlock:(id)a3;
@end

@implementation VSLoadAllAppIconsOperation

- (VSLoadAllAppIconsOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSLoadAllAppIconsOperation)initWithApps:(id)a3 shouldPrecomposeIcon:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VSLoadAllAppIconsOperation;
  v7 = [(VSLoadAllAppIconsOperation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    commonInit_1(&v7->super.super.super.isa, v6, a4, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  }

  return v8;
}

- (VSLoadAllAppIconsOperation)initWithApps:(id)a3 shouldPrecomposeIcon:(BOOL)a4 preferredSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = VSLoadAllAppIconsOperation;
  v10 = [(VSLoadAllAppIconsOperation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    commonInit_1(&v10->super.super.super.isa, v9, a4, width, height);
  }

  return v11;
}

- (void)setResultCompletionBlock:(id)a3
{
  v4 = MEMORY[0x2743B6E40](a3, a2);
  resultCompletionBlock = self->_resultCompletionBlock;
  self->_resultCompletionBlock = v4;

  MEMORY[0x2821F96F8]();
}

- (void)executionDidBegin
{
  v7 = [a2 displayName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_270DD4000, a4, OS_LOG_TYPE_ERROR, "No icon URL for %@", a1, 0xCu);
}

uint64_t __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) appDescriptions];
    v10 = 134217984;
    v11 = [v3 count];
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Finished Loading %lu Images", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) resultCompletionBlock];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v5[36];
    v7 = [v5 error];
    (*(v6 + 16))(v6, v7);
  }

  result = [*(a1 + 32) finishExecutionIfPossible];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_11(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  objc_copyWeak(&location, (a1 + 56));
  v2 = objc_loadWeakRetained(&location);
  v3 = [v2 result];
  v4 = [v3 forceUnwrapObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_2;
  v6[3] = &unk_279E19F80;
  objc_copyWeak(&v7, &to);
  v6[4] = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_3;
  v5[3] = &unk_279E19730;
  v5[4] = *(a1 + 40);
  [v4 unwrapObject:v6 error:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  objc_destroyWeak(&to);
}

void __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained shouldPrecomposeIcon];

  if (v4)
  {
    v5 = [v7 _applicationIconImageForFormat:0 precomposed:1];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [*(a1 + 32) setIcon:v6];
}

void __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_3_cold_1(v3, v4);
  }

  [*(a1 + 32) setError:v3];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = VSLoadAllAppIconsOperation;
  [(VSAsyncOperation *)&v7 cancel];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VSLoadAllAppIconsOperation *)self appDescriptions];
    v5 = [v4 count];
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling Loading %lu Images", buf, 0xCu);
  }

  [(VSAsyncOperation *)self finishExecutionIfPossible];
  v6 = *MEMORY[0x277D85DE8];
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __47__VSLoadAllAppIconsOperation_executionDidBegin__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Failed to set App Icon: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end