@interface STSImageDownloadOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (STSImageDownloadOperation)initWithRequest:(id)a3 session:(id)a4 begin:(id)a5 progress:(id)a6 completion:(id)a7;
- (void)_markAsCompleted;
- (void)cancel;
- (void)completedWithResponse:(id)a3 location:(id)a4 timingData:(id)a5 error:(id)a6;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
- (void)updateProgressWithTotalBytesWritten:(int64_t)a3 totalBytesExpectedToWrite:(int64_t)a4;
@end

@implementation STSImageDownloadOperation

- (STSImageDownloadOperation)initWithRequest:(id)a3 session:(id)a4 begin:(id)a5 progress:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = STSImageDownloadOperation;
  v18 = [(STSImageDownloadOperation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_request, a3);
    v20 = [v15 copy];
    begin = v19->_begin;
    v19->_begin = v20;

    v22 = [v16 copy];
    progress = v19->_progress;
    v19->_progress = v22;

    v24 = MEMORY[0x266751FB0](v17);
    completion = v19->_completion;
    v19->_completion = v24;

    v26 = [v14 downloadTaskWithRequest:v13];
    task = v19->_task;
    v19->_task = v26;
  }

  return v19;
}

- (void)start
{
  if ([(STSImageDownloadOperation *)self isCancelled])
  {

    [(STSImageDownloadOperation *)self setFinished:1];
  }

  else
  {
    [(STSImageDownloadOperation *)self setExecuting:1];

    [(STSImageDownloadOperation *)self main];
  }
}

- (void)main
{
  begin = self->_begin;
  if (begin)
  {
    begin[2](begin, a2);
  }

  task = self->_task;

  [(NSURLSessionDownloadTask *)task resume];
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  executing = v2->_executing;
  objc_sync_exit(v2);

  return executing;
}

- (void)setExecuting:(BOOL)a3
{
  if ([(STSImageDownloadOperation *)self isExecuting]!= a3)
  {
    [(STSImageDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
    v5 = self;
    objc_sync_enter(v5);
    v5->_executing = a3;
    objc_sync_exit(v5);

    [(STSImageDownloadOperation *)v5 didChangeValueForKey:@"isExecuting"];
  }
}

- (void)cancel
{
  [(NSURLSessionDownloadTask *)self->_task cancel];
  v3.receiver = self;
  v3.super_class = STSImageDownloadOperation;
  [(STSImageDownloadOperation *)&v3 cancel];
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  finished = v2->_finished;
  objc_sync_exit(v2);

  return finished;
}

- (void)setFinished:(BOOL)a3
{
  if ([(STSImageDownloadOperation *)self isFinished]!= a3)
  {
    [(STSImageDownloadOperation *)self willChangeValueForKey:@"isFinished"];
    v5 = self;
    objc_sync_enter(v5);
    v5->_finished = a3;
    objc_sync_exit(v5);

    [(STSImageDownloadOperation *)v5 didChangeValueForKey:@"isFinished"];
  }
}

- (void)updateProgressWithTotalBytesWritten:(int64_t)a3 totalBytesExpectedToWrite:(int64_t)a4
{
  progress = self->_progress;
  if (progress)
  {
    progress[2](progress, a3, a4);
  }
}

- (void)completedWithResponse:(id)a3 location:(id)a4 timingData:(id)a5 error:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v10 statusCode];
    v15 = v14;
    if (v11 && v14 == 200)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = -1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "image downloaded error %@", buf, 0xCu);
  }

LABEL_8:
  v23 = 0;
  [v11 getResourceValue:&v23 forKey:*MEMORY[0x277CBE838] error:0];
  v16 = v23;
  v24[0] = @"STSImageDownloadOperationStatusCode";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v18 = v17;
  v19 = &unk_2876BA3D8;
  if (v16)
  {
    v19 = v16;
  }

  v25[0] = v17;
  v25[1] = v19;
  v24[1] = @"STSImageDownloadOperationSize";
  v24[2] = @"STSImageDownloadOperationTimingData";
  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = MEMORY[0x277CBEC10];
  }

  v25[2] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v10, v11, v21, v13);
  }

  [(STSImageDownloadOperation *)self _markAsCompleted];
}

- (void)_markAsCompleted
{
  if ([(STSImageDownloadOperation *)self isExecuting])
  {
    [(STSImageDownloadOperation *)self setExecuting:0];

    [(STSImageDownloadOperation *)self setFinished:1];
  }
}

@end