@interface SBFFileCacheFileStore
- (NSString)description;
- (SBFFileCacheFileStore)init;
- (SBFFileCacheFileStore)initWithDirectoryURL:(id)l;
- (id)fileCache:(id)cache loadFileWrapperNamed:(id)named;
- (id)fileURLForFileNamed:(id)named;
- (void)fileCache:(id)cache removeFileWrapperNamed:(id)named;
- (void)fileCache:(id)cache storeFileWrapper:(id)wrapper;
- (void)removeAllFileWrappersForFileCache:(id)cache;
@end

@implementation SBFFileCacheFileStore

- (SBFFileCacheFileStore)initWithDirectoryURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SBFFileCacheFileStore;
  v5 = [(SBFFileCacheFileStore *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    directoryURL = v5->_directoryURL;
    v5->_directoryURL = v6;
  }

  return v5;
}

- (SBFFileCacheFileStore)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't directly init this class" userInfo:0];
  objc_exception_throw(v2);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  directoryURL = [(SBFFileCacheFileStore *)self directoryURL];
  v5 = [v3 appendObject:directoryURL withName:@"directoryURL"];

  build = [v3 build];

  return build;
}

- (id)fileURLForFileNamed:(id)named
{
  namedCopy = named;
  directoryURL = [(SBFFileCacheFileStore *)self directoryURL];
  v6 = [directoryURL URLByAppendingPathComponent:namedCopy];

  return v6;
}

- (void)fileCache:(id)cache storeFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  filename = [wrapperCopy filename];
  if (!filename)
  {
    filename = [wrapperCopy preferredFilename];
  }

  v6 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:filename];
  [wrapperCopy writeToURL:v6 options:1 originalContentsURL:0 error:0];
}

- (id)fileCache:(id)cache loadFileWrapperNamed:(id)named
{
  v4 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:named];
  v5 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v4 options:0 error:0];

  return v5;
}

- (void)fileCache:(id)cache removeFileWrapperNamed:(id)named
{
  v5 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:named];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v4 removeItemAtURL:v5 error:0];
}

- (void)removeAllFileWrappersForFileCache:(id)cache
{
  v15 = *MEMORY[0x1E69E9840];
  directoryURL = [(SBFFileCacheFileStore *)self directoryURL];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v5 = [v4 contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:0 options:4 error:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeItemAtURL:*(*(&v10 + 1) + 8 * v9++) error:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end