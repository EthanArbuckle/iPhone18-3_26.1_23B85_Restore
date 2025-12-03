@interface STSImageDownloadOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (STSImageDownloadOperation)initWithRequest:(id)request session:(id)session begin:(id)begin progress:(id)progress completion:(id)completion;
- (void)_markAsCompleted;
- (void)cancel;
- (void)completedWithResponse:(id)response location:(id)location timingData:(id)data error:(id)error;
- (void)main;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
- (void)updateProgressWithTotalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
@end

@implementation STSImageDownloadOperation

- (STSImageDownloadOperation)initWithRequest:(id)request session:(id)session begin:(id)begin progress:(id)progress completion:(id)completion
{
  requestCopy = request;
  sessionCopy = session;
  beginCopy = begin;
  progressCopy = progress;
  completionCopy = completion;
  v29.receiver = self;
  v29.super_class = STSImageDownloadOperation;
  v18 = [(STSImageDownloadOperation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_request, request);
    v20 = [beginCopy copy];
    begin = v19->_begin;
    v19->_begin = v20;

    v22 = [progressCopy copy];
    progress = v19->_progress;
    v19->_progress = v22;

    v24 = MEMORY[0x266751FB0](completionCopy);
    completion = v19->_completion;
    v19->_completion = v24;

    v26 = [sessionCopy downloadTaskWithRequest:requestCopy];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  executing = selfCopy->_executing;
  objc_sync_exit(selfCopy);

  return executing;
}

- (void)setExecuting:(BOOL)executing
{
  if ([(STSImageDownloadOperation *)self isExecuting]!= executing)
  {
    [(STSImageDownloadOperation *)self willChangeValueForKey:@"isExecuting"];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_executing = executing;
    objc_sync_exit(selfCopy);

    [(STSImageDownloadOperation *)selfCopy didChangeValueForKey:@"isExecuting"];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  finished = selfCopy->_finished;
  objc_sync_exit(selfCopy);

  return finished;
}

- (void)setFinished:(BOOL)finished
{
  if ([(STSImageDownloadOperation *)self isFinished]!= finished)
  {
    [(STSImageDownloadOperation *)self willChangeValueForKey:@"isFinished"];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_finished = finished;
    objc_sync_exit(selfCopy);

    [(STSImageDownloadOperation *)selfCopy didChangeValueForKey:@"isFinished"];
  }
}

- (void)updateProgressWithTotalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  progress = self->_progress;
  if (progress)
  {
    progress[2](progress, written, write);
  }
}

- (void)completedWithResponse:(id)response location:(id)location timingData:(id)data error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  locationCopy = location;
  dataCopy = data;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusCode = [responseCopy statusCode];
    v15 = statusCode;
    if (locationCopy && statusCode == 200)
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
    v27 = errorCopy;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "image downloaded error %@", buf, 0xCu);
  }

LABEL_8:
  v23 = 0;
  [locationCopy getResourceValue:&v23 forKey:*MEMORY[0x277CBE838] error:0];
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
  if (dataCopy)
  {
    v20 = dataCopy;
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
    completion[2](completion, responseCopy, locationCopy, v21, errorCopy);
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