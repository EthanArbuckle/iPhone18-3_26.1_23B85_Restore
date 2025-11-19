@interface ICSCompressedInputStream
- (ICSCompressedInputStream)initWithData:(id)a3;
- (char)read;
- (void)dealloc;
@end

@implementation ICSCompressedInputStream

- (ICSCompressedInputStream)initWithData:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ICSCompressedInputStream;
  v6 = [(ICSCompressedInputStream *)&v14 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (compression_stream_init((v6 + 8), COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {
    goto LABEL_3;
  }

  objc_storeStrong(v7 + 6, a3);
  *(v7 + 8) = 0;
  v9 = malloc_type_calloc(0x2000uLL, 1uLL, 0xA39BA119uLL);
  *(v7 + 7) = v9;
  *(v7 + 1) = v9;
  *(v7 + 2) = 0x2000;
  *(v7 + 3) = [v5 bytes];
  *(v7 + 4) = [v5 length];
  v10 = compression_stream_process((v7 + 8), 1);
  if (v10 == COMPRESSION_STATUS_OK)
  {
    v12 = 0;
LABEL_10:
    v7[80] = v12;
    *(v7 + 9) = 0x2000 - *(v7 + 2);
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  if (v10 != COMPRESSION_STATUS_ERROR)
  {
    v12 = 1;
    goto LABEL_10;
  }

  [ICSLogger logAtLevel:3 forTokenizer:0 message:@"Decompression failure! Got no data trying to decompress %@", *(v7 + 6)];
  v11 = *(v7 + 7);
  if (v11)
  {
    free(v11);
    v8 = 0;
    *(v7 + 7) = 0;
    goto LABEL_12;
  }

LABEL_3:
  v8 = 0;
LABEL_12:

  return v8;
}

- (void)dealloc
{
  compression_stream_destroy(&self->underStream);
  buffer = self->buffer;
  if (buffer)
  {
    free(buffer);
    self->buffer = 0;
  }

  v4.receiver = self;
  v4.super_class = ICSCompressedInputStream;
  [(ICSCompressedInputStream *)&v4 dealloc];
}

- (char)read
{
  bufPos = self->bufPos;
  bufLen = self->bufLen;
  if (bufPos == bufLen)
  {
    if (self->finalBlock)
    {
      return 0;
    }

    self->underStream.dst_ptr = self->buffer;
    self->underStream.dst_size = 0x2000;
    v5 = compression_stream_process(&self->underStream, 1);
    if (v5 == COMPRESSION_STATUS_ERROR)
    {
      [ICSLogger logAtLevel:3 forTokenizer:0 message:@"Decompression failure! Failed at location %li in data %@", [(NSData *)self->rawData length]- self->underStream.src_size, self->rawData];
      bufLen = 0;
      v6 = 1;
    }

    else
    {
      v6 = v5 == COMPRESSION_STATUS_END;
      bufLen = 0x2000 - self->underStream.dst_size;
    }

    bufPos = 0;
    self->finalBlock = v6;
    self->bufPos = 0;
    self->bufLen = bufLen;
  }

  if (bufPos != bufLen)
  {
    v7 = *(self->buffer + bufPos);
    self->bufPos = bufPos + 1;
    return v7;
  }

  return 0;
}

@end