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
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUOffsetInputStream offset]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUOffsetInputStream.m"], 42, 0, "SFUOffsetInputStream points before its offset");
    +[TSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return v3 - mInitialOffset;
}

@end