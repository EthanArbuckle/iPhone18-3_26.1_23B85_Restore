@interface SBFFileCacheMemoryStore
- (NSString)description;
- (void)fileCache:(id)a3 storeFileWrapper:(id)a4;
@end

@implementation SBFFileCacheMemoryStore

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_fileWrappers withName:@"fileWrappers"];
  v5 = [v3 build];

  return v5;
}

- (void)fileCache:(id)a3 storeFileWrapper:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBFFileCacheMemoryStore fileCache:a2 storeFileWrapper:self];
  }

  v8 = [v7 filename];
  if (!v8)
  {
    v8 = [v7 preferredFilename];
  }

  fileWrappers = self->_fileWrappers;
  if (!fileWrappers)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_fileWrappers;
    self->_fileWrappers = v10;

    fileWrappers = self->_fileWrappers;
  }

  [(NSMutableDictionary *)fileWrappers setObject:v7 forKey:v8];
}

- (void)fileCache:(uint64_t)a1 storeFileWrapper:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFFileCache.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"fileWrapper"}];
}

@end