@interface TSUURLTracker
- (NSString)description;
- (NSURL)URL;
- (NSURL)URLIfAvailable;
- (TSUURLTracker)init;
- (TSUURLTracker)initWithSandboxedURL:(id)a3 bookmarkData:(id)a4 delegate:(id)a5;
- (TSUURLTracker)initWithURLWrapper:(id)a3;
- (TSUURLTracker)initWithURLWrapper:(id)a3 delegate:(id)a4;
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

- (TSUURLTracker)initWithSandboxedURL:(id)a3 bookmarkData:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 URL];
    v12 = [v11 isFileURL];

    if ((v12 & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUURLTracker initWithSandboxedURL:bookmarkData:delegate:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUURLTracker.m"];
      [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:101 isFatal:0 description:"URL tracker should not be initialized with a non-file URL. URL=%@", v8];

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

    v18 = [[TSUURLTrackerFilePresenter alloc] initWithSandboxedURL:v8 bookmarkData:v9 urlTracker:v15 logContext:v15->_logContext delegate:v10];
    filePresenter = v15->_filePresenter;
    v15->_filePresenter = v18;

    if (TSUURLTrackerCat_init_token != -1)
    {
      sub_2771146BC();
    }

    [(TSUURLTracker *)v15 resume];
    v20 = [(TSUURLTracker *)v15 bookmarkDataIfAvailable];

    if (!v20)
    {
      [(TSUURLTracker *)v15 bookmarkData];
    }
  }

  return v15;
}

- (TSUURLTracker)initWithURLWrapper:(id)a3
{
  v4 = [a3 sandboxedURL];
  v5 = [(TSUURLTracker *)self initWithSandboxedURL:v4 bookmarkData:0 delegate:0];

  return v5;
}

- (TSUURLTracker)initWithURLWrapper:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = [a3 sandboxedURL];
  v8 = [(TSUURLTracker *)self initWithSandboxedURL:v7 bookmarkData:0 delegate:v6];

  return v8;
}

- (void)dealloc
{
  v3 = self->_filePresenter;
  v4 = [(TSUURLTracker *)self p_filePresenterQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770CB9DC;
  block[3] = &unk_27A7023D8;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

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
  v2 = [(TSUURLTracker *)self sandboxedURLIfAvailable];
  v3 = [v2 URLIfAvailable];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCA9E8] filePresenters];
  v7 = [v6 containsObject:self->_filePresenter];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p started=%@ filePresenter=%@>", v5, self, v8, self->_filePresenter];

  return v9;
}

@end