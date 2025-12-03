@interface GQZEntryInflateInputStream
- (GQZEntryInflateInputStream)initWithOffset:(int64_t)offset end:(int64_t)end uncompressedSize:(unint64_t)size crc:(unint64_t)crc input:(id)input;
- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size;
- (void)dealloc;
- (void)readToOwnBuffer:(const char *)buffer size:(unint64_t *)size;
@end

@implementation GQZEntryInflateInputStream

- (GQZEntryInflateInputStream)initWithOffset:(int64_t)offset end:(int64_t)end uncompressedSize:(unint64_t)size crc:(unint64_t)crc input:(id)input
{
  v12 = [(GQZEntryInflateInputStream *)self init];
  v13 = v12;
  if (v12)
  {
    v12->mOffset = offset;
    v12->mEnd = end;
    v12->mCheckCrc = crc;
    v12->mCalculatedCrc = crc32(0, 0, 0);
    inputCopy = input;
    v13->mStream.next_in = 0;
    v13->mInput = inputCopy;
    sizeCopy = 0x40000;
    if (size < 0x40000)
    {
      sizeCopy = size;
    }

    v13->mOutBufferSize = sizeCopy;
    v13->mStream.avail_in = 0;
    v13->mStream.zfree = 0;
    v13->mStream.opaque = 0;
    v13->mStream.zalloc = 0;
    v16 = inflateInit2_(&v13->mStream, -15, "1.2.12", 112);
    if (v16)
    {
      [GQZException raise:@"GQZInflateError" format:@"inflateInit2() failed: %d", v16];
    }
  }

  return v13;
}

- (void)dealloc
{
  inflateEnd(&self->mStream);

  free(self->mOutBuffer);
  v3.receiver = self;
  v3.super_class = GQZEntryInflateInputStream;
  [(GQZEntryInflateInputStream *)&v3 dealloc];
}

- (void)readToOwnBuffer:(const char *)buffer size:(unint64_t *)size
{
  mOutBuffer = self->mOutBuffer;
  if (!mOutBuffer)
  {
    mOutBuffer = malloc_type_malloc(self->mOutBufferSize, 0x100004077774924uLL);
    self->mOutBuffer = mOutBuffer;
    if (!mOutBuffer)
    {
      [GQZException raise:@"GQZInflateError" format:@"Could not create inflate buffer"];
      mOutBuffer = self->mOutBuffer;
    }
  }

  *size = [(GQZEntryInflateInputStream *)self readToBuffer:mOutBuffer size:self->mOutBufferSize];
  *buffer = self->mOutBuffer;
}

- (unint64_t)readToBuffer:(char *)buffer size:(unint64_t)size
{
  self->mStream.avail_out = size;
  self->mStream.next_out = buffer;
  next_out = buffer;
  if (size)
  {
    LODWORD(v7) = 0;
    while (1)
    {
      mOffset = self->mOffset;
      if (mOffset >= self->mEnd)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_13;
      }

      avail_in = self->mStream.avail_in;
      if (avail_in)
      {
        goto LABEL_9;
      }

      v10 = [GQZArchiveInputStream dataAtOffset:"dataAtOffset:size:end:readSize:" size:? end:? readSize:?];
      self->mStream.avail_in = 0;
      self->mOffset = self->mOffset;
LABEL_10:
      self->mStream.next_in = v10;
      v7 = inflate(&self->mStream, 0);
      if (v7 >= 2)
      {
        [GQZException raise:@"GQZInflateError" format:@"inflate() failed: %d", v7];
      }

      if (!self->mStream.avail_out)
      {
LABEL_13:
        next_out = self->mStream.next_out;
        goto LABEL_14;
      }
    }

    if (v7)
    {
      goto LABEL_13;
    }

    avail_in = self->mStream.avail_in;
    if (!self->mStream.avail_in)
    {
      goto LABEL_13;
    }

LABEL_9:
    v10 = [GQZArchiveInputStream dataAtOffset:"dataAtOffset:size:end:readSize:" size:mOffset - avail_in end:? readSize:?];
    goto LABEL_10;
  }

LABEL_14:
  v11 = next_out - buffer;
  v12 = crc32(self->mCalculatedCrc, buffer, next_out - buffer);
  self->mCalculatedCrc = v12;
  if (self->mOffset == self->mEnd && !self->mStream.avail_in && v12 != self->mCheckCrc)
  {
    [GQZException raise:@"GQZInflateError" format:@"CRC error"];
  }

  return v11;
}

@end