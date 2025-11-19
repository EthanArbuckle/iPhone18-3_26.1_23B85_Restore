@interface SFUFileInputStream
- (BOOL)p_configureWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (BOOL)p_configureWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4;
- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (id)p_init;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUFileInputStream

- (id)p_init
{
  v3.receiver = self;
  v3.super_class = SFUFileInputStream;
  result = [(SFUFileInputStream *)&v3 init];
  if (result)
  {
    *(result + 2) = -1;
  }

  return result;
}

- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  v8 = [(SFUFileInputStream *)self p_init];
  v9 = v8;
  if (v8 && ![(SFUFileInputStream *)v8 p_configureWithPath:a3 offset:a4 length:a5])
  {

    return 0;
  }

  return v9;
}

- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4
{
  v6 = [(SFUFileInputStream *)self p_init];
  if (v6)
  {
    v7 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:a3, 0];
    if (!v7 || (v8 = -[NSDictionary objectForKey:](v7, "objectForKey:", NSFileSize)) == 0 || (v9 = [v8 unsignedLongLongValue], v9 < a4) || !-[SFUFileInputStream p_configureWithPath:offset:length:](v6, "p_configureWithPath:offset:length:", a3, a4, &v9[-a4]))
    {

      return 0;
    }
  }

  return v6;
}

- (BOOL)p_configureWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  v5 = (a5 | a4) < 0 || (a5 ^ 0x7FFFFFFFFFFFFFFFLL) < a4;
  v6 = !v5;
  if (v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Offset and/or length invalid."];
  }

  else
  {
    self->mFd = a3;
    self->mStartOffset = a4;
    self->mCurrentOffset = a4;
    self->mEndOffset = a5 + a4;
  }

  return v6;
}

- (BOOL)p_configureWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  if (!a3 || ![+[NSFileManager isReadableFileAtPath:"isReadableFileAtPath:"]
  {
    return 0;
  }

  v9 = SFUOpen(a3, 0, 0);

  return [(SFUFileInputStream *)self p_configureWithFileDescriptor:v9 offset:a4 length:a5];
}

- (void)dealloc
{
  [(SFUFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = SFUFileInputStream;
  [(SFUFileInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  mFd = self->mFd;
  if (mFd == -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160988();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016099C();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileInputStream readToBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileInputStream.m"] lineNumber:121 isFatal:0 description:"Using a closed stream"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mFd = self->mFd;
  }

  mCurrentOffset = self->mCurrentOffset;
  if (self->mEndOffset - mCurrentOffset < a4)
  {
    a4 = self->mEndOffset - mCurrentOffset;
  }

  v9 = a4;
  do
  {
    v10 = pread(mFd, a3, v9, mCurrentOffset);
    v11 = v10;
    if (v10 < 0 || v9 && !v10)
    {
      [NSException sfu_errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v11;
    a3 += v11;
    v9 -= v11;
  }

  while (v9);
  self->mCurrentOffset += a4;
  return a4;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->mFd == -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160A24();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160A38();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileInputStream seekToOffset:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileInputStream.m"] lineNumber:139 isFatal:0 description:"Using a closed stream"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = self->mStartOffset + a3;
  mEndOffset = self->mEndOffset;
  if (v5 > mEndOffset)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160AC0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160AE8();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileInputStream seekToOffset:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileInputStream.m"] lineNumber:142 isFatal:0 description:"Offset is too large."];
    +[TSUAssertionHandler logBacktraceThrottled];
    mEndOffset = self->mEndOffset;
  }

  if (v5 < mEndOffset)
  {
    mEndOffset = v5;
  }

  self->mCurrentOffset = mEndOffset;
}

- (void)disableSystemCaching
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (fcntl(mFd, 48, 1) == -1)
    {
      [NSException sfu_errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
    }

    self->mIsCachingDisabled = 1;
  }
}

- (void)enableSystemCaching
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (fcntl(mFd, 48, 0) == -1)
    {
      [NSException sfu_errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
    }

    self->mIsCachingDisabled = 0;
  }
}

- (void)close
{
  mFd = self->mFd;
  if (mFd != -1)
  {
    if (self->mIsCachingDisabled)
    {
      fcntl(mFd, 48, 0);
      self->mIsCachingDisabled = 0;
      mFd = self->mFd;
    }

    if (close(mFd))
    {
      v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100160B70();
      }

      v5 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        v6 = self->mFd;
        v7 = *__error();
        *buf = 67110658;
        v9 = v4;
        v10 = 2082;
        v11 = "[SFUFileInputStream close]";
        v12 = 2082;
        v13 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileInputStream.m";
        v14 = 1024;
        v15 = 178;
        v16 = 2048;
        v17 = self;
        v18 = 1024;
        v19 = v6;
        v20 = 1024;
        v21 = v7;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to close SFUFileInputStream %p, fd = %d, errno = %d", buf, 0x38u);
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUFileInputStream close]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUFileInputStream.m"] lineNumber:178 isFatal:0 description:"Failed to close SFUFileInputStream %p, fd = %d, errno = %d", self, self->mFd, *__error()];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    self->mFd = -1;
  }
}

@end