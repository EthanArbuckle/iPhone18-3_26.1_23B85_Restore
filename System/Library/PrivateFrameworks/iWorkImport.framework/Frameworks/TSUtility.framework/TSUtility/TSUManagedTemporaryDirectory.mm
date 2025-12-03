@interface TSUManagedTemporaryDirectory
- (TSUManagedTemporaryDirectory)init;
- (TSUManagedTemporaryDirectory)initWithURL:(id)l;
- (void)dealloc;
@end

@implementation TSUManagedTemporaryDirectory

- (TSUManagedTemporaryDirectory)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v10.receiver = self;
    v10.super_class = TSUManagedTemporaryDirectory;
    v5 = [(TSUManagedTemporaryDirectory *)&v10 init];
    if (v5)
    {
      v6 = [lCopy copy];
      URL = v5->_URL;
      v5->_URL = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TSUManagedTemporaryDirectory)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUManagedTemporaryDirectory init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectoryManager.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:30 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUManagedTemporaryDirectory init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)dealloc
{
  if (TSUManagedTemporaryLogCat_init_token != -1)
  {
    sub_27711510C();
  }

  if ([(NSURL *)self->_URL checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    URL = self->_URL;
    v7 = 0;
    v5 = [defaultManager removeItemAtURL:URL error:&v7];

    if ((v5 & 1) == 0 && TSUManagedTemporaryLogCat_init_token != -1)
    {
      sub_277115120();
    }
  }

  v6.receiver = self;
  v6.super_class = TSUManagedTemporaryDirectory;
  [(TSUManagedTemporaryDirectory *)&v6 dealloc];
}

@end