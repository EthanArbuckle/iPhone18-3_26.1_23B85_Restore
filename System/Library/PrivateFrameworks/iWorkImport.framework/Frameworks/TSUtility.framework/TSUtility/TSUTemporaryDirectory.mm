@interface TSUTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (NSString)path;
- (NSURL)URL;
- (TSUTemporaryDirectory)init;
- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (id)initForWritingToURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)removeDirectory;
@end

@implementation TSUTemporaryDirectory

- (TSUTemporaryDirectory)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectory.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:28 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUTemporaryDirectory init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  v13.receiver = self;
  v13.super_class = TSUTemporaryDirectory;
  v10 = [(TSUTemporaryDirectory *)&v13 init];
  v11 = v10;
  if (v10 && ![(TSUTemporaryDirectory *)v10 _createDirectoryWithSignature:signatureCopy subdirectory:subdirectoryCopy error:error])
  {

    v11 = 0;
  }

  return v11;
}

- (id)initForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = TSUTemporaryDirectory;
  v7 = [(TSUTemporaryDirectory *)&v13 init];
  if (v7)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

    path = [v9 path];
    path = v7->_path;
    v7->_path = path;

    if (!v9)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_path && !self->_leak)
  {
    [(TSUTemporaryDirectory *)self removeDirectory];
  }

  v3.receiver = self;
  v3.super_class = TSUTemporaryDirectory;
  [(TSUTemporaryDirectory *)&v3 dealloc];
}

- (NSString)path
{
  path = self->_path;
  if (!path)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory path]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:76 isFatal:0 description:"Directory has already been removed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    path = self->_path;
  }

  return path;
}

- (NSURL)URL
{
  v2 = MEMORY[0x277CBEBC0];
  path = [(TSUTemporaryDirectory *)self path];
  v4 = [v2 fileURLWithPath:path isDirectory:1];

  return v4;
}

- (void)removeDirectory
{
  if (self->_path)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = self->_path;
    v12 = 0;
    v5 = [defaultManager removeItemAtPath:path error:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
    }

    else
    {
      tsu_isNoSuchFileError = [v6 tsu_isNoSuchFileError];

      if ((tsu_isNoSuchFileError & 1) == 0 && TSUDefaultCat_init_token != -1)
      {
        sub_277112F94();
      }
    }

    v11 = self->_path;
    self->_path = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectory removeDirectory]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:97 isFatal:0 description:"Directory has already been removed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  if (signatureCopy)
  {
    v10 = signatureCopy;
  }

  else
  {
    v10 = &stru_28862C2A0;
  }

  if (qword_280A63AE8 != -1)
  {
    sub_277112FBC();
  }

  v11 = [qword_280A63AE0 stringByAppendingFormat:@"_%@_%d_%d", v10, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(dword_280A63AF0, 1u) + 1];
  if ([v11 length] >= 0x100)
  {
    v12 = [v11 substringToIndex:255];

    v11 = v12;
  }

  v13 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v13)
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
  }

  else
  {
    NSTemporaryDirectory();
  }
  v14 = ;
  v15 = v14;
  if (subdirectoryCopy)
  {
    v16 = [v14 stringByAppendingPathComponent:subdirectoryCopy];

    v15 = v16;
  }

  v17 = [v15 stringByAppendingPathComponent:v11];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v19 = [defaultManager createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  objc_storeStrong(&self->_path, v17);
  if (error && (v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
      *error = v22;
    }
  }

  return v19;
}

@end