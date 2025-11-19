@interface SFUBufferedInputStream
- (BOOL)seekWithinBufferToOffset:(int64_t)a3;
- (SFUBufferedInputStream)initWithStream:(id)a3 bufferSize:(unint64_t)a4;
- (SFUBufferedInputStream)initWithStream:(id)a3 dataLength:(int64_t)a4;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUBufferedInputStream

- (SFUBufferedInputStream)initWithStream:(id)a3 bufferSize:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = SFUBufferedInputStream;
  v6 = [(SFUBufferedInputStream *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v6->mStream = a3;
      v7->mBufferSize = a4;
      v8 = malloc_type_malloc(a4, 0x100004077774924uLL);
      v7->mBuffer = v8;
      if (!v8)
      {

        [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Could not create read buffer"];
      }

      v9 = [(SFUInputStream *)v7->mStream offset];
      v7->mBufferStart = v9;
      v7->mBufferEnd = v9;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (SFUBufferedInputStream)initWithStream:(id)a3 dataLength:(int64_t)a4
{
  if (a4 >= 0x10400)
  {
    a4 = 66560;
  }

  return [(SFUBufferedInputStream *)self initWithStream:a3 bufferSize:a4];
}

- (void)dealloc
{
  free(self->mBuffer);

  v3.receiver = self;
  v3.super_class = SFUBufferedInputStream;
  [(SFUBufferedInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  __src = 0;
  v5 = [(SFUBufferedInputStream *)self readToOwnBuffer:&__src size:a4];
  memcpy(a3, __src, v5);
  return v5;
}

- (unint64_t)readToOwnBuffer:(const char *)a3 size:(unint64_t)a4
{
  if (!a3)
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

  if (mBufferSize >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = mBufferSize;
  }

  mBufferOffset = self->mBufferOffset;
  v18 = mBufferEnd - (mBufferStart + mBufferOffset);
  if (v16 > v18)
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

  if (v16 >= v18)
  {
    result = v18;
  }

  else
  {
    result = v16;
  }

  *a3 = &self->mBuffer[mBufferOffset];
  self->mBufferOffset = result + mBufferOffset;
  return result;
}

- (BOOL)seekWithinBufferToOffset:(int64_t)a3
{
  mBufferStart = self->mBufferStart;
  v4 = __OFSUB__(a3, mBufferStart);
  v5 = a3 - mBufferStart;
  if (v5 < 0 != v4 || self->mBufferEnd < a3)
  {
    return 0;
  }

  self->mBufferOffset = v5;
  return 1;
}

- (void)seekToOffset:(int64_t)a3
{
  if (![(SFUBufferedInputStream *)self canSeek])
  {
    [MEMORY[0x277CBEAD8] raise:@"SFUBufferedInputStreamError" format:@"Can't seek"];
  }

  mBufferStart = self->mBufferStart;
  v6 = __OFSUB__(a3, mBufferStart);
  v7 = a3 - mBufferStart;
  if (v7 < 0 != v6 || self->mBufferEnd < a3)
  {
    self->mBufferOffset = 0;
    self->mBufferStart = a3;
    v8 = 48;
  }

  else
  {
    v8 = 32;
    a3 = v7;
  }

  *(&self->super.isa + v8) = a3;
}

@end