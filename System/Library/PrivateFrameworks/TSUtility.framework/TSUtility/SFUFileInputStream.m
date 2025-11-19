@interface SFUFileInputStream
- (SFUFileInputStream)initWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4;
- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUFileInputStream

- (SFUFileInputStream)initWithFileDescriptor:(int)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  v8 = self;
  self->mFd = -1;
  v10.receiver = self;
  v10.super_class = SFUFileInputStream;
  if (![(SFUFileInputStream *)&v10 init])
  {
    return 0;
  }

  if ((a5 | a4) < 0 || (a5 ^ 0x7FFFFFFFFFFFFFFFLL) < a4)
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Offset and/or length invalid."];
  }

  v8->mFd = a3;
  v8->mStartOffset = a4;
  v8->mCurrentOffset = a4;
  v8->mEndOffset = a5 + a4;
  return v8;
}

- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4 length:(int64_t)a5
{
  self->mFd = -1;
  if (a3 && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    v9 = SFUOpen(a3, 0, 0);

    return [(SFUFileInputStream *)self initWithFileDescriptor:v9 offset:a4 length:a5];
  }

  else
  {

    return 0;
  }
}

- (SFUFileInputStream)initWithPath:(id)a3 offset:(int64_t)a4
{
  self->mFd = -1;
  v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v7 && (v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]]) != 0 && (v9 = objc_msgSend(v8, "unsignedLongLongValue"), v9 >= a4))
  {

    return [(SFUFileInputStream *)self initWithPath:a3 offset:a4 length:v9 - a4];
  }

  else
  {

    return 0;
  }
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
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream readToBuffer:size:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileInputStream.m"), 111, @"Using a closed stream"}];
    mFd = self->mFd;
  }

  mCurrentOffset = self->mCurrentOffset;
  if (self->mEndOffset - mCurrentOffset < a4)
  {
    a4 = self->mEndOffset - mCurrentOffset;
  }

  v11 = a4;
  do
  {
    v12 = pread(mFd, a3, v11, mCurrentOffset);
    v13 = v12;
    if (v12 < 0 || v11 && !v12)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v13;
    a3 += v13;
    v11 -= v13;
  }

  while (v11);
  self->mCurrentOffset += a4;
  return a4;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->mFd == -1)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileInputStream.m"), 132, @"Using a closed stream"}];
  }

  v7 = self->mStartOffset + a3;
  mEndOffset = self->mEndOffset;
  if (v7 > mEndOffset)
  {
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileInputStream.m"), 135, @"Offset is too large."}];
    mEndOffset = self->mEndOffset;
  }

  if (v7 < mEndOffset)
  {
    mEndOffset = v7;
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
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFcntlError" format:@"Could not set F_NOCACHE on read stream."];
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
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUFcntlError" format:@"Could not unset F_NOCACHE on read stream."];
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
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream close]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileInputStream.m"), 180, @"Failed to close SFUFileInputStream %p, fd = %d, errno = %d", self, self->mFd, *__error()}];
    }

    self->mFd = -1;
  }
}

@end