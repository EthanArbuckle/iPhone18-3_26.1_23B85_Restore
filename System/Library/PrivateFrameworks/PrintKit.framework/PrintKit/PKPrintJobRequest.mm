@interface PKPrintJobRequest
- (PKPrintJobRequest)initWithPrinterName:(id)a3;
- (void)_establishedJob:(id)a3 fileHandle:(id)a4;
- (void)finishRequest0:(BOOL)a3 completionHandler:(id)a4;
- (void)finishRequest:(BOOL)a3 completionHandler:(id)a4;
- (void)startRequestCompletionHandler:(id)a3;
- (void)writeRequestData:(id)a3 completionHandler:(id)a4;
@end

@implementation PKPrintJobRequest

- (PKPrintJobRequest)initWithPrinterName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PKPrintJobRequest;
  v6 = [(PKPrintJobRequest *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.printing.JobStreamQueue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_printerName, a3);
  }

  return v6;
}

- (void)_establishedJob:(id)a3 fileHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  job_connection = self->_job_connection;
  self->_job_connection = v6;
  v10 = v6;

  streamHandle = self->_streamHandle;
  self->_streamHandle = v7;
}

- (void)startRequestCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = self->_queue;
    v7 = [(PKPrintJobRequest *)self fileType];
    v8 = [(PKPrintJobRequest *)self printSettings];
    [v8 setFileType:v7];

    objc_initWeak(&location, self);
    v9 = [(PKPrintJobRequest *)self printerName];
    v10 = [(PKPrintJobRequest *)self printSettings];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__PKPrintJobRequest_startRequestCompletionHandler___block_invoke;
    v12[3] = &unk_279A92F40;
    v15 = v4;
    v11 = v6;
    v13 = v11;
    objc_copyWeak(&v16, &location);
    v14 = v5;
    [v14 startStreamingRequest:v9 printSettings:v10 completionHandler:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __51__PKPrintJobRequest_startRequestCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__PKPrintJobRequest_startRequestCompletionHandler___block_invoke_2;
    v5[3] = &unk_279A92F18;
    objc_copyWeak(&v9, (a1 + 56));
    v6 = *(a1 + 40);
    v7 = v3;
    v8 = *(a1 + 48);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v9);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __51__PKPrintJobRequest_startRequestCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    [v3 _establishedJob:*(a1 + 32) fileHandle:*(a1 + 40)];

    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v7 = 0;
    [v5 closeAndReturnError:&v7];
    v6 = v7;
    (*(*(a1 + 48) + 16))();
  }
}

- (void)writeRequestData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_job_connection && (streamHandle = self->_streamHandle) != 0)
  {
    v9 = streamHandle;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PKPrintJobRequest_writeRequestData_completionHandler___block_invoke;
    block[3] = &unk_279A92F68;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v11 = v9;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_ERROR, "no stream to send bytes to", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

void __56__PKPrintJobRequest_writeRequestData_completionHandler___block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 writeData:v3 error:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_ERROR, "Could not write to job stream %@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)finishRequest:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__PKPrintJobRequest_finishRequest_completionHandler___block_invoke;
  block[3] = &unk_279A92F90;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)finishRequest0:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  streamHandle = self->_streamHandle;
  if (streamHandle)
  {
    v14 = 0;
    [(NSFileHandle *)streamHandle closeAndReturnError:&v14];
    v8 = self->_streamHandle;
    self->_streamHandle = 0;
  }

  v9 = self->_job_connection;
  job_connection = self->_job_connection;
  self->_job_connection = 0;

  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__PKPrintJobRequest_finishRequest0_completionHandler___block_invoke;
    v11[3] = &unk_279A92EA0;
    v12 = v9;
    v13 = v6;
    [(PKPrinterTool_Client *)v12 finishRequestWithCancel:v4 completionHandler:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __54__PKPrintJobRequest_finishRequest0_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

@end