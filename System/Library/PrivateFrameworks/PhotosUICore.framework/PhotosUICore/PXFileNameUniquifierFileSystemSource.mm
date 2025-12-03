@interface PXFileNameUniquifierFileSystemSource
- (BOOL)fileExistsAtPath:(id)path;
- (PXFileNameUniquifierFileSystemSource)init;
@end

@implementation PXFileNameUniquifierFileSystemSource

- (BOOL)fileExistsAtPath:(id)path
{
  pathCopy = path;
  fileManager = [(PXFileNameUniquifierFileSystemSource *)self fileManager];
  v6 = [fileManager fileExistsAtPath:pathCopy];

  return v6;
}

- (PXFileNameUniquifierFileSystemSource)init
{
  v6.receiver = self;
  v6.super_class = PXFileNameUniquifierFileSystemSource;
  v2 = [(PXFileNameUniquifierFileSystemSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v2->_fileManager;
    v2->_fileManager = v3;
  }

  return v2;
}

@end