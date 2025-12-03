@interface TSUURLTracker
- (NSString)description;
- (NSURL)URL;
- (NSURL)URLIfAvailable;
- (TSUURLTracker)init;
- (TSUURLTracker)initWithSandboxedURL:(id)l bookmarkData:(id)data delegate:(id)delegate;
- (TSUURLTracker)initWithURLWrapper:(id)wrapper;
- (TSUURLTracker)initWithURLWrapper:(id)wrapper delegate:(id)delegate;
- (id)p_filePresenterQueue;
- (void)dealloc;
- (void)pause;
- (void)resume;
- (void)stop;
@end

@implementation TSUURLTracker

- (TSUURLTracker)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTracker init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUURLTracker.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:96 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUURLTracker init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUURLTracker)initWithSandboxedURL:(id)l bookmarkData:(id)data delegate:(id)delegate
{
  lCopy = l;
  dataCopy = data;
  delegateCopy = delegate;
  if (lCopy)
  {
    v11 = [lCopy URL];
    isFileURL = [v11 isFileURL];

    if ((isFileURL & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTracker initWithSandboxedURL:bookmarkData:delegate:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUURLTracker.m"];
      [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:101 isFatal:0 description:"URL tracker should not be initialized with a non-file URL. URL=%@", lCopy];

      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }

  v22.receiver = self;
  v22.super_class = TSUURLTracker;
  v15 = [(TSUURLTracker *)&v22 init];
  if (v15)
  {
    v16 = [[TSUURLTrackerLogContext alloc] initWithURLTracker:v15];
    logContext = v15->_logContext;
    v15->_logContext = v16;

    v18 = [[TSUURLTrackerFilePresenter alloc] initWithSandboxedURL:lCopy bookmarkData:dataCopy urlTracker:v15 logContext:v15->_logContext delegate:delegateCopy];
    filePresenter = v15->_filePresenter;
    v15->_filePresenter = v18;

    if (TSUURLTrackerCat_init_token != -1)
    {
      sub_2771146BC();
    }

    [(TSUURLTracker *)v15 resume];
    bookmarkDataIfAvailable = [(TSUURLTracker *)v15 bookmarkDataIfAvailable];

    if (!bookmarkDataIfAvailable)
    {
      [(TSUURLTracker *)v15 bookmarkData];
    }
  }

  return v15;
}

- (TSUURLTracker)initWithURLWrapper:(id)wrapper
{
  sandboxedURL = [wrapper sandboxedURL];
  v5 = [(TSUURLTracker *)self initWithSandboxedURL:sandboxedURL bookmarkData:0 delegate:0];

  return v5;
}

- (TSUURLTracker)initWithURLWrapper:(id)wrapper delegate:(id)delegate
{
  delegateCopy = delegate;
  sandboxedURL = [wrapper sandboxedURL];
  v8 = [(TSUURLTracker *)self initWithSandboxedURL:sandboxedURL bookmarkData:0 delegate:delegateCopy];

  return v8;
}

- (void)dealloc
{
  v3 = self->_filePresenter;
  p_filePresenterQueue = [(TSUURLTracker *)self p_filePresenterQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770CB9DC;
  block[3] = &unk_27A7023D8;
  v8 = v3;
  v5 = v3;
  dispatch_async(p_filePresenterQueue, block);

  v6.receiver = self;
  v6.super_class = TSUURLTracker;
  [(TSUURLTracker *)&v6 dealloc];
}

- (void)pause
{
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_2771146E4();
  }

  filePresenter = self->_filePresenter;

  MEMORY[0x2821F9670](filePresenter, sel_pauseForEnteringBackground_);
}

- (void)resume
{
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_2771146F8();
  }

  filePresenter = self->_filePresenter;

  MEMORY[0x2821F9670](filePresenter, sel_startOrResumeForEnteringForeground_);
}

- (void)stop
{
  if (TSUURLTrackerCat_init_token != -1)
  {
    sub_27711470C();
  }

  filePresenter = self->_filePresenter;

  [(TSUURLTrackerFilePresenter *)filePresenter stop];
}

- (id)p_filePresenterQueue
{
  if (qword_280A63DA8 != -1)
  {
    sub_277114720();
  }

  v3 = qword_280A63DA0;

  return v3;
}

- (NSURL)URL
{
  v2 = [(TSUURLTrackerFilePresenter *)self->_filePresenter sandboxedURLWithOptions:1 error:0];
  v3 = [v2 URL];

  return v3;
}

- (NSURL)URLIfAvailable
{
  sandboxedURLIfAvailable = [(TSUURLTracker *)self sandboxedURLIfAvailable];
  uRLIfAvailable = [sandboxedURLIfAvailable URLIfAvailable];

  return uRLIfAvailable;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  filePresenters = [MEMORY[0x277CCA9E8] filePresenters];
  v7 = [filePresenters containsObject:self->_filePresenter];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p started=%@ filePresenter=%@>", v5, self, v8, self->_filePresenter];

  return v9;
}

@end