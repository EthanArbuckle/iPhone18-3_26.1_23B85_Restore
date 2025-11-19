@interface SBFFileCacheFileStore
- (NSString)description;
- (SBFFileCacheFileStore)init;
- (SBFFileCacheFileStore)initWithDirectoryURL:(id)a3;
- (id)fileCache:(id)a3 loadFileWrapperNamed:(id)a4;
- (id)fileURLForFileNamed:(id)a3;
- (void)fileCache:(id)a3 removeFileWrapperNamed:(id)a4;
- (void)fileCache:(id)a3 storeFileWrapper:(id)a4;
- (void)removeAllFileWrappersForFileCache:(id)a3;
@end

@implementation SBFFileCacheFileStore

- (SBFFileCacheFileStore)initWithDirectoryURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBFFileCacheFileStore;
  v5 = [(SBFFileCacheFileStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v4 = [(SBFFileCacheFileStore *)self directoryURL];
  v5 = [v3 appendObject:v4 withName:@"directoryURL"];

  v6 = [v3 build];

  return v6;
}

- (id)fileURLForFileNamed:(id)a3
{
  v4 = a3;
  v5 = [(SBFFileCacheFileStore *)self directoryURL];
  v6 = [v5 URLByAppendingPathComponent:v4];

  return v6;
}

- (void)fileCache:(id)a3 storeFileWrapper:(id)a4
{
  v7 = a4;
  v5 = [v7 filename];
  if (!v5)
  {
    v5 = [v7 preferredFilename];
  }

  v6 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:v5];
  [v7 writeToURL:v6 options:1 originalContentsURL:0 error:0];
}

- (id)fileCache:(id)a3 loadFileWrapperNamed:(id)a4
{
  v4 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:a4];
  v5 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v4 options:0 error:0];

  return v5;
}

- (void)fileCache:(id)a3 removeFileWrapperNamed:(id)a4
{
  v5 = [(SBFFileCacheFileStore *)self fileURLForFileNamed:a4];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v4 removeItemAtURL:v5 error:0];
}

- (void)removeAllFileWrappersForFileCache:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(SBFFileCacheFileStore *)self directoryURL];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:0];
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