@interface SFUOffsetOutputStream
- (SFUOffsetOutputStream)initWithOutputStream:(id)stream;
- (id)inputStream;
- (int64_t)offset;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
@end

@implementation SFUOffsetOutputStream

- (SFUOffsetOutputStream)initWithOutputStream:(id)stream
{
  v4 = [(SFUOffsetOutputStream *)self init];
  if (v4)
  {
    v4->mOutputStream = stream;
    v4->mInitialOffset = [stream offset];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUOffsetOutputStream;
  [(SFUOffsetOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  if (!whence)
  {
    offset += self->mInitialOffset;
  }

  [(SFUOutputStream *)self->mOutputStream seekToOffset:offset whence:?];
}

- (int64_t)offset
{
  offset = [(SFUOutputStream *)self->mOutputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (offset < mInitialOffset)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUOffsetOutputStream offset]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUOffsetOutputStream.m"), 59, @"SFUOffsetOutputStream points before its offset"}];
    mInitialOffset = self->mInitialOffset;
  }

  return offset - mInitialOffset;
}

- (id)inputStream
{
  if (![(SFUOffsetOutputStream *)self canCreateInputStream])
  {
    return 0;
  }

  v3 = [[SFUOffsetInputStream alloc] initWithInputStream:[(SFUOutputStream *)self->mOutputStream inputStream] initialOffset:self->mInitialOffset];

  return v3;
}

@end