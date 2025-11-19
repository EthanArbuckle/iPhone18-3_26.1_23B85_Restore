@interface SFUFileInputStream
- (BOOL)p_configureWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (BOOL)p_configureWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (SFUFileInputStream)initWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5;
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

- (SFUFileInputStream)initWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  v7 = *&a3;
  v8 = [(SFUFileInputStream *)self p_init];
  v9 = v8;
  if (v8 && ![(SFUFileInputStream *)v8 p_configureWithFileDescriptor:v7 offset:a4 length:a5])
  {

    return 0;
  }

  return v9;
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
    v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (!v7 || (v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]]) == 0 || (v9 = objc_msgSend(v8, "unsignedLongLongValue"), v9 < a4) || !-[SFUFileInputStream p_configureWithPath:offset:length:](v6, "p_configureWithPath:offset:length:", a3, a4, v9 - a4))
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
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Offset and/or length invalid."];
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
  if (!a3 || ![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  v9 = sub_27709E424(a3, 0, 0);

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
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream readToBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileInputStream.m"], 121, 0, "Using a closed stream");
    +[TSUAssertionHandler logBacktraceThrottled];
    mFd = self->mFd;
  }

  mCurrentOffset = self->mCurrentOffset;
  if (self->mEndOffset - mCurrentOffset < a4)
  {
    a4 = self->mEndOffset - mCurrentOffset;
  }

  v10 = a4;
  do
  {
    v11 = pread(mFd, a3, v10, mCurrentOffset);
    v12 = v11;
    if (v11 < 0 || v10 && !v11)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v12;
    a3 += v12;
    v10 -= v12;
  }

  while (v10);
  self->mCurrentOffset += a4;
  return a4;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->mFd == -1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileInputStream.m"], 139, 0, "Using a closed stream");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6 = self->mStartOffset + a3;
  mEndOffset = self->mEndOffset;
  if (v6 > mEndOffset)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileInputStream.m"], 142, 0, "Offset is too large.");
    +[TSUAssertionHandler logBacktraceThrottled];
    mEndOffset = self->mEndOffset;
  }

  if (v6 < mEndOffset)
  {
    mEndOffset = v6;
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
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
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
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
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
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream close]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileInputStream.m"], 178, 0, "Failed to close SFUFileInputStream %p, fd = %d, errno = %d", self, self->mFd, *__error());
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    self->mFd = -1;
  }
}

@end