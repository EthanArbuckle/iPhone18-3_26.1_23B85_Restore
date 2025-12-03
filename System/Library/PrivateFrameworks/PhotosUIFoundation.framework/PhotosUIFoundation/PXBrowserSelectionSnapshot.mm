@interface PXBrowserSelectionSnapshot
+ (id)selectionWithIndexPaths:(id)paths dataSource:(id)source;
- (NSArray)modelObjects;
- (id)assetReferenceAtIndex:(int64_t)index;
- (id)displayAssetAtIndex:(int64_t)index;
- (int64_t)assetCount;
- (int64_t)containerAssetCount;
- (int64_t)estimatedAssetCount;
- (int64_t)estimatedModelObjectsCount;
- (int64_t)indexOfAssetReference:(id)reference;
- (int64_t)mediaType;
@end

@implementation PXBrowserSelectionSnapshot

- (int64_t)containerAssetCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:153 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot containerAssetCount]", v6}];

  abort();
}

- (NSArray)modelObjects
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:149 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot modelObjects]", v6}];

  abort();
}

- (int64_t)estimatedModelObjectsCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:145 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot estimatedModelObjectsCount]", v6}];

  abort();
}

- (int64_t)indexOfAssetReference:(id)reference
{
  referenceCopy = reference;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:141 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot indexOfAssetReference:]", v8}];

  abort();
}

- (id)displayAssetAtIndex:(int64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:137 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot displayAssetAtIndex:]", v7}];

  abort();
}

- (id)assetReferenceAtIndex:(int64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:133 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot assetReferenceAtIndex:]", v7}];

  abort();
}

- (int64_t)mediaType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:129 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot mediaType]", v6}];

  abort();
}

- (int64_t)assetCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:125 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot assetCount]", v6}];

  abort();
}

- (int64_t)estimatedAssetCount
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:121 description:{@"Method %s is a responsibility of subclass %@", "-[PXBrowserSelectionSnapshot estimatedAssetCount]", v6}];

  abort();
}

+ (id)selectionWithIndexPaths:(id)paths dataSource:(id)source
{
  sourceCopy = source;
  pathsCopy = paths;
  v7 = [[_PXBrowserDataSourceSelection alloc] initWithIndexPaths:pathsCopy dataSource:sourceCopy];

  return v7;
}

@end