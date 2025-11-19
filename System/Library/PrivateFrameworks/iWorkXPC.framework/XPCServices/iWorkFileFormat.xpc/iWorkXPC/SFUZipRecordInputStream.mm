@interface SFUZipRecordInputStream
- (const)dataAtOffset:(int64_t)a3 size:(unint64_t)a4 end:(int64_t)a5;
- (void)dealloc;
@end

@implementation SFUZipRecordInputStream

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipRecordInputStream;
  [(SFUZipRecordInputStream *)&v3 dealloc];
}

- (const)dataAtOffset:(int64_t)a3 size:(unint64_t)a4 end:(int64_t)a5
{
  if (a3 < 0 || (a4 ^ 0x7FFFFFFFFFFFFFFFLL) < a3)
  {
    [NSException raise:@"SFUZipArchiveError" format:@"Size overflow."];
  }

  v9 = a4 + a3;
  if (a5)
  {
    if (v9 > a5)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015F5E4();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015F5F8();
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUZipRecordInputStream dataAtOffset:size:end:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUZipArchive.m"] lineNumber:692 isFatal:0 description:"End offset is too small."];
      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }

  else
  {
    a5 = a4 + a3;
  }

  mBufferStart = self->mBufferStart;
  if (mBufferStart > a3 || v9 > self->mBufferEnd)
  {
    [(SFUBufferedInputStream *)self->mInput seekToOffset:a3];
    v11 = [(SFUBufferedInputStream *)self->mInput readToOwnBuffer:&self->mBuffer size:a5 - a3];
    if (v11 < a4)
    {
      [NSException raise:@"SFUZipArchiveError" format:@"Could not read Zip record."];
    }

    self->mBufferStart = a3;
    self->mBufferEnd = v11 + a3;
    mBufferStart = a3;
  }

  return &self->mBuffer[a3 - mBufferStart];
}

@end