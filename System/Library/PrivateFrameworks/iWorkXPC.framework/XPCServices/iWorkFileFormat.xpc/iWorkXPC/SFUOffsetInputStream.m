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

  return v3 - mInitialOffset;
}

@end