@interface ICSAPSessionAbstractOperation
- (void)execute;
- (void)finishWithError:(id)a3;
@end

@implementation ICSAPSessionAbstractOperation

- (void)execute
{
  v3 = [(ICSAPSession *)self->_sapSession _prepareFairPlayContextOperationQueue];
  if (v3)
  {
    v4 = objc_alloc_init(ICSAPSessionPrepareFairPlayContextOperation);
    v5 = [(ICSAPSessionAbstractOperation *)self sapSession];
    [(ICSAPSessionPrepareFairPlayContextOperation *)v4 setSapSession:v5];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__ICSAPSessionAbstractOperation_execute__block_invoke;
    v6[3] = &unk_1E7BF7238;
    v6[4] = self;
    [(ICSAPSessionPrepareFairPlayContextOperation *)v4 setResponseHandler:v6];
    [v3 addOperation:v4];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    [(ICSAPSessionAbstractOperation *)self finishWithSAPContextPreparationError:v4];
  }
}

void __40__ICSAPSessionAbstractOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v9)
  {
    [v7 executeWithSAPContext:v9];
  }

  else if (v5)
  {
    [v7 finishWithSAPContextPreparationError:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    [v7 finishWithSAPContextPreparationError:v8];
  }
}

- (void)finishWithError:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"ICFairPlayError"];

  if (v6 && [v4 code] == -42186)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating SAP context for error %@", buf, 0xCu);
    }

    [(ICSAPSession *)self->_sapSession _setSAPContext:0];
  }

  v8.receiver = self;
  v8.super_class = ICSAPSessionAbstractOperation;
  [(ICAsyncOperation *)&v8 finishWithError:v4];
}

@end