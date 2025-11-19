@interface SFUOffsetInputStream
- (SFUOffsetInputStream)initWithInputStream:(id)a3;
- (SFUOffsetInputStream)initWithInputStream:(id)a3 initialOffset:(int64_t)a4;
- (int64_t)offset;
- (void)dealloc;
@end

@implementation SFUOffsetInputStream

- (SFUOffsetInputStream)initWithInputStream:(id)a3
{
  v5 = [a3 offset];

  return [(SFUOffsetInputStream *)self initWithInputStream:a3 initialOffset:v5];
}

- (SFUOffsetInputStream)initWithInputStream:(id)a3 initialOffset:(int64_t)a4
{
  v6 = [(SFUOffsetInputStream *)self init];
  if (v6)
  {
    v7 = a3;
    v6->mInputStream = v7;
    v6->mInitialOffset = a4;
    [(SFUInputStream *)v7 seekToOffset:a4];
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
  v3 = [(SFUInputStream *)self->mInputStream offset];
  mInitialOffset = self->mInitialOffset;
  if (v3 < mInitialOffset)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUOffsetInputStream offset]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUOffsetInputStream.m"), 44, @"SFUOffsetInputStream points before its offset"}];
    mInitialOffset = self->mInitialOffset;
  }

  return v3 - mInitialOffset;
}

@end