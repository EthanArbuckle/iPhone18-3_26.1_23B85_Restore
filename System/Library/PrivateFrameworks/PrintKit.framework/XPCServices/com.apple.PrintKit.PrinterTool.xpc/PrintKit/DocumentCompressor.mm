@interface DocumentCompressor
+ (id)compress:(id)compress forScheme:(id)scheme;
+ (id)decompress:(id)decompress forScheme:(id)scheme;
+ (id)documentCompresorForName:(id)name;
- (BOOL)compressChunk:(const char *)chunk length:(unint64_t)length completionHandler:(id)handler;
- (BOOL)compressChunk:(id)chunk completionHandler:(id)handler;
- (BOOL)finalChunkCompletionHandler:(id)handler;
- (DocumentCompressor)initWithName:(id)name;
- (id)compressChunk:(id)chunk;
- (id)description;
- (id)finalChunk;
- (void)dealloc;
@end

@implementation DocumentCompressor

- (DocumentCompressor)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = DocumentCompressor;
  v6 = [(DocumentCompressor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    if ([nameCopy isEqualToString:@"gzip"])
    {
      v8 = 27;
    }

    else if ([nameCopy isEqual:@"deflate"])
    {
      v8 = -11;
    }

    else
    {
      if ([nameCopy isEqual:@"none"])
      {
        v7->_stream = 0;
        goto LABEL_11;
      }

      v8 = -1;
    }

    v9 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040E8CA615DuLL);
    v7->_stream = v9;
    if (deflateInit2_(v9, -1, 8, v8, 7, 0, "1.2.12", 112) < 0)
    {
      free(v7->_stream);
      v7->_stream = 0;

      v7 = 0;
    }
  }

LABEL_11:

  return v7;
}

- (void)dealloc
{
  stream = self->_stream;
  if (stream)
  {
    deflateEnd(stream);
    free(self->_stream);
    self->_stream = 0;
  }

  v4.receiver = self;
  v4.super_class = DocumentCompressor;
  [(DocumentCompressor *)&v4 dealloc];
}

- (id)compressChunk:(id)chunk
{
  chunkCopy = chunk;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003454;
  v7[3] = &unk_1000951F8;
  v5 = objc_opt_new();
  v8 = v5;
  if (![(DocumentCompressor *)self compressChunk:chunkCopy completionHandler:v7])
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)compressChunk:(id)chunk completionHandler:(id)handler
{
  chunkCopy = chunk;
  handlerCopy = handler;
  LOBYTE(self) = -[DocumentCompressor compressChunk:length:completionHandler:](self, "compressChunk:length:completionHandler:", [chunkCopy bytes], objc_msgSend(chunkCopy, "length"), handlerCopy);

  return self;
}

- (BOOL)compressChunk:(const char *)chunk length:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 1;
  if (length)
  {
    stream = self->_stream;
    if (stream)
    {
      stream->next_in = chunk;
      self->_stream->avail_in = length;
      while (1)
      {
        v11 = self->_stream;
        if (!v11->avail_in)
        {
LABEL_7:
          v9 = 1;
          goto LABEL_9;
        }

        v11->next_out = self->_buffer;
        v12 = self->_stream;
        v12->avail_out = 0x2000;
        if (deflate(v12, 0))
        {
          break;
        }

        if ((handlerCopy[2](handlerCopy, self->_buffer, 0x2000 - self->_stream->avail_out) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v9 = 0;
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)finalChunkCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stream = self->_stream;
  if (stream)
  {
    stream->next_in = "";
    self->_stream->avail_in = 0;
    do
    {
      self->_stream->next_out = self->_buffer;
      v6 = self->_stream;
      v6->avail_out = 0x2000;
      v7 = deflate(v6, 4);
      v8 = 0;
      if (v7 != -5 && v7 != 0)
      {
        if (v7 != 1)
        {
          goto LABEL_11;
        }

        v8 = 1;
      }

      handlerCopy[2](handlerCopy, self->_buffer, 0x2000 - self->_stream->avail_out);
    }

    while (!v8);
  }

  LOBYTE(v8) = 1;
LABEL_11:

  return v8;
}

- (id)finalChunk
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003778;
  v5[3] = &unk_1000951F8;
  v3 = objc_opt_new();
  v6 = v3;
  if (![(DocumentCompressor *)self finalChunkCompletionHandler:v5])
  {

    v3 = 0;
  }

  return v3;
}

+ (id)documentCompresorForName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy];

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = DocumentCompressor;
  v3 = [(DocumentCompressor *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ { %@ }", v3, self->_name];

  return v4;
}

+ (id)compress:(id)compress forScheme:(id)scheme
{
  compressCopy = compress;
  schemeCopy = scheme;
  v7 = objc_opt_new();
  v8 = [DocumentCompressor documentCompresorForName:schemeCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003A7C;
  v15[3] = &unk_1000951F8;
  v9 = v7;
  v16 = v9;
  if ([v8 compressChunk:compressCopy completionHandler:v15])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003AA4;
    v13[3] = &unk_1000951F8;
    v10 = v9;
    v14 = v10;
    if ([v8 finalChunkCompletionHandler:v13])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)decompress:(id)decompress forScheme:(id)scheme
{
  decompressCopy = decompress;
  schemeCopy = scheme;
  v7 = objc_opt_new();
  if ([schemeCopy isEqualToString:@"gzip"])
  {
    v8 = 27;
  }

  else
  {
    if (([schemeCopy isEqual:@"deflate"] & 1) == 0)
    {
      if (([schemeCopy isEqual:@"none"] & 1) == 0)
      {
        NSLog(@"Unknown coding scheme; %@", schemeCopy);
        abort();
      }

      v13 = decompressCopy;
      goto LABEL_19;
    }

    v8 = -11;
  }

  memset(&strm, 0, sizeof(strm));
  inflateInit2_(&strm, v8, "1.2.12", 112);
  v9 = decompressCopy;
  strm.next_in = [decompressCopy bytes];
  strm.avail_in = [decompressCopy length];
  if (!strm.avail_in)
  {
    goto LABEL_18;
  }

  while (1)
  {
    strm.next_out = v17;
    strm.avail_out = 0x2000;
    v10 = inflate(&strm, 0);
    if (!v10)
    {
      v11 = 0;
      goto LABEL_10;
    }

    if (v10 != 1)
    {
      break;
    }

    v11 = 1;
LABEL_10:
    [v7 appendBytes:v17 length:0x2000 - strm.avail_out];
    v12 = v11 ^ 1;
    if (!strm.avail_in)
    {
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v10 == -3)
  {
    NSLog(@"not setup for this correctly");
    __assert_rtn("+[DocumentCompressor decompress:forScheme:]", "DocumentCompressor.mm", 232, "false");
  }

  v7 = 0;
LABEL_18:
  v13 = v7;
  v7 = v13;
LABEL_19:
  v14 = v13;

  return v14;
}

@end