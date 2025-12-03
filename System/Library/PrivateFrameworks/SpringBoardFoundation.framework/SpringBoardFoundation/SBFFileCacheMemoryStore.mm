@interface SBFFileCacheMemoryStore
- (NSString)description;
- (void)fileCache:(id)cache storeFileWrapper:(id)wrapper;
@end

@implementation SBFFileCacheMemoryStore

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_fileWrappers withName:@"fileWrappers"];
  build = [v3 build];

  return build;
}

- (void)fileCache:(id)cache storeFileWrapper:(id)wrapper
{
  cacheCopy = cache;
  wrapperCopy = wrapper;
  if (!wrapperCopy)
  {
    [SBFFileCacheMemoryStore fileCache:a2 storeFileWrapper:self];
  }

  filename = [wrapperCopy filename];
  if (!filename)
  {
    filename = [wrapperCopy preferredFilename];
  }

  fileWrappers = self->_fileWrappers;
  if (!fileWrappers)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = self->_fileWrappers;
    self->_fileWrappers = v10;

    fileWrappers = self->_fileWrappers;
  }

  [(NSMutableDictionary *)fileWrappers setObject:wrapperCopy forKey:filename];
}

- (void)fileCache:(uint64_t)a1 storeFileWrapper:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFFileCache.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"fileWrapper"}];
}

@end