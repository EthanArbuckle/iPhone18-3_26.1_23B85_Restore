@interface SFUZipRecordInputStream
- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end;
- (void)dealloc;
@end

@implementation SFUZipRecordInputStream

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUZipRecordInputStream;
  [(SFUZipRecordInputStream *)&v3 dealloc];
}

- (const)dataAtOffset:(int64_t)offset size:(unint64_t)size end:(int64_t)end
{
  if (offset < 0 || (size ^ 0x7FFFFFFFFFFFFFFFLL) < offset)
  {
    [NSException raise:@"SFUZipArchiveError" format:@"Size overflow."];
  }

  v9 = size + offset;
  if (end)
  {
    if (v9 > end)
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
    end = size + offset;
  }

  mBufferStart = self->mBufferStart;
  if (mBufferStart > offset || v9 > self->mBufferEnd)
  {
    [(SFUBufferedInputStream *)self->mInput seekToOffset:offset];
    offset = [(SFUBufferedInputStream *)self->mInput readToOwnBuffer:&self->mBuffer size:end - offset];
    if (offset < size)
    {
      [NSException raise:@"SFUZipArchiveError" format:@"Could not read Zip record."];
    }

    self->mBufferStart = offset;
    self->mBufferEnd = offset + offset;
    mBufferStart = offset;
  }

  return &self->mBuffer[offset - mBufferStart];
}

@end