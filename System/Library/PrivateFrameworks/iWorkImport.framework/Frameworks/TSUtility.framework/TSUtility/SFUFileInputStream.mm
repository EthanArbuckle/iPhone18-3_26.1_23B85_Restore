@interface SFUFileInputStream
- (BOOL)p_configureWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length;
- (BOOL)p_configureWithPath:(id)path offset:(int64_t)offset length:(int64_t)length;
- (SFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length;
- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset;
- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length;
- (id)p_init;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
- (void)seekToOffset:(int64_t)offset;
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

- (SFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length
{
  v7 = *&descriptor;
  p_init = [(SFUFileInputStream *)self p_init];
  v9 = p_init;
  if (p_init && ![(SFUFileInputStream *)p_init p_configureWithFileDescriptor:v7 offset:offset length:length])
  {

    return 0;
  }

  return v9;
}

- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length
{
  p_init = [(SFUFileInputStream *)self p_init];
  v9 = p_init;
  if (p_init && ![(SFUFileInputStream *)p_init p_configureWithPath:path offset:offset length:length])
  {

    return 0;
  }

  return v9;
}

- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset
{
  p_init = [(SFUFileInputStream *)self p_init];
  if (p_init)
  {
    v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (!v7 || (v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]]) == 0 || (v9 = objc_msgSend(v8, "unsignedLongLongValue"), v9 < offset) || !-[SFUFileInputStream p_configureWithPath:offset:length:](p_init, "p_configureWithPath:offset:length:", path, offset, v9 - offset))
    {

      return 0;
    }
  }

  return p_init;
}

- (BOOL)p_configureWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length
{
  v5 = (length | offset) < 0 || (length ^ 0x7FFFFFFFFFFFFFFFLL) < offset;
  v6 = !v5;
  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Offset and/or length invalid."];
  }

  else
  {
    self->mFd = descriptor;
    self->mStartOffset = offset;
    self->mCurrentOffset = offset;
    self->mEndOffset = length + offset;
  }

  return v6;
}

- (BOOL)p_configureWithPath:(id)path offset:(int64_t)offset length:(int64_t)length
{
  if (!path || ![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  v9 = sub_27709E424(path, 0, 0);

  return [(SFUFileInputStream *)self p_configureWithFileDescriptor:v9 offset:offset length:length];
}

- (void)dealloc
{
  [(SFUFileInputStream *)self close];
  v3.receiver = self;
  v3.super_class = SFUFileInputStream;
  [(SFUFileInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
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
  if (self->mEndOffset - mCurrentOffset < size)
  {
    size = self->mEndOffset - mCurrentOffset;
  }

  sizeCopy = size;
  do
  {
    v11 = pread(mFd, buffer, sizeCopy, mCurrentOffset);
    v12 = v11;
    if (v11 < 0 || sizeCopy && !v11)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v12;
    buffer += v12;
    sizeCopy -= v12;
  }

  while (sizeCopy);
  self->mCurrentOffset += size;
  return size;
}

- (void)seekToOffset:(int64_t)offset
{
  if (self->mFd == -1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUFileInputStream.m"], 139, 0, "Using a closed stream");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6 = self->mStartOffset + offset;
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