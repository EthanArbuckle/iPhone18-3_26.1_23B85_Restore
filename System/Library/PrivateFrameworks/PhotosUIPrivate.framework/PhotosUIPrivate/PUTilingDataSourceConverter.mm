@interface PUTilingDataSourceConverter
- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource;
@end

@implementation PUTilingDataSourceConverter

- (BOOL)convertIndexPath:(id *)path tileKind:(id *)kind fromDataSource:(id)source toDataSource:(id)dataSource
{
  v6 = *path;
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  LOBYTE(v6) = [v6 isEqual:pu_rootIndexPath];

  return v6;
}

@end