@interface SFUFileOutputStream
- (SFUFileOutputStream)initWithPath:(id)a3;
- (int64_t)offset;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
@end

@implementation SFUFileOutputStream

- (SFUFileOutputStream)initWithPath:(id)a3
{
  v4 = [(SFUFileOutputStream *)self init];
  if (v4)
  {
    unlink([a3 fileSystemRepresentation]);
    v4->mFile = SFUFileOpen(a3, "w");
    v4->mPath = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
  }

  v4.receiver = self;
  v4.super_class = SFUFileOutputStream;
  [(SFUFileOutputStream *)&v4 dealloc];
}

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F1E8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F1FC();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileOutputStream writeBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileOutputStream.m"] lineNumber:55 isFatal:0 description:"Using a closed stream"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  if (fwrite(a3, 1uLL, a4, mFile) != a4)
  {
    [NSException sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
  }
}

- (int64_t)offset
{
  mFile = self->mFile;
  if (!mFile)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F284();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F298();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileOutputStream offset]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileOutputStream.m"] lineNumber:60 isFatal:0 description:"Using a closed stream"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  v4 = ftello(mFile);
  if (v4 == -1)
  {
    [NSException sfu_errnoRaise:@"SFUFileTellError" format:@"Could not tell"];
  }

  return v4;
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  mFile = self->mFile;
  if (!mFile)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015F320();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F334();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileOutputStream seekToOffset:whence:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileOutputStream.m"] lineNumber:70 isFatal:0 description:"Using a closed stream"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mFile = self->mFile;
  }

  if (fseeko(mFile, a3, a4))
  {
    [NSException sfu_errnoRaise:@"SFUFileSeekError" format:@"Could not seek"];
  }
}

- (void)close
{
  mFile = self->mFile;
  if (mFile)
  {
    fclose(mFile);
    self->mFile = 0;
  }
}

@end