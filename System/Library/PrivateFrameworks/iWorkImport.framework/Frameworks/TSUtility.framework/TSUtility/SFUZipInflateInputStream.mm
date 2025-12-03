@interface SFUZipInflateInputStream
- (SFUZipInflateInputStream)initWithInput:(id)input;
- (SFUZipInflateInputStream)initWithOffset:(int64_t)offset end:(int64_t)end uncompressedSize:(unint64_t)size crc:(unint64_t)crc dataRepresentation:(id)representation;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset;
- (void)setupInflateStream;
@end

@implementation SFUZipInflateInputStream

- (SFUZipInflateInputStream)initWithOffset:(int64_t)offset end:(int64_t)end uncompressedSize:(unint64_t)size crc:(unint64_t)crc dataRepresentation:(id)representation
{
  v12 = [(SFUZipInflateInputStream *)self init];
  v13 = v12;
  if (v12)
  {
    *&v12->mReachedEnd = 256;
    v12->mOffset = offset;
    v12->mCheckCrc = crc;
    v12->mCalculatedCrc = crc32(0, 0, 0);
    v13->mInput = [representation bufferedInputStreamWithOffset:offset length:end - offset];
    sizeCopy = 0x40000;
    if (size < 0x40000)
    {
      sizeCopy = size;
    }

    v13->mOutBufferSize = sizeCopy;
    [(SFUZipInflateInputStream *)v13 setupInflateStream];
  }

  return v13;
}

- (SFUZipInflateInputStream)initWithInput:(id)input
{
  v7.receiver = self;
  v7.super_class = SFUZipInflateInputStream;
  v4 = [(SFUZipInflateInputStream *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->mReachedEnd = 0;
    v4->mOffset = 0;
    v4->mInput = [[SFUBufferedInputStream alloc] initWithStream:input];
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

- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size
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

  *buffer = mOutBuffer;
  v8 = self->mOutBuffer;
  if (size - 1 >= self->mOutBufferSize)
  {
    mOutBufferSize = self->mOutBufferSize;
  }

  else
  {
    mOutBufferSize = size;
  }

  return [(SFUZipInflateInputStream *)self readToBuffer:v8 size:mOutBufferSize];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  sizeCopy = size;
  if (size >= 0xFFFFFFFF)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream readToBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 117, 0, "overflow in readToBuffer:");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->mStream.avail_out = sizeCopy;
  self->mStream.next_out = buffer;
  next_out = buffer;
  if (sizeCopy)
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

  if ((next_out - buffer) >= 0xFFFFFFFF)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipInflateInputStream readToBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipInflateInputStream.m"], 141, 0, "overflow in readToBuffer:");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (next_out == buffer)
  {
    self->mReachedEnd = 1;
  }

  return next_out - buffer;
}

- (void)seekToOffset:(int64_t)offset
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