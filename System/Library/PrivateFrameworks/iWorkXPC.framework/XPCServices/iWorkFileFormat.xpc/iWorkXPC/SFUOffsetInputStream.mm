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
    v5 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015A0A4();
    }

    v6 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015A0B8(v5, v6);
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUOffsetInputStream offset]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUOffsetInputStream.m"] lineNumber:42 isFatal:0 description:"SFUOffsetInputStream points before its offset"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mInitialOffset = self->mInitialOffset;
  }

  return offset - mInitialOffset;
}

@end