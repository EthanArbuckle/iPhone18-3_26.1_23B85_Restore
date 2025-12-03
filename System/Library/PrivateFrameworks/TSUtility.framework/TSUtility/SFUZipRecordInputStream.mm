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
    [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Size overflow."];
  }

  v9 = size + offset;
  if (end)
  {
    if (v9 > end)
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipRecordInputStream dataAtOffset:size:end:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUZipArchive.m"), 770, @"End offset is too small."}];
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
      [MEMORY[0x277CBEAD8] raise:@"SFUZipArchiveError" format:@"Could not read Zip record."];
    }

    self->mBufferStart = offset;
    self->mBufferEnd = offset + offset;
    mBufferStart = offset;
  }

  return &self->mBuffer[offset - mBufferStart];
}

@end