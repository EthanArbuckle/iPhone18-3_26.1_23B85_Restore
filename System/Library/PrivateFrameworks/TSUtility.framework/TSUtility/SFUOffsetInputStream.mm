@interface SFUOffsetInputStream
- (SFUOffsetInputStream)initWithInputStream:(id)stream;
- (SFUOffsetInputStream)initWithInputStream:(id)stream initialOffset:(int64_t)offset;
- (int64_t)offset;
- (void)dealloc;
@end

@implementation SFUOffsetInputStream

- (SFUOffsetInputStream)initWithInputStream:(id)stream
{
  offset = [stream offset];

  return [(SFUOffsetInputStream *)self initWithInputStream:stream initialOffset:offset];
}

- (SFUOffsetInputStream)initWithInputStream:(id)stream initialOffset:(int64_t)offset
{
  v6 = [(SFUOffsetInputStream *)self init];
  if (v6)
  {
    streamCopy = stream;
    v6->mInputStream = streamCopy;
    v6->mInitialOffset = offset;
    [(SFUInputStream *)streamCopy seekToOffset:offset];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUOffsetInputStream;
  [(SFUOffsetInputStream *)&v3 dealloc];
}

- (int64_t)offset
{
  offset = [(SFUInputStream *)self->mInputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (offset < mInitialOffset)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUOffsetInputStream offset]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUOffsetInputStream.m"), 44, @"SFUOffsetInputStream points before its offset"}];
    mInitialOffset = self->mInitialOffset;
  }

  return offset - mInitialOffset;
}

@end