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
  if (length >= 0x10400)
  {
    length = 66560;
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
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUBufferedInputStream.m"), 92, @"No buffer parameter"}];
  }

  mBufferStart = self->mBufferStart;
  mBufferEnd = self->mBufferEnd;
  if (self->mBufferOffset + mBufferStart > mBufferEnd)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUBufferedInputStream.m"), 93, @"Bad invariant"}];
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  mBufferSize = self->mBufferSize;
  if (mBufferEnd - mBufferStart > mBufferSize)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUBufferedInputStream.m"), 94, @"Bad invariant"}];
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
  v18 = mBufferEnd - (mBufferStart + mBufferOffset);
  if (sizeCopy > v18)
  {
    memmove(self->mBuffer, &self->mBuffer[mBufferOffset], mBufferEnd - (mBufferStart + mBufferOffset));
    v19 = self->mBufferStart + self->mBufferOffset;
    self->mBufferOffset = 0;
    self->mBufferStart = v19;
    if ([(SFUInputStream *)self->mStream offset]!= self->mBufferEnd)
    {
      if ([(SFUInputStream *)self->mStream canSeek])
      {
        [(SFUInputStream *)self->mStream seekToOffset:self->mBufferEnd];
      }

      else
      {
        v20 = +[TSUAssertionHandler currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUBufferedInputStream readToOwnBuffer:size:]"];
        [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUBufferedInputStream.m"), 121, @"Detected a read from the stream beneath a buffered stream."}];
      }
    }

    v22 = [(SFUInputStream *)self->mStream readToBuffer:&self->mBuffer[v18] size:self->mBufferSize - v18];
    v23 = self->mBufferStart;
    v24 = self->mBufferEnd + v22;
    self->mBufferEnd = v24;
    mBufferOffset = self->mBufferOffset;
    v18 = v24 - (v23 + mBufferOffset);
  }

  if (sizeCopy >= v18)
  {
    result = v18;
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