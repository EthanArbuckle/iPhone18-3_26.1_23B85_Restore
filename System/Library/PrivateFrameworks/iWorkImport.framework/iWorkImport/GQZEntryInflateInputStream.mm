@interface GQZEntryInflateInputStream
- (GQZEntryInflateInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 uncompressedSize:(unint64_t)a5 crc:(unint64_t)a6 input:(id)a7;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)readToOwnBuffer:(const char *)a3 size:(unint64_t *)a4;
@end

@implementation GQZEntryInflateInputStream

- (GQZEntryInflateInputStream)initWithOffset:(int64_t)a3 end:(int64_t)a4 uncompressedSize:(unint64_t)a5 crc:(unint64_t)a6 input:(id)a7
{
  v12 = [(GQZEntryInflateInputStream *)self init];
  v13 = v12;
  if (v12)
  {
    v12->mOffset = a3;
    v12->mEnd = a4;
    v12->mCheckCrc = a6;
    v12->mCalculatedCrc = crc32(0, 0, 0);
    v14 = a7;
    v13->mStream.next_in = 0;
    v13->mInput = v14;
    v15 = 0x40000;
    if (a5 < 0x40000)
    {
      v15 = a5;
    }

    v13->mOutBufferSize = v15;
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

- (void)readToOwnBuffer:(const char *)a3 size:(unint64_t *)a4
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

  *a4 = [(GQZEntryInflateInputStream *)self readToBuffer:mOutBuffer size:self->mOutBufferSize];
  *a3 = self->mOutBuffer;
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  self->mStream.avail_out = a4;
  self->mStream.next_out = a3;
  next_out = a3;
  if (a4)
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
  v11 = next_out - a3;
  v12 = crc32(self->mCalculatedCrc, a3, next_out - a3);
  self->mCalculatedCrc = v12;
  if (self->mOffset == self->mEnd && !self->mStream.avail_in && v12 != self->mCheckCrc)
  {
    [GQZException raise:@"GQZInflateError" format:@"CRC error"];
  }

  return v11;
}

@end