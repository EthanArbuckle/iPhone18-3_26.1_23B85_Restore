@interface SFUBufferedInputStream
- (BOOL)seekWithinBufferToOffset:(int64_t)offset;
- (SFUBufferedInputStream)initWithStream:(id)stream bufferSize:(unint64_t)size;
- (SFUBufferedInputStream)initWithStream:(id)stream dataLength:(int64_t)length;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation SFUBufferedInputStream

- (SFUBufferedInputStream)initWithStream:(id)stream bufferSize:(unint64_t)size
{
  v11.receiver = self;
  v11.super_class = SFUBufferedInputStream;
  v6 = [(SFUBufferedInputStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (stream)
    {
      v6->mStream = stream;
      v7->mBufferSize = size;
      v8 = malloc_type_malloc(size, 0x100004077774924uLL);
      v7->mBuffer = v8;
      if (!v8)
      {

        [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Could not create read buffer"];
      }

      offset = [(SFUInputStream *)v7->mStream offset];
      v7->mBufferStart = offset;
      v7->mBufferEnd = offset;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (SFUBufferedInputStream)initWithStream:(id)stream dataLength:(int64_t)length
{
  if (length >= 0x40000)
  {
    length = 0x40000;
  }

  return [(SFUBufferedInputStream *)self initWithStream:stream bufferSize:length];
}

- (void)dealloc
{
  free(self->mBuffer);

  v3.receiver = self;
  v3.super_class = SFUBufferedInputStream;
  [(SFUBufferedInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  __src = 0;
  v5 = [(SFUBufferedInputStream *)self readToOwnBuffer:&__src size:size];
  memcpy(buffer, __src, v5);
  return v5;
}

- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size
{
  if (!buffer)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUBufferedInputStream.m"], 81, 0, "No buffer parameter");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  mBufferStart = self->mBufferStart;
  mBufferEnd = self->mBufferEnd;
  if (self->mBufferOffset + mBufferStart > mBufferEnd)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUBufferedInputStream.m"], 82, 0, "Bad invariant");
    +[TSUAssertionHandler logBacktraceThrottled];
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  mBufferSize = self->mBufferSize;
  if (mBufferEnd - mBufferStart > mBufferSize)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUBufferedInputStream.m"], 83, 0, "Bad invariant");
    +[TSUAssertionHandler logBacktraceThrottled];
    mBufferSize = self->mBufferSize;
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  if (mBufferSize >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = mBufferSize;
  }

  mBufferOffset = self->mBufferOffset;
  v15 = mBufferEnd - (mBufferStart + mBufferOffset);
  if (sizeCopy > v15)
  {
    memmove(self->mBuffer, &self->mBuffer[mBufferOffset], mBufferEnd - (mBufferStart + mBufferOffset));
    v16 = self->mBufferStart + self->mBufferOffset;
    self->mBufferOffset = 0;
    self->mBufferStart = v16;
    if ([(SFUInputStream *)self->mStream offset]!= self->mBufferEnd)
    {
      if ([(SFUInputStream *)self->mStream canSeek])
      {
        [(SFUInputStream *)self->mStream seekToOffset:self->mBufferEnd];
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUBufferedInputStream.m"], 104, 0, "Detected a read from the stream beneath a buffered stream.");
        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }

    v18 = [(SFUInputStream *)self->mStream readToBuffer:&self->mBuffer[v15] size:self->mBufferSize - v15];
    v19 = self->mBufferStart;
    v20 = self->mBufferEnd + v18;
    self->mBufferEnd = v20;
    mBufferOffset = self->mBufferOffset;
    v15 = v20 - (v19 + mBufferOffset);
  }

  if (sizeCopy >= v15)
  {
    result = v15;
  }

  else
  {
    result = sizeCopy;
  }

  *buffer = &self->mBuffer[mBufferOffset];
  self->mBufferOffset = result + mBufferOffset;
  return result;
}

- (BOOL)seekWithinBufferToOffset:(int64_t)offset
{
  mBufferStart = self->mBufferStart;
  v4 = __OFSUB__(offset, mBufferStart);
  v5 = offset - mBufferStart;
  if (v5 < 0 != v4 || self->mBufferEnd < offset)
  {
    return 0;
  }

  self->mBufferOffset = v5;
  return 1;
}

- (void)seekToOffset:(int64_t)offset
{
  if (![(SFUBufferedInputStream *)self canSeek])
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Can't seek"];
  }

  mBufferStart = self->mBufferStart;
  v6 = __OFSUB__(offset, mBufferStart);
  v7 = offset - mBufferStart;
  if (v7 < 0 != v6 || self->mBufferEnd < offset)
  {
    self->mBufferOffset = 0;
    self->mBufferStart = offset;
    v8 = 48;
  }

  else
  {
    v8 = 32;
    offset = v7;
  }

  *(&self->super.isa + v8) = offset;
}

@end