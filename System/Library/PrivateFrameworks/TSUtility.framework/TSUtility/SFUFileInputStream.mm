@interface SFUFileInputStream
- (SFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length;
- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset;
- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)disableSystemCaching;
- (void)enableSystemCaching;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation SFUFileInputStream

- (SFUFileInputStream)initWithFileDescriptor:(int)descriptor offset:(int64_t)offset length:(int64_t)length
{
  selfCopy = self;
  self->mFd = -1;
  v10.receiver = self;
  v10.super_class = SFUFileInputStream;
  if (![(SFUFileInputStream *)&v10 init])
  {
    return 0;
  }

  if ((length | offset) < 0 || (length ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Offset and/or length invalid."];
  }

  selfCopy->mFd = descriptor;
  selfCopy->mStartOffset = offset;
  selfCopy->mCurrentOffset = offset;
  selfCopy->mEndOffset = length + offset;
  return selfCopy;
}

- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset length:(int64_t)length
{
  self->mFd = -1;
  if (path && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    v9 = SFUOpen(path, 0, 0);

    return [(SFUFileInputStream *)self initWithFileDescriptor:v9 offset:offset length:length];
  }

  else
  {

    return 0;
  }
}

- (SFUFileInputStream)initWithPath:(id)path offset:(int64_t)offset
{
  self->mFd = -1;
  v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v7 && (v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]]) != 0 && (v9 = objc_msgSend(v8, "unsignedLongLongValue"), v9 >= offset))
  {

    return [(SFUFileInputStream *)self initWithPath:path offset:offset length:v9 - offset];
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

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
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
  if (self->mEndOffset - mCurrentOffset < size)
  {
    size = self->mEndOffset - mCurrentOffset;
  }

  sizeCopy = size;
  do
  {
    v12 = pread(mFd, buffer, sizeCopy, mCurrentOffset);
    v13 = v12;
    if (v12 < 0 || sizeCopy && !v12)
    {
      [MEMORY[0x277CBEAD8] errnoRaise:@"SFUPReadError" format:@"Could not pread"];
    }

    mCurrentOffset += v13;
    buffer += v13;
    sizeCopy -= v13;
  }

  while (sizeCopy);
  self->mCurrentOffset += size;
  return size;
}

- (void)seekToOffset:(int64_t)offset
{
  if (self->mFd == -1)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUFileInputStream seekToOffset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUFileInputStream.m"), 132, @"Using a closed stream"}];
  }

  v7 = self->mStartOffset + offset;
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