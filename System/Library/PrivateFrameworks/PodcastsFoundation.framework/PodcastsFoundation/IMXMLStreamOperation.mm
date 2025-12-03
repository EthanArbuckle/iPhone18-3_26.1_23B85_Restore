@interface IMXMLStreamOperation
+ (id)operationWithURL:(id)l parseDelegate:(id)delegate;
- (IMXMLStreamOperation)initWithURL:(id)l parseDelegate:(id)delegate;
- (void)_startRunLoop;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)dealloc;
- (void)start;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)writeToStream;
@end

@implementation IMXMLStreamOperation

+ (id)operationWithURL:(id)l parseDelegate:(id)delegate
{
  v4 = [[self alloc] initWithURL:l parseDelegate:delegate];

  return v4;
}

- (IMXMLStreamOperation)initWithURL:(id)l parseDelegate:(id)delegate
{
  v6 = [(IMXMLStreamOperation *)self init];
  if (v6)
  {
    v6->_url = [l copy];
    v6->_delegate = delegate;
    v6->_dataBuffer = objc_alloc_init(MEMORY[0x1E695DF88]);
    CFStreamCreateBoundPair(0, &v6->_readStream, &v6->_writeStream, 4096);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMXMLStreamOperation;
  [(IMXMLStreamOperation *)&v3 dealloc];
}

- (void)_startRunLoop
{
  v3 = objc_opt_new();
  readStream = self->_readStream;
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  v6 = *MEMORY[0x1E695D918];
  [(NSInputStream *)readStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x1E695D918]];
  -[NSOutputStream scheduleInRunLoop:forMode:](self->_writeStream, "scheduleInRunLoop:forMode:", [MEMORY[0x1E695DFD0] currentRunLoop], v6);
  [(NSOutputStream *)self->_writeStream setDelegate:self];
  [(NSInputStream *)self->_readStream open];
  [(NSOutputStream *)self->_writeStream open];
  v7 = [MEMORY[0x1E696AF68] requestWithURL:self->_url];
  self->_urlConnection = [objc_alloc(MEMORY[0x1E696AF28]) initWithRequest:v7 delegate:self];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__IMXMLStreamOperation__startRunLoop__block_invoke;
  block[3] = &unk_1E856B200;
  block[4] = self;
  dispatch_async(global_queue, block);
  if (self->_isExecuting)
  {
    do
    {
      v9 = objc_opt_new();
      currentRunLoop2 = [MEMORY[0x1E695DFD0] currentRunLoop];
      LODWORD(currentRunLoop2) = [currentRunLoop2 runMode:v6 beforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 2.0)}];
      [v9 drain];
    }

    while (currentRunLoop2 && self->_isExecuting);
  }

  [v3 drain];
}

uint64_t __37__IMXMLStreamOperation__startRunLoop__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0A8]) initWithStream:*(*(a1 + 32) + 264)];
  [v2 setShouldResolveExternalEntities:0];
  [v2 setShouldProcessNamespaces:1];
  [v2 setDelegate:*(*(a1 + 32) + 312)];
  [v2 parse];

  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 248) = 0;
  *(*(a1 + 32) + 249) = 1;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  v3 = *(a1 + 32);

  return [v3 didChangeValueForKey:@"isFinished"];
}

- (void)start
{
  if (![(IMXMLStreamOperation *)self isCancelled])
  {
    [(IMXMLStreamOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_isExecuting = 1;
    [(IMXMLStreamOperation *)self didChangeValueForKey:@"isExecuting"];
    v3 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__startRunLoop object:0];
    self->_runloopThread = v3;

    [(NSThread *)v3 start];
  }
}

- (void)writeToStream
{
  if ([(NSMutableData *)self->_dataBuffer length])
  {
    v3 = [(NSOutputStream *)self->_writeStream write:[(NSMutableData *)self->_dataBuffer bytes] maxLength:[(NSMutableData *)self->_dataBuffer length]];
    if (v3 == -1)
    {
      return;
    }

    [(NSMutableData *)self->_dataBuffer replaceBytesInRange:0 withBytes:v3 length:0, 0];
  }

  if (self->_finishedDownloadingData && ![(NSMutableData *)self->_dataBuffer length])
  {
    readStream = self->_readStream;

    [(NSInputStream *)readStream close];
  }
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  [(NSMutableData *)self->_dataBuffer appendData:data];

  [(IMXMLStreamOperation *)self writeToStream];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  if (event == 4)
  {
    if (self->_finishedDownloadingData && ![(NSMutableData *)self->_dataBuffer length])
    {
      readStream = self->_readStream;

      [(NSInputStream *)readStream close];
    }

    else
    {

      [(IMXMLStreamOperation *)self writeToStream];
    }
  }
}

@end