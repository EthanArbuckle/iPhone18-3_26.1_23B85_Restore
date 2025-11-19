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
    [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Size overflow."];
  }

  v9 = a4 + a3;
  if (a5)
  {
    if (v9 > a5)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipRecordInputStream dataAtOffset:size:end:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipArchive.m"], 692, 0, "End offset is too small.");
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
    v12 = [(SFUBufferedInputStream *)self->mInput readToOwnBuffer:&self->mBuffer size:a5 - a3];
    if (v12 < a4)
    {
      [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Could not read Zip record."];
    }

    self->mBufferStart = a3;
    self->mBufferEnd = v12 + a3;
    mBufferStart = a3;
  }

  return &self->mBuffer[a3 - mBufferStart];
}

@end