@interface PAAccessReaderSandboxExtension
- (PAAccessReaderSandboxExtension)initWithHandle:(int64_t)handle forRootDirectory:(id)directory;
- (PAAccessReaderSandboxExtension)initWithToken:(id)token forPath:(id)path error:(id *)error;
- (void)dealloc;
@end

@implementation PAAccessReaderSandboxExtension

- (PAAccessReaderSandboxExtension)initWithToken:(id)token forPath:(id)path error:(id *)error
{
  pathCopy = path;
  [token bytes];
  v9 = sandbox_extension_consume();
  if (v9 == -1)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PAErrorDomain" code:7 userInfo:0];
      *error = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    self = [(PAAccessReaderSandboxExtension *)self initWithHandle:v9 forRootDirectory:pathCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (PAAccessReaderSandboxExtension)initWithHandle:(int64_t)handle forRootDirectory:(id)directory
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = PAAccessReaderSandboxExtension;
  v8 = [(PAAccessReaderSandboxExtension *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_handle = handle;
    objc_storeStrong(&v8->_path, directory);
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