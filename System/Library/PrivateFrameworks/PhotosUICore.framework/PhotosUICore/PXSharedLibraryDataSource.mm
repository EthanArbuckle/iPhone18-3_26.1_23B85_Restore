@interface PXSharedLibraryDataSource
- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation PXSharedLibraryDataSource

- (id)sharedLibraryAtItemIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:35 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSource sharedLibraryAtItemIndexPath:]", v7}];

  abort();
}

@end