@interface SFUMemoryInputStream
- (BOOL)seekWithinBufferToOffset:(int64_t)offset;
- (SFUMemoryInputStream)initWithData:(id)data;
- (SFUMemoryInputStream)initWithData:(id)data offset:(unint64_t)offset length:(unint64_t)length;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset;
@end

@implementation SFUMemoryInputStream

- (SFUMemoryInputStream)initWithData:(id)data
{
  v5 = [data length];

  return [(SFUMemoryInputStream *)self initWithData:data offset:0 length:v5];
}

- (SFUMemoryInputStream)initWithData:(id)data offset:(unint64_t)offset length:(unint64_t)length
{
  v14.receiver = self;
  v14.super_class = SFUMemoryInputStream;
  v8 = [(SFUMemoryInputStream *)&v14 init];
  v9 = v8;
  if (v8)
  {
    if (data)
    {
      v10 = [data length];
      if (v10 < length || v10 - length < offset)
      {

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Bad data range."];
      }

      dataCopy = data;
      v9->mData = dataCopy;
      bytes = [(NSData *)dataCopy bytes];
      v9->mStart = (bytes + offset);
      v9->mCurrent = (bytes + offset);
      v9->mEnd = (bytes + offset + length);
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryInputStream;
  [(SFUMemoryInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  mCurrent = self->mCurrent;
  if (self->mEnd - mCurrent >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = self->mEnd - mCurrent;
  }

  memcpy(buffer, mCurrent, sizeCopy);
  self->mCurrent += sizeCopy;
  return sizeCopy;
}

- (void)seekToOffset:(int64_t)offset
{
  mEnd = self->mEnd;
  mStart = self->mStart;
  v5 = mEnd - mStart;
  v6 = &mStart[offset];
  if (v5 >= offset)
  {
    mEnd = v6;
  }

  self->mCurrent = mEnd;
}

- (unint64_t)readToOwnBuffer:(const char *)buffer size:(unint64_t)size
{
  mCurrent = self->mCurrent;
  sizeCopy = (self->mEnd - mCurrent);
  if (sizeCopy >= size)
  {
    sizeCopy = size;
  }

  *buffer = mCurrent;
  self->mCurrent = &sizeCopy[mCurrent];
  return sizeCopy;
}

- (BOOL)seekWithinBufferToOffset:(int64_t)offset
{
  v4 = self->mEnd - self->mStart;
  if (v4 >= offset)
  {
    [(SFUMemoryInputStream *)self seekToOffset:offset];
  }

  return v4 >= offset;
}

@end