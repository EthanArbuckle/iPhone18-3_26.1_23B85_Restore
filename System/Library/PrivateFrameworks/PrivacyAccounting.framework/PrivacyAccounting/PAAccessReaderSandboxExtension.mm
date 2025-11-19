@interface PAAccessReaderSandboxExtension
- (PAAccessReaderSandboxExtension)initWithHandle:(int64_t)a3 forRootDirectory:(id)a4;
- (PAAccessReaderSandboxExtension)initWithToken:(id)a3 forPath:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation PAAccessReaderSandboxExtension

- (PAAccessReaderSandboxExtension)initWithToken:(id)a3 forPath:(id)a4 error:(id *)a5
{
  v8 = a4;
  [a3 bytes];
  v9 = sandbox_extension_consume();
  if (v9 == -1)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:7 userInfo:0];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    self = [(PAAccessReaderSandboxExtension *)self initWithHandle:v9 forRootDirectory:v8];
    v10 = self;
  }

  return v10;
}

- (PAAccessReaderSandboxExtension)initWithHandle:(int64_t)a3 forRootDirectory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PAAccessReaderSandboxExtension;
  v8 = [(PAAccessReaderSandboxExtension *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_handle = a3;
    objc_storeStrong(&v8->_path, a4);
  }

  return v9;
}

- (void)dealloc
{
  handle = self->_handle;
  sandbox_extension_release();
  v4.receiver = self;
  v4.super_class = PAAccessReaderSandboxExtension;
  [(PAAccessReaderSandboxExtension *)&v4 dealloc];
}

@end