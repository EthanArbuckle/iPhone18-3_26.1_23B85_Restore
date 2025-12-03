@interface _PXFileBackedAssetCollection
- (NSString)uuid;
- (id)localizedDateDescriptionWithOptions:(unint64_t)options;
@end

@implementation _PXFileBackedAssetCollection

- (id)localizedDateDescriptionWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAssetsDataSource.m" lineNumber:71 description:@"This code path is not implemented."];

  abort();
}

- (NSString)uuid
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@-%p", v5, self];

  return v6;
}

@end