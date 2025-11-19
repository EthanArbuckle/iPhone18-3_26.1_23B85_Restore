@interface SFUZipInflateInputStream
- (SFUZipInflateInputStream)initWithInput:(id)a3;
- (SFUZipInflateInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 uncompressedSize:(unint64_t)a5 crc:(unint64_t)a6 dataRepresentation:(id)a7;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
- (void)setupInflateStream;
@end

@implementation SFUZipInflateInputStream

- (SFUZipInflateInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 uncompressedSize:(unint64_t)a5 crc:(unint64_t)a6 dataRepresentation:(id)a7
{
  v12 = [(SFUZipInflateInputStream *)self init];
  v13 = v12;
  if (v12)
  {
    *&v12->mReachedEnd = 256;
    v12->mOffset = a3;
    v12->mCheckCrc = a6;
    v12->mCalculatedCrc = crc32(0, 0, 0);
    v13->mInput = [a7 bufferedInputStreamWithOffset:a3 length:a4 - a3];
    v14 = 0x40000;
    if (a5 < 0x40000)
    {
      v14 = a5;
    }

    v13->mOutBufferSize = v14;
    [(SFUZipInflateInputStream *)v13 setupInflateStream];
  }

  return v13;
}

- (SFUZipInflateInputStream)initWithInput:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFUZipInflateInputStream;
  v4 = [(SFUZipInflateInputStream *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->mReachedEnd = 0;
    v4->mOffset = 0;
    v4->mInput = [[SFUBufferedInputStream alloc] initWithStream:a3];
    v5->mOutBufferSize = 0x40000;
    [(SFUZipInflateInputStream *)v5 setupInflateStream];
  }

  return v5;
}

- (void)dealloc
{
  inflateEnd(&self->mStream);

  free(self->mOutBuffer);
  v3.receiver = self;
  v3.super_class = SFUZipInflateInputStream;
  [(SFUZipInflateInputStream *)&v3 dealloc];
}

- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4
{
  mOutBuffer = self->mOutBuffer;
  if (!mOutBuffer)
  {
    mOutBuffer = malloc_type_malloc(self->mOutBufferSize, 0x100004077774924uLL);
    self->mOutBuffer = mOutBuffer;
    if (!mOutBuffer)
    {
      [SFUZipException raise:@"SFUZipInflateError" format:@"Could not create inflate buffer"];
      mOutBuffer = self->mOutBuffer;
    }
  }

  *a3 = mOutBuffer;
  v8 = self->mOutBuffer;
  if (a4 - 1 >= self->mOutBufferSize)
  {
    mOutBufferSize = self->mOutBufferSize;
  }

  else
  {
    mOutBufferSize = a4;
  }

  return [(SFUZipInflateInputStream *)self readToBuffer:v8 size:mOutBufferSize];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v4 = a4;
  if (a4 >= 0xFFFFFFFF)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream readToBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 117, 0, "overflow in readToBuffer:");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->mStream.avail_out = v4;
  self->mStream.next_out = a3;
  next_out = a3;
  if (v4)
  {
    LODWORD(v9) = 0;
    do
    {
      if (self->mStream.avail_in)
      {
        if (v9)
        {
          break;
        }
      }

      else
      {
        if (v9 || self->mReachedEnd)
        {
          break;
        }

        v10 = [(SFUBufferedInputStream *)self->mInput readToOwnBuffer:&self->mStream size:0xFFFFFFFFLL];
        v11 = v10;
        if (v10 >= 0xFFFFFFFF)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream readToBuffer:size:]"];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 129, 0, "overflow in readToBuffer:size:");
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        self->mStream.avail_in = v11;
        self->mOffset += v11;
      }

      v9 = inflate(&self->mStream, 0);
      if ((v9 + 5) > 6 || ((1 << (v9 + 5)) & 0x61) == 0)
      {
        [SFUZipException raise:@"SFUZipInflateError" format:@"inflate() failed: %d", v9];
      }
    }

    while (self->mStream.avail_out);
    next_out = self->mStream.next_out;
  }

  if ((next_out - a3) >= 0xFFFFFFFF)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream readToBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 141, 0, "overflow in readToBuffer:");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (next_out == a3)
  {
    self->mReachedEnd = 1;
  }

  return next_out - a3;
}

- (void)seekToOffset:(int64_t)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream seekToOffset:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 150, 0, "Not implemented.");

  +[TSUAssertionHandler logBacktraceThrottled];
}

- (void)close
{
  [(SFUZipInflateInputStream *)self closeLocalStream];
  mInput = self->mInput;

  [(SFUBufferedInputStream *)mInput close];
}

- (void)setupInflateStream
{
  self->mStream.next_in = 0;
  p_mStream = &self->mStream;
  p_mStream->avail_in = 0;
  p_mStream->zfree = 0;
  p_mStream->opaque = 0;
  p_mStream->zalloc = 0;
  v3 = inflateInit2_(p_mStream, -15, "1.2.12", 112);
  if (v3)
  {
    [SFUZipException raise:@"SFUZipInflateError" format:@"inflateInit2() failed: %d", v3];
  }
}

@end