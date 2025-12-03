@interface PXMemoriesDataSource
- (id)sectionedObjectReferenceForMemoryUUID:(id)d;
@end

@implementation PXMemoriesDataSource

- (id)sectionedObjectReferenceForMemoryUUID:(id)d
{
  dCopy = d;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesDataSource.m" lineNumber:24 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesDataSource sectionedObjectReferenceForMemoryUUID:]", v8}];

  abort();
}

@end