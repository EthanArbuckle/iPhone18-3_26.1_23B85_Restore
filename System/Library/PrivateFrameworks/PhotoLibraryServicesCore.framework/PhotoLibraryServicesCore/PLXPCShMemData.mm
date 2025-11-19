@interface PLXPCShMemData
- (PLXPCShMemData)initWithXPCShmem:(id)a3;
- (PLXPCShMemData)initWithXPCShmem:(id)a3 length:(int64_t)a4;
- (void)dealloc;
@end

@implementation PLXPCShMemData

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  bufferLength = self->_bufferLength;
  if (bufferLength && munmap(self->_buffer, bufferLength))
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v9 = v6;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "munmap(2) failed. (%s)", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = PLXPCShMemData;
  [(PLXPCShMemData *)&v7 dealloc];
}

- (PLXPCShMemData)initWithXPCShmem:(id)a3 length:(int64_t)a4
{
  result = [(PLXPCShMemData *)self initWithXPCShmem:a3];
  if (result)
  {
    result->_dataLength = a4;
  }

  return result;
}

- (PLXPCShMemData)initWithXPCShmem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLXPCShMemData;
  v5 = [(PLXPCShMemData *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (!v4 || (v7 = xpc_shmem_map(v4, &v5->_buffer), (v6->_bufferLength = v7) == 0))
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6->_dataLength = v7;
  }

  v8 = v6;
LABEL_7:

  return v8;
}

@end