@interface TSUStreamCompression
- (BOOL)processBytes:(char *)a3 size:(unint64_t)a4 flags:(int)a5;
- (TSUStreamCompression)initWithAlgorithm:(int)a3 operation:(int)a4;
- (void)dealloc;
@end

@implementation TSUStreamCompression

- (TSUStreamCompression)initWithAlgorithm:(int)a3 operation:(int)a4
{
  v9.receiver = self;
  v9.super_class = TSUStreamCompression;
  v6 = [(TSUStreamCompression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    compression_stream_init((v6 + 16), a4, a3);
    v7->_stream.dst_ptr = &unk_1001EB074;
    v7->_stream.dst_size = 0;
    v7->_stream.src_ptr = &unk_1001EB074;
    v7->_stream.src_size = 0;
    v7->_operation = a4;
    v7->_status = 0;
  }

  return v7;
}

- (void)dealloc
{
  compression_stream_destroy(&self->_stream);
  v3.receiver = self;
  v3.super_class = TSUStreamCompression;
  [(TSUStreamCompression *)&v3 dealloc];
}

- (BOOL)processBytes:(char *)a3 size:(unint64_t)a4 flags:(int)a5
{
  status = self->_status;
  if (status)
  {
    return !a4 && status == 1;
  }

  self->_stream.src_ptr = a3;
  self->_stream.src_size = a4;
  while (1)
  {
    if (self->_stream.dst_size)
    {
      goto LABEL_10;
    }

    dst_ptr = self->_stream.dst_ptr;
    if (!dst_ptr || dst_ptr == &unk_1001EB074)
    {
      goto LABEL_46;
    }

    v16 = dispatch_data_create(dst_ptr - 1024, 0x400uLL, 0, _dispatch_data_destructor_free);
    self->_stream.dst_ptr = &unk_1001EB074;
    self->_stream.dst_size = 0;
    handler = self->_handler;
    if (handler && ((*(handler + 2))(handler, self, 0, v16, 0) & 1) == 0)
    {
      self->_status = -1;
      v18 = self->_handler;
      self->_handler = 0;
    }

    v10 = self->_status;
    if (!v10)
    {
LABEL_46:
      self->_stream.dst_ptr = malloc_type_malloc(0x400uLL, 0x5E67AFE0uLL);
      self->_stream.dst_size = 1024;
      v10 = self->_status;
      if (!v10)
      {
LABEL_10:
        v10 = compression_stream_process(&self->_stream, a5);
      }
    }

    self->_status = v10;
    if (v10 == -1)
    {
      v19 = self->_handler;
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];
      v19[2](v19, self, 1, 0, v20);

      v13 = self->_handler;
      self->_handler = 0;
    }

    else
    {
      if (v10 != 1)
      {
        goto LABEL_36;
      }

      v11 = self->_stream.dst_ptr;
      if (!v11 || v11 == &unk_1001EB074)
      {
        v21 = &_dispatch_data_empty;
        v13 = &_dispatch_data_empty;
      }

      else
      {
        dst_size = self->_stream.dst_size;
        if (dst_size > 0x3FF)
        {
          free(v11);
          v22 = &_dispatch_data_empty;
          v13 = &_dispatch_data_empty;
        }

        else
        {
          v13 = dispatch_data_create(&v11[dst_size - 1024], 1024 - dst_size, 0, _dispatch_data_destructor_free);
        }

        self->_stream.dst_ptr = &unk_1001EB074;
        self->_stream.dst_size = 0;
      }

      v23 = self->_handler;
      if (v23 && (v23[2](v23, self, 1, v13, 0) & 1) == 0)
      {
        self->_status = -1;
        v24 = self->_handler;
        self->_handler = 0;
      }
    }

    v10 = self->_status;
LABEL_36:
    if (v10)
    {
      break;
    }

    if (a5 != 1 && !self->_stream.src_size)
    {
      result = 1;
      goto LABEL_43;
    }
  }

  if (v10 == 1)
  {
    result = self->_stream.src_size == 0;
    goto LABEL_43;
  }

LABEL_42:
  result = 0;
LABEL_43:
  self->_stream.src_ptr = &unk_1001EB074;
  self->_stream.src_size = 0;
  return result;
}

@end