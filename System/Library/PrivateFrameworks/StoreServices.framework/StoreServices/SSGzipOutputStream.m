@interface SSGzipOutputStream
- (BOOL)_initializeOutputStream;
- (id)initToFileAtPath:(id)a3 append:(BOOL)a4;
- (id)initToMemory;
- (id)streamError;
- (int64_t)_consumeStreamOutput:(BOOL)a3;
- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
- (void)_setStreamError:(int)a3 context:(id)a4;
- (void)close;
- (void)dealloc;
@end

@implementation SSGzipOutputStream

- (BOOL)_initializeOutputStream
{
  v28 = *MEMORY[0x1E69E9840];
  self->_streamContentLength = 0;
  p_stream = &self->_stream;
  self->_stream.zfree = 0;
  self->_stream.opaque = 0;
  self->_stream.zalloc = 0;
  v4 = deflateInit2_(&self->_stream, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (!v4)
  {
    self->_streamOutBufferSize = 4096;
    v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    self->_streamOutBuffer = v19;
    p_stream->next_out = v19;
    p_stream->avail_out = self->_streamOutBufferSize;
    return v4 == 0;
  }

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = v9;
  v11 = *__error();
  v22 = 138543874;
  v23 = v9;
  v24 = 1026;
  v25 = v4;
  v26 = 1026;
  v27 = v11;
  LODWORD(v21) = 24;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v22, v21}];
    free(v12);
    SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v8);
LABEL_12:
  }

  return v4 == 0;
}

- (id)initToFileAtPath:(id)a3 append:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27.receiver = self;
  v27.super_class = SSGzipOutputStream;
  v7 = [(SSGzipOutputStream *)&v27 initToMemory];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:v6 append:v4];
    v9 = v7[17];
    v7[17] = v8;

    if (![v7 _initializeOutputStream] || !v7[17])
    {
      v11 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v11 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v28 = 138543362;
        v29 = v15;
        v16 = v15;
        LODWORD(v26) = 12;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
LABEL_16:

          v24 = v7[17];
          v7[17] = 0;

          v10 = 0;
          goto LABEL_17;
        }

        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v28, v26}];
        free(v17);
        SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v14);
      }

      goto LABEL_16;
    }
  }

  v10 = v7;
LABEL_17:

  return v10;
}

- (id)initToMemory
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SSGzipOutputStream;
  v2 = [(SSGzipOutputStream *)&v22 initToMemory];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
    v4 = v2[17];
    v2[17] = v3;

    if (![v2 _initializeOutputStream] || !v2[17])
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v10 = objc_opt_class();
        v23 = 138543362;
        v24 = v10;
        v11 = v10;
        LODWORD(v21) = 12;
        v12 = _os_log_send_and_compose_impl();

        if (!v12)
        {
LABEL_16:

          v19 = v2[17];
          v2[17] = 0;

          v5 = 0;
          goto LABEL_17;
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v23, v21}];
        free(v12);
        SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v9);
      }

      goto LABEL_16;
    }
  }

  v5 = v2;
LABEL_17:

  return v5;
}

- (void)dealloc
{
  p_stream = &self->_stream;
  p_stream->next_out = 0;
  p_stream->avail_out = 0;
  deflateEnd(p_stream);
  streamOutBuffer = self->_streamOutBuffer;
  if (streamOutBuffer)
  {
    free(streamOutBuffer);
  }

  v5.receiver = self;
  v5.super_class = SSGzipOutputStream;
  [(SSGzipOutputStream *)&v5 dealloc];
}

- (void)close
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(SSGzipOutputStream *)self streamError];

  if (!v3)
  {
    while (1)
    {
      self->_stream.next_in = 0;
      self->_stream.avail_in = 0;
      v4 = deflate(&self->_stream, 4);
      if (v4 >= 2)
      {
        break;
      }

      v5 = [(SSGzipOutputStream *)self _consumeStreamOutput:1];
      if (v4 == 1 || v5 == -1)
      {
        goto LABEL_7;
      }
    }

    [(SSGzipOutputStream *)self _setStreamError:v4 context:@"close"];
LABEL_7:
    self->_streamContentLength = self->_stream.total_out;
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      total_in = self->_stream.total_in;
      total_out = self->_stream.total_out;
      *v23 = 138544130;
      *&v23[4] = v10;
      *&v23[12] = 1026;
      *&v23[14] = total_in;
      *&v23[18] = 1026;
      *&v23[20] = total_out;
      LOWORD(v24) = 1026;
      *(&v24 + 2) = v4;
      v13 = v10;
      LODWORD(v22) = 30;
      v21 = v23;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_18:

        [(SSGzipOutputStream *)self _setStreamError:deflateEnd(&self->_stream) context:@"close"];
        goto LABEL_19;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, v23, v22, *v23, *&v23[16], v24}];
      free(v14);
      SSFileLog(v6, @"%@", v15, v16, v17, v18, v19, v20, v9);
    }

    goto LABEL_18;
  }

LABEL_19:
  [(NSOutputStream *)self->_backingStream close];
}

- (unint64_t)streamStatus
{
  if (self->_streamError)
  {
    return 7;
  }

  else
  {
    return [(NSOutputStream *)self->_backingStream streamStatus];
  }
}

- (id)streamError
{
  streamError = self->_streamError;
  if (streamError)
  {
    v3 = streamError;
  }

  else
  {
    v3 = [(NSOutputStream *)self->_backingStream streamError];
  }

  return v3;
}

- (int64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = [(SSGzipOutputStream *)self streamError];

  if (v7)
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = v12;
      [(SSGzipOutputStream *)self streamError];
      v25 = 138543618;
      v26 = v12;
      v28 = v27 = 2114;
      LODWORD(v24) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_13;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v25, v24}];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
    }

LABEL_13:
    return -1;
  }

  self->_stream.next_in = a3;
  self->_stream.avail_in = a4;
  do
  {
    self->_stream.next_out = self->_streamOutBuffer;
    self->_stream.avail_out = self->_streamOutBufferSize;
    v22 = deflate(&self->_stream, 0);
    if (v22 >= 2)
    {
      [(SSGzipOutputStream *)self _setStreamError:v22 context:@"write:maxLength:"];
      return -1;
    }

    if ([(SSGzipOutputStream *)self _consumeStreamOutput:1]== -1)
    {
      return -1;
    }
  }

  while (!self->_stream.avail_out);
  self->_stream.next_in = 0;
  self->_stream.avail_in = 0;
  v23 = [(SSGzipOutputStream *)self streamError];
  if (v23)
  {
    a4 = -1;
  }

  return a4;
}

- (int64_t)_consumeStreamOutput:(BOOL)a3
{
  p_stream = &self->_stream;
  avail_out = self->_stream.avail_out;
  if (!a3)
  {
    if (avail_out)
    {
      return 0;
    }

    avail_out = 0;
  }

  streamOutBufferSize = self->_streamOutBufferSize;
  if (streamOutBufferSize == avail_out)
  {
    return 0;
  }

  result = [(NSOutputStream *)self->_backingStream write:self->_streamOutBuffer maxLength:streamOutBufferSize - avail_out];
  p_stream->next_out = self->_streamOutBuffer;
  p_stream->avail_out = self->_streamOutBufferSize;
  return result;
}

- (void)_setStreamError:(int)a3 context:(id)a4
{
  v4 = *&a3;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v4 >= 2)
  {
    v7 = [(SSGzipOutputStream *)self streamError];

    if (!v7)
    {
      v8 = *__error();
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      v12 = [v9 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = *__error();
        v33 = 138544130;
        v34 = v13;
        v35 = 1026;
        v36 = v4;
        v37 = 1026;
        v38 = v15;
        v39 = 2114;
        v40 = v6;
        LODWORD(v30) = 34;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
LABEL_14:

          v31[0] = @"avail_in";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stream.avail_in];
          v32[0] = v23;
          v31[1] = @"avail_out";
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stream.avail_out];
          v32[1] = v24;
          v31[2] = @"error";
          v25 = [MEMORY[0x1E696AD98] numberWithInt:v4];
          v32[2] = v25;
          v31[3] = @"errno";
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v8];
          v31[4] = @"context";
          v32[3] = v26;
          v32[4] = v6;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];

          v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSGzipOutputStream" code:v4 userInfo:v27];
          streamError = self->_streamError;
          self->_streamError = v28;

          deflateEnd(&self->_stream);
          goto LABEL_15;
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v33, v30}];
        free(v16);
        SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v12);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
}

@end