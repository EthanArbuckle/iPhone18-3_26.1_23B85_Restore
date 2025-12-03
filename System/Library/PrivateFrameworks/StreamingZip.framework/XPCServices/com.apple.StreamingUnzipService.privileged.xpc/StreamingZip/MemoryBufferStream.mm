@interface MemoryBufferStream
- (MemoryBufferStream)initWithBuffer:(id)buffer error:(id *)error;
- (MemoryBufferStream)initWithError:(id *)error;
- (NSData)currentBuffer;
- (id)closeAndReturnBufferWithError:(id *)error;
- (void)dealloc;
@end

@implementation MemoryBufferStream

- (void)dealloc
{
  if (self->_isOpen)
  {
    AAByteStreamClose(self->_stream);
  }

  v3.receiver = self;
  v3.super_class = MemoryBufferStream;
  [(MemoryBufferStream *)&v3 dealloc];
}

- (id)closeAndReturnBufferWithError:(id *)error
{
  if ([(MemoryBufferStream *)self isOpen])
  {
    if (!AAByteStreamClose([(MemoryBufferStream *)self stream]))
    {
      buffer = [(MemoryBufferStream *)self buffer];
      v11 = [buffer copy];

      v10 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v5 = sub_10000126C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412290;
      *&v14[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Stream failed to close : %@", v14, 0xCu);
    }

    v7 = @"Stream failed to close";
    v8 = 303;
  }

  else
  {
    v9 = sub_10000126C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 138412290;
      *&v14[4] = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Stream was already closed : %@", v14, 0xCu);
    }

    v7 = @"Stream was already closed";
    v8 = 297;
  }

  v10 = sub_1000015F4("[MemoryBufferStream closeAndReturnBufferWithError:]", v8, @"SZExtractorErrorDomain", 1, 0, 0, v7, v6, *v14);
  v11 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v11)
  {
    v10 = v10;
    *error = v10;
  }

LABEL_12:

  return v11;
}

- (NSData)currentBuffer
{
  buffer = [(MemoryBufferStream *)self buffer];
  v3 = [buffer copy];

  return v3;
}

- (MemoryBufferStream)initWithBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = MemoryBufferStream;
  v7 = [(MemoryBufferStream *)&v11 init];
  v8 = v7;
  if (v7 && !sub_10000B8BC(v7, bufferCopy, error))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (MemoryBufferStream)initWithError:(id *)error
{
  v9.receiver = self;
  v9.super_class = MemoryBufferStream;
  v4 = [(MemoryBufferStream *)&v9 init];
  v5 = v4;
  if (!v4 || (v6 = sub_10000B8BC(v4, 0, error), v7 = 0, v6))
  {
    v7 = v5;
  }

  return v7;
}

@end