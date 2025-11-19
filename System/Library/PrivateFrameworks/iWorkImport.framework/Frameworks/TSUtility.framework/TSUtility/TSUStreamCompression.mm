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
    v7->_stream.dst_ptr = &unk_280A63E68;
    v7->_stream.dst_size = 0;
    v7->_stream.src_ptr = &unk_280A63E68;
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

  v10 = MEMORY[0x277D85CB0];
  self->_stream.src_ptr = a3;
  self->_stream.src_size = a4;
  v11 = *v10;
  v12 = *MEMORY[0x277CCA050];
  v13 = MEMORY[0x277D85CC8];
  while (1)
  {
    if (self->_stream.dst_size)
    {
      goto LABEL_10;
    }

    dst_ptr = self->_stream.dst_ptr;
    if (!dst_ptr || dst_ptr == &unk_280A63E68)
    {
      goto LABEL_46;
    }

    v20 = dispatch_data_create(dst_ptr - 1024, 0x400uLL, 0, v11);
    self->_stream.dst_ptr = &unk_280A63E68;
    self->_stream.dst_size = 0;
    handler = self->_handler;
    if (handler && ((*(handler + 2))(handler, self, 0, v20, 0) & 1) == 0)
    {
      self->_status = -1;
      v22 = self->_handler;
      self->_handler = 0;
    }

    v14 = self->_status;
    if (!v14)
    {
LABEL_46:
      self->_stream.dst_ptr = malloc_type_malloc(0x400uLL, 0x5E67AFE0uLL);
      self->_stream.dst_size = 1024;
      v14 = self->_status;
      if (!v14)
      {
LABEL_10:
        v14 = compression_stream_process(&self->_stream, a5);
      }
    }

    self->_status = v14;
    if (v14 == -1)
    {
      v23 = self->_handler;
      if (!v23)
      {
        goto LABEL_42;
      }

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:2048 userInfo:0];
      v23[2](v23, self, 1, 0, v24);

      v17 = self->_handler;
      self->_handler = 0;
    }

    else
    {
      if (v14 != 1)
      {
        goto LABEL_36;
      }

      v15 = self->_stream.dst_ptr;
      if (!v15 || v15 == &unk_280A63E68)
      {
        v25 = v13;
        v17 = v13;
      }

      else
      {
        dst_size = self->_stream.dst_size;
        if (dst_size > 0x3FF)
        {
          free(v15);
          v26 = v13;
          v17 = v13;
        }

        else
        {
          v17 = dispatch_data_create(&v15[dst_size - 1024], 1024 - dst_size, 0, v11);
        }

        self->_stream.dst_ptr = &unk_280A63E68;
        self->_stream.dst_size = 0;
      }

      v27 = self->_handler;
      if (v27 && (v27[2](v27, self, 1, v17, 0) & 1) == 0)
      {
        self->_status = -1;
        v28 = self->_handler;
        self->_handler = 0;
      }
    }

    v14 = self->_status;
LABEL_36:
    if (v14)
    {
      break;
    }

    if (a5 != 1 && !self->_stream.src_size)
    {
      result = 1;
      goto LABEL_43;
    }
  }

  if (v14 == 1)
  {
    result = self->_stream.src_size == 0;
    goto LABEL_43;
  }

LABEL_42:
  result = 0;
LABEL_43:
  self->_stream.src_ptr = &unk_280A63E68;
  self->_stream.src_size = 0;
  return result;
}

@end