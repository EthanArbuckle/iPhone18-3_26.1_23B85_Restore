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

        [NSException raise:@"SFUBufferedInputStreamError" format:@"Could not create read buffer"];
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
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B8A8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B8BC();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUBufferedInputStream readToOwnBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUBufferedInputStream.m"] lineNumber:81 isFatal:0 description:"No buffer parameter"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  mBufferStart = self->mBufferStart;
  mBufferEnd = self->mBufferEnd;
  if (self->mBufferOffset + mBufferStart > mBufferEnd)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B944();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B96C();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUBufferedInputStream readToOwnBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUBufferedInputStream.m"] lineNumber:82 isFatal:0 description:"Bad invariant"];
    +[TSUAssertionHandler logBacktraceThrottled];
    mBufferStart = self->mBufferStart;
    mBufferEnd = self->mBufferEnd;
  }

  mBufferSize = self->mBufferSize;
  if (mBufferEnd - mBufferStart > mBufferSize)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015B9F4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015BA1C();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUBufferedInputStream readToOwnBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUBufferedInputStream.m"] lineNumber:83 isFatal:0 description:"Bad invariant"];
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
  v12 = mBufferEnd - (mBufferStart + mBufferOffset);
  if (sizeCopy > v12)
  {
    memmove(self->mBuffer, &self->mBuffer[mBufferOffset], mBufferEnd - (mBufferStart + mBufferOffset));
    v13 = self->mBufferStart + self->mBufferOffset;
    self->mBufferOffset = 0;
    self->mBufferStart = v13;
    if ([(SFUInputStream *)self->mStream offset]!= self->mBufferEnd)
    {
      if ([(SFUInputStream *)self->mStream canSeek])
      {
        [(SFUInputStream *)self->mStream seekToOffset:self->mBufferEnd];
      }

      else
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_10015BAA4();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015BACC();
        }

        [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUBufferedInputStream readToOwnBuffer:size:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUBufferedInputStream.m"] lineNumber:104 isFatal:0 description:"Detected a read from the stream beneath a buffered stream."];
        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }

    v14 = [(SFUInputStream *)self->mStream readToBuffer:&self->mBuffer[v12] size:self->mBufferSize - v12];
    v15 = self->mBufferStart;
    v16 = v14 + self->mBufferEnd;
    self->mBufferEnd = v16;
    mBufferOffset = self->mBufferOffset;
    v12 = v16 - (v15 + mBufferOffset);
  }

  if (sizeCopy >= v12)
  {
    result = v12;
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
    [NSException raise:@"SFUBufferedInputStreamError" format:@"Can't seek"];
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